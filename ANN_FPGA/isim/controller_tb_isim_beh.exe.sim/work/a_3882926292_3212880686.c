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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/saidwivedi/OneDrive/Project/NIT/ANN_Final/shifter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3882926292_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    int t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 4152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 2728U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 16U);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(48, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 4232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 4296);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4360);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4424);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 > 2);
    if (t3 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 7252);
    *((int *)t1) = 0;
    t2 = (t0 + 7256);
    *((int *)t2) = 13;
    t10 = 0;
    t11 = 13;

LAB16:    if (t10 <= t11)
        goto LAB17;

LAB19:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t10 = (14 - 15);
    t15 = (t10 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    *((unsigned char *)t1) = (unsigned char)2;

LAB9:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t11 = (t10 + 1);
    t1 = (t0 + 2848U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB8:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 2728U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    memcpy(t1, t5, 16U);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2728U);
    t5 = *((char **)t1);
    t1 = (t0 + 4232);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 2728U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 16U);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 > 4);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB9;

LAB13:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4424);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4360);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB17:    xsi_set_current_line(70, ng0);
    t5 = (t0 + 2728U);
    t6 = *((char **)t5);
    t5 = (t0 + 7252);
    t12 = *((int *)t5);
    t13 = (t12 + 1);
    t14 = (t13 - 15);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t13);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t7 = (t6 + t17);
    t3 = *((unsigned char *)t7);
    t8 = (t0 + 2728U);
    t9 = *((char **)t8);
    t8 = (t0 + 7252);
    t18 = *((int *)t8);
    t19 = (t18 - 15);
    t20 = (t19 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t8));
    t21 = (1U * t20);
    t22 = (0 + t21);
    t23 = (t9 + t22);
    *((unsigned char *)t23) = t3;

LAB18:    t1 = (t0 + 7252);
    t10 = *((int *)t1);
    t2 = (t0 + 7256);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB19;

LAB20:    t12 = (t10 + 1);
    t10 = t12;
    t5 = (t0 + 7252);
    *((int *)t5) = t10;
    goto LAB16;

}


extern void work_a_3882926292_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3882926292_3212880686_p_0};
	xsi_register_didat("work_a_3882926292_3212880686", "isim/controller_tb_isim_beh.exe.sim/work/a_3882926292_3212880686.didat");
	xsi_register_executes(pe);
}
