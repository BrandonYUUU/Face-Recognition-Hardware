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
static const char *ng0 = "C:/Users/saidwivedi/OneDrive/Project/NIT/ANN_Final/activation_hid_count.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3149330194_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 5358);
    t5 = (t0 + 3296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 3232);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 5316U);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t7 = (t0 + 5300U);
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t6, t8, t7, 1);
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t9, t6);
    if (t10 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 3232);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(26, ng0);
    t11 = (t0 + 3232);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);
    goto LAB6;

LAB8:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 5316U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t6, t5, t2, 1);
    t8 = (t6 + 12U);
    t16 = *((unsigned int *)t8);
    t17 = (1U * t16);
    t4 = (8U != t17);
    if (t4 == 1)
        goto LAB11;

LAB12:    t9 = (t0 + 3296);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 8U);
    xsi_driver_first_trans_fast(t9);
    goto LAB9;

LAB11:    xsi_size_not_matching(8U, t17, 0);
    goto LAB12;

}


extern void work_a_3149330194_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3149330194_3212880686_p_0};
	xsi_register_didat("work_a_3149330194_3212880686", "isim/controller_tb_isim_beh.exe.sim/work/a_3149330194_3212880686.didat");
	xsi_register_executes(pe);
}
