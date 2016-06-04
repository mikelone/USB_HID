_USB_Init_Desc:
;USBdsc.c,161 :: 		void USB_Init_Desc(){
;USBdsc.c,162 :: 		USB_config_dsc_ptr[0] = &configDescriptor1;
LUI	R2, #hi_addr(_configDescriptor1+0)
ORI	R2, R2, #lo_addr(_configDescriptor1+0)
SW	R2, Offset(_USB_config_dsc_ptr+0)(GP)
;USBdsc.c,163 :: 		USB_string_dsc_ptr[0] = (const char*)&strd1;
LUI	R2, #hi_addr(_strd1+0)
ORI	R2, R2, #lo_addr(_strd1+0)
SW	R2, Offset(_USB_string_dsc_ptr+0)(GP)
;USBdsc.c,164 :: 		USB_string_dsc_ptr[1] = (const char*)&strd2;
LUI	R2, #hi_addr(_strd2+0)
ORI	R2, R2, #lo_addr(_strd2+0)
SW	R2, Offset(_USB_string_dsc_ptr+4)(GP)
;USBdsc.c,165 :: 		USB_string_dsc_ptr[2] = (const char*)&strd3;
LUI	R2, #hi_addr(_strd3+0)
ORI	R2, R2, #lo_addr(_strd3+0)
SW	R2, Offset(_USB_string_dsc_ptr+8)(GP)
;USBdsc.c,166 :: 		}
L_end_USB_Init_Desc:
JR	RA
NOP	
; end of _USB_Init_Desc
