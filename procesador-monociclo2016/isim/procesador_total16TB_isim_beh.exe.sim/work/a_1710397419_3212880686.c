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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/alucard/ise proyects/procesador-monociclo2016/CU.vhd";



static void work_a_1710397419_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 2900);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2998);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t1 = (t0 + 1604);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 2902);
    t11 = xsi_mem_cmp(t8, t9, 6U);
    if (t11 == 1)
        goto LAB12;

LAB21:    t12 = (t0 + 2908);
    t14 = xsi_mem_cmp(t12, t9, 6U);
    if (t14 == 1)
        goto LAB13;

LAB22:    t15 = (t0 + 2914);
    t17 = xsi_mem_cmp(t15, t9, 6U);
    if (t17 == 1)
        goto LAB14;

LAB23:    t18 = (t0 + 2920);
    t20 = xsi_mem_cmp(t18, t9, 6U);
    if (t20 == 1)
        goto LAB15;

LAB24:    t21 = (t0 + 2926);
    t23 = xsi_mem_cmp(t21, t9, 6U);
    if (t23 == 1)
        goto LAB16;

LAB25:    t24 = (t0 + 2932);
    t26 = xsi_mem_cmp(t24, t9, 6U);
    if (t26 == 1)
        goto LAB17;

LAB26:    t27 = (t0 + 2938);
    t29 = xsi_mem_cmp(t27, t9, 6U);
    if (t29 == 1)
        goto LAB18;

LAB27:    t30 = (t0 + 2944);
    t32 = xsi_mem_cmp(t30, t9, 6U);
    if (t32 == 1)
        goto LAB19;

LAB28:
LAB20:    xsi_set_current_line(44, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)3, 6U);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);

LAB11:    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    xsi_set_current_line(21, ng0);
    t33 = (t0 + 2950);
    t35 = (t0 + 1648);
    t36 = (t35 + 32U);
    t37 = *((char **)t36);
    t38 = (t37 + 32U);
    t39 = *((char **)t38);
    memcpy(t39, t33, 6U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB11;

LAB13:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 2956);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB14:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2962);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB15:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2968);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB16:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2974);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB17:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2980);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB18:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2986);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB19:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2992);
    t3 = (t0 + 1648);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB29:;
}


extern void work_a_1710397419_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1710397419_3212880686_p_0};
	xsi_register_didat("work_a_1710397419_3212880686", "isim/procesador_total16TB_isim_beh.exe.sim/work/a_1710397419_3212880686.didat");
	xsi_register_executes(pe);
}
