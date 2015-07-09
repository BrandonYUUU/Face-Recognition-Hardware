/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *XILINXCORELIB_P_3743709326;
char *STD_STANDARD;
char *STD_TEXTIO;
char *XILINXCORELIB_P_2201174634;
char *XILINXCORELIB_P_3155556343;
char *XILINXCORELIB_P_1521474790;
char *IEEE_P_0774719531;
char *XILINXCORELIB_P_1419404220;
char *XILINXCORELIB_P_2342578331;
char *XILINXCORELIB_P_1837083571;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *XILINXCORELIB_P_3381355550;
char *IEEE_P_3564397177;
char *WORK_P_2810115115;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_2810115115_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_1987058032_2959432447_init();
    xilinxcorelib_a_4282816042_1709443946_init();
    xilinxcorelib_a_1943503076_0543512595_init();
    xilinxcorelib_a_4088182847_3212880686_init();
    work_a_0483858841_3734969651_init();
    ieee_p_0774719531_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_3743709326_init();
    xilinxcorelib_p_1419404220_init();
    xilinxcorelib_p_2342578331_init();
    xilinxcorelib_p_2201174634_init();
    xilinxcorelib_a_2324210738_3212880686_init();
    xilinxcorelib_a_4208289035_3212880686_init();
    work_a_1787574566_4090831939_init();
    work_a_0231918874_3212880686_init();
    work_a_3149330194_3212880686_init();
    xilinxcorelib_p_3155556343_init();
    xilinxcorelib_p_1521474790_init();
    xilinxcorelib_a_3918494998_3212880686_init();
    xilinxcorelib_a_0914249097_3212880686_init();
    xilinxcorelib_a_0960204846_3212880686_init();
    xilinxcorelib_a_3872045233_3212880686_init();
    xilinxcorelib_a_0571746454_3212880686_init();
    xilinxcorelib_a_4259643401_3212880686_init();
    xilinxcorelib_a_0073606571_3212880686_init();
    xilinxcorelib_a_3683781940_3212880686_init();
    xilinxcorelib_a_0294884893_3212880686_init();
    xilinxcorelib_a_3462577794_3212880686_init();
    xilinxcorelib_a_2732867465_3212880686_init();
    xilinxcorelib_a_2098534166_3212880686_init();
    xilinxcorelib_a_1588309488_3212880686_init();
    xilinxcorelib_a_2170193263_3212880686_init();
    xilinxcorelib_a_3206269408_3212880686_init();
    xilinxcorelib_a_1626005887_3212880686_init();
    xilinxcorelib_a_2954457130_3212880686_init();
    xilinxcorelib_a_1434960732_3212880686_init();
    xilinxcorelib_a_2359064427_3212880686_init();
    xilinxcorelib_a_1399676916_3212880686_init();
    xilinxcorelib_a_2854240977_3212880686_init();
    work_a_1535901180_0666220266_init();
    work_a_3882926292_3212880686_init();
    work_a_2517991062_3212880686_init();
    xilinxcorelib_a_1248642337_2959432447_init();
    xilinxcorelib_a_3587223426_1709443946_init();
    xilinxcorelib_a_2731304948_0543512595_init();
    xilinxcorelib_a_0850642463_3212880686_init();
    work_a_0101134145_0545185519_init();
    xilinxcorelib_a_1725775737_2959432447_init();
    xilinxcorelib_a_2275837060_1709443946_init();
    xilinxcorelib_a_2517455265_0543512595_init();
    xilinxcorelib_a_3509497225_3212880686_init();
    work_a_3194886613_2495039912_init();
    work_a_0047407801_3212880686_init();
    work_a_1208337864_3212880686_init();
    work_a_2827372702_2372691052_init();


    xsi_register_tops("work_a_2827372702_2372691052");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    XILINXCORELIB_P_3743709326 = xsi_get_engine_memory("xilinxcorelib_p_3743709326");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_2201174634 = xsi_get_engine_memory("xilinxcorelib_p_2201174634");
    XILINXCORELIB_P_3155556343 = xsi_get_engine_memory("xilinxcorelib_p_3155556343");
    XILINXCORELIB_P_1521474790 = xsi_get_engine_memory("xilinxcorelib_p_1521474790");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    XILINXCORELIB_P_1419404220 = xsi_get_engine_memory("xilinxcorelib_p_1419404220");
    XILINXCORELIB_P_2342578331 = xsi_get_engine_memory("xilinxcorelib_p_2342578331");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    WORK_P_2810115115 = xsi_get_engine_memory("work_p_2810115115");

    return xsi_run_simulation(argc, argv);

}
