﻿package  {
	import flash.events.*;
	import flash.display.*;
	
	public class XSStudios{
		
		private var stage:MovieClip 
		
		var homeButton:Object = new Object();
		var aboutButton:Object = new Object();
		var contactButton:Object = new Object();

		var currentPage:String = new String('homeButton');

		public function XSStudios(stage:MovieClip, currentPage:String, homeBtn:Object, aboutBtn:Object, contactBtn:Object) {
			// constructor code
			this.stage = stage;
			this.currentPage = currentPage;
			
			this.homeButton = homeBtn;
			this.aboutButton = aboutBtn;
			this.contactButton = contactBtn;
			
			this.homeButton.addEventListener( MouseEvent.CLICK, this.navigatePage );
			this.aboutButton.addEventListener( MouseEvent.CLICK, this.navigatePage );
			this.contactButton.addEventListener( MouseEvent.CLICK, this.navigatePage );
		}

		public function navigatePage(event:MouseEvent):void {
			var buttonClicked:String = SimpleButton( event.target ).name;
			
			if( this.currentPage == buttonClicked )
			{
				this.currentPage = buttonClicked;
				return;
			}
			if( buttonClicked == "homeButton" ) {
				MovieClip(this.stage).gotoAndStop(1, "Home" );
			}
			else if( buttonClicked == "aboutButton" ) {
				MovieClip(this.stage).gotoAndStop(1, "About");
			}
			else if( buttonClicked == "contactButton" ) {
				MovieClip(this.stage).gotoAndStop(1, "Contact");
			}
			
		}

	}
	
}


