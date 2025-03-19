; ModuleID = 'drivers/power/supply/power_supply_sysfs.c'
source_filename = "drivers/power/supply/power_supply_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_power_supply_charge_behaviour_show: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad power_supply_charge_behaviour_show ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_power_supply_charge_behaviour_parse: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad power_supply_charge_behaviour_parse ; .previous"

%struct.power_supply_attr = type { ptr, [31 x i8], %struct.device_attribute, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.power_supply_propval = type { ptr }
%struct.power_supply = type { ptr, ptr, i64, ptr, i64, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.power_supply_desc = type { ptr, i32, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@power_supply_attr_groups = internal global [2 x ptr] [ptr @power_supply_attr_group, ptr null], align 16, !dbg !0
@power_supply_attrs = internal global [76 x %struct.power_supply_attr] [%struct.power_supply_attr { ptr @.str.6, [31 x i8] c"STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_STATUS_TEXT, i32 5 }, %struct.power_supply_attr { ptr @.str.7, [31 x i8] c"CHARGE_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 9 }, %struct.power_supply_attr { ptr @.str.8, [31 x i8] c"HEALTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_HEALTH_TEXT, i32 15 }, %struct.power_supply_attr { ptr @.str.9, [31 x i8] c"PRESENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.10, [31 x i8] c"ONLINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.11, [31 x i8] c"AUTHENTIC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.12, [31 x i8] c"TECHNOLOGY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TECHNOLOGY_TEXT, i32 7 }, %struct.power_supply_attr { ptr @.str.13, [31 x i8] c"CYCLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.14, [31 x i8] c"VOLTAGE_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.15, [31 x i8] c"VOLTAGE_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.16, [31 x i8] c"VOLTAGE_MAX_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.17, [31 x i8] c"VOLTAGE_MIN_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.18, [31 x i8] c"VOLTAGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.19, [31 x i8] c"VOLTAGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.20, [31 x i8] c"VOLTAGE_OCV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.21, [31 x i8] c"VOLTAGE_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.22, [31 x i8] c"CURRENT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.23, [31 x i8] c"CURRENT_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.24, [31 x i8] c"CURRENT_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.25, [31 x i8] c"CURRENT_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.26, [31 x i8] c"POWER_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.27, [31 x i8] c"POWER_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.28, [31 x i8] c"CHARGE_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.29, [31 x i8] c"CHARGE_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.30, [31 x i8] c"CHARGE_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.31, [31 x i8] c"CHARGE_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.32, [31 x i8] c"CHARGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.33, [31 x i8] c"CHARGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.34, [31 x i8] c"CHARGE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.35, [31 x i8] c"CONSTANT_CHARGE_CURRENT\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.36, [31 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.37, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.38, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.39, [31 x i8] c"CHARGE_CONTROL_LIMIT\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.40, [31 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.41, [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.42, [31 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.43, [31 x i8] c"CHARGE_BEHAVIOUR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 3 }, %struct.power_supply_attr { ptr @.str.44, [31 x i8] c"INPUT_CURRENT_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.45, [31 x i8] c"INPUT_VOLTAGE_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.46, [31 x i8] c"INPUT_POWER_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.47, [31 x i8] c"ENERGY_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.48, [31 x i8] c"ENERGY_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.49, [31 x i8] c"ENERGY_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.50, [31 x i8] c"ENERGY_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.51, [31 x i8] c"ENERGY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.52, [31 x i8] c"ENERGY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.53, [31 x i8] c"CAPACITY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.54, [31 x i8] c"CAPACITY_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.55, [31 x i8] c"CAPACITY_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.56, [31 x i8] c"CAPACITY_ERROR_MARGIN\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.57, [31 x i8] c"CAPACITY_LEVEL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, i32 6 }, %struct.power_supply_attr { ptr @.str.58, [31 x i8] c"TEMP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.59, [31 x i8] c"TEMP_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.60, [31 x i8] c"TEMP_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.61, [31 x i8] c"TEMP_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.62, [31 x i8] c"TEMP_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.63, [31 x i8] c"TEMP_AMBIENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.64, [31 x i8] c"TEMP_AMBIENT_ALERT_MIN\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.65, [31 x i8] c"TEMP_AMBIENT_ALERT_MAX\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.66, [31 x i8] c"TIME_TO_EMPTY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.67, [31 x i8] c"TIME_TO_EMPTY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.68, [31 x i8] c"TIME_TO_FULL_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.69, [31 x i8] c"TIME_TO_FULL_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.70, [31 x i8] c"TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TYPE_TEXT, i32 13 }, %struct.power_supply_attr { ptr @.str.71, [31 x i8] c"USB_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.72, [31 x i8] c"SCOPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_SCOPE_TEXT, i32 3 }, %struct.power_supply_attr { ptr @.str.73, [31 x i8] c"PRECHARGE_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.74, [31 x i8] c"CHARGE_TERM_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.75, [31 x i8] c"CALIBRATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.76, [31 x i8] c"MANUFACTURE_YEAR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.77, [31 x i8] c"MANUFACTURE_MONTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.78, [31 x i8] c"MANUFACTURE_DAY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.79, [31 x i8] c"MODEL_NAME\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.80, [31 x i8] c"MANUFACTURER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.81, [31 x i8] c"SERIAL_NUMBER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }], align 16, !dbg !1961
@.str = private unnamed_addr constant [73 x i8] c"\014%s: Property %d skipped because it is missing from power_supply_attrs\0A\00", align 1, !dbg !1711
@__func__.power_supply_init_attrs = private unnamed_addr constant [24 x i8] c"power_supply_init_attrs\00", align 1, !dbg !1716
@.str.1 = private unnamed_addr constant [8 x i8] c"_err_%d\00", align 1, !dbg !1721
@__power_supply_attrs = internal global [77 x ptr] zeroinitializer, align 16, !dbg !1746
@power_supply_battery_info_properties = external dso_local constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"POWER_SUPPLY_NAME=%s\00", align 1, !dbg !1724
@power_supply_battery_info_properties_size = external dso_local constant i64, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1, !dbg !1729
@POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT = internal constant [3 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148], align 16, !dbg !2391
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !1734
@.str.5 = private unnamed_addr constant [47 x i8] c"driver reporting unsupported charge behaviour\0A\00", align 1, !dbg !1737
@__UNIQUE_ID___addressable_power_supply_charge_behaviour_show205 = internal global ptr @power_supply_charge_behaviour_show, section ".discard.addressable", align 8, !dbg !1742
@__UNIQUE_ID___addressable_power_supply_charge_behaviour_parse206 = internal global ptr @power_supply_charge_behaviour_parse, section ".discard.addressable", align 8, !dbg !1744
@power_supply_attr_group = internal constant %struct.attribute_group { ptr null, ptr @power_supply_attr_is_visible, ptr null, ptr @__power_supply_attrs, ptr null }, align 8, !dbg !1751
@.str.6 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1, !dbg !1753
@POWER_SUPPLY_STATUS_TEXT = internal constant [5 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], align 16, !dbg !1976
@.str.7 = private unnamed_addr constant [12 x i8] c"CHARGE_TYPE\00", align 1, !dbg !1756
@POWER_SUPPLY_CHARGE_TYPE_TEXT = internal constant [9 x ptr] [ptr @.str.82, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], align 16, !dbg !1995
@.str.8 = private unnamed_addr constant [7 x i8] c"HEALTH\00", align 1, !dbg !1761
@POWER_SUPPLY_HEALTH_TEXT = internal constant [15 x ptr] [ptr @.str.82, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], align 16, !dbg !2026
@.str.9 = private unnamed_addr constant [8 x i8] c"PRESENT\00", align 1, !dbg !1763
@.str.10 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1, !dbg !1765
@.str.11 = private unnamed_addr constant [10 x i8] c"AUTHENTIC\00", align 1, !dbg !1767
@.str.12 = private unnamed_addr constant [11 x i8] c"TECHNOLOGY\00", align 1, !dbg !1772
@POWER_SUPPLY_TECHNOLOGY_TEXT = internal constant [7 x ptr] [ptr @.str.82, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], align 16, !dbg !2041
@.str.13 = private unnamed_addr constant [12 x i8] c"CYCLE_COUNT\00", align 1, !dbg !1777
@.str.14 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MAX\00", align 1, !dbg !1779
@.str.15 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MIN\00", align 1, !dbg !1781
@.str.16 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MAX_DESIGN\00", align 1, !dbg !1783
@.str.17 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MIN_DESIGN\00", align 1, !dbg !1788
@.str.18 = private unnamed_addr constant [12 x i8] c"VOLTAGE_NOW\00", align 1, !dbg !1790
@.str.19 = private unnamed_addr constant [12 x i8] c"VOLTAGE_AVG\00", align 1, !dbg !1792
@.str.20 = private unnamed_addr constant [12 x i8] c"VOLTAGE_OCV\00", align 1, !dbg !1794
@.str.21 = private unnamed_addr constant [13 x i8] c"VOLTAGE_BOOT\00", align 1, !dbg !1796
@.str.22 = private unnamed_addr constant [12 x i8] c"CURRENT_MAX\00", align 1, !dbg !1801
@.str.23 = private unnamed_addr constant [12 x i8] c"CURRENT_NOW\00", align 1, !dbg !1803
@.str.24 = private unnamed_addr constant [12 x i8] c"CURRENT_AVG\00", align 1, !dbg !1805
@.str.25 = private unnamed_addr constant [13 x i8] c"CURRENT_BOOT\00", align 1, !dbg !1807
@.str.26 = private unnamed_addr constant [10 x i8] c"POWER_NOW\00", align 1, !dbg !1809
@.str.27 = private unnamed_addr constant [10 x i8] c"POWER_AVG\00", align 1, !dbg !1811
@.str.28 = private unnamed_addr constant [19 x i8] c"CHARGE_FULL_DESIGN\00", align 1, !dbg !1813
@.str.29 = private unnamed_addr constant [20 x i8] c"CHARGE_EMPTY_DESIGN\00", align 1, !dbg !1815
@.str.30 = private unnamed_addr constant [12 x i8] c"CHARGE_FULL\00", align 1, !dbg !1820
@.str.31 = private unnamed_addr constant [13 x i8] c"CHARGE_EMPTY\00", align 1, !dbg !1822
@.str.32 = private unnamed_addr constant [11 x i8] c"CHARGE_NOW\00", align 1, !dbg !1824
@.str.33 = private unnamed_addr constant [11 x i8] c"CHARGE_AVG\00", align 1, !dbg !1826
@.str.34 = private unnamed_addr constant [15 x i8] c"CHARGE_COUNTER\00", align 1, !dbg !1828
@.str.35 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_CURRENT\00", align 1, !dbg !1833
@.str.36 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00", align 1, !dbg !1836
@.str.37 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_VOLTAGE\00", align 1, !dbg !1841
@.str.38 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00", align 1, !dbg !1843
@.str.39 = private unnamed_addr constant [21 x i8] c"CHARGE_CONTROL_LIMIT\00", align 1, !dbg !1845
@.str.40 = private unnamed_addr constant [25 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00", align 1, !dbg !1847
@.str.41 = private unnamed_addr constant [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", align 1, !dbg !1852
@.str.42 = private unnamed_addr constant [29 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00", align 1, !dbg !1854
@.str.43 = private unnamed_addr constant [17 x i8] c"CHARGE_BEHAVIOUR\00", align 1, !dbg !1859
@.str.44 = private unnamed_addr constant [20 x i8] c"INPUT_CURRENT_LIMIT\00", align 1, !dbg !1864
@.str.45 = private unnamed_addr constant [20 x i8] c"INPUT_VOLTAGE_LIMIT\00", align 1, !dbg !1866
@.str.46 = private unnamed_addr constant [18 x i8] c"INPUT_POWER_LIMIT\00", align 1, !dbg !1868
@.str.47 = private unnamed_addr constant [19 x i8] c"ENERGY_FULL_DESIGN\00", align 1, !dbg !1873
@.str.48 = private unnamed_addr constant [20 x i8] c"ENERGY_EMPTY_DESIGN\00", align 1, !dbg !1875
@.str.49 = private unnamed_addr constant [12 x i8] c"ENERGY_FULL\00", align 1, !dbg !1877
@.str.50 = private unnamed_addr constant [13 x i8] c"ENERGY_EMPTY\00", align 1, !dbg !1879
@.str.51 = private unnamed_addr constant [11 x i8] c"ENERGY_NOW\00", align 1, !dbg !1881
@.str.52 = private unnamed_addr constant [11 x i8] c"ENERGY_AVG\00", align 1, !dbg !1883
@.str.53 = private unnamed_addr constant [9 x i8] c"CAPACITY\00", align 1, !dbg !1885
@.str.54 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MIN\00", align 1, !dbg !1890
@.str.55 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MAX\00", align 1, !dbg !1892
@.str.56 = private unnamed_addr constant [22 x i8] c"CAPACITY_ERROR_MARGIN\00", align 1, !dbg !1894
@.str.57 = private unnamed_addr constant [15 x i8] c"CAPACITY_LEVEL\00", align 1, !dbg !1899
@POWER_SUPPLY_CAPACITY_LEVEL_TEXT = internal constant [6 x ptr] [ptr @.str.82, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.86], align 16, !dbg !2052
@.str.58 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1, !dbg !1901
@.str.59 = private unnamed_addr constant [9 x i8] c"TEMP_MAX\00", align 1, !dbg !1906
@.str.60 = private unnamed_addr constant [9 x i8] c"TEMP_MIN\00", align 1, !dbg !1908
@.str.61 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MIN\00", align 1, !dbg !1910
@.str.62 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MAX\00", align 1, !dbg !1912
@.str.63 = private unnamed_addr constant [13 x i8] c"TEMP_AMBIENT\00", align 1, !dbg !1914
@.str.64 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MIN\00", align 1, !dbg !1916
@.str.65 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MAX\00", align 1, !dbg !1921
@.str.66 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_NOW\00", align 1, !dbg !1923
@.str.67 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_AVG\00", align 1, !dbg !1925
@.str.68 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_NOW\00", align 1, !dbg !1927
@.str.69 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_AVG\00", align 1, !dbg !1929
@.str.70 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1, !dbg !1931
@POWER_SUPPLY_TYPE_TEXT = internal constant [13 x ptr] [ptr @.str.82, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], align 16, !dbg !2079
@.str.71 = private unnamed_addr constant [9 x i8] c"USB_TYPE\00", align 1, !dbg !1933
@.str.72 = private unnamed_addr constant [6 x i8] c"SCOPE\00", align 1, !dbg !1935
@POWER_SUPPLY_SCOPE_TEXT = internal constant [3 x ptr] [ptr @.str.82, ptr @.str.131, ptr @.str.132], align 16, !dbg !2086
@.str.73 = private unnamed_addr constant [18 x i8] c"PRECHARGE_CURRENT\00", align 1, !dbg !1937
@.str.74 = private unnamed_addr constant [20 x i8] c"CHARGE_TERM_CURRENT\00", align 1, !dbg !1939
@.str.75 = private unnamed_addr constant [10 x i8] c"CALIBRATE\00", align 1, !dbg !1941
@.str.76 = private unnamed_addr constant [17 x i8] c"MANUFACTURE_YEAR\00", align 1, !dbg !1943
@.str.77 = private unnamed_addr constant [18 x i8] c"MANUFACTURE_MONTH\00", align 1, !dbg !1945
@.str.78 = private unnamed_addr constant [16 x i8] c"MANUFACTURE_DAY\00", align 1, !dbg !1947
@.str.79 = private unnamed_addr constant [11 x i8] c"MODEL_NAME\00", align 1, !dbg !1952
@.str.80 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1, !dbg !1954
@.str.81 = private unnamed_addr constant [14 x i8] c"SERIAL_NUMBER\00", align 1, !dbg !1956
@.str.82 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1, !dbg !1966
@.str.83 = private unnamed_addr constant [9 x i8] c"Charging\00", align 1, !dbg !1968
@.str.84 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1, !dbg !1970
@.str.85 = private unnamed_addr constant [13 x i8] c"Not charging\00", align 1, !dbg !1972
@.str.86 = private unnamed_addr constant [5 x i8] c"Full\00", align 1, !dbg !1974
@.str.87 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1, !dbg !1979
@.str.88 = private unnamed_addr constant [8 x i8] c"Trickle\00", align 1, !dbg !1981
@.str.89 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1, !dbg !1983
@.str.90 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1, !dbg !1985
@.str.91 = private unnamed_addr constant [9 x i8] c"Adaptive\00", align 1, !dbg !1987
@.str.92 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1, !dbg !1989
@.str.93 = private unnamed_addr constant [10 x i8] c"Long Life\00", align 1, !dbg !1991
@.str.94 = private unnamed_addr constant [7 x i8] c"Bypass\00", align 1, !dbg !1993
@.str.95 = private unnamed_addr constant [5 x i8] c"Good\00", align 1, !dbg !1998
@.str.96 = private unnamed_addr constant [9 x i8] c"Overheat\00", align 1, !dbg !2000
@.str.97 = private unnamed_addr constant [5 x i8] c"Dead\00", align 1, !dbg !2002
@.str.98 = private unnamed_addr constant [13 x i8] c"Over voltage\00", align 1, !dbg !2004
@.str.99 = private unnamed_addr constant [20 x i8] c"Unspecified failure\00", align 1, !dbg !2006
@.str.100 = private unnamed_addr constant [5 x i8] c"Cold\00", align 1, !dbg !2008
@.str.101 = private unnamed_addr constant [22 x i8] c"Watchdog timer expire\00", align 1, !dbg !2010
@.str.102 = private unnamed_addr constant [20 x i8] c"Safety timer expire\00", align 1, !dbg !2012
@.str.103 = private unnamed_addr constant [13 x i8] c"Over current\00", align 1, !dbg !2014
@.str.104 = private unnamed_addr constant [21 x i8] c"Calibration required\00", align 1, !dbg !2016
@.str.105 = private unnamed_addr constant [5 x i8] c"Warm\00", align 1, !dbg !2018
@.str.106 = private unnamed_addr constant [5 x i8] c"Cool\00", align 1, !dbg !2020
@.str.107 = private unnamed_addr constant [4 x i8] c"Hot\00", align 1, !dbg !2022
@.str.108 = private unnamed_addr constant [11 x i8] c"No battery\00", align 1, !dbg !2024
@.str.109 = private unnamed_addr constant [5 x i8] c"NiMH\00", align 1, !dbg !2029
@.str.110 = private unnamed_addr constant [7 x i8] c"Li-ion\00", align 1, !dbg !2031
@.str.111 = private unnamed_addr constant [8 x i8] c"Li-poly\00", align 1, !dbg !2033
@.str.112 = private unnamed_addr constant [5 x i8] c"LiFe\00", align 1, !dbg !2035
@.str.113 = private unnamed_addr constant [5 x i8] c"NiCd\00", align 1, !dbg !2037
@.str.114 = private unnamed_addr constant [5 x i8] c"LiMn\00", align 1, !dbg !2039
@.str.115 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1, !dbg !2044
@.str.116 = private unnamed_addr constant [4 x i8] c"Low\00", align 1, !dbg !2046
@.str.117 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1, !dbg !2048
@.str.118 = private unnamed_addr constant [5 x i8] c"High\00", align 1, !dbg !2050
@.str.119 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1, !dbg !2055
@.str.120 = private unnamed_addr constant [4 x i8] c"UPS\00", align 1, !dbg !2057
@.str.121 = private unnamed_addr constant [6 x i8] c"Mains\00", align 1, !dbg !2059
@.str.122 = private unnamed_addr constant [4 x i8] c"USB\00", align 1, !dbg !2061
@.str.123 = private unnamed_addr constant [8 x i8] c"USB_DCP\00", align 1, !dbg !2063
@.str.124 = private unnamed_addr constant [8 x i8] c"USB_CDP\00", align 1, !dbg !2065
@.str.125 = private unnamed_addr constant [8 x i8] c"USB_ACA\00", align 1, !dbg !2067
@.str.126 = private unnamed_addr constant [6 x i8] c"USB_C\00", align 1, !dbg !2069
@.str.127 = private unnamed_addr constant [7 x i8] c"USB_PD\00", align 1, !dbg !2071
@.str.128 = private unnamed_addr constant [11 x i8] c"USB_PD_DRP\00", align 1, !dbg !2073
@.str.129 = private unnamed_addr constant [8 x i8] c"BrickID\00", align 1, !dbg !2075
@.str.130 = private unnamed_addr constant [9 x i8] c"Wireless\00", align 1, !dbg !2077
@.str.131 = private unnamed_addr constant [7 x i8] c"System\00", align 1, !dbg !2082
@.str.132 = private unnamed_addr constant [7 x i8] c"Device\00", align 1, !dbg !2084
@_ctype = external dso_local constant [0 x i8], align 1
@power_supply_show_property._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !2089
@__func__.power_supply_show_property = private unnamed_addr constant [27 x i8] c"power_supply_show_property\00", align 1, !dbg !2343
@.str.133 = private unnamed_addr constant [44 x i8] c"driver failed to report `%s' property: %zd\0A\00", align 1, !dbg !2348
@.str.134 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !2353
@.str.135 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !2355
@POWER_SUPPLY_USB_TYPE_TEXT = internal constant [10 x ptr] [ptr @.str.82, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.129], align 16, !dbg !2380
@.str.136 = private unnamed_addr constant [45 x i8] c"driver reporting unsupported connected type\0A\00", align 1, !dbg !2357
@.str.137 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1, !dbg !2362
@.str.138 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1, !dbg !2364
@.str.139 = private unnamed_addr constant [4 x i8] c"CDP\00", align 1, !dbg !2366
@.str.140 = private unnamed_addr constant [4 x i8] c"ACA\00", align 1, !dbg !2368
@.str.141 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !2370
@.str.142 = private unnamed_addr constant [3 x i8] c"PD\00", align 1, !dbg !2373
@.str.143 = private unnamed_addr constant [7 x i8] c"PD_DRP\00", align 1, !dbg !2376
@.str.144 = private unnamed_addr constant [7 x i8] c"PD_PPS\00", align 1, !dbg !2378
@.str.145 = private unnamed_addr constant [19 x i8] c"POWER_SUPPLY_%s=%s\00", align 1, !dbg !2383
@.str.146 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !2385
@.str.147 = private unnamed_addr constant [15 x i8] c"inhibit-charge\00", align 1, !dbg !2387
@.str.148 = private unnamed_addr constant [16 x i8] c"force-discharge\00", align 1, !dbg !2389
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_power_supply_charge_behaviour_show205, ptr @__UNIQUE_ID___addressable_power_supply_charge_behaviour_parse206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @power_supply_init_attrs(ptr noundef %dev_type) #0 align 16 !dbg !2403 {
entry:
  %dev_type.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %attr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev_type, ptr %dev_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_type.addr, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2409, metadata !DIExpression()), !dbg !2416
  %0 = load ptr, ptr %dev_type.addr, align 8, !dbg !2417
  %groups = getelementptr inbounds %struct.device_type, ptr %0, i32 0, i32 1, !dbg !2418
  store ptr @power_supply_attr_groups, ptr %groups, align 8, !dbg !2419
  store i32 0, ptr %i, align 4, !dbg !2420
  br label %for.cond, !dbg !2421

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2422
  %conv = sext i32 %1 to i64, !dbg !2422
  %cmp = icmp ult i64 %conv, 76, !dbg !2423
  br i1 %cmp, label %for.body, label %for.end, !dbg !2424

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #10, !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !2410, metadata !DIExpression()), !dbg !2426
  %2 = load i32, ptr %i, align 4, !dbg !2427
  %idxprom = sext i32 %2 to i64, !dbg !2429
  %arrayidx = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i64 0, i64 %idxprom, !dbg !2429
  %prop_name = getelementptr inbounds %struct.power_supply_attr, ptr %arrayidx, i32 0, i32 0, !dbg !2430
  %3 = load ptr, ptr %prop_name, align 8, !dbg !2430
  %tobool = icmp ne ptr %3, null, !dbg !2429
  br i1 %tobool, label %if.else, label %if.then, !dbg !2431

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !2432

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2435

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2435

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %i, align 4, !dbg !2432
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @__func__.power_supply_init_attrs, i32 noundef %4) #11, !dbg !2432
  store i32 %call, ptr %tmp, align 4, !dbg !2435
  %5 = load i32, ptr %tmp, align 4, !dbg !2432
  %6 = load i32, ptr %i, align 4, !dbg !2437
  %idxprom2 = sext i32 %6 to i64, !dbg !2438
  %arrayidx3 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i64 0, i64 %idxprom2, !dbg !2438
  %attr_name = getelementptr inbounds %struct.power_supply_attr, ptr %arrayidx3, i32 0, i32 1, !dbg !2439
  %arraydecay = getelementptr inbounds [31 x i8], ptr %attr_name, i64 0, i64 0, !dbg !2438
  %7 = load i32, ptr %i, align 4, !dbg !2440
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %7) #12, !dbg !2441
  br label %if.end, !dbg !2442

if.else:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2443
  %idxprom5 = sext i32 %8 to i64, !dbg !2445
  %arrayidx6 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i64 0, i64 %idxprom5, !dbg !2445
  %attr_name7 = getelementptr inbounds %struct.power_supply_attr, ptr %arrayidx6, i32 0, i32 1, !dbg !2446
  %arraydecay8 = getelementptr inbounds [31 x i8], ptr %attr_name7, i64 0, i64 0, !dbg !2445
  call void @str_to_lower(ptr noundef %arraydecay8) #12, !dbg !2447
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %9 = load i32, ptr %i, align 4, !dbg !2448
  %idxprom9 = sext i32 %9 to i64, !dbg !2449
  %arrayidx10 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i64 0, i64 %idxprom9, !dbg !2449
  %dev_attr = getelementptr inbounds %struct.power_supply_attr, ptr %arrayidx10, i32 0, i32 2, !dbg !2450
  store ptr %dev_attr, ptr %attr, align 8, !dbg !2451
  %10 = load i32, ptr %i, align 4, !dbg !2452
  %idxprom11 = sext i32 %10 to i64, !dbg !2453
  %arrayidx12 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i64 0, i64 %idxprom11, !dbg !2453
  %attr_name13 = getelementptr inbounds %struct.power_supply_attr, ptr %arrayidx12, i32 0, i32 1, !dbg !2454
  %arraydecay14 = getelementptr inbounds [31 x i8], ptr %attr_name13, i64 0, i64 0, !dbg !2453
  %11 = load ptr, ptr %attr, align 8, !dbg !2455
  %attr15 = getelementptr inbounds %struct.device_attribute, ptr %11, i32 0, i32 0, !dbg !2456
  %name = getelementptr inbounds %struct.attribute, ptr %attr15, i32 0, i32 0, !dbg !2457
  store ptr %arraydecay14, ptr %name, align 8, !dbg !2458
  %12 = load ptr, ptr %attr, align 8, !dbg !2459
  %show = getelementptr inbounds %struct.device_attribute, ptr %12, i32 0, i32 1, !dbg !2460
  store ptr @power_supply_show_property, ptr %show, align 8, !dbg !2461
  %13 = load ptr, ptr %attr, align 8, !dbg !2462
  %store = getelementptr inbounds %struct.device_attribute, ptr %13, i32 0, i32 2, !dbg !2463
  store ptr @power_supply_store_property, ptr %store, align 8, !dbg !2464
  %14 = load ptr, ptr %attr, align 8, !dbg !2465
  %attr16 = getelementptr inbounds %struct.device_attribute, ptr %14, i32 0, i32 0, !dbg !2466
  %15 = load i32, ptr %i, align 4, !dbg !2467
  %idxprom17 = sext i32 %15 to i64, !dbg !2468
  %arrayidx18 = getelementptr [77 x ptr], ptr @__power_supply_attrs, i64 0, i64 %idxprom17, !dbg !2468
  store ptr %attr16, ptr %arrayidx18, align 8, !dbg !2469
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #10, !dbg !2470
  br label %for.inc, !dbg !2471

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !dbg !2472
  %inc = add i32 %16, 1, !dbg !2472
  store i32 %inc, ptr %i, align 4, !dbg !2472
  br label %for.cond, !dbg !2473, !llvm.loop !2474

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2478
  ret void, !dbg !2478
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2479 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2483 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @str_to_lower(ptr noundef %str) #0 align 16 !dbg !2487 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  br label %while.cond, !dbg !2493

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !2494
  %1 = load i8, ptr %0, align 1, !dbg !2495
  %tobool = icmp ne i8 %1, 0, !dbg !2493
  br i1 %tobool, label %while.body, label %while.end, !dbg !2493

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8, !dbg !2496
  %3 = load i8, ptr %2, align 1, !dbg !2496
  %call = call zeroext i8 @__tolower(i8 noundef zeroext %3) #12, !dbg !2496
  %4 = load ptr, ptr %str.addr, align 8, !dbg !2498
  store i8 %call, ptr %4, align 1, !dbg !2499
  %5 = load ptr, ptr %str.addr, align 8, !dbg !2500
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !2500
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !2500
  br label %while.cond, !dbg !2493, !llvm.loop !2501

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_supply_show_property(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2091 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %psy = alloca ptr, align 8
  %ps_attr = alloca ptr, align 8
  %psp = alloca i32, align 4
  %value = alloca %union.power_supply_propval, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2093, metadata !DIExpression()), !dbg !2504
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2094, metadata !DIExpression()), !dbg !2505
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2095, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2507
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2096, metadata !DIExpression()), !dbg !2508
  call void @llvm.lifetime.start.p0(i64 8, ptr %psy) #10, !dbg !2509
  call void @llvm.dbg.declare(metadata ptr %psy, metadata !2097, metadata !DIExpression()), !dbg !2510
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2511
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #12, !dbg !2512
  store ptr %call, ptr %psy, align 8, !dbg !2510
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps_attr) #10, !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %ps_attr, metadata !2330, metadata !DIExpression()), !dbg !2514
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !2515
  %call1 = call ptr @to_ps_attr(ptr noundef %1) #12, !dbg !2516
  store ptr %call1, ptr %ps_attr, align 8, !dbg !2514
  call void @llvm.lifetime.start.p0(i64 4, ptr %psp) #10, !dbg !2517
  call void @llvm.dbg.declare(metadata ptr %psp, metadata !2331, metadata !DIExpression()), !dbg !2518
  %2 = load ptr, ptr %attr.addr, align 8, !dbg !2519
  %call2 = call i32 @dev_attr_psp(ptr noundef %2) #12, !dbg !2520
  store i32 %call2, ptr %psp, align 4, !dbg !2518
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #10, !dbg !2521
  call void @llvm.dbg.declare(metadata ptr %value, metadata !2332, metadata !DIExpression()), !dbg !2522
  %3 = load i32, ptr %psp, align 4, !dbg !2523
  %cmp = icmp eq i32 %3, 64, !dbg !2525
  br i1 %cmp, label %if.then, label %if.else, !dbg !2526

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %psy, align 8, !dbg !2527
  %desc = getelementptr inbounds %struct.power_supply, ptr %4, i32 0, i32 0, !dbg !2529
  %5 = load ptr, ptr %desc, align 8, !dbg !2529
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %5, i32 0, i32 1, !dbg !2530
  %6 = load i32, ptr %type, align 8, !dbg !2530
  store i32 %6, ptr %value, align 8, !dbg !2531
  br label %if.end25, !dbg !2532

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %psy, align 8, !dbg !2533
  %8 = load i32, ptr %psp, align 4, !dbg !2535
  %call3 = call i32 @power_supply_get_property(ptr noundef %7, i32 noundef %8, ptr noundef %value) #12, !dbg !2536
  %conv = sext i32 %call3 to i64, !dbg !2536
  store i64 %conv, ptr %ret, align 8, !dbg !2537
  %9 = load i64, ptr %ret, align 8, !dbg !2538
  %cmp4 = icmp slt i64 %9, 0, !dbg !2540
  br i1 %cmp4, label %if.then6, label %if.end24, !dbg !2541

if.then6:                                         ; preds = %if.else
  %10 = load i64, ptr %ret, align 8, !dbg !2542
  %cmp7 = icmp eq i64 %10, -61, !dbg !2545
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !2546

if.then9:                                         ; preds = %if.then6
  br label %if.end23, !dbg !2547

if.else10:                                        ; preds = %if.then6
  %11 = load i64, ptr %ret, align 8, !dbg !2548
  %cmp11 = icmp ne i64 %11, -19, !dbg !2550
  br i1 %cmp11, label %land.lhs.true, label %if.end22, !dbg !2551

land.lhs.true:                                    ; preds = %if.else10
  %12 = load i64, ptr %ret, align 8, !dbg !2552
  %cmp13 = icmp ne i64 %12, -11, !dbg !2553
  br i1 %cmp13, label %if.then15, label %if.end22, !dbg !2554

if.then15:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !2555

do.body:                                          ; preds = %if.then15
  %call16 = call i32 @___ratelimit(ptr noundef @power_supply_show_property._rs, ptr noundef @__func__.power_supply_show_property) #12, !dbg !2556
  %tobool = icmp ne i32 %call16, 0, !dbg !2556
  br i1 %tobool, label %if.then17, label %if.end, !dbg !2559

if.then17:                                        ; preds = %do.body
  br label %do.body18, !dbg !2560

do.body18:                                        ; preds = %if.then17
  br label %do.cond, !dbg !2562

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !2562

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !2560
  %14 = load ptr, ptr %attr.addr, align 8, !dbg !2560
  %attr19 = getelementptr inbounds %struct.device_attribute, ptr %14, i32 0, i32 0, !dbg !2560
  %name = getelementptr inbounds %struct.attribute, ptr %attr19, i32 0, i32 0, !dbg !2560
  %15 = load ptr, ptr %name, align 8, !dbg !2560
  %16 = load i64, ptr %ret, align 8, !dbg !2560
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef @.str.133, ptr noundef %15, i64 noundef %16) #11, !dbg !2560
  br label %if.end, !dbg !2556

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond20, !dbg !2559

do.cond20:                                        ; preds = %if.end
  br label %do.end21, !dbg !2559

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2559

if.end22:                                         ; preds = %do.end21, %land.lhs.true, %if.else10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then9
  %17 = load i64, ptr %ret, align 8, !dbg !2564
  store i64 %17, ptr %retval, align 8, !dbg !2565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2565

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %18 = load ptr, ptr %ps_attr, align 8, !dbg !2566
  %text_values_len = getelementptr inbounds %struct.power_supply_attr, ptr %18, i32 0, i32 4, !dbg !2568
  %19 = load i32, ptr %text_values_len, align 8, !dbg !2568
  %cmp26 = icmp sgt i32 %19, 0, !dbg !2569
  br i1 %cmp26, label %land.lhs.true28, label %if.end38, !dbg !2570

land.lhs.true28:                                  ; preds = %if.end25
  %20 = load i32, ptr %value, align 8, !dbg !2571
  %21 = load ptr, ptr %ps_attr, align 8, !dbg !2572
  %text_values_len29 = getelementptr inbounds %struct.power_supply_attr, ptr %21, i32 0, i32 4, !dbg !2573
  %22 = load i32, ptr %text_values_len29, align 8, !dbg !2573
  %cmp30 = icmp slt i32 %20, %22, !dbg !2574
  br i1 %cmp30, label %land.lhs.true32, label %if.end38, !dbg !2575

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %23 = load i32, ptr %value, align 8, !dbg !2576
  %cmp33 = icmp sge i32 %23, 0, !dbg !2577
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !2578

if.then35:                                        ; preds = %land.lhs.true32
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !2579
  %25 = load ptr, ptr %ps_attr, align 8, !dbg !2581
  %text_values = getelementptr inbounds %struct.power_supply_attr, ptr %25, i32 0, i32 3, !dbg !2582
  %26 = load ptr, ptr %text_values, align 8, !dbg !2582
  %27 = load i32, ptr %value, align 8, !dbg !2583
  %idxprom = sext i32 %27 to i64, !dbg !2581
  %arrayidx = getelementptr ptr, ptr %26, i64 %idxprom, !dbg !2581
  %28 = load ptr, ptr %arrayidx, align 8, !dbg !2581
  %call36 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %24, ptr noundef @.str.134, ptr noundef %28) #12, !dbg !2584
  %conv37 = sext i32 %call36 to i64, !dbg !2584
  store i64 %conv37, ptr %retval, align 8, !dbg !2585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2585

if.end38:                                         ; preds = %land.lhs.true32, %land.lhs.true28, %if.end25
  %29 = load i32, ptr %psp, align 4, !dbg !2586
  switch i32 %29, label %sw.default [
    i32 65, label %sw.bb
    i32 73, label %sw.bb41
    i32 74, label %sw.bb41
    i32 75, label %sw.bb41
  ], !dbg !2587

sw.bb:                                            ; preds = %if.end38
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !2588
  %31 = load ptr, ptr %psy, align 8, !dbg !2590
  %desc39 = getelementptr inbounds %struct.power_supply, ptr %31, i32 0, i32 0, !dbg !2591
  %32 = load ptr, ptr %desc39, align 8, !dbg !2591
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !2592
  %call40 = call i64 @power_supply_show_usb_type(ptr noundef %30, ptr noundef %32, ptr noundef %value, ptr noundef %33) #12, !dbg !2593
  store i64 %call40, ptr %ret, align 8, !dbg !2594
  br label %sw.epilog, !dbg !2595

sw.bb41:                                          ; preds = %if.end38, %if.end38, %if.end38
  %34 = load ptr, ptr %buf.addr, align 8, !dbg !2596
  %35 = load ptr, ptr %value, align 8, !dbg !2597
  %call42 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %34, ptr noundef @.str.134, ptr noundef %35) #12, !dbg !2598
  %conv43 = sext i32 %call42 to i64, !dbg !2598
  store i64 %conv43, ptr %ret, align 8, !dbg !2599
  br label %sw.epilog, !dbg !2600

sw.default:                                       ; preds = %if.end38
  %36 = load ptr, ptr %buf.addr, align 8, !dbg !2601
  %37 = load i32, ptr %value, align 8, !dbg !2602
  %call44 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %36, ptr noundef @.str.135, i32 noundef %37) #12, !dbg !2603
  %conv45 = sext i32 %call44 to i64, !dbg !2603
  store i64 %conv45, ptr %ret, align 8, !dbg !2604
  br label %sw.epilog, !dbg !2605

sw.epilog:                                        ; preds = %sw.default, %sw.bb41, %sw.bb
  %38 = load i64, ptr %ret, align 8, !dbg !2606
  store i64 %38, ptr %retval, align 8, !dbg !2607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2607

cleanup:                                          ; preds = %sw.epilog, %if.then35, %if.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 4, ptr %psp) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps_attr) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 8, ptr %psy) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !2608
  %39 = load i64, ptr %retval, align 8, !dbg !2608
  ret i64 %39, !dbg !2608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_supply_store_property(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !2609 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %psy = alloca ptr, align 8
  %ps_attr = alloca ptr, align 8
  %psp = alloca i32, align 4
  %value = alloca %union.power_supply_propval, align 8
  %long_val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2611, metadata !DIExpression()), !dbg !2623
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2612, metadata !DIExpression()), !dbg !2624
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2613, metadata !DIExpression()), !dbg !2625
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2614, metadata !DIExpression()), !dbg !2626
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2627
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2615, metadata !DIExpression()), !dbg !2628
  call void @llvm.lifetime.start.p0(i64 8, ptr %psy) #10, !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %psy, metadata !2616, metadata !DIExpression()), !dbg !2630
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2631
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #12, !dbg !2632
  store ptr %call, ptr %psy, align 8, !dbg !2630
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps_attr) #10, !dbg !2633
  call void @llvm.dbg.declare(metadata ptr %ps_attr, metadata !2617, metadata !DIExpression()), !dbg !2634
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !2635
  %call1 = call ptr @to_ps_attr(ptr noundef %1) #12, !dbg !2636
  store ptr %call1, ptr %ps_attr, align 8, !dbg !2634
  call void @llvm.lifetime.start.p0(i64 4, ptr %psp) #10, !dbg !2637
  call void @llvm.dbg.declare(metadata ptr %psp, metadata !2618, metadata !DIExpression()), !dbg !2638
  %2 = load ptr, ptr %attr.addr, align 8, !dbg !2639
  %call2 = call i32 @dev_attr_psp(ptr noundef %2) #12, !dbg !2640
  store i32 %call2, ptr %psp, align 4, !dbg !2638
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #10, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %value, metadata !2619, metadata !DIExpression()), !dbg !2642
  store i64 -22, ptr %ret, align 8, !dbg !2643
  %3 = load ptr, ptr %ps_attr, align 8, !dbg !2644
  %text_values_len = getelementptr inbounds %struct.power_supply_attr, ptr %3, i32 0, i32 4, !dbg !2646
  %4 = load i32, ptr %text_values_len, align 8, !dbg !2646
  %cmp = icmp sgt i32 %4, 0, !dbg !2647
  br i1 %cmp, label %if.then, label %if.end, !dbg !2648

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ps_attr, align 8, !dbg !2649
  %text_values = getelementptr inbounds %struct.power_supply_attr, ptr %5, i32 0, i32 3, !dbg !2651
  %6 = load ptr, ptr %text_values, align 8, !dbg !2651
  %7 = load ptr, ptr %ps_attr, align 8, !dbg !2652
  %text_values_len3 = getelementptr inbounds %struct.power_supply_attr, ptr %7, i32 0, i32 4, !dbg !2653
  %8 = load i32, ptr %text_values_len3, align 8, !dbg !2653
  %conv = sext i32 %8 to i64, !dbg !2652
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2654
  %call4 = call i32 @__sysfs_match_string(ptr noundef %6, i64 noundef %conv, ptr noundef %9) #12, !dbg !2655
  %conv5 = sext i32 %call4 to i64, !dbg !2655
  store i64 %conv5, ptr %ret, align 8, !dbg !2656
  br label %if.end, !dbg !2657

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %ret, align 8, !dbg !2658
  %cmp6 = icmp slt i64 %10, 0, !dbg !2659
  br i1 %cmp6, label %if.then8, label %if.end15, !dbg !2660

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %long_val) #10, !dbg !2661
  call void @llvm.dbg.declare(metadata ptr %long_val, metadata !2620, metadata !DIExpression()), !dbg !2662
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !2663
  %call9 = call i32 @kstrtol(ptr noundef %11, i32 noundef 10, ptr noundef %long_val) #12, !dbg !2664
  %conv10 = sext i32 %call9 to i64, !dbg !2664
  store i64 %conv10, ptr %ret, align 8, !dbg !2665
  %12 = load i64, ptr %ret, align 8, !dbg !2666
  %cmp11 = icmp slt i64 %12, 0, !dbg !2668
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2669

if.then13:                                        ; preds = %if.then8
  %13 = load i64, ptr %ret, align 8, !dbg !2670
  store i64 %13, ptr %retval, align 8, !dbg !2671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2671

if.end14:                                         ; preds = %if.then8
  %14 = load i64, ptr %long_val, align 8, !dbg !2672
  store i64 %14, ptr %ret, align 8, !dbg !2673
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2674
  br label %cleanup, !dbg !2674

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %long_val) #10, !dbg !2674
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end15, !dbg !2675

if.end15:                                         ; preds = %cleanup.cont, %if.end
  %15 = load i64, ptr %ret, align 8, !dbg !2676
  %conv16 = trunc i64 %15 to i32, !dbg !2676
  store i32 %conv16, ptr %value, align 8, !dbg !2677
  %16 = load ptr, ptr %psy, align 8, !dbg !2678
  %17 = load i32, ptr %psp, align 4, !dbg !2679
  %call17 = call i32 @power_supply_set_property(ptr noundef %16, i32 noundef %17, ptr noundef %value) #12, !dbg !2680
  %conv18 = sext i32 %call17 to i64, !dbg !2680
  store i64 %conv18, ptr %ret, align 8, !dbg !2681
  %18 = load i64, ptr %ret, align 8, !dbg !2682
  %cmp19 = icmp slt i64 %18, 0, !dbg !2684
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2685

if.then21:                                        ; preds = %if.end15
  %19 = load i64, ptr %ret, align 8, !dbg !2686
  store i64 %19, ptr %retval, align 8, !dbg !2687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !2687

if.end22:                                         ; preds = %if.end15
  %20 = load i64, ptr %count.addr, align 8, !dbg !2688
  store i64 %20, ptr %retval, align 8, !dbg !2689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !2689

cleanup23:                                        ; preds = %if.end22, %if.then21, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #10, !dbg !2690
  call void @llvm.lifetime.end.p0(i64 4, ptr %psp) #10, !dbg !2690
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps_attr) #10, !dbg !2690
  call void @llvm.lifetime.end.p0(i64 8, ptr %psy) #10, !dbg !2690
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !2690
  %21 = load i64, ptr %retval, align 8, !dbg !2690
  ret i64 %21, !dbg !2690
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @power_supply_uevent(ptr noundef %dev, ptr noundef %env) #0 align 16 !dbg !2691 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %psy = alloca ptr, align 8
  %battery_props = alloca ptr, align 8
  %psy_drv_properties = alloca [10 x i64], align 16
  %ret = alloca i32, align 4
  %j = alloca i32, align 4
  %prop_buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2693, metadata !DIExpression()), !dbg !2705
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !2694, metadata !DIExpression()), !dbg !2706
  call void @llvm.lifetime.start.p0(i64 8, ptr %psy) #10, !dbg !2707
  call void @llvm.dbg.declare(metadata ptr %psy, metadata !2695, metadata !DIExpression()), !dbg !2708
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2709
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #12, !dbg !2710
  store ptr %call, ptr %psy, align 8, !dbg !2708
  call void @llvm.lifetime.start.p0(i64 8, ptr %battery_props) #10, !dbg !2711
  call void @llvm.dbg.declare(metadata ptr %battery_props, metadata !2698, metadata !DIExpression()), !dbg !2712
  store ptr @power_supply_battery_info_properties, ptr %battery_props, align 8, !dbg !2712
  call void @llvm.lifetime.start.p0(i64 80, ptr %psy_drv_properties) #10, !dbg !2713
  call void @llvm.dbg.declare(metadata ptr %psy_drv_properties, metadata !2699, metadata !DIExpression()), !dbg !2714
  call void @llvm.memset.p0.i64(ptr align 16 %psy_drv_properties, i8 0, i64 80, i1 false), !dbg !2714
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2701, metadata !DIExpression()), !dbg !2716
  store i32 0, ptr %ret, align 4, !dbg !2716
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2702, metadata !DIExpression()), !dbg !2717
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop_buf) #10, !dbg !2718
  call void @llvm.dbg.declare(metadata ptr %prop_buf, metadata !2703, metadata !DIExpression()), !dbg !2719
  %1 = load ptr, ptr %psy, align 8, !dbg !2720
  %tobool = icmp ne ptr %1, null, !dbg !2720
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2722

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %psy, align 8, !dbg !2723
  %desc = getelementptr inbounds %struct.power_supply, ptr %2, i32 0, i32 0, !dbg !2724
  %3 = load ptr, ptr %desc, align 8, !dbg !2724
  %tobool1 = icmp ne ptr %3, null, !dbg !2723
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2725

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %ret, align 4, !dbg !2726
  store i32 %4, ptr %retval, align 4, !dbg !2728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2728

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %env.addr, align 8, !dbg !2729
  %6 = load ptr, ptr %psy, align 8, !dbg !2730
  %desc2 = getelementptr inbounds %struct.power_supply, ptr %6, i32 0, i32 0, !dbg !2731
  %7 = load ptr, ptr %desc2, align 8, !dbg !2731
  %name = getelementptr inbounds %struct.power_supply_desc, ptr %7, i32 0, i32 0, !dbg !2732
  %8 = load ptr, ptr %name, align 8, !dbg !2732
  %call3 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %5, ptr noundef @.str.2, ptr noundef %8) #12, !dbg !2733
  store i32 %call3, ptr %ret, align 4, !dbg !2734
  %9 = load i32, ptr %ret, align 4, !dbg !2735
  %tobool4 = icmp ne i32 %9, 0, !dbg !2735
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2737

if.then5:                                         ; preds = %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !2738
  store i32 %10, ptr %retval, align 4, !dbg !2739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2739

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %psy, align 8, !dbg !2740
  %removing = getelementptr inbounds %struct.power_supply, ptr %11, i32 0, i32 13, !dbg !2742
  %12 = load i8, ptr %removing, align 2, !dbg !2742, !range !2743, !noundef !439
  %tobool7 = trunc i8 %12 to i1, !dbg !2742
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2744

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !2745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2745

if.end9:                                          ; preds = %if.end6
  %call10 = call i64 @get_zeroed_page(i32 noundef 3264) #12, !dbg !2746
  %13 = inttoptr i64 %call10 to ptr, !dbg !2747
  store ptr %13, ptr %prop_buf, align 8, !dbg !2748
  %14 = load ptr, ptr %prop_buf, align 8, !dbg !2749
  %tobool11 = icmp ne ptr %14, null, !dbg !2749
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2751

if.then12:                                        ; preds = %if.end9
  store i32 -12, ptr %retval, align 4, !dbg !2752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2752

if.end13:                                         ; preds = %if.end9
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2753
  %16 = load ptr, ptr %env.addr, align 8, !dbg !2754
  %17 = load ptr, ptr %prop_buf, align 8, !dbg !2755
  %call14 = call i32 @add_prop_uevent(ptr noundef %15, ptr noundef %16, i32 noundef 64, ptr noundef %17) #12, !dbg !2756
  store i32 %call14, ptr %ret, align 4, !dbg !2757
  %18 = load i32, ptr %ret, align 4, !dbg !2758
  %tobool15 = icmp ne i32 %18, 0, !dbg !2758
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2760

if.then16:                                        ; preds = %if.end13
  br label %out, !dbg !2761

if.end17:                                         ; preds = %if.end13
  store i32 0, ptr %j, align 4, !dbg !2762
  br label %for.cond, !dbg !2764

for.cond:                                         ; preds = %for.inc, %if.end17
  %19 = load i32, ptr %j, align 4, !dbg !2765
  %conv = sext i32 %19 to i64, !dbg !2765
  %20 = load ptr, ptr %psy, align 8, !dbg !2767
  %desc18 = getelementptr inbounds %struct.power_supply, ptr %20, i32 0, i32 0, !dbg !2768
  %21 = load ptr, ptr %desc18, align 8, !dbg !2768
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %21, i32 0, i32 5, !dbg !2769
  %22 = load i64, ptr %num_properties, align 8, !dbg !2769
  %cmp = icmp ult i64 %conv, %22, !dbg !2770
  br i1 %cmp, label %for.body, label %for.end, !dbg !2771

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %psy, align 8, !dbg !2772
  %desc20 = getelementptr inbounds %struct.power_supply, ptr %23, i32 0, i32 0, !dbg !2774
  %24 = load ptr, ptr %desc20, align 8, !dbg !2774
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %24, i32 0, i32 4, !dbg !2775
  %25 = load ptr, ptr %properties, align 8, !dbg !2775
  %26 = load i32, ptr %j, align 4, !dbg !2776
  %idxprom = sext i32 %26 to i64, !dbg !2772
  %arrayidx = getelementptr i32, ptr %25, i64 %idxprom, !dbg !2772
  %27 = load i32, ptr %arrayidx, align 4, !dbg !2772
  %conv21 = zext i32 %27 to i64, !dbg !2772
  %arraydecay = getelementptr inbounds [10 x i64], ptr %psy_drv_properties, i64 0, i64 0, !dbg !2777
  call void @set_bit(i64 noundef %conv21, ptr noundef %arraydecay) #12, !dbg !2778
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !2779
  %29 = load ptr, ptr %env.addr, align 8, !dbg !2780
  %30 = load ptr, ptr %psy, align 8, !dbg !2781
  %desc22 = getelementptr inbounds %struct.power_supply, ptr %30, i32 0, i32 0, !dbg !2782
  %31 = load ptr, ptr %desc22, align 8, !dbg !2782
  %properties23 = getelementptr inbounds %struct.power_supply_desc, ptr %31, i32 0, i32 4, !dbg !2783
  %32 = load ptr, ptr %properties23, align 8, !dbg !2783
  %33 = load i32, ptr %j, align 4, !dbg !2784
  %idxprom24 = sext i32 %33 to i64, !dbg !2781
  %arrayidx25 = getelementptr i32, ptr %32, i64 %idxprom24, !dbg !2781
  %34 = load i32, ptr %arrayidx25, align 4, !dbg !2781
  %35 = load ptr, ptr %prop_buf, align 8, !dbg !2785
  %call26 = call i32 @add_prop_uevent(ptr noundef %28, ptr noundef %29, i32 noundef %34, ptr noundef %35) #12, !dbg !2786
  store i32 %call26, ptr %ret, align 4, !dbg !2787
  %36 = load i32, ptr %ret, align 4, !dbg !2788
  %tobool27 = icmp ne i32 %36, 0, !dbg !2788
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !2790

if.then28:                                        ; preds = %for.body
  br label %out, !dbg !2791

if.end29:                                         ; preds = %for.body
  br label %for.inc, !dbg !2792

for.inc:                                          ; preds = %if.end29
  %37 = load i32, ptr %j, align 4, !dbg !2793
  %inc = add i32 %37, 1, !dbg !2793
  store i32 %inc, ptr %j, align 4, !dbg !2793
  br label %for.cond, !dbg !2794, !llvm.loop !2795

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !2797
  br label %for.cond30, !dbg !2799

for.cond30:                                       ; preds = %for.inc71, %for.end
  %38 = load i32, ptr %j, align 4, !dbg !2800
  %conv31 = sext i32 %38 to i64, !dbg !2800
  %39 = load i64, ptr @power_supply_battery_info_properties_size, align 8, !dbg !2802
  %cmp32 = icmp ult i64 %conv31, %39, !dbg !2803
  br i1 %cmp32, label %for.body34, label %for.end73, !dbg !2804

for.body34:                                       ; preds = %for.cond30
  %40 = load ptr, ptr %battery_props, align 8, !dbg !2805
  %41 = load i32, ptr %j, align 4, !dbg !2805
  %idxprom35 = sext i32 %41 to i64, !dbg !2805
  %arrayidx36 = getelementptr i32, ptr %40, i64 %idxprom35, !dbg !2805
  %42 = load i32, ptr %arrayidx36, align 4, !dbg !2805
  %43 = call i1 @llvm.is.constant.i32(i32 %42), !dbg !2805
  br i1 %43, label %land.lhs.true, label %cond.false, !dbg !2805

land.lhs.true:                                    ; preds = %for.body34
  %arraydecay37 = getelementptr inbounds [10 x i64], ptr %psy_drv_properties, i64 0, i64 0, !dbg !2805
  %44 = ptrtoint ptr %arraydecay37 to i64, !dbg !2805
  %cmp38 = icmp ne i64 %44, 0, !dbg !2805
  %conv39 = zext i1 %cmp38 to i32, !dbg !2805
  %45 = call i1 @llvm.is.constant.i32(i32 %conv39), !dbg !2805
  br i1 %45, label %land.lhs.true40, label %cond.false, !dbg !2805

land.lhs.true40:                                  ; preds = %land.lhs.true
  %arraydecay41 = getelementptr inbounds [10 x i64], ptr %psy_drv_properties, i64 0, i64 0, !dbg !2805
  %46 = ptrtoint ptr %arraydecay41 to i64, !dbg !2805
  %cmp42 = icmp ne i64 %46, 0, !dbg !2805
  br i1 %cmp42, label %land.lhs.true44, label %cond.false, !dbg !2805

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %arraydecay45 = getelementptr inbounds [10 x i64], ptr %psy_drv_properties, i64 0, i64 0, !dbg !2805
  %47 = load i64, ptr %arraydecay45, align 16, !dbg !2805
  %48 = call i1 @llvm.is.constant.i64(i64 %47), !dbg !2805
  br i1 %48, label %cond.true, label %cond.false, !dbg !2808

cond.true:                                        ; preds = %land.lhs.true44
  %49 = load ptr, ptr %battery_props, align 8, !dbg !2805
  %50 = load i32, ptr %j, align 4, !dbg !2805
  %idxprom46 = sext i32 %50 to i64, !dbg !2805
  %arrayidx47 = getelementptr i32, ptr %49, i64 %idxprom46, !dbg !2805
  %51 = load i32, ptr %arrayidx47, align 4, !dbg !2805
  %conv48 = zext i32 %51 to i64, !dbg !2805
  %arraydecay49 = getelementptr inbounds [10 x i64], ptr %psy_drv_properties, i64 0, i64 0, !dbg !2805
  %call50 = call zeroext i1 @const_test_bit(i64 noundef %conv48, ptr noundef %arraydecay49) #12, !dbg !2805
  br i1 %call50, label %if.then58, label %if.end59, !dbg !2805

cond.false:                                       ; preds = %land.lhs.true44, %land.lhs.true40, %land.lhs.true, %for.body34
  %52 = load ptr, ptr %battery_props, align 8, !dbg !2805
  %53 = load i32, ptr %j, align 4, !dbg !2805
  %idxprom52 = sext i32 %53 to i64, !dbg !2805
  %arrayidx53 = getelementptr i32, ptr %52, i64 %idxprom52, !dbg !2805
  %54 = load i32, ptr %arrayidx53, align 4, !dbg !2805
  %conv54 = zext i32 %54 to i64, !dbg !2805
  %arraydecay55 = getelementptr inbounds [10 x i64], ptr %psy_drv_properties, i64 0, i64 0, !dbg !2805
  %call56 = call zeroext i1 @_test_bit(i64 noundef %conv54, ptr noundef %arraydecay55) #12, !dbg !2805
  br i1 %call56, label %if.then58, label %if.end59, !dbg !2808

if.then58:                                        ; preds = %cond.false, %cond.true
  br label %for.inc71, !dbg !2809

if.end59:                                         ; preds = %cond.false, %cond.true
  %55 = load ptr, ptr %psy, align 8, !dbg !2810
  %battery_info = getelementptr inbounds %struct.power_supply, ptr %55, i32 0, i32 15, !dbg !2812
  %56 = load ptr, ptr %battery_info, align 8, !dbg !2812
  %57 = load ptr, ptr %battery_props, align 8, !dbg !2813
  %58 = load i32, ptr %j, align 4, !dbg !2814
  %idxprom60 = sext i32 %58 to i64, !dbg !2813
  %arrayidx61 = getelementptr i32, ptr %57, i64 %idxprom60, !dbg !2813
  %59 = load i32, ptr %arrayidx61, align 4, !dbg !2813
  %call62 = call zeroext i1 @power_supply_battery_info_has_prop(ptr noundef %56, i32 noundef %59) #12, !dbg !2815
  br i1 %call62, label %if.end64, label %if.then63, !dbg !2816

if.then63:                                        ; preds = %if.end59
  br label %for.inc71, !dbg !2817

if.end64:                                         ; preds = %if.end59
  %60 = load ptr, ptr %dev.addr, align 8, !dbg !2818
  %61 = load ptr, ptr %env.addr, align 8, !dbg !2819
  %62 = load ptr, ptr %battery_props, align 8, !dbg !2820
  %63 = load i32, ptr %j, align 4, !dbg !2821
  %idxprom65 = sext i32 %63 to i64, !dbg !2820
  %arrayidx66 = getelementptr i32, ptr %62, i64 %idxprom65, !dbg !2820
  %64 = load i32, ptr %arrayidx66, align 4, !dbg !2820
  %65 = load ptr, ptr %prop_buf, align 8, !dbg !2822
  %call67 = call i32 @add_prop_uevent(ptr noundef %60, ptr noundef %61, i32 noundef %64, ptr noundef %65) #12, !dbg !2823
  store i32 %call67, ptr %ret, align 4, !dbg !2824
  %66 = load i32, ptr %ret, align 4, !dbg !2825
  %tobool68 = icmp ne i32 %66, 0, !dbg !2825
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !2827

if.then69:                                        ; preds = %if.end64
  br label %out, !dbg !2828

if.end70:                                         ; preds = %if.end64
  br label %for.inc71, !dbg !2829

for.inc71:                                        ; preds = %if.end70, %if.then63, %if.then58
  %67 = load i32, ptr %j, align 4, !dbg !2830
  %inc72 = add i32 %67, 1, !dbg !2830
  store i32 %inc72, ptr %j, align 4, !dbg !2830
  br label %for.cond30, !dbg !2831, !llvm.loop !2832

for.end73:                                        ; preds = %for.cond30
  br label %out, !dbg !2833

out:                                              ; preds = %for.end73, %if.then69, %if.then28, %if.then16
  call void @llvm.dbg.label(metadata !2704), !dbg !2834
  %68 = load ptr, ptr %prop_buf, align 8, !dbg !2835
  %69 = ptrtoint ptr %68 to i64, !dbg !2835
  call void @free_pages(i64 noundef %69, i32 noundef 0) #12, !dbg !2835
  %70 = load i32, ptr %ret, align 4, !dbg !2836
  store i32 %70, ptr %retval, align 4, !dbg !2837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2837

cleanup:                                          ; preds = %out, %if.then12, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop_buf) #10, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 80, ptr %psy_drv_properties) #10, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 8, ptr %battery_props) #10, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 8, ptr %psy) #10, !dbg !2838
  %71 = load i32, ptr %retval, align 4, !dbg !2838
  ret i32 %71, !dbg !2838
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #5 align 16 !dbg !2839 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2845
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !2846
  %1 = load ptr, ptr %driver_data, align 8, !dbg !2846
  ret ptr %1, !dbg !2847
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2848 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2851 dso_local i64 @get_zeroed_page(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_prop_uevent(ptr noundef %dev, ptr noundef %env, i32 noundef %prop, ptr noundef %prop_buf) #0 align 16 !dbg !2855 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %prop.addr = alloca i32, align 4
  %prop_buf.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pwr_attr = alloca ptr, align 8
  %dev_attr = alloca ptr, align 8
  %line = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2859, metadata !DIExpression()), !dbg !2867
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !2860, metadata !DIExpression()), !dbg !2868
  store i32 %prop, ptr %prop.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prop.addr, metadata !2861, metadata !DIExpression()), !dbg !2869
  store ptr %prop_buf, ptr %prop_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prop_buf.addr, metadata !2862, metadata !DIExpression()), !dbg !2870
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2871
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2863, metadata !DIExpression()), !dbg !2872
  store i32 0, ptr %ret, align 4, !dbg !2872
  call void @llvm.lifetime.start.p0(i64 8, ptr %pwr_attr) #10, !dbg !2873
  call void @llvm.dbg.declare(metadata ptr %pwr_attr, metadata !2864, metadata !DIExpression()), !dbg !2874
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_attr) #10, !dbg !2875
  call void @llvm.dbg.declare(metadata ptr %dev_attr, metadata !2865, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #10, !dbg !2877
  call void @llvm.dbg.declare(metadata ptr %line, metadata !2866, metadata !DIExpression()), !dbg !2878
  %0 = load i32, ptr %prop.addr, align 4, !dbg !2879
  %idxprom = zext i32 %0 to i64, !dbg !2880
  %arrayidx = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i64 0, i64 %idxprom, !dbg !2880
  store ptr %arrayidx, ptr %pwr_attr, align 8, !dbg !2881
  %1 = load ptr, ptr %pwr_attr, align 8, !dbg !2882
  %dev_attr1 = getelementptr inbounds %struct.power_supply_attr, ptr %1, i32 0, i32 2, !dbg !2883
  store ptr %dev_attr1, ptr %dev_attr, align 8, !dbg !2884
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2885
  %3 = load ptr, ptr %dev_attr, align 8, !dbg !2886
  %4 = load ptr, ptr %prop_buf.addr, align 8, !dbg !2887
  %call = call i64 @power_supply_show_property(ptr noundef %2, ptr noundef %3, ptr noundef %4) #12, !dbg !2888
  %conv = trunc i64 %call to i32, !dbg !2888
  store i32 %conv, ptr %ret, align 4, !dbg !2889
  %5 = load i32, ptr %ret, align 4, !dbg !2890
  %cmp = icmp eq i32 %5, -19, !dbg !2892
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2893

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr %ret, align 4, !dbg !2894
  %cmp3 = icmp eq i32 %6, -61, !dbg !2895
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2896

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2897

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, ptr %ret, align 4, !dbg !2899
  %cmp5 = icmp slt i32 %7, 0, !dbg !2901
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !2902

if.then7:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !2903
  store i32 %8, ptr %retval, align 4, !dbg !2904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2904

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %prop_buf.addr, align 8, !dbg !2905
  %call9 = call ptr @strchr(ptr noundef %9, i32 noundef 10) #12, !dbg !2906
  store ptr %call9, ptr %line, align 8, !dbg !2907
  %10 = load ptr, ptr %line, align 8, !dbg !2908
  %tobool = icmp ne ptr %10, null, !dbg !2908
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !2910

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %line, align 8, !dbg !2911
  store i8 0, ptr %11, align 1, !dbg !2912
  br label %if.end11, !dbg !2913

if.end11:                                         ; preds = %if.then10, %if.end8
  %12 = load ptr, ptr %env.addr, align 8, !dbg !2914
  %13 = load ptr, ptr %pwr_attr, align 8, !dbg !2915
  %prop_name = getelementptr inbounds %struct.power_supply_attr, ptr %13, i32 0, i32 0, !dbg !2916
  %14 = load ptr, ptr %prop_name, align 8, !dbg !2916
  %15 = load ptr, ptr %prop_buf.addr, align 8, !dbg !2917
  %call12 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %12, ptr noundef @.str.145, ptr noundef %14, ptr noundef %15) #12, !dbg !2918
  store i32 %call12, ptr %retval, align 4, !dbg !2919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2919

cleanup:                                          ; preds = %if.end11, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #10, !dbg !2920
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_attr) #10, !dbg !2920
  call void @llvm.lifetime.end.p0(i64 8, ptr %pwr_attr) #10, !dbg !2920
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2920
  %16 = load i32, ptr %retval, align 4, !dbg !2920
  ret i32 %16, !dbg !2920
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2921 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2928, metadata !DIExpression()), !dbg !2930
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2929, metadata !DIExpression()), !dbg !2931
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2932
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2933
  %div = sdiv i64 %1, 64, !dbg !2933
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2934
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !2935
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2936
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2937
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !2938
  ret void, !dbg !2939
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2940 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2947, metadata !DIExpression()), !dbg !2952
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2948, metadata !DIExpression()), !dbg !2953
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2949, metadata !DIExpression()), !dbg !2955
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2956
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2957
  %div = udiv i64 %1, 64, !dbg !2957
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2958
  store ptr %add.ptr, ptr %p, align 8, !dbg !2955
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !2959
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2950, metadata !DIExpression()), !dbg !2960
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2961
  %rem = urem i64 %2, 64, !dbg !2961
  %shl = shl i64 1, %rem, !dbg !2961
  store i64 %shl, ptr %mask, align 8, !dbg !2960
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !2962
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2951, metadata !DIExpression()), !dbg !2963
  %3 = load ptr, ptr %p, align 8, !dbg !2964
  %4 = load i64, ptr %3, align 8, !dbg !2965
  store i64 %4, ptr %val, align 8, !dbg !2963
  %5 = load i64, ptr %val, align 8, !dbg !2966
  %6 = load i64, ptr %mask, align 8, !dbg !2967
  %and = and i64 %5, %6, !dbg !2968
  %tobool = icmp ne i64 %and, 0, !dbg !2969
  %lnot = xor i1 %tobool, true, !dbg !2969
  %lnot1 = xor i1 %lnot, true, !dbg !2970
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !2971
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !2971
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2971
  ret i1 %lnot1, !dbg !2972
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2973 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2976, metadata !DIExpression()), !dbg !2978
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2977, metadata !DIExpression()), !dbg !2979
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2980
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2981
  %div = udiv i64 %1, 64, !dbg !2981
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2982
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !2983
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2984
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2985
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !2986
  ret i1 %call, !dbg !2987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2988 dso_local zeroext i1 @power_supply_battery_info_has_prop(ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2991 dso_local void @free_pages(i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @power_supply_charge_behaviour_show(ptr noundef %dev, i32 noundef %available_behaviours, i32 noundef %current_behaviour, ptr noundef %buf) #0 align 16 !dbg !2994 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %available_behaviours.addr = alloca i32, align 4
  %current_behaviour.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %match = alloca i8, align 1
  %available = alloca i8, align 1
  %active = alloca i8, align 1
  %count = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2998, metadata !DIExpression()), !dbg !3007
  store i32 %available_behaviours, ptr %available_behaviours.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %available_behaviours.addr, metadata !2999, metadata !DIExpression()), !dbg !3008
  store i32 %current_behaviour, ptr %current_behaviour.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %current_behaviour.addr, metadata !3000, metadata !DIExpression()), !dbg !3009
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3001, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #10, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %match, metadata !3002, metadata !DIExpression()), !dbg !3012
  store i8 0, ptr %match, align 1, !dbg !3012
  call void @llvm.lifetime.start.p0(i64 1, ptr %available) #10, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %available, metadata !3003, metadata !DIExpression()), !dbg !3013
  call void @llvm.lifetime.start.p0(i64 1, ptr %active) #10, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %active, metadata !3004, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !3015
  call void @llvm.dbg.declare(metadata ptr %count, metadata !3005, metadata !DIExpression()), !dbg !3016
  store i64 0, ptr %count, align 8, !dbg !3016
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !3017
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3006, metadata !DIExpression()), !dbg !3018
  store i32 0, ptr %i, align 4, !dbg !3019
  br label %for.cond, !dbg !3021

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3022
  %conv = sext i32 %0 to i64, !dbg !3022
  %cmp = icmp ult i64 %conv, 3, !dbg !3024
  br i1 %cmp, label %for.body, label %for.end, !dbg !3025

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %available_behaviours.addr, align 4, !dbg !3026
  %conv2 = zext i32 %1 to i64, !dbg !3026
  %2 = load i32, ptr %i, align 4, !dbg !3028
  %sh_prom = zext i32 %2 to i64, !dbg !3028
  %shl = shl i64 1, %sh_prom, !dbg !3028
  %and = and i64 %conv2, %shl, !dbg !3029
  %tobool = icmp ne i64 %and, 0, !dbg !3026
  %frombool = zext i1 %tobool to i8, !dbg !3030
  store i8 %frombool, ptr %available, align 1, !dbg !3030
  %3 = load i32, ptr %i, align 4, !dbg !3031
  %4 = load i32, ptr %current_behaviour.addr, align 4, !dbg !3032
  %cmp3 = icmp eq i32 %3, %4, !dbg !3033
  %frombool5 = zext i1 %cmp3 to i8, !dbg !3034
  store i8 %frombool5, ptr %active, align 1, !dbg !3034
  %5 = load i8, ptr %available, align 1, !dbg !3035, !range !2743, !noundef !439
  %tobool6 = trunc i8 %5 to i1, !dbg !3035
  br i1 %tobool6, label %land.lhs.true, label %if.else, !dbg !3037

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8, ptr %active, align 1, !dbg !3038, !range !2743, !noundef !439
  %tobool8 = trunc i8 %6 to i1, !dbg !3038
  br i1 %tobool8, label %if.then, label %if.else, !dbg !3039

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !3040
  %8 = load i64, ptr %count, align 8, !dbg !3042
  %conv10 = trunc i64 %8 to i32, !dbg !3042
  %9 = load i32, ptr %i, align 4, !dbg !3043
  %idxprom = sext i32 %9 to i64, !dbg !3044
  %arrayidx = getelementptr [3 x ptr], ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i64 0, i64 %idxprom, !dbg !3044
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !3044
  %call = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %7, i32 noundef %conv10, ptr noundef @.str.3, ptr noundef %10) #12, !dbg !3045
  %conv11 = sext i32 %call to i64, !dbg !3045
  %11 = load i64, ptr %count, align 8, !dbg !3046
  %add = add i64 %11, %conv11, !dbg !3046
  store i64 %add, ptr %count, align 8, !dbg !3046
  store i8 1, ptr %match, align 1, !dbg !3047
  br label %if.end20, !dbg !3048

if.else:                                          ; preds = %land.lhs.true, %for.body
  %12 = load i8, ptr %available, align 1, !dbg !3049, !range !2743, !noundef !439
  %tobool12 = trunc i8 %12 to i1, !dbg !3049
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !3051

if.then13:                                        ; preds = %if.else
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !3052
  %14 = load i64, ptr %count, align 8, !dbg !3054
  %conv14 = trunc i64 %14 to i32, !dbg !3054
  %15 = load i32, ptr %i, align 4, !dbg !3055
  %idxprom15 = sext i32 %15 to i64, !dbg !3056
  %arrayidx16 = getelementptr [3 x ptr], ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i64 0, i64 %idxprom15, !dbg !3056
  %16 = load ptr, ptr %arrayidx16, align 8, !dbg !3056
  %call17 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %13, i32 noundef %conv14, ptr noundef @.str.4, ptr noundef %16) #12, !dbg !3057
  %conv18 = sext i32 %call17 to i64, !dbg !3057
  %17 = load i64, ptr %count, align 8, !dbg !3058
  %add19 = add i64 %17, %conv18, !dbg !3058
  store i64 %add19, ptr %count, align 8, !dbg !3058
  br label %if.end, !dbg !3059

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !3060

for.inc:                                          ; preds = %if.end20
  %18 = load i32, ptr %i, align 4, !dbg !3061
  %inc = add i32 %18, 1, !dbg !3061
  store i32 %inc, ptr %i, align 4, !dbg !3061
  br label %for.cond, !dbg !3062, !llvm.loop !3063

for.end:                                          ; preds = %for.cond
  %19 = load i8, ptr %match, align 1, !dbg !3065, !range !2743, !noundef !439
  %tobool21 = trunc i8 %19 to i1, !dbg !3065
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !3067

if.then22:                                        ; preds = %for.end
  br label %do.body, !dbg !3068

do.body:                                          ; preds = %if.then22
  br label %do.cond, !dbg !3071

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3071

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !3068
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef @.str.5) #11, !dbg !3068
  store i64 -22, ptr %retval, align 8, !dbg !3073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3073

if.end23:                                         ; preds = %for.end
  %21 = load i64, ptr %count, align 8, !dbg !3074
  %tobool24 = icmp ne i64 %21, 0, !dbg !3074
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !3076

if.then25:                                        ; preds = %if.end23
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !3077
  %23 = load i64, ptr %count, align 8, !dbg !3078
  %sub = sub i64 %23, 1, !dbg !3079
  %arrayidx26 = getelementptr i8, ptr %22, i64 %sub, !dbg !3077
  store i8 10, ptr %arrayidx26, align 1, !dbg !3080
  br label %if.end27, !dbg !3077

if.end27:                                         ; preds = %if.then25, %if.end23
  %24 = load i64, ptr %count, align 8, !dbg !3081
  store i64 %24, ptr %retval, align 8, !dbg !3082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3082

cleanup:                                          ; preds = %if.end27, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !3083
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !3083
  call void @llvm.lifetime.end.p0(i64 1, ptr %active) #10, !dbg !3083
  call void @llvm.lifetime.end.p0(i64 1, ptr %available) #10, !dbg !3083
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #10, !dbg !3083
  %25 = load i64, ptr %retval, align 8, !dbg !3083
  ret i64 %25, !dbg !3083
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3084 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3087 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @power_supply_charge_behaviour_parse(i32 noundef %available_behaviours, ptr noundef %buf) #0 align 16 !dbg !3091 {
entry:
  %retval = alloca i32, align 4
  %available_behaviours.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %available_behaviours, ptr %available_behaviours.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %available_behaviours.addr, metadata !3095, metadata !DIExpression()), !dbg !3098
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3096, metadata !DIExpression()), !dbg !3099
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !3100
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3097, metadata !DIExpression()), !dbg !3101
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3102
  %call = call i32 @__sysfs_match_string(ptr noundef @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i64 noundef 3, ptr noundef %0) #12, !dbg !3102
  store i32 %call, ptr %i, align 4, !dbg !3101
  %1 = load i32, ptr %i, align 4, !dbg !3103
  %cmp = icmp slt i32 %1, 0, !dbg !3105
  br i1 %cmp, label %if.then, label %if.end, !dbg !3106

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %i, align 4, !dbg !3107
  store i32 %2, ptr %retval, align 4, !dbg !3108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3108

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %available_behaviours.addr, align 4, !dbg !3109
  %conv = zext i32 %3 to i64, !dbg !3109
  %4 = load i32, ptr %i, align 4, !dbg !3111
  %sh_prom = zext i32 %4 to i64, !dbg !3111
  %shl = shl i64 1, %sh_prom, !dbg !3111
  %and = and i64 %conv, %shl, !dbg !3112
  %tobool = icmp ne i64 %and, 0, !dbg !3112
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3113

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !3114
  store i32 %5, ptr %retval, align 4, !dbg !3115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3115

if.end2:                                          ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3116

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !3117
  %6 = load i32, ptr %retval, align 4, !dbg !3117
  ret i32 %6, !dbg !3117
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3118 dso_local i32 @__sysfs_match_string(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @power_supply_attr_is_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %attrno) #0 align 16 !dbg !3122 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %attrno.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %psy = alloca ptr, align 8
  %mode = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %property = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3124, metadata !DIExpression()), !dbg !3137
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3125, metadata !DIExpression()), !dbg !3138
  store i32 %attrno, ptr %attrno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrno.addr, metadata !3126, metadata !DIExpression()), !dbg !3139
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !3140
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3127, metadata !DIExpression()), !dbg !3141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3128, metadata !DIExpression()), !dbg !3142
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3142
  store ptr %0, ptr %__mptr, align 8, !dbg !3142
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3142
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3142
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !3143
  %2 = load ptr, ptr %tmp, align 8, !dbg !3142
  store ptr %2, ptr %dev, align 8, !dbg !3141
  call void @llvm.lifetime.start.p0(i64 8, ptr %psy) #10, !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %psy, metadata !3130, metadata !DIExpression()), !dbg !3145
  %3 = load ptr, ptr %dev, align 8, !dbg !3146
  %call = call ptr @dev_get_drvdata(ptr noundef %3) #12, !dbg !3147
  store ptr %call, ptr %psy, align 8, !dbg !3145
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #10, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !3131, metadata !DIExpression()), !dbg !3149
  store i16 292, ptr %mode, align 2, !dbg !3149
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !3150
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3132, metadata !DIExpression()), !dbg !3151
  %4 = load i32, ptr %attrno.addr, align 4, !dbg !3152
  %idxprom = sext i32 %4 to i64, !dbg !3154
  %arrayidx = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i64 0, i64 %idxprom, !dbg !3154
  %prop_name = getelementptr inbounds %struct.power_supply_attr, ptr %arrayidx, i32 0, i32 0, !dbg !3155
  %5 = load ptr, ptr %prop_name, align 8, !dbg !3155
  %tobool = icmp ne ptr %5, null, !dbg !3154
  br i1 %tobool, label %if.end, label %if.then, !dbg !3156

if.then:                                          ; preds = %entry
  store i16 0, ptr %retval, align 2, !dbg !3157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !3157

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %attrno.addr, align 4, !dbg !3158
  %cmp = icmp eq i32 %6, 64, !dbg !3160
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3161

if.then1:                                         ; preds = %if.end
  %7 = load i16, ptr %mode, align 2, !dbg !3162
  store i16 %7, ptr %retval, align 2, !dbg !3163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !3163

if.end2:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !3164
  br label %for.cond, !dbg !3165

for.cond:                                         ; preds = %for.inc, %if.end2
  %8 = load i32, ptr %i, align 4, !dbg !3166
  %conv = sext i32 %8 to i64, !dbg !3166
  %9 = load ptr, ptr %psy, align 8, !dbg !3167
  %desc = getelementptr inbounds %struct.power_supply, ptr %9, i32 0, i32 0, !dbg !3168
  %10 = load ptr, ptr %desc, align 8, !dbg !3168
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %10, i32 0, i32 5, !dbg !3169
  %11 = load i64, ptr %num_properties, align 8, !dbg !3169
  %cmp3 = icmp ult i64 %conv, %11, !dbg !3170
  br i1 %cmp3, label %for.body, label %for.end, !dbg !3171

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %property) #10, !dbg !3172
  call void @llvm.dbg.declare(metadata ptr %property, metadata !3133, metadata !DIExpression()), !dbg !3173
  %12 = load ptr, ptr %psy, align 8, !dbg !3174
  %desc5 = getelementptr inbounds %struct.power_supply, ptr %12, i32 0, i32 0, !dbg !3175
  %13 = load ptr, ptr %desc5, align 8, !dbg !3175
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %13, i32 0, i32 4, !dbg !3176
  %14 = load ptr, ptr %properties, align 8, !dbg !3176
  %15 = load i32, ptr %i, align 4, !dbg !3177
  %idxprom6 = sext i32 %15 to i64, !dbg !3174
  %arrayidx7 = getelementptr i32, ptr %14, i64 %idxprom6, !dbg !3174
  %16 = load i32, ptr %arrayidx7, align 4, !dbg !3174
  store i32 %16, ptr %property, align 4, !dbg !3173
  %17 = load i32, ptr %property, align 4, !dbg !3178
  %18 = load i32, ptr %attrno.addr, align 4, !dbg !3180
  %cmp8 = icmp eq i32 %17, %18, !dbg !3181
  br i1 %cmp8, label %if.then10, label %if.end22, !dbg !3182

if.then10:                                        ; preds = %for.body
  %19 = load ptr, ptr %psy, align 8, !dbg !3183
  %desc11 = getelementptr inbounds %struct.power_supply, ptr %19, i32 0, i32 0, !dbg !3186
  %20 = load ptr, ptr %desc11, align 8, !dbg !3186
  %property_is_writeable = getelementptr inbounds %struct.power_supply_desc, ptr %20, i32 0, i32 8, !dbg !3187
  %21 = load ptr, ptr %property_is_writeable, align 8, !dbg !3187
  %tobool12 = icmp ne ptr %21, null, !dbg !3183
  br i1 %tobool12, label %land.lhs.true, label %if.end21, !dbg !3188

land.lhs.true:                                    ; preds = %if.then10
  %22 = load ptr, ptr %psy, align 8, !dbg !3189
  %desc13 = getelementptr inbounds %struct.power_supply, ptr %22, i32 0, i32 0, !dbg !3190
  %23 = load ptr, ptr %desc13, align 8, !dbg !3190
  %property_is_writeable14 = getelementptr inbounds %struct.power_supply_desc, ptr %23, i32 0, i32 8, !dbg !3191
  %24 = load ptr, ptr %property_is_writeable14, align 8, !dbg !3191
  %25 = load ptr, ptr %psy, align 8, !dbg !3192
  %26 = load i32, ptr %property, align 4, !dbg !3193
  %call15 = call i32 %24(ptr noundef %25, i32 noundef %26) #12, !dbg !3189
  %cmp16 = icmp sgt i32 %call15, 0, !dbg !3194
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !3195

if.then18:                                        ; preds = %land.lhs.true
  %27 = load i16, ptr %mode, align 2, !dbg !3196
  %conv19 = zext i16 %27 to i32, !dbg !3196
  %or = or i32 %conv19, 128, !dbg !3196
  %conv20 = trunc i32 %or to i16, !dbg !3196
  store i16 %conv20, ptr %mode, align 2, !dbg !3196
  br label %if.end21, !dbg !3197

if.end21:                                         ; preds = %if.then18, %land.lhs.true, %if.then10
  %28 = load i16, ptr %mode, align 2, !dbg !3198
  store i16 %28, ptr %retval, align 2, !dbg !3199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3199

if.end22:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3200
  br label %cleanup, !dbg !3200

cleanup:                                          ; preds = %if.end22, %if.end21
  call void @llvm.lifetime.end.p0(i64 4, ptr %property) #10, !dbg !3200
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3201

for.inc:                                          ; preds = %cleanup.cont
  %29 = load i32, ptr %i, align 4, !dbg !3202
  %inc = add i32 %29, 1, !dbg !3202
  store i32 %inc, ptr %i, align 4, !dbg !3202
  br label %for.cond, !dbg !3203, !llvm.loop !3204

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %psy, align 8, !dbg !3206
  %battery_info = getelementptr inbounds %struct.power_supply, ptr %30, i32 0, i32 15, !dbg !3208
  %31 = load ptr, ptr %battery_info, align 8, !dbg !3208
  %32 = load i32, ptr %attrno.addr, align 4, !dbg !3209
  %call23 = call zeroext i1 @power_supply_battery_info_has_prop(ptr noundef %31, i32 noundef %32) #12, !dbg !3210
  br i1 %call23, label %if.then24, label %if.end25, !dbg !3211

if.then24:                                        ; preds = %for.end
  %33 = load i16, ptr %mode, align 2, !dbg !3212
  store i16 %33, ptr %retval, align 2, !dbg !3213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !3213

if.end25:                                         ; preds = %for.end
  store i16 0, ptr %retval, align 2, !dbg !3214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !3214

cleanup26:                                        ; preds = %if.end25, %if.then24, %cleanup, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #10, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 8, ptr %psy) #10, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !3215
  %34 = load i16, ptr %retval, align 2, !dbg !3215
  ret i16 %34, !dbg !3215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #5 align 16 !dbg !3216 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  %0 = load i8, ptr %c.addr, align 1, !dbg !3223
  %conv = zext i8 %0 to i32, !dbg !3223
  %idxprom = sext i32 %conv to i64, !dbg !3223
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !3223
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3223
  %conv1 = zext i8 %1 to i32, !dbg !3223
  %and = and i32 %conv1, 1, !dbg !3223
  %cmp = icmp ne i32 %and, 0, !dbg !3223
  br i1 %cmp, label %if.then, label %if.end, !dbg !3225

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !3226
  %conv3 = zext i8 %2 to i32, !dbg !3226
  %sub = sub i32 %conv3, -32, !dbg !3226
  %conv4 = trunc i32 %sub to i8, !dbg !3226
  store i8 %conv4, ptr %c.addr, align 1, !dbg !3226
  br label %if.end, !dbg !3227

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !3228
  ret i8 %3, !dbg !3229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_ps_attr(ptr noundef %attr) #0 align 16 !dbg !3230 {
entry:
  %attr.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !3238
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3235, metadata !DIExpression()), !dbg !3238
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !3238
  store ptr %0, ptr %__mptr, align 8, !dbg !3238
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3238
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !3238
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3238
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !3239
  %2 = load ptr, ptr %tmp, align 8, !dbg !3238
  ret ptr %2, !dbg !3240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_attr_psp(ptr noundef %attr) #0 align 16 !dbg !3241 {
entry:
  %attr.addr = alloca ptr, align 8
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3245, metadata !DIExpression()), !dbg !3246
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !3247
  %call = call ptr @to_ps_attr(ptr noundef %0) #12, !dbg !3248
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64, !dbg !3249
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @power_supply_attrs to i64), !dbg !3249
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 88, !dbg !3249
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !3248
  ret i32 %conv, !dbg !3250
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3251 dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3252 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3256 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3257 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_supply_show_usb_type(ptr noundef %dev, ptr noundef %desc, ptr noundef %value, ptr noundef %buf) #0 align 16 !dbg !3258 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %usb_type = alloca i32, align 4
  %count = alloca i64, align 8
  %match = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3262, metadata !DIExpression()), !dbg !3270
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3263, metadata !DIExpression()), !dbg !3271
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3264, metadata !DIExpression()), !dbg !3272
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3265, metadata !DIExpression()), !dbg !3273
  call void @llvm.lifetime.start.p0(i64 4, ptr %usb_type) #10, !dbg !3274
  call void @llvm.dbg.declare(metadata ptr %usb_type, metadata !3266, metadata !DIExpression()), !dbg !3275
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !3276
  call void @llvm.dbg.declare(metadata ptr %count, metadata !3267, metadata !DIExpression()), !dbg !3277
  store i64 0, ptr %count, align 8, !dbg !3277
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #10, !dbg !3278
  call void @llvm.dbg.declare(metadata ptr %match, metadata !3268, metadata !DIExpression()), !dbg !3279
  store i8 0, ptr %match, align 1, !dbg !3279
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !3280
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3269, metadata !DIExpression()), !dbg !3281
  store i32 0, ptr %i, align 4, !dbg !3282
  br label %for.cond, !dbg !3284

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3285
  %conv = sext i32 %0 to i64, !dbg !3285
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !3287
  %num_usb_types = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 3, !dbg !3288
  %2 = load i64, ptr %num_usb_types, align 8, !dbg !3288
  %cmp = icmp ult i64 %conv, %2, !dbg !3289
  br i1 %cmp, label %for.body, label %for.end, !dbg !3290

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !3291
  %usb_types = getelementptr inbounds %struct.power_supply_desc, ptr %3, i32 0, i32 2, !dbg !3293
  %4 = load ptr, ptr %usb_types, align 8, !dbg !3293
  %5 = load i32, ptr %i, align 4, !dbg !3294
  %idxprom = sext i32 %5 to i64, !dbg !3291
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !3291
  %6 = load i32, ptr %arrayidx, align 4, !dbg !3291
  store i32 %6, ptr %usb_type, align 4, !dbg !3295
  %7 = load ptr, ptr %value.addr, align 8, !dbg !3296
  %8 = load i32, ptr %7, align 8, !dbg !3298
  %9 = load i32, ptr %usb_type, align 4, !dbg !3299
  %cmp2 = icmp eq i32 %8, %9, !dbg !3300
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3301

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !3302
  %11 = load i64, ptr %count, align 8, !dbg !3304
  %conv4 = trunc i64 %11 to i32, !dbg !3304
  %12 = load i32, ptr %usb_type, align 4, !dbg !3305
  %idxprom5 = zext i32 %12 to i64, !dbg !3306
  %arrayidx6 = getelementptr [10 x ptr], ptr @POWER_SUPPLY_USB_TYPE_TEXT, i64 0, i64 %idxprom5, !dbg !3306
  %13 = load ptr, ptr %arrayidx6, align 8, !dbg !3306
  %call = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %10, i32 noundef %conv4, ptr noundef @.str.3, ptr noundef %13) #12, !dbg !3307
  %conv7 = sext i32 %call to i64, !dbg !3307
  %14 = load i64, ptr %count, align 8, !dbg !3308
  %add = add i64 %14, %conv7, !dbg !3308
  store i64 %add, ptr %count, align 8, !dbg !3308
  store i8 1, ptr %match, align 1, !dbg !3309
  br label %if.end, !dbg !3310

if.else:                                          ; preds = %for.body
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !3311
  %16 = load i64, ptr %count, align 8, !dbg !3313
  %conv8 = trunc i64 %16 to i32, !dbg !3313
  %17 = load i32, ptr %usb_type, align 4, !dbg !3314
  %idxprom9 = zext i32 %17 to i64, !dbg !3315
  %arrayidx10 = getelementptr [10 x ptr], ptr @POWER_SUPPLY_USB_TYPE_TEXT, i64 0, i64 %idxprom9, !dbg !3315
  %18 = load ptr, ptr %arrayidx10, align 8, !dbg !3315
  %call11 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %15, i32 noundef %conv8, ptr noundef @.str.4, ptr noundef %18) #12, !dbg !3316
  %conv12 = sext i32 %call11 to i64, !dbg !3316
  %19 = load i64, ptr %count, align 8, !dbg !3317
  %add13 = add i64 %19, %conv12, !dbg !3317
  store i64 %add13, ptr %count, align 8, !dbg !3317
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !3318

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !dbg !3319
  %inc = add i32 %20, 1, !dbg !3319
  store i32 %inc, ptr %i, align 4, !dbg !3319
  br label %for.cond, !dbg !3320, !llvm.loop !3321

for.end:                                          ; preds = %for.cond
  %21 = load i8, ptr %match, align 1, !dbg !3323, !range !2743, !noundef !439
  %tobool = trunc i8 %21 to i1, !dbg !3323
  br i1 %tobool, label %if.end15, label %if.then14, !dbg !3325

if.then14:                                        ; preds = %for.end
  br label %do.body, !dbg !3326

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !3329

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3329

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !3326
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef @.str.136) #11, !dbg !3326
  store i64 -22, ptr %retval, align 8, !dbg !3331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3331

if.end15:                                         ; preds = %for.end
  %23 = load i64, ptr %count, align 8, !dbg !3332
  %tobool16 = icmp ne i64 %23, 0, !dbg !3332
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !3334

if.then17:                                        ; preds = %if.end15
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !3335
  %25 = load i64, ptr %count, align 8, !dbg !3336
  %sub = sub i64 %25, 1, !dbg !3337
  %arrayidx18 = getelementptr i8, ptr %24, i64 %sub, !dbg !3335
  store i8 10, ptr %arrayidx18, align 1, !dbg !3338
  br label %if.end19, !dbg !3335

if.end19:                                         ; preds = %if.then17, %if.end15
  %26 = load i64, ptr %count, align 8, !dbg !3339
  store i64 %26, ptr %retval, align 8, !dbg !3340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3340

cleanup:                                          ; preds = %if.end19, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !3341
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #10, !dbg !3341
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !3341
  call void @llvm.lifetime.end.p0(i64 4, ptr %usb_type) #10, !dbg !3341
  %27 = load i64, ptr %retval, align 8, !dbg !3341
  ret i64 %27, !dbg !3341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtol(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !3342 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3348, metadata !DIExpression()), !dbg !3351
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !3349, metadata !DIExpression()), !dbg !3352
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3350, metadata !DIExpression()), !dbg !3353
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3354
  %1 = load i32, ptr %base.addr, align 4, !dbg !3356
  %2 = load ptr, ptr %res.addr, align 8, !dbg !3357
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12, !dbg !3358
  ret i32 %call, !dbg !3359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3360 dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3361 dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3364 dso_local ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !3367 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3375, metadata !DIExpression()), !dbg !3377
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3376, metadata !DIExpression()), !dbg !3378
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3379
  %1 = load i64, ptr %size.addr, align 8, !dbg !3380
  %conv = trunc i64 %1 to i32, !dbg !3380
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !3381
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3382
  %3 = load i64, ptr %size.addr, align 8, !dbg !3382
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3384 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3387, metadata !DIExpression()), !dbg !3389
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3388, metadata !DIExpression()), !dbg !3390
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3391
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3393
  br i1 %1, label %if.then, label %if.else, !dbg !3394

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3395
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3395
  %shr = ashr i64 %3, 3, !dbg !3395
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3395
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3397
  %and = and i64 %4, 7, !dbg !3397
  %sh_prom = trunc i64 %and to i32, !dbg !3397
  %shl = shl i32 1, %sh_prom, !dbg !3397
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !3398, !srcloc !3399
  br label %if.end, !dbg !3400

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3401
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3403
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !3404, !srcloc !3405
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3406
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3407 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3412, metadata !DIExpression()), !dbg !3414
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3413, metadata !DIExpression()), !dbg !3415
  ret i1 true, !dbg !3416
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !3417 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3422, metadata !DIExpression()), !dbg !3425
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3423, metadata !DIExpression()), !dbg !3426
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3424, metadata !DIExpression()), !dbg !3427
  ret void, !dbg !3428
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !3429 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3431, metadata !DIExpression()), !dbg !3433
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3432, metadata !DIExpression()), !dbg !3434
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3435
  %1 = load i64, ptr %size.addr, align 8, !dbg !3436
  %conv = trunc i64 %1 to i32, !dbg !3436
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !3437
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3438
  %3 = load i64, ptr %size.addr, align 8, !dbg !3438
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !3438
  ret void, !dbg !3439
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3440 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3442, metadata !DIExpression()), !dbg !3444
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3443, metadata !DIExpression()), !dbg !3445
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3446
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3447
  br i1 %1, label %cond.true, label %cond.false, !dbg !3447

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3448
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3449
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !3450
  %conv = zext i1 %call to i32, !dbg !3450
  br label %cond.end, !dbg !3447

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3451
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3452
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !3453
  %conv2 = zext i1 %call1 to i32, !dbg !3453
  br label %cond.end, !dbg !3447

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3447
  %tobool = icmp ne i32 %cond, 0, !dbg !3447
  ret i1 %tobool, !dbg !3454
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3455 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3457, metadata !DIExpression()), !dbg !3459
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3458, metadata !DIExpression()), !dbg !3460
  ret i1 true, !dbg !3461
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3462 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3466, metadata !DIExpression()), !dbg !3468
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3467, metadata !DIExpression()), !dbg !3469
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3470
  %and = and i64 %0, 63, !dbg !3471
  %shl = shl i64 1, %and, !dbg !3472
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3473
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3474
  %shr = ashr i64 %2, 6, !dbg !3475
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3473
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3473
  %and1 = and i64 %shl, %3, !dbg !3476
  %cmp = icmp ne i64 %and1, 0, !dbg !3477
  ret i1 %cmp, !dbg !3478
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3479 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3481, metadata !DIExpression()), !dbg !3484
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3482, metadata !DIExpression()), !dbg !3485
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !3486
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3483, metadata !DIExpression()), !dbg !3487
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3488
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3489
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !3490, !srcloc !3491
  %3 = icmp ult i8 %2, 2, !dbg !3490
  call void @llvm.assume(i1 %3), !dbg !3490
  store i8 %2, ptr %oldbit, align 1, !dbg !3490
  %4 = load i8, ptr %oldbit, align 1, !dbg !3492, !range !2743, !noundef !439
  %tobool = trunc i8 %4 to i1, !dbg !3492
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !3493
  ret i1 %tobool, !dbg !3494
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401}
!llvm.ident = !{!2402}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "power_supply_attr_groups", scope: !2, file: !3, line: 396, type: !2393, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/power/supply/.power_supply_sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/power/supply/power_supply\22 -D KBUILD_BASENAME=\22power_supply_sysfs\22 -D KBUILD_MODNAME=\22power_supply\22 -D __KBUILD_MODNAME=kmod_power_supply -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/power/supply/power_supply_sysfs.ll drivers/power/supply/power_supply_sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, globals: !1710, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/power/supply/power_supply_sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da91910417f75251634a58b0057863c7")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !94, !106, !184, !191, !196}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_type", file: !79, line: 179, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/power_supply.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f75e7271bb81936c98711d72c809341")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!81 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UNKNOWN", value: 0)
!82 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_BATTERY", value: 1)
!83 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UPS", value: 2)
!84 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_MAINS", value: 3)
!85 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB", value: 4)
!86 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_DCP", value: 5)
!87 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_CDP", value: 6)
!88 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_ACA", value: 7)
!89 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_TYPE_C", value: 8)
!90 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD", value: 9)
!91 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD_DRP", value: 10)
!92 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_APPLE_BRICK_ID", value: 11)
!93 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_WIRELESS", value: 12)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_usb_type", file: !79, line: 195, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!96 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_UNKNOWN", value: 0)
!97 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_SDP", value: 1)
!98 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_DCP", value: 2)
!99 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_CDP", value: 3)
!100 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_ACA", value: 4)
!101 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_C", value: 5)
!102 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD", value: 6)
!103 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_DRP", value: 7)
!104 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_PPS", value: 8)
!105 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID", value: 9)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_property", file: !79, line: 98, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!108 = !DIEnumerator(name: "POWER_SUPPLY_PROP_STATUS", value: 0)
!109 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TYPE", value: 1)
!110 = !DIEnumerator(name: "POWER_SUPPLY_PROP_HEALTH", value: 2)
!111 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRESENT", value: 3)
!112 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ONLINE", value: 4)
!113 = !DIEnumerator(name: "POWER_SUPPLY_PROP_AUTHENTIC", value: 5)
!114 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TECHNOLOGY", value: 6)
!115 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CYCLE_COUNT", value: 7)
!116 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX", value: 8)
!117 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN", value: 9)
!118 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN", value: 10)
!119 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN", value: 11)
!120 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_NOW", value: 12)
!121 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_AVG", value: 13)
!122 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_OCV", value: 14)
!123 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_BOOT", value: 15)
!124 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_MAX", value: 16)
!125 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_NOW", value: 17)
!126 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_AVG", value: 18)
!127 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_BOOT", value: 19)
!128 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_NOW", value: 20)
!129 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_AVG", value: 21)
!130 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN", value: 22)
!131 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN", value: 23)
!132 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL", value: 24)
!133 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY", value: 25)
!134 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_NOW", value: 26)
!135 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_AVG", value: 27)
!136 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_COUNTER", value: 28)
!137 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT", value: 29)
!138 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX", value: 30)
!139 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE", value: 31)
!140 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX", value: 32)
!141 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT", value: 33)
!142 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX", value: 34)
!143 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD", value: 35)
!144 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD", value: 36)
!145 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_BEHAVIOUR", value: 37)
!146 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT", value: 38)
!147 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT", value: 39)
!148 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_POWER_LIMIT", value: 40)
!149 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN", value: 41)
!150 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN", value: 42)
!151 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL", value: 43)
!152 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY", value: 44)
!153 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_NOW", value: 45)
!154 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_AVG", value: 46)
!155 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY", value: 47)
!156 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN", value: 48)
!157 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX", value: 49)
!158 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ERROR_MARGIN", value: 50)
!159 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_LEVEL", value: 51)
!160 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP", value: 52)
!161 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MAX", value: 53)
!162 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MIN", value: 54)
!163 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MIN", value: 55)
!164 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MAX", value: 56)
!165 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT", value: 57)
!166 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN", value: 58)
!167 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX", value: 59)
!168 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW", value: 60)
!169 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG", value: 61)
!170 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_NOW", value: 62)
!171 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_AVG", value: 63)
!172 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TYPE", value: 64)
!173 = !DIEnumerator(name: "POWER_SUPPLY_PROP_USB_TYPE", value: 65)
!174 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SCOPE", value: 66)
!175 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRECHARGE_CURRENT", value: 67)
!176 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT", value: 68)
!177 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CALIBRATE", value: 69)
!178 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_YEAR", value: 70)
!179 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_MONTH", value: 71)
!180 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_DAY", value: 72)
!181 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MODEL_NAME", value: 73)
!182 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURER", value: 74)
!183 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SERIAL_NUMBER", value: 75)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !185, line: 33, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!186 = !{!187, !188, !189, !190}
!187 = !DIEnumerator(name: "LED_OFF", value: 0)
!188 = !DIEnumerator(name: "LED_ON", value: 1)
!189 = !DIEnumerator(name: "LED_HALF", value: 127)
!190 = !DIEnumerator(name: "LED_FULL", value: 255)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_charge_behaviour", file: !79, line: 208, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "POWER_SUPPLY_CHARGE_BEHAVIOUR_AUTO", value: 0)
!194 = !DIEnumerator(name: "POWER_SUPPLY_CHARGE_BEHAVIOUR_INHIBIT_CHARGE", value: 1)
!195 = !DIEnumerator(name: "POWER_SUPPLY_CHARGE_BEHAVIOUR_FORCE_DISCHARGE", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 10, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!198 = !{!199, !200}
!199 = !DIEnumerator(name: "false", value: 0)
!200 = !DIEnumerator(name: "true", value: 1)
!201 = !{!46, !202, !204, !206, !208, !209, !207, !211, !267, !1680, !1705, !1706, !1708, !1317}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !205, line: 154, baseType: !7)
!205 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !205, line: 42, baseType: !207)
!207 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !213)
!213 = !{!214, !878, !879, !882, !883, !936, !1383, !1384, !1385, !1386, !1387, !1394, !1564, !1577, !1587, !1591, !1593, !1594, !1595, !1599, !1606, !1607, !1610, !1613, !1617, !1620, !1621, !1624, !1625, !1626, !1627, !1657, !1658, !1659, !1662, !1665, !1674, !1675, !1676, !1677, !1678, !1679}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !26, line: 706, baseType: !215, size: 512)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !216, line: 64, size: 512, elements: !217)
!216 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!217 = !{!218, !221, !227, !229, !317, !749, !863, !873, !874, !875, !876, !877}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !216, line: 65, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !215, file: !216, line: 66, baseType: !222, size: 128, offset: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !205, line: 190, size: 128, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !205, line: 191, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !205, line: 191, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !216, line: 67, baseType: !228, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !215, file: !216, line: 68, baseType: !230, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !216, line: 168, size: 768, elements: !232)
!232 = !{!233, !234, !277, !278}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !231, file: !216, line: 169, baseType: !222, size: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !231, file: !216, line: 170, baseType: !235, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !236, line: 29, baseType: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !236, line: 17, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !236, line: 18, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 18, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !240, file: !236, line: 19, baseType: !243, size: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !244, line: 14, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !243, file: !244, line: 15, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !248, line: 44, baseType: !249)
!248 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !248, line: 14, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !248, line: 15, baseType: !252, size: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !248, line: 15, size: 32, elements: !253)
!253 = !{!254, !259, !269}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !252, file: !248, line: 16, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !205, line: 174, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 172, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !256, file: !205, line: 173, baseType: !46, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !248, line: 24, baseType: !260, size: 16)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !248, line: 24, size: 16, elements: !261)
!261 = !{!262, !268}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !260, file: !248, line: 25, baseType: !263, size: 8)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !264, line: 17, baseType: !265)
!264 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !266, line: 21, baseType: !267)
!266 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!267 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !260, file: !248, line: 26, baseType: !263, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !248, line: 28, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !248, line: 28, size: 32, elements: !271)
!271 = !{!272, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !270, file: !248, line: 29, baseType: !273, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !264, line: 19, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !266, line: 24, baseType: !275)
!275 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !270, file: !248, line: 30, baseType: !273, size: 16, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !231, file: !216, line: 171, baseType: !215, size: 512, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !231, file: !216, line: 172, baseType: !279, size: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !216, line: 133, size: 192, elements: !282)
!282 = !{!283, !290, !295}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !281, file: !216, line: 134, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!46, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !216, line: 135, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!219, !288}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !281, file: !216, line: 136, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!46, !288, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !216, line: 125, size: 20736, elements: !302)
!302 = !{!303, !307, !311, !312, !316}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !301, file: !216, line: 126, baseType: !304, size: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 192, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 3)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !301, file: !216, line: 127, baseType: !308, size: 4096, offset: 192)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 4096, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !301, file: !216, line: 128, baseType: !46, size: 32, offset: 4288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !301, file: !216, line: 129, baseType: !313, size: 16384, offset: 4320)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 16384, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !301, file: !216, line: 130, baseType: !46, size: 32, offset: 20704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !215, file: !216, line: 69, baseType: !318, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !216, line: 116, size: 384, elements: !321)
!321 = !{!322, !326, !354, !696, !727, !731}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !320, file: !216, line: 117, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !228}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !320, file: !216, line: 118, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !330, line: 254, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!331 = !{!332, !347}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !329, file: !330, line: 255, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !228, !341, !202}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !205, line: 66, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !338, line: 73, baseType: !339)
!338 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !338, line: 15, baseType: !340)
!340 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !330, line: 30, size: 128, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !330, line: 31, baseType: !219, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !342, file: !330, line: 32, baseType: !346, size: 16, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !205, line: 24, baseType: !275)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !329, file: !330, line: 256, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!336, !228, !341, !219, !351}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !205, line: 61, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !338, line: 72, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !338, line: 16, baseType: !207)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !320, file: !216, line: 119, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !330, line: 84, size: 320, elements: !359)
!359 = !{!360, !361, !365, !692, !694}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !330, line: 85, baseType: !219, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !358, file: !330, line: 86, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!346, !228, !341, !46}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !358, file: !330, line: 88, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!346, !228, !369, !46}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !330, line: 175, size: 512, elements: !371)
!371 = !{!372, !373, !374, !375, !382, !392, !393}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !370, file: !330, line: 176, baseType: !342, size: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !330, line: 177, baseType: !351, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !370, file: !330, line: 178, baseType: !208, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !370, file: !330, line: 179, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !381, line: 32, flags: DIFlagFwdDecl)
!381 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!382 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !330, line: 180, baseType: !383, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!336, !386, !228, !369, !202, !389, !351}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !388, line: 537, flags: DIFlagFwdDecl)
!388 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !205, line: 52, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !338, line: 88, baseType: !391)
!391 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !370, file: !330, line: 182, baseType: !383, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !330, line: 184, baseType: !394, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!46, !386, !228, !369, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !381, line: 625, size: 1344, elements: !399)
!399 = !{!400, !417, !640, !646, !653, !654, !659, !662, !674, !675, !678, !682, !683, !684, !685, !686, !690}
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !381, line: 628, baseType: !401, size: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !381, line: 628, size: 128, elements: !402)
!402 = !{!403, !408}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !381, line: 629, baseType: !404, size: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !381, line: 629, size: 128, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !404, file: !381, line: 631, baseType: !207, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !404, file: !381, line: 632, baseType: !207, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !401, file: !381, line: 635, baseType: !409, size: 128, align: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !205, line: 232, size: 128, align: 64, elements: !410)
!410 = !{!411, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !205, line: 233, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !409, file: !205, line: 234, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !412}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !398, file: !381, line: 639, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !381, line: 733, size: 10240, elements: !420)
!420 = !{!421, !636}
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !381, line: 734, baseType: !422, size: 10240)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !419, file: !381, line: 734, size: 10240, elements: !423)
!423 = !{!424, !428, !442, !446, !447, !448, !449, !450, !451, !459, !460, !461, !470, !471, !480, !481, !482, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !529, !543, !546, !601, !602, !603, !606, !610, !611, !614, !615, !616, !623, !624}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !381, line: 739, baseType: !425, size: 512, align: 512)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !422, file: !381, line: 739, size: 512, align: 512, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !425, file: !381, line: 747, baseType: !255, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !422, file: !381, line: 750, baseType: !429, size: 128, offset: 512)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !430, line: 218, size: 128, elements: !431)
!430 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!431 = !{!432, !440, !441}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !430, line: 219, baseType: !433, size: 32)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !430, line: 219, size: 32, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !433, file: !430, line: 220, baseType: !235, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !433, file: !430, line: 221, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !430, line: 197, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 197, elements: !439)
!439 = !{}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !429, file: !430, line: 223, baseType: !7, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !429, file: !430, line: 224, baseType: !208, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !422, file: !381, line: 752, baseType: !443, size: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!207, !386, !207, !207, !207, !207}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !422, file: !381, line: 756, baseType: !207, size: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !422, file: !381, line: 757, baseType: !207, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !422, file: !381, line: 760, baseType: !207, size: 64, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !422, file: !381, line: 761, baseType: !207, size: 64, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !422, file: !381, line: 763, baseType: !207, size: 64, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !422, file: !381, line: 764, baseType: !452, size: 64, offset: 1024)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !388, line: 299, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 299, size: 64, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !454, file: !388, line: 299, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !458, line: 18, baseType: !207)
!458 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!459 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !422, file: !381, line: 773, baseType: !255, size: 32, offset: 1088)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !422, file: !381, line: 785, baseType: !255, size: 32, offset: 1120)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !422, file: !381, line: 795, baseType: !462, size: 64, offset: 1152)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !381, line: 726, size: 128, elements: !464)
!464 = !{!465, !469}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !463, file: !381, line: 727, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !264, line: 23, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !266, line: 31, baseType: !468)
!468 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !463, file: !381, line: 728, baseType: !46, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !422, file: !381, line: 801, baseType: !207, size: 64, offset: 1216)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !422, file: !381, line: 804, baseType: !472, size: 64, offset: 1280)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !473, line: 13, baseType: !474)
!473 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !205, line: 181, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 179, size: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !475, file: !205, line: 180, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !264, line: 22, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !266, line: 30, baseType: !391)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !422, file: !381, line: 806, baseType: !46, size: 32, offset: 1344)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !422, file: !381, line: 808, baseType: !235, size: 32, offset: 1376)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !422, file: !381, line: 823, baseType: !483, size: 320, offset: 1408)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !484, line: 48, size: 320, elements: !485)
!484 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!485 = !{!486, !487, !488, !493, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !483, file: !484, line: 49, baseType: !472, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !483, file: !484, line: 55, baseType: !472, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !483, file: !484, line: 57, baseType: !489, size: 32, offset: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !490, line: 15, size: 32, elements: !491)
!490 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !489, file: !490, line: 20, baseType: !255, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !483, file: !484, line: 59, baseType: !494, size: 32, offset: 160)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !244, line: 23, baseType: !243)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !483, file: !484, line: 60, baseType: !222, size: 128, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !422, file: !381, line: 825, baseType: !222, size: 128, offset: 1728)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !422, file: !381, line: 845, baseType: !46, size: 32, offset: 1856)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !422, file: !381, line: 849, baseType: !207, size: 64, offset: 1920)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !422, file: !381, line: 850, baseType: !207, size: 64, offset: 1984)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !422, file: !381, line: 852, baseType: !207, size: 64, offset: 2048)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !422, file: !381, line: 853, baseType: !207, size: 64, offset: 2112)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !422, file: !381, line: 854, baseType: !474, size: 64, offset: 2176)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !422, file: !381, line: 855, baseType: !207, size: 64, offset: 2240)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !422, file: !381, line: 856, baseType: !207, size: 64, offset: 2304)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !422, file: !381, line: 857, baseType: !207, size: 64, offset: 2368)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !422, file: !381, line: 858, baseType: !207, size: 64, offset: 2432)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !422, file: !381, line: 865, baseType: !508, size: 32, offset: 2496)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !509, line: 69, baseType: !510)
!509 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !509, line: 64, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !510, file: !509, line: 65, baseType: !7, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !422, file: !381, line: 867, baseType: !235, size: 32, offset: 2528)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !422, file: !381, line: 869, baseType: !207, size: 64, offset: 2560)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !422, file: !381, line: 869, baseType: !207, size: 64, offset: 2624)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !422, file: !381, line: 869, baseType: !207, size: 64, offset: 2688)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !422, file: !381, line: 869, baseType: !207, size: 64, offset: 2752)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !422, file: !381, line: 870, baseType: !207, size: 64, offset: 2816)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !422, file: !381, line: 870, baseType: !207, size: 64, offset: 2880)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !422, file: !381, line: 870, baseType: !207, size: 64, offset: 2944)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !422, file: !381, line: 871, baseType: !207, size: 64, offset: 3008)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !422, file: !381, line: 871, baseType: !207, size: 64, offset: 3072)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !422, file: !381, line: 871, baseType: !207, size: 64, offset: 3136)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !422, file: !381, line: 871, baseType: !207, size: 64, offset: 3200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !422, file: !381, line: 873, baseType: !526, size: 3328, offset: 3264)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 3328, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 52)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !422, file: !381, line: 875, baseType: !530, size: 1280, offset: 6592)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 1280, elements: !541)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !532, line: 22, size: 320, elements: !533)
!532 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!533 = !{!534, !535, !536, !537}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !531, file: !532, line: 23, baseType: !494, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !531, file: !532, line: 24, baseType: !478, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !531, file: !532, line: 26, baseType: !222, size: 128, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !531, file: !532, line: 28, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !264, line: 20, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !266, line: 26, baseType: !46)
!541 = !{!542}
!542 = !DISubrange(count: 4)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !422, file: !381, line: 877, baseType: !544, size: 64, offset: 7872)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !381, line: 877, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !422, file: !381, line: 880, baseType: !547, size: 1088, offset: 7936)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !548, line: 72, baseType: !549)
!548 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 23, size: 1088, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !558, !559, !567, !568, !595, !596, !597}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !549, file: !548, line: 28, baseType: !466, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !549, file: !548, line: 38, baseType: !474, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !549, file: !548, line: 40, baseType: !207, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !549, file: !548, line: 43, baseType: !483, size: 320, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !549, file: !548, line: 44, baseType: !556, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !548, line: 44, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !548, line: 48, baseType: !207, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !549, file: !548, line: 59, baseType: !560, size: 256, offset: 640)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !561, line: 66, size: 256, elements: !562)
!561 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!562 = !{!563, !564, !565, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !560, file: !561, line: 67, baseType: !472, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !560, file: !561, line: 68, baseType: !494, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !560, file: !561, line: 70, baseType: !489, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !560, file: !561, line: 72, baseType: !222, size: 128, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !549, file: !548, line: 60, baseType: !208, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !549, file: !548, line: 61, baseType: !569, size: 64, offset: 960)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !572, line: 13, size: 1216, elements: !573)
!572 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!573 = !{!574, !575, !576, !577, !578, !579, !580, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !571, file: !572, line: 14, baseType: !208, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !571, file: !572, line: 15, baseType: !207, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !571, file: !572, line: 17, baseType: !207, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !571, file: !572, line: 17, baseType: !207, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !571, file: !572, line: 18, baseType: !207, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !571, file: !572, line: 18, baseType: !207, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !571, file: !572, line: 19, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !571, file: !572, line: 21, baseType: !340, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !571, file: !572, line: 23, baseType: !340, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !571, file: !572, line: 24, baseType: !340, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !571, file: !572, line: 25, baseType: !340, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !571, file: !572, line: 26, baseType: !340, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !571, file: !572, line: 27, baseType: !340, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !571, file: !572, line: 28, baseType: !340, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !571, file: !572, line: 29, baseType: !340, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !571, file: !572, line: 30, baseType: !340, size: 64, offset: 960)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !571, file: !572, line: 31, baseType: !340, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !571, file: !572, line: 32, baseType: !340, size: 64, offset: 1088)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !571, file: !572, line: 33, baseType: !340, size: 64, offset: 1152)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !549, file: !548, line: 63, baseType: !255, size: 32, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !549, file: !548, line: 69, baseType: !273, size: 16, offset: 1056)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !549, file: !548, line: 70, baseType: !598, size: 16, offset: 1072)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !264, line: 18, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !266, line: 23, baseType: !600)
!600 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !381, line: 882, baseType: !207, size: 64, offset: 9024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !422, file: !381, line: 885, baseType: !235, size: 32, offset: 9088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !422, file: !381, line: 886, baseType: !604, size: 64, offset: 9152)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !381, line: 732, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !422, file: !381, line: 901, baseType: !607, size: 64, offset: 9216)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !609, line: 18, flags: DIFlagFwdDecl)
!609 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !422, file: !381, line: 904, baseType: !386, size: 64, offset: 9280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !422, file: !381, line: 906, baseType: !612, size: 64, offset: 9344)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !381, line: 906, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !422, file: !381, line: 930, baseType: !255, size: 32, offset: 9408)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !422, file: !381, line: 933, baseType: !255, size: 32, offset: 9440)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !422, file: !381, line: 935, baseType: !617, size: 64, offset: 9472)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !618, line: 103, size: 64, elements: !619)
!618 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !617, file: !618, line: 104, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !618, line: 101, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !422, file: !381, line: 940, baseType: !472, size: 64, offset: 9536)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !422, file: !381, line: 942, baseType: !625, size: 256, offset: 9600)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !626, line: 98, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !625, file: !626, line: 99, baseType: !472, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !625, file: !626, line: 100, baseType: !222, size: 128, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !625, file: !626, line: 101, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !626, line: 21, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !419, file: !381, line: 986, baseType: !637, offset: 10240)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: -1)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !398, file: !381, line: 640, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !388, line: 297, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !388, line: 297, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !642, file: !388, line: 297, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !458, line: 19, baseType: !207)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !381, line: 646, baseType: !647, size: 64, offset: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !381, line: 646, size: 64, elements: !648)
!648 = !{!649, !652}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !647, file: !381, line: 647, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !381, line: 542, baseType: !207)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !647, file: !381, line: 648, baseType: !651, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !398, file: !381, line: 666, baseType: !46, size: 32, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !398, file: !381, line: 667, baseType: !655, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !381, line: 579, size: 320, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !656, file: !381, line: 580, baseType: !483, size: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !398, file: !381, line: 670, baseType: !660, size: 8, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !205, line: 35, baseType: !661)
!661 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !398, file: !381, line: 681, baseType: !663, size: 256, offset: 512)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !381, line: 678, size: 256, elements: !664)
!664 = !{!665, !673}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !663, file: !381, line: 679, baseType: !666, size: 192, align: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !667, line: 5, size: 192, align: 64, elements: !668)
!667 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!668 = !{!669, !670, !672}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !666, file: !667, line: 6, baseType: !207, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !666, file: !667, line: 7, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !666, file: !667, line: 8, baseType: !671, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !663, file: !381, line: 680, baseType: !207, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !398, file: !381, line: 689, baseType: !222, size: 128, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !398, file: !381, line: 691, baseType: !676, size: 64, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !381, line: 691, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !398, file: !381, line: 694, baseType: !679, size: 64, offset: 960)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !381, line: 694, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !398, file: !381, line: 697, baseType: !207, size: 64, offset: 1024)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !398, file: !381, line: 699, baseType: !386, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !398, file: !381, line: 700, baseType: !208, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !398, file: !381, line: 711, baseType: !472, size: 64, offset: 1216)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !398, file: !381, line: 717, baseType: !687, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !689, line: 54, flags: DIFlagFwdDecl)
!689 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !398, file: !381, line: 722, baseType: !691, offset: 1344)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !381, line: 570, elements: !439)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !358, file: !330, line: 90, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !358, file: !330, line: 91, baseType: !695, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !320, file: !216, line: 120, baseType: !697, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!700, !288}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !703)
!703 = !{!704, !705, !709, !713, !719, !723}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !6, line: 40, baseType: !5, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !702, file: !6, line: 41, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!660}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !702, file: !6, line: 42, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!208}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !702, file: !6, line: 43, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!581, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !702, file: !6, line: 44, baseType: !720, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!581}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !702, file: !6, line: 45, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !208}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !320, file: !216, line: 121, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!581, !288}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !320, file: !216, line: 122, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !288, !735, !742}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !609, line: 23, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 21, size: 32, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !737, file: !609, line: 22, baseType: !740, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !205, line: 37, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !338, line: 49, baseType: !7)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !609, line: 28, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 26, size: 32, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !744, file: !609, line: 27, baseType: !747, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !205, line: 38, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !338, line: 50, baseType: !7)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !215, file: !216, line: 70, baseType: !750, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !752, line: 190, size: 1152, elements: !753)
!752 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !855, !856, !857, !858, !859, !862}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !751, file: !752, line: 191, baseType: !255, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !751, file: !752, line: 192, baseType: !255, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !751, file: !752, line: 202, baseType: !750, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !751, file: !752, line: 203, baseType: !219, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !751, file: !752, line: 205, baseType: !666, size: 192, align: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !751, file: !752, line: 207, baseType: !581, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !751, file: !752, line: 208, baseType: !7, size: 32, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 209, baseType: !762, size: 256, offset: 512)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 209, size: 256, elements: !763)
!763 = !{!764, !776, !780}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !762, file: !752, line: 210, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !752, line: 153, size: 256, elements: !766)
!766 = !{!767, !768, !772, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !765, file: !752, line: 154, baseType: !207, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !765, file: !752, line: 156, baseType: !769, size: 64, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !667, line: 12, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !769, file: !667, line: 13, baseType: !671, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !765, file: !752, line: 162, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !752, line: 162, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !765, file: !752, line: 167, baseType: !207, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !762, file: !752, line: 211, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !752, line: 170, size: 64, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !777, file: !752, line: 171, baseType: !750, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !762, file: !752, line: 212, baseType: !781, size: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !752, line: 174, size: 256, elements: !782)
!782 = !{!783, !850, !853, !854}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !781, file: !752, line: 175, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !752, line: 271, size: 768, elements: !787)
!787 = !{!788, !810, !814, !818, !823, !827, !831, !835, !836, !837, !838, !846}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !786, file: !752, line: 276, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!46, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !752, line: 251, size: 1216, elements: !794)
!794 = !{!795, !796, !797, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !793, file: !752, line: 253, baseType: !750, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !793, file: !752, line: 254, baseType: !386, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !793, file: !752, line: 255, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !689, line: 66, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !793, file: !752, line: 256, baseType: !208, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !793, file: !752, line: 259, baseType: !560, size: 256, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !793, file: !752, line: 260, baseType: !560, size: 256, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !793, file: !752, line: 261, baseType: !46, size: 32, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !793, file: !752, line: 262, baseType: !222, size: 128, offset: 832)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !793, file: !752, line: 263, baseType: !202, size: 64, offset: 960)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !793, file: !752, line: 265, baseType: !351, size: 64, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !793, file: !752, line: 266, baseType: !660, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !793, file: !752, line: 267, baseType: !660, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !793, file: !752, line: 268, baseType: !679, size: 64, offset: 1152)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !786, file: !752, line: 277, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !792}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !786, file: !752, line: 290, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!46, !798, !208}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !786, file: !752, line: 292, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!208, !798, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !786, file: !752, line: 293, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!208, !798, !208, !822}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !786, file: !752, line: 294, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !798, !208}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !786, file: !752, line: 296, baseType: !832, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!336, !792, !202, !351, !389}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !786, file: !752, line: 306, baseType: !351, size: 64, offset: 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !786, file: !752, line: 313, baseType: !660, size: 8, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !786, file: !752, line: 314, baseType: !832, size: 64, offset: 576)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !786, file: !752, line: 317, baseType: !839, size: 64, offset: 640)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!842, !792, !844}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !843, line: 59, baseType: !7)
!843 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !752, line: 31, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !786, file: !752, line: 320, baseType: !847, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!46, !792, !397}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !781, file: !752, line: 176, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !752, line: 35, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !781, file: !752, line: 177, baseType: !389, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !781, file: !752, line: 178, baseType: !750, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !751, file: !752, line: 215, baseType: !208, size: 64, offset: 768)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !751, file: !752, line: 221, baseType: !466, size: 64, offset: 832)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !752, line: 223, baseType: !275, size: 16, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !751, file: !752, line: 224, baseType: !346, size: 16, offset: 912)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !751, file: !752, line: 225, baseType: !860, size: 64, offset: 960)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !752, line: 36, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !751, file: !752, line: 227, baseType: !409, size: 128, align: 64, offset: 1024)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !215, file: !216, line: 71, baseType: !864, size: 32, offset: 448)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !865, line: 19, size: 32, elements: !866)
!865 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !864, file: !865, line: 20, baseType: !868, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !869, line: 113, baseType: !870)
!869 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !869, line: 111, size: 32, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !870, file: !869, line: 112, baseType: !255, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !215, file: !216, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !215, file: !216, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !215, file: !216, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !215, file: !216, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !215, file: !216, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !26, line: 707, baseType: !211, size: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !212, file: !26, line: 709, baseType: !880, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !212, file: !26, line: 711, baseType: !219, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !26, line: 712, baseType: !884, size: 64, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !887)
!887 = !{!888, !889, !890, !896, !901, !905}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !886, file: !26, line: 90, baseType: !219, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !886, file: !26, line: 91, baseType: !355, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !886, file: !26, line: 92, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!46, !894, !300}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !886, file: !26, line: 93, baseType: !897, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!202, !894, !900, !735, !742}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !886, file: !26, line: 95, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !211}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !886, file: !26, line: 97, baseType: !906, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !909)
!909 = !{!910, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !908, file: !38, line: 287, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!46, !211}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !908, file: !38, line: 288, baseType: !902, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !908, file: !38, line: 289, baseType: !911, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !908, file: !38, line: 290, baseType: !911, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !908, file: !38, line: 291, baseType: !911, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !908, file: !38, line: 292, baseType: !911, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !908, file: !38, line: 293, baseType: !911, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !908, file: !38, line: 294, baseType: !911, size: 64, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !908, file: !38, line: 295, baseType: !911, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !908, file: !38, line: 296, baseType: !911, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !908, file: !38, line: 297, baseType: !911, size: 64, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !908, file: !38, line: 298, baseType: !911, size: 64, offset: 704)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !908, file: !38, line: 299, baseType: !911, size: 64, offset: 768)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !908, file: !38, line: 300, baseType: !911, size: 64, offset: 832)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !908, file: !38, line: 301, baseType: !911, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !908, file: !38, line: 302, baseType: !911, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !908, file: !38, line: 303, baseType: !911, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !908, file: !38, line: 304, baseType: !911, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !908, file: !38, line: 305, baseType: !911, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !908, file: !38, line: 306, baseType: !911, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !908, file: !38, line: 307, baseType: !911, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !908, file: !38, line: 308, baseType: !911, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !908, file: !38, line: 309, baseType: !911, size: 64, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !212, file: !26, line: 714, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !940, line: 80, size: 1344, elements: !941)
!940 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!941 = !{!942, !943, !944, !945, !946, !947, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1382}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !939, file: !940, line: 81, baseType: !219, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !939, file: !940, line: 82, baseType: !219, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !939, file: !940, line: 83, baseType: !355, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !939, file: !940, line: 84, baseType: !355, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !939, file: !940, line: 85, baseType: !355, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !939, file: !940, line: 87, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!46, !211, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !953)
!953 = !{!954, !955, !956, !1334, !1335, !1336, !1337, !1341, !1345, !1346, !1347, !1348, !1349, !1357, !1358, !1359, !1360, !1361, !1362}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !952, file: !20, line: 97, baseType: !219, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !952, file: !20, line: 98, baseType: !937, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !952, file: !20, line: 100, baseType: !957, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !959)
!959 = !{!960, !961, !962, !966, !987, !1013, !1014, !1015, !1016, !1020, !1023, !1024, !1025, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1088, !1092, !1112, !1130, !1131, !1132, !1133, !1142, !1166, !1167, !1170, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1184, !1185, !1292, !1300, !1301, !1302, !1304, !1308, !1309, !1313, !1314, !1315, !1316, !1318, !1319, !1320, !1327, !1328, !1329, !1333}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !958, file: !13, line: 403, baseType: !12, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !958, file: !13, line: 406, baseType: !222, size: 128, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !958, file: !13, line: 409, baseType: !963, size: 448, offset: 192)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 448, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 56)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !958, file: !13, line: 417, baseType: !967, size: 768, offset: 640)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !968)
!968 = !{!969, !970, !971, !972, !975}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !967, file: !13, line: 46, baseType: !215, size: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !967, file: !13, line: 47, baseType: !957, size: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !967, file: !13, line: 48, baseType: !228, size: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !967, file: !13, line: 49, baseType: !973, size: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !967, file: !13, line: 50, baseType: !976, size: 64, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !978, line: 26, size: 256, elements: !979)
!978 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !977, file: !978, line: 27, baseType: !7, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !977, file: !978, line: 28, baseType: !982, size: 192, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !983, line: 43, size: 192, elements: !984)
!983 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !982, file: !983, line: 44, baseType: !494, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !982, file: !983, line: 45, baseType: !222, size: 128, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !958, file: !13, line: 418, baseType: !988, size: 64, offset: 1408)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !990)
!990 = !{!991, !992, !997, !1001, !1005, !1009}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !989, file: !13, line: 54, baseType: !342, size: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !989, file: !13, line: 55, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!336, !988, !996, !202}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !989, file: !13, line: 57, baseType: !998, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!336, !988, !996, !219, !351}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !989, file: !13, line: 59, baseType: !1002, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !957, !219}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !989, file: !13, line: 60, baseType: !1006, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!46, !957}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !989, file: !13, line: 61, baseType: !1010, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !957}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !958, file: !13, line: 419, baseType: !219, size: 64, offset: 1472)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !958, file: !13, line: 420, baseType: !219, size: 64, offset: 1536)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !958, file: !13, line: 421, baseType: !228, size: 64, offset: 1600)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !958, file: !13, line: 424, baseType: !1017, size: 64, offset: 1664)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !958, file: !13, line: 425, baseType: !1021, size: 64, offset: 1728)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !958, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !958, file: !13, line: 435, baseType: !560, size: 256, offset: 1856)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !958, file: !13, line: 437, baseType: !1026, size: 64, offset: 2112)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1028, line: 69, size: 320, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1029 = !{!1030, !1031, !1032, !1049, !1051, !1055, !1056}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1027, file: !1028, line: 70, baseType: !219, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1027, file: !1028, line: 71, baseType: !957, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1027, file: !1028, line: 72, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1028, line: 47, size: 256, elements: !1036)
!1036 = !{!1037, !1038, !1044, !1048}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !1028, line: 49, baseType: !7, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1035, file: !1028, line: 51, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!46, !219, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1035, file: !1028, line: 53, baseType: !1045, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!46, !202, !1042}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1035, file: !1028, line: 55, baseType: !724, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1027, file: !1028, line: 73, baseType: !1050, size: 16, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1027, file: !1028, line: 74, baseType: !1052, size: 8, offset: 208)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !264, line: 16, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !266, line: 20, baseType: !1054)
!1054 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !1028, line: 75, baseType: !263, size: 8, offset: 216)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !1028, line: 76, baseType: !1057, size: 64, offset: 256)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !1028, line: 76, size: 64, elements: !1058)
!1058 = !{!1059, !1060, !1067}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1057, file: !1028, line: 77, baseType: !208, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1057, file: !1028, line: 78, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1028, line: 86, size: 128, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1063, file: !1028, line: 87, baseType: !7, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1063, file: !1028, line: 88, baseType: !202, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1057, file: !1028, line: 79, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1028, line: 92, size: 256, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1076, !1077}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1070, file: !1028, line: 94, baseType: !7, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1070, file: !1028, line: 95, baseType: !7, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1070, file: !1028, line: 96, baseType: !1075, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1070, file: !1028, line: 97, baseType: !1033, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1070, file: !1028, line: 98, baseType: !208, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !958, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !958, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !958, file: !13, line: 442, baseType: !1017, size: 64, offset: 2240)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !958, file: !13, line: 443, baseType: !1021, size: 64, offset: 2304)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !958, file: !13, line: 444, baseType: !660, size: 8, offset: 2368)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !958, file: !13, line: 451, baseType: !660, size: 8, offset: 2376)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !958, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !958, file: !13, line: 455, baseType: !1086, size: 64, offset: 2432)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !958, file: !13, line: 458, baseType: !1089, size: 64, offset: 2496)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!46}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !958, file: !13, line: 460, baseType: !1093, size: 4032, align: 512, offset: 2560)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 4032, elements: !1110)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1094, file: !13, line: 363, baseType: !208, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1094, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1094, file: !13, line: 367, baseType: !1099, size: 448, offset: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1099, file: !13, line: 320, baseType: !957, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1099, file: !13, line: 321, baseType: !1103, size: 384, offset: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1104, line: 40, size: 384, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1103, file: !1104, line: 41, baseType: !1107, size: 384, align: 64)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 384, align: 64, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 2)
!1110 = !{!1111}
!1111 = !DISubrange(count: 7)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !958, file: !13, line: 463, baseType: !1113, size: 192, offset: 6592)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1114, line: 8, size: 192, elements: !1115)
!1114 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1115 = !{!1116, !1117, !1119}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1113, file: !1114, line: 10, baseType: !7, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1113, file: !1114, line: 11, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1113, file: !1114, line: 12, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1122, line: 59, size: 48, elements: !1123)
!1122 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1121, file: !1122, line: 60, baseType: !598, size: 16)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1121, file: !1122, line: 61, baseType: !598, size: 16, offset: 16)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1121, file: !1122, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1121, file: !1122, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1121, file: !1122, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1121, file: !1122, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !958, file: !13, line: 465, baseType: !207, size: 64, offset: 6784)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !958, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !958, file: !13, line: 470, baseType: !222, size: 128, offset: 6912)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !958, file: !13, line: 471, baseType: !1134, size: 64, offset: 7040)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1136, line: 33, size: 96, elements: !1137)
!1136 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1135, file: !1136, line: 37, baseType: !46, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1135, file: !1136, line: 43, baseType: !46, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1135, file: !1136, line: 45, baseType: !275, size: 16, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1135, file: !1136, line: 47, baseType: !275, size: 16, offset: 80)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !958, file: !13, line: 476, baseType: !1143, size: 64, offset: 7104)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1145)
!1145 = !{!1146, !1163, !1164, !1165}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1144, file: !13, line: 379, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1149, line: 204, baseType: !1150)
!1149 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1149, line: 197, size: 192, elements: !1151)
!1151 = !{!1152, !1155, !1156, !1157, !1159, !1161}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1150, file: !1149, line: 198, baseType: !1153, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1149, line: 21, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !266, line: 27, baseType: !7)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1150, file: !1149, line: 199, baseType: !267, size: 8, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1150, file: !1149, line: 200, baseType: !267, size: 8, offset: 40)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1150, file: !1149, line: 201, baseType: !1158, size: 16, offset: 48)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1149, line: 17, baseType: !274)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1150, file: !1149, line: 202, baseType: !1160, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1149, line: 16, baseType: !467)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1150, file: !1149, line: 203, baseType: !1162, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1149, line: 22, baseType: !467)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1144, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1144, file: !13, line: 381, baseType: !202, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1144, file: !13, line: 382, baseType: !202, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !958, file: !13, line: 477, baseType: !1144, size: 256, offset: 7168)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !958, file: !13, line: 480, baseType: !1168, size: 64, offset: 7424)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !958, file: !13, line: 483, baseType: !1171, size: 64, offset: 7488)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !958, file: !13, line: 488, baseType: !202, size: 64, offset: 7552)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !958, file: !13, line: 492, baseType: !208, size: 64, offset: 7616)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !958, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !958, file: !13, line: 495, baseType: !208, size: 64, offset: 7744)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !958, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !958, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !958, file: !13, line: 500, baseType: !1180, size: 64, offset: 7872)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1182, line: 45, baseType: !1183)
!1182 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !958, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !958, file: !13, line: 504, baseType: !1186, size: 64, offset: 8000)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1189, line: 96, size: 192, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1190 = !{!1191, !1192, !1253, !1256}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1188, file: !1189, line: 97, baseType: !7, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1188, file: !1189, line: 98, baseType: !1193, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1189, line: 24, size: 3072, elements: !1195)
!1195 = !{!1196, !1198, !1199, !1200, !1201, !1215, !1216, !1217, !1218, !1237, !1238, !1239, !1250, !1251, !1252}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1194, file: !1189, line: 26, baseType: !1197, size: 128)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 128, elements: !1108)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1194, file: !1189, line: 27, baseType: !1197, size: 128, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1194, file: !1189, line: 28, baseType: !46, size: 32, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1194, file: !1189, line: 31, baseType: !235, size: 32, align: 512, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1194, file: !1189, line: 32, baseType: !1202, size: 960, offset: 576)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1203, line: 206, size: 960, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1204 = !{!1205, !1206, !1209, !1211, !1212, !1214}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1202, file: !1203, line: 207, baseType: !412, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1202, file: !1203, line: 208, baseType: !1207, size: 256, offset: 64)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 256, elements: !541)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1202, file: !1203, line: 209, baseType: !1210, size: 256, offset: 320)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !541)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1202, file: !1203, line: 213, baseType: !340, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1202, file: !1203, line: 215, baseType: !1213, size: 256, offset: 640)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !541)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !1203, line: 216, baseType: !263, size: 8, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1194, file: !1189, line: 33, baseType: !207, size: 64, offset: 1536)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1194, file: !1189, line: 34, baseType: !207, size: 64, offset: 1600)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1194, file: !1189, line: 35, baseType: !660, size: 8, offset: 1664)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1194, file: !1189, line: 36, baseType: !1219, size: 320, offset: 1728)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1220, line: 11, size: 320, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1221 = !{!1222, !1229, !1230, !1235}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1219, file: !1220, line: 16, baseType: !1223, size: 128)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !205, line: 198, size: 128, elements: !1224)
!1224 = !{!1225, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1223, file: !205, line: 199, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1223, file: !205, line: 199, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1219, file: !1220, line: 17, baseType: !207, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1219, file: !1220, line: 18, baseType: !1231, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1219, file: !1220, line: 19, baseType: !1236, size: 32, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !264, line: 21, baseType: !1154)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1194, file: !1189, line: 37, baseType: !625, size: 256, offset: 2048)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1194, file: !1189, line: 38, baseType: !409, size: 128, align: 64, offset: 2304)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1194, file: !1189, line: 39, baseType: !1240, size: 64, offset: 2432)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1189, line: 49, size: 768, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1241, file: !1189, line: 50, baseType: !235, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1241, file: !1189, line: 51, baseType: !1210, size: 256, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1241, file: !1189, line: 53, baseType: !1210, size: 256, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1241, file: !1189, line: 54, baseType: !207, size: 64, offset: 576)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1241, file: !1189, line: 55, baseType: !1240, size: 64, offset: 640)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1241, file: !1189, line: 56, baseType: !46, size: 32, offset: 704)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1241, file: !1189, line: 57, baseType: !46, size: 32, offset: 736)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1194, file: !1189, line: 40, baseType: !207, size: 64, offset: 2496)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1194, file: !1189, line: 42, baseType: !46, size: 32, offset: 2560)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1194, file: !1189, line: 43, baseType: !1187, size: 64, offset: 2624)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1188, file: !1189, line: 99, baseType: !1254, offset: 128)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1255, line: 211, elements: !439)
!1255 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1188, file: !1189, line: 100, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1189, line: 63, size: 3008, elements: !1259)
!1259 = !{!1260, !1261, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1291}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1258, file: !1189, line: 64, baseType: !1240, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1258, file: !1189, line: 65, baseType: !1262, size: 192, offset: 64)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, size: 192, elements: !305)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1258, file: !1189, line: 67, baseType: !46, size: 32, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1258, file: !1189, line: 68, baseType: !560, size: 256, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1258, file: !1189, line: 69, baseType: !235, size: 32, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1258, file: !1189, line: 70, baseType: !560, size: 256, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1258, file: !1189, line: 71, baseType: !207, size: 64, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1258, file: !1189, line: 72, baseType: !207, size: 64, offset: 960)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1258, file: !1189, line: 73, baseType: !207, size: 64, offset: 1024)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1258, file: !1189, line: 74, baseType: !207, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1258, file: !1189, line: 75, baseType: !207, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1258, file: !1189, line: 76, baseType: !207, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1258, file: !1189, line: 77, baseType: !207, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1258, file: !1189, line: 78, baseType: !207, size: 64, offset: 1344)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1258, file: !1189, line: 79, baseType: !660, size: 8, offset: 1408)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1258, file: !1189, line: 80, baseType: !207, size: 64, offset: 1472)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1258, file: !1189, line: 81, baseType: !560, size: 256, offset: 1536)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1258, file: !1189, line: 82, baseType: !977, size: 256, offset: 1792)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1258, file: !1189, line: 84, baseType: !255, size: 32, offset: 2048)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1258, file: !1189, line: 87, baseType: !207, size: 64, offset: 2112)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1258, file: !1189, line: 88, baseType: !207, size: 64, offset: 2176)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1258, file: !1189, line: 89, baseType: !1283, size: 704, offset: 2240)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !626, line: 111, size: 704, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1290}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1283, file: !626, line: 112, baseType: !625, size: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1283, file: !626, line: 113, baseType: !1219, size: 320, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1283, file: !626, line: 116, baseType: !1288, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !626, line: 18, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1283, file: !626, line: 117, baseType: !46, size: 32, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1258, file: !1189, line: 90, baseType: !1187, size: 64, offset: 2944)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !958, file: !13, line: 515, baseType: !1293, size: 64, offset: 8064)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1295, line: 117, size: 128, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1294, file: !1295, line: 118, baseType: !539, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1294, file: !1295, line: 119, baseType: !539, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1294, file: !1295, line: 120, baseType: !340, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !958, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !958, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !958, file: !13, line: 520, baseType: !1303, size: 64, offset: 8192)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !958, file: !13, line: 523, baseType: !1305, size: 64, offset: 8256)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !958, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !958, file: !13, line: 525, baseType: !1310, size: 64, offset: 8384)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !958, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !958, file: !13, line: 533, baseType: !208, size: 64, offset: 8512)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !958, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !958, file: !13, line: 535, baseType: !1317, size: 64, offset: 8640)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !958, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !958, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !958, file: !13, line: 540, baseType: !1321, size: 64, offset: 8768)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1323, line: 32, size: 64, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1322, file: !1323, line: 33, baseType: !539, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1322, file: !1323, line: 34, baseType: !539, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !958, file: !13, line: 563, baseType: !222, size: 128, offset: 8832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !958, file: !13, line: 565, baseType: !222, size: 128, offset: 8960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !958, file: !13, line: 568, baseType: !1330, size: 64, offset: 9088)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !958, file: !13, line: 570, baseType: !255, size: 32, offset: 9152)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !952, file: !20, line: 101, baseType: !219, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !952, file: !20, line: 103, baseType: !660, size: 8, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !952, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !952, file: !20, line: 106, baseType: !1338, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !952, file: !20, line: 107, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !952, file: !20, line: 109, baseType: !911, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !952, file: !20, line: 110, baseType: !902, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !952, file: !20, line: 111, baseType: !911, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !952, file: !20, line: 112, baseType: !902, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !952, file: !20, line: 113, baseType: !1350, size: 64, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!46, !211, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1354, file: !38, line: 59, baseType: !46, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !952, file: !20, line: 114, baseType: !911, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !952, file: !20, line: 115, baseType: !355, size: 64, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !952, file: !20, line: 116, baseType: !355, size: 64, offset: 896)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !952, file: !20, line: 118, baseType: !906, size: 64, offset: 960)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !952, file: !20, line: 119, baseType: !902, size: 64, offset: 1024)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !952, file: !20, line: 121, baseType: !1363, size: 64, offset: 1088)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !939, file: !940, line: 88, baseType: !891, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !939, file: !940, line: 89, baseType: !911, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !939, file: !940, line: 90, baseType: !902, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !939, file: !940, line: 91, baseType: !902, size: 64, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !939, file: !940, line: 92, baseType: !902, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !939, file: !940, line: 94, baseType: !911, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !939, file: !940, line: 95, baseType: !911, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !939, file: !940, line: 97, baseType: !1350, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !939, file: !940, line: 98, baseType: !911, size: 64, offset: 896)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !939, file: !940, line: 100, baseType: !911, size: 64, offset: 960)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !939, file: !940, line: 102, baseType: !911, size: 64, offset: 1024)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !939, file: !940, line: 103, baseType: !902, size: 64, offset: 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !939, file: !940, line: 105, baseType: !906, size: 64, offset: 1152)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !939, file: !940, line: 107, baseType: !1379, size: 64, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !940, line: 107, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !939, file: !940, line: 109, baseType: !660, size: 8, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !212, file: !26, line: 715, baseType: !951, size: 64, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !212, file: !26, line: 717, baseType: !208, size: 64, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !212, file: !26, line: 719, baseType: !208, size: 64, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !212, file: !26, line: 721, baseType: !560, size: 256, offset: 1024)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !212, file: !26, line: 725, baseType: !1388, size: 448, offset: 1280)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1388, file: !26, line: 518, baseType: !222, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1388, file: !26, line: 519, baseType: !222, size: 128, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1388, file: !26, line: 520, baseType: !222, size: 128, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1388, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !212, file: !26, line: 726, baseType: !1395, size: 2496, offset: 1728)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1441, !1442, !1443, !1444, !1445, !1446, !1517, !1518, !1519, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1557, !1561}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1395, file: !38, line: 664, baseType: !1353, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1395, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1395, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1395, file: !38, line: 667, baseType: !660, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1395, file: !38, line: 668, baseType: !660, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1395, file: !38, line: 669, baseType: !660, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1395, file: !38, line: 670, baseType: !660, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1395, file: !38, line: 671, baseType: !660, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1395, file: !38, line: 672, baseType: !660, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1395, file: !38, line: 673, baseType: !660, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1395, file: !38, line: 674, baseType: !660, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1395, file: !38, line: 675, baseType: !1236, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1395, file: !38, line: 676, baseType: !235, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1395, file: !38, line: 678, baseType: !222, size: 128, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1395, file: !38, line: 679, baseType: !977, size: 256, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1395, file: !38, line: 680, baseType: !1413, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1415, line: 43, size: 1536, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1424, !1425, !1426, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1414, file: !1415, line: 44, baseType: !219, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1414, file: !1415, line: 45, baseType: !46, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1414, file: !1415, line: 46, baseType: !222, size: 128, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !1415, line: 47, baseType: !235, size: 32, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1414, file: !1415, line: 48, baseType: !1422, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1414, file: !1415, line: 49, baseType: !1219, size: 320, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1414, file: !1415, line: 50, baseType: !207, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1414, file: !1415, line: 51, baseType: !1427, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1428, line: 29, baseType: !478)
!1428 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1414, file: !1415, line: 52, baseType: !1427, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1414, file: !1415, line: 53, baseType: !1427, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1414, file: !1415, line: 54, baseType: !1427, size: 64, offset: 960)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1414, file: !1415, line: 55, baseType: !1427, size: 64, offset: 1024)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1414, file: !1415, line: 56, baseType: !207, size: 64, offset: 1088)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1414, file: !1415, line: 57, baseType: !207, size: 64, offset: 1152)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1414, file: !1415, line: 58, baseType: !207, size: 64, offset: 1216)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1414, file: !1415, line: 59, baseType: !207, size: 64, offset: 1280)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1414, file: !1415, line: 60, baseType: !207, size: 64, offset: 1344)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1414, file: !1415, line: 61, baseType: !211, size: 64, offset: 1408)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1414, file: !1415, line: 62, baseType: !660, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1414, file: !1415, line: 63, baseType: !660, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1395, file: !38, line: 681, baseType: !660, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1395, file: !38, line: 682, baseType: !660, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1395, file: !38, line: 683, baseType: !660, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1395, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1395, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1395, file: !38, line: 690, baseType: !1447, size: 512, offset: 640)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1448)
!1448 = !{!1449, !1455, !1456, !1461, !1513, !1514, !1515, !1516}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1447, file: !33, line: 119, baseType: !1450, size: 256)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1451, line: 9, size: 256, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1450, file: !1451, line: 10, baseType: !666, size: 192, align: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1450, file: !1451, line: 11, baseType: !1427, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1447, file: !33, line: 120, baseType: !1427, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1447, file: !33, line: 121, baseType: !1457, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!32, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1447, file: !33, line: 122, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1464)
!1464 = !{!1465, !1490, !1491, !1494, !1499, !1500, !1508, !1512}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1463, file: !33, line: 160, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !33, line: 216, baseType: !494, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1467, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1467, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1467, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1467, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1467, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1467, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1467, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1467, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1467, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1467, file: !33, line: 227, baseType: !275, size: 16, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1467, file: !33, line: 228, baseType: !275, size: 16, offset: 208)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1467, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1467, file: !33, line: 235, baseType: !1427, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1467, file: !33, line: 236, baseType: !1460, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1467, file: !33, line: 237, baseType: !1427, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1467, file: !33, line: 238, baseType: !1460, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1467, file: !33, line: 239, baseType: !1487, size: 4096, align: 512, offset: 512)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 4096, align: 512, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 8)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1463, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1463, file: !33, line: 162, baseType: !1492, size: 32, offset: 96)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !205, line: 32, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !338, line: 96, baseType: !46)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1463, file: !33, line: 163, baseType: !1495, size: 32, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !509, line: 274, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !509, line: 274, size: 32, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1496, file: !509, line: 274, baseType: !508, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1463, file: !33, line: 164, baseType: !1460, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1463, file: !33, line: 165, baseType: !1501, size: 128, offset: 256)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1451, line: 14, size: 128, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1501, file: !1451, line: 15, baseType: !1504, size: 128)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !667, line: 26, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1504, file: !667, line: 27, baseType: !769, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1504, file: !667, line: 28, baseType: !671, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1463, file: !33, line: 166, baseType: !1509, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1427}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1463, file: !33, line: 167, baseType: !1427, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1447, file: !33, line: 123, baseType: !263, size: 8, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1447, file: !33, line: 124, baseType: !263, size: 8, offset: 456)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1447, file: !33, line: 125, baseType: !263, size: 8, offset: 464)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1447, file: !33, line: 126, baseType: !263, size: 8, offset: 472)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1395, file: !38, line: 691, baseType: !466, size: 64, offset: 1152)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1395, file: !38, line: 692, baseType: !625, size: 256, offset: 1216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1395, file: !38, line: 693, baseType: !1520, size: 192, offset: 1472)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1521, line: 41, baseType: !1522)
!1521 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1521, line: 37, size: 192, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !1521, line: 38, baseType: !235, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1522, file: !1521, line: 39, baseType: !222, size: 128, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1395, file: !38, line: 694, baseType: !1422, size: 64, offset: 1664)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1395, file: !38, line: 695, baseType: !255, size: 32, offset: 1728)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1395, file: !38, line: 696, baseType: !255, size: 32, offset: 1760)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1395, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1395, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1395, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1395, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1395, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1395, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1395, file: !38, line: 703, baseType: !660, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1395, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1395, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1395, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1395, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1395, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1395, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1395, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1395, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1395, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1395, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1395, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1395, file: !38, line: 715, baseType: !466, size: 64, offset: 2048)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1395, file: !38, line: 716, baseType: !466, size: 64, offset: 2112)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1395, file: !38, line: 717, baseType: !466, size: 64, offset: 2176)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1395, file: !38, line: 718, baseType: !466, size: 64, offset: 2240)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1395, file: !38, line: 720, baseType: !1552, size: 64, offset: 2304)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1553, file: !38, line: 633, baseType: !235, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1553, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1395, file: !38, line: 721, baseType: !1558, size: 64, offset: 2368)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !211, !539}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1395, file: !38, line: 722, baseType: !1562, size: 64, offset: 2432)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !212, file: !26, line: 727, baseType: !1565, size: 64, offset: 4224)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1574, !1575, !1576}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1566, file: !38, line: 743, baseType: !908, size: 1472)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1566, file: !38, line: 744, baseType: !911, size: 64, offset: 1472)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1566, file: !38, line: 745, baseType: !1571, size: 64, offset: 1536)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !211, !660}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1566, file: !38, line: 746, baseType: !911, size: 64, offset: 1600)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1566, file: !38, line: 747, baseType: !902, size: 64, offset: 1664)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1566, file: !38, line: 748, baseType: !902, size: 64, offset: 1728)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !212, file: !26, line: 736, baseType: !1578, size: 128, offset: 4288)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1579)
!1579 = !{!1580, !1584}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1578, file: !26, line: 531, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1583, line: 13, flags: DIFlagFwdDecl)
!1583 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1578, file: !26, line: 532, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !212, file: !26, line: 738, baseType: !1588, size: 64, offset: 4416)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !212, file: !26, line: 740, baseType: !1592, size: 64, offset: 4480)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !212, file: !26, line: 741, baseType: !466, size: 64, offset: 4544)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !212, file: !26, line: 746, baseType: !466, size: 64, offset: 4608)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !212, file: !26, line: 747, baseType: !1596, size: 64, offset: 4672)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !212, file: !26, line: 749, baseType: !1600, size: 64, offset: 4736)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1602)
!1602 = !{!1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1601, file: !26, line: 433, baseType: !7, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1601, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1601, file: !26, line: 435, baseType: !207, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !212, file: !26, line: 751, baseType: !222, size: 128, offset: 4800)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !212, file: !26, line: 762, baseType: !1608, size: 64, offset: 4928)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !212, file: !26, line: 770, baseType: !1611, offset: 4992)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1612, line: 5, elements: !439)
!1612 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !212, file: !26, line: 772, baseType: !1614, size: 64, offset: 4992)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1616, line: 18, flags: DIFlagFwdDecl)
!1616 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !212, file: !26, line: 773, baseType: !1618, size: 64, offset: 5056)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !940, line: 22, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !212, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !212, file: !26, line: 778, baseType: !1622, size: 32, offset: 5152)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !205, line: 21, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !205, line: 18, baseType: !1236)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !212, file: !26, line: 779, baseType: !1236, size: 32, offset: 5184)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !212, file: !26, line: 781, baseType: !235, size: 32, offset: 5216)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !212, file: !26, line: 782, baseType: !222, size: 128, offset: 5248)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !212, file: !26, line: 784, baseType: !1628, size: 64, offset: 5376)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1631, line: 52, size: 768, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1641, !1645, !1646, !1647, !1648, !1652, !1656}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1630, file: !1631, line: 53, baseType: !219, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1630, file: !1631, line: 55, baseType: !355, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1630, file: !1631, line: 56, baseType: !355, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1630, file: !1631, line: 58, baseType: !891, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1630, file: !1631, line: 59, baseType: !1638, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!202, !894, !900}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1630, file: !1631, line: 61, baseType: !1642, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1628}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1630, file: !1631, line: 62, baseType: !902, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1630, file: !1631, line: 64, baseType: !911, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1630, file: !1631, line: 66, baseType: !700, size: 64, offset: 512)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1630, file: !1631, line: 67, baseType: !1649, size: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!581, !894}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1630, file: !1631, line: 69, baseType: !1653, size: 64, offset: 640)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !894, !735, !742}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1630, file: !1631, line: 71, baseType: !906, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !212, file: !26, line: 785, baseType: !355, size: 64, offset: 5440)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !212, file: !26, line: 787, baseType: !902, size: 64, offset: 5504)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !212, file: !26, line: 788, baseType: !1660, size: 64, offset: 5568)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !212, file: !26, line: 789, baseType: !1663, size: 64, offset: 5632)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !212, file: !26, line: 791, baseType: !1666, size: 64, offset: 5696)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1667, file: !26, line: 598, baseType: !53, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1667, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1667, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1667, file: !26, line: 601, baseType: !660, size: 8, offset: 96)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1667, file: !26, line: 602, baseType: !660, size: 8, offset: 104)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !212, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !212, file: !26, line: 795, baseType: !660, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !212, file: !26, line: 796, baseType: !660, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !212, file: !26, line: 797, baseType: !660, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !212, file: !26, line: 798, baseType: !660, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !212, file: !26, line: 799, baseType: !660, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_attr", file: !3, line: 23, size: 704, elements: !1682)
!1682 = !{!1683, !1684, !1688, !1701, !1704}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "prop_name", scope: !1681, file: !3, line: 24, baseType: !219, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "attr_name", scope: !1681, file: !3, line: 25, baseType: !1685, size: 248, offset: 64)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 248, elements: !1686)
!1686 = !{!1687}
!1687 = !DISubrange(count: 31)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !1681, file: !3, line: 26, baseType: !1689, size: 256, offset: 320)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1690)
!1690 = !{!1691, !1692, !1697}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1689, file: !26, line: 107, baseType: !342, size: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1689, file: !26, line: 108, baseType: !1693, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!336, !211, !1696, !202}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1689, file: !26, line: 110, baseType: !1698, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!336, !211, !1696, !219, !351}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "text_values", scope: !1681, file: !3, line: 27, baseType: !1702, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "text_values_len", scope: !1681, file: !3, line: 28, baseType: !46, size: 32, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !203)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !340)
!1710 = !{!1711, !1716, !1721, !1724, !1729, !1734, !1737, !1742, !1744, !1746, !0, !1751, !1753, !1756, !1761, !1763, !1765, !1767, !1772, !1777, !1779, !1781, !1783, !1788, !1790, !1792, !1794, !1796, !1801, !1803, !1805, !1807, !1809, !1811, !1813, !1815, !1820, !1822, !1824, !1826, !1828, !1833, !1836, !1841, !1843, !1845, !1847, !1852, !1854, !1859, !1864, !1866, !1868, !1873, !1875, !1877, !1879, !1881, !1883, !1885, !1890, !1892, !1894, !1899, !1901, !1906, !1908, !1910, !1912, !1914, !1916, !1921, !1923, !1925, !1927, !1929, !1931, !1933, !1935, !1937, !1939, !1941, !1943, !1945, !1947, !1952, !1954, !1956, !1961, !1966, !1968, !1970, !1972, !1974, !1976, !1979, !1981, !1983, !1985, !1987, !1989, !1991, !1993, !1995, !1998, !2000, !2002, !2004, !2006, !2008, !2010, !2012, !2014, !2016, !2018, !2020, !2022, !2024, !2026, !2029, !2031, !2033, !2035, !2037, !2039, !2041, !2044, !2046, !2048, !2050, !2052, !2055, !2057, !2059, !2061, !2063, !2065, !2067, !2069, !2071, !2073, !2075, !2077, !2079, !2082, !2084, !2086, !2089, !2343, !2348, !2353, !2355, !2357, !2362, !2364, !2366, !2368, !2370, !2373, !2376, !2378, !2380, !2383, !2385, !2387, !2389, !2391}
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !1713, isLocal: true, isDefinition: true)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 584, elements: !1714)
!1714 = !{!1715}
!1715 = !DISubrange(count: 73)
!1716 = !DIGlobalVariableExpression(var: !1717, expr: !DIExpression())
!1717 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !1718, isLocal: true, isDefinition: true)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !1719)
!1719 = !{!1720}
!1720 = !DISubrange(count: 24)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !1723, isLocal: true, isDefinition: true)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !1488)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 481, type: !1726, isLocal: true, isDefinition: true)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 168, elements: !1727)
!1727 = !{!1728}
!1728 = !DISubrange(count: 21)
!1729 = !DIGlobalVariableExpression(var: !1730, expr: !DIExpression())
!1730 = distinct !DIGlobalVariable(scope: null, file: !3, line: 540, type: !1731, isLocal: true, isDefinition: true)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 48, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 6)
!1734 = !DIGlobalVariableExpression(var: !1735, expr: !DIExpression())
!1735 = distinct !DIGlobalVariable(scope: null, file: !3, line: 544, type: !1736, isLocal: true, isDefinition: true)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 32, elements: !541)
!1737 = !DIGlobalVariableExpression(var: !1738, expr: !DIExpression())
!1738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 550, type: !1739, isLocal: true, isDefinition: true)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 376, elements: !1740)
!1740 = !{!1741}
!1741 = !DISubrange(count: 47)
!1742 = !DIGlobalVariableExpression(var: !1743, expr: !DIExpression())
!1743 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_power_supply_charge_behaviour_show205", scope: !2, file: !3, line: 559, type: !208, isLocal: true, isDefinition: true)
!1744 = !DIGlobalVariableExpression(var: !1745, expr: !DIExpression())
!1745 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_power_supply_charge_behaviour_parse206", scope: !2, file: !3, line: 573, type: !208, isLocal: true, isDefinition: true)
!1746 = !DIGlobalVariableExpression(var: !1747, expr: !DIExpression())
!1747 = distinct !DIGlobalVariable(name: "__power_supply_attrs", scope: !2, file: !3, line: 227, type: !1748, isLocal: true, isDefinition: true)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 4928, elements: !1749)
!1749 = !{!1750}
!1750 = !DISubrange(count: 77)
!1751 = !DIGlobalVariableExpression(var: !1752, expr: !DIExpression())
!1752 = distinct !DIGlobalVariable(name: "power_supply_attr_group", scope: !2, file: !3, line: 391, type: !357, isLocal: true, isDefinition: true)
!1753 = !DIGlobalVariableExpression(var: !1754, expr: !DIExpression())
!1754 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !1755, isLocal: true, isDefinition: true)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 56, elements: !1110)
!1756 = !DIGlobalVariableExpression(var: !1757, expr: !DIExpression())
!1757 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !1758, isLocal: true, isDefinition: true)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 96, elements: !1759)
!1759 = !{!1760}
!1760 = !DISubrange(count: 12)
!1761 = !DIGlobalVariableExpression(var: !1762, expr: !DIExpression())
!1762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !1755, isLocal: true, isDefinition: true)
!1763 = !DIGlobalVariableExpression(var: !1764, expr: !DIExpression())
!1764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !1723, isLocal: true, isDefinition: true)
!1765 = !DIGlobalVariableExpression(var: !1766, expr: !DIExpression())
!1766 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !1755, isLocal: true, isDefinition: true)
!1767 = !DIGlobalVariableExpression(var: !1768, expr: !DIExpression())
!1768 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !1769, isLocal: true, isDefinition: true)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 80, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 10)
!1772 = !DIGlobalVariableExpression(var: !1773, expr: !DIExpression())
!1773 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !1774, isLocal: true, isDefinition: true)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 88, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 11)
!1777 = !DIGlobalVariableExpression(var: !1778, expr: !DIExpression())
!1778 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !1758, isLocal: true, isDefinition: true)
!1779 = !DIGlobalVariableExpression(var: !1780, expr: !DIExpression())
!1780 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !1758, isLocal: true, isDefinition: true)
!1781 = !DIGlobalVariableExpression(var: !1782, expr: !DIExpression())
!1782 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !1758, isLocal: true, isDefinition: true)
!1783 = !DIGlobalVariableExpression(var: !1784, expr: !DIExpression())
!1784 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !1785, isLocal: true, isDefinition: true)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 152, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 19)
!1788 = !DIGlobalVariableExpression(var: !1789, expr: !DIExpression())
!1789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !1785, isLocal: true, isDefinition: true)
!1790 = !DIGlobalVariableExpression(var: !1791, expr: !DIExpression())
!1791 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !1758, isLocal: true, isDefinition: true)
!1792 = !DIGlobalVariableExpression(var: !1793, expr: !DIExpression())
!1793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !1758, isLocal: true, isDefinition: true)
!1794 = !DIGlobalVariableExpression(var: !1795, expr: !DIExpression())
!1795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !1758, isLocal: true, isDefinition: true)
!1796 = !DIGlobalVariableExpression(var: !1797, expr: !DIExpression())
!1797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !1798, isLocal: true, isDefinition: true)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 104, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 13)
!1801 = !DIGlobalVariableExpression(var: !1802, expr: !DIExpression())
!1802 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !1758, isLocal: true, isDefinition: true)
!1803 = !DIGlobalVariableExpression(var: !1804, expr: !DIExpression())
!1804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !1758, isLocal: true, isDefinition: true)
!1805 = !DIGlobalVariableExpression(var: !1806, expr: !DIExpression())
!1806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !1758, isLocal: true, isDefinition: true)
!1807 = !DIGlobalVariableExpression(var: !1808, expr: !DIExpression())
!1808 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !1798, isLocal: true, isDefinition: true)
!1809 = !DIGlobalVariableExpression(var: !1810, expr: !DIExpression())
!1810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !1769, isLocal: true, isDefinition: true)
!1811 = !DIGlobalVariableExpression(var: !1812, expr: !DIExpression())
!1812 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !1769, isLocal: true, isDefinition: true)
!1813 = !DIGlobalVariableExpression(var: !1814, expr: !DIExpression())
!1814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !1785, isLocal: true, isDefinition: true)
!1815 = !DIGlobalVariableExpression(var: !1816, expr: !DIExpression())
!1816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !1817, isLocal: true, isDefinition: true)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 160, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 20)
!1820 = !DIGlobalVariableExpression(var: !1821, expr: !DIExpression())
!1821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !1758, isLocal: true, isDefinition: true)
!1822 = !DIGlobalVariableExpression(var: !1823, expr: !DIExpression())
!1823 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !1798, isLocal: true, isDefinition: true)
!1824 = !DIGlobalVariableExpression(var: !1825, expr: !DIExpression())
!1825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !1774, isLocal: true, isDefinition: true)
!1826 = !DIGlobalVariableExpression(var: !1827, expr: !DIExpression())
!1827 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !1774, isLocal: true, isDefinition: true)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !1830, isLocal: true, isDefinition: true)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 120, elements: !1831)
!1831 = !{!1832}
!1832 = !DISubrange(count: 15)
!1833 = !DIGlobalVariableExpression(var: !1834, expr: !DIExpression())
!1834 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !1835, isLocal: true, isDefinition: true)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 192, elements: !1719)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !1838, isLocal: true, isDefinition: true)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 224, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 28)
!1841 = !DIGlobalVariableExpression(var: !1842, expr: !DIExpression())
!1842 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !1835, isLocal: true, isDefinition: true)
!1843 = !DIGlobalVariableExpression(var: !1844, expr: !DIExpression())
!1844 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !1838, isLocal: true, isDefinition: true)
!1845 = !DIGlobalVariableExpression(var: !1846, expr: !DIExpression())
!1846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !1726, isLocal: true, isDefinition: true)
!1847 = !DIGlobalVariableExpression(var: !1848, expr: !DIExpression())
!1848 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !1849, isLocal: true, isDefinition: true)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 200, elements: !1850)
!1850 = !{!1851}
!1851 = !DISubrange(count: 25)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !1685, isLocal: true, isDefinition: true)
!1854 = !DIGlobalVariableExpression(var: !1855, expr: !DIExpression())
!1855 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !1856, isLocal: true, isDefinition: true)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 232, elements: !1857)
!1857 = !{!1858}
!1858 = !DISubrange(count: 29)
!1859 = !DIGlobalVariableExpression(var: !1860, expr: !DIExpression())
!1860 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !1861, isLocal: true, isDefinition: true)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 136, elements: !1862)
!1862 = !{!1863}
!1863 = !DISubrange(count: 17)
!1864 = !DIGlobalVariableExpression(var: !1865, expr: !DIExpression())
!1865 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !1817, isLocal: true, isDefinition: true)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !1817, isLocal: true, isDefinition: true)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !1870, isLocal: true, isDefinition: true)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 144, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 18)
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !1785, isLocal: true, isDefinition: true)
!1875 = !DIGlobalVariableExpression(var: !1876, expr: !DIExpression())
!1876 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !1817, isLocal: true, isDefinition: true)
!1877 = !DIGlobalVariableExpression(var: !1878, expr: !DIExpression())
!1878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !1758, isLocal: true, isDefinition: true)
!1879 = !DIGlobalVariableExpression(var: !1880, expr: !DIExpression())
!1880 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !1798, isLocal: true, isDefinition: true)
!1881 = !DIGlobalVariableExpression(var: !1882, expr: !DIExpression())
!1882 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !1774, isLocal: true, isDefinition: true)
!1883 = !DIGlobalVariableExpression(var: !1884, expr: !DIExpression())
!1884 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !1774, isLocal: true, isDefinition: true)
!1885 = !DIGlobalVariableExpression(var: !1886, expr: !DIExpression())
!1886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !1887, isLocal: true, isDefinition: true)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 72, elements: !1888)
!1888 = !{!1889}
!1889 = !DISubrange(count: 9)
!1890 = !DIGlobalVariableExpression(var: !1891, expr: !DIExpression())
!1891 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !1785, isLocal: true, isDefinition: true)
!1892 = !DIGlobalVariableExpression(var: !1893, expr: !DIExpression())
!1893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !1785, isLocal: true, isDefinition: true)
!1894 = !DIGlobalVariableExpression(var: !1895, expr: !DIExpression())
!1895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !1896, isLocal: true, isDefinition: true)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 176, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 22)
!1899 = !DIGlobalVariableExpression(var: !1900, expr: !DIExpression())
!1900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !1830, isLocal: true, isDefinition: true)
!1901 = !DIGlobalVariableExpression(var: !1902, expr: !DIExpression())
!1902 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !1903, isLocal: true, isDefinition: true)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 40, elements: !1904)
!1904 = !{!1905}
!1905 = !DISubrange(count: 5)
!1906 = !DIGlobalVariableExpression(var: !1907, expr: !DIExpression())
!1907 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !1887, isLocal: true, isDefinition: true)
!1908 = !DIGlobalVariableExpression(var: !1909, expr: !DIExpression())
!1909 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !1887, isLocal: true, isDefinition: true)
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !1830, isLocal: true, isDefinition: true)
!1912 = !DIGlobalVariableExpression(var: !1913, expr: !DIExpression())
!1913 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !1830, isLocal: true, isDefinition: true)
!1914 = !DIGlobalVariableExpression(var: !1915, expr: !DIExpression())
!1915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !1798, isLocal: true, isDefinition: true)
!1916 = !DIGlobalVariableExpression(var: !1917, expr: !DIExpression())
!1917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !1918, isLocal: true, isDefinition: true)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 184, elements: !1919)
!1919 = !{!1920}
!1920 = !DISubrange(count: 23)
!1921 = !DIGlobalVariableExpression(var: !1922, expr: !DIExpression())
!1922 = distinct !DIGlobalVariable(scope: null, file: !3, line: 205, type: !1918, isLocal: true, isDefinition: true)
!1923 = !DIGlobalVariableExpression(var: !1924, expr: !DIExpression())
!1924 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !1870, isLocal: true, isDefinition: true)
!1925 = !DIGlobalVariableExpression(var: !1926, expr: !DIExpression())
!1926 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !1870, isLocal: true, isDefinition: true)
!1927 = !DIGlobalVariableExpression(var: !1928, expr: !DIExpression())
!1928 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !1861, isLocal: true, isDefinition: true)
!1929 = !DIGlobalVariableExpression(var: !1930, expr: !DIExpression())
!1930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !1861, isLocal: true, isDefinition: true)
!1931 = !DIGlobalVariableExpression(var: !1932, expr: !DIExpression())
!1932 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !1903, isLocal: true, isDefinition: true)
!1933 = !DIGlobalVariableExpression(var: !1934, expr: !DIExpression())
!1934 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !1887, isLocal: true, isDefinition: true)
!1935 = !DIGlobalVariableExpression(var: !1936, expr: !DIExpression())
!1936 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !1731, isLocal: true, isDefinition: true)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !1870, isLocal: true, isDefinition: true)
!1939 = !DIGlobalVariableExpression(var: !1940, expr: !DIExpression())
!1940 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !1817, isLocal: true, isDefinition: true)
!1941 = !DIGlobalVariableExpression(var: !1942, expr: !DIExpression())
!1942 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !1769, isLocal: true, isDefinition: true)
!1943 = !DIGlobalVariableExpression(var: !1944, expr: !DIExpression())
!1944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !1861, isLocal: true, isDefinition: true)
!1945 = !DIGlobalVariableExpression(var: !1946, expr: !DIExpression())
!1946 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !1870, isLocal: true, isDefinition: true)
!1947 = !DIGlobalVariableExpression(var: !1948, expr: !DIExpression())
!1948 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !1949, isLocal: true, isDefinition: true)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 16)
!1952 = !DIGlobalVariableExpression(var: !1953, expr: !DIExpression())
!1953 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !1774, isLocal: true, isDefinition: true)
!1954 = !DIGlobalVariableExpression(var: !1955, expr: !DIExpression())
!1955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !1798, isLocal: true, isDefinition: true)
!1956 = !DIGlobalVariableExpression(var: !1957, expr: !DIExpression())
!1957 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !1958, isLocal: true, isDefinition: true)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 112, elements: !1959)
!1959 = !{!1960}
!1960 = !DISubrange(count: 14)
!1961 = !DIGlobalVariableExpression(var: !1962, expr: !DIExpression())
!1962 = distinct !DIGlobalVariable(name: "power_supply_attrs", scope: !2, file: !3, line: 144, type: !1963, isLocal: true, isDefinition: true)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1681, size: 53504, elements: !1964)
!1964 = !{!1965}
!1965 = !DISubrange(count: 76)
!1966 = !DIGlobalVariableExpression(var: !1967, expr: !DIExpression())
!1967 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !1723, isLocal: true, isDefinition: true)
!1968 = !DIGlobalVariableExpression(var: !1969, expr: !DIExpression())
!1969 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !1887, isLocal: true, isDefinition: true)
!1970 = !DIGlobalVariableExpression(var: !1971, expr: !DIExpression())
!1971 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !1758, isLocal: true, isDefinition: true)
!1972 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression())
!1973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !1798, isLocal: true, isDefinition: true)
!1974 = !DIGlobalVariableExpression(var: !1975, expr: !DIExpression())
!1975 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !1903, isLocal: true, isDefinition: true)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_STATUS_TEXT", scope: !2, file: !3, line: 75, type: !1978, isLocal: true, isDefinition: true)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 320, elements: !1904)
!1979 = !DIGlobalVariableExpression(var: !1980, expr: !DIExpression())
!1980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !1736, isLocal: true, isDefinition: true)
!1981 = !DIGlobalVariableExpression(var: !1982, expr: !DIExpression())
!1982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !1723, isLocal: true, isDefinition: true)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !1903, isLocal: true, isDefinition: true)
!1985 = !DIGlobalVariableExpression(var: !1986, expr: !DIExpression())
!1986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !1887, isLocal: true, isDefinition: true)
!1987 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression())
!1988 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !1887, isLocal: true, isDefinition: true)
!1989 = !DIGlobalVariableExpression(var: !1990, expr: !DIExpression())
!1990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !1755, isLocal: true, isDefinition: true)
!1991 = !DIGlobalVariableExpression(var: !1992, expr: !DIExpression())
!1992 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !1769, isLocal: true, isDefinition: true)
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !1755, isLocal: true, isDefinition: true)
!1995 = !DIGlobalVariableExpression(var: !1996, expr: !DIExpression())
!1996 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_CHARGE_TYPE_TEXT", scope: !2, file: !3, line: 83, type: !1997, isLocal: true, isDefinition: true)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 576, elements: !1888)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !1903, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !1887, isLocal: true, isDefinition: true)
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !1903, isLocal: true, isDefinition: true)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !1798, isLocal: true, isDefinition: true)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !1817, isLocal: true, isDefinition: true)
!2008 = !DIGlobalVariableExpression(var: !2009, expr: !DIExpression())
!2009 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !1903, isLocal: true, isDefinition: true)
!2010 = !DIGlobalVariableExpression(var: !2011, expr: !DIExpression())
!2011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !1896, isLocal: true, isDefinition: true)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !1817, isLocal: true, isDefinition: true)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !1798, isLocal: true, isDefinition: true)
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !1726, isLocal: true, isDefinition: true)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !1903, isLocal: true, isDefinition: true)
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !1903, isLocal: true, isDefinition: true)
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !1736, isLocal: true, isDefinition: true)
!2024 = !DIGlobalVariableExpression(var: !2025, expr: !DIExpression())
!2025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !1774, isLocal: true, isDefinition: true)
!2026 = !DIGlobalVariableExpression(var: !2027, expr: !DIExpression())
!2027 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_HEALTH_TEXT", scope: !2, file: !3, line: 95, type: !2028, isLocal: true, isDefinition: true)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 960, elements: !1831)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !1903, isLocal: true, isDefinition: true)
!2031 = !DIGlobalVariableExpression(var: !2032, expr: !DIExpression())
!2032 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !1755, isLocal: true, isDefinition: true)
!2033 = !DIGlobalVariableExpression(var: !2034, expr: !DIExpression())
!2034 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !1723, isLocal: true, isDefinition: true)
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !1903, isLocal: true, isDefinition: true)
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !1903, isLocal: true, isDefinition: true)
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !1903, isLocal: true, isDefinition: true)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_TECHNOLOGY_TEXT", scope: !2, file: !3, line: 113, type: !2043, isLocal: true, isDefinition: true)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 448, elements: !1110)
!2044 = !DIGlobalVariableExpression(var: !2045, expr: !DIExpression())
!2045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !1887, isLocal: true, isDefinition: true)
!2046 = !DIGlobalVariableExpression(var: !2047, expr: !DIExpression())
!2047 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !1736, isLocal: true, isDefinition: true)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !1755, isLocal: true, isDefinition: true)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !1903, isLocal: true, isDefinition: true)
!2052 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression())
!2053 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_CAPACITY_LEVEL_TEXT", scope: !2, file: !3, line: 123, type: !2054, isLocal: true, isDefinition: true)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 384, elements: !1732)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !1723, isLocal: true, isDefinition: true)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !1736, isLocal: true, isDefinition: true)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !1731, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !1736, isLocal: true, isDefinition: true)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !1723, isLocal: true, isDefinition: true)
!2065 = !DIGlobalVariableExpression(var: !2066, expr: !DIExpression())
!2066 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !1723, isLocal: true, isDefinition: true)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !1723, isLocal: true, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !1731, isLocal: true, isDefinition: true)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !1755, isLocal: true, isDefinition: true)
!2073 = !DIGlobalVariableExpression(var: !2074, expr: !DIExpression())
!2074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !1774, isLocal: true, isDefinition: true)
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !1723, isLocal: true, isDefinition: true)
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !1887, isLocal: true, isDefinition: true)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_TYPE_TEXT", scope: !2, file: !3, line: 46, type: !2081, isLocal: true, isDefinition: true)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 832, elements: !1799)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !1755, isLocal: true, isDefinition: true)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !1755, isLocal: true, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_SCOPE_TEXT", scope: !2, file: !3, line: 132, type: !2088, isLocal: true, isDefinition: true)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 192, elements: !305)
!2089 = !DIGlobalVariableExpression(var: !2090, expr: !DIExpression())
!2090 = distinct !DIGlobalVariable(name: "_rs", scope: !2091, file: !3, line: 293, type: !2333, isLocal: true, isDefinition: true)
!2091 = distinct !DISubprogram(name: "power_supply_show_property", scope: !3, file: !3, line: 273, type: !1694, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2330, !2331, !2332}
!2093 = !DILocalVariable(name: "dev", arg: 1, scope: !2091, file: !3, line: 273, type: !211)
!2094 = !DILocalVariable(name: "attr", arg: 2, scope: !2091, file: !3, line: 274, type: !1696)
!2095 = !DILocalVariable(name: "buf", arg: 3, scope: !2091, file: !3, line: 275, type: !202)
!2096 = !DILocalVariable(name: "ret", scope: !2091, file: !3, line: 276, type: !336)
!2097 = !DILocalVariable(name: "psy", scope: !2091, file: !3, line: 277, type: !2098)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply", file: !79, line: 282, size: 8192, elements: !2100)
!2100 = !{!2101, !2142, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2222, !2225, !2228, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2099, file: !79, line: 283, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_desc", file: !79, line: 242, size: 768, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2111, !2112, !2115, !2116, !2125, !2131, !2135, !2139, !2140, !2141}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2104, file: !79, line: 243, baseType: !219, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2104, file: !79, line: 244, baseType: !78, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "usb_types", scope: !2104, file: !79, line: 245, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "num_usb_types", scope: !2104, file: !79, line: 246, baseType: !351, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2104, file: !79, line: 247, baseType: !2113, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "num_properties", scope: !2104, file: !79, line: 248, baseType: !351, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !2104, file: !79, line: 256, baseType: !2117, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!46, !2098, !106, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "power_supply_propval", file: !79, line: 218, size: 64, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !2121, file: !79, line: 219, baseType: !46, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "strval", scope: !2121, file: !79, line: 220, baseType: !219, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !2104, file: !79, line: 259, baseType: !2126, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!46, !2098, !106, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2121)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "property_is_writeable", scope: !2104, file: !79, line: 267, baseType: !2132, size: 64, offset: 512)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!46, !2098, !106}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "external_power_changed", scope: !2104, file: !79, line: 269, baseType: !2136, size: 64, offset: 576)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !2098}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "set_charged", scope: !2104, file: !79, line: 270, baseType: !2136, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "no_thermal", scope: !2104, file: !79, line: 277, baseType: !660, size: 8, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "use_for_apm", scope: !2104, file: !79, line: 279, baseType: !46, size: 32, offset: 736)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !2099, file: !79, line: 285, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !2099, file: !79, line: 286, baseType: !351, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_from", scope: !2099, file: !79, line: 288, baseType: !2143, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplies", scope: !2099, file: !79, line: 289, baseType: !351, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2099, file: !79, line: 290, baseType: !1614, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !2099, file: !79, line: 293, baseType: !208, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2099, file: !79, line: 296, baseType: !212, size: 5824, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "changed_work", scope: !2099, file: !79, line: 297, baseType: !625, size: 256, offset: 6272)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_register_work", scope: !2099, file: !79, line: 298, baseType: !1283, size: 704, offset: 6528)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "changed_lock", scope: !2099, file: !79, line: 299, baseType: !235, size: 32, offset: 7232)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2099, file: !79, line: 300, baseType: !660, size: 8, offset: 7264)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2099, file: !79, line: 301, baseType: !660, size: 8, offset: 7272)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !2099, file: !79, line: 302, baseType: !660, size: 8, offset: 7280)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "use_cnt", scope: !2099, file: !79, line: 303, baseType: !255, size: 32, offset: 7296)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "battery_info", scope: !2099, file: !79, line: 304, baseType: !2158, size: 64, offset: 7360)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_info", file: !79, line: 729, size: 3968, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2203, !2204, !2210, !2211, !2217, !2218, !2219, !2220, !2221}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "technology", scope: !2159, file: !79, line: 730, baseType: !7, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "energy_full_design_uwh", scope: !2159, file: !79, line: 731, baseType: !46, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "charge_full_design_uah", scope: !2159, file: !79, line: 732, baseType: !46, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_min_design_uv", scope: !2159, file: !79, line: 733, baseType: !46, size: 32, offset: 96)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_max_design_uv", scope: !2159, file: !79, line: 734, baseType: !46, size: 32, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tricklecharge_current_ua", scope: !2159, file: !79, line: 735, baseType: !46, size: 32, offset: 160)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_current_ua", scope: !2159, file: !79, line: 736, baseType: !46, size: 32, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_voltage_max_uv", scope: !2159, file: !79, line: 737, baseType: !46, size: 32, offset: 224)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "charge_term_current_ua", scope: !2159, file: !79, line: 738, baseType: !46, size: 32, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "charge_restart_voltage_uv", scope: !2159, file: !79, line: 739, baseType: !46, size: 32, offset: 288)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "overvoltage_limit_uv", scope: !2159, file: !79, line: 740, baseType: !46, size: 32, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_current_max_ua", scope: !2159, file: !79, line: 741, baseType: !46, size: 32, offset: 352)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_voltage_max_uv", scope: !2159, file: !79, line: 742, baseType: !46, size: 32, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "maintenance_charge", scope: !2159, file: !79, line: 743, baseType: !2175, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_maintenance_charge_table", file: !79, line: 434, size: 96, elements: !2177)
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "charge_current_max_ua", scope: !2176, file: !79, line: 435, baseType: !46, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "charge_voltage_max_uv", scope: !2176, file: !79, line: 436, baseType: !46, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "charge_safety_timer_minutes", scope: !2176, file: !79, line: 437, baseType: !46, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "maintenance_charge_size", scope: !2159, file: !79, line: 744, baseType: !46, size: 32, offset: 512)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "alert_low_temp_charge_current_ua", scope: !2159, file: !79, line: 745, baseType: !46, size: 32, offset: 544)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "alert_low_temp_charge_voltage_uv", scope: !2159, file: !79, line: 746, baseType: !46, size: 32, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "alert_high_temp_charge_current_ua", scope: !2159, file: !79, line: 747, baseType: !46, size: 32, offset: 608)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "alert_high_temp_charge_voltage_uv", scope: !2159, file: !79, line: 748, baseType: !46, size: 32, offset: 640)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "factory_internal_resistance_uohm", scope: !2159, file: !79, line: 749, baseType: !46, size: 32, offset: 672)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "factory_internal_resistance_charging_uohm", scope: !2159, file: !79, line: 750, baseType: !46, size: 32, offset: 704)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_temp", scope: !2159, file: !79, line: 751, baseType: !2189, size: 640, offset: 736)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 640, elements: !1818)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_min", scope: !2159, file: !79, line: 752, baseType: !46, size: 32, offset: 1376)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_max", scope: !2159, file: !79, line: 753, baseType: !46, size: 32, offset: 1408)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_min", scope: !2159, file: !79, line: 754, baseType: !46, size: 32, offset: 1440)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_max", scope: !2159, file: !79, line: 755, baseType: !46, size: 32, offset: 1472)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "temp_min", scope: !2159, file: !79, line: 756, baseType: !46, size: 32, offset: 1504)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "temp_max", scope: !2159, file: !79, line: 757, baseType: !46, size: 32, offset: 1536)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table", scope: !2159, file: !79, line: 758, baseType: !2197, size: 1280, offset: 1600)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2198, size: 1280, elements: !1818)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_ocv_table", file: !79, line: 343, size: 64, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ocv", scope: !2199, file: !79, line: 344, baseType: !46, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2199, file: !79, line: 345, baseType: !46, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table_size", scope: !2159, file: !79, line: 759, baseType: !2189, size: 640, offset: 2880)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table", scope: !2159, file: !79, line: 760, baseType: !2205, size: 64, offset: 3520)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_resistance_temp_table", file: !79, line: 348, size: 64, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2206, file: !79, line: 349, baseType: !46, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "resistance", scope: !2206, file: !79, line: 350, baseType: !46, size: 32, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table_size", scope: !2159, file: !79, line: 761, baseType: !46, size: 32, offset: 3584)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_discharging", scope: !2159, file: !79, line: 762, baseType: !2212, size: 64, offset: 3648)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_vbat_ri_table", file: !79, line: 353, size: 64, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vbat_uv", scope: !2213, file: !79, line: 354, baseType: !46, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ri_uohm", scope: !2213, file: !79, line: 355, baseType: !46, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_discharging_size", scope: !2159, file: !79, line: 763, baseType: !46, size: 32, offset: 3712)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_charging", scope: !2159, file: !79, line: 764, baseType: !2212, size: 64, offset: 3776)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_charging_size", scope: !2159, file: !79, line: 765, baseType: !46, size: 32, offset: 3840)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "bti_resistance_ohm", scope: !2159, file: !79, line: 766, baseType: !46, size: 32, offset: 3872)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "bti_resistance_tolerance", scope: !2159, file: !79, line: 767, baseType: !46, size: 32, offset: 3904)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !2099, file: !79, line: 306, baseType: !2223, size: 64, offset: 7424)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !79, line: 306, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "tcd", scope: !2099, file: !79, line: 307, baseType: !2226, size: 64, offset: 7488)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !79, line: 307, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "charging_full_trig", scope: !2099, file: !79, line: 311, baseType: !2229, size: 64, offset: 7552)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !185, line: 471, size: 704, elements: !2231)
!2231 = !{!2232, !2233, !2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2230, file: !185, line: 473, baseType: !219, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2230, file: !185, line: 474, baseType: !2234, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!46, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !185, line: 99, size: 3264, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2250, !2254, !2258, !2262, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2299, !2300, !2304, !2305, !2309, !2313}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2238, file: !185, line: 100, baseType: !219, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2238, file: !185, line: 101, baseType: !7, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !2238, file: !185, line: 102, baseType: !7, size: 32, offset: 96)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !2238, file: !185, line: 103, baseType: !7, size: 32, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !185, line: 104, baseType: !46, size: 32, offset: 160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !2238, file: !185, line: 120, baseType: !207, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !2238, file: !185, line: 137, baseType: !2247, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !2237, !184}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !2238, file: !185, line: 143, baseType: !2251, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!46, !2237, !184}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !2238, file: !185, line: 146, baseType: !2255, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!184, !2237}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !2238, file: !185, line: 160, baseType: !2259, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!46, !2237, !1317, !1317}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !2238, file: !185, line: 164, baseType: !2263, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!46, !2237, !2266, !1236, !46}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !185, line: 713, size: 64, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !2267, file: !185, line: 714, baseType: !1236, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2267, file: !185, line: 715, baseType: !46, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !2238, file: !185, line: 166, baseType: !2234, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2238, file: !185, line: 168, baseType: !211, size: 64, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2238, file: !185, line: 169, baseType: !355, size: 64, offset: 704)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2238, file: !185, line: 171, baseType: !222, size: 128, offset: 768)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !2238, file: !185, line: 172, baseType: !219, size: 64, offset: 896)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !2238, file: !185, line: 174, baseType: !207, size: 64, offset: 960)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !2238, file: !185, line: 174, baseType: !207, size: 64, offset: 1024)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !2238, file: !185, line: 175, baseType: !1219, size: 320, offset: 1088)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !2238, file: !185, line: 176, baseType: !46, size: 32, offset: 1408)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !2238, file: !185, line: 177, baseType: !46, size: 32, offset: 1440)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !2238, file: !185, line: 178, baseType: !2282, size: 64, offset: 1472)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2237}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !2238, file: !185, line: 180, baseType: !625, size: 256, offset: 1536)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !2238, file: !185, line: 181, baseType: !46, size: 32, offset: 1792)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_on", scope: !2238, file: !185, line: 182, baseType: !207, size: 64, offset: 1856)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_off", scope: !2238, file: !185, line: 183, baseType: !207, size: 64, offset: 1920)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_lock", scope: !2238, file: !185, line: 187, baseType: !483, size: 320, offset: 1984)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !2238, file: !185, line: 189, baseType: !2229, size: 64, offset: 2304)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "trig_list", scope: !2238, file: !185, line: 190, baseType: !222, size: 128, offset: 2368)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_data", scope: !2238, file: !185, line: 191, baseType: !208, size: 64, offset: 2496)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "activated", scope: !2238, file: !185, line: 193, baseType: !660, size: 8, offset: 2560)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !2238, file: !185, line: 196, baseType: !2295, size: 64, offset: 2624)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_hw_trigger_type", file: !185, line: 95, size: 32, elements: !2297)
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !2296, file: !185, line: 96, baseType: !46, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_trigger", scope: !2238, file: !185, line: 199, baseType: !219, size: 64, offset: 2688)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_is_supported", scope: !2238, file: !185, line: 209, baseType: !2301, size: 64, offset: 2752)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!46, !2237, !207}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_set", scope: !2238, file: !185, line: 220, baseType: !2301, size: 64, offset: 2816)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get", scope: !2238, file: !185, line: 232, baseType: !2306, size: 64, offset: 2880)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!46, !2237, !1317}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get_device", scope: !2238, file: !185, line: 239, baseType: !2310, size: 64, offset: 2944)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!211, !2237}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !2238, file: !185, line: 248, baseType: !560, size: 256, offset: 3008)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2230, file: !185, line: 475, baseType: !2282, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2230, file: !185, line: 478, baseType: !184, size: 32, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !2230, file: !185, line: 481, baseType: !2295, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "leddev_list_lock", scope: !2230, file: !185, line: 484, baseType: !235, size: 32, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "led_cdevs", scope: !2230, file: !185, line: 485, baseType: !222, size: 128, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "next_trig", scope: !2230, file: !185, line: 488, baseType: !222, size: 128, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2230, file: !185, line: 490, baseType: !355, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "charging_full_trig_name", scope: !2099, file: !79, line: 312, baseType: !202, size: 64, offset: 7616)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "charging_trig", scope: !2099, file: !79, line: 313, baseType: !2229, size: 64, offset: 7680)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "charging_trig_name", scope: !2099, file: !79, line: 314, baseType: !202, size: 64, offset: 7744)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "full_trig", scope: !2099, file: !79, line: 315, baseType: !2229, size: 64, offset: 7808)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "full_trig_name", scope: !2099, file: !79, line: 316, baseType: !202, size: 64, offset: 7872)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "online_trig", scope: !2099, file: !79, line: 317, baseType: !2229, size: 64, offset: 7936)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "online_trig_name", scope: !2099, file: !79, line: 318, baseType: !202, size: 64, offset: 8000)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "charging_blink_full_solid_trig", scope: !2099, file: !79, line: 319, baseType: !2229, size: 64, offset: 8064)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "charging_blink_full_solid_trig_name", scope: !2099, file: !79, line: 320, baseType: !202, size: 64, offset: 8128)
!2330 = !DILocalVariable(name: "ps_attr", scope: !2091, file: !3, line: 278, type: !1680)
!2331 = !DILocalVariable(name: "psp", scope: !2091, file: !3, line: 279, type: !106)
!2332 = !DILocalVariable(name: "value", scope: !2091, file: !3, line: 280, type: !2121)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2334, line: 15, size: 320, elements: !2335)
!2334 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2333, file: !2334, line: 16, baseType: !494, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2333, file: !2334, line: 18, baseType: !46, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2333, file: !2334, line: 19, baseType: !46, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2333, file: !2334, line: 20, baseType: !46, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2333, file: !2334, line: 21, baseType: !46, size: 32, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2333, file: !2334, line: 22, baseType: !207, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !2334, line: 23, baseType: !207, size: 64, offset: 256)
!2343 = !DIGlobalVariableExpression(var: !2344, expr: !DIExpression())
!2344 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !2345, isLocal: true, isDefinition: true)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 216, elements: !2346)
!2346 = !{!2347}
!2347 = !DISubrange(count: 27)
!2348 = !DIGlobalVariableExpression(var: !2349, expr: !DIExpression())
!2349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !2350, isLocal: true, isDefinition: true)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 352, elements: !2351)
!2351 = !{!2352}
!2352 = !DISubrange(count: 44)
!2353 = !DIGlobalVariableExpression(var: !2354, expr: !DIExpression())
!2354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 302, type: !1736, isLocal: true, isDefinition: true)
!2355 = !DIGlobalVariableExpression(var: !2356, expr: !DIExpression())
!2356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !1736, isLocal: true, isDefinition: true)
!2357 = !DIGlobalVariableExpression(var: !2358, expr: !DIExpression())
!2358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !2359, isLocal: true, isDefinition: true)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 360, elements: !2360)
!2360 = !{!2361}
!2361 = !DISubrange(count: 45)
!2362 = !DIGlobalVariableExpression(var: !2363, expr: !DIExpression())
!2363 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !1736, isLocal: true, isDefinition: true)
!2364 = !DIGlobalVariableExpression(var: !2365, expr: !DIExpression())
!2365 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !1736, isLocal: true, isDefinition: true)
!2366 = !DIGlobalVariableExpression(var: !2367, expr: !DIExpression())
!2367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !1736, isLocal: true, isDefinition: true)
!2368 = !DIGlobalVariableExpression(var: !2369, expr: !DIExpression())
!2369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !1736, isLocal: true, isDefinition: true)
!2370 = !DIGlobalVariableExpression(var: !2371, expr: !DIExpression())
!2371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !2372, isLocal: true, isDefinition: true)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 16, elements: !1108)
!2373 = !DIGlobalVariableExpression(var: !2374, expr: !DIExpression())
!2374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !2375, isLocal: true, isDefinition: true)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 24, elements: !305)
!2376 = !DIGlobalVariableExpression(var: !2377, expr: !DIExpression())
!2377 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !1755, isLocal: true, isDefinition: true)
!2378 = !DIGlobalVariableExpression(var: !2379, expr: !DIExpression())
!2379 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !1755, isLocal: true, isDefinition: true)
!2380 = !DIGlobalVariableExpression(var: !2381, expr: !DIExpression())
!2381 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_USB_TYPE_TEXT", scope: !2, file: !3, line: 62, type: !2382, isLocal: true, isDefinition: true)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 640, elements: !1770)
!2383 = !DIGlobalVariableExpression(var: !2384, expr: !DIExpression())
!2384 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !1785, isLocal: true, isDefinition: true)
!2385 = !DIGlobalVariableExpression(var: !2386, expr: !DIExpression())
!2386 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !1903, isLocal: true, isDefinition: true)
!2387 = !DIGlobalVariableExpression(var: !2388, expr: !DIExpression())
!2388 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !1830, isLocal: true, isDefinition: true)
!2389 = !DIGlobalVariableExpression(var: !2390, expr: !DIExpression())
!2390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !1949, isLocal: true, isDefinition: true)
!2391 = !DIGlobalVariableExpression(var: !2392, expr: !DIExpression())
!2392 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT", scope: !2, file: !3, line: 138, type: !2088, isLocal: true, isDefinition: true)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 128, elements: !1108)
!2394 = !{i32 7, !"Dwarf Version", i32 5}
!2395 = !{i32 2, !"Debug Info Version", i32 3}
!2396 = !{i32 1, !"wchar_size", i32 2}
!2397 = !{i32 8, !"cf-protection-branch", i32 1}
!2398 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2399 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2400 = !{i32 1, !"Code Model", i32 2}
!2401 = !{i32 1, !"override-stack-alignment", i32 8}
!2402 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2403 = distinct !DISubprogram(name: "power_supply_init_attrs", scope: !3, file: !3, line: 409, type: !2404, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2407)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!2407 = !{!2408, !2409, !2410}
!2408 = !DILocalVariable(name: "dev_type", arg: 1, scope: !2403, file: !3, line: 409, type: !2406)
!2409 = !DILocalVariable(name: "i", scope: !2403, file: !3, line: 411, type: !46)
!2410 = !DILocalVariable(name: "attr", scope: !2411, file: !3, line: 416, type: !1696)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 415, column: 55)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 415, column: 2)
!2413 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 415, column: 2)
!2414 = !DILocation(line: 409, column: 50, scope: !2403)
!2415 = !DILocation(line: 411, column: 2, scope: !2403)
!2416 = !DILocation(line: 411, column: 6, scope: !2403)
!2417 = !DILocation(line: 413, column: 2, scope: !2403)
!2418 = !DILocation(line: 413, column: 12, scope: !2403)
!2419 = !DILocation(line: 413, column: 19, scope: !2403)
!2420 = !DILocation(line: 415, column: 9, scope: !2413)
!2421 = !DILocation(line: 415, column: 7, scope: !2413)
!2422 = !DILocation(line: 415, column: 14, scope: !2412)
!2423 = !DILocation(line: 415, column: 16, scope: !2412)
!2424 = !DILocation(line: 415, column: 2, scope: !2413)
!2425 = !DILocation(line: 416, column: 3, scope: !2411)
!2426 = !DILocation(line: 416, column: 28, scope: !2411)
!2427 = !DILocation(line: 418, column: 27, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 418, column: 7)
!2429 = !DILocation(line: 418, column: 8, scope: !2428)
!2430 = !DILocation(line: 418, column: 30, scope: !2428)
!2431 = !DILocation(line: 418, column: 7, scope: !2411)
!2432 = !DILocation(line: 419, column: 4, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 419, column: 4)
!2434 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 418, column: 41)
!2435 = !DILocation(line: 419, column: 4, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 419, column: 4)
!2437 = !DILocation(line: 421, column: 31, scope: !2434)
!2438 = !DILocation(line: 421, column: 12, scope: !2434)
!2439 = !DILocation(line: 421, column: 34, scope: !2434)
!2440 = !DILocation(line: 421, column: 56, scope: !2434)
!2441 = !DILocation(line: 421, column: 4, scope: !2434)
!2442 = !DILocation(line: 422, column: 3, scope: !2434)
!2443 = !DILocation(line: 423, column: 36, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 422, column: 10)
!2445 = !DILocation(line: 423, column: 17, scope: !2444)
!2446 = !DILocation(line: 423, column: 39, scope: !2444)
!2447 = !DILocation(line: 423, column: 4, scope: !2444)
!2448 = !DILocation(line: 426, column: 30, scope: !2411)
!2449 = !DILocation(line: 426, column: 11, scope: !2411)
!2450 = !DILocation(line: 426, column: 33, scope: !2411)
!2451 = !DILocation(line: 426, column: 8, scope: !2411)
!2452 = !DILocation(line: 428, column: 40, scope: !2411)
!2453 = !DILocation(line: 428, column: 21, scope: !2411)
!2454 = !DILocation(line: 428, column: 43, scope: !2411)
!2455 = !DILocation(line: 428, column: 3, scope: !2411)
!2456 = !DILocation(line: 428, column: 9, scope: !2411)
!2457 = !DILocation(line: 428, column: 14, scope: !2411)
!2458 = !DILocation(line: 428, column: 19, scope: !2411)
!2459 = !DILocation(line: 429, column: 3, scope: !2411)
!2460 = !DILocation(line: 429, column: 9, scope: !2411)
!2461 = !DILocation(line: 429, column: 14, scope: !2411)
!2462 = !DILocation(line: 430, column: 3, scope: !2411)
!2463 = !DILocation(line: 430, column: 9, scope: !2411)
!2464 = !DILocation(line: 430, column: 15, scope: !2411)
!2465 = !DILocation(line: 431, column: 30, scope: !2411)
!2466 = !DILocation(line: 431, column: 36, scope: !2411)
!2467 = !DILocation(line: 431, column: 24, scope: !2411)
!2468 = !DILocation(line: 431, column: 3, scope: !2411)
!2469 = !DILocation(line: 431, column: 27, scope: !2411)
!2470 = !DILocation(line: 432, column: 2, scope: !2412)
!2471 = !DILocation(line: 432, column: 2, scope: !2411)
!2472 = !DILocation(line: 415, column: 51, scope: !2412)
!2473 = !DILocation(line: 415, column: 2, scope: !2412)
!2474 = distinct !{!2474, !2424, !2475, !2476, !2477}
!2475 = !DILocation(line: 432, column: 2, scope: !2413)
!2476 = !{!"llvm.loop.mustprogress"}
!2477 = !{!"llvm.loop.unroll.disable"}
!2478 = !DILocation(line: 433, column: 1, scope: !2403)
!2479 = !DISubprogram(name: "_printk", scope: !2480, file: !2480, line: 153, type: !2481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2480 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!46, !219, null}
!2483 = !DISubprogram(name: "sprintf", scope: !2484, file: !2484, line: 10, type: !2485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2484 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!46, !202, !219, null}
!2487 = distinct !DISubprogram(name: "str_to_lower", scope: !3, file: !3, line: 401, type: !2488, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !202}
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "str", arg: 1, scope: !2487, file: !3, line: 401, type: !202)
!2492 = !DILocation(line: 401, column: 32, scope: !2487)
!2493 = !DILocation(line: 403, column: 2, scope: !2487)
!2494 = !DILocation(line: 403, column: 10, scope: !2487)
!2495 = !DILocation(line: 403, column: 9, scope: !2487)
!2496 = !DILocation(line: 404, column: 10, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 403, column: 15)
!2498 = !DILocation(line: 404, column: 4, scope: !2497)
!2499 = !DILocation(line: 404, column: 8, scope: !2497)
!2500 = !DILocation(line: 405, column: 6, scope: !2497)
!2501 = distinct !{!2501, !2493, !2502, !2476, !2477}
!2502 = !DILocation(line: 406, column: 2, scope: !2487)
!2503 = !DILocation(line: 407, column: 1, scope: !2487)
!2504 = !DILocation(line: 273, column: 58, scope: !2091)
!2505 = !DILocation(line: 274, column: 33, scope: !2091)
!2506 = !DILocation(line: 275, column: 14, scope: !2091)
!2507 = !DILocation(line: 276, column: 2, scope: !2091)
!2508 = !DILocation(line: 276, column: 10, scope: !2091)
!2509 = !DILocation(line: 277, column: 2, scope: !2091)
!2510 = !DILocation(line: 277, column: 23, scope: !2091)
!2511 = !DILocation(line: 277, column: 45, scope: !2091)
!2512 = !DILocation(line: 277, column: 29, scope: !2091)
!2513 = !DILocation(line: 278, column: 2, scope: !2091)
!2514 = !DILocation(line: 278, column: 28, scope: !2091)
!2515 = !DILocation(line: 278, column: 49, scope: !2091)
!2516 = !DILocation(line: 278, column: 38, scope: !2091)
!2517 = !DILocation(line: 279, column: 2, scope: !2091)
!2518 = !DILocation(line: 279, column: 29, scope: !2091)
!2519 = !DILocation(line: 279, column: 48, scope: !2091)
!2520 = !DILocation(line: 279, column: 35, scope: !2091)
!2521 = !DILocation(line: 280, column: 2, scope: !2091)
!2522 = !DILocation(line: 280, column: 29, scope: !2091)
!2523 = !DILocation(line: 282, column: 6, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 282, column: 6)
!2525 = !DILocation(line: 282, column: 10, scope: !2524)
!2526 = !DILocation(line: 282, column: 6, scope: !2091)
!2527 = !DILocation(line: 283, column: 18, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 282, column: 37)
!2529 = !DILocation(line: 283, column: 23, scope: !2528)
!2530 = !DILocation(line: 283, column: 29, scope: !2528)
!2531 = !DILocation(line: 283, column: 16, scope: !2528)
!2532 = !DILocation(line: 284, column: 2, scope: !2528)
!2533 = !DILocation(line: 285, column: 35, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 284, column: 9)
!2535 = !DILocation(line: 285, column: 40, scope: !2534)
!2536 = !DILocation(line: 285, column: 9, scope: !2534)
!2537 = !DILocation(line: 285, column: 7, scope: !2534)
!2538 = !DILocation(line: 287, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 287, column: 7)
!2540 = !DILocation(line: 287, column: 11, scope: !2539)
!2541 = !DILocation(line: 287, column: 7, scope: !2534)
!2542 = !DILocation(line: 288, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 288, column: 8)
!2544 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 287, column: 16)
!2545 = !DILocation(line: 288, column: 12, scope: !2543)
!2546 = !DILocation(line: 288, column: 8, scope: !2544)
!2547 = !DILocation(line: 289, column: 5, scope: !2543)
!2548 = !DILocation(line: 292, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 292, column: 13)
!2550 = !DILocation(line: 292, column: 17, scope: !2549)
!2551 = !DILocation(line: 292, column: 28, scope: !2549)
!2552 = !DILocation(line: 292, column: 31, scope: !2549)
!2553 = !DILocation(line: 292, column: 35, scope: !2549)
!2554 = !DILocation(line: 292, column: 13, scope: !2543)
!2555 = !DILocation(line: 293, column: 5, scope: !2549)
!2556 = !DILocation(line: 293, column: 5, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 293, column: 5)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 293, column: 5)
!2559 = !DILocation(line: 293, column: 5, scope: !2558)
!2560 = !DILocation(line: 293, column: 5, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 293, column: 5)
!2562 = !DILocation(line: 293, column: 5, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 293, column: 5)
!2564 = !DILocation(line: 296, column: 11, scope: !2544)
!2565 = !DILocation(line: 296, column: 4, scope: !2544)
!2566 = !DILocation(line: 300, column: 6, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 300, column: 6)
!2568 = !DILocation(line: 300, column: 15, scope: !2567)
!2569 = !DILocation(line: 300, column: 31, scope: !2567)
!2570 = !DILocation(line: 300, column: 35, scope: !2567)
!2571 = !DILocation(line: 301, column: 12, scope: !2567)
!2572 = !DILocation(line: 301, column: 21, scope: !2567)
!2573 = !DILocation(line: 301, column: 30, scope: !2567)
!2574 = !DILocation(line: 301, column: 19, scope: !2567)
!2575 = !DILocation(line: 301, column: 46, scope: !2567)
!2576 = !DILocation(line: 301, column: 55, scope: !2567)
!2577 = !DILocation(line: 301, column: 62, scope: !2567)
!2578 = !DILocation(line: 300, column: 6, scope: !2091)
!2579 = !DILocation(line: 302, column: 21, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 301, column: 68)
!2581 = !DILocation(line: 302, column: 34, scope: !2580)
!2582 = !DILocation(line: 302, column: 43, scope: !2580)
!2583 = !DILocation(line: 302, column: 61, scope: !2580)
!2584 = !DILocation(line: 302, column: 10, scope: !2580)
!2585 = !DILocation(line: 302, column: 3, scope: !2580)
!2586 = !DILocation(line: 305, column: 10, scope: !2091)
!2587 = !DILocation(line: 305, column: 2, scope: !2091)
!2588 = !DILocation(line: 307, column: 36, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 305, column: 15)
!2590 = !DILocation(line: 307, column: 41, scope: !2589)
!2591 = !DILocation(line: 307, column: 46, scope: !2589)
!2592 = !DILocation(line: 308, column: 15, scope: !2589)
!2593 = !DILocation(line: 307, column: 9, scope: !2589)
!2594 = !DILocation(line: 307, column: 7, scope: !2589)
!2595 = !DILocation(line: 309, column: 3, scope: !2589)
!2596 = !DILocation(line: 311, column: 20, scope: !2589)
!2597 = !DILocation(line: 311, column: 39, scope: !2589)
!2598 = !DILocation(line: 311, column: 9, scope: !2589)
!2599 = !DILocation(line: 311, column: 7, scope: !2589)
!2600 = !DILocation(line: 312, column: 3, scope: !2589)
!2601 = !DILocation(line: 314, column: 20, scope: !2589)
!2602 = !DILocation(line: 314, column: 39, scope: !2589)
!2603 = !DILocation(line: 314, column: 9, scope: !2589)
!2604 = !DILocation(line: 314, column: 7, scope: !2589)
!2605 = !DILocation(line: 315, column: 2, scope: !2589)
!2606 = !DILocation(line: 317, column: 9, scope: !2091)
!2607 = !DILocation(line: 317, column: 2, scope: !2091)
!2608 = !DILocation(line: 318, column: 1, scope: !2091)
!2609 = distinct !DISubprogram(name: "power_supply_store_property", scope: !3, file: !3, line: 320, type: !1699, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2610)
!2610 = !{!2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2611 = !DILocalVariable(name: "dev", arg: 1, scope: !2609, file: !3, line: 320, type: !211)
!2612 = !DILocalVariable(name: "attr", arg: 2, scope: !2609, file: !3, line: 321, type: !1696)
!2613 = !DILocalVariable(name: "buf", arg: 3, scope: !2609, file: !3, line: 322, type: !219)
!2614 = !DILocalVariable(name: "count", arg: 4, scope: !2609, file: !3, line: 322, type: !351)
!2615 = !DILocalVariable(name: "ret", scope: !2609, file: !3, line: 323, type: !336)
!2616 = !DILocalVariable(name: "psy", scope: !2609, file: !3, line: 324, type: !2098)
!2617 = !DILocalVariable(name: "ps_attr", scope: !2609, file: !3, line: 325, type: !1680)
!2618 = !DILocalVariable(name: "psp", scope: !2609, file: !3, line: 326, type: !106)
!2619 = !DILocalVariable(name: "value", scope: !2609, file: !3, line: 327, type: !2121)
!2620 = !DILocalVariable(name: "long_val", scope: !2621, file: !3, line: 340, type: !340)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 339, column: 15)
!2622 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 339, column: 6)
!2623 = !DILocation(line: 320, column: 59, scope: !2609)
!2624 = !DILocation(line: 321, column: 34, scope: !2609)
!2625 = !DILocation(line: 322, column: 21, scope: !2609)
!2626 = !DILocation(line: 322, column: 33, scope: !2609)
!2627 = !DILocation(line: 323, column: 2, scope: !2609)
!2628 = !DILocation(line: 323, column: 10, scope: !2609)
!2629 = !DILocation(line: 324, column: 2, scope: !2609)
!2630 = !DILocation(line: 324, column: 23, scope: !2609)
!2631 = !DILocation(line: 324, column: 45, scope: !2609)
!2632 = !DILocation(line: 324, column: 29, scope: !2609)
!2633 = !DILocation(line: 325, column: 2, scope: !2609)
!2634 = !DILocation(line: 325, column: 28, scope: !2609)
!2635 = !DILocation(line: 325, column: 49, scope: !2609)
!2636 = !DILocation(line: 325, column: 38, scope: !2609)
!2637 = !DILocation(line: 326, column: 2, scope: !2609)
!2638 = !DILocation(line: 326, column: 29, scope: !2609)
!2639 = !DILocation(line: 326, column: 48, scope: !2609)
!2640 = !DILocation(line: 326, column: 35, scope: !2609)
!2641 = !DILocation(line: 327, column: 2, scope: !2609)
!2642 = !DILocation(line: 327, column: 29, scope: !2609)
!2643 = !DILocation(line: 329, column: 6, scope: !2609)
!2644 = !DILocation(line: 330, column: 6, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 330, column: 6)
!2646 = !DILocation(line: 330, column: 15, scope: !2645)
!2647 = !DILocation(line: 330, column: 31, scope: !2645)
!2648 = !DILocation(line: 330, column: 6, scope: !2609)
!2649 = !DILocation(line: 331, column: 30, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 330, column: 36)
!2651 = !DILocation(line: 331, column: 39, scope: !2650)
!2652 = !DILocation(line: 332, column: 9, scope: !2650)
!2653 = !DILocation(line: 332, column: 18, scope: !2650)
!2654 = !DILocation(line: 332, column: 35, scope: !2650)
!2655 = !DILocation(line: 331, column: 9, scope: !2650)
!2656 = !DILocation(line: 331, column: 7, scope: !2650)
!2657 = !DILocation(line: 333, column: 2, scope: !2650)
!2658 = !DILocation(line: 339, column: 6, scope: !2622)
!2659 = !DILocation(line: 339, column: 10, scope: !2622)
!2660 = !DILocation(line: 339, column: 6, scope: !2609)
!2661 = !DILocation(line: 340, column: 3, scope: !2621)
!2662 = !DILocation(line: 340, column: 8, scope: !2621)
!2663 = !DILocation(line: 342, column: 17, scope: !2621)
!2664 = !DILocation(line: 342, column: 9, scope: !2621)
!2665 = !DILocation(line: 342, column: 7, scope: !2621)
!2666 = !DILocation(line: 343, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 343, column: 7)
!2668 = !DILocation(line: 343, column: 11, scope: !2667)
!2669 = !DILocation(line: 343, column: 7, scope: !2621)
!2670 = !DILocation(line: 344, column: 11, scope: !2667)
!2671 = !DILocation(line: 344, column: 4, scope: !2667)
!2672 = !DILocation(line: 346, column: 9, scope: !2621)
!2673 = !DILocation(line: 346, column: 7, scope: !2621)
!2674 = !DILocation(line: 347, column: 2, scope: !2622)
!2675 = !DILocation(line: 347, column: 2, scope: !2621)
!2676 = !DILocation(line: 349, column: 17, scope: !2609)
!2677 = !DILocation(line: 349, column: 15, scope: !2609)
!2678 = !DILocation(line: 351, column: 34, scope: !2609)
!2679 = !DILocation(line: 351, column: 39, scope: !2609)
!2680 = !DILocation(line: 351, column: 8, scope: !2609)
!2681 = !DILocation(line: 351, column: 6, scope: !2609)
!2682 = !DILocation(line: 352, column: 6, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 352, column: 6)
!2684 = !DILocation(line: 352, column: 10, scope: !2683)
!2685 = !DILocation(line: 352, column: 6, scope: !2609)
!2686 = !DILocation(line: 353, column: 10, scope: !2683)
!2687 = !DILocation(line: 353, column: 3, scope: !2683)
!2688 = !DILocation(line: 355, column: 9, scope: !2609)
!2689 = !DILocation(line: 355, column: 2, scope: !2609)
!2690 = !DILocation(line: 356, column: 1, scope: !2609)
!2691 = distinct !DISubprogram(name: "power_supply_uevent", scope: !3, file: !3, line: 466, type: !892, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2692)
!2692 = !{!2693, !2694, !2695, !2698, !2699, !2701, !2702, !2703, !2704}
!2693 = !DILocalVariable(name: "dev", arg: 1, scope: !2691, file: !3, line: 466, type: !894)
!2694 = !DILocalVariable(name: "env", arg: 2, scope: !2691, file: !3, line: 466, type: !300)
!2695 = !DILocalVariable(name: "psy", scope: !2691, file: !3, line: 468, type: !2696)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2698 = !DILocalVariable(name: "battery_props", scope: !2691, file: !3, line: 469, type: !2113)
!2699 = !DILocalVariable(name: "psy_drv_properties", scope: !2691, file: !3, line: 471, type: !2700)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 640, elements: !1770)
!2701 = !DILocalVariable(name: "ret", scope: !2691, file: !3, line: 473, type: !46)
!2702 = !DILocalVariable(name: "j", scope: !2691, file: !3, line: 473, type: !46)
!2703 = !DILocalVariable(name: "prop_buf", scope: !2691, file: !3, line: 474, type: !202)
!2704 = !DILabel(scope: !2691, name: "out", file: !3, line: 520)
!2705 = !DILocation(line: 466, column: 46, scope: !2691)
!2706 = !DILocation(line: 466, column: 75, scope: !2691)
!2707 = !DILocation(line: 468, column: 2, scope: !2691)
!2708 = !DILocation(line: 468, column: 29, scope: !2691)
!2709 = !DILocation(line: 468, column: 51, scope: !2691)
!2710 = !DILocation(line: 468, column: 35, scope: !2691)
!2711 = !DILocation(line: 469, column: 2, scope: !2691)
!2712 = !DILocation(line: 469, column: 36, scope: !2691)
!2713 = !DILocation(line: 471, column: 2, scope: !2691)
!2714 = !DILocation(line: 471, column: 16, scope: !2691)
!2715 = !DILocation(line: 473, column: 2, scope: !2691)
!2716 = !DILocation(line: 473, column: 6, scope: !2691)
!2717 = !DILocation(line: 473, column: 15, scope: !2691)
!2718 = !DILocation(line: 474, column: 2, scope: !2691)
!2719 = !DILocation(line: 474, column: 8, scope: !2691)
!2720 = !DILocation(line: 476, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 476, column: 6)
!2722 = !DILocation(line: 476, column: 11, scope: !2721)
!2723 = !DILocation(line: 476, column: 15, scope: !2721)
!2724 = !DILocation(line: 476, column: 20, scope: !2721)
!2725 = !DILocation(line: 476, column: 6, scope: !2691)
!2726 = !DILocation(line: 478, column: 10, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 476, column: 26)
!2728 = !DILocation(line: 478, column: 3, scope: !2727)
!2729 = !DILocation(line: 481, column: 23, scope: !2691)
!2730 = !DILocation(line: 481, column: 52, scope: !2691)
!2731 = !DILocation(line: 481, column: 57, scope: !2691)
!2732 = !DILocation(line: 481, column: 63, scope: !2691)
!2733 = !DILocation(line: 481, column: 8, scope: !2691)
!2734 = !DILocation(line: 481, column: 6, scope: !2691)
!2735 = !DILocation(line: 482, column: 6, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 482, column: 6)
!2737 = !DILocation(line: 482, column: 6, scope: !2691)
!2738 = !DILocation(line: 483, column: 10, scope: !2736)
!2739 = !DILocation(line: 483, column: 3, scope: !2736)
!2740 = !DILocation(line: 489, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 489, column: 6)
!2742 = !DILocation(line: 489, column: 11, scope: !2741)
!2743 = !{i8 0, i8 2}
!2744 = !DILocation(line: 489, column: 6, scope: !2691)
!2745 = !DILocation(line: 490, column: 3, scope: !2741)
!2746 = !DILocation(line: 492, column: 21, scope: !2691)
!2747 = !DILocation(line: 492, column: 13, scope: !2691)
!2748 = !DILocation(line: 492, column: 11, scope: !2691)
!2749 = !DILocation(line: 493, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 493, column: 6)
!2751 = !DILocation(line: 493, column: 6, scope: !2691)
!2752 = !DILocation(line: 494, column: 3, scope: !2750)
!2753 = !DILocation(line: 496, column: 24, scope: !2691)
!2754 = !DILocation(line: 496, column: 29, scope: !2691)
!2755 = !DILocation(line: 496, column: 58, scope: !2691)
!2756 = !DILocation(line: 496, column: 8, scope: !2691)
!2757 = !DILocation(line: 496, column: 6, scope: !2691)
!2758 = !DILocation(line: 497, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 497, column: 6)
!2760 = !DILocation(line: 497, column: 6, scope: !2691)
!2761 = !DILocation(line: 498, column: 3, scope: !2759)
!2762 = !DILocation(line: 500, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 500, column: 2)
!2764 = !DILocation(line: 500, column: 7, scope: !2763)
!2765 = !DILocation(line: 500, column: 14, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 500, column: 2)
!2767 = !DILocation(line: 500, column: 18, scope: !2766)
!2768 = !DILocation(line: 500, column: 23, scope: !2766)
!2769 = !DILocation(line: 500, column: 29, scope: !2766)
!2770 = !DILocation(line: 500, column: 16, scope: !2766)
!2771 = !DILocation(line: 500, column: 2, scope: !2763)
!2772 = !DILocation(line: 501, column: 11, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 500, column: 50)
!2774 = !DILocation(line: 501, column: 16, scope: !2773)
!2775 = !DILocation(line: 501, column: 22, scope: !2773)
!2776 = !DILocation(line: 501, column: 33, scope: !2773)
!2777 = !DILocation(line: 501, column: 37, scope: !2773)
!2778 = !DILocation(line: 501, column: 3, scope: !2773)
!2779 = !DILocation(line: 502, column: 25, scope: !2773)
!2780 = !DILocation(line: 502, column: 30, scope: !2773)
!2781 = !DILocation(line: 502, column: 35, scope: !2773)
!2782 = !DILocation(line: 502, column: 40, scope: !2773)
!2783 = !DILocation(line: 502, column: 46, scope: !2773)
!2784 = !DILocation(line: 502, column: 57, scope: !2773)
!2785 = !DILocation(line: 503, column: 11, scope: !2773)
!2786 = !DILocation(line: 502, column: 9, scope: !2773)
!2787 = !DILocation(line: 502, column: 7, scope: !2773)
!2788 = !DILocation(line: 504, column: 7, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 504, column: 7)
!2790 = !DILocation(line: 504, column: 7, scope: !2773)
!2791 = !DILocation(line: 505, column: 4, scope: !2789)
!2792 = !DILocation(line: 506, column: 2, scope: !2773)
!2793 = !DILocation(line: 500, column: 46, scope: !2766)
!2794 = !DILocation(line: 500, column: 2, scope: !2766)
!2795 = distinct !{!2795, !2771, !2796, !2476, !2477}
!2796 = !DILocation(line: 506, column: 2, scope: !2763)
!2797 = !DILocation(line: 508, column: 9, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 508, column: 2)
!2799 = !DILocation(line: 508, column: 7, scope: !2798)
!2800 = !DILocation(line: 508, column: 14, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 508, column: 2)
!2802 = !DILocation(line: 508, column: 18, scope: !2801)
!2803 = !DILocation(line: 508, column: 16, scope: !2801)
!2804 = !DILocation(line: 508, column: 2, scope: !2798)
!2805 = !DILocation(line: 509, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 509, column: 7)
!2807 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 508, column: 66)
!2808 = !DILocation(line: 509, column: 7, scope: !2807)
!2809 = !DILocation(line: 510, column: 4, scope: !2806)
!2810 = !DILocation(line: 511, column: 43, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 511, column: 7)
!2812 = !DILocation(line: 511, column: 48, scope: !2811)
!2813 = !DILocation(line: 512, column: 5, scope: !2811)
!2814 = !DILocation(line: 512, column: 19, scope: !2811)
!2815 = !DILocation(line: 511, column: 8, scope: !2811)
!2816 = !DILocation(line: 511, column: 7, scope: !2807)
!2817 = !DILocation(line: 513, column: 4, scope: !2811)
!2818 = !DILocation(line: 514, column: 25, scope: !2807)
!2819 = !DILocation(line: 514, column: 30, scope: !2807)
!2820 = !DILocation(line: 514, column: 35, scope: !2807)
!2821 = !DILocation(line: 514, column: 49, scope: !2807)
!2822 = !DILocation(line: 515, column: 10, scope: !2807)
!2823 = !DILocation(line: 514, column: 9, scope: !2807)
!2824 = !DILocation(line: 514, column: 7, scope: !2807)
!2825 = !DILocation(line: 516, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 516, column: 7)
!2827 = !DILocation(line: 516, column: 7, scope: !2807)
!2828 = !DILocation(line: 517, column: 4, scope: !2826)
!2829 = !DILocation(line: 518, column: 2, scope: !2807)
!2830 = !DILocation(line: 508, column: 62, scope: !2801)
!2831 = !DILocation(line: 508, column: 2, scope: !2801)
!2832 = distinct !{!2832, !2804, !2833, !2476, !2477}
!2833 = !DILocation(line: 518, column: 2, scope: !2798)
!2834 = !DILocation(line: 520, column: 1, scope: !2691)
!2835 = !DILocation(line: 521, column: 2, scope: !2691)
!2836 = !DILocation(line: 523, column: 9, scope: !2691)
!2837 = !DILocation(line: 523, column: 2, scope: !2691)
!2838 = !DILocation(line: 524, column: 1, scope: !2691)
!2839 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !26, file: !26, line: 916, type: !2840, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!208, !894}
!2842 = !{!2843}
!2843 = !DILocalVariable(name: "dev", arg: 1, scope: !2839, file: !26, line: 916, type: !894)
!2844 = !DILocation(line: 916, column: 58, scope: !2839)
!2845 = !DILocation(line: 918, column: 9, scope: !2839)
!2846 = !DILocation(line: 918, column: 14, scope: !2839)
!2847 = !DILocation(line: 918, column: 2, scope: !2839)
!2848 = !DISubprogram(name: "add_uevent_var", scope: !216, file: !216, line: 220, type: !2849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!46, !300, !219, null}
!2851 = !DISubprogram(name: "get_zeroed_page", scope: !2852, file: !2852, line: 290, type: !2853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2852 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!207, !204}
!2855 = distinct !DISubprogram(name: "add_prop_uevent", scope: !3, file: !3, line: 435, type: !2856, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!46, !894, !300, !106, !202}
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866}
!2859 = !DILocalVariable(name: "dev", arg: 1, scope: !2855, file: !3, line: 435, type: !894)
!2860 = !DILocalVariable(name: "env", arg: 2, scope: !2855, file: !3, line: 435, type: !300)
!2861 = !DILocalVariable(name: "prop", arg: 3, scope: !2855, file: !3, line: 436, type: !106)
!2862 = !DILocalVariable(name: "prop_buf", arg: 4, scope: !2855, file: !3, line: 436, type: !202)
!2863 = !DILocalVariable(name: "ret", scope: !2855, file: !3, line: 438, type: !46)
!2864 = !DILocalVariable(name: "pwr_attr", scope: !2855, file: !3, line: 439, type: !1680)
!2865 = !DILocalVariable(name: "dev_attr", scope: !2855, file: !3, line: 440, type: !1696)
!2866 = !DILocalVariable(name: "line", scope: !2855, file: !3, line: 441, type: !202)
!2867 = !DILocation(line: 435, column: 49, scope: !2855)
!2868 = !DILocation(line: 435, column: 78, scope: !2855)
!2869 = !DILocation(line: 436, column: 34, scope: !2855)
!2870 = !DILocation(line: 436, column: 46, scope: !2855)
!2871 = !DILocation(line: 438, column: 2, scope: !2855)
!2872 = !DILocation(line: 438, column: 6, scope: !2855)
!2873 = !DILocation(line: 439, column: 2, scope: !2855)
!2874 = !DILocation(line: 439, column: 28, scope: !2855)
!2875 = !DILocation(line: 440, column: 2, scope: !2855)
!2876 = !DILocation(line: 440, column: 27, scope: !2855)
!2877 = !DILocation(line: 441, column: 2, scope: !2855)
!2878 = !DILocation(line: 441, column: 8, scope: !2855)
!2879 = !DILocation(line: 443, column: 33, scope: !2855)
!2880 = !DILocation(line: 443, column: 14, scope: !2855)
!2881 = !DILocation(line: 443, column: 11, scope: !2855)
!2882 = !DILocation(line: 444, column: 14, scope: !2855)
!2883 = !DILocation(line: 444, column: 24, scope: !2855)
!2884 = !DILocation(line: 444, column: 11, scope: !2855)
!2885 = !DILocation(line: 446, column: 52, scope: !2855)
!2886 = !DILocation(line: 446, column: 57, scope: !2855)
!2887 = !DILocation(line: 446, column: 67, scope: !2855)
!2888 = !DILocation(line: 446, column: 8, scope: !2855)
!2889 = !DILocation(line: 446, column: 6, scope: !2855)
!2890 = !DILocation(line: 447, column: 6, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 447, column: 6)
!2892 = !DILocation(line: 447, column: 10, scope: !2891)
!2893 = !DILocation(line: 447, column: 21, scope: !2891)
!2894 = !DILocation(line: 447, column: 24, scope: !2891)
!2895 = !DILocation(line: 447, column: 28, scope: !2891)
!2896 = !DILocation(line: 447, column: 6, scope: !2855)
!2897 = !DILocation(line: 452, column: 3, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 447, column: 41)
!2899 = !DILocation(line: 455, column: 6, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 455, column: 6)
!2901 = !DILocation(line: 455, column: 10, scope: !2900)
!2902 = !DILocation(line: 455, column: 6, scope: !2855)
!2903 = !DILocation(line: 456, column: 10, scope: !2900)
!2904 = !DILocation(line: 456, column: 3, scope: !2900)
!2905 = !DILocation(line: 458, column: 16, scope: !2855)
!2906 = !DILocation(line: 458, column: 9, scope: !2855)
!2907 = !DILocation(line: 458, column: 7, scope: !2855)
!2908 = !DILocation(line: 459, column: 6, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 459, column: 6)
!2910 = !DILocation(line: 459, column: 6, scope: !2855)
!2911 = !DILocation(line: 460, column: 4, scope: !2909)
!2912 = !DILocation(line: 460, column: 9, scope: !2909)
!2913 = !DILocation(line: 460, column: 3, scope: !2909)
!2914 = !DILocation(line: 462, column: 24, scope: !2855)
!2915 = !DILocation(line: 463, column: 10, scope: !2855)
!2916 = !DILocation(line: 463, column: 20, scope: !2855)
!2917 = !DILocation(line: 463, column: 31, scope: !2855)
!2918 = !DILocation(line: 462, column: 9, scope: !2855)
!2919 = !DILocation(line: 462, column: 2, scope: !2855)
!2920 = !DILocation(line: 464, column: 1, scope: !2855)
!2921 = distinct !DISubprogram(name: "set_bit", scope: !2922, file: !2922, line: 26, type: !2923, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2927)
!2922 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !340, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !207)
!2927 = !{!2928, !2929}
!2928 = !DILocalVariable(name: "nr", arg: 1, scope: !2921, file: !2922, line: 26, type: !340)
!2929 = !DILocalVariable(name: "addr", arg: 2, scope: !2921, file: !2922, line: 26, type: !2925)
!2930 = !DILocation(line: 26, column: 42, scope: !2921)
!2931 = !DILocation(line: 26, column: 70, scope: !2921)
!2932 = !DILocation(line: 28, column: 26, scope: !2921)
!2933 = !DILocation(line: 28, column: 33, scope: !2921)
!2934 = !DILocation(line: 28, column: 31, scope: !2921)
!2935 = !DILocation(line: 28, column: 2, scope: !2921)
!2936 = !DILocation(line: 29, column: 15, scope: !2921)
!2937 = !DILocation(line: 29, column: 19, scope: !2921)
!2938 = !DILocation(line: 29, column: 2, scope: !2921)
!2939 = !DILocation(line: 30, column: 1, scope: !2921)
!2940 = distinct !DISubprogram(name: "const_test_bit", scope: !2941, file: !2941, line: 166, type: !2942, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2946)
!2941 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!660, !207, !2944}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2946 = !{!2947, !2948, !2949, !2950, !2951}
!2947 = !DILocalVariable(name: "nr", arg: 1, scope: !2940, file: !2941, line: 166, type: !207)
!2948 = !DILocalVariable(name: "addr", arg: 2, scope: !2940, file: !2941, line: 166, type: !2944)
!2949 = !DILocalVariable(name: "p", scope: !2940, file: !2941, line: 168, type: !209)
!2950 = !DILocalVariable(name: "mask", scope: !2940, file: !2941, line: 169, type: !207)
!2951 = !DILocalVariable(name: "val", scope: !2940, file: !2941, line: 170, type: !207)
!2952 = !DILocation(line: 166, column: 30, scope: !2940)
!2953 = !DILocation(line: 166, column: 64, scope: !2940)
!2954 = !DILocation(line: 168, column: 2, scope: !2940)
!2955 = !DILocation(line: 168, column: 23, scope: !2940)
!2956 = !DILocation(line: 168, column: 50, scope: !2940)
!2957 = !DILocation(line: 168, column: 57, scope: !2940)
!2958 = !DILocation(line: 168, column: 55, scope: !2940)
!2959 = !DILocation(line: 169, column: 2, scope: !2940)
!2960 = !DILocation(line: 169, column: 16, scope: !2940)
!2961 = !DILocation(line: 169, column: 23, scope: !2940)
!2962 = !DILocation(line: 170, column: 2, scope: !2940)
!2963 = !DILocation(line: 170, column: 16, scope: !2940)
!2964 = !DILocation(line: 170, column: 23, scope: !2940)
!2965 = !DILocation(line: 170, column: 22, scope: !2940)
!2966 = !DILocation(line: 172, column: 12, scope: !2940)
!2967 = !DILocation(line: 172, column: 18, scope: !2940)
!2968 = !DILocation(line: 172, column: 16, scope: !2940)
!2969 = !DILocation(line: 172, column: 10, scope: !2940)
!2970 = !DILocation(line: 172, column: 9, scope: !2940)
!2971 = !DILocation(line: 173, column: 1, scope: !2940)
!2972 = !DILocation(line: 172, column: 2, scope: !2940)
!2973 = distinct !DISubprogram(name: "_test_bit", scope: !2974, file: !2974, line: 139, type: !2942, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2975)
!2974 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2975 = !{!2976, !2977}
!2976 = !DILocalVariable(name: "nr", arg: 1, scope: !2973, file: !2974, line: 139, type: !207)
!2977 = !DILocalVariable(name: "addr", arg: 2, scope: !2973, file: !2974, line: 139, type: !2944)
!2978 = !DILocation(line: 139, column: 25, scope: !2973)
!2979 = !DILocation(line: 139, column: 59, scope: !2973)
!2980 = !DILocation(line: 141, column: 25, scope: !2973)
!2981 = !DILocation(line: 141, column: 32, scope: !2973)
!2982 = !DILocation(line: 141, column: 30, scope: !2973)
!2983 = !DILocation(line: 141, column: 2, scope: !2973)
!2984 = !DILocation(line: 142, column: 23, scope: !2973)
!2985 = !DILocation(line: 142, column: 27, scope: !2973)
!2986 = !DILocation(line: 142, column: 9, scope: !2973)
!2987 = !DILocation(line: 142, column: 2, scope: !2973)
!2988 = !DISubprogram(name: "power_supply_battery_info_has_prop", scope: !79, file: !79, line: 801, type: !2989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!660, !2158, !106}
!2991 = !DISubprogram(name: "free_pages", scope: !2852, file: !2852, line: 303, type: !2992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{null, !207, !7}
!2994 = distinct !DISubprogram(name: "power_supply_charge_behaviour_show", scope: !3, file: !3, line: 526, type: !2995, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!336, !211, !7, !191, !202}
!2997 = !{!2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006}
!2998 = !DILocalVariable(name: "dev", arg: 1, scope: !2994, file: !3, line: 526, type: !211)
!2999 = !DILocalVariable(name: "available_behaviours", arg: 2, scope: !2994, file: !3, line: 527, type: !7)
!3000 = !DILocalVariable(name: "current_behaviour", arg: 3, scope: !2994, file: !3, line: 528, type: !191)
!3001 = !DILocalVariable(name: "buf", arg: 4, scope: !2994, file: !3, line: 529, type: !202)
!3002 = !DILocalVariable(name: "match", scope: !2994, file: !3, line: 531, type: !660)
!3003 = !DILocalVariable(name: "available", scope: !2994, file: !3, line: 531, type: !660)
!3004 = !DILocalVariable(name: "active", scope: !2994, file: !3, line: 531, type: !660)
!3005 = !DILocalVariable(name: "count", scope: !2994, file: !3, line: 532, type: !336)
!3006 = !DILocalVariable(name: "i", scope: !2994, file: !3, line: 533, type: !46)
!3007 = !DILocation(line: 526, column: 59, scope: !2994)
!3008 = !DILocation(line: 527, column: 22, scope: !2994)
!3009 = !DILocation(line: 528, column: 44, scope: !2994)
!3010 = !DILocation(line: 529, column: 15, scope: !2994)
!3011 = !DILocation(line: 531, column: 2, scope: !2994)
!3012 = !DILocation(line: 531, column: 7, scope: !2994)
!3013 = !DILocation(line: 531, column: 22, scope: !2994)
!3014 = !DILocation(line: 531, column: 33, scope: !2994)
!3015 = !DILocation(line: 532, column: 2, scope: !2994)
!3016 = !DILocation(line: 532, column: 10, scope: !2994)
!3017 = !DILocation(line: 533, column: 2, scope: !2994)
!3018 = !DILocation(line: 533, column: 6, scope: !2994)
!3019 = !DILocation(line: 535, column: 9, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 535, column: 2)
!3021 = !DILocation(line: 535, column: 7, scope: !3020)
!3022 = !DILocation(line: 535, column: 14, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 535, column: 2)
!3024 = !DILocation(line: 535, column: 16, scope: !3023)
!3025 = !DILocation(line: 535, column: 2, scope: !3020)
!3026 = !DILocation(line: 536, column: 15, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 535, column: 71)
!3028 = !DILocation(line: 536, column: 38, scope: !3027)
!3029 = !DILocation(line: 536, column: 36, scope: !3027)
!3030 = !DILocation(line: 536, column: 13, scope: !3027)
!3031 = !DILocation(line: 537, column: 12, scope: !3027)
!3032 = !DILocation(line: 537, column: 17, scope: !3027)
!3033 = !DILocation(line: 537, column: 14, scope: !3027)
!3034 = !DILocation(line: 537, column: 10, scope: !3027)
!3035 = !DILocation(line: 539, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 539, column: 7)
!3037 = !DILocation(line: 539, column: 17, scope: !3036)
!3038 = !DILocation(line: 539, column: 20, scope: !3036)
!3039 = !DILocation(line: 539, column: 7, scope: !3027)
!3040 = !DILocation(line: 540, column: 27, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 539, column: 28)
!3042 = !DILocation(line: 540, column: 32, scope: !3041)
!3043 = !DILocation(line: 541, column: 48, scope: !3041)
!3044 = !DILocation(line: 541, column: 13, scope: !3041)
!3045 = !DILocation(line: 540, column: 13, scope: !3041)
!3046 = !DILocation(line: 540, column: 10, scope: !3041)
!3047 = !DILocation(line: 542, column: 10, scope: !3041)
!3048 = !DILocation(line: 543, column: 3, scope: !3041)
!3049 = !DILocation(line: 543, column: 14, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 543, column: 14)
!3051 = !DILocation(line: 543, column: 14, scope: !3036)
!3052 = !DILocation(line: 544, column: 27, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 543, column: 25)
!3054 = !DILocation(line: 544, column: 32, scope: !3053)
!3055 = !DILocation(line: 545, column: 48, scope: !3053)
!3056 = !DILocation(line: 545, column: 13, scope: !3053)
!3057 = !DILocation(line: 544, column: 13, scope: !3053)
!3058 = !DILocation(line: 544, column: 10, scope: !3053)
!3059 = !DILocation(line: 546, column: 3, scope: !3053)
!3060 = !DILocation(line: 547, column: 2, scope: !3027)
!3061 = !DILocation(line: 535, column: 67, scope: !3023)
!3062 = !DILocation(line: 535, column: 2, scope: !3023)
!3063 = distinct !{!3063, !3025, !3064, !2476, !2477}
!3064 = !DILocation(line: 547, column: 2, scope: !3020)
!3065 = !DILocation(line: 549, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 549, column: 6)
!3067 = !DILocation(line: 549, column: 6, scope: !2994)
!3068 = !DILocation(line: 550, column: 3, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 550, column: 3)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 549, column: 14)
!3071 = !DILocation(line: 550, column: 3, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 550, column: 3)
!3073 = !DILocation(line: 551, column: 3, scope: !3070)
!3074 = !DILocation(line: 554, column: 6, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 554, column: 6)
!3076 = !DILocation(line: 554, column: 6, scope: !2994)
!3077 = !DILocation(line: 555, column: 3, scope: !3075)
!3078 = !DILocation(line: 555, column: 7, scope: !3075)
!3079 = !DILocation(line: 555, column: 13, scope: !3075)
!3080 = !DILocation(line: 555, column: 18, scope: !3075)
!3081 = !DILocation(line: 557, column: 9, scope: !2994)
!3082 = !DILocation(line: 557, column: 2, scope: !2994)
!3083 = !DILocation(line: 558, column: 1, scope: !2994)
!3084 = !DISubprogram(name: "sysfs_emit_at", scope: !330, file: !330, line: 359, type: !3085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!46, !202, !46, !219, null}
!3087 = !DISubprogram(name: "_dev_warn", scope: !3088, file: !3088, line: 52, type: !3089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3088 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !894, !219, null}
!3091 = distinct !DISubprogram(name: "power_supply_charge_behaviour_parse", scope: !3, file: !3, line: 561, type: !3092, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!46, !7, !219}
!3094 = !{!3095, !3096, !3097}
!3095 = !DILocalVariable(name: "available_behaviours", arg: 1, scope: !3091, file: !3, line: 561, type: !7)
!3096 = !DILocalVariable(name: "buf", arg: 2, scope: !3091, file: !3, line: 561, type: !219)
!3097 = !DILocalVariable(name: "i", scope: !3091, file: !3, line: 563, type: !46)
!3098 = !DILocation(line: 561, column: 54, scope: !3091)
!3099 = !DILocation(line: 561, column: 88, scope: !3091)
!3100 = !DILocation(line: 563, column: 2, scope: !3091)
!3101 = !DILocation(line: 563, column: 6, scope: !3091)
!3102 = !DILocation(line: 563, column: 10, scope: !3091)
!3103 = !DILocation(line: 565, column: 6, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 565, column: 6)
!3105 = !DILocation(line: 565, column: 8, scope: !3104)
!3106 = !DILocation(line: 565, column: 6, scope: !3091)
!3107 = !DILocation(line: 566, column: 10, scope: !3104)
!3108 = !DILocation(line: 566, column: 3, scope: !3104)
!3109 = !DILocation(line: 568, column: 6, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 568, column: 6)
!3111 = !DILocation(line: 568, column: 29, scope: !3110)
!3112 = !DILocation(line: 568, column: 27, scope: !3110)
!3113 = !DILocation(line: 568, column: 6, scope: !3091)
!3114 = !DILocation(line: 569, column: 10, scope: !3110)
!3115 = !DILocation(line: 569, column: 3, scope: !3110)
!3116 = !DILocation(line: 571, column: 2, scope: !3091)
!3117 = !DILocation(line: 572, column: 1, scope: !3091)
!3118 = !DISubprogram(name: "__sysfs_match_string", scope: !3119, file: !3119, line: 228, type: !3120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3119 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!46, !1702, !351, !219}
!3122 = distinct !DISubprogram(name: "power_supply_attr_is_visible", scope: !3, file: !3, line: 358, type: !363, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3130, !3131, !3132, !3133}
!3124 = !DILocalVariable(name: "kobj", arg: 1, scope: !3122, file: !3, line: 358, type: !228)
!3125 = !DILocalVariable(name: "attr", arg: 2, scope: !3122, file: !3, line: 359, type: !341)
!3126 = !DILocalVariable(name: "attrno", arg: 3, scope: !3122, file: !3, line: 360, type: !46)
!3127 = !DILocalVariable(name: "dev", scope: !3122, file: !3, line: 362, type: !211)
!3128 = !DILocalVariable(name: "__mptr", scope: !3129, file: !3, line: 362, type: !208)
!3129 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 362, column: 23)
!3130 = !DILocalVariable(name: "psy", scope: !3122, file: !3, line: 363, type: !2098)
!3131 = !DILocalVariable(name: "mode", scope: !3122, file: !3, line: 364, type: !346)
!3132 = !DILocalVariable(name: "i", scope: !3122, file: !3, line: 365, type: !46)
!3133 = !DILocalVariable(name: "property", scope: !3134, file: !3, line: 374, type: !46)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 373, column: 50)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 373, column: 2)
!3136 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 373, column: 2)
!3137 = !DILocation(line: 358, column: 61, scope: !3122)
!3138 = !DILocation(line: 359, column: 27, scope: !3122)
!3139 = !DILocation(line: 360, column: 13, scope: !3122)
!3140 = !DILocation(line: 362, column: 2, scope: !3122)
!3141 = !DILocation(line: 362, column: 17, scope: !3122)
!3142 = !DILocation(line: 362, column: 23, scope: !3129)
!3143 = !DILocation(line: 362, column: 23, scope: !3122)
!3144 = !DILocation(line: 363, column: 2, scope: !3122)
!3145 = !DILocation(line: 363, column: 23, scope: !3122)
!3146 = !DILocation(line: 363, column: 45, scope: !3122)
!3147 = !DILocation(line: 363, column: 29, scope: !3122)
!3148 = !DILocation(line: 364, column: 2, scope: !3122)
!3149 = !DILocation(line: 364, column: 10, scope: !3122)
!3150 = !DILocation(line: 365, column: 2, scope: !3122)
!3151 = !DILocation(line: 365, column: 6, scope: !3122)
!3152 = !DILocation(line: 367, column: 26, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 367, column: 6)
!3154 = !DILocation(line: 367, column: 7, scope: !3153)
!3155 = !DILocation(line: 367, column: 34, scope: !3153)
!3156 = !DILocation(line: 367, column: 6, scope: !3122)
!3157 = !DILocation(line: 368, column: 3, scope: !3153)
!3158 = !DILocation(line: 370, column: 6, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 370, column: 6)
!3160 = !DILocation(line: 370, column: 13, scope: !3159)
!3161 = !DILocation(line: 370, column: 6, scope: !3122)
!3162 = !DILocation(line: 371, column: 10, scope: !3159)
!3163 = !DILocation(line: 371, column: 3, scope: !3159)
!3164 = !DILocation(line: 373, column: 9, scope: !3136)
!3165 = !DILocation(line: 373, column: 7, scope: !3136)
!3166 = !DILocation(line: 373, column: 14, scope: !3135)
!3167 = !DILocation(line: 373, column: 18, scope: !3135)
!3168 = !DILocation(line: 373, column: 23, scope: !3135)
!3169 = !DILocation(line: 373, column: 29, scope: !3135)
!3170 = !DILocation(line: 373, column: 16, scope: !3135)
!3171 = !DILocation(line: 373, column: 2, scope: !3136)
!3172 = !DILocation(line: 374, column: 3, scope: !3134)
!3173 = !DILocation(line: 374, column: 7, scope: !3134)
!3174 = !DILocation(line: 374, column: 18, scope: !3134)
!3175 = !DILocation(line: 374, column: 23, scope: !3134)
!3176 = !DILocation(line: 374, column: 29, scope: !3134)
!3177 = !DILocation(line: 374, column: 40, scope: !3134)
!3178 = !DILocation(line: 376, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 376, column: 7)
!3180 = !DILocation(line: 376, column: 19, scope: !3179)
!3181 = !DILocation(line: 376, column: 16, scope: !3179)
!3182 = !DILocation(line: 376, column: 7, scope: !3134)
!3183 = !DILocation(line: 377, column: 8, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 377, column: 8)
!3185 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 376, column: 27)
!3186 = !DILocation(line: 377, column: 13, scope: !3184)
!3187 = !DILocation(line: 377, column: 19, scope: !3184)
!3188 = !DILocation(line: 377, column: 41, scope: !3184)
!3189 = !DILocation(line: 378, column: 8, scope: !3184)
!3190 = !DILocation(line: 378, column: 13, scope: !3184)
!3191 = !DILocation(line: 378, column: 19, scope: !3184)
!3192 = !DILocation(line: 378, column: 41, scope: !3184)
!3193 = !DILocation(line: 378, column: 46, scope: !3184)
!3194 = !DILocation(line: 378, column: 56, scope: !3184)
!3195 = !DILocation(line: 377, column: 8, scope: !3185)
!3196 = !DILocation(line: 379, column: 10, scope: !3184)
!3197 = !DILocation(line: 379, column: 5, scope: !3184)
!3198 = !DILocation(line: 381, column: 11, scope: !3185)
!3199 = !DILocation(line: 381, column: 4, scope: !3185)
!3200 = !DILocation(line: 383, column: 2, scope: !3135)
!3201 = !DILocation(line: 383, column: 2, scope: !3134)
!3202 = !DILocation(line: 373, column: 46, scope: !3135)
!3203 = !DILocation(line: 373, column: 2, scope: !3135)
!3204 = distinct !{!3204, !3171, !3205, !2476, !2477}
!3205 = !DILocation(line: 383, column: 2, scope: !3136)
!3206 = !DILocation(line: 385, column: 41, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 385, column: 6)
!3208 = !DILocation(line: 385, column: 46, scope: !3207)
!3209 = !DILocation(line: 385, column: 60, scope: !3207)
!3210 = !DILocation(line: 385, column: 6, scope: !3207)
!3211 = !DILocation(line: 385, column: 6, scope: !3122)
!3212 = !DILocation(line: 386, column: 10, scope: !3207)
!3213 = !DILocation(line: 386, column: 3, scope: !3207)
!3214 = !DILocation(line: 388, column: 2, scope: !3122)
!3215 = !DILocation(line: 389, column: 1, scope: !3122)
!3216 = distinct !DISubprogram(name: "__tolower", scope: !3217, file: !3217, line: 49, type: !3218, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3220)
!3217 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!267, !267}
!3220 = !{!3221}
!3221 = !DILocalVariable(name: "c", arg: 1, scope: !3216, file: !3217, line: 49, type: !267)
!3222 = !DILocation(line: 49, column: 53, scope: !3216)
!3223 = !DILocation(line: 51, column: 6, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3216, file: !3217, line: 51, column: 6)
!3225 = !DILocation(line: 51, column: 6, scope: !3216)
!3226 = !DILocation(line: 52, column: 5, scope: !3224)
!3227 = !DILocation(line: 52, column: 3, scope: !3224)
!3228 = !DILocation(line: 53, column: 9, scope: !3216)
!3229 = !DILocation(line: 53, column: 2, scope: !3216)
!3230 = distinct !DISubprogram(name: "to_ps_attr", scope: !3, file: !3, line: 229, type: !3231, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!1680, !1696}
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "attr", arg: 1, scope: !3230, file: !3, line: 229, type: !1696)
!3235 = !DILocalVariable(name: "__mptr", scope: !3236, file: !3, line: 231, type: !208)
!3236 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 231, column: 9)
!3237 = !DILocation(line: 229, column: 70, scope: !3230)
!3238 = !DILocation(line: 231, column: 9, scope: !3236)
!3239 = !DILocation(line: 231, column: 9, scope: !3230)
!3240 = !DILocation(line: 231, column: 2, scope: !3230)
!3241 = distinct !DISubprogram(name: "dev_attr_psp", scope: !3, file: !3, line: 234, type: !3242, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!106, !1696}
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "attr", arg: 1, scope: !3241, file: !3, line: 234, type: !1696)
!3246 = !DILocation(line: 234, column: 73, scope: !3241)
!3247 = !DILocation(line: 236, column: 21, scope: !3241)
!3248 = !DILocation(line: 236, column: 10, scope: !3241)
!3249 = !DILocation(line: 236, column: 27, scope: !3241)
!3250 = !DILocation(line: 236, column: 2, scope: !3241)
!3251 = !DISubprogram(name: "power_supply_get_property", scope: !79, file: !79, line: 859, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3252 = !DISubprogram(name: "___ratelimit", scope: !2334, file: !2334, line: 44, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!46, !3255, !219}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!3256 = !DISubprogram(name: "_dev_err", scope: !3088, file: !3088, line: 50, type: !3089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3257 = !DISubprogram(name: "sysfs_emit", scope: !330, file: !330, line: 357, type: !2485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3258 = distinct !DISubprogram(name: "power_supply_show_usb_type", scope: !3, file: !3, line: 239, type: !3259, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!336, !211, !2102, !2120, !202}
!3261 = !{!3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269}
!3262 = !DILocalVariable(name: "dev", arg: 1, scope: !3258, file: !3, line: 239, type: !211)
!3263 = !DILocalVariable(name: "desc", arg: 2, scope: !3258, file: !3, line: 240, type: !2102)
!3264 = !DILocalVariable(name: "value", arg: 3, scope: !3258, file: !3, line: 241, type: !2120)
!3265 = !DILocalVariable(name: "buf", arg: 4, scope: !3258, file: !3, line: 242, type: !202)
!3266 = !DILocalVariable(name: "usb_type", scope: !3258, file: !3, line: 244, type: !94)
!3267 = !DILocalVariable(name: "count", scope: !3258, file: !3, line: 245, type: !336)
!3268 = !DILocalVariable(name: "match", scope: !3258, file: !3, line: 246, type: !660)
!3269 = !DILocalVariable(name: "i", scope: !3258, file: !3, line: 247, type: !46)
!3270 = !DILocation(line: 239, column: 58, scope: !3258)
!3271 = !DILocation(line: 240, column: 40, scope: !3258)
!3272 = !DILocation(line: 241, column: 36, scope: !3258)
!3273 = !DILocation(line: 242, column: 14, scope: !3258)
!3274 = !DILocation(line: 244, column: 2, scope: !3258)
!3275 = !DILocation(line: 244, column: 29, scope: !3258)
!3276 = !DILocation(line: 245, column: 2, scope: !3258)
!3277 = !DILocation(line: 245, column: 10, scope: !3258)
!3278 = !DILocation(line: 246, column: 2, scope: !3258)
!3279 = !DILocation(line: 246, column: 7, scope: !3258)
!3280 = !DILocation(line: 247, column: 2, scope: !3258)
!3281 = !DILocation(line: 247, column: 6, scope: !3258)
!3282 = !DILocation(line: 249, column: 9, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 249, column: 2)
!3284 = !DILocation(line: 249, column: 7, scope: !3283)
!3285 = !DILocation(line: 249, column: 14, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 249, column: 2)
!3287 = !DILocation(line: 249, column: 18, scope: !3286)
!3288 = !DILocation(line: 249, column: 24, scope: !3286)
!3289 = !DILocation(line: 249, column: 16, scope: !3286)
!3290 = !DILocation(line: 249, column: 2, scope: !3283)
!3291 = !DILocation(line: 250, column: 14, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 249, column: 44)
!3293 = !DILocation(line: 250, column: 20, scope: !3292)
!3294 = !DILocation(line: 250, column: 30, scope: !3292)
!3295 = !DILocation(line: 250, column: 12, scope: !3292)
!3296 = !DILocation(line: 252, column: 7, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 252, column: 7)
!3298 = !DILocation(line: 252, column: 14, scope: !3297)
!3299 = !DILocation(line: 252, column: 24, scope: !3297)
!3300 = !DILocation(line: 252, column: 21, scope: !3297)
!3301 = !DILocation(line: 252, column: 7, scope: !3292)
!3302 = !DILocation(line: 253, column: 27, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 252, column: 34)
!3304 = !DILocation(line: 253, column: 32, scope: !3303)
!3305 = !DILocation(line: 254, column: 34, scope: !3303)
!3306 = !DILocation(line: 254, column: 7, scope: !3303)
!3307 = !DILocation(line: 253, column: 13, scope: !3303)
!3308 = !DILocation(line: 253, column: 10, scope: !3303)
!3309 = !DILocation(line: 255, column: 10, scope: !3303)
!3310 = !DILocation(line: 256, column: 3, scope: !3303)
!3311 = !DILocation(line: 257, column: 27, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 256, column: 10)
!3313 = !DILocation(line: 257, column: 32, scope: !3312)
!3314 = !DILocation(line: 258, column: 34, scope: !3312)
!3315 = !DILocation(line: 258, column: 7, scope: !3312)
!3316 = !DILocation(line: 257, column: 13, scope: !3312)
!3317 = !DILocation(line: 257, column: 10, scope: !3312)
!3318 = !DILocation(line: 260, column: 2, scope: !3292)
!3319 = !DILocation(line: 249, column: 39, scope: !3286)
!3320 = !DILocation(line: 249, column: 2, scope: !3286)
!3321 = distinct !{!3321, !3290, !3322, !2476, !2477}
!3322 = !DILocation(line: 260, column: 2, scope: !3283)
!3323 = !DILocation(line: 262, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 262, column: 6)
!3325 = !DILocation(line: 262, column: 6, scope: !3258)
!3326 = !DILocation(line: 263, column: 3, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 263, column: 3)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 262, column: 14)
!3329 = !DILocation(line: 263, column: 3, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 263, column: 3)
!3331 = !DILocation(line: 264, column: 3, scope: !3328)
!3332 = !DILocation(line: 267, column: 6, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 267, column: 6)
!3334 = !DILocation(line: 267, column: 6, scope: !3258)
!3335 = !DILocation(line: 268, column: 3, scope: !3333)
!3336 = !DILocation(line: 268, column: 7, scope: !3333)
!3337 = !DILocation(line: 268, column: 13, scope: !3333)
!3338 = !DILocation(line: 268, column: 18, scope: !3333)
!3339 = !DILocation(line: 270, column: 9, scope: !3258)
!3340 = !DILocation(line: 270, column: 2, scope: !3258)
!3341 = !DILocation(line: 271, column: 1, scope: !3258)
!3342 = distinct !DISubprogram(name: "kstrtol", scope: !3343, file: !3343, line: 58, type: !3344, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3347)
!3343 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!46, !219, !7, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3347 = !{!3348, !3349, !3350}
!3348 = !DILocalVariable(name: "s", arg: 1, scope: !3342, file: !3343, line: 58, type: !219)
!3349 = !DILocalVariable(name: "base", arg: 2, scope: !3342, file: !3343, line: 58, type: !7)
!3350 = !DILocalVariable(name: "res", arg: 3, scope: !3342, file: !3343, line: 58, type: !3346)
!3351 = !DILocation(line: 58, column: 52, scope: !3342)
!3352 = !DILocation(line: 58, column: 68, scope: !3342)
!3353 = !DILocation(line: 58, column: 80, scope: !3342)
!3354 = !DILocation(line: 66, column: 19, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3342, file: !3343, line: 64, column: 6)
!3356 = !DILocation(line: 66, column: 22, scope: !3355)
!3357 = !DILocation(line: 66, column: 41, scope: !3355)
!3358 = !DILocation(line: 66, column: 10, scope: !3355)
!3359 = !DILocation(line: 66, column: 3, scope: !3355)
!3360 = !DISubprogram(name: "power_supply_set_property", scope: !79, file: !79, line: 863, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3361 = !DISubprogram(name: "kstrtoll", scope: !3343, file: !3343, line: 13, type: !3362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!46, !219, !7, !1705}
!3364 = !DISubprogram(name: "strchr", scope: !3119, file: !3119, line: 100, type: !3365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!202, !219, !46}
!3367 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3368, file: !3368, line: 80, type: !3369, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3368 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !3371, !351}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3373)
!3373 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "v", arg: 1, scope: !3367, file: !3368, line: 80, type: !3371)
!3376 = !DILocalVariable(name: "size", arg: 2, scope: !3367, file: !3368, line: 80, type: !351)
!3377 = !DILocation(line: 80, column: 74, scope: !3367)
!3378 = !DILocation(line: 80, column: 84, scope: !3367)
!3379 = !DILocation(line: 82, column: 20, scope: !3367)
!3380 = !DILocation(line: 82, column: 23, scope: !3367)
!3381 = !DILocation(line: 82, column: 2, scope: !3367)
!3382 = !DILocation(line: 83, column: 2, scope: !3367)
!3383 = !DILocation(line: 84, column: 1, scope: !3367)
!3384 = distinct !DISubprogram(name: "arch_set_bit", scope: !3385, file: !3385, line: 52, type: !2923, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3386)
!3385 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3386 = !{!3387, !3388}
!3387 = !DILocalVariable(name: "nr", arg: 1, scope: !3384, file: !3385, line: 52, type: !340)
!3388 = !DILocalVariable(name: "addr", arg: 2, scope: !3384, file: !3385, line: 52, type: !2925)
!3389 = !DILocation(line: 52, column: 19, scope: !3384)
!3390 = !DILocation(line: 52, column: 47, scope: !3384)
!3391 = !DILocation(line: 54, column: 27, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 54, column: 6)
!3393 = !DILocation(line: 54, column: 6, scope: !3392)
!3394 = !DILocation(line: 54, column: 6, scope: !3384)
!3395 = !DILocation(line: 56, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3392, file: !3385, line: 54, column: 32)
!3397 = !DILocation(line: 57, column: 12, scope: !3396)
!3398 = !DILocation(line: 55, column: 3, scope: !3396)
!3399 = !{i64 2148000028, i64 2148000067, i64 2148000088, i64 2148000125, i64 2148000148, i64 2148000018}
!3400 = !DILocation(line: 59, column: 2, scope: !3396)
!3401 = !DILocation(line: 61, column: 8, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3392, file: !3385, line: 59, column: 9)
!3403 = !DILocation(line: 61, column: 32, scope: !3402)
!3404 = !DILocation(line: 60, column: 3, scope: !3402)
!3405 = !{i64 2148000313, i64 2148000352, i64 2148000373, i64 2148000410, i64 2148000433, i64 2148000303}
!3406 = !DILocation(line: 63, column: 1, scope: !3384)
!3407 = distinct !DISubprogram(name: "kasan_check_write", scope: !3408, file: !3408, line: 44, type: !3409, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3411)
!3408 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!660, !3371, !7}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "p", arg: 1, scope: !3407, file: !3408, line: 44, type: !3371)
!3413 = !DILocalVariable(name: "size", arg: 2, scope: !3407, file: !3408, line: 44, type: !7)
!3414 = !DILocation(line: 44, column: 59, scope: !3407)
!3415 = !DILocation(line: 44, column: 75, scope: !3407)
!3416 = !DILocation(line: 46, column: 2, scope: !3407)
!3417 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3418, file: !3418, line: 229, type: !3419, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3421)
!3418 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3371, !351, !46}
!3421 = !{!3422, !3423, !3424}
!3422 = !DILocalVariable(name: "ptr", arg: 1, scope: !3417, file: !3418, line: 229, type: !3371)
!3423 = !DILocalVariable(name: "size", arg: 2, scope: !3417, file: !3418, line: 229, type: !351)
!3424 = !DILocalVariable(name: "type", arg: 3, scope: !3417, file: !3418, line: 230, type: !46)
!3425 = !DILocation(line: 229, column: 60, scope: !3417)
!3426 = !DILocation(line: 229, column: 72, scope: !3417)
!3427 = !DILocation(line: 230, column: 15, scope: !3417)
!3428 = !DILocation(line: 230, column: 23, scope: !3417)
!3429 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3368, file: !3368, line: 66, type: !3369, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3430)
!3430 = !{!3431, !3432}
!3431 = !DILocalVariable(name: "v", arg: 1, scope: !3429, file: !3368, line: 66, type: !3371)
!3432 = !DILocalVariable(name: "size", arg: 2, scope: !3429, file: !3368, line: 66, type: !351)
!3433 = !DILocation(line: 66, column: 73, scope: !3429)
!3434 = !DILocation(line: 66, column: 83, scope: !3429)
!3435 = !DILocation(line: 68, column: 19, scope: !3429)
!3436 = !DILocation(line: 68, column: 22, scope: !3429)
!3437 = !DILocation(line: 68, column: 2, scope: !3429)
!3438 = !DILocation(line: 69, column: 2, scope: !3429)
!3439 = !DILocation(line: 70, column: 1, scope: !3429)
!3440 = distinct !DISubprogram(name: "arch_test_bit", scope: !3385, file: !3385, line: 237, type: !2942, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3441)
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "nr", arg: 1, scope: !3440, file: !3385, line: 237, type: !207)
!3443 = !DILocalVariable(name: "addr", arg: 2, scope: !3440, file: !3385, line: 237, type: !2944)
!3444 = !DILocation(line: 237, column: 29, scope: !3440)
!3445 = !DILocation(line: 237, column: 63, scope: !3440)
!3446 = !DILocation(line: 239, column: 30, scope: !3440)
!3447 = !DILocation(line: 239, column: 9, scope: !3440)
!3448 = !DILocation(line: 239, column: 54, scope: !3440)
!3449 = !DILocation(line: 239, column: 58, scope: !3440)
!3450 = !DILocation(line: 239, column: 36, scope: !3440)
!3451 = !DILocation(line: 240, column: 26, scope: !3440)
!3452 = !DILocation(line: 240, column: 30, scope: !3440)
!3453 = !DILocation(line: 240, column: 8, scope: !3440)
!3454 = !DILocation(line: 239, column: 2, scope: !3440)
!3455 = distinct !DISubprogram(name: "kasan_check_read", scope: !3408, file: !3408, line: 40, type: !3409, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3456)
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "p", arg: 1, scope: !3455, file: !3408, line: 40, type: !3371)
!3458 = !DILocalVariable(name: "size", arg: 2, scope: !3455, file: !3408, line: 40, type: !7)
!3459 = !DILocation(line: 40, column: 58, scope: !3455)
!3460 = !DILocation(line: 40, column: 74, scope: !3455)
!3461 = !DILocation(line: 42, column: 2, scope: !3455)
!3462 = distinct !DISubprogram(name: "constant_test_bit", scope: !3385, file: !3385, line: 204, type: !3463, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!660, !340, !2944}
!3465 = !{!3466, !3467}
!3466 = !DILocalVariable(name: "nr", arg: 1, scope: !3462, file: !3385, line: 204, type: !340)
!3467 = !DILocalVariable(name: "addr", arg: 2, scope: !3462, file: !3385, line: 204, type: !2944)
!3468 = !DILocation(line: 204, column: 52, scope: !3462)
!3469 = !DILocation(line: 204, column: 86, scope: !3462)
!3470 = !DILocation(line: 206, column: 19, scope: !3462)
!3471 = !DILocation(line: 206, column: 22, scope: !3462)
!3472 = !DILocation(line: 206, column: 15, scope: !3462)
!3473 = !DILocation(line: 207, column: 4, scope: !3462)
!3474 = !DILocation(line: 207, column: 9, scope: !3462)
!3475 = !DILocation(line: 207, column: 12, scope: !3462)
!3476 = !DILocation(line: 206, column: 44, scope: !3462)
!3477 = !DILocation(line: 207, column: 37, scope: !3462)
!3478 = !DILocation(line: 206, column: 2, scope: !3462)
!3479 = distinct !DISubprogram(name: "variable_test_bit", scope: !3385, file: !3385, line: 224, type: !3463, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3480)
!3480 = !{!3481, !3482, !3483}
!3481 = !DILocalVariable(name: "nr", arg: 1, scope: !3479, file: !3385, line: 224, type: !340)
!3482 = !DILocalVariable(name: "addr", arg: 2, scope: !3479, file: !3385, line: 224, type: !2944)
!3483 = !DILocalVariable(name: "oldbit", scope: !3479, file: !3385, line: 226, type: !660)
!3484 = !DILocation(line: 224, column: 52, scope: !3479)
!3485 = !DILocation(line: 224, column: 86, scope: !3479)
!3486 = !DILocation(line: 226, column: 2, scope: !3479)
!3487 = !DILocation(line: 226, column: 7, scope: !3479)
!3488 = !DILocation(line: 231, column: 33, scope: !3479)
!3489 = !DILocation(line: 231, column: 46, scope: !3479)
!3490 = !DILocation(line: 228, column: 2, scope: !3479)
!3491 = !{i64 2148013640, i64 2148013714}
!3492 = !DILocation(line: 233, column: 9, scope: !3479)
!3493 = !DILocation(line: 234, column: 1, scope: !3479)
!3494 = !DILocation(line: 233, column: 2, scope: !3479)
