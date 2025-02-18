; ModuleID = 'cselib.c'
source_filename = "cselib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.elt_list = type { ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.expand_value_data = type { ptr, ptr, ptr, i8 }
%struct.cselib_set = type { ptr, ptr, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@max_value_regs = internal unnamed_addr global i32 0, align 4
@cfa_base_preserved_val = internal unnamed_addr global ptr null, align 8
@n_used_regs = internal unnamed_addr global i32 0, align 4
@used_regs = internal unnamed_addr global ptr null, align 8
@reg_values = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"cselib.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@cselib_preserve_constants = internal unnamed_addr global i8 0, align 1
@cselib_hash_table = internal unnamed_addr global ptr null, align 8
@n_useless_values = internal unnamed_addr global i32 0, align 4
@n_useless_debug_values = internal unnamed_addr global i32 0, align 4
@n_debug_values = internal unnamed_addr global i32 0, align 4
@next_uid = internal unnamed_addr global i32 0, align 4
@dummy_val = internal global %struct.cselib_val_struct zeroinitializer, align 8
@first_containing_mem = internal unnamed_addr global ptr @dummy_val, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@reg_raw_mode = external local_unnamed_addr global [53 x i32], align 16
@callmem = internal global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@cselib_current_insn = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cselib lookup \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" => %u:%u\0A\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"elt_list\00", align 1
@elt_list_pool = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"elt_loc_list\00", align 1
@elt_loc_list_pool = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"cselib_val_list\00", align 1
@cselib_val_pool = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@rtx_code_size = external local_unnamed_addr constant [139 x i8], align 16
@value_pool = internal unnamed_addr global ptr null, align 8
@cselib_record_memory = internal unnamed_addr global i8 0, align 1
@cselib_nregs = internal unnamed_addr global i32 0, align 4
@reg_values_size = internal unnamed_addr global i32 0, align 4
@cselib_discard_hook = dso_local local_unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"cselib hash table:\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"first mem \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"next uid %i\0A\00", align 1
@gt_ggc_r_gt_cselib_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @callmem, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@cselib_record_sets_hook = dso_local local_unnamed_addr global ptr null, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@values_became_useless = internal unnamed_addr global i1 false, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"expanding: r%d into: \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\0Aexpanding \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" into...\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"r%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_float_store = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"cselib value %u:%u \00", align 1
@flag_dump_noaddr = external local_unnamed_addr global i32, align 4
@flag_dump_unnumbered = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c" locs:\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\0A  from insn %i \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" no locs\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c" addr list:\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c" no addrs\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" last mem\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c" next mem \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !102 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !103
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !102 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !103
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !102 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !113

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !107
  %11 = load i8, ptr %3, align 1, !tbaa !114
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !102 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !113

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !107
  %11 = load i8, ptr %3, align 1, !tbaa !114
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !102 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !103
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !113

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #25
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !107
  %11 = load i8, ptr %3, align 1, !tbaa !114
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !102 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !103
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !102 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !113

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !115
  store i8 %12, ptr %4, align 1, !tbaa !114
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !102 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !113

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !115
  store i8 %12, ptr %4, align 1, !tbaa !114
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !102 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !103
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !113

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !115
  store i8 %12, ptr %4, align 1, !tbaa !114
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !102 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #25
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !102 {
  %2 = load i32, ptr %0, align 8, !tbaa !117
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !102 {
  %2 = load i32, ptr %0, align 8, !tbaa !117
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !102 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #25
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !118
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !102 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #25
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !118
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !102 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #25
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !119

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cselib_clear_table() local_unnamed_addr #9 !prof !122 {
  store i32 0, ptr @max_value_regs, align 4, !tbaa !118
  %1 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %10, !prof !123

3:                                                ; preds = %0
  %4 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %63, label %6, !prof !124

6:                                                ; preds = %3
  %7 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %8 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %9 = zext i32 %4 to i64
  br label %55

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = getelementptr inbounds %struct.elt_loc_list, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !127
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !114
  %17 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %21 = load ptr, ptr @reg_values, align 8
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %32, %19
  %24 = phi i64 [ 0, %19 ], [ %34, %32 ]
  %25 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %26 = getelementptr inbounds i32, ptr %20, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !118
  %28 = icmp eq i32 %27, %16
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = zext i32 %27 to i64
  %31 = getelementptr inbounds ptr, ptr %21, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !103
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i32 [ %25, %29 ], [ 1, %23 ]
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, %22
  br i1 %35, label %36, label %23, !llvm.loop !129

36:                                               ; preds = %32, %10
  %37 = phi i32 [ 0, %10 ], [ %33, %32 ]
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 351, ptr noundef nonnull @.str.1) #25
  br label %40

40:                                               ; preds = %39, %36
  store i32 %37, ptr @n_used_regs, align 4, !tbaa !118
  %41 = load ptr, ptr @used_regs, align 8, !tbaa !103
  store i32 %16, ptr %41, align 4, !tbaa !118
  %42 = zext i32 %16 to i64
  %43 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %44 = getelementptr inbounds %struct.cselib_val_struct, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !125
  %46 = getelementptr inbounds %struct.elt_loc_list, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !127
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %42, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !114
  %54 = zext i8 %53 to i32
  store i32 %54, ptr @max_value_regs, align 4, !tbaa !118
  br label %64

55:                                               ; preds = %55, %6
  %56 = phi i64 [ 0, %6 ], [ %61, %55 ]
  %57 = getelementptr inbounds i32, ptr %8, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !118
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %7, i64 %59
  store ptr null, ptr %60, align 8, !tbaa !103
  %61 = add nuw nsw i64 %56, 1
  %62 = icmp eq i64 %61, %9
  br i1 %62, label %63, label %55, !prof !130, !llvm.loop !131

63:                                               ; preds = %55, %3
  store i32 0, ptr @n_used_regs, align 4, !tbaa !118
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !114
  %66 = icmp eq i8 %65, 0
  %67 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  br i1 %66, label %69, label %68, !prof !123

68:                                               ; preds = %64
  tail call void @htab_traverse(ptr noundef %67, ptr noundef nonnull @preserve_only_constants, ptr noundef null) #25
  br label %70

69:                                               ; preds = %64
  tail call void @htab_empty(ptr noundef %67) #25
  br label %70

70:                                               ; preds = %68, %69
  store i32 0, ptr @n_useless_values, align 4, !tbaa !118
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !118
  store i32 0, ptr @n_debug_values, align 4, !tbaa !118
  store i32 1, ptr @next_uid, align 4, !tbaa !118
  store ptr @dummy_val, ptr @first_containing_mem, align 8, !tbaa !103
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cselib_reset_table(i32 noundef %0) local_unnamed_addr #9 !prof !102 {
  store i32 0, ptr @max_value_regs, align 4, !tbaa !118
  %2 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11, !prof !123

4:                                                ; preds = %1
  %5 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %64, label %7, !prof !124

7:                                                ; preds = %4
  %8 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %9 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %10 = zext i32 %5 to i64
  br label %56

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !114
  %18 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %22 = load ptr, ptr @reg_values, align 8
  %23 = zext i32 %18 to i64
  br label %24

24:                                               ; preds = %20, %33
  %25 = phi i64 [ 0, %20 ], [ %35, %33 ]
  %26 = phi i32 [ 0, %20 ], [ %34, %33 ]
  %27 = getelementptr inbounds i32, ptr %21, i64 %25
  %28 = load i32, ptr %27, align 4, !tbaa !118
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds ptr, ptr %22, i64 %31
  store ptr null, ptr %32, align 8, !tbaa !103
  br label %33

33:                                               ; preds = %24, %30
  %34 = phi i32 [ %26, %30 ], [ 1, %24 ]
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, %23
  br i1 %36, label %37, label %24, !llvm.loop !129

37:                                               ; preds = %33, %11
  %38 = phi i32 [ 0, %11 ], [ %34, %33 ]
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 351, ptr noundef nonnull @.str.1) #25
  br label %41

41:                                               ; preds = %37, %40
  store i32 %38, ptr @n_used_regs, align 4, !tbaa !118
  %42 = load ptr, ptr @used_regs, align 8, !tbaa !103
  store i32 %17, ptr %42, align 4, !tbaa !118
  %43 = zext i32 %17 to i64
  %44 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %45 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !125
  %47 = getelementptr inbounds %struct.elt_loc_list, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %43, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !114
  %55 = zext i8 %54 to i32
  store i32 %55, ptr @max_value_regs, align 4, !tbaa !118
  br label %65

56:                                               ; preds = %7, %56
  %57 = phi i64 [ 0, %7 ], [ %62, %56 ]
  %58 = getelementptr inbounds i32, ptr %9, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !118
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %8, i64 %60
  store ptr null, ptr %61, align 8, !tbaa !103
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %62, %10
  br i1 %63, label %64, label %56, !prof !130, !llvm.loop !131

64:                                               ; preds = %56, %4
  store i32 0, ptr @n_used_regs, align 4, !tbaa !118
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !114
  %67 = icmp eq i8 %66, 0
  %68 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  br i1 %67, label %70, label %69, !prof !123

69:                                               ; preds = %65
  tail call void @htab_traverse(ptr noundef %68, ptr noundef nonnull @preserve_only_constants, ptr noundef null) #25
  br label %71

70:                                               ; preds = %65
  tail call void @htab_empty(ptr noundef %68) #25
  br label %71

71:                                               ; preds = %70, %69
  store i32 0, ptr @n_useless_values, align 4, !tbaa !118
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !118
  store i32 0, ptr @n_debug_values, align 4, !tbaa !118
  store i32 %0, ptr @next_uid, align 4, !tbaa !118
  store ptr @dummy_val, ptr @first_containing_mem, align 8, !tbaa !103
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @preserve_only_constants(ptr noundef %0, ptr nocapture readnone %1) #10 !prof !102 {
  %3 = load ptr, ptr %0, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !125
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !132
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.elt_loc_list, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !118
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = icmp eq i32 %14, 35
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = tail call i32 @references_value_p(ptr noundef nonnull %12, i32 noundef 0), !range !133
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21, %10
  %25 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %3, %25
  br i1 %28, label %45, label %29

29:                                               ; preds = %27
  %30 = icmp eq i32 %14, 49
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 30
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !114
  %40 = getelementptr inbounds %struct.cselib_val_struct, ptr %25, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !134
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %24, %37, %31, %29, %7, %2
  %44 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  tail call void @htab_clear_slot(ptr noundef %44, ptr noundef nonnull %0) #25
  br label %45

45:                                               ; preds = %37, %27, %19, %21, %43
  ret i32 1
}

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @cselib_get_next_uid() local_unnamed_addr #11 !prof !102 {
  %1 = load i32, ptr @next_uid, align 4, !tbaa !118
  ret i32 %1
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @references_value_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 !prof !135 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = icmp eq i32 %4, 1
  br i1 %8, label %9, label %17, !prof !136

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %55, label %11, !prof !137

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17, !prof !138

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %5
  %19 = load i8, ptr %18, align 1, !tbaa !114
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %55, label %21, !prof !139

21:                                               ; preds = %17
  %22 = zext i8 %19 to i64
  br label %23

23:                                               ; preds = %21, %53
  %24 = phi i64 [ %22, %21 ], [ %25, %53 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %7, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !114
  switch i8 %27, label %53 [
    i8 101, label %28
    i8 69, label %36
  ], !prof !140

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %29, i64 0, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !114
  %32 = tail call i32 @references_value_p(ptr noundef %31, i32 noundef %1), !range !133
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55, !prof !141

34:                                               ; preds = %28
  %35 = icmp eq i8 %27, 69
  br i1 %35, label %36, label %53, !prof !142

36:                                               ; preds = %34, %23
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !114
  %40 = load i32, ptr %39, align 8, !tbaa !143
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = zext nneg i32 %40 to i64
  br label %47

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %43
  br i1 %46, label %53, label %47, !llvm.loop !145

47:                                               ; preds = %42, %44
  %48 = phi i64 [ 0, %42 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !103
  %51 = tail call i32 @references_value_p(ptr noundef %50, i32 noundef %1), !range !133
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %44, label %55

53:                                               ; preds = %44, %36, %23, %34
  %54 = icmp sgt i64 %24, 1
  br i1 %54, label %23, label %55, !prof !146, !llvm.loop !147

55:                                               ; preds = %28, %53, %47, %17, %9, %11
  %56 = phi i32 [ 1, %11 ], [ 1, %9 ], [ 0, %17 ], [ 1, %47 ], [ 0, %53 ], [ 1, %28 ]
  ret i32 %56
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cselib_preserve_value(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !102 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 67108864
  store i32 %5, ptr %3, align 8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cselib_preserved_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !102 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 26
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  ret i8 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @cselib_preserve_cfa_base_value(ptr noundef %0) local_unnamed_addr #15 !prof !102 {
  %2 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !114
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !127
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store ptr %0, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  br label %15

15:                                               ; preds = %14, %8, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cselib_preserve_only_values() local_unnamed_addr #10 !prof !102 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %6, %1 ]
  %3 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !118
  %5 = trunc i64 %2 to i32
  tail call fastcc void @cselib_invalidate_regno(i32 noundef %5, i32 noundef %4)
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 53
  br i1 %7, label %8, label %1, !llvm.loop !148

8:                                                ; preds = %1
  %9 = load ptr, ptr @callmem, align 8, !tbaa !103
  tail call fastcc void @cselib_invalidate_mem(ptr noundef %9)
  tail call fastcc void @remove_useless_values()
  %10 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  %11 = icmp eq ptr %10, @dummy_val
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 597, ptr noundef nonnull @.str.1) #25
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @cselib_invalidate_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !prof !102 !PGOFuncName !149 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !118
  %4 = icmp eq i32 %3, 0
  %5 = icmp ult i32 %0, 53
  %6 = or i1 %5, %4
  br i1 %6, label %14, label %7, !prof !150

7:                                                ; preds = %2
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !103
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i16, ptr %8, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !151
  %12 = icmp slt i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1746, ptr noundef nonnull @.str.1) #25
  br label %14

14:                                               ; preds = %2, %7, %13
  br i1 %5, label %15, label %27, !prof !152

15:                                               ; preds = %14
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %18, !prof !153

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #25
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i32, ptr @max_value_regs, align 4, !tbaa !118
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 %19)
  %21 = zext nneg i32 %0 to i64
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %21, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !114
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %25, %0
  br label %29

27:                                               ; preds = %14
  %28 = add i32 %0, 1
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i32 [ %20, %18 ], [ %0, %27 ]
  %31 = phi i32 [ %26, %18 ], [ %28, %27 ]
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %138, !prof !154

33:                                               ; preds = %29
  %34 = zext i32 %30 to i64
  %35 = zext i32 %31 to i64
  br label %36

36:                                               ; preds = %33, %135
  %37 = phi i64 [ %34, %33 ], [ %136, %135 ]
  %38 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %39 = getelementptr inbounds ptr, ptr %38, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = icmp eq ptr %40, null
  br i1 %41, label %135, label %42, !prof !155

42:                                               ; preds = %36
  %43 = icmp ult i64 %37, 53
  %44 = trunc i64 %37 to i32
  br label %45

45:                                               ; preds = %42, %131
  %46 = phi ptr [ %40, %42 ], [ %133, %131 ]
  %47 = phi ptr [ %39, %42 ], [ %132, %131 ]
  %48 = getelementptr inbounds %struct.elt_list, ptr %46, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !156
  %50 = icmp ne ptr %49, null
  %51 = select i1 %43, i1 %50, i1 false, !prof !158
  br i1 %51, label %52, label %65, !prof !159

52:                                               ; preds = %45
  %53 = trunc i64 %37 to i32
  %54 = add i32 %53, -1
  %55 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !134
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %37, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !114
  %63 = zext i8 %62 to i32
  %64 = add i32 %54, %63
  br label %65

65:                                               ; preds = %52, %45
  %66 = phi i32 [ %64, %52 ], [ %44, %45 ]
  %67 = icmp ult i32 %66, %0
  %68 = icmp eq ptr %49, null
  %69 = select i1 %67, i1 true, i1 %68, !prof !160
  %70 = load ptr, ptr @cfa_base_preserved_val, align 8
  %71 = icmp eq ptr %49, %70
  %72 = select i1 %69, i1 true, i1 %71, !prof !161
  br i1 %72, label %131, label %73, !prof !161, !llvm.loop !162

73:                                               ; preds = %65
  %74 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %75 = getelementptr inbounds ptr, ptr %74, i64 %37
  %76 = load ptr, ptr %75, align 8, !tbaa !103
  %77 = icmp eq ptr %46, %76
  br i1 %77, label %78, label %80, !prof !163

78:                                               ; preds = %73
  store ptr null, ptr %48, align 8, !tbaa !156
  %79 = load ptr, ptr %47, align 8, !tbaa !103
  br label %83

80:                                               ; preds = %73
  %81 = load ptr, ptr %46, align 8, !tbaa !164
  store ptr %81, ptr %47, align 8, !tbaa !103
  %82 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %82, ptr noundef nonnull %46) #25
  br label %83

83:                                               ; preds = %80, %78
  %84 = phi ptr [ %79, %78 ], [ %47, %80 ]
  %85 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !125
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88, !prof !165

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.elt_loc_list, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !166
  br label %91

91:                                               ; preds = %83, %88
  %92 = phi ptr [ %90, %88 ], [ null, %83 ]
  br label %93

93:                                               ; preds = %109, %91
  %94 = phi ptr [ %85, %91 ], [ %110, %109 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !103
  %96 = getelementptr inbounds %struct.elt_loc_list, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !127
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %109, !prof !167

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !114
  %104 = zext i32 %103 to i64
  %105 = icmp eq i64 %37, %104
  br i1 %105, label %106, label %109, !prof !168

106:                                              ; preds = %101
  %107 = load ptr, ptr %95, align 8, !tbaa !132
  store ptr %107, ptr %94, align 8, !tbaa !103
  %108 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %108, ptr noundef nonnull %95) #25
  br i1 %87, label %131, label %111, !prof !165

109:                                              ; preds = %101, %93
  %110 = load ptr, ptr %94, align 8, !tbaa !103
  br label %93, !llvm.loop !169

111:                                              ; preds = %106
  %112 = load ptr, ptr %85, align 8, !tbaa !125
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %131, !prof !170

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !134
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 67108864
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %131, !prof !171

120:                                              ; preds = %114
  %121 = icmp eq ptr %92, null
  br i1 %121, label %126, label %122, !prof !172

122:                                              ; preds = %120
  %123 = load i32, ptr %92, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 7
  br i1 %125, label %127, label %126, !prof !173

126:                                              ; preds = %122, %120
  br label %127

127:                                              ; preds = %122, %126
  %128 = phi ptr [ @n_useless_values, %126 ], [ @n_useless_debug_values, %122 ]
  %129 = load i32, ptr %128, align 4, !tbaa !118
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %128, align 4, !tbaa !118
  br label %131

131:                                              ; preds = %127, %65, %106, %111, %114
  %132 = phi ptr [ %84, %114 ], [ %84, %111 ], [ %84, %106 ], [ %46, %65 ], [ %84, %127 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !103
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %45, !prof !174

135:                                              ; preds = %131, %36
  %136 = add nuw nsw i64 %37, 1
  %137 = icmp eq i64 %136, %35
  br i1 %137, label %138, label %36, !prof !175, !llvm.loop !176

138:                                              ; preds = %135, %29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @cselib_invalidate_mem(ptr noundef %0) unnamed_addr #9 !prof !102 !PGOFuncName !177 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = tail call ptr @get_addr(ptr noundef %3) #25
  %5 = tail call ptr @canon_rtx(ptr noundef %4) #25
  %6 = tail call ptr @canon_rtx(ptr noundef %0) #25
  %7 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  %8 = icmp eq ptr %7, @dummy_val
  br i1 %8, label %102, label %9, !prof !178

9:                                                ; preds = %1, %99
  %10 = phi ptr [ %100, %99 ], [ @first_containing_mem, %1 ]
  %11 = phi ptr [ %95, %99 ], [ %7, %1 ]
  %12 = phi i32 [ %72, %99 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !179

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.elt_loc_list, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !166
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi ptr [ %18, %16 ], [ null, %9 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !103
  %22 = icmp eq ptr %21, null
  br i1 %22, label %70, label %23, !prof !180

23:                                               ; preds = %19, %64
  %24 = phi ptr [ %68, %64 ], [ %21, %19 ]
  %25 = phi i32 [ %67, %64 ], [ %12, %19 ]
  %26 = phi ptr [ %66, %64 ], [ %13, %19 ]
  %27 = phi i8 [ %65, %64 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.elt_loc_list, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %33, label %64, !prof !181, !llvm.loop !182

33:                                               ; preds = %23
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !103
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 73, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !183
  %37 = icmp slt i32 %25, %36
  br i1 %37, label %38, label %47, !prof !185

38:                                               ; preds = %33
  %39 = load i32, ptr %6, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call i32 @canon_true_dependence(ptr noundef nonnull %6, i32 noundef %41, ptr noundef %5, ptr noundef nonnull %29, ptr noundef null, ptr noundef nonnull @cselib_rtx_varies_p) #25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47, !prof !186

44:                                               ; preds = %38
  %45 = add nsw i32 %25, 1
  %46 = load ptr, ptr %26, align 8, !tbaa !103
  br label %64, !llvm.loop !182

47:                                               ; preds = %38, %33
  %48 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !114
  %50 = tail call ptr @cselib_lookup(ptr noundef %49, i32 noundef 0, i32 noundef 0)
  %51 = getelementptr inbounds %struct.cselib_val_struct, ptr %50, i64 0, i32 4
  br label %52

52:                                               ; preds = %52, %47
  %53 = phi ptr [ %51, %47 ], [ %54, %52 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !103
  %55 = getelementptr inbounds %struct.elt_list, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !156
  %57 = icmp eq ptr %56, %11
  br i1 %57, label %58, label %52, !prof !187, !llvm.loop !188

58:                                               ; preds = %52
  %59 = load ptr, ptr %54, align 8, !tbaa !164
  store ptr %59, ptr %53, align 8, !tbaa !103
  %60 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %60, ptr noundef nonnull %54) #25
  %61 = load ptr, ptr %26, align 8, !tbaa !103
  %62 = load ptr, ptr %61, align 8, !tbaa !132
  store ptr %62, ptr %26, align 8, !tbaa !103
  %63 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %63, ptr noundef nonnull %61) #25
  br label %64

64:                                               ; preds = %23, %58, %44
  %65 = phi i8 [ %27, %58 ], [ 1, %44 ], [ %27, %23 ]
  %66 = phi ptr [ %26, %58 ], [ %46, %44 ], [ %24, %23 ]
  %67 = phi i32 [ %25, %58 ], [ %45, %44 ], [ %25, %23 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !103
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %23, !prof !189

70:                                               ; preds = %64, %19
  %71 = phi i8 [ 0, %19 ], [ %65, %64 ]
  %72 = phi i32 [ %12, %19 ], [ %67, %64 ]
  br i1 %15, label %93, label %73, !prof !179

73:                                               ; preds = %70
  %74 = load ptr, ptr %13, align 8, !tbaa !125
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %93, !prof !190

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !134
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 67108864
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %93, !prof !191

82:                                               ; preds = %76
  %83 = icmp eq ptr %20, null
  br i1 %83, label %88, label %84, !prof !192

84:                                               ; preds = %82
  %85 = load i32, ptr %20, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 7
  br i1 %87, label %89, label %88, !prof !192

88:                                               ; preds = %84, %82
  br label %89

89:                                               ; preds = %84, %88
  %90 = phi ptr [ @n_useless_values, %88 ], [ @n_useless_debug_values, %84 ]
  %91 = load i32, ptr %90, align 4, !tbaa !118
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !118
  br label %93

93:                                               ; preds = %89, %76, %73, %70
  %94 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !193
  %96 = icmp eq i8 %71, 0
  br i1 %96, label %98, label %97, !prof !194

97:                                               ; preds = %93
  store ptr %11, ptr %10, align 8, !tbaa !103
  br label %99

98:                                               ; preds = %93
  store ptr null, ptr %94, align 8, !tbaa !193
  br label %99

99:                                               ; preds = %98, %97
  %100 = phi ptr [ %94, %97 ], [ %10, %98 ]
  %101 = icmp eq ptr %95, @dummy_val
  br i1 %101, label %102, label %9, !prof !195, !llvm.loop !196

102:                                              ; preds = %99, %1
  %103 = phi ptr [ @first_containing_mem, %1 ], [ %100, %99 ]
  store ptr @dummy_val, ptr %103, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_useless_values() unnamed_addr #16 !prof !197 !PGOFuncName !198 {
  br label %1

1:                                                ; preds = %1, %0
  store i1 false, ptr @values_became_useless, align 4
  %2 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  tail call void @htab_traverse(ptr noundef %2, ptr noundef nonnull @discard_useless_locs, ptr noundef null) #25
  %3 = load i1, ptr @values_became_useless, align 4
  br i1 %3, label %1, label %4, !prof !199, !llvm.loop !200

4:                                                ; preds = %1
  %5 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  %6 = icmp eq ptr %5, @dummy_val
  br i1 %6, label %20, label %7, !prof !201

7:                                                ; preds = %4, %15
  %8 = phi ptr [ %18, %15 ], [ %5, %4 ]
  %9 = phi ptr [ %16, %15 ], [ @first_containing_mem, %4 ]
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  store ptr %8, ptr %9, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 5
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = icmp eq ptr %18, @dummy_val
  br i1 %19, label %20, label %7, !prof !201, !llvm.loop !202

20:                                               ; preds = %15, %4
  %21 = phi ptr [ @first_containing_mem, %4 ], [ %16, %15 ]
  store ptr @dummy_val, ptr %21, align 8, !tbaa !103
  %22 = load i32, ptr @n_useless_debug_values, align 4, !tbaa !118
  %23 = load i32, ptr @n_useless_values, align 4, !tbaa !118
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr @n_useless_values, align 4, !tbaa !118
  %25 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %26 = sub nsw i32 %25, %22
  store i32 %26, ptr @n_debug_values, align 4, !tbaa !118
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !118
  %27 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  tail call void @htab_traverse(ptr noundef %27, ptr noundef nonnull @discard_useless_values, ptr noundef null) #25
  %28 = load i32, ptr @n_useless_values, align 4, !tbaa !118
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !203

30:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 550, ptr noundef nonnull @.str.1) #25
  br label %31

31:                                               ; preds = %20, %30
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cselib_reg_set_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !204 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %8, label %5, !prof !205

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  br label %26

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !114
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !206

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.elt_list, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20, !prof !207

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cselib_val_struct, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %8, %16, %20, %5
  %27 = phi i32 [ %25, %20 ], [ %7, %5 ], [ 0, %16 ], [ 0, %8 ]
  ret i32 %27
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @rtx_equal_for_cselib_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !208 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %13 [
    i16 37, label %5
    i16 43, label %5
  ], !prof !209

5:                                                ; preds = %2, %2
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %7, i32 noundef 0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !210

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  br label %13

13:                                               ; preds = %5, %10, %2
  %14 = phi ptr [ %0, %2 ], [ %12, %10 ], [ %0, %5 ]
  %15 = load i32, ptr %1, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %25 [
    i16 37, label %17
    i16 43, label %17
  ], !prof !211

17:                                               ; preds = %13, %13
  %18 = lshr i32 %15, 16
  %19 = and i32 %18, 255
  %20 = tail call ptr @cselib_lookup(ptr noundef nonnull %1, i32 noundef %19, i32 noundef 0)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !212

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cselib_val_struct, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !134
  br label %25

25:                                               ; preds = %17, %22, %13
  %26 = phi ptr [ %1, %13 ], [ %24, %22 ], [ %1, %17 ]
  %27 = icmp eq ptr %14, %26
  br i1 %27, label %202, label %28, !prof !213

28:                                               ; preds = %25
  %29 = load i32, ptr %14, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %58, !prof !214

32:                                               ; preds = %28
  %33 = load i32, ptr %26, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %195, label %36, !prof !215

36:                                               ; preds = %32
  br i1 %31, label %37, label %58, !prof !216

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !114
  %40 = getelementptr inbounds %struct.cselib_val_struct, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !103
  %42 = icmp eq ptr %41, null
  br i1 %42, label %202, label %43, !prof !217

43:                                               ; preds = %37, %55
  %44 = phi ptr [ %56, %55 ], [ %41, %37 ]
  %45 = getelementptr inbounds %struct.elt_loc_list, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !127
  %47 = load i32, ptr %46, align 8
  %48 = trunc i32 %47 to i16
  switch i16 %48, label %49 [
    i16 37, label %53
    i16 43, label %53
  ], !prof !218

49:                                               ; preds = %43
  %50 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %46, ptr noundef nonnull %26)
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %43, %49, %43
  %54 = phi i32 [ 4, %43 ], [ %52, %49 ], [ 4, %43 ]
  switch i32 %54, label %202 [
    i32 0, label %55
    i32 4, label %55
  ], !prof !219

55:                                               ; preds = %53, %53
  %56 = load ptr, ptr %44, align 8, !tbaa !103
  %57 = icmp eq ptr %56, null
  br i1 %57, label %202, label %43, !prof !220, !llvm.loop !221

58:                                               ; preds = %28, %36
  %59 = load i32, ptr %26, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %83, !prof !222

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !114
  %65 = getelementptr inbounds %struct.cselib_val_struct, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !103
  %67 = icmp eq ptr %66, null
  br i1 %67, label %202, label %68, !prof !223

68:                                               ; preds = %62, %80
  %69 = phi ptr [ %81, %80 ], [ %66, %62 ]
  %70 = getelementptr inbounds %struct.elt_loc_list, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !127
  %72 = load i32, ptr %71, align 8
  %73 = trunc i32 %72 to i16
  switch i16 %73, label %74 [
    i16 37, label %78
    i16 43, label %78
  ], !prof !224

74:                                               ; preds = %68
  %75 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %14, ptr noundef nonnull %71)
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  br label %78

78:                                               ; preds = %68, %74, %68
  %79 = phi i32 [ 7, %68 ], [ %77, %74 ], [ 7, %68 ]
  switch i32 %79, label %202 [
    i32 0, label %80
    i32 7, label %80
  ], !prof !225

80:                                               ; preds = %78, %78
  %81 = load ptr, ptr %69, align 8, !tbaa !103
  %82 = icmp eq ptr %81, null
  br i1 %82, label %202, label %68, !prof !226, !llvm.loop !227

83:                                               ; preds = %58
  %84 = icmp eq i32 %30, %60
  br i1 %84, label %85, label %202, !prof !228

85:                                               ; preds = %83
  %86 = xor i32 %59, %29
  %87 = and i32 %86, 16711680
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %202, !prof !229

89:                                               ; preds = %85
  %90 = trunc i32 %29 to i16
  switch i16 %90, label %91 [
    i16 32, label %202
    i16 31, label %202
    i16 2, label %202
    i16 44, label %195
  ], !prof !230

91:                                               ; preds = %89
  %92 = zext nneg i32 %30 to i64
  %93 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !103
  %95 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %92
  %96 = load i8, ptr %95, align 1, !tbaa !114
  %97 = zext i8 %96 to i64
  br label %98

98:                                               ; preds = %192, %91
  %99 = phi i64 [ %101, %192 ], [ %97, %91 ]
  %100 = phi i32 [ %194, %192 ], [ undef, %91 ]
  %101 = add nsw i64 %99, -1
  %102 = icmp sgt i64 %99, 0
  br i1 %102, label %103, label %202, !prof !231

103:                                              ; preds = %98
  %104 = getelementptr inbounds i8, ptr %94, i64 %101
  %105 = load i8, ptr %104, align 1, !tbaa !114
  switch i8 %105, label %190 [
    i8 119, label %106
    i8 110, label %114
    i8 105, label %114
    i8 86, label %122
    i8 69, label %122
    i8 101, label %152
    i8 83, label %181
    i8 115, label %181
    i8 117, label %191
    i8 48, label %191
    i8 116, label %191
  ], !prof !232

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %108 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %109 = getelementptr inbounds [1 x i64], ptr %107, i64 0, i64 %101
  %110 = load i64, ptr %109, align 8, !tbaa !114
  %111 = getelementptr inbounds [1 x i64], ptr %108, i64 0, i64 %101
  %112 = load i64, ptr %111, align 8, !tbaa !114
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %191, label %192, !prof !233

114:                                              ; preds = %103, %103
  %115 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %116 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %117 = getelementptr inbounds [1 x %union.rtunion_def], ptr %115, i64 0, i64 %101
  %118 = load i32, ptr %117, align 8, !tbaa !114
  %119 = getelementptr inbounds [1 x %union.rtunion_def], ptr %116, i64 0, i64 %101
  %120 = load i32, ptr %119, align 8, !tbaa !114
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %191, label %192, !prof !234

122:                                              ; preds = %103, %103
  %123 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %124 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %125 = getelementptr inbounds [1 x %union.rtunion_def], ptr %123, i64 0, i64 %101
  %126 = load ptr, ptr %125, align 8, !tbaa !114
  %127 = load i32, ptr %126, align 8, !tbaa !143
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %124, i64 0, i64 %101
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  %130 = load i32, ptr %129, align 8, !tbaa !143
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %192

132:                                              ; preds = %122
  %133 = load ptr, ptr %125, align 8, !tbaa !114
  %134 = load i32, ptr %133, align 8, !tbaa !143
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %142, label %191

136:                                              ; preds = %142
  %137 = add nuw nsw i64 %143, 1
  %138 = load ptr, ptr %125, align 8, !tbaa !114
  %139 = load i32, ptr %138, align 8, !tbaa !143
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %191, !llvm.loop !235

142:                                              ; preds = %132, %136
  %143 = phi i64 [ %137, %136 ], [ 0, %132 ]
  %144 = phi ptr [ %138, %136 ], [ %133, %132 ]
  %145 = getelementptr inbounds %struct.rtvec_def, ptr %144, i64 0, i32 1, i64 %143
  %146 = load ptr, ptr %145, align 8, !tbaa !103
  %147 = load ptr, ptr %128, align 8, !tbaa !114
  %148 = getelementptr inbounds %struct.rtvec_def, ptr %147, i64 0, i32 1, i64 %143
  %149 = load ptr, ptr %148, align 8, !tbaa !103
  %150 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %146, ptr noundef %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %192, label %136

152:                                              ; preds = %103
  %153 = icmp eq i64 %101, 1
  br i1 %153, label %154, label %172, !prof !236

154:                                              ; preds = %152
  %155 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 38), align 8, !tbaa !237
  %156 = tail call zeroext i8 %155(ptr noundef nonnull %14, i32 noundef 0) #25, !prof !249
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %172, label %158, !prof !250

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %160 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %161 = load ptr, ptr %159, align 8, !tbaa !114
  %162 = load ptr, ptr %160, align 8, !tbaa !114
  %163 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %161, ptr noundef %162)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165, !prof !251

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %167 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %166, align 8, !tbaa !114
  %169 = load ptr, ptr %167, align 8, !tbaa !114
  %170 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %168, ptr noundef %169)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %165, %158, %154, %152
  %173 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %174 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %175 = getelementptr inbounds [1 x %union.rtunion_def], ptr %173, i64 0, i64 %101
  %176 = load ptr, ptr %175, align 8, !tbaa !114
  %177 = getelementptr inbounds [1 x %union.rtunion_def], ptr %174, i64 0, i64 %101
  %178 = load ptr, ptr %177, align 8, !tbaa !114
  %179 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %176, ptr noundef %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %192, label %191, !prof !252

181:                                              ; preds = %103, %103
  %182 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %183 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %184 = getelementptr inbounds [1 x %union.rtunion_def], ptr %182, i64 0, i64 %101
  %185 = load ptr, ptr %184, align 8, !tbaa !114
  %186 = getelementptr inbounds [1 x %union.rtunion_def], ptr %183, i64 0, i64 %101
  %187 = load ptr, ptr %186, align 8, !tbaa !114
  %188 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(1) %187)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %192, !prof !253

190:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 766, ptr noundef nonnull @.str.1) #25
  br label %191

191:                                              ; preds = %136, %132, %181, %114, %103, %103, %103, %172, %106, %190
  br label %192

192:                                              ; preds = %142, %172, %122, %114, %106, %181, %165, %191
  %193 = phi i1 [ true, %191 ], [ false, %165 ], [ false, %181 ], [ false, %106 ], [ false, %114 ], [ false, %122 ], [ false, %172 ], [ false, %142 ]
  %194 = phi i32 [ %100, %191 ], [ 1, %165 ], [ 0, %181 ], [ 0, %106 ], [ 0, %114 ], [ 0, %122 ], [ 0, %172 ], [ 0, %142 ]
  br i1 %193, label %98, label %202, !prof !254, !llvm.loop !255

195:                                              ; preds = %89, %32
  %196 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !114
  %198 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !114
  %200 = icmp eq ptr %197, %199
  %201 = zext i1 %200 to i32
  br label %202

202:                                              ; preds = %192, %98, %80, %78, %55, %53, %195, %62, %37, %89, %89, %89, %83, %85, %25
  %203 = phi i32 [ 1, %25 ], [ 0, %85 ], [ 0, %83 ], [ 0, %89 ], [ 0, %89 ], [ 0, %89 ], [ 0, %37 ], [ 0, %62 ], [ %201, %195 ], [ 1, %53 ], [ 0, %55 ], [ 1, %78 ], [ 0, %80 ], [ 1, %98 ], [ %194, %192 ]
  ret i32 %203
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @cselib_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !256 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %1, i32 %6, !prof !257
  %9 = trunc i32 %4 to i16
  switch i16 %9, label %409 [
    i16 1, label %10
    i16 37, label %13
    i16 43, label %192
  ], !prof !258

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  br label %513

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !114
  %16 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21, !prof !259

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.elt_list, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27, !prof !260

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !164
  br label %27

27:                                               ; preds = %25, %21, %13
  %28 = phi ptr [ %26, %25 ], [ %19, %21 ], [ null, %13 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %69, label %30, !prof !261

30:                                               ; preds = %27, %66
  %31 = phi ptr [ %67, %66 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.elt_list, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !156
  %34 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !134
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %8, %38
  br i1 %39, label %40, label %66, !prof !262

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.elt_list, ptr %31, i64 0, i32 1
  %42 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !125
  %44 = getelementptr inbounds %struct.elt_loc_list, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !166
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47, !prof !263

47:                                               ; preds = %40
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %64, !prof !264

51:                                               ; preds = %47
  %52 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 7
  br i1 %57, label %64, label %58

58:                                               ; preds = %54, %51
  %59 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr @n_debug_values, align 4, !tbaa !118
  store ptr %52, ptr %44, align 8, !tbaa !166
  %61 = load ptr, ptr %43, align 8, !tbaa !132
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %64

64:                                               ; preds = %58, %40, %47, %54, %63
  %65 = load ptr, ptr %41, align 8, !tbaa !156
  br label %513

66:                                               ; preds = %30
  %67 = load ptr, ptr %31, align 8, !tbaa !164
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %30, !prof !265, !llvm.loop !266

69:                                               ; preds = %66, %27
  %70 = icmp eq i32 %2, 0
  br i1 %70, label %513, label %71, !prof !267

71:                                               ; preds = %69
  %72 = icmp ult i32 %15, 53
  br i1 %72, label %73, label %81, !prof !268

73:                                               ; preds = %71
  %74 = zext i32 %8 to i64
  %75 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %17, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !114
  %77 = zext i8 %76 to i32
  %78 = load i32, ptr @max_value_regs, align 4, !tbaa !118
  %79 = icmp ult i32 %78, %77
  br i1 %79, label %80, label %81, !prof !269

80:                                               ; preds = %73
  store i32 %77, ptr @max_value_regs, align 4, !tbaa !118
  br label %81

81:                                               ; preds = %80, %73, %71
  %82 = load i32, ptr @next_uid, align 4, !tbaa !118
  %83 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !103
  %84 = tail call ptr @pool_alloc(ptr noundef %83) #25
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %86, label %87, !prof !270

86:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 980, ptr noundef nonnull @.str.1) #25
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, ptr @next_uid, align 4, !tbaa !118
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91, !prof !270

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @.str.1) #25
  br label %91

91:                                               ; preds = %90, %87
  store i32 %82, ptr %84, align 8, !tbaa !271
  %92 = load i32, ptr @next_uid, align 4, !tbaa !118
  %93 = add i32 %92, 1
  store i32 %93, ptr @next_uid, align 4, !tbaa !118
  %94 = getelementptr inbounds %struct.cselib_val_struct, ptr %84, i64 0, i32 1
  store i32 %92, ptr %94, align 4, !tbaa !272
  %95 = load ptr, ptr @value_pool, align 8, !tbaa !103
  %96 = tail call ptr @pool_alloc(ptr noundef %95) #25
  %97 = getelementptr inbounds %struct.cselib_val_struct, ptr %84, i64 0, i32 2
  store ptr %96, ptr %97, align 8, !tbaa !134
  store i64 0, ptr %96, align 8
  %98 = load ptr, ptr %97, align 8, !tbaa !134
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, -65536
  %101 = or disjoint i32 %100, 1
  store i32 %101, ptr %98, align 8
  %102 = load ptr, ptr %97, align 8, !tbaa !134
  %103 = load i32, ptr %102, align 8
  %104 = shl nuw nsw i32 %6, 16
  %105 = and i32 %103, -16711681
  %106 = or disjoint i32 %105, %104
  store i32 %106, ptr %102, align 8
  %107 = load ptr, ptr %97, align 8, !tbaa !134
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  store ptr %84, ptr %108, align 8, !tbaa !114
  %109 = getelementptr inbounds %struct.cselib_val_struct, ptr %84, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %109, i8 0, i64 24, i1 false)
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %111 = icmp eq ptr %110, null
  br i1 %111, label %134, label %112, !prof !273

112:                                              ; preds = %91
  %113 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %94, align 4, !tbaa !272
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.17, i32 noundef %117, i32 noundef %82)
  %119 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !118
  %120 = icmp ne i32 %119, 0
  %121 = load i32, ptr @flag_dump_unnumbered, align 4
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 true, i1 %122
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !103
  br i1 %123, label %125, label %127

125:                                              ; preds = %116
  %126 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %124)
  br label %129

127:                                              ; preds = %116
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.19, ptr noundef nonnull %84)
  br label %129

129:                                              ; preds = %127, %125
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %131 = tail call i32 @print_rtl_single(ptr noundef %130, ptr noundef nonnull %0) #25
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %133 = tail call i32 @fputc(i32 noundef 10, ptr noundef %132)
  br label %134

134:                                              ; preds = %91, %112, %129
  %135 = load ptr, ptr %109, align 8, !tbaa !125
  %136 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  %137 = tail call ptr @pool_alloc(ptr noundef %136) #25
  store ptr %135, ptr %137, align 8, !tbaa !132
  %138 = getelementptr inbounds %struct.elt_loc_list, ptr %137, i64 0, i32 1
  store ptr %0, ptr %138, align 8, !tbaa !127
  %139 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %140 = getelementptr inbounds %struct.elt_loc_list, ptr %137, i64 0, i32 2
  store ptr %139, ptr %140, align 8, !tbaa !166
  %141 = icmp eq ptr %135, null
  br i1 %141, label %151, label %142, !prof !274

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.elt_loc_list, ptr %135, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !166
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %144, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 7
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #25
  br label %151

151:                                              ; preds = %150, %146, %142, %134
  %152 = load ptr, ptr @cselib_current_insn, align 8
  %153 = icmp ne ptr %152, null
  %154 = select i1 %141, i1 %153, i1 false, !prof !274
  br i1 %154, label %155, label %162, !prof !275

155:                                              ; preds = %151
  %156 = load i32, ptr %152, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 7
  br i1 %158, label %159, label %162, !prof !276

159:                                              ; preds = %155
  %160 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr @n_debug_values, align 4, !tbaa !118
  br label %162

162:                                              ; preds = %151, %155, %159
  store ptr %137, ptr %109, align 8, !tbaa !125
  %163 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %164 = getelementptr inbounds ptr, ptr %163, i64 %17
  %165 = load ptr, ptr %164, align 8, !tbaa !103
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %178, !prof !277

167:                                              ; preds = %162
  %168 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %169 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %170 = add i32 %169, 1
  store i32 %170, ptr @n_used_regs, align 4, !tbaa !118
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds i32, ptr %168, i64 %171
  store i32 %15, ptr %172, align 4, !tbaa !118
  %173 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  %174 = tail call ptr @pool_alloc(ptr noundef %173) #25
  store ptr %165, ptr %174, align 8, !tbaa !164
  %175 = getelementptr inbounds %struct.elt_list, ptr %174, i64 0, i32 1
  store ptr null, ptr %175, align 8, !tbaa !156
  %176 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %177 = getelementptr inbounds ptr, ptr %176, i64 %17
  store ptr %174, ptr %177, align 8, !tbaa !103
  br label %178

178:                                              ; preds = %167, %162
  %179 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %180 = getelementptr inbounds ptr, ptr %179, i64 %17
  %181 = load ptr, ptr %180, align 8, !tbaa !103
  %182 = load ptr, ptr %181, align 8, !tbaa !164
  %183 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  %184 = tail call ptr @pool_alloc(ptr noundef %183) #25
  store ptr %182, ptr %184, align 8, !tbaa !164
  %185 = getelementptr inbounds %struct.elt_list, ptr %184, i64 0, i32 1
  store ptr %84, ptr %185, align 8, !tbaa !156
  %186 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %187 = getelementptr inbounds ptr, ptr %186, i64 %17
  %188 = load ptr, ptr %187, align 8, !tbaa !103
  store ptr %184, ptr %188, align 8, !tbaa !164
  %189 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  %190 = load i32, ptr %84, align 8, !tbaa !271
  %191 = tail call ptr @htab_find_slot_with_hash(ptr noundef %189, ptr noundef nonnull %0, i32 noundef %190, i32 noundef 1) #25
  store ptr %84, ptr %191, align 8, !tbaa !103
  br label %513

192:                                              ; preds = %3
  %193 = and i32 %4, 134217728
  %194 = icmp eq i32 %193, 0
  %195 = icmp ne i32 %6, 1
  %196 = and i1 %194, %195
  %197 = load i8, ptr @cselib_record_memory, align 1
  %198 = icmp ne i8 %197, 0
  %199 = select i1 %196, i1 %198, i1 false, !prof !278
  br i1 %199, label %200, label %513, !prof !279

200:                                              ; preds = %192
  %201 = zext nneg i32 %6 to i64
  %202 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !114
  switch i8 %203, label %204 [
    i8 8, label %209
    i8 9, label %209
    i8 11, label %209
  ], !prof !280

204:                                              ; preds = %200
  %205 = icmp eq i8 %203, 17
  %206 = load i32, ptr @flag_float_store, align 4
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %205, i1 %207, i1 false, !prof !281
  br i1 %208, label %513, label %212, !prof !281

209:                                              ; preds = %200, %200, %200
  %210 = load i32, ptr @flag_float_store, align 4, !tbaa !118
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %513

212:                                              ; preds = %204, %209
  %213 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !114
  %215 = tail call ptr @cselib_lookup(ptr noundef %214, i32 noundef %6, i32 noundef %2)
  %216 = icmp eq ptr %215, null
  br i1 %216, label %513, label %217, !prof !282

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.cselib_val_struct, ptr %215, i64 0, i32 4
  br label %219

219:                                              ; preds = %223, %217
  %220 = phi ptr [ %218, %217 ], [ %221, %223 ]
  %221 = load ptr, ptr %220, align 8, !tbaa !103
  %222 = icmp eq ptr %221, null
  br i1 %222, label %258, label %223, !prof !283

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.elt_list, ptr %221, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !156
  %226 = getelementptr inbounds %struct.cselib_val_struct, ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !134
  %228 = load i32, ptr %227, align 8
  %229 = lshr i32 %228, 16
  %230 = and i32 %229, 255
  %231 = icmp eq i32 %230, %6
  br i1 %231, label %232, label %219, !prof !284, !llvm.loop !285

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.elt_list, ptr %221, i64 0, i32 1
  %234 = getelementptr inbounds %struct.cselib_val_struct, ptr %225, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !125
  %236 = getelementptr inbounds %struct.elt_loc_list, ptr %235, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !166
  %238 = icmp eq ptr %237, null
  br i1 %238, label %256, label %239, !prof !286

239:                                              ; preds = %232
  %240 = load i32, ptr %237, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 7
  br i1 %242, label %243, label %256, !prof !286

243:                                              ; preds = %239
  %244 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %245 = icmp eq ptr %244, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %243
  %247 = load i32, ptr %244, align 8
  %248 = and i32 %247, 65535
  %249 = icmp eq i32 %248, 7
  br i1 %249, label %256, label %250

250:                                              ; preds = %246, %243
  %251 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %252 = add nsw i32 %251, -1
  store i32 %252, ptr @n_debug_values, align 4, !tbaa !118
  store ptr %244, ptr %236, align 8, !tbaa !166
  %253 = load ptr, ptr %235, align 8, !tbaa !132
  %254 = icmp eq ptr %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %250
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %256

256:                                              ; preds = %250, %255, %246, %239, %232
  %257 = load ptr, ptr %233, align 8, !tbaa !156
  br label %513

258:                                              ; preds = %219
  %259 = icmp eq i32 %2, 0
  br i1 %259, label %513, label %260, !prof !287

260:                                              ; preds = %258
  %261 = load i32, ptr @next_uid, align 4, !tbaa !118
  %262 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !103
  %263 = tail call ptr @pool_alloc(ptr noundef %262) #25
  %264 = icmp eq i32 %261, 0
  br i1 %264, label %265, label %266, !prof !270

265:                                              ; preds = %260
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 980, ptr noundef nonnull @.str.1) #25
  br label %266

266:                                              ; preds = %265, %260
  %267 = load i32, ptr @next_uid, align 4, !tbaa !118
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %270, !prof !270

269:                                              ; preds = %266
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @.str.1) #25
  br label %270

270:                                              ; preds = %269, %266
  store i32 %261, ptr %263, align 8, !tbaa !271
  %271 = load i32, ptr @next_uid, align 4, !tbaa !118
  %272 = add i32 %271, 1
  store i32 %272, ptr @next_uid, align 4, !tbaa !118
  %273 = getelementptr inbounds %struct.cselib_val_struct, ptr %263, i64 0, i32 1
  store i32 %271, ptr %273, align 4, !tbaa !272
  %274 = load ptr, ptr @value_pool, align 8, !tbaa !103
  %275 = tail call ptr @pool_alloc(ptr noundef %274) #25
  %276 = getelementptr inbounds %struct.cselib_val_struct, ptr %263, i64 0, i32 2
  store ptr %275, ptr %276, align 8, !tbaa !134
  store i64 0, ptr %275, align 8
  %277 = load ptr, ptr %276, align 8, !tbaa !134
  %278 = load i32, ptr %277, align 8
  %279 = and i32 %278, -65536
  %280 = or disjoint i32 %279, 1
  store i32 %280, ptr %277, align 8
  %281 = load ptr, ptr %276, align 8, !tbaa !134
  %282 = load i32, ptr %281, align 8
  %283 = shl nuw nsw i32 %6, 16
  %284 = and i32 %282, -16711681
  %285 = or disjoint i32 %284, %283
  store i32 %285, ptr %281, align 8
  %286 = load ptr, ptr %276, align 8, !tbaa !134
  %287 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1
  store ptr %263, ptr %287, align 8, !tbaa !114
  %288 = getelementptr inbounds %struct.cselib_val_struct, ptr %263, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %288, i8 0, i64 24, i1 false)
  %289 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %290 = icmp eq ptr %289, null
  br i1 %290, label %313, label %291, !prof !273

291:                                              ; preds = %270
  %292 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %293 = and i32 %292, 8
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %313, label %295

295:                                              ; preds = %291
  %296 = load i32, ptr %273, align 4, !tbaa !272
  %297 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %289, ptr noundef nonnull @.str.17, i32 noundef %296, i32 noundef %261)
  %298 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !118
  %299 = icmp ne i32 %298, 0
  %300 = load i32, ptr @flag_dump_unnumbered, align 4
  %301 = icmp ne i32 %300, 0
  %302 = select i1 %299, i1 true, i1 %301
  %303 = load ptr, ptr @dump_file, align 8, !tbaa !103
  br i1 %302, label %304, label %306

304:                                              ; preds = %295
  %305 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %303)
  br label %308

306:                                              ; preds = %295
  %307 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %303, ptr noundef nonnull @.str.19, ptr noundef nonnull %263)
  br label %308

308:                                              ; preds = %306, %304
  %309 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %310 = tail call i32 @print_rtl_single(ptr noundef %309, ptr noundef nonnull %0) #25
  %311 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %312 = tail call i32 @fputc(i32 noundef 10, ptr noundef %311)
  br label %313

313:                                              ; preds = %270, %291, %308
  %314 = load ptr, ptr %288, align 8, !tbaa !103
  %315 = icmp eq ptr %314, null
  br i1 %315, label %353, label %316, !prof !288

316:                                              ; preds = %313, %350
  %317 = phi ptr [ %351, %350 ], [ %314, %313 ]
  %318 = getelementptr inbounds %struct.elt_loc_list, ptr %317, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !127
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 65535
  %322 = icmp eq i32 %321, 43
  br i1 %322, label %323, label %350, !prof !289

323:                                              ; preds = %316
  %324 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !114
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !114
  %328 = icmp eq ptr %327, %215
  br i1 %328, label %329, label %350, !prof !290

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.elt_loc_list, ptr %317, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !166
  %332 = icmp eq ptr %331, null
  br i1 %332, label %394, label %333

333:                                              ; preds = %329
  %334 = load i32, ptr %331, align 8
  %335 = and i32 %334, 65535
  %336 = icmp eq i32 %335, 7
  br i1 %336, label %337, label %394

337:                                              ; preds = %333
  %338 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %339 = icmp eq ptr %338, null
  br i1 %339, label %344, label %340

340:                                              ; preds = %337
  %341 = load i32, ptr %338, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 7
  br i1 %343, label %394, label %344

344:                                              ; preds = %340, %337
  %345 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %346 = add nsw i32 %345, -1
  store i32 %346, ptr @n_debug_values, align 4, !tbaa !118
  store ptr %338, ptr %330, align 8, !tbaa !166
  %347 = load ptr, ptr %317, align 8, !tbaa !132
  %348 = icmp eq ptr %347, null
  br i1 %348, label %394, label %349

349:                                              ; preds = %344
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %394

350:                                              ; preds = %323, %316
  %351 = load ptr, ptr %317, align 8, !tbaa !103
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %316, !prof !291, !llvm.loop !292

353:                                              ; preds = %350, %313
  %354 = load ptr, ptr %218, align 8, !tbaa !293
  %355 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  %356 = tail call ptr @pool_alloc(ptr noundef %355) #25
  store ptr %354, ptr %356, align 8, !tbaa !164
  %357 = getelementptr inbounds %struct.elt_list, ptr %356, i64 0, i32 1
  store ptr %263, ptr %357, align 8, !tbaa !156
  store ptr %356, ptr %218, align 8, !tbaa !293
  %358 = load ptr, ptr %288, align 8, !tbaa !125
  %359 = getelementptr inbounds %struct.cselib_val_struct, ptr %215, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !134
  %361 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %360) #25
  %362 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  %363 = tail call ptr @pool_alloc(ptr noundef %362) #25
  store ptr %358, ptr %363, align 8, !tbaa !132
  %364 = getelementptr inbounds %struct.elt_loc_list, ptr %363, i64 0, i32 1
  store ptr %361, ptr %364, align 8, !tbaa !127
  %365 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %366 = getelementptr inbounds %struct.elt_loc_list, ptr %363, i64 0, i32 2
  store ptr %365, ptr %366, align 8, !tbaa !166
  %367 = icmp eq ptr %358, null
  br i1 %367, label %377, label %368, !prof !294

368:                                              ; preds = %353
  %369 = getelementptr inbounds %struct.elt_loc_list, ptr %358, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !166
  %371 = icmp eq ptr %370, null
  br i1 %371, label %377, label %372, !prof !295

372:                                              ; preds = %368
  %373 = load i32, ptr %370, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 7
  br i1 %375, label %376, label %377, !prof !295

376:                                              ; preds = %372
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #25
  br label %377

377:                                              ; preds = %376, %372, %368, %353
  %378 = load ptr, ptr @cselib_current_insn, align 8
  %379 = icmp ne ptr %378, null
  %380 = select i1 %367, i1 %379, i1 false, !prof !294
  br i1 %380, label %381, label %388, !prof !294

381:                                              ; preds = %377
  %382 = load i32, ptr %378, align 8
  %383 = and i32 %382, 65535
  %384 = icmp eq i32 %383, 7
  br i1 %384, label %385, label %388, !prof !296

385:                                              ; preds = %381
  %386 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %387 = add nsw i32 %386, 1
  store i32 %387, ptr @n_debug_values, align 4, !tbaa !118
  br label %388

388:                                              ; preds = %385, %381, %377
  store ptr %363, ptr %288, align 8, !tbaa !125
  %389 = getelementptr inbounds %struct.cselib_val_struct, ptr %263, i64 0, i32 5
  %390 = load ptr, ptr %389, align 8, !tbaa !193
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %394, !prof !297

392:                                              ; preds = %388
  %393 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  store ptr %393, ptr %389, align 8, !tbaa !193
  store ptr %263, ptr @first_containing_mem, align 8, !tbaa !103
  br label %394

394:                                              ; preds = %329, %333, %340, %344, %349, %388, %392
  %395 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  %396 = load i32, ptr %0, align 8
  %397 = trunc i32 %396 to i16
  switch i16 %397, label %405 [
    i16 30, label %401
    i16 31, label %401
    i16 32, label %398
  ], !prof !298

398:                                              ; preds = %394
  %399 = and i32 %396, 16711680
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %398, %394, %394
  br i1 %7, label %402, label %403, !prof !299

402:                                              ; preds = %401
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 781, ptr noundef nonnull @.str.1) #25
  br label %403

403:                                              ; preds = %402, %401
  %404 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %6, ptr noundef nonnull %0) #25
  br label %405

405:                                              ; preds = %394, %398, %403
  %406 = phi ptr [ %404, %403 ], [ %0, %394 ], [ %0, %398 ]
  %407 = load i32, ptr %263, align 8, !tbaa !271
  %408 = tail call ptr @htab_find_slot_with_hash(ptr noundef %395, ptr noundef %406, i32 noundef %407, i32 noundef 1) #25
  store ptr %263, ptr %408, align 8, !tbaa !103
  br label %513

409:                                              ; preds = %3
  %410 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef nonnull %0, i32 noundef %2)
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %513, label %412, !prof !300

412:                                              ; preds = %409
  %413 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  %414 = load i32, ptr %0, align 8
  %415 = trunc i32 %414 to i16
  switch i16 %415, label %424 [
    i16 30, label %419
    i16 31, label %419
    i16 32, label %416
  ], !prof !298

416:                                              ; preds = %412
  %417 = and i32 %414, 16711680
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %416, %412, %412
  %420 = icmp eq i32 %8, 0
  br i1 %420, label %421, label %422, !prof !299

421:                                              ; preds = %419
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 781, ptr noundef nonnull @.str.1) #25
  br label %422

422:                                              ; preds = %421, %419
  %423 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %8, ptr noundef nonnull %0) #25
  br label %424

424:                                              ; preds = %412, %416, %422
  %425 = phi ptr [ %423, %422 ], [ %0, %412 ], [ %0, %416 ]
  %426 = icmp ne i32 %2, 0
  %427 = zext i1 %426 to i32
  %428 = tail call ptr @htab_find_slot_with_hash(ptr noundef %413, ptr noundef %425, i32 noundef %410, i32 noundef %427) #25
  %429 = icmp eq ptr %428, null
  br i1 %429, label %513, label %430, !prof !301

430:                                              ; preds = %424
  %431 = load ptr, ptr %428, align 8, !tbaa !103
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %513, !prof !302

433:                                              ; preds = %430
  %434 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !103
  %435 = tail call ptr @pool_alloc(ptr noundef %434) #25
  %436 = load i32, ptr @next_uid, align 4, !tbaa !118
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439, !prof !270

438:                                              ; preds = %433
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @.str.1) #25
  br label %439

439:                                              ; preds = %438, %433
  store i32 %410, ptr %435, align 8, !tbaa !271
  %440 = load i32, ptr @next_uid, align 4, !tbaa !118
  %441 = add i32 %440, 1
  store i32 %441, ptr @next_uid, align 4, !tbaa !118
  %442 = getelementptr inbounds %struct.cselib_val_struct, ptr %435, i64 0, i32 1
  store i32 %440, ptr %442, align 4, !tbaa !272
  %443 = load ptr, ptr @value_pool, align 8, !tbaa !103
  %444 = tail call ptr @pool_alloc(ptr noundef %443) #25
  %445 = getelementptr inbounds %struct.cselib_val_struct, ptr %435, i64 0, i32 2
  store ptr %444, ptr %445, align 8, !tbaa !134
  store i64 0, ptr %444, align 8
  %446 = load ptr, ptr %445, align 8, !tbaa !134
  %447 = load i32, ptr %446, align 8
  %448 = and i32 %447, -65536
  %449 = or disjoint i32 %448, 1
  store i32 %449, ptr %446, align 8
  %450 = load ptr, ptr %445, align 8, !tbaa !134
  %451 = load i32, ptr %450, align 8
  %452 = shl i32 %8, 16
  %453 = and i32 %452, 16711680
  %454 = and i32 %451, -16711681
  %455 = or disjoint i32 %454, %453
  store i32 %455, ptr %450, align 8
  %456 = load ptr, ptr %445, align 8, !tbaa !134
  %457 = getelementptr inbounds %struct.rtx_def, ptr %456, i64 0, i32 1
  store ptr %435, ptr %457, align 8, !tbaa !114
  %458 = getelementptr inbounds %struct.cselib_val_struct, ptr %435, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %458, i8 0, i64 24, i1 false)
  %459 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %460 = icmp eq ptr %459, null
  br i1 %460, label %483, label %461, !prof !273

461:                                              ; preds = %439
  %462 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %463 = and i32 %462, 8
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %483, label %465

465:                                              ; preds = %461
  %466 = load i32, ptr %442, align 4, !tbaa !272
  %467 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %459, ptr noundef nonnull @.str.17, i32 noundef %466, i32 noundef %410)
  %468 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !118
  %469 = icmp ne i32 %468, 0
  %470 = load i32, ptr @flag_dump_unnumbered, align 4
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %469, i1 true, i1 %471
  %473 = load ptr, ptr @dump_file, align 8, !tbaa !103
  br i1 %472, label %474, label %476

474:                                              ; preds = %465
  %475 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %473)
  br label %478

476:                                              ; preds = %465
  %477 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.19, ptr noundef nonnull %435)
  br label %478

478:                                              ; preds = %476, %474
  %479 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %480 = tail call i32 @print_rtl_single(ptr noundef %479, ptr noundef nonnull %0) #25
  %481 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %482 = tail call i32 @fputc(i32 noundef 10, ptr noundef %481)
  br label %483

483:                                              ; preds = %439, %461, %478
  store ptr %435, ptr %428, align 8, !tbaa !103
  %484 = load ptr, ptr %458, align 8, !tbaa !125
  %485 = tail call ptr @cselib_subst_to_values(ptr noundef nonnull %0)
  %486 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  %487 = tail call ptr @pool_alloc(ptr noundef %486) #25
  store ptr %484, ptr %487, align 8, !tbaa !132
  %488 = getelementptr inbounds %struct.elt_loc_list, ptr %487, i64 0, i32 1
  store ptr %485, ptr %488, align 8, !tbaa !127
  %489 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %490 = getelementptr inbounds %struct.elt_loc_list, ptr %487, i64 0, i32 2
  store ptr %489, ptr %490, align 8, !tbaa !166
  %491 = icmp eq ptr %484, null
  br i1 %491, label %501, label %492, !prof !303

492:                                              ; preds = %483
  %493 = getelementptr inbounds %struct.elt_loc_list, ptr %484, i64 0, i32 2
  %494 = load ptr, ptr %493, align 8, !tbaa !166
  %495 = icmp eq ptr %494, null
  br i1 %495, label %501, label %496

496:                                              ; preds = %492
  %497 = load i32, ptr %494, align 8
  %498 = and i32 %497, 65535
  %499 = icmp eq i32 %498, 7
  br i1 %499, label %500, label %501

500:                                              ; preds = %496
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #25
  br label %501

501:                                              ; preds = %500, %496, %492, %483
  %502 = load ptr, ptr @cselib_current_insn, align 8
  %503 = icmp ne ptr %502, null
  %504 = select i1 %491, i1 %503, i1 false, !prof !303
  br i1 %504, label %505, label %512, !prof !304

505:                                              ; preds = %501
  %506 = load i32, ptr %502, align 8
  %507 = and i32 %506, 65535
  %508 = icmp eq i32 %507, 7
  br i1 %508, label %509, label %512, !prof !305

509:                                              ; preds = %505
  %510 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %511 = add nsw i32 %510, 1
  store i32 %511, ptr @n_debug_values, align 4, !tbaa !118
  br label %512

512:                                              ; preds = %501, %505, %509
  store ptr %487, ptr %458, align 8, !tbaa !125
  br label %513

513:                                              ; preds = %405, %258, %256, %209, %204, %192, %212, %10, %64, %69, %178, %409, %424, %430, %512
  %514 = phi ptr [ %12, %10 ], [ %435, %512 ], [ %65, %64 ], [ %84, %178 ], [ null, %69 ], [ null, %409 ], [ null, %424 ], [ %431, %430 ], [ %257, %256 ], [ %263, %405 ], [ null, %204 ], [ null, %209 ], [ null, %192 ], [ null, %258 ], [ null, %212 ]
  %515 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %516 = icmp eq ptr %515, null
  br i1 %516, label %536, label %517, !prof !306

517:                                              ; preds = %513
  %518 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %519 = and i32 %518, 8
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %536, label %521

521:                                              ; preds = %517
  %522 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 14, i64 1, ptr nonnull %515)
  %523 = load ptr, ptr @dump_file, align 8, !tbaa !103
  tail call void @print_inline_rtx(ptr noundef %523, ptr noundef nonnull %0, i32 noundef 2) #25
  %524 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %525 = icmp eq ptr %514, null
  br i1 %525, label %529, label %526

526:                                              ; preds = %521
  %527 = getelementptr inbounds %struct.cselib_val_struct, ptr %514, i64 0, i32 1
  %528 = load i32, ptr %527, align 4, !tbaa !272
  br label %529

529:                                              ; preds = %521, %526
  %530 = phi i32 [ %528, %526 ], [ 0, %521 ]
  br i1 %525, label %533, label %531

531:                                              ; preds = %529
  %532 = load i32, ptr %514, align 8, !tbaa !271
  br label %533

533:                                              ; preds = %529, %531
  %534 = phi i32 [ %532, %531 ], [ 0, %529 ]
  %535 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %524, ptr noundef nonnull @.str.3, i32 noundef %530, i32 noundef %534)
  br label %536

536:                                              ; preds = %533, %517, %513
  ret ptr %514
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @cselib_expand_value_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !307 {
  %4 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  store ptr %1, ptr %4, align 8, !tbaa !308
  %5 = getelementptr inbounds %struct.expand_value_data, ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %5, i8 0, i64 17, i1 false)
  %6 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret ptr %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !310 !PGOFuncName !311 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %328, label %7, !prof !312

7:                                                ; preds = %3
  %8 = trunc i32 %4 to i16
  switch i16 %8, label %165 [
    i16 37, label %9
    i16 30, label %75
    i16 32, label %75
    i16 33, label %75
    i16 45, label %75
    i16 12, label %75
    i16 36, label %75
    i16 46, label %75
    i16 38, label %75
    i16 25, label %76
    i16 35, label %86
    i16 39, label %89
    i16 1, label %127
    i16 2, label %156
  ], !prof !313

9:                                                ; preds = %7
  %10 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !314

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.elt_list, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !156
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23, !prof !315

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !164
  br label %23

23:                                               ; preds = %21, %17, %9
  %24 = phi ptr [ %22, %21 ], [ %15, %17 ], [ null, %9 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %72, label %26, !prof !316

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.elt_list, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = getelementptr inbounds %struct.cselib_val_struct, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !134
  %31 = load i32, ptr %30, align 8
  %32 = xor i32 %31, %4
  %33 = and i32 %32, 16711680
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %68, !prof !201

35:                                               ; preds = %68
  %36 = getelementptr inbounds %struct.elt_list, ptr %70, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !156
  %38 = getelementptr inbounds %struct.cselib_val_struct, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !134
  %40 = load i32, ptr %39, align 8
  %41 = xor i32 %40, %4
  %42 = and i32 %41, 16711680
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68, !prof !201, !llvm.loop !317

44:                                               ; preds = %35, %26
  %45 = phi i1 [ %25, %26 ], [ %71, %35 ]
  %46 = phi ptr [ %24, %26 ], [ %70, %35 ]
  %47 = getelementptr inbounds %struct.elt_list, ptr %46, i64 0, i32 1
  switch i32 %12, label %48 [
    i32 20, label %72
    i32 7, label %72
    i32 6, label %72
  ], !prof !318

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 8, !tbaa !308
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %49, i32 noundef %12) #25
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53, !prof !319

53:                                               ; preds = %48
  %54 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %51, ptr noundef nonnull @.str.11, i32 noundef %12)
  br label %59

59:                                               ; preds = %57, %53, %48
  %60 = load ptr, ptr %47, align 8, !tbaa !156
  %61 = getelementptr inbounds %struct.cselib_val_struct, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !125
  %63 = tail call fastcc ptr @expand_loc(ptr noundef %62, ptr noundef nonnull %1, i32 noundef %2)
  %64 = load ptr, ptr %1, align 8, !tbaa !308
  %65 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %64, i32 noundef %12) #25
  %66 = icmp eq ptr %63, null
  %67 = select i1 %66, ptr %0, ptr %63, !prof !320
  br label %72

68:                                               ; preds = %26, %35
  %69 = phi ptr [ %70, %35 ], [ %24, %26 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !164
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %35, !prof !321, !llvm.loop !317

72:                                               ; preds = %68, %23, %44, %44, %44, %59
  %73 = phi i1 [ %45, %44 ], [ %45, %59 ], [ %45, %44 ], [ %45, %44 ], [ %25, %23 ], [ %71, %68 ]
  %74 = phi ptr [ %0, %44 ], [ %67, %59 ], [ %0, %44 ], [ %0, %44 ], [ undef, %23 ], [ undef, %68 ]
  br i1 %73, label %75, label %328, !prof !322

75:                                               ; preds = %72, %7, %7, %7, %7, %7, %7, %7, %7
  br label %328

76:                                               ; preds = %7
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !114
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %165

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !114
  %85 = icmp ult i32 %84, 53
  br i1 %85, label %328, label %165

86:                                               ; preds = %7
  %87 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #25
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %165, label %328

89:                                               ; preds = %7
  %90 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !323
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %1, align 8, !tbaa !308
  %95 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !324
  %97 = tail call ptr %91(ptr noundef nonnull %0, ptr noundef %94, i32 noundef %2, ptr noundef %96) #25
  %98 = icmp eq ptr %97, %0
  br i1 %98, label %99, label %328

99:                                               ; preds = %93, %89
  %100 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !114
  %102 = add nsw i32 %2, -1
  %103 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %101, ptr noundef %1, i32 noundef %102)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %328, label %105

105:                                              ; preds = %99
  %106 = load i32, ptr %0, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = load ptr, ptr %100, align 8, !tbaa !114
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load i32, ptr %113, align 8, !tbaa !114
  %115 = tail call ptr @simplify_gen_subreg(i32 noundef %108, ptr noundef nonnull %103, i32 noundef %112, i32 noundef %114) #25
  %116 = icmp eq ptr %115, null
  br i1 %116, label %328, label %117

117:                                              ; preds = %105
  %118 = load i32, ptr %115, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 39
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !114
  %124 = load i32, ptr %123, align 8
  %125 = trunc i32 %124 to i16
  switch i16 %125, label %328 [
    i16 37, label %126
    i16 43, label %126
  ]

126:                                              ; preds = %121, %121, %117
  br label %328

127:                                              ; preds = %7
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %130
  %135 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 11, i64 1, ptr nonnull %128)
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %137 = tail call i32 @print_rtl_single(ptr noundef %136, ptr noundef nonnull %0) #25
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %139 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 8, i64 1, ptr %138)
  br label %140

140:                                              ; preds = %134, %130, %127
  %141 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !323
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %1, align 8, !tbaa !308
  %146 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !324
  %148 = tail call ptr %142(ptr noundef nonnull %0, ptr noundef %145, i32 noundef %2, ptr noundef %147) #25
  %149 = icmp eq ptr %148, %0
  br i1 %149, label %150, label %328

150:                                              ; preds = %144, %140
  %151 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !114
  %153 = getelementptr inbounds %struct.cselib_val_struct, ptr %152, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !125
  %155 = tail call fastcc ptr @expand_loc(ptr noundef %154, ptr noundef %1, i32 noundef %2)
  br label %328

156:                                              ; preds = %7
  %157 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !323
  %159 = icmp eq ptr %158, null
  br i1 %159, label %328, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %1, align 8, !tbaa !308
  %162 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !324
  %164 = tail call ptr %158(ptr noundef nonnull %0, ptr noundef %161, i32 noundef %2, ptr noundef %163) #25
  br label %328

165:                                              ; preds = %82, %7, %86, %76
  %166 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 3
  %167 = load i8, ptr %166, align 8, !tbaa !325
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %171, !prof !326

169:                                              ; preds = %165
  %170 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #25
  br label %171

171:                                              ; preds = %165, %169
  %172 = phi ptr [ %170, %169 ], [ null, %165 ]
  %173 = zext nneg i32 %5 to i64
  %174 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !114
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %241, label %177, !prof !327

177:                                              ; preds = %171
  %178 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %173
  %179 = load ptr, ptr %178, align 8, !tbaa !103
  %180 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %181 = add nsw i32 %2, -1
  %182 = icmp eq ptr %172, null
  %183 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %184 = zext i8 %175 to i64
  br label %185

185:                                              ; preds = %177, %238
  %186 = phi i64 [ 0, %177 ], [ %239, %238 ]
  %187 = phi ptr [ %179, %177 ], [ %188, %238 ]
  %188 = getelementptr inbounds i8, ptr %187, i64 1
  %189 = load i8, ptr %187, align 1, !tbaa !114
  switch i8 %189, label %237 [
    i8 101, label %190
    i8 69, label %200
    i8 86, label %200
    i8 116, label %238
    i8 119, label %238
    i8 105, label %238
    i8 115, label %238
    i8 83, label %238
    i8 84, label %238
    i8 117, label %238
    i8 66, label %238
    i8 48, label %238
  ], !prof !328

190:                                              ; preds = %185
  %191 = getelementptr inbounds [1 x %union.rtunion_def], ptr %180, i64 0, i64 %186
  %192 = load ptr, ptr %191, align 8, !tbaa !114
  %193 = icmp eq ptr %192, null
  br i1 %193, label %238, label %194, !prof !329

194:                                              ; preds = %190
  %195 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef nonnull %192, ptr noundef %1, i32 noundef %181)
  %196 = icmp eq ptr %195, null
  br i1 %196, label %328, label %197, !prof !329

197:                                              ; preds = %194
  br i1 %182, label %238, label %198, !prof !329

198:                                              ; preds = %197
  %199 = getelementptr inbounds [1 x %union.rtunion_def], ptr %183, i64 0, i64 %186
  store ptr %195, ptr %199, align 8, !tbaa !114
  br label %238

200:                                              ; preds = %185, %185
  %201 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %202 = getelementptr inbounds [1 x %union.rtunion_def], ptr %201, i64 0, i64 %186
  %203 = load ptr, ptr %202, align 8, !tbaa !114
  %204 = icmp eq ptr %203, null
  br i1 %204, label %238, label %205

205:                                              ; preds = %200
  %206 = icmp eq ptr %172, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %209 = load i32, ptr %203, align 8, !tbaa !143
  %210 = tail call ptr @rtvec_alloc(i32 noundef %209) #25
  %211 = getelementptr inbounds [1 x %union.rtunion_def], ptr %208, i64 0, i64 %186
  store ptr %210, ptr %211, align 8, !tbaa !114
  br label %212

212:                                              ; preds = %207, %205
  %213 = load ptr, ptr %202, align 8, !tbaa !114
  %214 = load i32, ptr %213, align 8, !tbaa !143
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %212
  %217 = add nsw i32 %2, -1
  %218 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %219 = getelementptr inbounds [1 x %union.rtunion_def], ptr %218, i64 0, i64 %186
  br label %220

220:                                              ; preds = %216, %231
  %221 = phi i64 [ 0, %216 ], [ %232, %231 ]
  %222 = phi ptr [ %213, %216 ], [ %233, %231 ]
  %223 = getelementptr inbounds %struct.rtvec_def, ptr %222, i64 0, i32 1, i64 %221
  %224 = load ptr, ptr %223, align 8, !tbaa !103
  %225 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %224, ptr noundef %1, i32 noundef %217)
  %226 = icmp eq ptr %225, null
  br i1 %226, label %328, label %227

227:                                              ; preds = %220
  br i1 %206, label %231, label %228

228:                                              ; preds = %227
  %229 = load ptr, ptr %219, align 8, !tbaa !114
  %230 = getelementptr inbounds %struct.rtvec_def, ptr %229, i64 0, i32 1, i64 %221
  store ptr %225, ptr %230, align 8, !tbaa !103
  br label %231

231:                                              ; preds = %228, %227
  %232 = add nuw nsw i64 %221, 1
  %233 = load ptr, ptr %202, align 8, !tbaa !114
  %234 = load i32, ptr %233, align 8, !tbaa !143
  %235 = sext i32 %234 to i64
  %236 = icmp slt i64 %232, %235
  br i1 %236, label %220, label %238, !llvm.loop !330

237:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1438, ptr noundef nonnull @.str.1) #25
  br label %238

238:                                              ; preds = %231, %212, %200, %185, %185, %185, %185, %185, %185, %185, %185, %198, %197, %237, %190, %185
  %239 = add nuw nsw i64 %186, 1
  %240 = icmp eq i64 %239, %184
  br i1 %240, label %241, label %185, !prof !331, !llvm.loop !332

241:                                              ; preds = %238, %171
  %242 = load i8, ptr %166, align 8, !tbaa !325
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %328, !prof !326

244:                                              ; preds = %241
  %245 = load i32, ptr %172, align 8
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  %248 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %173
  %249 = load i32, ptr %248, align 4, !tbaa !118
  switch i32 %249, label %324 [
    i32 4, label %250
    i32 1, label %286
    i32 0, label %286
    i32 10, label %266
    i32 11, label %266
  ], !prof !333

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !114
  %253 = load i32, ptr %252, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %254, 30
  br i1 %255, label %256, label %324

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !114
  %259 = load i32, ptr %258, align 8
  %260 = lshr i32 %259, 16
  %261 = and i32 %260, 255
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %324, label %263

263:                                              ; preds = %256
  %264 = tail call ptr @simplify_unary_operation(i32 noundef %5, i32 noundef %247, ptr noundef nonnull %252, i32 noundef %261) #25
  %265 = icmp eq ptr %264, null
  br i1 %265, label %324, label %328

266:                                              ; preds = %244, %244
  %267 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !114
  %269 = load i32, ptr %268, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 30
  br i1 %271, label %272, label %324

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !114
  %275 = load i32, ptr %274, align 8
  %276 = lshr i32 %275, 16
  %277 = and i32 %276, 255
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %324, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !114
  %282 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %283 = load ptr, ptr %282, align 8, !tbaa !114
  %284 = tail call ptr @simplify_ternary_operation(i32 noundef %5, i32 noundef %247, i32 noundef %277, ptr noundef nonnull %268, ptr noundef %281, ptr noundef %283) #25
  %285 = icmp eq ptr %284, null
  br i1 %285, label %324, label %328

286:                                              ; preds = %244, %244
  %287 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !114
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 30
  br i1 %291, label %292, label %324

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !114
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 16711680
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %324

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !114
  %301 = load i32, ptr %300, align 8
  %302 = and i32 %301, 16711680
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !114
  %307 = load i32, ptr %306, align 8
  %308 = and i32 %307, 16711680
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %324, label %310

310:                                              ; preds = %304, %298
  %311 = lshr i32 %301, 16
  %312 = and i32 %311, 255
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !114
  %317 = load i32, ptr %316, align 8
  %318 = lshr i32 %317, 16
  %319 = and i32 %318, 255
  br label %320

320:                                              ; preds = %310, %314
  %321 = phi i32 [ %319, %314 ], [ %312, %310 ]
  %322 = tail call ptr @simplify_relational_operation(i32 noundef %5, i32 noundef %247, i32 noundef %321, ptr noundef nonnull %288, ptr noundef nonnull %294) #25
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %328

324:                                              ; preds = %320, %304, %286, %263, %244, %292, %266, %272, %279, %250, %256
  %325 = tail call ptr @simplify_rtx(ptr noundef nonnull %172) #25
  %326 = icmp eq ptr %325, null
  %327 = select i1 %326, ptr %172, ptr %325, !prof !334
  br label %328

328:                                              ; preds = %194, %220, %99, %324, %320, %279, %263, %241, %156, %150, %144, %126, %93, %121, %105, %86, %82, %3, %72, %160, %75
  %329 = phi ptr [ %164, %160 ], [ %0, %75 ], [ %74, %72 ], [ null, %3 ], [ %0, %82 ], [ %0, %86 ], [ %115, %126 ], [ %97, %93 ], [ null, %121 ], [ null, %105 ], [ %155, %150 ], [ %148, %144 ], [ %0, %156 ], [ %0, %241 ], [ %264, %263 ], [ %284, %279 ], [ %322, %320 ], [ %327, %324 ], [ null, %99 ], [ null, %220 ], [ null, %194 ]
  ret ptr %329
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cselib_expand_value_rtx_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !102 {
  %6 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  store ptr %1, ptr %6, align 8, !tbaa !308
  %7 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !323
  %8 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !324
  %9 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 3
  store i8 0, ptr %9, align 8, !tbaa !325
  %10 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  ret ptr %10
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !102 {
  %6 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  store ptr %1, ptr %6, align 8, !tbaa !308
  %7 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !323
  %8 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !324
  %9 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 3
  store i8 1, ptr %9, align 8, !tbaa !325
  %10 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2)
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  ret i8 %12
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @cselib_subst_to_values(ptr noundef %0) local_unnamed_addr #9 !prof !335 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = trunc i32 %2 to i16
  switch i16 %7, label %113 [
    i16 37, label %8
    i16 43, label %39
    i16 32, label %198
    i16 33, label %198
    i16 30, label %198
    i16 31, label %198
    i16 77, label %188
    i16 75, label %188
    i16 76, label %188
    i16 74, label %188
    i16 79, label %188
    i16 78, label %188
  ], !prof !336

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !114
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16, !prof !337

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.elt_list, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22, !prof !338

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !164
  br label %22

22:                                               ; preds = %20, %16, %8
  %23 = phi ptr [ %21, %20 ], [ %14, %16 ], [ null, %8 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25, !prof !339

25:                                               ; preds = %22, %35
  %26 = phi ptr [ %36, %35 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.elt_list, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = getelementptr inbounds %struct.cselib_val_struct, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !134
  %31 = load i32, ptr %30, align 8
  %32 = xor i32 %31, %2
  %33 = and i32 %32, 16711680
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %198, label %35, !prof !340

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !164
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !prof !341, !llvm.loop !342

38:                                               ; preds = %35, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1532, ptr noundef nonnull @.str.1) #25
  br label %39

39:                                               ; preds = %1, %38
  %40 = load i32, ptr %0, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = and i32 %40, 134217728
  %44 = icmp eq i32 %43, 0
  %45 = icmp ne i32 %42, 1
  %46 = and i1 %44, %45
  %47 = load i8, ptr @cselib_record_memory, align 1
  %48 = icmp ne i8 %47, 0
  %49 = select i1 %46, i1 %48, i1 false, !prof !278
  br i1 %49, label %50, label %108, !prof !279

50:                                               ; preds = %39
  %51 = zext nneg i32 %42 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !114
  switch i8 %53, label %54 [
    i8 8, label %59
    i8 9, label %59
    i8 11, label %59
  ], !prof !280

54:                                               ; preds = %50
  %55 = icmp eq i8 %53, 17
  %56 = load i32, ptr @flag_float_store, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false, !prof !281
  br i1 %58, label %108, label %62, !prof !281

59:                                               ; preds = %50, %50, %50
  %60 = load i32, ptr @flag_float_store, align 4, !tbaa !118
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %108

62:                                               ; preds = %54, %59
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !114
  %65 = tail call ptr @cselib_lookup(ptr noundef %64, i32 noundef %42, i32 noundef 0)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %108, label %67, !prof !282

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.cselib_val_struct, ptr %65, i64 0, i32 4
  br label %69

69:                                               ; preds = %73, %67
  %70 = phi ptr [ %68, %67 ], [ %71, %73 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !103
  %72 = icmp eq ptr %71, null
  br i1 %72, label %108, label %73, !prof !283

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.elt_list, ptr %71, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !156
  %76 = getelementptr inbounds %struct.cselib_val_struct, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !134
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = icmp eq i32 %80, %42
  br i1 %81, label %82, label %69, !prof !284, !llvm.loop !285

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.elt_list, ptr %71, i64 0, i32 1
  %84 = getelementptr inbounds %struct.cselib_val_struct, ptr %75, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !125
  %86 = getelementptr inbounds %struct.elt_loc_list, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !166
  %88 = icmp eq ptr %87, null
  br i1 %88, label %106, label %89, !prof !286

89:                                               ; preds = %82
  %90 = load i32, ptr %87, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 7
  br i1 %92, label %93, label %106, !prof !286

93:                                               ; preds = %89
  %94 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %94, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 7
  br i1 %99, label %106, label %100

100:                                              ; preds = %96, %93
  %101 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %102 = add nsw i32 %101, -1
  store i32 %102, ptr @n_debug_values, align 4, !tbaa !118
  store ptr %94, ptr %86, align 8, !tbaa !166
  %103 = load ptr, ptr %85, align 8, !tbaa !132
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %106

106:                                              ; preds = %100, %105, %96, %89, %82
  %107 = load ptr, ptr %83, align 8, !tbaa !156
  br label %108

108:                                              ; preds = %69, %62, %39, %54, %59, %106
  %109 = phi ptr [ %107, %106 ], [ null, %54 ], [ null, %59 ], [ null, %39 ], [ null, %62 ], [ null, %69 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %194, !prof !343

111:                                              ; preds = %108
  %112 = load i32, ptr %0, align 8
  br label %188

113:                                              ; preds = %1
  %114 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %4
  %115 = load i8, ptr %114, align 1, !tbaa !114
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %198, label %117, !prof !344

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %119 = zext i8 %115 to i64
  br label %120

120:                                              ; preds = %117, %185
  %121 = phi i64 [ %119, %117 ], [ %123, %185 ]
  %122 = phi ptr [ %0, %117 ], [ %186, %185 ]
  %123 = add nsw i64 %121, -1
  %124 = getelementptr inbounds i8, ptr %6, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !114
  switch i8 %125, label %185 [
    i8 101, label %132
    i8 69, label %126
  ], !prof !345

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %127, i64 0, i64 %123
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  %130 = load i32, ptr %129, align 8, !tbaa !143
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %146, label %185

132:                                              ; preds = %120
  %133 = getelementptr inbounds [1 x %union.rtunion_def], ptr %118, i64 0, i64 %123
  %134 = load ptr, ptr %133, align 8, !tbaa !114
  %135 = tail call ptr @cselib_subst_to_values(ptr noundef %134)
  %136 = load ptr, ptr %133, align 8, !tbaa !114
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %185, label %138, !prof !346

138:                                              ; preds = %132
  %139 = icmp eq ptr %122, %0
  br i1 %139, label %140, label %142, !prof !347

140:                                              ; preds = %138
  %141 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #25
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi ptr [ %141, %140 ], [ %122, %138 ]
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1
  %145 = getelementptr inbounds [1 x %union.rtunion_def], ptr %144, i64 0, i64 %123
  store ptr %135, ptr %145, align 8, !tbaa !114
  br label %185

146:                                              ; preds = %126, %178
  %147 = phi i64 [ %180, %178 ], [ 0, %126 ]
  %148 = phi ptr [ %181, %178 ], [ %129, %126 ]
  %149 = phi ptr [ %179, %178 ], [ %122, %126 ]
  %150 = getelementptr inbounds %struct.rtvec_def, ptr %148, i64 0, i32 1, i64 %147
  %151 = load ptr, ptr %150, align 8, !tbaa !103
  %152 = tail call ptr @cselib_subst_to_values(ptr noundef %151)
  %153 = load ptr, ptr %128, align 8, !tbaa !114
  %154 = getelementptr inbounds %struct.rtvec_def, ptr %153, i64 0, i32 1, i64 %147
  %155 = load ptr, ptr %154, align 8, !tbaa !103
  %156 = icmp eq ptr %152, %155
  br i1 %156, label %178, label %157

157:                                              ; preds = %146
  %158 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %159 = getelementptr inbounds [1 x %union.rtunion_def], ptr %158, i64 0, i64 %123
  %160 = load ptr, ptr %159, align 8, !tbaa !114
  %161 = icmp eq ptr %153, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = icmp eq ptr %149, %0
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  %165 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #25
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi ptr [ %165, %164 ], [ %149, %162 ]
  %168 = load ptr, ptr %128, align 8, !tbaa !114
  %169 = tail call ptr @shallow_copy_rtvec(ptr noundef %168) #25
  %170 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %171 = getelementptr inbounds [1 x %union.rtunion_def], ptr %170, i64 0, i64 %123
  store ptr %169, ptr %171, align 8, !tbaa !114
  br label %172

172:                                              ; preds = %166, %157
  %173 = phi ptr [ %167, %166 ], [ %149, %157 ]
  %174 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %175 = getelementptr inbounds [1 x %union.rtunion_def], ptr %174, i64 0, i64 %123
  %176 = load ptr, ptr %175, align 8, !tbaa !114
  %177 = getelementptr inbounds %struct.rtvec_def, ptr %176, i64 0, i32 1, i64 %147
  store ptr %152, ptr %177, align 8, !tbaa !103
  br label %178

178:                                              ; preds = %172, %146
  %179 = phi ptr [ %173, %172 ], [ %149, %146 ]
  %180 = add nuw nsw i64 %147, 1
  %181 = load ptr, ptr %128, align 8, !tbaa !114
  %182 = load i32, ptr %181, align 8, !tbaa !143
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %180, %183
  br i1 %184, label %146, label %185, !llvm.loop !348

185:                                              ; preds = %178, %126, %120, %132, %142
  %186 = phi ptr [ %143, %142 ], [ %122, %132 ], [ %122, %120 ], [ %122, %126 ], [ %179, %178 ]
  %187 = icmp sgt i64 %121, 1
  br i1 %187, label %120, label %198, !prof !349, !llvm.loop !350

188:                                              ; preds = %1, %1, %1, %1, %1, %1, %111
  %189 = phi i32 [ %112, %111 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ]
  %190 = load i32, ptr @next_uid, align 4, !tbaa !118
  %191 = lshr i32 %189, 16
  %192 = and i32 %191, 255
  %193 = tail call fastcc ptr @new_cselib_val(i32 noundef %190, i32 noundef %192, ptr noundef nonnull %0)
  br label %194

194:                                              ; preds = %188, %108
  %195 = phi ptr [ %109, %108 ], [ %193, %188 ]
  %196 = getelementptr inbounds %struct.cselib_val_struct, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !134
  br label %198

198:                                              ; preds = %25, %185, %194, %113, %1, %1, %1, %1
  %199 = phi ptr [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %113 ], [ %197, %194 ], [ %186, %185 ], [ %30, %25 ]
  ret ptr %199
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @new_cselib_val(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !351 !PGOFuncName !352 {
  %4 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !103
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #25
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %7, label %8, !prof !270

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 980, ptr noundef nonnull @.str.1) #25
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i32, ptr @next_uid, align 4, !tbaa !118
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !270

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @.str.1) #25
  br label %12

12:                                               ; preds = %8, %11
  store i32 %0, ptr %5, align 8, !tbaa !271
  %13 = load i32, ptr @next_uid, align 4, !tbaa !118
  %14 = add i32 %13, 1
  store i32 %14, ptr @next_uid, align 4, !tbaa !118
  %15 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 1
  store i32 %13, ptr %15, align 4, !tbaa !272
  %16 = load ptr, ptr @value_pool, align 8, !tbaa !103
  %17 = tail call ptr @pool_alloc(ptr noundef %16) #25
  %18 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !134
  store i64 0, ptr %17, align 8
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, -65536
  %22 = or disjoint i32 %21, 1
  store i32 %22, ptr %19, align 8
  %23 = load ptr, ptr %18, align 8, !tbaa !134
  %24 = load i32, ptr %23, align 8
  %25 = shl i32 %1, 16
  %26 = and i32 %25, 16711680
  %27 = and i32 %24, -16711681
  %28 = or disjoint i32 %27, %26
  store i32 %28, ptr %23, align 8
  %29 = load ptr, ptr %18, align 8, !tbaa !134
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  store ptr %5, ptr %30, align 8, !tbaa !114
  %31 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34, !prof !273

34:                                               ; preds = %12
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %15, align 4, !tbaa !272
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.17, i32 noundef %39, i32 noundef %0)
  %41 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !118
  %42 = icmp ne i32 %41, 0
  %43 = load i32, ptr @flag_dump_unnumbered, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !103
  br i1 %45, label %47, label %49

47:                                               ; preds = %38
  %48 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %46)
  br label %51

49:                                               ; preds = %38
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.19, ptr noundef nonnull %5)
  br label %51

51:                                               ; preds = %49, %47
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %53 = tail call i32 @print_rtl_single(ptr noundef %52, ptr noundef %2) #25
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %55 = tail call i32 @fputc(i32 noundef 10, ptr noundef %54)
  br label %56

56:                                               ; preds = %51, %34, %12
  ret ptr %5
}

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare ptr @shallow_copy_rtvec(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cselib_lookup_from_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !102 {
  %5 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1696, ptr noundef nonnull @.str.1) #25
  br label %8

8:                                                ; preds = %4, %7
  store ptr %3, ptr @cselib_current_insn, align 8, !tbaa !103
  %9 = tail call ptr @cselib_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !103
  ret ptr %9
}

declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cselib_invalidate_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !353 {
  br label %2

2:                                                ; preds = %254, %1
  %3 = phi ptr [ %0, %1 ], [ %255, %254 ]
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %248 [
    i16 39, label %8
    i16 120, label %8
    i16 40, label %8
    i16 37, label %11
    i16 43, label %147
  ], !prof !354

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  br label %4, !llvm.loop !355

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !114
  %14 = lshr i32 %6, 16
  %15 = and i32 %14, 255
  %16 = load i32, ptr @reload_completed, align 4, !tbaa !118
  %17 = icmp eq i32 %16, 0
  %18 = icmp ult i32 %13, 53
  %19 = or i1 %18, %17
  br i1 %19, label %27, label %20, !prof !150

20:                                               ; preds = %11
  %21 = load ptr, ptr @reg_renumber, align 8, !tbaa !103
  %22 = zext i32 %13 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !151
  %25 = icmp slt i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1746, ptr noundef nonnull @.str.1) #25
  br label %27

27:                                               ; preds = %26, %20, %11
  br i1 %18, label %28, label %39, !prof !152

28:                                               ; preds = %27
  %29 = icmp eq i32 %15, 0
  br i1 %29, label %30, label %31, !prof !153

30:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #25
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, ptr @max_value_regs, align 4, !tbaa !118
  %33 = tail call i32 @llvm.usub.sat.i32(i32 %13, i32 %32)
  %34 = zext nneg i32 %13 to i64
  %35 = zext nneg i32 %15 to i64
  %36 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %34, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !114
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %27, %31
  %40 = phi i32 [ %33, %31 ], [ %13, %27 ]
  %41 = phi i32 [ %38, %31 ], [ 1, %27 ]
  %42 = add i32 %41, %13
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %248, !prof !154

44:                                               ; preds = %39
  %45 = zext i32 %40 to i64
  %46 = zext i32 %42 to i64
  br label %47

47:                                               ; preds = %144, %44
  %48 = phi i64 [ %45, %44 ], [ %145, %144 ]
  %49 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !103
  %52 = icmp eq ptr %51, null
  br i1 %52, label %144, label %53, !prof !155

53:                                               ; preds = %47
  %54 = icmp ult i64 %48, 53
  %55 = trunc i64 %48 to i32
  br label %56

56:                                               ; preds = %140, %53
  %57 = phi ptr [ %51, %53 ], [ %142, %140 ]
  %58 = phi ptr [ %50, %53 ], [ %141, %140 ]
  %59 = getelementptr inbounds %struct.elt_list, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !156
  %61 = icmp ne ptr %60, null
  %62 = select i1 %54, i1 %61, i1 false, !prof !158
  br i1 %62, label %63, label %75, !prof !159

63:                                               ; preds = %56
  %64 = add i32 %55, -1
  %65 = getelementptr inbounds %struct.cselib_val_struct, ptr %60, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !134
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %48, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !114
  %73 = zext i8 %72 to i32
  %74 = add i32 %64, %73
  br label %75

75:                                               ; preds = %63, %56
  %76 = phi i32 [ %74, %63 ], [ %55, %56 ]
  %77 = icmp ult i32 %76, %13
  %78 = icmp eq ptr %60, null
  %79 = select i1 %77, i1 true, i1 %78, !prof !160
  %80 = load ptr, ptr @cfa_base_preserved_val, align 8
  %81 = icmp eq ptr %60, %80
  %82 = select i1 %79, i1 true, i1 %81, !prof !161
  br i1 %82, label %140, label %83, !prof !161, !llvm.loop !162

83:                                               ; preds = %75
  %84 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %85 = getelementptr inbounds ptr, ptr %84, i64 %48
  %86 = load ptr, ptr %85, align 8, !tbaa !103
  %87 = icmp eq ptr %57, %86
  br i1 %87, label %88, label %90, !prof !163

88:                                               ; preds = %83
  store ptr null, ptr %59, align 8, !tbaa !156
  %89 = load ptr, ptr %58, align 8, !tbaa !103
  br label %93

90:                                               ; preds = %83
  %91 = load ptr, ptr %57, align 8, !tbaa !164
  store ptr %91, ptr %58, align 8, !tbaa !103
  %92 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %92, ptr noundef nonnull %57) #25
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi ptr [ %89, %88 ], [ %58, %90 ]
  %95 = getelementptr inbounds %struct.cselib_val_struct, ptr %60, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !125
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98, !prof !165

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.elt_loc_list, ptr %96, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !166
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi ptr [ %100, %98 ], [ null, %93 ]
  br label %103

103:                                              ; preds = %116, %101
  %104 = phi ptr [ %95, %101 ], [ %105, %116 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !103
  %106 = getelementptr inbounds %struct.elt_loc_list, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !127
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 37
  br i1 %110, label %111, label %116, !prof !167

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !114
  %114 = zext i32 %113 to i64
  %115 = icmp eq i64 %48, %114
  br i1 %115, label %117, label %116, !prof !168

116:                                              ; preds = %111, %103
  br label %103, !llvm.loop !169

117:                                              ; preds = %111
  %118 = load ptr, ptr %105, align 8, !tbaa !132
  store ptr %118, ptr %104, align 8, !tbaa !103
  %119 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %119, ptr noundef nonnull %105) #25
  br i1 %97, label %140, label %120, !prof !165

120:                                              ; preds = %117
  %121 = load ptr, ptr %95, align 8, !tbaa !125
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %140, !prof !170

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.cselib_val_struct, ptr %60, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !134
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 67108864
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140, !prof !171

129:                                              ; preds = %123
  %130 = icmp eq ptr %102, null
  br i1 %130, label %135, label %131, !prof !172

131:                                              ; preds = %129
  %132 = load i32, ptr %102, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 7
  br i1 %134, label %136, label %135, !prof !173

135:                                              ; preds = %131, %129
  br label %136

136:                                              ; preds = %131, %135
  %137 = phi ptr [ @n_useless_values, %135 ], [ @n_useless_debug_values, %131 ]
  %138 = load i32, ptr %137, align 4, !tbaa !118
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %137, align 4, !tbaa !118
  br label %140

140:                                              ; preds = %136, %123, %120, %117, %75
  %141 = phi ptr [ %94, %123 ], [ %94, %120 ], [ %94, %117 ], [ %57, %75 ], [ %94, %136 ]
  %142 = load ptr, ptr %141, align 8, !tbaa !103
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %56, !prof !174

144:                                              ; preds = %140, %47
  %145 = add nuw nsw i64 %48, 1
  %146 = icmp eq i64 %145, %46
  br i1 %146, label %248, label %47, !prof !175, !llvm.loop !176

147:                                              ; preds = %4
  %148 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !114
  %150 = tail call ptr @get_addr(ptr noundef %149) #25
  %151 = tail call ptr @canon_rtx(ptr noundef %150) #25
  %152 = tail call ptr @canon_rtx(ptr noundef nonnull %5) #25
  %153 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  %154 = icmp eq ptr %153, @dummy_val
  br i1 %154, label %246, label %155, !prof !178

155:                                              ; preds = %147, %243
  %156 = phi ptr [ %244, %243 ], [ @first_containing_mem, %147 ]
  %157 = phi ptr [ %239, %243 ], [ %153, %147 ]
  %158 = phi i32 [ %216, %243 ], [ 0, %147 ]
  %159 = getelementptr inbounds %struct.cselib_val_struct, ptr %157, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !103
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162, !prof !179

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.elt_loc_list, ptr %160, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !166
  br label %165

165:                                              ; preds = %162, %155
  %166 = phi ptr [ %164, %162 ], [ null, %155 ]
  br i1 %161, label %214, label %167, !prof !180

167:                                              ; preds = %165, %208
  %168 = phi ptr [ %212, %208 ], [ %160, %165 ]
  %169 = phi i32 [ %211, %208 ], [ %158, %165 ]
  %170 = phi ptr [ %210, %208 ], [ %159, %165 ]
  %171 = phi i8 [ %209, %208 ], [ 0, %165 ]
  %172 = getelementptr inbounds %struct.elt_loc_list, ptr %168, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !127
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 43
  br i1 %176, label %177, label %208, !prof !181, !llvm.loop !182

177:                                              ; preds = %167
  %178 = load ptr, ptr @compiler_params, align 8, !tbaa !103
  %179 = getelementptr inbounds %struct.param_info, ptr %178, i64 73, i32 1
  %180 = load i32, ptr %179, align 8, !tbaa !183
  %181 = icmp slt i32 %169, %180
  br i1 %181, label %182, label %191, !prof !185

182:                                              ; preds = %177
  %183 = load i32, ptr %152, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = tail call i32 @canon_true_dependence(ptr noundef nonnull %152, i32 noundef %185, ptr noundef %151, ptr noundef nonnull %173, ptr noundef null, ptr noundef nonnull @cselib_rtx_varies_p) #25
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191, !prof !186

188:                                              ; preds = %182
  %189 = add nsw i32 %169, 1
  %190 = load ptr, ptr %170, align 8, !tbaa !103
  br label %208, !llvm.loop !182

191:                                              ; preds = %182, %177
  %192 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !114
  %194 = tail call ptr @cselib_lookup(ptr noundef %193, i32 noundef 0, i32 noundef 0)
  %195 = getelementptr inbounds %struct.cselib_val_struct, ptr %194, i64 0, i32 4
  br label %196

196:                                              ; preds = %196, %191
  %197 = phi ptr [ %195, %191 ], [ %198, %196 ]
  %198 = load ptr, ptr %197, align 8, !tbaa !103
  %199 = getelementptr inbounds %struct.elt_list, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !156
  %201 = icmp eq ptr %200, %157
  br i1 %201, label %202, label %196, !prof !187, !llvm.loop !188

202:                                              ; preds = %196
  %203 = load ptr, ptr %198, align 8, !tbaa !164
  store ptr %203, ptr %197, align 8, !tbaa !103
  %204 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %204, ptr noundef nonnull %198) #25
  %205 = load ptr, ptr %170, align 8, !tbaa !103
  %206 = load ptr, ptr %205, align 8, !tbaa !132
  store ptr %206, ptr %170, align 8, !tbaa !103
  %207 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %207, ptr noundef nonnull %205) #25
  br label %208

208:                                              ; preds = %202, %188, %167
  %209 = phi i8 [ %171, %202 ], [ 1, %188 ], [ %171, %167 ]
  %210 = phi ptr [ %170, %202 ], [ %190, %188 ], [ %168, %167 ]
  %211 = phi i32 [ %169, %202 ], [ %189, %188 ], [ %169, %167 ]
  %212 = load ptr, ptr %210, align 8, !tbaa !103
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %167, !prof !189

214:                                              ; preds = %208, %165
  %215 = phi i8 [ 0, %165 ], [ %209, %208 ]
  %216 = phi i32 [ %158, %165 ], [ %211, %208 ]
  br i1 %161, label %237, label %217, !prof !179

217:                                              ; preds = %214
  %218 = load ptr, ptr %159, align 8, !tbaa !125
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %237, !prof !190

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.cselib_val_struct, ptr %157, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !134
  %223 = load i32, ptr %222, align 8
  %224 = and i32 %223, 67108864
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %237, !prof !191

226:                                              ; preds = %220
  %227 = icmp eq ptr %166, null
  br i1 %227, label %232, label %228, !prof !192

228:                                              ; preds = %226
  %229 = load i32, ptr %166, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 7
  br i1 %231, label %233, label %232, !prof !192

232:                                              ; preds = %228, %226
  br label %233

233:                                              ; preds = %228, %232
  %234 = phi ptr [ @n_useless_values, %232 ], [ @n_useless_debug_values, %228 ]
  %235 = load i32, ptr %234, align 4, !tbaa !118
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr %234, align 4, !tbaa !118
  br label %237

237:                                              ; preds = %233, %220, %217, %214
  %238 = getelementptr inbounds %struct.cselib_val_struct, ptr %157, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !193
  %240 = icmp eq i8 %215, 0
  br i1 %240, label %242, label %241, !prof !194

241:                                              ; preds = %237
  store ptr %157, ptr %156, align 8, !tbaa !103
  br label %243

242:                                              ; preds = %237
  store ptr null, ptr %238, align 8, !tbaa !193
  br label %243

243:                                              ; preds = %242, %241
  %244 = phi ptr [ %238, %241 ], [ %156, %242 ]
  %245 = icmp eq ptr %239, @dummy_val
  br i1 %245, label %246, label %155, !prof !195, !llvm.loop !196

246:                                              ; preds = %243, %147
  %247 = phi ptr [ @first_containing_mem, %147 ], [ %244, %243 ]
  store ptr @dummy_val, ptr %247, align 8, !tbaa !103
  br label %248

248:                                              ; preds = %4, %144, %39, %246
  %249 = load i32, ptr %5, align 8
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  %252 = tail call i32 @push_operand(ptr noundef nonnull %5, i32 noundef %251) #25
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254, !prof !356

254:                                              ; preds = %248
  %255 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !103
  br label %2

256:                                              ; preds = %248
  ret void
}

declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cselib_process_insn(ptr noundef %0) local_unnamed_addr #9 !prof !357 {
  %2 = alloca [106 x %struct.cselib_set], align 16
  store ptr %0, ptr @cselib_current_insn, align 8, !tbaa !103
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %8 [
    i16 12, label %18
    i16 10, label %5
  ], !prof !358

5:                                                ; preds = %1
  %6 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 30, ptr noundef null) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18, !prof !359

8:                                                ; preds = %5, %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %90, !prof !360

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 134283263
  %17 = icmp eq i32 %16, 134217745
  br i1 %17, label %18, label %90, !prof !361

18:                                               ; preds = %12, %1, %5
  %19 = load i32, ptr @next_uid, align 4, !tbaa !118
  store i32 0, ptr @max_value_regs, align 4, !tbaa !118
  %20 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29, !prof !123

22:                                               ; preds = %18
  %23 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %82, label %25, !prof !124

25:                                               ; preds = %22
  %26 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %27 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %28 = zext i32 %23 to i64
  br label %74

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.cselib_val_struct, ptr %20, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !125
  %32 = getelementptr inbounds %struct.elt_loc_list, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !127
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !114
  %36 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %40 = load ptr, ptr @reg_values, align 8
  %41 = zext i32 %36 to i64
  br label %42

42:                                               ; preds = %51, %38
  %43 = phi i64 [ 0, %38 ], [ %53, %51 ]
  %44 = phi i32 [ 0, %38 ], [ %52, %51 ]
  %45 = getelementptr inbounds i32, ptr %39, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !118
  %47 = icmp eq i32 %46, %35
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = zext i32 %46 to i64
  %50 = getelementptr inbounds ptr, ptr %40, i64 %49
  store ptr null, ptr %50, align 8, !tbaa !103
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i32 [ %44, %48 ], [ 1, %42 ]
  %53 = add nuw nsw i64 %43, 1
  %54 = icmp eq i64 %53, %41
  br i1 %54, label %55, label %42, !llvm.loop !129

55:                                               ; preds = %51, %29
  %56 = phi i32 [ 0, %29 ], [ %52, %51 ]
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 351, ptr noundef nonnull @.str.1) #25
  br label %59

59:                                               ; preds = %58, %55
  store i32 %56, ptr @n_used_regs, align 4, !tbaa !118
  %60 = load ptr, ptr @used_regs, align 8, !tbaa !103
  store i32 %35, ptr %60, align 4, !tbaa !118
  %61 = zext i32 %35 to i64
  %62 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %63 = getelementptr inbounds %struct.cselib_val_struct, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !125
  %65 = getelementptr inbounds %struct.elt_loc_list, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !127
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %61, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !114
  %73 = zext i8 %72 to i32
  store i32 %73, ptr @max_value_regs, align 4, !tbaa !118
  br label %83

74:                                               ; preds = %74, %25
  %75 = phi i64 [ 0, %25 ], [ %80, %74 ]
  %76 = getelementptr inbounds i32, ptr %27, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !118
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %26, i64 %78
  store ptr null, ptr %79, align 8, !tbaa !103
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, %28
  br i1 %81, label %82, label %74, !prof !130, !llvm.loop !131

82:                                               ; preds = %74, %22
  store i32 0, ptr @n_used_regs, align 4, !tbaa !118
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !114
  %85 = icmp eq i8 %84, 0
  %86 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  br i1 %85, label %88, label %87, !prof !123

87:                                               ; preds = %83
  tail call void @htab_traverse(ptr noundef %86, ptr noundef nonnull @preserve_only_constants, ptr noundef null) #25
  br label %89

88:                                               ; preds = %83
  tail call void @htab_empty(ptr noundef %86) #25
  br label %89

89:                                               ; preds = %87, %88
  store i32 0, ptr @n_useless_values, align 4, !tbaa !118
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !118
  store i32 0, ptr @n_debug_values, align 4, !tbaa !118
  store i32 %19, ptr @next_uid, align 4, !tbaa !118
  store ptr @dummy_val, ptr @first_containing_mem, align 8, !tbaa !103
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !103
  br label %764

90:                                               ; preds = %12, %8
  %91 = add nsw i32 %10, -7
  %92 = icmp ult i32 %91, 4
  br i1 %92, label %94, label %93, !prof !362

93:                                               ; preds = %90
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !103
  br label %764

94:                                               ; preds = %90
  %95 = icmp eq i32 %10, 10
  br i1 %95, label %96, label %331, !prof !363

96:                                               ; preds = %94, %219
  %97 = phi i64 [ %220, %219 ], [ 0, %94 ]
  %98 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !114
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %219, label %101, !prof !364

101:                                              ; preds = %96
  %102 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %97
  %103 = load i32, ptr %102, align 4, !tbaa !118
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106, !prof !153

105:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #25
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i32, ptr @max_value_regs, align 4, !tbaa !118
  %108 = trunc i64 %97 to i32
  %109 = tail call i32 @llvm.usub.sat.i32(i32 %108, i32 %107)
  %110 = sext i32 %103 to i64
  %111 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %97, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !114
  %113 = zext i8 %112 to i64
  %114 = add nuw nsw i64 %97, %113
  %115 = zext i32 %109 to i64
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %219, !prof !154

117:                                              ; preds = %106
  %118 = zext nneg i32 %109 to i64
  br label %119

119:                                              ; preds = %216, %117
  %120 = phi i64 [ %118, %117 ], [ %217, %216 ]
  %121 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  %123 = load ptr, ptr %122, align 8, !tbaa !103
  %124 = icmp eq ptr %123, null
  br i1 %124, label %216, label %125, !prof !155

125:                                              ; preds = %119
  %126 = icmp ult i64 %120, 53
  br label %127

127:                                              ; preds = %212, %125
  %128 = phi ptr [ %123, %125 ], [ %214, %212 ]
  %129 = phi ptr [ %122, %125 ], [ %213, %212 ]
  %130 = getelementptr inbounds %struct.elt_list, ptr %128, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !156
  %132 = icmp ne ptr %131, null
  %133 = select i1 %126, i1 %132, i1 false, !prof !158
  br i1 %133, label %134, label %146, !prof !159

134:                                              ; preds = %127
  %135 = add nuw i64 %120, 4294967295
  %136 = getelementptr inbounds %struct.cselib_val_struct, ptr %131, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !134
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %120, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !114
  %144 = zext i8 %143 to i64
  %145 = add i64 %135, %144
  br label %146

146:                                              ; preds = %134, %127
  %147 = phi i64 [ %145, %134 ], [ %120, %127 ]
  %148 = and i64 %147, 4294967295
  %149 = icmp ult i64 %148, %97
  %150 = icmp eq ptr %131, null
  %151 = select i1 %149, i1 true, i1 %150, !prof !160
  %152 = load ptr, ptr @cfa_base_preserved_val, align 8
  %153 = icmp eq ptr %131, %152
  %154 = select i1 %151, i1 true, i1 %153, !prof !161
  br i1 %154, label %212, label %155, !prof !161, !llvm.loop !162

155:                                              ; preds = %146
  %156 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %157 = getelementptr inbounds ptr, ptr %156, i64 %120
  %158 = load ptr, ptr %157, align 8, !tbaa !103
  %159 = icmp eq ptr %128, %158
  br i1 %159, label %160, label %162, !prof !163

160:                                              ; preds = %155
  store ptr null, ptr %130, align 8, !tbaa !156
  %161 = load ptr, ptr %129, align 8, !tbaa !103
  br label %165

162:                                              ; preds = %155
  %163 = load ptr, ptr %128, align 8, !tbaa !164
  store ptr %163, ptr %129, align 8, !tbaa !103
  %164 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %164, ptr noundef nonnull %128) #25
  br label %165

165:                                              ; preds = %162, %160
  %166 = phi ptr [ %161, %160 ], [ %129, %162 ]
  %167 = getelementptr inbounds %struct.cselib_val_struct, ptr %131, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !125
  %169 = icmp eq ptr %168, null
  br i1 %169, label %173, label %170, !prof !165

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.elt_loc_list, ptr %168, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !166
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi ptr [ %172, %170 ], [ null, %165 ]
  br label %175

175:                                              ; preds = %188, %173
  %176 = phi ptr [ %167, %173 ], [ %177, %188 ]
  %177 = load ptr, ptr %176, align 8, !tbaa !103
  %178 = getelementptr inbounds %struct.elt_loc_list, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !127
  %180 = load i32, ptr %179, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 37
  br i1 %182, label %183, label %188, !prof !167

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1
  %185 = load i32, ptr %184, align 8, !tbaa !114
  %186 = zext i32 %185 to i64
  %187 = icmp eq i64 %120, %186
  br i1 %187, label %189, label %188, !prof !168

188:                                              ; preds = %183, %175
  br label %175, !llvm.loop !169

189:                                              ; preds = %183
  %190 = load ptr, ptr %177, align 8, !tbaa !132
  store ptr %190, ptr %176, align 8, !tbaa !103
  %191 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %191, ptr noundef nonnull %177) #25
  br i1 %169, label %212, label %192, !prof !165

192:                                              ; preds = %189
  %193 = load ptr, ptr %167, align 8, !tbaa !125
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %212, !prof !170

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.cselib_val_struct, ptr %131, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !134
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 67108864
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212, !prof !171

201:                                              ; preds = %195
  %202 = icmp eq ptr %174, null
  br i1 %202, label %207, label %203, !prof !172

203:                                              ; preds = %201
  %204 = load i32, ptr %174, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 7
  br i1 %206, label %208, label %207, !prof !173

207:                                              ; preds = %203, %201
  br label %208

208:                                              ; preds = %203, %207
  %209 = phi ptr [ @n_useless_values, %207 ], [ @n_useless_debug_values, %203 ]
  %210 = load i32, ptr %209, align 4, !tbaa !118
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %209, align 4, !tbaa !118
  br label %212

212:                                              ; preds = %208, %195, %192, %189, %146
  %213 = phi ptr [ %166, %195 ], [ %166, %192 ], [ %166, %189 ], [ %128, %146 ], [ %166, %208 ]
  %214 = load ptr, ptr %213, align 8, !tbaa !103
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %127, !prof !174

216:                                              ; preds = %212, %119
  %217 = add nuw nsw i64 %120, 1
  %218 = icmp eq i64 %217, %114
  br i1 %218, label %219, label %119, !prof !175, !llvm.loop !176

219:                                              ; preds = %216, %106, %96
  %220 = add nuw nsw i64 %97, 1
  %221 = icmp eq i64 %220, 53
  br i1 %221, label %222, label %96, !prof !365, !llvm.loop !366

222:                                              ; preds = %219
  %223 = load i32, ptr %0, align 8
  %224 = and i32 %223, 33554432
  %225 = icmp ne i32 %224, 0
  %226 = and i32 %223, -2080374784
  %227 = icmp eq i32 %226, 0
  %228 = or i1 %225, %227
  br i1 %228, label %229, label %331, !prof !367

229:                                              ; preds = %222
  %230 = load ptr, ptr @callmem, align 8, !tbaa !103
  %231 = getelementptr inbounds %struct.rtx_def, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !114
  %233 = tail call ptr @get_addr(ptr noundef %232) #25
  %234 = tail call ptr @canon_rtx(ptr noundef %233) #25
  %235 = tail call ptr @canon_rtx(ptr noundef %230) #25
  %236 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  %237 = icmp eq ptr %236, @dummy_val
  br i1 %237, label %329, label %238, !prof !178

238:                                              ; preds = %229, %326
  %239 = phi ptr [ %327, %326 ], [ @first_containing_mem, %229 ]
  %240 = phi ptr [ %322, %326 ], [ %236, %229 ]
  %241 = phi i32 [ %299, %326 ], [ 0, %229 ]
  %242 = getelementptr inbounds %struct.cselib_val_struct, ptr %240, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !103
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245, !prof !179

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.elt_loc_list, ptr %243, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !166
  br label %248

248:                                              ; preds = %245, %238
  %249 = phi ptr [ %247, %245 ], [ null, %238 ]
  br i1 %244, label %297, label %250, !prof !180

250:                                              ; preds = %248, %291
  %251 = phi ptr [ %295, %291 ], [ %243, %248 ]
  %252 = phi i32 [ %294, %291 ], [ %241, %248 ]
  %253 = phi ptr [ %293, %291 ], [ %242, %248 ]
  %254 = phi i8 [ %292, %291 ], [ 0, %248 ]
  %255 = getelementptr inbounds %struct.elt_loc_list, ptr %251, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !127
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 43
  br i1 %259, label %260, label %291, !prof !181, !llvm.loop !182

260:                                              ; preds = %250
  %261 = load ptr, ptr @compiler_params, align 8, !tbaa !103
  %262 = getelementptr inbounds %struct.param_info, ptr %261, i64 73, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !183
  %264 = icmp slt i32 %252, %263
  br i1 %264, label %265, label %274, !prof !185

265:                                              ; preds = %260
  %266 = load i32, ptr %235, align 8
  %267 = lshr i32 %266, 16
  %268 = and i32 %267, 255
  %269 = tail call i32 @canon_true_dependence(ptr noundef nonnull %235, i32 noundef %268, ptr noundef %234, ptr noundef nonnull %256, ptr noundef null, ptr noundef nonnull @cselib_rtx_varies_p) #25
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %274, !prof !186

271:                                              ; preds = %265
  %272 = add nsw i32 %252, 1
  %273 = load ptr, ptr %253, align 8, !tbaa !103
  br label %291, !llvm.loop !182

274:                                              ; preds = %265, %260
  %275 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !114
  %277 = tail call ptr @cselib_lookup(ptr noundef %276, i32 noundef 0, i32 noundef 0)
  %278 = getelementptr inbounds %struct.cselib_val_struct, ptr %277, i64 0, i32 4
  br label %279

279:                                              ; preds = %279, %274
  %280 = phi ptr [ %278, %274 ], [ %281, %279 ]
  %281 = load ptr, ptr %280, align 8, !tbaa !103
  %282 = getelementptr inbounds %struct.elt_list, ptr %281, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !156
  %284 = icmp eq ptr %283, %240
  br i1 %284, label %285, label %279, !prof !187, !llvm.loop !188

285:                                              ; preds = %279
  %286 = load ptr, ptr %281, align 8, !tbaa !164
  store ptr %286, ptr %280, align 8, !tbaa !103
  %287 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %287, ptr noundef nonnull %281) #25
  %288 = load ptr, ptr %253, align 8, !tbaa !103
  %289 = load ptr, ptr %288, align 8, !tbaa !132
  store ptr %289, ptr %253, align 8, !tbaa !103
  %290 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %290, ptr noundef nonnull %288) #25
  br label %291

291:                                              ; preds = %285, %271, %250
  %292 = phi i8 [ %254, %285 ], [ 1, %271 ], [ %254, %250 ]
  %293 = phi ptr [ %253, %285 ], [ %273, %271 ], [ %251, %250 ]
  %294 = phi i32 [ %252, %285 ], [ %272, %271 ], [ %252, %250 ]
  %295 = load ptr, ptr %293, align 8, !tbaa !103
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %250, !prof !189

297:                                              ; preds = %291, %248
  %298 = phi i8 [ 0, %248 ], [ %292, %291 ]
  %299 = phi i32 [ %241, %248 ], [ %294, %291 ]
  br i1 %244, label %320, label %300, !prof !179

300:                                              ; preds = %297
  %301 = load ptr, ptr %242, align 8, !tbaa !125
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %320, !prof !190

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.cselib_val_struct, ptr %240, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !134
  %306 = load i32, ptr %305, align 8
  %307 = and i32 %306, 67108864
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %320, !prof !191

309:                                              ; preds = %303
  %310 = icmp eq ptr %249, null
  br i1 %310, label %315, label %311, !prof !192

311:                                              ; preds = %309
  %312 = load i32, ptr %249, align 8
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 7
  br i1 %314, label %316, label %315, !prof !192

315:                                              ; preds = %311, %309
  br label %316

316:                                              ; preds = %311, %315
  %317 = phi ptr [ @n_useless_values, %315 ], [ @n_useless_debug_values, %311 ]
  %318 = load i32, ptr %317, align 4, !tbaa !118
  %319 = add nsw i32 %318, 1
  store i32 %319, ptr %317, align 4, !tbaa !118
  br label %320

320:                                              ; preds = %316, %303, %300, %297
  %321 = getelementptr inbounds %struct.cselib_val_struct, ptr %240, i64 0, i32 5
  %322 = load ptr, ptr %321, align 8, !tbaa !193
  %323 = icmp eq i8 %298, 0
  br i1 %323, label %325, label %324, !prof !194

324:                                              ; preds = %320
  store ptr %240, ptr %239, align 8, !tbaa !103
  br label %326

325:                                              ; preds = %320
  store ptr null, ptr %321, align 8, !tbaa !193
  br label %326

326:                                              ; preds = %325, %324
  %327 = phi ptr [ %321, %324 ], [ %239, %325 ]
  %328 = icmp eq ptr %322, @dummy_val
  br i1 %328, label %329, label %238, !prof !195, !llvm.loop !196

329:                                              ; preds = %326, %229
  %330 = phi ptr [ @first_containing_mem, %229 ], [ %327, %326 ]
  store ptr @dummy_val, ptr %330, align 8, !tbaa !103
  br label %331

331:                                              ; preds = %222, %329, %94
  call void @llvm.lifetime.start.p0(i64 3392, ptr nonnull %2) #25
  %332 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %333 = load ptr, ptr %332, align 8, !tbaa !114
  %334 = load i32, ptr %333, align 8
  %335 = and i32 %334, 65535
  %336 = icmp eq i32 %335, 14
  br i1 %336, label %337, label %342, !prof !368

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !114
  %340 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1, i32 0, i32 0, i64 1
  %341 = load ptr, ptr %340, align 8, !tbaa !114
  br label %342

342:                                              ; preds = %337, %331
  %343 = phi ptr [ %339, %337 ], [ null, %331 ]
  %344 = phi ptr [ %341, %337 ], [ %333, %331 ]
  %345 = load i32, ptr %344, align 8
  %346 = trunc i32 %345 to i16
  switch i16 %346, label %382 [
    i16 23, label %347
    i16 15, label %353
  ], !prof !369

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1
  %349 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !114
  store ptr %350, ptr %2, align 16, !tbaa !370
  %351 = load ptr, ptr %348, align 8, !tbaa !114
  %352 = getelementptr inbounds %struct.cselib_set, ptr %2, i64 0, i32 1
  store ptr %351, ptr %352, align 8, !tbaa !372
  br label %382

353:                                              ; preds = %342
  %354 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !114
  %356 = load i32, ptr %355, align 8, !tbaa !143
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %382, !prof !373

358:                                              ; preds = %353
  %359 = zext nneg i32 %356 to i64
  br label %360

360:                                              ; preds = %358, %379
  %361 = phi i64 [ %359, %358 ], [ %363, %379 ]
  %362 = phi i32 [ 0, %358 ], [ %380, %379 ]
  %363 = add nsw i64 %361, -1
  %364 = load ptr, ptr %354, align 8, !tbaa !114
  %365 = getelementptr inbounds %struct.rtvec_def, ptr %364, i64 0, i32 1, i64 %363
  %366 = load ptr, ptr %365, align 8, !tbaa !103
  %367 = load i32, ptr %366, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 23
  br i1 %369, label %370, label %379, !prof !374

370:                                              ; preds = %360
  %371 = getelementptr inbounds %struct.rtx_def, ptr %366, i64 0, i32 1
  %372 = getelementptr inbounds %struct.rtx_def, ptr %366, i64 0, i32 1, i32 0, i32 0, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !114
  %374 = sext i32 %362 to i64
  %375 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %374
  store ptr %373, ptr %375, align 16, !tbaa !370
  %376 = load ptr, ptr %371, align 8, !tbaa !114
  %377 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %374, i32 1
  store ptr %376, ptr %377, align 8, !tbaa !372
  %378 = add nsw i32 %362, 1
  br label %379

379:                                              ; preds = %370, %360
  %380 = phi i32 [ %378, %370 ], [ %362, %360 ]
  %381 = icmp sgt i64 %361, 1
  br i1 %381, label %360, label %382, !prof !375, !llvm.loop !376

382:                                              ; preds = %379, %353, %347, %342
  %383 = phi i32 [ 1, %347 ], [ 0, %342 ], [ 0, %353 ], [ %380, %379 ]
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %406, !prof !377

385:                                              ; preds = %382
  %386 = load ptr, ptr %2, align 16, !tbaa !370
  %387 = load i32, ptr %386, align 8
  %388 = load i8, ptr @cselib_record_memory, align 1
  %389 = icmp ne i8 %388, 0
  %390 = and i32 %387, 67174399
  %391 = icmp ne i32 %390, 67108907
  %392 = select i1 %391, i1 true, i1 %389, !prof !378
  br i1 %392, label %406, label %393, !prof !379

393:                                              ; preds = %385
  %394 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #25
  %395 = icmp eq ptr %394, null
  br i1 %395, label %406, label %396, !prof !380

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !114
  %399 = load i32, ptr %398, align 8
  %400 = and i32 %399, 65535
  %401 = zext nneg i32 %400 to i64
  %402 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !118
  %404 = icmp eq i32 %403, 9
  br i1 %404, label %405, label %406

405:                                              ; preds = %396
  store ptr %398, ptr %2, align 16, !tbaa !370
  br label %406

406:                                              ; preds = %405, %396, %393, %385, %382
  %407 = icmp sgt i32 %383, 0
  br i1 %407, label %408, label %468, !prof !381

408:                                              ; preds = %406
  %409 = zext nneg i32 %383 to i64
  br label %410

410:                                              ; preds = %408, %465
  %411 = phi i64 [ 0, %408 ], [ %466, %465 ]
  %412 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %411
  %413 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %411, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !372
  %415 = load i32, ptr %414, align 8
  %416 = and i32 %415, 65535
  %417 = icmp eq i32 %416, 40
  br i1 %417, label %418, label %421, !prof !382

418:                                              ; preds = %410
  %419 = getelementptr inbounds %struct.rtx_def, ptr %414, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !114
  store ptr %420, ptr %413, align 8, !tbaa !372
  br label %421

421:                                              ; preds = %418, %410
  %422 = phi ptr [ %420, %418 ], [ %414, %410 ]
  %423 = load i32, ptr %422, align 8
  %424 = and i32 %423, 65535
  %425 = icmp eq i32 %424, 37
  br i1 %425, label %431, label %426, !prof !383

426:                                              ; preds = %421
  %427 = icmp eq i32 %424, 43
  %428 = load i8, ptr @cselib_record_memory, align 1
  %429 = icmp ne i8 %428, 0
  %430 = select i1 %427, i1 %429, i1 false, !prof !384
  br i1 %430, label %431, label %465, !prof !385

431:                                              ; preds = %426, %421
  %432 = icmp eq ptr %343, null
  %433 = load ptr, ptr %412, align 16, !tbaa !370
  br i1 %432, label %438, label %434, !prof !386

434:                                              ; preds = %431
  %435 = lshr i32 %423, 16
  %436 = and i32 %435, 255
  %437 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %436, ptr noundef nonnull %343, ptr noundef %433, ptr noundef nonnull %422) #25
  br label %438

438:                                              ; preds = %434, %431
  %439 = phi ptr [ %437, %434 ], [ %433, %431 ]
  %440 = load i32, ptr %422, align 8
  %441 = lshr i32 %440, 16
  %442 = and i32 %441, 255
  %443 = tail call ptr @cselib_lookup(ptr noundef %439, i32 noundef %442, i32 noundef 1)
  %444 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %411, i32 2
  store ptr %443, ptr %444, align 16, !tbaa !387
  %445 = load i32, ptr %422, align 8
  %446 = and i32 %445, 65535
  %447 = icmp eq i32 %446, 43
  br i1 %447, label %448, label %462, !prof !388

448:                                              ; preds = %438
  %449 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !389
  %450 = getelementptr inbounds %struct.rtx_def, ptr %422, i64 0, i32 1
  %451 = getelementptr inbounds %struct.rtx_def, ptr %422, i64 0, i32 1, i32 0, i32 0, i64 1
  %452 = load ptr, ptr %451, align 8, !tbaa !114
  %453 = icmp eq ptr %452, null
  br i1 %453, label %457, label %454, !prof !295

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct.mem_attrs, ptr %452, i64 0, i32 5
  %456 = load i8, ptr %455, align 8, !tbaa !390
  br label %457

457:                                              ; preds = %454, %448
  %458 = phi i8 [ %456, %454 ], [ 0, %448 ]
  %459 = tail call i32 %449(i8 noundef zeroext %458) #25, !prof !392
  %460 = load ptr, ptr %450, align 8, !tbaa !114
  %461 = tail call ptr @cselib_lookup(ptr noundef %460, i32 noundef %459, i32 noundef 1)
  br label %462

462:                                              ; preds = %438, %457
  %463 = phi ptr [ %461, %457 ], [ null, %438 ]
  %464 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %411, i32 3
  store ptr %463, ptr %464, align 8, !tbaa !393
  br label %465

465:                                              ; preds = %462, %426
  %466 = add nuw nsw i64 %411, 1
  %467 = icmp eq i64 %466, %409
  br i1 %467, label %468, label %410, !prof !394, !llvm.loop !395

468:                                              ; preds = %465, %406
  %469 = load ptr, ptr @cselib_record_sets_hook, align 8, !tbaa !103
  %470 = icmp eq ptr %469, null
  br i1 %470, label %472, label %471, !prof !396

471:                                              ; preds = %468
  call void %469(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %383) #25
  br label %472

472:                                              ; preds = %471, %468
  call void @note_stores(ptr noundef nonnull %344, ptr noundef nonnull @cselib_invalidate_rtx_note_stores, ptr noundef null) #25
  %473 = icmp sgt i32 %383, 1
  br i1 %473, label %474, label %506, !prof !397

474:                                              ; preds = %472
  %475 = call i32 @asm_noperands(ptr noundef nonnull %344) #25
  %476 = icmp sgt i32 %475, -1
  br i1 %476, label %477, label %506, !prof !398

477:                                              ; preds = %474
  %478 = zext nneg i32 %383 to i64
  %479 = zext nneg i32 %383 to i64
  %480 = zext nneg i32 %383 to i64
  br label %481

481:                                              ; preds = %477, %502
  %482 = phi i64 [ 0, %477 ], [ %503, %502 ]
  %483 = phi i64 [ 1, %477 ], [ %504, %502 ]
  %484 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %482, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !372
  %486 = load i32, ptr %485, align 8
  %487 = trunc i32 %486 to i16
  switch i16 %487, label %502 [
    i16 37, label %488
    i16 43, label %488
  ]

488:                                              ; preds = %481, %481
  %489 = add nuw nsw i64 %482, 1
  %490 = icmp ult i64 %489, %478
  br i1 %490, label %491, label %502

491:                                              ; preds = %488, %499
  %492 = phi i64 [ %500, %499 ], [ %483, %488 ]
  %493 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %492, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !372
  %495 = call i32 @rtx_equal_p(ptr noundef nonnull %485, ptr noundef %494) #25
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %499, label %497

497:                                              ; preds = %491
  %498 = load ptr, ptr @global_rtl, align 16, !tbaa !103
  store ptr %498, ptr %484, align 8, !tbaa !372
  store ptr %498, ptr %493, align 8, !tbaa !372
  br label %499

499:                                              ; preds = %497, %491
  %500 = add nuw nsw i64 %492, 1
  %501 = icmp eq i64 %500, %480
  br i1 %501, label %502, label %491, !llvm.loop !399

502:                                              ; preds = %499, %488, %481
  %503 = add nuw nsw i64 %482, 1
  %504 = add nuw nsw i64 %483, 1
  %505 = icmp eq i64 %503, %479
  br i1 %505, label %506, label %481, !llvm.loop !400

506:                                              ; preds = %502, %474, %472
  %507 = icmp sgt i32 %383, 0
  br i1 %507, label %508, label %725, !prof !381

508:                                              ; preds = %506
  %509 = zext nneg i32 %383 to i64
  br label %510

510:                                              ; preds = %508, %722
  %511 = phi i64 [ 0, %508 ], [ %723, %722 ]
  %512 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %511, i32 1
  %513 = load ptr, ptr %512, align 8, !tbaa !372
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = icmp eq i32 %515, 37
  br i1 %516, label %522, label %517, !prof !383

517:                                              ; preds = %510
  %518 = icmp eq i32 %515, 43
  %519 = load i8, ptr @cselib_record_memory, align 1
  %520 = icmp ne i8 %519, 0
  %521 = select i1 %518, i1 %520, i1 false, !prof !384
  br i1 %521, label %522, label %722, !prof !385

522:                                              ; preds = %517, %510
  %523 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %511, i32 2
  %524 = load ptr, ptr %523, align 16, !tbaa !387
  %525 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %511, i32 3
  %526 = load ptr, ptr %525, align 8, !tbaa !393
  br i1 %516, label %527, label %530, !prof !401

527:                                              ; preds = %522
  %528 = getelementptr inbounds %struct.rtx_def, ptr %513, i64 0, i32 1
  %529 = load i32, ptr %528, align 8, !tbaa !114
  br label %530

530:                                              ; preds = %527, %522
  %531 = phi i32 [ %529, %527 ], [ -1, %522 ]
  %532 = icmp eq ptr %524, null
  br i1 %532, label %722, label %533, !prof !402

533:                                              ; preds = %530
  %534 = call i32 @side_effects_p(ptr noundef nonnull %513) #25
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %722, !prof !403

536:                                              ; preds = %533
  %537 = icmp sgt i32 %531, -1
  br i1 %537, label %538, label %619, !prof !404

538:                                              ; preds = %536
  %539 = icmp slt i32 %531, 53
  br i1 %539, label %540, label %552, !prof !405

540:                                              ; preds = %538
  %541 = zext nneg i32 %531 to i64
  %542 = load i32, ptr %513, align 8
  %543 = lshr i32 %542, 16
  %544 = and i32 %543, 255
  %545 = zext nneg i32 %544 to i64
  %546 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %541, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !114
  %548 = zext i8 %547 to i32
  %549 = load i32, ptr @max_value_regs, align 4, !tbaa !118
  %550 = icmp ult i32 %549, %548
  br i1 %550, label %551, label %552, !prof !406

551:                                              ; preds = %540
  store i32 %548, ptr @max_value_regs, align 4, !tbaa !118
  br label %552

552:                                              ; preds = %551, %540, %538
  %553 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %554 = zext nneg i32 %531 to i64
  %555 = getelementptr inbounds ptr, ptr %553, i64 %554
  %556 = load ptr, ptr %555, align 8, !tbaa !103
  %557 = icmp eq ptr %556, null
  br i1 %557, label %558, label %569, !prof !407

558:                                              ; preds = %552
  %559 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %560 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %561 = add i32 %560, 1
  store i32 %561, ptr @n_used_regs, align 4, !tbaa !118
  %562 = zext i32 %560 to i64
  %563 = getelementptr inbounds i32, ptr %559, i64 %562
  store i32 %531, ptr %563, align 4, !tbaa !118
  %564 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  %565 = call ptr @pool_alloc(ptr noundef %564) #25
  store ptr %556, ptr %565, align 8, !tbaa !164
  %566 = getelementptr inbounds %struct.elt_list, ptr %565, i64 0, i32 1
  store ptr %524, ptr %566, align 8, !tbaa !156
  %567 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %568 = getelementptr inbounds ptr, ptr %567, i64 %554
  store ptr %565, ptr %568, align 8, !tbaa !103
  br label %579

569:                                              ; preds = %552
  %570 = getelementptr inbounds %struct.elt_list, ptr %556, i64 0, i32 1
  %571 = load ptr, ptr %570, align 8, !tbaa !156
  %572 = icmp eq ptr %571, null
  br i1 %572, label %574, label %573, !prof !408

573:                                              ; preds = %569
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1993, ptr noundef nonnull @.str.1) #25
  br label %574

574:                                              ; preds = %573, %569
  %575 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %576 = getelementptr inbounds ptr, ptr %575, i64 %554
  %577 = load ptr, ptr %576, align 8, !tbaa !103
  %578 = getelementptr inbounds %struct.elt_list, ptr %577, i64 0, i32 1
  store ptr %524, ptr %578, align 8, !tbaa !156
  br label %579

579:                                              ; preds = %574, %558
  %580 = getelementptr inbounds %struct.cselib_val_struct, ptr %524, i64 0, i32 3
  %581 = load ptr, ptr %580, align 8, !tbaa !125
  %582 = icmp eq ptr %581, null
  br i1 %582, label %583, label %592, !prof !409

583:                                              ; preds = %579
  %584 = getelementptr inbounds %struct.cselib_val_struct, ptr %524, i64 0, i32 2
  %585 = load ptr, ptr %584, align 8, !tbaa !134
  %586 = load i32, ptr %585, align 8
  %587 = and i32 %586, 67108864
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %583
  %590 = load i32, ptr @n_useless_values, align 4, !tbaa !118
  %591 = add nsw i32 %590, -1
  store i32 %591, ptr @n_useless_values, align 4, !tbaa !118
  br label %592

592:                                              ; preds = %589, %583, %579
  %593 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  %594 = call ptr @pool_alloc(ptr noundef %593) #25
  store ptr %581, ptr %594, align 8, !tbaa !132
  %595 = getelementptr inbounds %struct.elt_loc_list, ptr %594, i64 0, i32 1
  store ptr %513, ptr %595, align 8, !tbaa !127
  %596 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %597 = getelementptr inbounds %struct.elt_loc_list, ptr %594, i64 0, i32 2
  store ptr %596, ptr %597, align 8, !tbaa !166
  br i1 %582, label %607, label %598, !prof !409

598:                                              ; preds = %592
  %599 = getelementptr inbounds %struct.elt_loc_list, ptr %581, i64 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !166
  %601 = icmp eq ptr %600, null
  br i1 %601, label %607, label %602, !prof !409

602:                                              ; preds = %598
  %603 = load i32, ptr %600, align 8
  %604 = and i32 %603, 65535
  %605 = icmp eq i32 %604, 7
  br i1 %605, label %606, label %607, !prof !409

606:                                              ; preds = %602
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #25
  br label %607

607:                                              ; preds = %606, %602, %598, %592
  %608 = load ptr, ptr @cselib_current_insn, align 8
  %609 = icmp ne ptr %608, null
  %610 = select i1 %582, i1 %609, i1 false, !prof !409
  br i1 %610, label %611, label %618, !prof !409

611:                                              ; preds = %607
  %612 = load i32, ptr %608, align 8
  %613 = and i32 %612, 65535
  %614 = icmp eq i32 %613, 7
  br i1 %614, label %615, label %618

615:                                              ; preds = %611
  %616 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %617 = add nsw i32 %616, 1
  store i32 %617, ptr @n_debug_values, align 4, !tbaa !118
  br label %618

618:                                              ; preds = %615, %611, %607
  store ptr %594, ptr %580, align 8, !tbaa !125
  br label %722

619:                                              ; preds = %536
  %620 = load i32, ptr %513, align 8
  %621 = and i32 %620, 65535
  %622 = icmp eq i32 %621, 43
  %623 = icmp ne ptr %526, null
  %624 = and i1 %623, %622
  %625 = load i8, ptr @cselib_record_memory, align 1
  %626 = icmp ne i8 %625, 0
  %627 = select i1 %624, i1 %626, i1 false, !prof !410
  br i1 %627, label %628, label %722, !prof !410

628:                                              ; preds = %619
  %629 = getelementptr inbounds %struct.cselib_val_struct, ptr %524, i64 0, i32 3
  %630 = load ptr, ptr %629, align 8, !tbaa !103
  %631 = icmp eq ptr %630, null
  br i1 %631, label %632, label %642, !prof !295

632:                                              ; preds = %628
  %633 = getelementptr inbounds %struct.cselib_val_struct, ptr %524, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !134
  %635 = load i32, ptr %634, align 8
  %636 = and i32 %635, 67108864
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %641

638:                                              ; preds = %632
  %639 = load i32, ptr @n_useless_values, align 4, !tbaa !118
  %640 = add nsw i32 %639, -1
  store i32 %640, ptr @n_useless_values, align 4, !tbaa !118
  br label %641

641:                                              ; preds = %638, %632
  br i1 %631, label %680, label %642, !prof !288

642:                                              ; preds = %641, %628
  br label %643

643:                                              ; preds = %642, %677
  %644 = phi ptr [ %678, %677 ], [ %630, %642 ]
  %645 = getelementptr inbounds %struct.elt_loc_list, ptr %644, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !127
  %647 = load i32, ptr %646, align 8
  %648 = and i32 %647, 65535
  %649 = icmp eq i32 %648, 43
  br i1 %649, label %650, label %677, !prof !289

650:                                              ; preds = %643
  %651 = getelementptr inbounds %struct.rtx_def, ptr %646, i64 0, i32 1
  %652 = load ptr, ptr %651, align 8, !tbaa !114
  %653 = getelementptr inbounds %struct.rtx_def, ptr %652, i64 0, i32 1
  %654 = load ptr, ptr %653, align 8, !tbaa !114
  %655 = icmp eq ptr %654, %526
  br i1 %655, label %656, label %677, !prof !290

656:                                              ; preds = %650
  %657 = getelementptr inbounds %struct.elt_loc_list, ptr %644, i64 0, i32 2
  %658 = load ptr, ptr %657, align 8, !tbaa !166
  %659 = icmp eq ptr %658, null
  br i1 %659, label %722, label %660

660:                                              ; preds = %656
  %661 = load i32, ptr %658, align 8
  %662 = and i32 %661, 65535
  %663 = icmp eq i32 %662, 7
  br i1 %663, label %664, label %722

664:                                              ; preds = %660
  %665 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %666 = icmp eq ptr %665, null
  br i1 %666, label %671, label %667

667:                                              ; preds = %664
  %668 = load i32, ptr %665, align 8
  %669 = and i32 %668, 65535
  %670 = icmp eq i32 %669, 7
  br i1 %670, label %722, label %671

671:                                              ; preds = %667, %664
  %672 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %673 = add nsw i32 %672, -1
  store i32 %673, ptr @n_debug_values, align 4, !tbaa !118
  store ptr %665, ptr %657, align 8, !tbaa !166
  %674 = load ptr, ptr %644, align 8, !tbaa !132
  %675 = icmp eq ptr %674, null
  br i1 %675, label %722, label %676

676:                                              ; preds = %671
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %722

677:                                              ; preds = %650, %643
  %678 = load ptr, ptr %644, align 8, !tbaa !103
  %679 = icmp eq ptr %678, null
  br i1 %679, label %680, label %643, !prof !291, !llvm.loop !292

680:                                              ; preds = %677, %641
  %681 = getelementptr inbounds %struct.cselib_val_struct, ptr %526, i64 0, i32 4
  %682 = load ptr, ptr %681, align 8, !tbaa !293
  %683 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  %684 = call ptr @pool_alloc(ptr noundef %683) #25
  store ptr %682, ptr %684, align 8, !tbaa !164
  %685 = getelementptr inbounds %struct.elt_list, ptr %684, i64 0, i32 1
  store ptr %524, ptr %685, align 8, !tbaa !156
  store ptr %684, ptr %681, align 8, !tbaa !293
  %686 = load ptr, ptr %629, align 8, !tbaa !125
  %687 = getelementptr inbounds %struct.cselib_val_struct, ptr %526, i64 0, i32 2
  %688 = load ptr, ptr %687, align 8, !tbaa !134
  %689 = call ptr @replace_equiv_address_nv(ptr noundef nonnull %513, ptr noundef %688) #25
  %690 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  %691 = call ptr @pool_alloc(ptr noundef %690) #25
  store ptr %686, ptr %691, align 8, !tbaa !132
  %692 = getelementptr inbounds %struct.elt_loc_list, ptr %691, i64 0, i32 1
  store ptr %689, ptr %692, align 8, !tbaa !127
  %693 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %694 = getelementptr inbounds %struct.elt_loc_list, ptr %691, i64 0, i32 2
  store ptr %693, ptr %694, align 8, !tbaa !166
  %695 = icmp eq ptr %686, null
  br i1 %695, label %705, label %696, !prof !294

696:                                              ; preds = %680
  %697 = getelementptr inbounds %struct.elt_loc_list, ptr %686, i64 0, i32 2
  %698 = load ptr, ptr %697, align 8, !tbaa !166
  %699 = icmp eq ptr %698, null
  br i1 %699, label %705, label %700, !prof !295

700:                                              ; preds = %696
  %701 = load i32, ptr %698, align 8
  %702 = and i32 %701, 65535
  %703 = icmp eq i32 %702, 7
  br i1 %703, label %704, label %705, !prof !295

704:                                              ; preds = %700
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #25
  br label %705

705:                                              ; preds = %704, %700, %696, %680
  %706 = load ptr, ptr @cselib_current_insn, align 8
  %707 = icmp ne ptr %706, null
  %708 = select i1 %695, i1 %707, i1 false, !prof !294
  br i1 %708, label %709, label %716, !prof !294

709:                                              ; preds = %705
  %710 = load i32, ptr %706, align 8
  %711 = and i32 %710, 65535
  %712 = icmp eq i32 %711, 7
  br i1 %712, label %713, label %716, !prof !296

713:                                              ; preds = %709
  %714 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %715 = add nsw i32 %714, 1
  store i32 %715, ptr @n_debug_values, align 4, !tbaa !118
  br label %716

716:                                              ; preds = %713, %709, %705
  store ptr %691, ptr %629, align 8, !tbaa !125
  %717 = getelementptr inbounds %struct.cselib_val_struct, ptr %524, i64 0, i32 5
  %718 = load ptr, ptr %717, align 8, !tbaa !193
  %719 = icmp eq ptr %718, null
  br i1 %719, label %720, label %722, !prof !297

720:                                              ; preds = %716
  %721 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  store ptr %721, ptr %717, align 8, !tbaa !193
  store ptr %524, ptr @first_containing_mem, align 8, !tbaa !103
  br label %722

722:                                              ; preds = %720, %716, %676, %671, %667, %660, %656, %517, %619, %618, %533, %530
  %723 = add nuw nsw i64 %511, 1
  %724 = icmp eq i64 %723, %509
  br i1 %724, label %725, label %510, !prof !394, !llvm.loop !411

725:                                              ; preds = %722, %506
  call void @llvm.lifetime.end.p0(i64 3392, ptr nonnull %2) #25
  %726 = load i32, ptr %0, align 8
  %727 = and i32 %726, 65535
  %728 = icmp eq i32 %727, 10
  br i1 %728, label %729, label %747, !prof !363

729:                                              ; preds = %725
  %730 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %731 = load ptr, ptr %730, align 8, !tbaa !114
  %732 = icmp eq ptr %731, null
  br i1 %732, label %747, label %733, !prof !201

733:                                              ; preds = %729, %743
  %734 = phi ptr [ %745, %743 ], [ %731, %729 ]
  %735 = getelementptr inbounds %struct.rtx_def, ptr %734, i64 0, i32 1
  %736 = load ptr, ptr %735, align 8, !tbaa !114
  %737 = load i32, ptr %736, align 8
  %738 = and i32 %737, 65535
  %739 = icmp eq i32 %738, 25
  br i1 %739, label %740, label %743

740:                                              ; preds = %733
  %741 = getelementptr inbounds %struct.rtx_def, ptr %736, i64 0, i32 1
  %742 = load ptr, ptr %741, align 8, !tbaa !114
  call void @cselib_invalidate_rtx(ptr noundef %742)
  br label %743

743:                                              ; preds = %733, %740
  %744 = getelementptr inbounds %struct.rtx_def, ptr %734, i64 0, i32 1, i32 0, i32 0, i64 1
  %745 = load ptr, ptr %744, align 8, !tbaa !114
  %746 = icmp eq ptr %745, null
  br i1 %746, label %747, label %733, !prof !201, !llvm.loop !412

747:                                              ; preds = %743, %729, %725
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !103
  %748 = load i32, ptr @n_useless_values, align 4, !tbaa !118
  %749 = icmp sgt i32 %748, 32
  br i1 %749, label %750, label %764, !prof !413

750:                                              ; preds = %747
  %751 = zext nneg i32 %748 to i64
  %752 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  %753 = getelementptr inbounds %struct.htab, ptr %752, i64 0, i32 5
  %754 = load i64, ptr %753, align 8, !tbaa !414
  %755 = getelementptr inbounds %struct.htab, ptr %752, i64 0, i32 6
  %756 = load i64, ptr %755, align 8, !tbaa !416
  %757 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %758 = sext i32 %757 to i64
  %759 = add i64 %756, %758
  %760 = sub i64 %754, %759
  %761 = lshr i64 %760, 2
  %762 = icmp ult i64 %761, %751
  br i1 %762, label %763, label %764, !prof !203

763:                                              ; preds = %750
  call fastcc void @remove_useless_values()
  br label %764

764:                                              ; preds = %747, %750, %763, %93, %89
  ret void
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cselib_init(i32 noundef %0) local_unnamed_addr #9 !prof !417 {
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 16, i64 noundef 10) #25
  store ptr %2, ptr @elt_list_pool, align 8, !tbaa !103
  %3 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.5, i64 noundef 24, i64 noundef 10) #25
  store ptr %3, ptr @elt_loc_list_pool, align 8, !tbaa !103
  %4 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 40, i64 noundef 10) #25
  store ptr %4, ptr @cselib_val_pool, align 8, !tbaa !103
  %5 = load i8, ptr getelementptr inbounds ([139 x i8], ptr @rtx_code_size, i64 0, i64 1), align 1, !tbaa !114
  %6 = zext i8 %5 to i64
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef %6, i64 noundef 100) #25
  store ptr %7, ptr @value_pool, align 8, !tbaa !103
  %8 = trunc i32 %0 to i8
  %9 = and i8 %8, 1
  store i8 %9, ptr @cselib_record_memory, align 1, !tbaa !114
  %10 = and i8 %8, 2
  store i8 %10, ptr @cselib_preserve_constants, align 1, !tbaa !114
  %11 = load ptr, ptr @callmem, align 8, !tbaa !103
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !418

13:                                               ; preds = %1
  %14 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 0) #25
  %15 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %14) #25
  store ptr %15, ptr @callmem, align 8, !tbaa !103
  br label %16

16:                                               ; preds = %13, %1
  %17 = tail call i32 @max_reg_num() #25
  store i32 %17, ptr @cselib_nregs, align 4, !tbaa !118
  %18 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20, !prof !418

20:                                               ; preds = %16
  %21 = load i32, ptr @reg_values_size, align 4, !tbaa !118
  %22 = icmp ult i32 %21, %17
  br i1 %22, label %28, label %23, !prof !419

23:                                               ; preds = %20
  %24 = icmp ugt i32 %21, 10
  %25 = shl i32 %17, 2
  %26 = icmp ugt i32 %21, %25
  %27 = select i1 %24, i1 %26, i1 false, !prof !420
  br i1 %27, label %28, label %36, !prof !421

28:                                               ; preds = %23, %20
  br i1 %19, label %30, label %29, !prof !422

29:                                               ; preds = %28
  tail call void @free(ptr noundef %18)
  br label %30

30:                                               ; preds = %16, %29, %28
  %31 = add i32 %17, 63
  %32 = lshr i32 %31, 4
  %33 = add i32 %32, %17
  store i32 %33, ptr @reg_values_size, align 4, !tbaa !118
  %34 = zext i32 %33 to i64
  %35 = tail call ptr @xcalloc(i64 noundef %34, i64 noundef 8) #25
  store ptr %35, ptr @reg_values, align 8, !tbaa !103
  br label %36

36:                                               ; preds = %30, %23
  %37 = load i32, ptr @cselib_nregs, align 4, !tbaa !118
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2
  %40 = tail call ptr @xmalloc(i64 noundef %39) #25
  store ptr %40, ptr @used_regs, align 8, !tbaa !103
  store i32 0, ptr @n_used_regs, align 4, !tbaa !118
  %41 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @get_value_hash, ptr noundef nonnull @entry_and_rtx_equal_p, ptr noundef null) #25
  store ptr %41, ptr @cselib_hash_table, align 8, !tbaa !103
  store i32 1, ptr @next_uid, align 4, !tbaa !118
  ret void
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @get_value_hash(ptr nocapture noundef readonly %0) #20 !prof !423 !PGOFuncName !424 {
  %2 = load i32, ptr %0, align 8, !tbaa !271
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @entry_and_rtx_equal_p(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !425 !PGOFuncName !426 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = and i32 %3, 65534
  %7 = icmp eq i32 %6, 30
  br i1 %7, label %13, label %8, !prof !427

8:                                                ; preds = %2
  %9 = and i32 %3, 65535
  %10 = icmp eq i32 %5, 0
  %11 = icmp eq i32 %9, 32
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %14, !prof !427

13:                                               ; preds = %2, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #25
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %5, %19
  br i1 %20, label %21, label %66, !prof !428

21:                                               ; preds = %14
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %25, label %33, !prof !429

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -30
  %31 = icmp ult i32 %30, 3
  %32 = select i1 %31, ptr %27, ptr %1, !prof !430
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi ptr [ %1, %21 ], [ %32, %25 ]
  %35 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 3
  br label %36

36:                                               ; preds = %40, %33
  %37 = phi ptr [ %35, %33 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !103
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40, !prof !431

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.elt_loc_list, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !127
  %43 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %42, ptr noundef %34)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %45, !prof !432, !llvm.loop !433

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.elt_loc_list, ptr %38, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !166
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49, !prof !434

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 7
  br i1 %52, label %53, label %66, !prof !435

53:                                               ; preds = %49
  %54 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !103
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %54, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %66, label %60

60:                                               ; preds = %56, %53
  %61 = load i32, ptr @n_debug_values, align 4, !tbaa !118
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr @n_debug_values, align 4, !tbaa !118
  store ptr %54, ptr %46, align 8, !tbaa !166
  %63 = load ptr, ptr %38, align 8, !tbaa !132
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %66

66:                                               ; preds = %36, %60, %65, %56, %49, %45, %14
  %67 = phi i32 [ 0, %14 ], [ 1, %45 ], [ 1, %49 ], [ 1, %56 ], [ 1, %65 ], [ 1, %60 ], [ 0, %36 ]
  ret i32 %67
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cselib_finish() local_unnamed_addr #9 !prof !417 {
  store ptr null, ptr @cselib_discard_hook, align 8, !tbaa !103
  store i8 0, ptr @cselib_preserve_constants, align 1, !tbaa !114
  store ptr null, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %1 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @free_alloc_pool(ptr noundef %1) #25
  %2 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @free_alloc_pool(ptr noundef %2) #25
  %3 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !103
  tail call void @free_alloc_pool(ptr noundef %3) #25
  %4 = load ptr, ptr @value_pool, align 8, !tbaa !103
  tail call void @free_alloc_pool(ptr noundef %4) #25
  store i32 0, ptr @max_value_regs, align 4, !tbaa !118
  %5 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14, !prof !123

7:                                                ; preds = %0
  %8 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %67, label %10, !prof !124

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_values, align 8, !tbaa !103
  %12 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %13 = zext i32 %8 to i64
  br label %59

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !125
  %17 = getelementptr inbounds %struct.elt_loc_list, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !127
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !114
  %21 = load i32, ptr @n_used_regs, align 4, !tbaa !118
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr @used_regs, align 8, !tbaa !103
  %25 = load ptr, ptr @reg_values, align 8
  %26 = zext i32 %21 to i64
  br label %27

27:                                               ; preds = %36, %23
  %28 = phi i64 [ 0, %23 ], [ %38, %36 ]
  %29 = phi i32 [ 0, %23 ], [ %37, %36 ]
  %30 = getelementptr inbounds i32, ptr %24, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !118
  %32 = icmp eq i32 %31, %20
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %25, i64 %34
  store ptr null, ptr %35, align 8, !tbaa !103
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i32 [ %29, %33 ], [ 1, %27 ]
  %38 = add nuw nsw i64 %28, 1
  %39 = icmp eq i64 %38, %26
  br i1 %39, label %40, label %27, !llvm.loop !129

40:                                               ; preds = %36, %14
  %41 = phi i32 [ 0, %14 ], [ %37, %36 ]
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 351, ptr noundef nonnull @.str.1) #25
  br label %44

44:                                               ; preds = %43, %40
  store i32 %41, ptr @n_used_regs, align 4, !tbaa !118
  %45 = load ptr, ptr @used_regs, align 8, !tbaa !103
  store i32 %20, ptr %45, align 4, !tbaa !118
  %46 = zext i32 %20 to i64
  %47 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !103
  %48 = getelementptr inbounds %struct.cselib_val_struct, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !125
  %50 = getelementptr inbounds %struct.elt_loc_list, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !127
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %46, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !114
  %58 = zext i8 %57 to i32
  store i32 %58, ptr @max_value_regs, align 4, !tbaa !118
  br label %68

59:                                               ; preds = %59, %10
  %60 = phi i64 [ 0, %10 ], [ %65, %59 ]
  %61 = getelementptr inbounds i32, ptr %12, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !118
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %11, i64 %63
  store ptr null, ptr %64, align 8, !tbaa !103
  %65 = add nuw nsw i64 %60, 1
  %66 = icmp eq i64 %65, %13
  br i1 %66, label %67, label %59, !prof !130, !llvm.loop !131

67:                                               ; preds = %59, %7
  store i32 0, ptr @n_used_regs, align 4, !tbaa !118
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !114
  %70 = icmp eq i8 %69, 0
  %71 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  br i1 %70, label %73, label %72, !prof !123

72:                                               ; preds = %68
  tail call void @htab_traverse(ptr noundef %71, ptr noundef nonnull @preserve_only_constants, ptr noundef null) #25
  br label %74

73:                                               ; preds = %68
  tail call void @htab_empty(ptr noundef %71) #25
  br label %74

74:                                               ; preds = %72, %73
  store i32 0, ptr @n_useless_values, align 4, !tbaa !118
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !118
  store i32 0, ptr @n_debug_values, align 4, !tbaa !118
  store i32 1, ptr @next_uid, align 4, !tbaa !118
  store ptr @dummy_val, ptr @first_containing_mem, align 8, !tbaa !103
  %75 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  tail call void @htab_delete(ptr noundef %75) #25
  %76 = load ptr, ptr @used_regs, align 8, !tbaa !103
  tail call void @free(ptr noundef %76)
  store ptr null, ptr @used_regs, align 8, !tbaa !103
  store ptr null, ptr @cselib_hash_table, align 8, !tbaa !103
  store i32 0, ptr @n_useless_values, align 4, !tbaa !118
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !118
  store i32 0, ptr @n_debug_values, align 4, !tbaa !118
  store i32 0, ptr @next_uid, align 4, !tbaa !118
  ret void
}

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_cselib_table(ptr noundef %0) local_unnamed_addr #10 !prof !102 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 19, i64 1, ptr %0)
  %3 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  tail call void @htab_traverse(ptr noundef %3, ptr noundef nonnull @dump_cselib_val, ptr noundef %0) #25
  %4 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  %5 = icmp eq ptr %4, @dummy_val
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 10, i64 1, ptr %0)
  %8 = load ptr, ptr @first_containing_mem, align 8, !tbaa !103
  %9 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  tail call void @print_inline_rtx(ptr noundef %0, ptr noundef %10, i32 noundef 2) #25
  %11 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0)
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i32, ptr @next_uid, align 4, !tbaa !118
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %13)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_cselib_val(ptr nocapture noundef readonly %0, ptr noundef %1) #10 !prof !102 {
  %3 = load ptr, ptr %0, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %5, i32 noundef 0) #25
  %6 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 6, i64 1, ptr %1)
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %7, %9 ], [ %21, %12 ]
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !114
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %17)
  %19 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %20, i32 noundef 4) #25
  %21 = load ptr, ptr %13, align 8, !tbaa !132
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !436

23:                                               ; preds = %12
  %24 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  br label %27

25:                                               ; preds = %2
  %26 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 8, i64 1, ptr %1)
  br label %27

27:                                               ; preds = %25, %23
  %28 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !293
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  br i1 %8, label %32, label %34

32:                                               ; preds = %31
  %33 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  br label %34

34:                                               ; preds = %32, %31
  %35 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 11, i64 1, ptr %1)
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi ptr [ %29, %34 ], [ %43, %36 ]
  %38 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 3, i64 1, ptr %1)
  %39 = getelementptr inbounds %struct.elt_list, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !156
  %41 = getelementptr inbounds %struct.cselib_val_struct, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !134
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %42, i32 noundef 2) #25
  %43 = load ptr, ptr %37, align 8, !tbaa !164
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !437

45:                                               ; preds = %36
  %46 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  br label %49

47:                                               ; preds = %27
  %48 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 9, i64 1, ptr %1)
  br label %49

49:                                               ; preds = %47, %45
  %50 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !193
  %52 = icmp eq ptr %51, @dummy_val
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 10, i64 1, ptr %1)
  br label %66

55:                                               ; preds = %49
  %56 = icmp eq ptr %51, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %55
  %58 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 10, i64 1, ptr %1)
  %59 = load ptr, ptr %50, align 8, !tbaa !193
  %60 = getelementptr inbounds %struct.cselib_val_struct, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !134
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %61, i32 noundef 2) #25
  %62 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  br label %66

63:                                               ; preds = %55
  br i1 %30, label %64, label %66

64:                                               ; preds = %63
  %65 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  br label %66

66:                                               ; preds = %57, %64, %63, %53
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @discard_useless_locs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #16 !prof !438 !PGOFuncName !439 {
  %3 = load ptr, ptr %0, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !125
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !440

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.elt_loc_list, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !103
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14, !prof !441

14:                                               ; preds = %10, %24
  %15 = phi ptr [ %26, %24 ], [ %12, %10 ]
  %16 = phi ptr [ %25, %24 ], [ %4, %10 ]
  %17 = getelementptr inbounds %struct.elt_loc_list, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !127
  %19 = tail call i32 @references_value_p(ptr noundef %18, i32 noundef 1), !range !133
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !442

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !132
  store ptr %22, ptr %16, align 8, !tbaa !103
  %23 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %23, ptr noundef nonnull %15) #25
  br label %24

24:                                               ; preds = %14, %21
  %25 = phi ptr [ %16, %21 ], [ %15, %14 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !prof !443, !llvm.loop !444

28:                                               ; preds = %24, %10
  br i1 %6, label %49, label %29, !prof !440

29:                                               ; preds = %28
  %30 = load ptr, ptr %4, align 8, !tbaa !125
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %49, !prof !445

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 67108864
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49, !prof !138

38:                                               ; preds = %32
  %39 = icmp eq ptr %11, null
  br i1 %39, label %44, label %40, !prof !137

40:                                               ; preds = %38
  %41 = load i32, ptr %11, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %45, label %44, !prof !137

44:                                               ; preds = %40, %38
  br label %45

45:                                               ; preds = %40, %44
  %46 = phi ptr [ @n_useless_values, %44 ], [ @n_useless_debug_values, %40 ]
  %47 = load i32, ptr %46, align 4, !tbaa !118
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !118
  store i1 true, ptr @values_became_useless, align 4
  br label %49

49:                                               ; preds = %45, %32, %29, %28
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @discard_useless_values(ptr noundef %0, ptr nocapture readnone %1) #16 !prof !446 !PGOFuncName !447 {
  %3 = load ptr, ptr %0, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !125
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %34, !prof !448

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34, !prof !449

13:                                               ; preds = %7
  %14 = load ptr, ptr @cselib_discard_hook, align 8, !tbaa !103
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !449

16:                                               ; preds = %13
  tail call void %14(ptr noundef %3) #25
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr %8, align 8, !tbaa !134
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  store ptr null, ptr %19, align 8, !tbaa !114
  %20 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !103
  tail call void @htab_clear_slot(ptr noundef %20, ptr noundef nonnull %0) #25
  %21 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24, !prof !201

24:                                               ; preds = %17, %24
  %25 = phi ptr [ %28, %24 ], [ %22, %17 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !164
  store ptr %26, ptr %21, align 8, !tbaa !103
  %27 = load ptr, ptr @elt_list_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %27, ptr noundef nonnull %25) #25
  %28 = load ptr, ptr %21, align 8, !tbaa !103
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %24, !prof !201, !llvm.loop !450

30:                                               ; preds = %24, %17
  %31 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !103
  tail call void @pool_free(ptr noundef %31, ptr noundef %3) #25
  %32 = load i32, ptr @n_useless_values, align 4, !tbaa !118
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr @n_useless_values, align 4, !tbaa !118
  br label %34

34:                                               ; preds = %30, %7, %2
  ret i32 1
}

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expand_loc(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #16 !prof !451 !PGOFuncName !452 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %90, label %5, !prof !453

5:                                                ; preds = %3, %84
  %6 = phi ptr [ %87, %84 ], [ undef, %3 ]
  %7 = phi ptr [ %88, %84 ], [ %0, %3 ]
  %8 = phi ptr [ %86, %84 ], [ null, %3 ]
  %9 = phi i32 [ %85, %84 ], [ -1, %3 ]
  %10 = getelementptr inbounds %struct.elt_loc_list, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !127
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %27, !prof !454

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !114
  %18 = icmp ult i32 %17, %9
  br i1 %18, label %19, label %27, !prof !454

19:                                               ; preds = %15
  %20 = load ptr, ptr %1, align 8, !tbaa !308
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %17) #25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27, !prof !455

23:                                               ; preds = %19
  %24 = load ptr, ptr %10, align 8, !tbaa !127
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !114
  br label %84

27:                                               ; preds = %19, %15, %5
  %28 = load ptr, ptr %10, align 8, !tbaa !127
  %29 = load i32, ptr %28, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %40 [
    i16 1, label %31
    i16 37, label %84
  ], !prof !456

31:                                               ; preds = %27
  %32 = and i32 %29, 65535
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  %35 = getelementptr inbounds %struct.cselib_val_struct, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !125
  %37 = icmp eq ptr %36, %0
  %38 = icmp eq i32 %32, 37
  %39 = or i1 %38, %37
  br i1 %39, label %84, label %40, !prof !457

40:                                               ; preds = %31, %27
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  tail call void @print_inline_rtx(ptr noundef nonnull %41, ptr noundef nonnull %28, i32 noundef 0) #25
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %49 = tail call i32 @fputc(i32 10, ptr %48)
  br label %50

50:                                               ; preds = %47, %43, %40
  %51 = load ptr, ptr %10, align 8, !tbaa !127
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 122
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !114
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.elt_loc_list, ptr %7, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !166
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @find_reg_note(ptr noundef nonnull %63, i32 noundef 4, ptr noundef null) #25
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !114
  %71 = load ptr, ptr %10, align 8, !tbaa !127
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !114
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %68, %65, %61, %55, %50
  %76 = add nsw i32 %2, -1
  %77 = load ptr, ptr %10, align 8, !tbaa !127
  %78 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %77, ptr noundef %1, i32 noundef %76)
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr %6, ptr %78
  br label %81

81:                                               ; preds = %75, %68
  %82 = phi i1 [ false, %68 ], [ %79, %75 ]
  %83 = phi ptr [ %73, %68 ], [ %80, %75 ]
  br i1 %82, label %84, label %123

84:                                               ; preds = %27, %31, %23, %81
  %85 = phi i32 [ %9, %81 ], [ %26, %23 ], [ %9, %31 ], [ %9, %27 ]
  %86 = phi ptr [ %8, %81 ], [ %24, %23 ], [ %8, %31 ], [ %8, %27 ]
  %87 = phi ptr [ %83, %81 ], [ %6, %23 ], [ %6, %31 ], [ %6, %27 ]
  %88 = load ptr, ptr %7, align 8, !tbaa !132
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %5, !prof !458, !llvm.loop !459

90:                                               ; preds = %84, %3
  %91 = phi i32 [ -1, %3 ], [ %85, %84 ]
  %92 = phi ptr [ null, %3 ], [ %86, %84 ]
  %93 = phi ptr [ undef, %3 ], [ %87, %84 ]
  %94 = icmp eq i32 %91, -1
  br i1 %94, label %109, label %95, !prof !320

95:                                               ; preds = %90
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98, !prof !460

98:                                               ; preds = %95
  %99 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %96, ptr noundef nonnull @.str.15, i32 noundef %91)
  br label %104

104:                                              ; preds = %102, %98, %95
  %105 = add nsw i32 %2, -1
  %106 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %92, ptr noundef %1, i32 noundef %105)
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, ptr %93, ptr %106, !prof !461
  br i1 %107, label %109, label %123, !prof !461

109:                                              ; preds = %104, %90
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %111 = icmp eq ptr %110, null
  br i1 %111, label %123, label %112, !prof !462

112:                                              ; preds = %109
  %113 = load i32, ptr @dump_flags, align 4, !tbaa !118
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %112
  %117 = icmp eq ptr %92, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %116
  tail call void @print_inline_rtx(ptr noundef nonnull %110, ptr noundef nonnull %92, i32 noundef 0) #25
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !103
  %120 = tail call i32 @fputc(i32 10, ptr %119)
  br label %123

121:                                              ; preds = %116
  %122 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr nonnull %110)
  br label %123

123:                                              ; preds = %81, %109, %112, %121, %118, %104
  %124 = phi ptr [ %108, %104 ], [ %92, %118 ], [ %92, %121 ], [ %92, %112 ], [ %92, %109 ], [ %83, %81 ]
  ret ptr %124
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_ternary_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cselib_hash_rtx(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !463 !PGOFuncName !464 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = lshr i32 %3, 16
  %6 = and i32 %5, 255
  %7 = add nuw nsw i32 %6, %4
  %8 = trunc i32 %3 to i16
  switch i16 %8, label %106 [
    i16 43, label %9
    i16 37, label %9
    i16 2, label %14
    i16 30, label %23
    i16 32, label %31
    i16 31, label %49
    i16 33, label %56
    i16 44, label %73
    i16 45, label %82
    i16 74, label %182
    i16 75, label %182
    i16 76, label %182
    i16 77, label %182
    i16 79, label %182
    i16 78, label %182
    i16 36, label %182
    i16 46, label %182
    i16 26, label %182
    i16 19, label %182
    i16 17, label %103
  ], !prof !465

9:                                                ; preds = %2, %2
  %10 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %182, label %12, !prof !466

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !271
  br label %182

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !114
  %19 = sub i32 %7, %18
  %20 = add i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 %20
  br label %182

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !114
  %26 = trunc i64 %25 to i32
  %27 = add nuw nsw i32 %7, 3840
  %28 = add i32 %27, %26
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 30, i32 %28, !prof !467
  br label %182

31:                                               ; preds = %2
  %32 = shl nuw nsw i32 %7, 1
  %33 = icmp eq i32 %6, 0
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %33, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @real_hash(ptr noundef nonnull %34) #25
  br label %44

37:                                               ; preds = %31
  %38 = load i64, ptr %34, align 8, !tbaa !114
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load i64, ptr %40, align 8, !tbaa !114
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, %39
  br label %44

44:                                               ; preds = %37, %35
  %45 = phi i32 [ %36, %35 ], [ %43, %37 ]
  %46 = add i32 %45, %32
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 32, i32 %46
  br label %182

49:                                               ; preds = %2
  %50 = shl nuw nsw i32 %7, 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %52 = tail call i32 @fixed_hash(ptr noundef nonnull %51) #25
  %53 = add i32 %52, %50
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 31, i32 %53
  br label %182

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = load i32, ptr %58, align 8, !tbaa !143
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %182

61:                                               ; preds = %56
  %62 = zext nneg i32 %59 to i64
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %71, %63 ]
  %65 = phi i32 [ %7, %61 ], [ %70, %63 ]
  %66 = load ptr, ptr %57, align 8, !tbaa !114
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !103
  %69 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %68, i32 noundef 0)
  %70 = add i32 %69, %65
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, %62
  br i1 %72, label %182, label %63, !llvm.loop !468

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !114
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !114
  %78 = add nuw nsw i32 %7, 5632
  %79 = add i32 %78, %77
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 44, i32 %79, !prof !469
  br label %182

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !114
  %85 = load i8, ptr %84, align 1, !tbaa !114
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %97, label %87, !prof !470

87:                                               ; preds = %82, %87
  %88 = phi i8 [ %95, %87 ], [ %85, %82 ]
  %89 = phi ptr [ %91, %87 ], [ %84, %82 ]
  %90 = phi i32 [ %94, %87 ], [ 0, %82 ]
  %91 = getelementptr inbounds i8, ptr %89, i64 1
  %92 = zext i8 %88 to i32
  %93 = mul i32 %90, 129
  %94 = add i32 %93, %92
  %95 = load i8, ptr %91, align 1, !tbaa !114
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %87, !prof !471, !llvm.loop !472

97:                                               ; preds = %87, %82
  %98 = phi i32 [ 0, %82 ], [ %94, %87 ]
  %99 = add nuw nsw i32 %7, 5760
  %100 = add i32 %99, %98
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 45, i32 %100, !prof !473
  br label %182

103:                                              ; preds = %2
  %104 = and i32 %3, 134217728
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %182

106:                                              ; preds = %2, %103
  %107 = zext nneg i32 %4 to i64
  %108 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !114
  %110 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !103
  %112 = icmp eq i8 %109, 0
  br i1 %112, label %175, label %113, !prof !474

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %115 = zext i8 %109 to i64
  br label %116

116:                                              ; preds = %113, %172
  %117 = phi i64 [ %115, %113 ], [ %119, %172 ]
  %118 = phi i32 [ %7, %113 ], [ %173, %172 ]
  %119 = add nsw i64 %117, -1
  %120 = getelementptr inbounds i8, ptr %111, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !114
  switch i8 %121, label %171 [
    i8 101, label %128
    i8 69, label %122
    i8 115, label %149
    i8 105, label %166
    i8 48, label %172
    i8 116, label %172
  ], !prof !475

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %124 = getelementptr inbounds [1 x %union.rtunion_def], ptr %123, i64 0, i64 %119
  %125 = load ptr, ptr %124, align 8, !tbaa !114
  %126 = load i32, ptr %125, align 8, !tbaa !143
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %134, label %172

128:                                              ; preds = %116
  %129 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %130 = load ptr, ptr %129, align 8, !tbaa !114
  %131 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %130, i32 noundef %1)
  %132 = icmp eq i32 %131, 0
  %133 = add i32 %131, %118
  br i1 %132, label %182, label %172, !prof !476

134:                                              ; preds = %122, %142
  %135 = phi i64 [ %144, %142 ], [ 0, %122 ]
  %136 = phi ptr [ %145, %142 ], [ %125, %122 ]
  %137 = phi i32 [ %143, %142 ], [ %118, %122 ]
  %138 = getelementptr inbounds %struct.rtvec_def, ptr %136, i64 0, i32 1, i64 %135
  %139 = load ptr, ptr %138, align 8, !tbaa !103
  %140 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %139, i32 noundef %1)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %182, label %142

142:                                              ; preds = %134
  %143 = add i32 %140, %137
  %144 = add nuw nsw i64 %135, 1
  %145 = load ptr, ptr %124, align 8, !tbaa !114
  %146 = load i32, ptr %145, align 8, !tbaa !143
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %134, label %172, !llvm.loop !477

149:                                              ; preds = %116
  %150 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %151 = getelementptr inbounds [1 x %union.rtunion_def], ptr %150, i64 0, i64 %119
  %152 = load ptr, ptr %151, align 8, !tbaa !114
  %153 = icmp eq ptr %152, null
  br i1 %153, label %172, label %154

154:                                              ; preds = %149
  %155 = load i8, ptr %152, align 1, !tbaa !114
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %154, %157
  %158 = phi i8 [ %164, %157 ], [ %155, %154 ]
  %159 = phi ptr [ %161, %157 ], [ %152, %154 ]
  %160 = phi i32 [ %163, %157 ], [ %118, %154 ]
  %161 = getelementptr inbounds i8, ptr %159, i64 1
  %162 = zext i8 %158 to i32
  %163 = add i32 %160, %162
  %164 = load i8, ptr %161, align 1, !tbaa !114
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %172, label %157, !llvm.loop !478

166:                                              ; preds = %116
  %167 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %168 = getelementptr inbounds [1 x %union.rtunion_def], ptr %167, i64 0, i64 %119
  %169 = load i32, ptr %168, align 8, !tbaa !114
  %170 = add i32 %169, %118
  br label %172

171:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.1) #25
  br label %172

172:                                              ; preds = %157, %142, %154, %122, %149, %116, %166, %171, %128, %116
  %173 = phi i32 [ %118, %171 ], [ %118, %116 ], [ %170, %166 ], [ %133, %128 ], [ %118, %116 ], [ %118, %149 ], [ %118, %122 ], [ %118, %154 ], [ %143, %142 ], [ %163, %157 ]
  %174 = icmp sgt i64 %117, 1
  br i1 %174, label %116, label %175, !prof !479, !llvm.loop !480

175:                                              ; preds = %172, %106
  %176 = phi i32 [ %7, %106 ], [ %173, %172 ]
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182, !prof !481

178:                                              ; preds = %175
  %179 = load i32, ptr %0, align 8
  %180 = and i32 %179, 65535
  %181 = add nuw nsw i32 %180, 1
  br label %182

182:                                              ; preds = %63, %128, %134, %56, %103, %9, %2, %2, %2, %2, %2, %2, %2, %2, %2, %178, %175, %2, %97, %73, %49, %44, %23, %14, %12
  %183 = phi i32 [ %102, %97 ], [ %81, %73 ], [ %55, %49 ], [ %48, %44 ], [ %30, %23 ], [ %22, %14 ], [ %13, %12 ], [ 0, %2 ], [ %181, %178 ], [ %176, %175 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %9 ], [ 0, %103 ], [ %7, %56 ], [ 0, %134 ], [ 0, %128 ], [ %70, %63 ]
  ret i32 %183
}

declare i32 @real_hash(ptr noundef) local_unnamed_addr #3

declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #3

declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @cselib_rtx_varies_p(ptr nocapture readnone %0, i8 zeroext %1) #21 !prof !102 {
  ret i8 0
}

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @cselib_invalidate_rtx_note_stores(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 !prof !482 !PGOFuncName !483 {
  tail call void @cselib_invalidate_rtx(ptr noundef %0)
  ret void
}

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!101}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!35 = !{ptr @cselib_clear_table, ptr @htab_empty, i64 325394}
!36 = !{ptr @references_value_p, ptr @references_value_p, i64 3760}
!37 = !{ptr @remove_useless_values, ptr @htab_traverse, i64 276}
!38 = !{ptr @rtx_equal_for_cselib_p, ptr @cselib_lookup, i64 893132}
!39 = !{ptr @rtx_equal_for_cselib_p, ptr @rtx_equal_for_cselib_p, i64 343155}
!40 = !{ptr @rtx_equal_for_cselib_p, ptr @strcmp, i64 7148}
!41 = !{ptr @cselib_lookup, ptr @pool_alloc, i64 6691066}
!42 = !{ptr @cselib_lookup, ptr @htab_find_slot_with_hash, i64 3150570}
!43 = !{ptr @cselib_lookup, ptr @cselib_lookup, i64 858315}
!44 = !{ptr @cselib_lookup, ptr @replace_equiv_address_nv, i64 145109}
!45 = !{ptr @cselib_lookup, ptr @gen_rtx_fmt_e_stat, i64 817334}
!46 = !{ptr @cselib_lookup, ptr @cselib_hash_rtx, i64 3635909}
!47 = !{ptr @cselib_lookup, ptr @cselib_subst_to_values, i64 1707019}
!48 = !{ptr @cselib_expand_value_rtx, ptr @cselib_expand_value_rtx_1, i64 233081}
!49 = !{ptr @cselib_expand_value_rtx_1, ptr @bitmap_set_bit, i64 891}
!50 = !{ptr @cselib_expand_value_rtx_1, ptr @expand_loc, i64 891}
!51 = !{ptr @cselib_expand_value_rtx_1, ptr @bitmap_clear_bit, i64 891}
!52 = !{ptr @cselib_expand_value_rtx_1, ptr @shallow_copy_rtx_stat, i64 25975}
!53 = !{ptr @cselib_expand_value_rtx_1, ptr @cselib_expand_value_rtx_1, i64 51862}
!54 = !{ptr @cselib_expand_value_rtx_1, ptr @simplify_rtx, i64 25975}
!55 = !{ptr @cselib_subst_to_values, ptr @cselib_lookup, i64 63684}
!56 = !{ptr @cselib_subst_to_values, ptr @cselib_subst_to_values, i64 2269075}
!57 = !{ptr @cselib_subst_to_values, ptr @shallow_copy_rtx_stat, i64 1051686}
!58 = !{ptr @new_cselib_val, ptr @pool_alloc, i64 21534}
!59 = !{ptr @cselib_invalidate_rtx, ptr @pool_free, i64 437985}
!60 = !{ptr @cselib_invalidate_rtx, ptr @get_addr, i64 404780}
!61 = !{ptr @cselib_invalidate_rtx, ptr @canon_rtx, i64 809560}
!62 = !{ptr @cselib_invalidate_rtx, ptr @canon_true_dependence, i64 233989}
!63 = !{ptr @cselib_invalidate_rtx, ptr @cselib_lookup, i64 149904}
!64 = !{ptr @cselib_invalidate_rtx, ptr @push_operand, i64 3519175}
!65 = !{ptr @cselib_process_insn, ptr @find_reg_note, i64 340163}
!66 = !{ptr @cselib_process_insn, ptr @htab_empty, i64 219111}
!67 = !{ptr @cselib_process_insn, ptr @pool_free, i64 1301369}
!68 = !{ptr @cselib_process_insn, ptr @get_addr, i64 340163}
!69 = !{ptr @cselib_process_insn, ptr @canon_rtx, i64 680326}
!70 = !{ptr @cselib_process_insn, ptr @canon_true_dependence, i64 196636}
!71 = !{ptr @cselib_process_insn, ptr @cselib_lookup, i64 2550832}
!72 = !{ptr @cselib_process_insn, ptr @find_reg_equal_equiv_note, i64 94}
!73 = !{ptr @cselib_process_insn, ptr @note_stores, i64 3433874}
!74 = !{ptr @cselib_process_insn, ptr @asm_noperands, i64 607}
!75 = !{ptr @cselib_process_insn, ptr @side_effects_p, i64 1568051}
!76 = !{ptr @cselib_process_insn, ptr @pool_alloc, i64 2741564}
!77 = !{ptr @cselib_process_insn, ptr @replace_equiv_address_nv, i64 164165}
!78 = !{ptr @cselib_process_insn, ptr @remove_useless_values, i64 92}
!79 = !{ptr @cselib_init, ptr @create_alloc_pool, i64 594284}
!80 = !{ptr @cselib_init, ptr @gen_rtx_fmt_0_stat, i64 1}
!81 = !{ptr @cselib_init, ptr @gen_rtx_MEM, i64 1}
!82 = !{ptr @cselib_init, ptr @max_reg_num, i64 148571}
!83 = !{ptr @cselib_init, ptr @free, i64 14}
!84 = !{ptr @cselib_init, ptr @xcalloc, i64 16}
!85 = !{ptr @cselib_init, ptr @xmalloc, i64 148571}
!86 = !{ptr @cselib_init, ptr @htab_create, i64 148571}
!87 = !{ptr @entry_and_rtx_equal_p, ptr @rtx_equal_for_cselib_p, i64 358364}
!88 = !{ptr @cselib_finish, ptr @free_alloc_pool, i64 594284}
!89 = !{ptr @cselib_finish, ptr @htab_empty, i64 148571}
!90 = !{ptr @cselib_finish, ptr @htab_delete, i64 148571}
!91 = !{ptr @cselib_finish, ptr @free, i64 148571}
!92 = !{ptr @discard_useless_locs, ptr @references_value_p, i64 2520}
!93 = !{ptr @discard_useless_locs, ptr @pool_free, i64 1616}
!94 = !{ptr @discard_useless_values, ptr @htab_clear_slot, i64 4740}
!95 = !{ptr @discard_useless_values, ptr @pool_free, i64 4740}
!96 = !{ptr @expand_loc, ptr @bitmap_bit_p, i64 707}
!97 = !{ptr @expand_loc, ptr @cselib_expand_value_rtx_1, i64 40}
!98 = !{ptr @cselib_hash_rtx, ptr @cselib_lookup, i64 1677401}
!99 = !{ptr @cselib_hash_rtx, ptr @cselib_hash_rtx, i64 4142130}
!100 = !{ptr @cselib_invalidate_rtx_note_stores, ptr @cselib_invalidate_rtx, i64 3518999}
!101 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!102 = !{!"function_entry_count", i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"any pointer", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !104, i64 8}
!108 = !{!"_IO_FILE", !109, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !104, i64 104, !109, i64 112, !109, i64 116, !110, i64 120, !111, i64 128, !105, i64 130, !105, i64 131, !104, i64 136, !110, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !110, i64 184, !109, i64 192, !105, i64 196}
!109 = !{!"int", !105, i64 0}
!110 = !{!"long", !105, i64 0}
!111 = !{!"short", !105, i64 0}
!112 = !{!108, !104, i64 16}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!105, !105, i64 0}
!115 = !{!108, !104, i64 40}
!116 = !{!108, !104, i64 48}
!117 = !{!108, !109, i64 0}
!118 = !{!109, !109, i64 0}
!119 = distinct !{!119, !120, !121}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = !{!"function_entry_count", i64 325394}
!123 = !{!"branch_weights", i32 693076, i32 0}
!124 = !{!"branch_weights", i32 1, i32 693075}
!125 = !{!126, !104, i64 16}
!126 = !{!"cselib_val_struct", !109, i64 0, !109, i64 4, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32}
!127 = !{!128, !104, i64 8}
!128 = !{!"elt_loc_list", !104, i64 0, !104, i64 8, !104, i64 16}
!129 = distinct !{!129, !120, !121}
!130 = !{!"branch_weights", i32 693075, i32 1009872}
!131 = distinct !{!131, !120, !121}
!132 = !{!128, !104, i64 0}
!133 = !{i32 0, i32 2}
!134 = !{!126, !104, i64 8}
!135 = !{!"function_entry_count", i64 7510}
!136 = !{!"branch_weights", i32 1616, i32 5894}
!137 = !{!"branch_weights", i32 0, i32 1616}
!138 = !{!"branch_weights", i32 1616, i32 0}
!139 = !{!"branch_weights", i32 1, i32 4277}
!140 = !{!"branch_weights", i32 36645068, i32 22454968, i32 0}
!141 = !{!"branch_weights", i32 1628, i32 1616}
!142 = !{!"branch_weights", i32 0, i32 6922}
!143 = !{!144, !109, i64 0}
!144 = !{!"rtvec_def", !109, i64 0, !105, i64 8}
!145 = distinct !{!145, !120, !121}
!146 = !{!"branch_weights", i32 4261, i32 4277}
!147 = distinct !{!147, !120, !121}
!148 = distinct !{!148, !120, !121}
!149 = !{!"cselib.c;cselib_invalidate_regno"}
!150 = !{!"branch_weights", i32 18862596, i32 0}
!151 = !{!111, !111, i64 0}
!152 = !{!"branch_weights", i32 18380387, i32 482209}
!153 = !{!"branch_weights", i32 0, i32 18380387}
!154 = !{!"branch_weights", i32 18862595, i32 1}
!155 = !{!"branch_weights", i32 31145119, i32 1956448}
!156 = !{!157, !104, i64 8}
!157 = !{!"elt_list", !104, i64 0, !104, i64 8}
!158 = !{!"branch_weights", i32 1952308, i32 4140}
!159 = !{!"branch_weights", i32 854029, i32 1102419}
!160 = !{!"branch_weights", i32 524967, i32 1431481}
!161 = !{!"branch_weights", i32 1119292, i32 837156}
!162 = distinct !{!162, !120, !121}
!163 = !{!"branch_weights", i32 486717, i32 350439}
!164 = !{!157, !104, i64 0}
!165 = !{!"branch_weights", i32 0, i32 837156}
!166 = !{!128, !104, i64 16}
!167 = !{!"branch_weights", i32 840822, i32 28980}
!168 = !{!"branch_weights", i32 837156, i32 3666}
!169 = distinct !{!169, !121}
!170 = !{!"branch_weights", i32 346618, i32 490538}
!171 = !{!"branch_weights", i32 346618, i32 0}
!172 = !{!"branch_weights", i32 137946, i32 208672}
!173 = !{!"branch_weights", i32 0, i32 208672}
!174 = !{!"branch_weights", i32 1956448, i32 0}
!175 = !{!"branch_weights", i32 18862595, i32 14238972}
!176 = distinct !{!176, !120, !121}
!177 = !{!"cselib.c;cselib_invalidate_mem"}
!178 = !{!"branch_weights", i32 342509, i32 402424}
!179 = !{!"branch_weights", i32 0, i32 402424}
!180 = !{!"branch_weights", i32 1, i32 402423}
!181 = !{!"branch_weights", i32 430620, i32 201389}
!182 = distinct !{!182, !120, !121}
!183 = !{!184, !109, i64 8}
!184 = !{!"param_info", !104, i64 0, !109, i64 8, !105, i64 12, !109, i64 16, !109, i64 20, !104, i64 24}
!185 = !{!"branch_weights", i32 430620, i32 0}
!186 = !{!"branch_weights", i32 154745, i32 275875}
!187 = !{!"branch_weights", i32 275875, i32 0}
!188 = distinct !{!188, !121}
!189 = !{!"branch_weights", i32 402423, i32 229586}
!190 = !{!"branch_weights", i32 112380, i32 290044}
!191 = !{!"branch_weights", i32 112380, i32 0}
!192 = !{!"branch_weights", i32 0, i32 112380}
!193 = !{!126, !104, i64 32}
!194 = !{!"branch_weights", i32 247823, i32 154601}
!195 = !{!"branch_weights", i32 402424, i32 0}
!196 = distinct !{!196, !120, !121}
!197 = !{!"function_entry_count", i64 92}
!198 = !{!"cselib.c;remove_useless_values"}
!199 = !{!"branch_weights", i32 92, i32 92}
!200 = distinct !{!200, !120, !121}
!201 = !{!"branch_weights", i32 1, i32 0}
!202 = distinct !{!202, !120, !121}
!203 = !{!"branch_weights", i32 92, i32 0}
!204 = !{!"function_entry_count", i64 1111006}
!205 = !{!"branch_weights", i32 623278, i32 487728}
!206 = !{!"branch_weights", i32 286984, i32 336294}
!207 = !{!"branch_weights", i32 184039, i32 152255}
!208 = !{!"function_entry_count", i64 1898945}
!209 = !{!"branch_weights", i32 1256027, i32 463445, i32 179473}
!210 = !{!"branch_weights", i32 330118, i32 312800}
!211 = !{!"branch_weights", i32 1648731, i32 180726, i32 69488}
!212 = !{!"branch_weights", i32 122702, i32 127512}
!213 = !{!"branch_weights", i32 240859, i32 1658086}
!214 = !{!"branch_weights", i32 335018, i32 1323068}
!215 = !{!"branch_weights", i32 11765, i32 323253}
!216 = !{!"branch_weights", i32 323253, i32 1323068}
!217 = !{!"branch_weights", i32 1, i32 309140}
!218 = !{!"branch_weights", i32 248620, i32 316595, i32 79477}
!219 = !{!"branch_weights", i32 14112, i32 234508, i32 396072}
!220 = !{!"branch_weights", i32 309140, i32 335552}
!221 = distinct !{!221, !120, !121}
!222 = !{!"branch_weights", i32 109731, i32 1213337}
!223 = !{!"branch_weights", i32 1, i32 109730}
!224 = !{!"branch_weights", i32 1230, i32 103894, i32 34211}
!225 = !{!"branch_weights", i32 0, i32 1230, i32 138105}
!226 = !{!"branch_weights", i32 109730, i32 29605}
!227 = distinct !{!227, !120, !121}
!228 = !{!"branch_weights", i32 415172, i32 798165}
!229 = !{!"branch_weights", i32 415172, i32 0}
!230 = !{!"branch_weights", i32 415172, i32 0, i32 0, i32 0, i32 0}
!231 = !{!"branch_weights", i32 453752, i32 5687}
!232 = !{!"branch_weights", i32 0, i32 199788, i32 0, i32 90, i32 0, i32 0, i32 235949, i32 0, i32 5975, i32 0, i32 11950, i32 0}
!233 = !{!"branch_weights", i32 0, i32 199788}
!234 = !{!"branch_weights", i32 90, i32 0}
!235 = distinct !{!235, !120, !121}
!236 = !{!"branch_weights", i32 209016, i32 26933}
!237 = !{!238, !104, i64 1024}
!238 = !{!"gcc_target", !239, i64 0, !241, i64 368, !242, i64 664, !109, i64 744, !104, i64 752, !104, i64 760, !104, i64 768, !104, i64 776, !104, i64 784, !104, i64 792, !104, i64 800, !104, i64 808, !104, i64 816, !104, i64 824, !104, i64 832, !104, i64 840, !104, i64 848, !104, i64 856, !104, i64 864, !104, i64 872, !104, i64 880, !104, i64 888, !104, i64 896, !104, i64 904, !104, i64 912, !104, i64 920, !104, i64 928, !104, i64 936, !104, i64 944, !104, i64 952, !104, i64 960, !104, i64 968, !104, i64 976, !104, i64 984, !104, i64 992, !104, i64 1000, !104, i64 1008, !104, i64 1016, !104, i64 1024, !104, i64 1032, !104, i64 1040, !104, i64 1048, !104, i64 1056, !110, i64 1064, !110, i64 1072, !104, i64 1080, !104, i64 1088, !104, i64 1096, !104, i64 1104, !104, i64 1112, !104, i64 1120, !104, i64 1128, !104, i64 1136, !104, i64 1144, !104, i64 1152, !104, i64 1160, !104, i64 1168, !243, i64 1176, !104, i64 1232, !104, i64 1240, !104, i64 1248, !104, i64 1256, !104, i64 1264, !104, i64 1272, !104, i64 1280, !104, i64 1288, !104, i64 1296, !104, i64 1304, !104, i64 1312, !104, i64 1320, !104, i64 1328, !104, i64 1336, !104, i64 1344, !104, i64 1352, !104, i64 1360, !104, i64 1368, !104, i64 1376, !104, i64 1384, !104, i64 1392, !104, i64 1400, !104, i64 1408, !104, i64 1416, !104, i64 1424, !104, i64 1432, !104, i64 1440, !104, i64 1448, !104, i64 1456, !110, i64 1464, !244, i64 1472, !104, i64 1664, !104, i64 1672, !104, i64 1680, !104, i64 1688, !104, i64 1696, !104, i64 1704, !104, i64 1712, !104, i64 1720, !104, i64 1728, !104, i64 1736, !104, i64 1744, !104, i64 1752, !104, i64 1760, !104, i64 1768, !104, i64 1776, !245, i64 1784, !246, i64 1792, !247, i64 1896, !248, i64 1968, !104, i64 2016, !105, i64 2024, !105, i64 2025, !105, i64 2026, !105, i64 2027, !105, i64 2028, !105, i64 2029, !105, i64 2030, !105, i64 2031, !105, i64 2032, !105, i64 2033, !105, i64 2034, !105, i64 2035}
!239 = !{!"asm_out", !104, i64 0, !104, i64 8, !104, i64 16, !240, i64 24, !240, i64 56, !104, i64 88, !104, i64 96, !104, i64 104, !104, i64 112, !104, i64 120, !104, i64 128, !104, i64 136, !104, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !104, i64 184, !104, i64 192, !104, i64 200, !104, i64 208, !104, i64 216, !104, i64 224, !104, i64 232, !104, i64 240, !104, i64 248, !104, i64 256, !104, i64 264, !104, i64 272, !104, i64 280, !104, i64 288, !104, i64 296, !104, i64 304, !104, i64 312, !104, i64 320, !104, i64 328, !104, i64 336, !104, i64 344, !104, i64 352, !104, i64 360}
!240 = !{!"asm_int_op", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24}
!241 = !{!"sched", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !104, i64 104, !104, i64 112, !104, i64 120, !104, i64 128, !104, i64 136, !104, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !104, i64 184, !104, i64 192, !104, i64 200, !104, i64 208, !104, i64 216, !104, i64 224, !104, i64 232, !104, i64 240, !104, i64 248, !104, i64 256, !104, i64 264, !104, i64 272, !104, i64 280, !104, i64 288}
!242 = !{!"vectorize", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72}
!243 = !{!"addr_space", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48}
!244 = !{!"calls", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !104, i64 104, !104, i64 112, !104, i64 120, !104, i64 128, !104, i64 136, !104, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !104, i64 184}
!245 = !{!"c", !104, i64 0}
!246 = !{!"cxx", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96}
!247 = !{!"emutls", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !105, i64 64, !105, i64 65}
!248 = !{!"target_option_hooks", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40}
!249 = !{!"VP", i32 0, i64 209016, i64 -4444659809727022860, i64 209016}
!250 = !{!"branch_weights", i32 201037, i32 7979}
!251 = !{!"branch_weights", i32 7979, i32 0}
!252 = !{!"branch_weights", i32 203722, i32 32227}
!253 = !{!"branch_weights", i32 0, i32 5975}
!254 = !{!"branch_weights", i32 44267, i32 409485}
!255 = distinct !{!255, !120, !121}
!256 = !{!"function_entry_count", i64 8712368}
!257 = !{!"branch_weights", i32 1147244, i32 7565124}
!258 = !{!"branch_weights", i32 3635909, i32 291169, i32 3538773, i32 1246517}
!259 = !{!"branch_weights", i32 1393270, i32 2145503}
!260 = !{!"branch_weights", i32 1005210, i32 1140293}
!261 = !{!"branch_weights", i32 222878, i32 1668264}
!262 = !{!"branch_weights", i32 1647631, i32 20633}
!263 = !{!"branch_weights", i32 191081, i32 1456550}
!264 = !{!"branch_weights", i32 0, i32 1456550}
!265 = !{!"branch_weights", i32 1668264, i32 0}
!266 = distinct !{!266, !120, !121}
!267 = !{!"branch_weights", i32 1037793, i32 853349}
!268 = !{!"branch_weights", i32 714191, i32 139158}
!269 = !{!"branch_weights", i32 252596, i32 461595}
!270 = !{!"branch_weights", i32 0, i32 2716244}
!271 = !{!126, !109, i64 0}
!272 = !{!126, !109, i64 4}
!273 = !{!"branch_weights", i32 2716244, i32 0}
!274 = !{!"branch_weights", i32 853349, i32 0}
!275 = !{!"branch_weights", i32 714798, i32 138551}
!276 = !{!"branch_weights", i32 0, i32 714798}
!277 = !{!"branch_weights", i32 693599, i32 159750}
!278 = !{!"branch_weights", i32 1339005, i32 0}
!279 = !{!"branch_weights", i32 921999, i32 417006}
!280 = !{!"branch_weights", i32 921999, i32 0, i32 0, i32 0}
!281 = !{!"branch_weights", i32 0, i32 921999}
!282 = !{!"branch_weights", i32 551354, i32 370645}
!283 = !{!"branch_weights", i32 254968, i32 115677}
!284 = !{!"branch_weights", i32 115677, i32 0}
!285 = distinct !{!285, !120, !121}
!286 = !{!"branch_weights", i32 0, i32 115677}
!287 = !{!"branch_weights", i32 99092, i32 155876}
!288 = !{!"branch_weights", i32 127082, i32 192959}
!289 = !{!"branch_weights", i32 28052, i32 164907}
!290 = !{!"branch_weights", i32 0, i32 28052}
!291 = !{!"branch_weights", i32 192959, i32 0}
!292 = distinct !{!292, !120, !121}
!293 = !{!126, !104, i64 24}
!294 = !{!"branch_weights", i32 155876, i32 164165}
!295 = !{!"branch_weights", i32 0, i32 164165}
!296 = !{!"branch_weights", i32 0, i32 155876}
!297 = !{!"branch_weights", i32 291989, i32 28052}
!298 = !{!"branch_weights", i32 2135402, i32 820322, i32 0, i32 0}
!299 = !{!"branch_weights", i32 0, i32 820322}
!300 = !{!"branch_weights", i32 836061, i32 2799848}
!301 = !{!"branch_weights", i32 878657, i32 1921191}
!302 = !{!"branch_weights", i32 1707019, i32 214172}
!303 = !{!"branch_weights", i32 1707019, i32 0}
!304 = !{!"branch_weights", i32 1388152, i32 318867}
!305 = !{!"branch_weights", i32 0, i32 1388152}
!306 = !{!"branch_weights", i32 8712368, i32 0}
!307 = !{!"function_entry_count", i64 233081}
!308 = !{!309, !104, i64 0}
!309 = !{!"expand_value_data", !104, i64 0, !104, i64 8, !104, i64 16, !105, i64 24}
!310 = !{!"function_entry_count", i64 284983}
!311 = !{!"cselib.c;cselib_expand_value_rtx_1"}
!312 = !{!"branch_weights", i32 0, i32 284983}
!313 = !{!"branch_weights", i32 25975, i32 233133, i32 25875, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!314 = !{!"branch_weights", i32 69013, i32 164120}
!315 = !{!"branch_weights", i32 163935, i32 185}
!316 = !{!"branch_weights", i32 1, i32 69035}
!317 = distinct !{!317, !120, !121}
!318 = !{!"branch_weights", i32 627, i32 0, i32 163470, i32 0}
!319 = !{!"branch_weights", i32 627, i32 0}
!320 = !{!"branch_weights", i32 587, i32 40}
!321 = !{!"branch_weights", i32 69035, i32 95062}
!322 = !{!"branch_weights", i32 69036, i32 164097}
!323 = !{!309, !104, i64 8}
!324 = !{!309, !104, i64 16}
!325 = !{!309, !105, i64 24}
!326 = !{!"branch_weights", i32 25975, i32 0}
!327 = !{!"branch_weights", i32 1, i32 25974}
!328 = !{!"branch_weights", i32 0, i32 51862, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!329 = !{!"branch_weights", i32 0, i32 51862}
!330 = distinct !{!330, !120, !121}
!331 = !{!"branch_weights", i32 25974, i32 25888}
!332 = distinct !{!332, !120, !121}
!333 = !{!"branch_weights", i32 25975, i32 0, i32 0, i32 0, i32 0, i32 0}
!334 = !{!"branch_weights", i32 25951, i32 24}
!335 = !{!"function_entry_count", i64 3976094}
!336 = !{!"branch_weights", i32 1603608, i32 958346, i32 92488, i32 0, i32 0, i32 1321652, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!337 = !{!"branch_weights", i32 0, i32 958346}
!338 = !{!"branch_weights", i32 465645, i32 492701}
!339 = !{!"branch_weights", i32 0, i32 1}
!340 = !{!"branch_weights", i32 958346, i32 2179}
!341 = !{!"branch_weights", i32 0, i32 960525}
!342 = distinct !{!342, !120, !121}
!343 = !{!"branch_weights", i32 0, i32 92488}
!344 = !{!"branch_weights", i32 1, i32 1603607}
!345 = !{!"branch_weights", i32 1340028, i32 2269075, i32 0}
!346 = !{!"branch_weights", i32 1164585, i32 1104490}
!347 = !{!"branch_weights", i32 1051686, i32 52804}
!348 = distinct !{!348, !120, !121}
!349 = !{!"branch_weights", i32 2005496, i32 1603607}
!350 = distinct !{!350, !120, !121}
!351 = !{!"function_entry_count", i64 10767}
!352 = !{!"cselib.c;new_cselib_val"}
!353 = !{!"function_entry_count", i64 3519087}
!354 = !{!"branch_weights", i32 919708, i32 0, i32 0, i32 0, i32 2194609, i32 404770}
!355 = distinct !{!355, !120, !121}
!356 = !{!"branch_weights", i32 3518999, i32 88}
!357 = !{!"function_entry_count", i64 4594108}
!358 = !{!"branch_weights", i32 4034834, i32 219111, i32 340163}
!359 = !{!"branch_weights", i32 340163, i32 0}
!360 = !{!"branch_weights", i32 2173919, i32 2201078}
!361 = !{!"branch_weights", i32 0, i32 2173919}
!362 = !{!"branch_weights", i32 3433874, i32 941123}
!363 = !{!"branch_weights", i32 340163, i32 3093711}
!364 = !{!"branch_weights", i32 1360652, i32 16667987}
!365 = !{!"branch_weights", i32 340163, i32 17688476}
!366 = distinct !{!366, !120, !121}
!367 = !{!"branch_weights", i32 -679002716, i32 0}
!368 = !{!"branch_weights", i32 0, i32 3433874}
!369 = !{!"branch_weights", i32 13570, i32 3321564, i32 98740}
!370 = !{!371, !104, i64 0}
!371 = !{!"cselib_set", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24}
!372 = !{!371, !104, i64 8}
!373 = !{!"branch_weights", i32 98739, i32 1}
!374 = !{!"branch_weights", i32 99347, i32 98228}
!375 = !{!"branch_weights", i32 98836, i32 98739}
!376 = distinct !{!376, !120, !121}
!377 = !{!"branch_weights", i32 3419697, i32 14177}
!378 = !{!"branch_weights", i32 3419557, i32 140}
!379 = !{!"branch_weights", i32 3419603, i32 94}
!380 = !{!"branch_weights", i32 94, i32 0}
!381 = !{!"branch_weights", i32 3420911, i32 12963}
!382 = !{!"branch_weights", i32 25905, i32 3395006}
!383 = !{!"branch_weights", i32 2096528, i32 1324383}
!384 = !{!"branch_weights", i32 404675, i32 919708}
!385 = !{!"branch_weights", i32 164165, i32 1160218}
!386 = !{!"branch_weights", i32 2260693, i32 0}
!387 = !{!371, !104, i64 16}
!388 = !{!"branch_weights", i32 164165, i32 2096528}
!389 = !{!238, !104, i64 1184}
!390 = !{!391, !105, i64 32}
!391 = !{!"mem_attrs", !104, i64 0, !104, i64 8, !104, i64 16, !109, i64 24, !109, i64 28, !105, i64 32}
!392 = !{!"VP", i32 0, i64 164165, i64 -6774708585206560366, i64 164165}
!393 = !{!371, !104, i64 24}
!394 = !{!"branch_weights", i32 3420911, i32 0}
!395 = distinct !{!395, !120, !121}
!396 = !{!"branch_weights", i32 3433874, i32 0}
!397 = !{!"branch_weights", i32 607, i32 3433267}
!398 = !{!"branch_weights", i32 0, i32 607}
!399 = distinct !{!399, !120, !121}
!400 = distinct !{!400, !120, !121}
!401 = !{!"branch_weights", i32 2096528, i32 164165}
!402 = !{!"branch_weights", i32 692642, i32 1568051}
!403 = !{!"branch_weights", i32 1568051, i32 0}
!404 = !{!"branch_weights", i32 1403886, i32 164165}
!405 = !{!"branch_weights", i32 1032602, i32 371284}
!406 = !{!"branch_weights", i32 206293, i32 826309}
!407 = !{!"branch_weights", i32 1009348, i32 394538}
!408 = !{!"branch_weights", i32 394538, i32 0}
!409 = !{!"branch_weights", i32 0, i32 1403886}
!410 = !{!"branch_weights", i32 164165, i32 0}
!411 = distinct !{!411, !120, !121}
!412 = distinct !{!412, !120, !121}
!413 = !{!"branch_weights", i32 92, i32 3433782}
!414 = !{!415, !110, i64 40}
!415 = !{!"htab", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !109, i64 56, !109, i64 60, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !109, i64 104}
!416 = !{!415, !110, i64 48}
!417 = !{!"function_entry_count", i64 148571}
!418 = !{!"branch_weights", i32 1, i32 148570}
!419 = !{!"branch_weights", i32 9, i32 148561}
!420 = !{!"branch_weights", i32 148561, i32 0}
!421 = !{!"branch_weights", i32 6, i32 148555}
!422 = !{!"branch_weights", i32 1, i32 15}
!423 = !{!"function_entry_count", i64 2036}
!424 = !{!"cselib.c;get_value_hash"}
!425 = !{!"function_entry_count", i64 542216}
!426 = !{!"cselib.c;entry_and_rtx_equal_p"}
!427 = !{!"branch_weights", i32 0, i32 542216}
!428 = !{!"branch_weights", i32 369683, i32 172533}
!429 = !{!"branch_weights", i32 123575, i32 246108}
!430 = !{!"branch_weights", i32 92269, i32 31306}
!431 = !{!"branch_weights", i32 155511, i32 358364}
!432 = !{!"branch_weights", i32 144192, i32 214172}
!433 = distinct !{!433, !120, !121}
!434 = !{!"branch_weights", i32 566, i32 213606}
!435 = !{!"branch_weights", i32 0, i32 213606}
!436 = distinct !{!436, !120, !121}
!437 = distinct !{!437, !120, !121}
!438 = !{!"function_entry_count", i64 10204}
!439 = !{!"cselib.c;discard_useless_locs"}
!440 = !{!"branch_weights", i32 7864, i32 2340}
!441 = !{!"branch_weights", i32 7684, i32 2520}
!442 = !{!"branch_weights", i32 904, i32 1616}
!443 = !{!"branch_weights", i32 2520, i32 0}
!444 = distinct !{!444, !120, !121}
!445 = !{!"branch_weights", i32 1616, i32 724}
!446 = !{!"function_entry_count", i64 5102}
!447 = !{!"cselib.c;discard_useless_values"}
!448 = !{!"branch_weights", i32 4740, i32 362}
!449 = !{!"branch_weights", i32 4740, i32 0}
!450 = distinct !{!450, !120, !121}
!451 = !{!"function_entry_count", i64 627}
!452 = !{!"cselib.c;expand_loc"}
!453 = !{!"branch_weights", i32 1, i32 626}
!454 = !{!"branch_weights", i32 707, i32 0}
!455 = !{!"branch_weights", i32 40, i32 667}
!456 = !{!"branch_weights", i32 0, i32 0, i32 444889}
!457 = !{!"branch_weights", i32 1334, i32 0}
!458 = !{!"branch_weights", i32 626, i32 81}
!459 = distinct !{!459, !120, !121}
!460 = !{!"branch_weights", i32 40, i32 0}
!461 = !{!"branch_weights", i32 0, i32 40}
!462 = !{!"branch_weights", i32 587, i32 0}
!463 = !{!"function_entry_count", i64 7362714}
!464 = !{!"cselib.c;cselib_hash_rtx"}
!465 = !{!"branch_weights", i32 1918027, i32 407907, i32 1269494, i32 0, i32 2561420, i32 0, i32 0, i32 0, i32 46, i32 878722, i32 176, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 326922, i32 0, i32 0}
!466 = !{!"branch_weights", i32 508963, i32 1168438}
!467 = !{!"branch_weights", i32 0, i32 2561420}
!468 = distinct !{!468, !120, !121}
!469 = !{!"branch_weights", i32 0, i32 46}
!470 = !{!"branch_weights", i32 1, i32 878721}
!471 = !{!"branch_weights", i32 878721, i32 11380747}
!472 = distinct !{!472, !120, !121}
!473 = !{!"branch_weights", i32 0, i32 878722}
!474 = !{!"branch_weights", i32 1, i32 1404253}
!475 = !{!"branch_weights", i32 0, i32 3726805, i32 0, i32 0, i32 24630, i32 0, i32 0}
!476 = !{!"branch_weights", i32 513773, i32 3213032}
!477 = distinct !{!477, !120, !121}
!478 = distinct !{!478, !120, !121}
!479 = !{!"branch_weights", i32 2347182, i32 1404253}
!480 = distinct !{!480, !120, !121}
!481 = !{!"branch_weights", i32 0, i32 1404254}
!482 = !{!"function_entry_count", i64 3518999}
!483 = !{!"cselib.c;cselib_invalidate_rtx_note_stores"}
