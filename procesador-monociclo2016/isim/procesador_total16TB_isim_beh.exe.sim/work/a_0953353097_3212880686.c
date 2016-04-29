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
static const char *ng0 = "/home/alucard/ise proyects/procesador-monociclo2016/RF.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_0953353097_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 684U);
    t5 = *((char **)t1);
    t1 = (t0 + 4092U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t14 = (t13 - 0);
    t11 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t13);
    t15 = (32U * t11);
    t16 = (0 + t15);
    t6 = (t2 + t16);
    t7 = (t0 + 2200);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t12 = *((char **)t10);
    memcpy(t12, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 776U);
    t5 = *((char **)t1);
    t1 = (t0 + 4108U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t14 = (t13 - 0);
    t11 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t13);
    t15 = (32U * t11);
    t16 = (0 + t15);
    t6 = (t2 + t16);
    t7 = (t0 + 2236);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t12 = *((char **)t10);
    memcpy(t12, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t1 = (t0 + 4124U);
    t5 = (t0 + 5333);
    t7 = (t17 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t13 = (4 - 0);
    t11 = (t13 * 1);
    t11 = (t11 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t11;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t5, t17);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:
LAB3:    t1 = (t0 + 2156);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 2200);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(36, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 2236);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(1024U);
    memset(t1, 0, 1024U);
    t2 = t1;
    t5 = (t0 + 5301);
    t3 = (32U != 0);
    if (t3 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 2272);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 1024U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB5:    t11 = (1024U / 32U);
    xsi_mem_set_data(t2, t5, 32U, t11);
    goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);
    t8 = (t0 + 960U);
    t9 = *((char **)t8);
    t8 = (t0 + 868U);
    t10 = *((char **)t8);
    t8 = (t0 + 4124U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t8);
    t18 = (t14 - 0);
    t11 = (t18 * 1);
    t15 = (32U * t11);
    t16 = (0U + t15);
    t12 = (t0 + 2272);
    t19 = (t12 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    memcpy(t22, t9, 32U);
    xsi_driver_first_trans_delta(t12, t16, 32U, 0LL);
    goto LAB8;

}


extern void work_a_0953353097_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0953353097_3212880686_p_0};
	xsi_register_didat("work_a_0953353097_3212880686", "isim/procesador_total16TB_isim_beh.exe.sim/work/a_0953353097_3212880686.didat");
	xsi_register_executes(pe);
}
