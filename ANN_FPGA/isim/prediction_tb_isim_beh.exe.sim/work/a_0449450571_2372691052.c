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
static const char *ng0 = "C:/Users/saidwivedi/OneDrive/Project/NIT/ANN_Final/prediction_tb.vhd";
extern char *WORK_P_2810115115;



static void work_a_0449450571_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3424);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2600);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3424);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2600);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0449450571_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    int t9;
    int t10;
    int t11;
    int t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;

LAB0:    t1 = (t0 + 3040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2848);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3488);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1808U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t8 = (t3 * 5);
    t2 = (t0 + 2848);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3488);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = ((WORK_P_2810115115) + 1168U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t10 = (t9 - 1);
    t2 = (t0 + 6152);
    *((int *)t2) = t10;
    t5 = (t0 + 6156);
    *((int *)t5) = 0;
    t11 = t10;
    t12 = 0;

LAB12:    if (t11 <= t12)
        goto LAB13;

LAB15:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6160);
    t24 = (8U != 8U);
    if (t24 == 1)
        goto LAB17;

LAB18:    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t19 = *((char **)t13);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_delta(t5, 312U, 8U, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 6168);
    t24 = (8U != 8U);
    if (t24 == 1)
        goto LAB19;

LAB20:    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t19 = *((char **)t13);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_delta(t5, 304U, 8U, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 6176);
    t24 = (8U != 8U);
    if (t24 == 1)
        goto LAB21;

LAB22:    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t19 = *((char **)t13);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_delta(t5, 296U, 8U, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6184);
    t24 = (8U != 8U);
    if (t24 == 1)
        goto LAB23;

LAB24:    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t19 = *((char **)t13);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_delta(t5, 288U, 8U, 0LL);
    xsi_set_current_line(76, ng0);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(68, ng0);
    t6 = xsi_get_transient_memory(8U);
    memset(t6, 0, 8U);
    t7 = t6;
    memset(t7, (unsigned char)2, 8U);
    t13 = (t0 + 6152);
    t14 = *((int *)t13);
    t15 = (t14 - 39);
    t16 = (t15 * -1);
    t17 = (8U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 3552);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t6, 8U);
    xsi_driver_first_trans_delta(t19, t18, 8U, 0LL);

LAB14:    t2 = (t0 + 6152);
    t11 = *((int *)t2);
    t4 = (t0 + 6156);
    t12 = *((int *)t4);
    if (t11 == t12)
        goto LAB15;

LAB16:    t9 = (t11 + 1);
    t11 = t9;
    t5 = (t0 + 6152);
    *((int *)t5) = t11;
    goto LAB12;

LAB17:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB24;

LAB25:    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}


extern void work_a_0449450571_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0449450571_2372691052_p_0,(void *)work_a_0449450571_2372691052_p_1};
	xsi_register_didat("work_a_0449450571_2372691052", "isim/prediction_tb_isim_beh.exe.sim/work/a_0449450571_2372691052.didat");
	xsi_register_executes(pe);
}
