/////////////////////////////////////////////////////
#include "USBdsc.c"
/*USB discriptor is as follows  USBdsc.c

VID Hex 04D8  Dec 1240  is the microchip
PID Hex 00A0  Dec 0160  is my Product ID

input and out  is 64
1msec for in and out*/
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/*Declerations for the program*/
/////////////////////////////////////////////////////

char count;
char tempChar;
char readbuff[64];
char writebuff[64];



/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
void main() {
CHECON = 0x32;
  AD1PCFG = 0xFFFF;

  HID_Enable(&readbuff,&writebuff);

  while(1){
    USB_Polling_Proc();               // Call this routine periodically
    tempChar = HID_Read();
    if(tempChar != 0){
      for(count=0;count<64;count++)
        writebuff[count]=readbuff[count];
      HID_Write(&writebuff,64);
    }
  }

}