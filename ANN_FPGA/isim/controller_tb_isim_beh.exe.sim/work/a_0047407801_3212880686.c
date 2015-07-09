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
static const char *ng0 = "C:/Users/saidwivedi/OneDrive/Project/NIT/ANN_Final/prediction.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_2810115115;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2720078402_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0047407801_3212880686_p_0(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    char *t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t1 = (t0 + 3312);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3232);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 1808U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 8U);
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1928U);
    t5 = *((char **)t2);
    t8 = *((int *)t5);
    t2 = ((WORK_P_2810115115) + 1168U);
    t6 = *((char **)t2);
    t9 = *((int *)t6);
    t4 = (t8 < t9);
    if (t4 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t2 = (t0 + 1928U);
    t10 = *((char **)t2);
    t11 = *((int *)t10);
    t12 = (t11 - 39);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(39, 0, -1, t11);
    t14 = (8U * t13);
    t15 = (0 + t14);
    t2 = (t7 + t15);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 7;
    t18 = (t17 + 4U);
    *((int *)t18) = 0;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = (t0 + 1808U);
    t21 = *((char **)t18);
    t18 = (t0 + 5344U);
    t22 = ieee_p_1242562249_sub_2720078402_1035706684(IEEE_P_1242562249, t2, t16, t21, t18);
    if (t22 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t9 = (t8 + 1);
    t1 = (t0 + 1928U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t9;
    goto LAB9;

LAB11:    xsi_set_current_line(32, ng0);
    t23 = (t0 + 1352U);
    t24 = *((char **)t23);
    t23 = (t0 + 1928U);
    t25 = *((char **)t23);
    t26 = *((int *)t25);
    t27 = (t26 - 39);
    t20 = (t27 * -1);
    xsi_vhdl_check_range_of_index(39, 0, -1, t26);
    t28 = (8U * t20);
    t29 = (0 + t28);
    t23 = (t24 + t29);
    t30 = (t0 + 1808U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t23, 8U);
    goto LAB12;

}


extern void work_a_0047407801_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0047407801_3212880686_p_0};
	xsi_register_didat("work_a_0047407801_3212880686", "isim/controller_tb_isim_beh.exe.sim/work/a_0047407801_3212880686.didat");
	xsi_register_executes(pe);
}
