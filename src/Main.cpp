//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "Main.h"
#include <System.StrUtils.hpp>
#include <IdURI.hpp>
#include <REST.Client.hpp>
#include <REST.Types.hpp>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------

__fastcall TForm2::TForm2(TComponent* Owner): TForm(Owner){}

//---------------------------------------------------------------------------
void __fastcall TForm2::Request(String URI){

	RESTClient1->BaseURL = URI;

	switch (cbTipo->ItemIndex) {
		case 0: RESTRequest1->Method = TRESTRequestMethod::rmGET;
		case 1: RESTRequest1->Method = TRESTRequestMethod::rmPOST;
	}

	RESTRequest1->Response = RESTResponse1;
	RESTRequest1->Response->ContentType = "text/html";
	RESTRequest1->Response->ContentEncoding="UTF-8";
	RESTRequest1->Execute();

	Log->Text = RESTRequest1->Response->Content;

	StatusBar->Panels[0][0]->Text = "Content Length: " + String(RESTRequest1->Response->ContentLength);
	StatusBar->Panels[0][1]->Text = "Status Code: "+ String(RESTRequest1->Response->StatusCode);
	StatusBar->Panels[0][2]->Text = "Server: " + String(RESTRequest1->Response->Server);
}
void __fastcall TForm2::Button1Click(TObject *Sender)
{
	try
	{
		Button1->Enabled =  False;
		ActivityIndicator1->Animate = True;

		String path = location->Text.Trim();
		ActivityIndicator1->Repaint();
		Request(path);

	} catch (const Exception& e) {
		Button1->Enabled =  True;
		ActivityIndicator1->Animate = False;
		Application->MessageBox(e.Message.c_str(),L"N?o foi posss?vel realizar a requisi??o, Motivo:",MB_OK);
	}

	Button1->Enabled =  True;
	ActivityIndicator1->Animate = False;
}
//---------------------------------------------------------------------------
