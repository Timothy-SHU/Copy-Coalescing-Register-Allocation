; ModuleID = 'rtlanal.c'
source_filename = "rtlanal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.object_block = type { ptr, i32, i64, ptr, ptr }
%struct.subreg_info = type { i32, i32, i8 }
%struct.set_of_data = type { ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.replace_label_data = type { ptr, ptr, i8 }
%struct.parms_set_data = type { i32, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [10 x i8] c"rtlanal.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@non_rtx_starting_operands = internal unnamed_addr global [139 x i32] zeroinitializer, align 16
@target_flags = dso_local local_unnamed_addr global i32 0, align 4
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@reload_completed = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@num_sign_bit_copies_in_rep = internal unnamed_addr global [20 x [20 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"eEV\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@switch.table.swap_commutative_operands_p.5 = private unnamed_addr constant [3 x i32] [i32 -8, i32 -7, i32 -7], align 4
@switch.table.swap_commutative_operands_p.6 = private unnamed_addr constant [3 x i32] [i32 -6, i32 -5, i32 -5], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !127 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !128
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !127 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !128
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !127 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !138

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #28
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !132
  %11 = load i8, ptr %3, align 1, !tbaa !139
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !127 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !138

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #28
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !132
  %11 = load i8, ptr %3, align 1, !tbaa !139
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !127 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !128
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !138

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #28
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !132
  %11 = load i8, ptr %3, align 1, !tbaa !139
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !127 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !128
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !127 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !138

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #28
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !140
  store i8 %12, ptr %4, align 1, !tbaa !139
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !127 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !138

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #28
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !140
  store i8 %12, ptr %4, align 1, !tbaa !139
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !127 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !128
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !138

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #28
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !140
  store i8 %12, ptr %4, align 1, !tbaa !139
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !127 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #28
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !127 {
  %2 = load i32, ptr %0, align 8, !tbaa !142
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !127 {
  %2 = load i32, ptr %0, align 8, !tbaa !142
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !127 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #28
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !143
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !127 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #28
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !143
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !127 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !127 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !127 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !127 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #28
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
  br i1 %23, label %7, label %24, !llvm.loop !144

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !127 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rtx_unstable_p(ptr noundef readonly %0) local_unnamed_addr #9 !prof !127 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %31 [
    i16 43, label %5
    i16 35, label %70
    i16 30, label %70
    i16 32, label %70
    i16 31, label %70
    i16 33, label %70
    i16 45, label %70
    i16 44, label %70
    i16 37, label %13
    i16 17, label %28
  ]

5:                                                ; preds = %1
  %6 = and i32 %2, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  %11 = tail call i32 @rtx_unstable_p(ptr noundef %10)
  %12 = icmp ne i32 %11, 0
  br label %70

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !128
  %15 = icmp eq ptr %14, %0
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %17 = icmp eq ptr %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %70, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !128
  %21 = icmp eq ptr %20, %0
  %22 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %70, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !128
  %27 = icmp ne ptr %26, %0
  br label %70

28:                                               ; preds = %1
  %29 = and i32 %2, 134217728
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %1, %28
  %32 = zext nneg i32 %3 to i64
  %33 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  %35 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !139
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %40 = zext i8 %36 to i64
  br label %41

41:                                               ; preds = %38, %68
  %42 = phi i64 [ %40, %38 ], [ %43, %68 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !139
  switch i8 %45, label %68 [
    i8 101, label %53
    i8 69, label %46
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !139
  %49 = load i32, ptr %48, align 8, !tbaa !147
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  br label %62

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %43
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  %57 = tail call i32 @rtx_unstable_p(ptr noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %70

59:                                               ; preds = %62
  %60 = add nuw nsw i64 %63, 1
  %61 = icmp eq i64 %60, %52
  br i1 %61, label %68, label %62, !llvm.loop !149

62:                                               ; preds = %51, %59
  %63 = phi i64 [ 0, %51 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !128
  %66 = tail call i32 @rtx_unstable_p(ptr noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %59, label %70

68:                                               ; preds = %59, %46, %41, %53
  %69 = icmp sgt i64 %42, 1
  br i1 %69, label %41, label %70, !llvm.loop !150

70:                                               ; preds = %53, %68, %62, %31, %28, %1, %1, %1, %1, %1, %1, %25, %13, %19, %1, %5, %8
  %71 = phi i1 [ true, %5 ], [ %12, %8 ], [ false, %1 ], [ false, %19 ], [ false, %13 ], [ %27, %25 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ true, %28 ], [ false, %31 ], [ true, %62 ], [ false, %68 ], [ true, %53 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

; Function Attrs: inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @rtx_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 !prof !151 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %85, label %4, !prof !152

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = trunc i32 %5 to i16
  switch i16 %7, label %46 [
    i16 43, label %8
    i16 35, label %85
    i16 30, label %85
    i16 32, label %85
    i16 31, label %85
    i16 33, label %85
    i16 45, label %85
    i16 44, label %85
    i16 37, label %16
    i16 122, label %31
    i16 17, label %43
  ], !prof !153

8:                                                ; preds = %4
  %9 = and i32 %5, 67108864
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %85, label %11, !prof !154

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1)
  %15 = icmp ne i8 %14, 0
  br label %85

16:                                               ; preds = %4
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !128
  %18 = icmp eq ptr %17, %0
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %20 = icmp eq ptr %19, %0
  %21 = select i1 %18, i1 true, i1 %20, !prof !155
  br i1 %21, label %85, label %22, !prof !155

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !128
  %24 = icmp eq ptr %23, %0
  %25 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %26 = icmp ne i8 %25, 0
  %27 = select i1 %24, i1 %26, i1 false, !prof !155
  br i1 %27, label %85, label %28, !prof !155

28:                                               ; preds = %22
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !128
  %30 = icmp ne ptr %29, %0
  br label %85

31:                                               ; preds = %4
  %32 = icmp eq i8 %1, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  %36 = tail call zeroext i8 @rtx_varies_p(ptr noundef %35, i8 noundef zeroext 0)
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %33, %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !139
  %41 = tail call zeroext i8 @rtx_varies_p(ptr noundef %40, i8 noundef zeroext %1)
  %42 = icmp ne i8 %41, 0
  br label %85

43:                                               ; preds = %4
  %44 = and i32 %5, 134217728
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %4, %43
  %47 = zext nneg i32 %6 to i64
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !128
  %50 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !139
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %85, label %53, !prof !156

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %51 to i64
  br label %56

56:                                               ; preds = %53, %83
  %57 = phi i64 [ %55, %53 ], [ %58, %83 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !139
  switch i8 %60, label %83 [
    i8 101, label %69
    i8 69, label %61
  ], !prof !157

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %62, i64 0, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !139
  %65 = load i32, ptr %64, align 8, !tbaa !147
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = zext nneg i32 %65 to i64
  br label %77

69:                                               ; preds = %56
  %70 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %71 = load ptr, ptr %70, align 8, !tbaa !139
  %72 = tail call zeroext i8 @rtx_varies_p(ptr noundef %71, i8 noundef zeroext %1)
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %83, label %85, !prof !158

74:                                               ; preds = %77
  %75 = add nuw nsw i64 %78, 1
  %76 = icmp eq i64 %75, %68
  br i1 %76, label %83, label %77, !llvm.loop !159

77:                                               ; preds = %67, %74
  %78 = phi i64 [ 0, %67 ], [ %75, %74 ]
  %79 = getelementptr inbounds %struct.rtvec_def, ptr %64, i64 0, i32 1, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !128
  %81 = tail call zeroext i8 @rtx_varies_p(ptr noundef %80, i8 noundef zeroext %1)
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %74, label %85

83:                                               ; preds = %74, %61, %56, %69
  %84 = icmp sgt i64 %57, 1
  br i1 %84, label %56, label %85, !prof !160, !llvm.loop !161

85:                                               ; preds = %69, %83, %77, %46, %43, %4, %4, %4, %4, %4, %4, %33, %38, %28, %16, %22, %4, %8, %11, %2
  %86 = phi i1 [ false, %2 ], [ true, %8 ], [ %15, %11 ], [ false, %4 ], [ false, %22 ], [ false, %16 ], [ %30, %28 ], [ true, %33 ], [ %42, %38 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ true, %43 ], [ false, %46 ], [ true, %77 ], [ false, %83 ], [ true, %69 ]
  %87 = zext i1 %86 to i8
  ret i8 %87
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @rtx_addr_can_trap_p(ptr noundef %0) local_unnamed_addr #11 !prof !162 {
  %2 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #11 !prof !163 !PGOFuncName !164 {
  br label %5

5:                                                ; preds = %126, %123, %93, %4
  %6 = phi ptr [ %0, %4 ], [ %95, %93 ], [ %125, %123 ], [ %128, %126 ]
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %129 [
    i16 45, label %9
    i16 44, label %130
    i16 37, label %72
    i16 35, label %93
    i16 49, label %96
    i16 122, label %123
    i16 78, label %123
    i16 74, label %126
    i16 75, label %126
    i16 76, label %126
    i16 77, label %126
    i16 79, label %126
  ], !prof !165

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %11, label %130, !prof !166

11:                                               ; preds = %9
  %12 = and i32 %7, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %130, !prof !166

14:                                               ; preds = %11
  %15 = icmp slt i64 %1, 0
  br i1 %15, label %69, label %16, !prof !167

16:                                               ; preds = %14
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %18, label %23, !prof !168

18:                                               ; preds = %16
  %19 = zext nneg i32 %3 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !139
  %22 = zext i8 %21 to i64
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i64 [ %22, %18 ], [ %2, %16 ]
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28, !prof !168

26:                                               ; preds = %23
  %27 = icmp ne i64 %1, 0
  br label %69

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !139
  %31 = icmp eq ptr %30, null
  br i1 %31, label %62, label %32, !prof !169

32:                                               ; preds = %28
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !143
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %48, !prof !170

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !139
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42, !prof !171

42:                                               ; preds = %38
  %43 = tail call i32 @host_integerp(ptr noundef nonnull %40, i32 noundef 0) #28
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45, !prof !172

45:                                               ; preds = %42
  %46 = load ptr, ptr %39, align 8, !tbaa !139
  %47 = tail call i64 @tree_low_cst(ptr noundef %46, i32 noundef 0) #28
  br label %62

48:                                               ; preds = %38, %32
  %49 = icmp eq i64 %34, 28
  br i1 %49, label %50, label %54, !prof !173

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.tree_string, ptr %30, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !139
  %53 = sext i32 %52 to i64
  br label %62

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !139
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !173

60:                                               ; preds = %54
  %61 = tail call i64 @int_size_in_bytes(ptr noundef %56) #28
  br label %62

62:                                               ; preds = %54, %45, %42, %28, %60, %50
  %63 = phi i64 [ %53, %50 ], [ %61, %60 ], [ -1, %28 ], [ %47, %45 ], [ -1, %42 ], [ -1, %54 ]
  %64 = icmp slt i64 %63, 1
  %65 = icmp ne i64 %1, 0
  %66 = add nsw i64 %24, %1
  %67 = icmp sgt i64 %66, %63
  %68 = select i1 %64, i1 %65, i1 %67, !prof !169
  br label %69

69:                                               ; preds = %14, %62, %26
  %70 = phi i1 [ %27, %26 ], [ %68, %62 ], [ true, %14 ]
  %71 = zext i1 %70 to i32
  br label %130

72:                                               ; preds = %5
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !128
  %74 = icmp eq ptr %73, %6
  %75 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %76 = icmp eq ptr %75, %6
  %77 = select i1 %74, i1 true, i1 %76, !prof !174
  %78 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %79 = icmp eq ptr %78, %6
  %80 = select i1 %77, i1 true, i1 %79, !prof !175
  br i1 %80, label %130, label %81, !prof !176

81:                                               ; preds = %72
  %82 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !128
  %83 = icmp eq ptr %82, %6
  %84 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %85 = icmp ne i8 %84, 0
  %86 = select i1 %83, i1 %85, i1 false, !prof !177
  br i1 %86, label %130, label %87, !prof !177

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !139
  %90 = add i32 %89, -58
  %91 = icmp ult i32 %90, -5
  %92 = zext i1 %91 to i32
  br label %130

93:                                               ; preds = %5
  %94 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !139
  br label %5

96:                                               ; preds = %5
  %97 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !139
  %99 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !128
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %101, label %110, !prof !178

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !139
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !143
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %130, label %110

110:                                              ; preds = %101, %96
  %111 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !139
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 30
  br i1 %115, label %116, label %122, !prof !179

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !139
  %119 = add nsw i64 %118, %1
  %120 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %98, i64 noundef %119, i64 noundef %2, i32 noundef %3)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122, !prof !180

122:                                              ; preds = %116, %110
  br label %130

123:                                              ; preds = %5, %5
  %124 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !139
  br label %5

126:                                              ; preds = %5, %5, %5, %5, %5
  %127 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !139
  br label %5

129:                                              ; preds = %5
  br label %130

130:                                              ; preds = %116, %87, %101, %72, %81, %5, %11, %9, %129, %122, %69
  %131 = phi i32 [ 1, %129 ], [ 1, %122 ], [ %71, %69 ], [ 1, %9 ], [ 0, %11 ], [ 0, %5 ], [ 0, %81 ], [ 0, %72 ], [ 0, %101 ], [ %92, %87 ], [ 0, %116 ]
  ret i32 %131
}

; Function Attrs: inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nonzero_address_p(ptr noundef readonly %0) local_unnamed_addr #10 !prof !181 {
  br label %2

2:                                                ; preds = %33, %66, %63, %61, %30, %1
  %3 = phi ptr [ %0, %1 ], [ %32, %30 ], [ %62, %61 ], [ %65, %63 ], [ %68, %66 ], [ %40, %33 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %69 [
    i16 45, label %6
    i16 44, label %70
    i16 37, label %9
    i16 35, label %30
    i16 49, label %33
    i16 78, label %50
    i16 75, label %70
    i16 74, label %63
    i16 76, label %63
    i16 77, label %63
    i16 79, label %63
    i16 122, label %66
  ], !prof !182

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, -1
  %8 = zext i1 %7 to i8
  br label %70

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !128
  %11 = icmp eq ptr %10, %3
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %13 = icmp eq ptr %12, %3
  %14 = select i1 %11, i1 true, i1 %13, !prof !183
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %16 = icmp eq ptr %15, %3
  %17 = select i1 %14, i1 true, i1 %16, !prof !183
  br i1 %17, label %70, label %18, !prof !183

18:                                               ; preds = %9
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !128
  %20 = icmp eq ptr %19, %3
  %21 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %22 = icmp ne i8 %21, 0
  %23 = select i1 %20, i1 %22, i1 false, !prof !183
  br i1 %23, label %70, label %24, !prof !183

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !139
  %27 = add i32 %26, -53
  %28 = icmp ult i32 %27, 5
  %29 = zext i1 %28 to i8
  br label %70

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  br label %2

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !139
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 30
  %40 = load ptr, ptr %34, align 8, !tbaa !139
  br i1 %39, label %2, label %41, !prof !184

41:                                               ; preds = %33
  %42 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !128
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = zext nneg i32 %38 to i64
  %46 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !143
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %70, label %49

49:                                               ; preds = %41, %44
  br label %70

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %52 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !139
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 30
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !139
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57, %50
  %62 = load ptr, ptr %51, align 8, !tbaa !139
  br label %2

63:                                               ; preds = %2, %2, %2, %2
  %64 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !139
  br label %2

66:                                               ; preds = %2
  %67 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !139
  br label %2

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %2, %24, %2, %57, %44, %9, %18, %69, %49, %6
  %71 = phi i8 [ 0, %69 ], [ 0, %49 ], [ %8, %6 ], [ 1, %18 ], [ 1, %9 ], [ 1, %44 ], [ 1, %57 ], [ 1, %2 ], [ %29, %24 ], [ 1, %2 ]
  ret i8 %71
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @rtx_addr_varies_p(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !127 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = and i32 %5, 16711680
  %10 = icmp eq i32 %9, 65536
  br i1 %10, label %56, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = tail call zeroext i8 @rtx_varies_p(ptr noundef %13, i8 noundef zeroext %1)
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i8
  br label %56

17:                                               ; preds = %4
  %18 = zext nneg i32 %6 to i64
  %19 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  %21 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !139
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = zext i8 %22 to i64
  br label %27

27:                                               ; preds = %24, %54
  %28 = phi i64 [ %26, %24 ], [ %29, %54 ]
  %29 = add nsw i64 %28, -1
  %30 = getelementptr inbounds i8, ptr %20, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !139
  switch i8 %31, label %54 [
    i8 101, label %39
    i8 69, label %32
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = load i32, ptr %34, align 8, !tbaa !147
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %48

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %40, i64 0, i64 %29
  %42 = load ptr, ptr %41, align 8, !tbaa !139
  %43 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %42, i8 noundef zeroext %1)
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %56

45:                                               ; preds = %48
  %46 = add nuw nsw i64 %49, 1
  %47 = icmp eq i64 %46, %38
  br i1 %47, label %54, label %48, !llvm.loop !185

48:                                               ; preds = %37, %45
  %49 = phi i64 [ 0, %37 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !128
  %52 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %51, i8 noundef zeroext %1)
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %45, label %56

54:                                               ; preds = %45, %32, %27, %39
  %55 = icmp sgt i64 %28, 1
  br i1 %55, label %27, label %56, !llvm.loop !186

56:                                               ; preds = %39, %54, %48, %17, %8, %11, %2
  %57 = phi i8 [ 0, %2 ], [ 1, %8 ], [ %16, %11 ], [ 0, %17 ], [ 1, %48 ], [ 0, %54 ], [ 1, %39 ]
  ret i8 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @get_integer_term(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !187 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %8, !prof !188

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %34 [
    i16 50, label %13
    i16 49, label %25
  ], !prof !189

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !139
  %22 = sub nsw i64 0, %21
  br label %34

23:                                               ; preds = %13
  %24 = icmp eq i32 %11, 49
  br i1 %24, label %25, label %34, !prof !188

25:                                               ; preds = %8, %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !139
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 30
  br i1 %30, label %31, label %34, !prof !190

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !139
  br label %34

34:                                               ; preds = %8, %23, %25, %31, %19
  %35 = phi i64 [ %22, %19 ], [ %33, %31 ], [ 0, %25 ], [ 0, %23 ], [ 0, %8 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_related_value(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !191 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %28, !prof !192

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %28 [
    i16 49, label %11
    i16 50, label %19
  ], !prof !193

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 30
  br i1 %16, label %25, label %17, !prof !192

17:                                               ; preds = %11
  %18 = icmp eq i32 %9, 50
  br i1 %18, label %19, label %28

19:                                               ; preds = %5, %17
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 30
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %11
  %26 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !139
  br label %28

28:                                               ; preds = %25, %5, %19, %17, %1
  %29 = phi ptr [ null, %1 ], [ null, %17 ], [ null, %19 ], [ null, %5 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @offset_within_block_p(ptr noundef %0, i64 noundef %1) local_unnamed_addr #13 !prof !127 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %6
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = and i32 %3, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @get_pool_mode(ptr noundef nonnull %0) #28
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !139
  %18 = zext i8 %17 to i64
  %19 = icmp sgt i64 %18, %1
  br i1 %19, label %54, label %20

20:                                               ; preds = %13, %10
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 67108864
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  br label %27

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %26, %24 ], [ null, %20 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  %33 = tail call i64 @int_size_in_bytes(ptr noundef %32) #28
  %34 = icmp sgt i64 %33, %1
  br i1 %34, label %54, label %35

35:                                               ; preds = %30, %27, %8
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !139
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !139
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !139
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = add i64 %46, %1
  %50 = getelementptr inbounds %struct.object_block, ptr %42, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !194
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %44, %40, %35
  br label %54

54:                                               ; preds = %48, %30, %13, %6, %2, %53
  %55 = phi i8 [ 0, %53 ], [ 0, %2 ], [ 1, %6 ], [ 1, %13 ], [ 1, %30 ], [ 1, %48 ]
  ret i8 %55
}

declare i32 @get_pool_mode(ptr noundef) local_unnamed_addr #3

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @split_const(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 !prof !127 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 49
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  br label %22

22:                                               ; preds = %3, %13, %7, %19
  %23 = phi ptr [ %21, %19 ], [ %9, %13 ], [ %9, %7 ], [ %0, %3 ]
  %24 = phi ptr [ %14, %19 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %13 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %7 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %3 ]
  store ptr %23, ptr %1, align 8, !tbaa !128
  %25 = load ptr, ptr %24, align 8, !tbaa !139
  store ptr %25, ptr %2, align 8, !tbaa !128
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @count_occurrences(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #15 !prof !196 {
  br label %4

4:                                                ; preds = %35, %20, %3
  %5 = phi i32 [ 0, %3 ], [ %21, %20 ], [ %5, %35 ]
  %6 = phi ptr [ %0, %3 ], [ %18, %20 ], [ %37, %35 ]
  %7 = phi i32 [ %2, %3 ], [ %7, %20 ], [ 0, %35 ]
  %8 = icmp eq ptr %6, %1
  br i1 %8, label %82, label %9, !prof !197

9:                                                ; preds = %4
  %10 = load i32, ptr %6, align 8
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %38 [
    i16 37, label %82
    i16 30, label %82
    i16 32, label %82
    i16 31, label %82
    i16 33, label %82
    i16 45, label %82
    i16 12, label %82
    i16 36, label %82
    i16 46, label %82
    i16 3, label %13
    i16 43, label %22
    i16 23, label %29
  ], !prof !198

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = tail call i32 @count_occurrences(ptr noundef %15, ptr noundef %1, i32 noundef %7)
  %17 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = icmp eq ptr %18, null
  br i1 %19, label %82, label %20

20:                                               ; preds = %13
  %21 = add nsw i32 %5, %16
  br label %4

22:                                               ; preds = %9
  %23 = load i32, ptr %1, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %38, !prof !199

26:                                               ; preds = %22
  %27 = tail call i32 @rtx_equal_p(ptr noundef nonnull %6, ptr noundef nonnull %1) #28
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %82

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = icmp ne ptr %31, %1
  %33 = icmp ne i32 %7, 0
  %34 = or i1 %33, %32
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !139
  br label %4

38:                                               ; preds = %26, %9, %29, %22
  %39 = zext nneg i32 %11 to i64
  %40 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !139
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %82, label %43, !prof !200

43:                                               ; preds = %38
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %39
  %45 = load ptr, ptr %44, align 8, !tbaa !128
  %46 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %47 = zext i8 %41 to i64
  br label %48

48:                                               ; preds = %43, %78
  %49 = phi i64 [ 0, %43 ], [ %80, %78 ]
  %50 = phi i32 [ 0, %43 ], [ %79, %78 ]
  %51 = phi ptr [ %45, %43 ], [ %52, %78 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = load i8, ptr %51, align 1, !tbaa !139
  switch i8 %53, label %78 [
    i8 101, label %60
    i8 69, label %54
  ], !prof !201

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %56 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %49
  %57 = load ptr, ptr %56, align 8, !tbaa !139
  %58 = load i32, ptr %57, align 8, !tbaa !147
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %65, label %78

60:                                               ; preds = %48
  %61 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %49
  %62 = load ptr, ptr %61, align 8, !tbaa !139
  %63 = tail call i32 @count_occurrences(ptr noundef %62, ptr noundef %1, i32 noundef %7)
  %64 = add nsw i32 %63, %50
  br label %78

65:                                               ; preds = %54, %65
  %66 = phi i64 [ %73, %65 ], [ 0, %54 ]
  %67 = phi ptr [ %74, %65 ], [ %57, %54 ]
  %68 = phi i32 [ %72, %65 ], [ %50, %54 ]
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %67, i64 0, i32 1, i64 %66
  %70 = load ptr, ptr %69, align 8, !tbaa !128
  %71 = tail call i32 @count_occurrences(ptr noundef %70, ptr noundef %1, i32 noundef %7)
  %72 = add nsw i32 %71, %68
  %73 = add nuw nsw i64 %66, 1
  %74 = load ptr, ptr %56, align 8, !tbaa !139
  %75 = load i32, ptr %74, align 8, !tbaa !147
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %65, label %78, !llvm.loop !202

78:                                               ; preds = %65, %54, %60, %48
  %79 = phi i32 [ %50, %48 ], [ %64, %60 ], [ %50, %54 ], [ %72, %65 ]
  %80 = add nuw nsw i64 %49, 1
  %81 = icmp eq i64 %80, %47
  br i1 %81, label %82, label %48, !prof !203, !llvm.loop !204

82:                                               ; preds = %78, %38, %9, %9, %9, %9, %9, %9, %9, %9, %26, %13, %9, %4
  %83 = phi i32 [ 1, %4 ], [ 0, %9 ], [ %16, %13 ], [ 1, %26 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %38 ], [ %79, %78 ]
  %84 = add nsw i32 %5, %83
  ret i32 %84
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @reg_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !205 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %73, label %4, !prof !206

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %73, label %6, !prof !207

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 44
  br i1 %9, label %10, label %14, !prof !208

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = icmp eq ptr %12, %0
  br label %73

14:                                               ; preds = %6
  %15 = trunc i32 %7 to i16
  switch i16 %15, label %26 [
    i16 37, label %16
    i16 38, label %73
    i16 46, label %73
    i16 36, label %73
    i16 30, label %73
    i16 33, label %73
    i16 32, label %73
    i16 31, label %73
  ], !prof !209

16:                                               ; preds = %14
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %73, !prof !210

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !139
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !139
  %25 = icmp eq i32 %22, %24
  br label %73

26:                                               ; preds = %14
  %27 = load i32, ptr %0, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, %8
  br i1 %29, label %30, label %33, !prof !211

30:                                               ; preds = %26
  %31 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %73, !prof !212

33:                                               ; preds = %30, %26
  %34 = zext nneg i32 %8 to i64
  %35 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !128
  %37 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %34
  %38 = load i8, ptr %37, align 1, !tbaa !139
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %73, label %40, !prof !213

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %42 = zext i8 %38 to i64
  br label %43

43:                                               ; preds = %40, %71
  %44 = phi i64 [ %42, %40 ], [ %45, %71 ]
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds i8, ptr %36, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !139
  switch i8 %47, label %71 [
    i8 69, label %48
    i8 101, label %66
  ], !prof !214

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %49, i64 0, i64 %45
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = load i32, ptr %51, align 8, !tbaa !147
  %53 = zext i32 %52 to i64
  br label %54

54:                                               ; preds = %58, %48
  %55 = phi i64 [ %60, %58 ], [ %53, %48 ]
  %56 = trunc i64 %55 to i32
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %71, label %58, !prof !215

58:                                               ; preds = %54
  %59 = add nsw i64 %55, -1
  %60 = add nsw i64 %55, -1
  %61 = load ptr, ptr %50, align 8, !tbaa !139
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %59
  %63 = load ptr, ptr %62, align 8, !tbaa !128
  %64 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %54, label %73, !prof !216, !llvm.loop !217

66:                                               ; preds = %43
  %67 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %45
  %68 = load ptr, ptr %67, align 8, !tbaa !139
  %69 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %0, ptr noundef %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73, !prof !218

71:                                               ; preds = %54, %43, %66
  %72 = icmp sgt i64 %44, 1
  br i1 %72, label %43, label %73, !prof !219, !llvm.loop !220

73:                                               ; preds = %71, %66, %58, %33, %14, %14, %14, %14, %14, %14, %30, %14, %16, %20, %4, %2, %10
  %74 = phi i1 [ %13, %10 ], [ false, %2 ], [ true, %4 ], [ false, %16 ], [ %25, %20 ], [ false, %14 ], [ true, %30 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %14 ], [ false, %33 ], [ true, %58 ], [ true, %66 ], [ false, %71 ]
  %75 = zext i1 %74 to i32
  ret i32 %75
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @no_labels_between_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #16 !prof !127 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %7, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %4, !llvm.loop !221

13:                                               ; preds = %9, %4, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @reg_used_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #15 !prof !222 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %31, label %5, !prof !223

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %31, label %9, !prof !224

9:                                                ; preds = %5, %27
  %10 = phi ptr [ %29, %27 ], [ %7, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -11
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %27, label %15, !prof !225

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31, !prof !226

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27, !prof !227

24:                                               ; preds = %20
  %25 = tail call i32 @find_reg_fusage(ptr noundef nonnull %10, i32 noundef 24, ptr noundef %0), !range !228
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %9, %20, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %9, !prof !229, !llvm.loop !230

31:                                               ; preds = %24, %15, %27, %5, %3
  %32 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 0, %27 ], [ 1, %15 ], [ 1, %24 ]
  ret i32 %32
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !231 {
  %3 = alloca %struct.subreg_info, align 4
  %4 = alloca %struct.subreg_info, align 4
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !143
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %144, label %11, !prof !232

11:                                               ; preds = %2, %15
  %12 = phi ptr [ %17, %15 ], [ %0, %2 ]
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %137 [
    i16 40, label %15
    i16 120, label %15
    i16 119, label %15
    i16 39, label %18
    i16 37, label %54
    i16 43, label %73
    i16 38, label %114
    i16 36, label %114
    i16 46, label %114
    i16 15, label %116
  ], !prof !233

15:                                               ; preds = %11, %11, %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  br label %11

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !139
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32, ptr %20, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load i32, ptr %28, align 8, !tbaa !139
  %30 = lshr i32 %13, 16
  %31 = and i32 %30, 255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #28
  call void @subreg_get_info(i32 noundef %22, i32 noundef %27, i32 noundef %29, i32 noundef %31, ptr noundef nonnull %4)
  %32 = load i32, ptr %4, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #28
  %33 = add i32 %32, %22
  br label %34

34:                                               ; preds = %24, %18
  %35 = phi i32 [ %33, %24 ], [ %22, %18 ]
  %36 = icmp ult i32 %35, 53
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load ptr, ptr %19, align 8, !tbaa !139
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #28
  %41 = load i32, ptr %38, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load i32, ptr %44, align 8, !tbaa !139
  %46 = load i32, ptr %12, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  call void @subreg_get_info(i32 noundef %40, i32 noundef %43, i32 noundef %45, i32 noundef %48, ptr noundef nonnull %3)
  %49 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !236
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #28
  br label %51

51:                                               ; preds = %34, %37
  %52 = phi i32 [ %50, %37 ], [ 1, %34 ]
  %53 = add i32 %52, %35
  br label %69

54:                                               ; preds = %11
  %55 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !139
  %57 = icmp ult i32 %56, 53
  br i1 %57, label %58, label %67, !prof !237

58:                                               ; preds = %54
  %59 = lshr i32 %13, 16
  %60 = and i32 %59, 255
  %61 = zext nneg i32 %56 to i64
  %62 = zext nneg i32 %60 to i64
  %63 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %61, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !139
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %56, %65
  br label %69

67:                                               ; preds = %54
  %68 = add i32 %56, 1
  br label %69

69:                                               ; preds = %58, %67, %51
  %70 = phi i32 [ %35, %51 ], [ %56, %67 ], [ %56, %58 ]
  %71 = phi i32 [ %53, %51 ], [ %68, %67 ], [ %66, %58 ]
  %72 = tail call i32 @refers_to_regno_p(i32 noundef %70, i32 noundef %71, ptr noundef nonnull %1, ptr noundef null)
  br label %144

73:                                               ; preds = %11
  %74 = icmp eq i32 %6, 43
  br i1 %74, label %144, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %77 = load ptr, ptr %76, align 8, !tbaa !128
  %78 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %7
  %79 = load i8, ptr %78, align 1, !tbaa !139
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %144, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %84 = zext i8 %79 to i64
  br label %85

85:                                               ; preds = %81, %112
  %86 = phi i64 [ %84, %81 ], [ %87, %112 ]
  %87 = add nsw i64 %86, -1
  %88 = getelementptr inbounds i8, ptr %77, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !139
  switch i8 %89, label %112 [
    i8 101, label %90
    i8 69, label %95
  ]

90:                                               ; preds = %85
  %91 = getelementptr inbounds [1 x %union.rtunion_def], ptr %83, i64 0, i64 %87
  %92 = load ptr, ptr %91, align 8, !tbaa !139
  %93 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %12, ptr noundef %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %112, label %144

95:                                               ; preds = %85
  %96 = getelementptr inbounds [1 x %union.rtunion_def], ptr %82, i64 0, i64 %87
  %97 = load ptr, ptr %96, align 8, !tbaa !139
  %98 = load i32, ptr %97, align 8, !tbaa !147
  %99 = zext i32 %98 to i64
  br label %100

100:                                              ; preds = %104, %95
  %101 = phi i64 [ %106, %104 ], [ %99, %95 ]
  %102 = trunc i64 %101 to i32
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = add nsw i64 %101, -1
  %106 = add nsw i64 %101, -1
  %107 = load ptr, ptr %96, align 8, !tbaa !139
  %108 = getelementptr inbounds %struct.rtvec_def, ptr %107, i64 0, i32 1, i64 %105
  %109 = load ptr, ptr %108, align 8, !tbaa !128
  %110 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %12, ptr noundef %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %100, label %144, !llvm.loop !238

112:                                              ; preds = %100, %85, %90
  %113 = icmp sgt i64 %86, 1
  br i1 %113, label %85, label %144, !llvm.loop !239

114:                                              ; preds = %11, %11, %11
  %115 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %12, ptr noundef nonnull %1)
  br label %144

116:                                              ; preds = %11
  %117 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !139
  %119 = load i32, ptr %118, align 8, !tbaa !147
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %116
  %122 = zext nneg i32 %119 to i64
  br label %123

123:                                              ; preds = %121, %135
  %124 = phi i64 [ %122, %121 ], [ %125, %135 ]
  %125 = add nsw i64 %124, -1
  %126 = load ptr, ptr %117, align 8, !tbaa !139
  %127 = getelementptr inbounds %struct.rtvec_def, ptr %126, i64 0, i32 1, i64 %125
  %128 = load ptr, ptr %127, align 8, !tbaa !128
  %129 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !139
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %123
  %133 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %130, ptr noundef nonnull %1)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %123, %132
  %136 = icmp sgt i64 %124, 1
  br i1 %136, label %123, label %144, !llvm.loop !240

137:                                              ; preds = %11
  %138 = and i32 %13, 65535
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !143
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1416, ptr noundef nonnull @.str.1) #28
  br label %144

144:                                              ; preds = %135, %132, %112, %90, %104, %116, %75, %143, %137, %73, %2, %114, %69
  %145 = phi i32 [ %115, %114 ], [ %72, %69 ], [ 0, %2 ], [ 1, %73 ], [ 0, %137 ], [ 0, %143 ], [ 0, %75 ], [ 0, %116 ], [ 1, %104 ], [ 1, %90 ], [ 0, %112 ], [ 1, %132 ], [ 0, %135 ]
  ret i32 %145
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @find_reg_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #15 !prof !241 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %58, !prof !242

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %10, !prof !243

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1804, ptr noundef nonnull @.str.1) #28
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %36, label %14, !prof !242

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %14, %31
  %19 = phi i1 [ %34, %31 ], [ %17, %14 ]
  %20 = phi ptr [ %33, %31 ], [ %16, %14 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef %28) #28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18, %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !139
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %18, !llvm.loop !244

35:                                               ; preds = %26
  br i1 %19, label %57, label %58

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !139
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %40, label %57, !prof !243

40:                                               ; preds = %36
  %41 = lshr i32 %11, 16
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %38 to i64
  %44 = zext nneg i32 %42 to i64
  %45 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %43, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !139
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %38, %47
  %49 = icmp eq i8 %46, 0
  br i1 %49, label %57, label %53

50:                                               ; preds = %53
  %51 = add nuw i32 %54, 1
  %52 = icmp ult i32 %51, %48
  br i1 %52, label %53, label %57, !llvm.loop !245

53:                                               ; preds = %40, %50
  %54 = phi i32 [ %51, %50 ], [ %38, %40 ]
  %55 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %54)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %50, label %58

57:                                               ; preds = %31, %50, %14, %40, %36, %35
  br label %58

58:                                               ; preds = %53, %35, %3, %57
  %59 = phi i32 [ 0, %57 ], [ 1, %35 ], [ 0, %3 ], [ 1, %53 ]
  ret i32 %59
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @reg_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !246 {
  br label %3

3:                                                ; preds = %122, %2
  %4 = phi ptr [ %1, %2 ], [ %124, %122 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %125 [
    i16 23, label %7
    i16 17, label %44
    i16 26, label %61
    i16 24, label %61
    i16 47, label %61
    i16 29, label %63
    i16 22, label %67
    i16 18, label %71
    i16 19, label %71
    i16 15, label %88
    i16 25, label %105
    i16 14, label %117
  ], !prof !247

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %125, !prof !248

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %40 [
    i16 46, label %43
    i16 36, label %43
    i16 37, label %43
    i16 39, label %17
  ], !prof !249

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %40, !prof !250

23:                                               ; preds = %17
  %24 = lshr i32 %20, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !139
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 3
  %31 = lshr i32 %15, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !139
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 3
  %38 = xor i32 %37, %30
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %43, label %40, !prof !250

40:                                               ; preds = %23, %12, %17
  %41 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %14)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %125

43:                                               ; preds = %40, %12, %12, %12, %23
  br label %125

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !139
  %47 = load i32, ptr %46, align 8, !tbaa !147
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %53, %44
  %50 = phi i64 [ %55, %53 ], [ %48, %44 ]
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %125

53:                                               ; preds = %49
  %54 = add nsw i64 %50, -1
  %55 = add nsw i64 %50, -1
  %56 = load ptr, ptr %45, align 8, !tbaa !139
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %56, i64 0, i32 1, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !128
  %59 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %49, label %125, !llvm.loop !251

61:                                               ; preds = %3, %3, %3
  %62 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %4)
  br label %125

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !139
  %66 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %65)
  br label %125

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !139
  %70 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %69)
  br label %125

71:                                               ; preds = %3, %3
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !139
  %74 = load i32, ptr %73, align 8, !tbaa !147
  %75 = zext i32 %74 to i64
  br label %76

76:                                               ; preds = %80, %71
  %77 = phi i64 [ %82, %80 ], [ %75, %71 ]
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %76
  %81 = add nsw i64 %77, -1
  %82 = add nsw i64 %77, -1
  %83 = load ptr, ptr %72, align 8, !tbaa !139
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !128
  %86 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %76, label %125, !llvm.loop !252

88:                                               ; preds = %3
  %89 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !139
  %91 = load i32, ptr %90, align 8, !tbaa !147
  %92 = zext i32 %91 to i64
  br label %93

93:                                               ; preds = %97, %88
  %94 = phi i64 [ %99, %97 ], [ %92, %88 ]
  %95 = trunc i64 %94 to i32
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %125, !prof !253

97:                                               ; preds = %93
  %98 = add nsw i64 %94, -1
  %99 = add nsw i64 %94, -1
  %100 = load ptr, ptr %89, align 8, !tbaa !139
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %100, i64 0, i32 1, i64 %98
  %102 = load ptr, ptr %101, align 8, !tbaa !128
  %103 = tail call i32 @reg_referenced_p(ptr noundef %0, ptr noundef %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %93, label %125, !prof !254, !llvm.loop !255

105:                                              ; preds = %3
  %106 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !139
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 43
  br i1 %110, label %111, label %116, !prof !256

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !139
  %114 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %113)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111, %105
  br label %125

117:                                              ; preds = %3
  %118 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !139
  %120 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %119)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !139
  br label %3

125:                                              ; preds = %97, %93, %80, %76, %53, %49, %3, %117, %111, %40, %7, %116, %67, %63, %61, %43
  %126 = phi i32 [ 0, %116 ], [ %70, %67 ], [ %66, %63 ], [ %62, %61 ], [ 0, %43 ], [ 1, %7 ], [ 1, %40 ], [ 1, %111 ], [ 1, %117 ], [ 0, %3 ], [ 0, %49 ], [ 1, %53 ], [ 0, %76 ], [ 1, %80 ], [ 0, %93 ], [ 1, %97 ]
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @reg_set_between_p(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #15 !prof !257 {
  %4 = alloca %struct.set_of_data, align 8
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %76, label %6, !prof !258

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %76, label %10, !prof !259

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.set_of_data, ptr %4, i64 0, i32 1
  br label %12

12:                                               ; preds = %10, %72
  %13 = phi ptr [ %8, %10 ], [ %74, %72 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -7
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %72, !prof !260

18:                                               ; preds = %12
  %19 = icmp eq i32 %15, 10
  br i1 %19, label %20, label %56, !prof !261

20:                                               ; preds = %18
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 65535
  %23 = trunc i32 %21 to i16
  switch i16 %23, label %53 [
    i16 37, label %24
    i16 43, label %69
  ], !prof !262

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !139
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %51, !prof !263

28:                                               ; preds = %24
  %29 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !264
  %30 = zext nneg i32 %26 to i64
  %31 = shl nuw i64 1, %30
  %32 = and i64 %29, %31
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %69, !prof !265

34:                                               ; preds = %28
  %35 = lshr i32 %21, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %30, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !139
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %26, %40
  %42 = zext nneg i32 %41 to i64
  br label %43

43:                                               ; preds = %47, %34
  %44 = phi i64 [ %45, %47 ], [ %30, %34 ]
  %45 = add nuw nsw i64 %44, 1
  %46 = icmp ult i64 %45, %42
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = shl i64 2, %44
  %49 = and i64 %48, %29
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %43, label %69, !llvm.loop !266

51:                                               ; preds = %43, %24
  %52 = icmp eq i32 %22, 43
  br i1 %52, label %69, label %53, !prof !267

53:                                               ; preds = %51, %20
  %54 = call i32 @find_reg_fusage(ptr noundef nonnull %13, i32 noundef 25, ptr noundef nonnull %0), !range !228
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69, !prof !268

56:                                               ; preds = %53, %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #28
  store ptr null, ptr %4, align 8, !tbaa !269
  store ptr %0, ptr %11, align 8, !tbaa !271
  %57 = load i32, ptr %13, align 8
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -7
  %60 = icmp ult i32 %59, 4
  br i1 %60, label %61, label %64, !prof !272

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !139
  br label %64

64:                                               ; preds = %61, %56
  %65 = phi ptr [ %63, %61 ], [ %13, %56 ]
  call void @note_stores(ptr noundef %65, ptr noundef nonnull @set_of_1, ptr noundef nonnull %4)
  %66 = load ptr, ptr %4, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #28
  %67 = icmp ne ptr %66, null
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %47, %20, %28, %51, %53, %64
  %70 = phi i32 [ %68, %64 ], [ 1, %53 ], [ 1, %51 ], [ 1, %20 ], [ 1, %28 ], [ 1, %47 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76, !prof !260

72:                                               ; preds = %12, %69
  %73 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !139
  %75 = icmp eq ptr %74, %2
  br i1 %75, label %76, label %12, !prof !273, !llvm.loop !274

76:                                               ; preds = %69, %72, %6, %3
  %77 = phi i32 [ 0, %3 ], [ 0, %6 ], [ 0, %72 ], [ 1, %69 ]
  ret i32 %77
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @reg_set_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !275 {
  %3 = alloca %struct.set_of_data, align 8
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %43, !prof !261

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %40 [
    i16 37, label %11
    i16 43, label %57
  ], !prof !262

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !139
  %14 = icmp ult i32 %13, 53
  br i1 %14, label %15, label %38, !prof !263

15:                                               ; preds = %11
  %16 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !264
  %17 = zext nneg i32 %13 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %16, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %57, !prof !265

21:                                               ; preds = %15
  %22 = lshr i32 %8, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %17, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !139
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %13, %27
  %29 = zext nneg i32 %28 to i64
  br label %30

30:                                               ; preds = %34, %21
  %31 = phi i64 [ %32, %34 ], [ %17, %21 ]
  %32 = add nuw nsw i64 %31, 1
  %33 = icmp ult i64 %32, %29
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = shl i64 2, %31
  %36 = and i64 %35, %16
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %30, label %57, !llvm.loop !266

38:                                               ; preds = %30, %11
  %39 = icmp eq i32 %9, 43
  br i1 %39, label %57, label %40, !prof !267

40:                                               ; preds = %7, %38
  %41 = tail call i32 @find_reg_fusage(ptr noundef nonnull %1, i32 noundef 25, ptr noundef nonnull %0), !range !228
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57, !prof !268

43:                                               ; preds = %2, %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !269
  %44 = getelementptr inbounds %struct.set_of_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %44, align 8, !tbaa !271
  %45 = load i32, ptr %1, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %52, !prof !272

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  br label %52

52:                                               ; preds = %43, %49
  %53 = phi ptr [ %51, %49 ], [ %1, %43 ]
  call void @note_stores(ptr noundef %53, ptr noundef nonnull @set_of_1, ptr noundef nonnull %3)
  %54 = load ptr, ptr %3, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  %55 = icmp ne ptr %54, null
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %34, %15, %7, %38, %40, %52
  %58 = phi i32 [ %56, %52 ], [ 1, %40 ], [ 1, %38 ], [ 1, %7 ], [ 1, %15 ], [ 1, %34 ]
  ret i32 %58
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @set_of(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !127 {
  %3 = alloca %struct.set_of_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !269
  %4 = getelementptr inbounds %struct.set_of_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !271
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ %1, %2 ]
  call void @note_stores(ptr noundef %13, ptr noundef nonnull @set_of_1, ptr noundef nonnull %3)
  %14 = load ptr, ptr %3, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  ret ptr %14
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @modified_between_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !276 {
  %4 = alloca %struct.set_of_data, align 8
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq ptr %1, %2
  br i1 %7, label %141, label %8, !prof !277

8:                                                ; preds = %3
  %9 = trunc i32 %5 to i16
  switch i16 %9, label %97 [
    i16 30, label %141
    i16 32, label %141
    i16 31, label %141
    i16 33, label %141
    i16 35, label %141
    i16 45, label %141
    i16 44, label %141
    i16 36, label %14
    i16 46, label %14
    i16 43, label %15
    i16 37, label %10
  ], !prof !278

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %141, label %32, !prof !279

14:                                               ; preds = %8, %8
  br label %141

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = tail call i32 @modified_between_p(ptr noundef %17, ptr noundef %1, ptr noundef %2), !range !228
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %141, !prof !280

20:                                               ; preds = %15
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 67108864
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %141, !prof !280

24:                                               ; preds = %20, %29
  %25 = phi ptr [ %27, %29 ], [ %1, %20 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !139
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %141, label %29, !prof !281

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %27) #28
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %24, label %141, !prof !282, !llvm.loop !283

32:                                               ; preds = %10, %93
  %33 = phi ptr [ %95, %93 ], [ %12, %10 ]
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %93, !prof !284

38:                                               ; preds = %32
  %39 = icmp eq i32 %35, 10
  br i1 %39, label %40, label %76, !prof !261

40:                                               ; preds = %38
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, 65535
  %43 = trunc i32 %41 to i16
  switch i16 %43, label %73 [
    i16 37, label %44
    i16 43, label %90
  ], !prof !262

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !139
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %48, label %71, !prof !263

48:                                               ; preds = %44
  %49 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !264
  %50 = zext nneg i32 %46 to i64
  %51 = shl nuw i64 1, %50
  %52 = and i64 %49, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %90, !prof !265

54:                                               ; preds = %48
  %55 = lshr i32 %41, 16
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %50, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !139
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %46, %60
  %62 = zext nneg i32 %61 to i64
  br label %63

63:                                               ; preds = %67, %54
  %64 = phi i64 [ %65, %67 ], [ %50, %54 ]
  %65 = add nuw nsw i64 %64, 1
  %66 = icmp ult i64 %65, %62
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = shl i64 2, %64
  %69 = and i64 %68, %49
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %63, label %90, !llvm.loop !266

71:                                               ; preds = %63, %44
  %72 = icmp eq i32 %42, 43
  br i1 %72, label %90, label %73, !prof !267

73:                                               ; preds = %71, %40
  %74 = call i32 @find_reg_fusage(ptr noundef nonnull %33, i32 noundef 25, ptr noundef nonnull %0), !range !228
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %90, !prof !268

76:                                               ; preds = %73, %38
  %77 = getelementptr inbounds %struct.set_of_data, ptr %4, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #28
  store ptr null, ptr %4, align 8, !tbaa !269
  store ptr %0, ptr %77, align 8, !tbaa !271
  %78 = load i32, ptr %33, align 8
  %79 = and i32 %78, 65535
  %80 = add nsw i32 %79, -7
  %81 = icmp ult i32 %80, 4
  br i1 %81, label %82, label %85, !prof !272

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !139
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi ptr [ %84, %82 ], [ %33, %76 ]
  call void @note_stores(ptr noundef %86, ptr noundef nonnull @set_of_1, ptr noundef nonnull %4)
  %87 = load ptr, ptr %4, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #28
  %88 = icmp ne ptr %87, null
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %67, %40, %48, %71, %73, %85
  %91 = phi i32 [ %89, %85 ], [ 1, %73 ], [ 1, %71 ], [ 1, %40 ], [ 1, %48 ], [ 1, %67 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %141, !prof !285

93:                                               ; preds = %90, %32
  %94 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %95 = load ptr, ptr %94, align 8, !tbaa !139
  %96 = icmp eq ptr %95, %2
  br i1 %96, label %141, label %32, !prof !284, !llvm.loop !274

97:                                               ; preds = %8
  %98 = zext nneg i32 %6 to i64
  %99 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !128
  %101 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %98
  %102 = load i8, ptr %101, align 1, !tbaa !139
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %141, label %104, !prof !286

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %106 = zext i8 %102 to i64
  br label %107

107:                                              ; preds = %104, %139
  %108 = phi i64 [ %106, %104 ], [ %109, %139 ]
  %109 = add nsw i64 %108, -1
  %110 = getelementptr inbounds i8, ptr %100, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !139
  %112 = icmp eq i8 %111, 101
  br i1 %112, label %113, label %118, !prof !287

113:                                              ; preds = %107
  %114 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %109
  %115 = load ptr, ptr %114, align 8, !tbaa !139
  %116 = tail call i32 @modified_between_p(ptr noundef %115, ptr noundef %1, ptr noundef %2), !range !228
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %141, !prof !288

118:                                              ; preds = %113, %107
  %119 = load i8, ptr %110, align 1, !tbaa !139
  %120 = icmp eq i8 %119, 69
  br i1 %120, label %121, label %139, !prof !289

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %123 = getelementptr inbounds [1 x %union.rtunion_def], ptr %122, i64 0, i64 %109
  %124 = load ptr, ptr %123, align 8, !tbaa !139
  %125 = load i32, ptr %124, align 8, !tbaa !147
  %126 = zext i32 %125 to i64
  br label %127

127:                                              ; preds = %131, %121
  %128 = phi i64 [ %133, %131 ], [ %126, %121 ]
  %129 = trunc i64 %128 to i32
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = add nsw i64 %128, -1
  %133 = add nsw i64 %128, -1
  %134 = load ptr, ptr %123, align 8, !tbaa !139
  %135 = getelementptr inbounds %struct.rtvec_def, ptr %134, i64 0, i32 1, i64 %132
  %136 = load ptr, ptr %135, align 8, !tbaa !128
  %137 = tail call i32 @modified_between_p(ptr noundef %136, ptr noundef %1, ptr noundef %2), !range !228
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %127, label %141, !llvm.loop !290

139:                                              ; preds = %127, %118
  %140 = icmp sgt i64 %108, 1
  br i1 %140, label %107, label %141, !prof !291, !llvm.loop !292

141:                                              ; preds = %90, %93, %29, %24, %139, %113, %131, %10, %97, %8, %8, %8, %8, %8, %8, %20, %15, %8, %3, %14
  %142 = phi i32 [ 1, %14 ], [ 0, %3 ], [ 0, %8 ], [ 1, %15 ], [ 0, %20 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %97 ], [ 0, %10 ], [ 1, %131 ], [ 1, %113 ], [ 0, %139 ], [ 0, %24 ], [ 1, %29 ], [ 0, %93 ], [ 1, %90 ]
  ret i32 %142
}

declare zeroext i8 @memory_modified_in_insn_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @modified_in_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !293 {
  %3 = alloca %struct.set_of_data, align 8
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %70 [
    i16 30, label %115
    i16 32, label %115
    i16 31, label %115
    i16 33, label %115
    i16 35, label %115
    i16 45, label %115
    i16 44, label %115
    i16 36, label %6
    i16 46, label %6
    i16 43, label %7
    i16 37, label %19
  ], !prof !294

6:                                                ; preds = %2, %2
  br label %115

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = tail call i32 @modified_in_p(ptr noundef %9, ptr noundef %1), !range !228
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %115, !prof !295

12:                                               ; preds = %7
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 67108864
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %115, !prof !296

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef nonnull %0, ptr noundef %1) #28
  %18 = icmp ne i8 %17, 0
  br label %115

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %57, !prof !261

23:                                               ; preds = %19
  %24 = and i32 %4, 65535
  switch i16 %5, label %54 [
    i16 37, label %25
    i16 43, label %115
  ], !prof !262

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !139
  %28 = icmp ult i32 %27, 53
  br i1 %28, label %29, label %52, !prof !263

29:                                               ; preds = %25
  %30 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !264
  %31 = zext nneg i32 %27 to i64
  %32 = shl nuw i64 1, %31
  %33 = and i64 %30, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %115, !prof !265

35:                                               ; preds = %29
  %36 = lshr i32 %4, 16
  %37 = and i32 %36, 255
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %31, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !139
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %27, %41
  %43 = zext nneg i32 %42 to i64
  br label %44

44:                                               ; preds = %48, %35
  %45 = phi i64 [ %46, %48 ], [ %31, %35 ]
  %46 = add nuw nsw i64 %45, 1
  %47 = icmp ult i64 %46, %43
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = shl i64 2, %45
  %50 = and i64 %49, %30
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %44, label %115, !llvm.loop !266

52:                                               ; preds = %44, %25
  %53 = icmp eq i32 %24, 43
  br i1 %53, label %115, label %54, !prof !267

54:                                               ; preds = %52, %23
  %55 = tail call i32 @find_reg_fusage(ptr noundef nonnull %1, i32 noundef 25, ptr noundef nonnull %0), !range !228
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %115, !prof !268

57:                                               ; preds = %54, %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !269
  %58 = getelementptr inbounds %struct.set_of_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %58, align 8, !tbaa !271
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %66, !prof !272

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !139
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %65, %63 ], [ %1, %57 ]
  call void @note_stores(ptr noundef %67, ptr noundef nonnull @set_of_1, ptr noundef nonnull %3)
  %68 = load ptr, ptr %3, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  %69 = icmp ne ptr %68, null
  br label %115

70:                                               ; preds = %2
  %71 = and i32 %4, 65535
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !128
  %75 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %72
  %76 = load i8, ptr %75, align 1, !tbaa !139
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %115, label %78, !prof !297

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %80 = zext i8 %76 to i64
  br label %81

81:                                               ; preds = %78, %113
  %82 = phi i64 [ %80, %78 ], [ %83, %113 ]
  %83 = add nsw i64 %82, -1
  %84 = getelementptr inbounds i8, ptr %74, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !139
  %86 = icmp eq i8 %85, 101
  br i1 %86, label %87, label %92, !prof !298

87:                                               ; preds = %81
  %88 = getelementptr inbounds [1 x %union.rtunion_def], ptr %79, i64 0, i64 %83
  %89 = load ptr, ptr %88, align 8, !tbaa !139
  %90 = tail call i32 @modified_in_p(ptr noundef %89, ptr noundef %1), !range !228
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %115, !prof !299

92:                                               ; preds = %87, %81
  %93 = load i8, ptr %84, align 1, !tbaa !139
  %94 = icmp eq i8 %93, 69
  br i1 %94, label %95, label %113, !prof !300

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %97 = getelementptr inbounds [1 x %union.rtunion_def], ptr %96, i64 0, i64 %83
  %98 = load ptr, ptr %97, align 8, !tbaa !139
  %99 = load i32, ptr %98, align 8, !tbaa !147
  %100 = zext i32 %99 to i64
  br label %101

101:                                              ; preds = %105, %95
  %102 = phi i64 [ %107, %105 ], [ %100, %95 ]
  %103 = trunc i64 %102 to i32
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = add nsw i64 %102, -1
  %107 = add nsw i64 %102, -1
  %108 = load ptr, ptr %97, align 8, !tbaa !139
  %109 = getelementptr inbounds %struct.rtvec_def, ptr %108, i64 0, i32 1, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !128
  %111 = tail call i32 @modified_in_p(ptr noundef %110, ptr noundef %1), !range !228
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %101, label %115, !llvm.loop !301

113:                                              ; preds = %101, %92
  %114 = icmp sgt i64 %82, 1
  br i1 %114, label %81, label %115, !prof !302, !llvm.loop !303

115:                                              ; preds = %48, %113, %87, %105, %70, %66, %54, %52, %29, %23, %2, %2, %2, %2, %2, %2, %16, %12, %7, %2, %6
  %116 = phi i1 [ true, %6 ], [ false, %2 ], [ true, %7 ], [ false, %12 ], [ %18, %16 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ %69, %66 ], [ true, %54 ], [ true, %52 ], [ true, %23 ], [ true, %29 ], [ false, %70 ], [ true, %105 ], [ true, %87 ], [ false, %113 ], [ true, %48 ]
  %117 = zext i1 %116 to i32
  ret i32 %117
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @note_stores(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #11 !prof !304 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %10, !prof !305

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %69 [
    i16 23, label %14
    i16 25, label %14
    i16 15, label %55
  ], !prof !306

14:                                               ; preds = %10, %10
  br label %15

15:                                               ; preds = %34, %14
  %16 = phi ptr [ %11, %14 ], [ %18, %34 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 39
  br i1 %21, label %22, label %32, !prof !307

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !139
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !139
  %31 = icmp ugt i32 %30, 52
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %15
  %33 = trunc i32 %19 to i16
  switch i16 %33, label %54 [
    i16 120, label %34
    i16 40, label %34
    i16 15, label %35
  ], !prof !308

34:                                               ; preds = %32, %32, %28, %22
  br label %15, !llvm.loop !309

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !139
  %38 = load i32, ptr %37, align 8, !tbaa !147
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %52
  %43 = phi i64 [ %41, %40 ], [ %44, %52 ]
  %44 = add nsw i64 %43, -1
  %45 = load ptr, ptr %36, align 8, !tbaa !139
  %46 = getelementptr inbounds %struct.rtvec_def, ptr %45, i64 0, i32 1, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !139
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  tail call void %1(ptr noundef nonnull %49, ptr noundef nonnull %11, ptr noundef %2) #28
  br label %52

52:                                               ; preds = %42, %51
  %53 = icmp sgt i64 %43, 1
  br i1 %53, label %42, label %69, !llvm.loop !310

54:                                               ; preds = %32
  tail call void %1(ptr noundef nonnull %18, ptr noundef nonnull %11, ptr noundef %2) #28, !prof !311
  br label %69

55:                                               ; preds = %10
  %56 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !139
  %58 = load i32, ptr %57, align 8, !tbaa !147
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %69, !prof !312

60:                                               ; preds = %55
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ %61, %60 ], [ %64, %62 ]
  %64 = add nsw i64 %63, -1
  %65 = load ptr, ptr %56, align 8, !tbaa !139
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !128
  tail call void @note_stores(ptr noundef %67, ptr noundef %1, ptr noundef %2)
  %68 = icmp sgt i64 %63, 1
  br i1 %68, label %62, label %69, !prof !313, !llvm.loop !314

69:                                               ; preds = %62, %52, %55, %35, %10, %54
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @set_of_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #11 !prof !315 !PGOFuncName !316 {
  %4 = getelementptr inbounds %struct.set_of_data, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !271
  %6 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %5) #28
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !317

8:                                                ; preds = %3
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %17, label %12, !prof !318

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !271
  %14 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %13, ptr noundef nonnull %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !319

16:                                               ; preds = %12, %3
  store ptr %1, ptr %2, align 8, !tbaa !269
  br label %17

17:                                               ; preds = %16, %12, %8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @single_set_2(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !320 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %130, !prof !321

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = load i32, ptr %8, align 8, !tbaa !147
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %17, label %130, !prof !322

11:                                               ; preds = %126
  %12 = add nuw nsw i64 %18, 1
  %13 = load ptr, ptr %7, align 8, !tbaa !139
  %14 = load i32, ptr %13, align 8, !tbaa !147
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %130, !prof !323, !llvm.loop !324

17:                                               ; preds = %6, %11
  %18 = phi i64 [ %12, %11 ], [ 0, %6 ]
  %19 = phi ptr [ %13, %11 ], [ %8, %6 ]
  %20 = phi i32 [ %128, %11 ], [ 1, %6 ]
  %21 = phi ptr [ %127, %11 ], [ null, %6 ]
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %126 [
    i16 24, label %123
    i16 25, label %123
    i16 23, label %26
  ], !prof !325

26:                                               ; preds = %17
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %28, label %74, !prof !326

28:                                               ; preds = %26
  %29 = icmp eq ptr %0, null
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  br i1 %29, label %32, label %33, !prof !327

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1697, ptr noundef nonnull @.str.1) #28
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %73, !prof !328

38:                                               ; preds = %33
  %39 = icmp eq ptr %31, null
  br i1 %39, label %40, label %53, !prof !329

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !139
  %43 = icmp eq ptr %42, null
  br i1 %43, label %73, label %44, !prof !330

44:                                               ; preds = %40, %49
  %45 = phi ptr [ %51, %49 ], [ %42, %40 ]
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 16711680
  %48 = icmp eq i32 %47, 393216
  br i1 %48, label %70, label %49, !prof !331

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %44, !prof !332, !llvm.loop !333

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !139
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57, !prof !334

57:                                               ; preds = %53, %66
  %58 = phi ptr [ %68, %66 ], [ %55, %53 ]
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 16711680
  %61 = icmp eq i32 %60, 393216
  br i1 %61, label %62, label %66, !prof !335

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !139
  %65 = icmp eq ptr %64, %31
  br i1 %65, label %70, label %66, !prof !336

66:                                               ; preds = %62, %57
  %67 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !139
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %57, !prof !337, !llvm.loop !338

70:                                               ; preds = %62, %44
  %71 = tail call i32 @side_effects_p(ptr noundef %21)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66, %49, %33, %40, %53, %70
  br label %74

74:                                               ; preds = %70, %73, %26
  %75 = phi ptr [ %21, %26 ], [ %21, %73 ], [ null, %70 ]
  %76 = phi i32 [ 1, %26 ], [ 1, %73 ], [ 0, %70 ]
  %77 = icmp eq ptr %75, null
  br i1 %77, label %123, label %78, !prof !339

78:                                               ; preds = %74
  %79 = icmp eq ptr %0, null
  %80 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !139
  br i1 %79, label %82, label %83, !prof !327

82:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1697, ptr noundef nonnull @.str.1) #28
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -7
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %88, label %126, !prof !328

88:                                               ; preds = %83
  %89 = icmp eq ptr %81, null
  br i1 %89, label %90, label %103, !prof !329

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !139
  %93 = icmp eq ptr %92, null
  br i1 %93, label %126, label %94, !prof !330

94:                                               ; preds = %90, %99
  %95 = phi ptr [ %101, %99 ], [ %92, %90 ]
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 16711680
  %98 = icmp eq i32 %97, 393216
  br i1 %98, label %120, label %99, !prof !331

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !139
  %102 = icmp eq ptr %101, null
  br i1 %102, label %126, label %94, !prof !332, !llvm.loop !333

103:                                              ; preds = %88
  %104 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !139
  %106 = icmp eq ptr %105, null
  br i1 %106, label %126, label %107, !prof !334

107:                                              ; preds = %103, %116
  %108 = phi ptr [ %118, %116 ], [ %105, %103 ]
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 16711680
  %111 = icmp eq i32 %110, 393216
  br i1 %111, label %112, label %116, !prof !335

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !139
  %115 = icmp eq ptr %114, %81
  br i1 %115, label %120, label %116, !prof !336

116:                                              ; preds = %112, %107
  %117 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !139
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %107, !prof !337, !llvm.loop !338

120:                                              ; preds = %112, %94
  %121 = tail call i32 @side_effects_p(ptr noundef nonnull %23)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120, %17, %74, %17
  %124 = phi ptr [ %21, %17 ], [ %23, %74 ], [ %21, %17 ], [ %75, %120 ]
  %125 = phi i32 [ %20, %17 ], [ 0, %74 ], [ %20, %17 ], [ %76, %120 ]
  br label %126

126:                                              ; preds = %116, %99, %83, %90, %103, %17, %120, %123
  %127 = phi ptr [ %124, %123 ], [ %75, %120 ], [ %21, %17 ], [ %75, %103 ], [ %75, %90 ], [ %75, %83 ], [ %75, %99 ], [ %75, %116 ]
  %128 = phi i32 [ %125, %123 ], [ %76, %120 ], [ %20, %17 ], [ %76, %103 ], [ %76, %90 ], [ %76, %83 ], [ %76, %99 ], [ %76, %116 ]
  %129 = phi i1 [ true, %123 ], [ false, %120 ], [ false, %17 ], [ false, %103 ], [ false, %90 ], [ false, %83 ], [ false, %99 ], [ false, %116 ]
  br i1 %129, label %11, label %130, !prof !340

130:                                              ; preds = %126, %11, %6, %2
  %131 = phi ptr [ null, %2 ], [ null, %6 ], [ %127, %11 ], [ null, %126 ]
  ret ptr %131
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @find_reg_note(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #11 !prof !341 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !327

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1697, ptr noundef nonnull @.str.1) #28
  br label %6

6:                                                ; preds = %3, %5
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %42, !prof !328

11:                                               ; preds = %6
  %12 = icmp eq ptr %2, null
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = icmp eq ptr %14, null
  br i1 %12, label %16, label %27, !prof !329

16:                                               ; preds = %11
  br i1 %15, label %42, label %17, !prof !330

17:                                               ; preds = %16, %23
  %18 = phi ptr [ %25, %23 ], [ %14, %16 ]
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %42, label %23, !prof !331

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !139
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %17, !prof !332, !llvm.loop !333

27:                                               ; preds = %11
  br i1 %15, label %42, label %28, !prof !334

28:                                               ; preds = %27, %38
  %29 = phi ptr [ %40, %38 ], [ %14, %27 ]
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %38, !prof !335

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !139
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %42, label %38, !prof !336

38:                                               ; preds = %28, %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !139
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !prof !337, !llvm.loop !338

42:                                               ; preds = %34, %38, %17, %23, %27, %16, %6
  %43 = phi ptr [ null, %6 ], [ null, %16 ], [ null, %27 ], [ null, %23 ], [ %18, %17 ], [ null, %38 ], [ %29, %34 ]
  ret ptr %43
}

; Function Attrs: inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @side_effects_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !342 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %12 [
    i16 44, label %52
    i16 45, label %52
    i16 30, label %52
    i16 35, label %52
    i16 32, label %52
    i16 31, label %52
    i16 33, label %52
    i16 46, label %52
    i16 36, label %52
    i16 37, label %52
    i16 38, label %52
    i16 20, label %52
    i16 21, label %52
    i16 138, label %52
    i16 25, label %5
    i16 75, label %8
    i16 74, label %8
    i16 77, label %8
    i16 76, label %8
    i16 78, label %8
    i16 79, label %8
    i16 26, label %8
    i16 19, label %8
    i16 43, label %9
    i16 16, label %9
    i16 17, label %9
  ], !prof !343

5:                                                ; preds = %1
  %6 = and i32 %2, 16711680
  %7 = icmp ne i32 %6, 0
  br label %52

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %52

9:                                                ; preds = %1, %1, %1
  %10 = and i32 %2, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %52, !prof !344

12:                                               ; preds = %1, %9
  %13 = zext nneg i32 %3 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !139
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %52, !prof !345

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = zext i8 %17 to i64
  br label %22

22:                                               ; preds = %19, %50
  %23 = phi i64 [ %21, %19 ], [ %25, %50 ]
  %24 = phi i1 [ %18, %19 ], [ %51, %50 ]
  %25 = add nsw i64 %23, -1
  %26 = getelementptr inbounds i8, ptr %15, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !139
  switch i8 %27, label %50 [
    i8 101, label %36
    i8 69, label %28
  ], !prof !346

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %29, i64 0, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = load i32, ptr %31, align 8, !tbaa !147
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50, !prof !347

34:                                               ; preds = %28
  %35 = zext nneg i32 %32 to i64
  br label %44

36:                                               ; preds = %22
  %37 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %25
  %38 = load ptr, ptr %37, align 8, !tbaa !139
  %39 = tail call i32 @side_effects_p(ptr noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %52, !prof !348

41:                                               ; preds = %44
  %42 = add nuw nsw i64 %45, 1
  %43 = icmp eq i64 %42, %35
  br i1 %43, label %50, label %44, !prof !349, !llvm.loop !350

44:                                               ; preds = %34, %41
  %45 = phi i64 [ 0, %34 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  %48 = tail call i32 @side_effects_p(ptr noundef %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %41, label %52, !prof !351

50:                                               ; preds = %41, %28, %22, %36
  %51 = icmp sgt i64 %23, 1
  br i1 %51, label %22, label %52, !prof !352, !llvm.loop !353

52:                                               ; preds = %50, %36, %44, %12, %9, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %8, %5
  %53 = phi i1 [ true, %8 ], [ %7, %5 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ true, %9 ], [ %18, %12 ], [ %24, %44 ], [ %24, %36 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @multiple_sets(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !354 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %33, !prof !355

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %33, !prof !356

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = load i32, ptr %14, align 8, !tbaa !147
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %33, !prof !357

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %31, %29 ]
  %21 = phi i32 [ 0, %17 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %27, label %29, !prof !358

27:                                               ; preds = %19
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %29, label %33, !prof !359

29:                                               ; preds = %27, %19
  %30 = phi i32 [ %21, %19 ], [ 1, %27 ]
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %19, !prof !360, !llvm.loop !361

33:                                               ; preds = %27, %29, %12, %1, %6
  %34 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 0, %12 ], [ 0, %29 ], [ 1, %27 ]
  ret i32 %34
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @set_noop_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !362 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = load ptr, ptr %2, align 8, !tbaa !139
  %6 = load ptr, ptr @global_rtl, align 16, !tbaa !128
  %7 = icmp eq ptr %5, %6
  %8 = icmp eq ptr %4, %6
  %9 = select i1 %7, i1 %8, i1 false, !prof !363
  br i1 %9, label %78, label %10, !prof !364

10:                                               ; preds = %1
  %11 = load i32, ptr %5, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %24, !prof !365

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %24, !prof !366

18:                                               ; preds = %14
  %19 = tail call i32 @rtx_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %4) #28
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %78, label %21, !prof !367

21:                                               ; preds = %18
  %22 = tail call i32 @side_effects_p(ptr noundef nonnull %5)
  %23 = icmp eq i32 %22, 0
  br label %78

24:                                               ; preds = %14, %10
  %25 = trunc i32 %11 to i16
  switch i16 %25, label %42 [
    i16 120, label %26
    i16 40, label %39
  ], !prof !368

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = tail call i32 @rtx_equal_p(ptr noundef %28, ptr noundef %4) #28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %78, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !139
  %34 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !128
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %31
  %37 = tail call i32 @side_effects_p(ptr noundef %4)
  %38 = icmp eq i32 %37, 0
  br label %78

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !139
  br label %42

42:                                               ; preds = %24, %39
  %43 = phi ptr [ %41, %39 ], [ %5, %24 ]
  %44 = load i32, ptr %4, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 39
  br i1 %46, label %47, label %62, !prof !369

47:                                               ; preds = %42
  %48 = load i32, ptr %43, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 39
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load i32, ptr %52, align 8, !tbaa !139
  %54 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load i32, ptr %54, align 8, !tbaa !139
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %59 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = load ptr, ptr %58, align 8, !tbaa !139
  br label %62

62:                                               ; preds = %57, %47, %42
  %63 = phi ptr [ %60, %57 ], [ %4, %47 ], [ %4, %42 ]
  %64 = phi ptr [ %61, %57 ], [ %43, %47 ], [ %43, %42 ]
  %65 = load i32, ptr %63, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 37
  br i1 %67, label %68, label %78, !prof !370

68:                                               ; preds = %62
  %69 = load i32, ptr %64, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %72, label %78, !prof !371

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !139
  %75 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !139
  %77 = icmp eq i32 %74, %76
  br label %78

78:                                               ; preds = %62, %68, %72, %51, %26, %31, %36, %18, %21, %1
  %79 = phi i1 [ true, %1 ], [ false, %18 ], [ %23, %21 ], [ false, %31 ], [ false, %26 ], [ %38, %36 ], [ false, %51 ], [ false, %68 ], [ false, %62 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  ret i32 %80
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @noop_move_p(ptr noundef readonly %0) local_unnamed_addr #11 !prof !372 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !139
  %6 = icmp eq i32 %5, 2147483647
  br i1 %6, label %215, label %7, !prof !373

7:                                                ; preds = %1
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !327

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1697, ptr noundef nonnull @.str.1) #28
  br label %10

10:                                               ; preds = %9, %7
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %28, !prof !328

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !330

19:                                               ; preds = %15, %24
  %20 = phi ptr [ %26, %24 ], [ %17, %15 ]
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 16711680
  %23 = icmp eq i32 %22, 262144
  br i1 %23, label %215, label %24, !prof !331

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !prof !332, !llvm.loop !333

28:                                               ; preds = %24, %15, %10
  %29 = load i32, ptr %3, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 23
  br i1 %31, label %32, label %111, !prof !374

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  %36 = load ptr, ptr %33, align 8, !tbaa !139
  %37 = load ptr, ptr @global_rtl, align 16, !tbaa !128
  %38 = icmp eq ptr %36, %37
  %39 = icmp eq ptr %35, %37
  %40 = select i1 %38, i1 %39, i1 false, !prof !363
  br i1 %40, label %215, label %41, !prof !364

41:                                               ; preds = %32
  %42 = load i32, ptr %36, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %55, !prof !365

45:                                               ; preds = %41
  %46 = load i32, ptr %35, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 43
  br i1 %48, label %49, label %55, !prof !366

49:                                               ; preds = %45
  %50 = tail call i32 @rtx_equal_p(ptr noundef nonnull %36, ptr noundef nonnull %35) #28
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %111, label %52, !prof !367

52:                                               ; preds = %49
  %53 = tail call i32 @side_effects_p(ptr noundef nonnull %36)
  %54 = icmp eq i32 %53, 0
  br label %109

55:                                               ; preds = %45, %41
  %56 = trunc i32 %42 to i16
  switch i16 %56, label %73 [
    i16 120, label %57
    i16 40, label %70
  ], !prof !368

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !139
  %60 = tail call i32 @rtx_equal_p(ptr noundef %59, ptr noundef %35) #28
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %111, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !139
  %65 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !128
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %62
  %68 = tail call i32 @side_effects_p(ptr noundef %35)
  %69 = icmp eq i32 %68, 0
  br label %109

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !139
  br label %73

73:                                               ; preds = %70, %55
  %74 = phi ptr [ %72, %70 ], [ %36, %55 ]
  %75 = load i32, ptr %35, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 39
  br i1 %77, label %78, label %93, !prof !369

78:                                               ; preds = %73
  %79 = load i32, ptr %74, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 39
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load i32, ptr %83, align 8, !tbaa !139
  %85 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load i32, ptr %85, align 8, !tbaa !139
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %90 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !139
  %92 = load ptr, ptr %89, align 8, !tbaa !139
  br label %93

93:                                               ; preds = %88, %78, %73
  %94 = phi ptr [ %91, %88 ], [ %35, %78 ], [ %35, %73 ]
  %95 = phi ptr [ %92, %88 ], [ %74, %78 ], [ %74, %73 ]
  %96 = load i32, ptr %94, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %111, !prof !370

99:                                               ; preds = %93
  %100 = load i32, ptr %95, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 37
  br i1 %102, label %103, label %111, !prof !371

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !139
  %106 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !139
  %108 = icmp eq i32 %105, %107
  br label %109

109:                                              ; preds = %52, %67, %103
  %110 = phi i1 [ %54, %52 ], [ %69, %67 ], [ %108, %103 ]
  br i1 %110, label %215, label %111, !prof !375

111:                                              ; preds = %49, %62, %57, %82, %99, %93, %109, %28
  %112 = load i32, ptr %3, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 15
  br i1 %114, label %115, label %215, !prof !376

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !139
  %118 = load i32, ptr %117, align 8, !tbaa !147
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %215, !prof !377

120:                                              ; preds = %115, %209
  %121 = phi i64 [ %210, %209 ], [ 0, %115 ]
  %122 = phi ptr [ %211, %209 ], [ %117, %115 ]
  %123 = getelementptr inbounds %struct.rtvec_def, ptr %122, i64 0, i32 1, i64 %121
  %124 = load ptr, ptr %123, align 8, !tbaa !128
  %125 = load i32, ptr %124, align 8
  %126 = trunc i32 %125 to i16
  switch i16 %126, label %206 [
    i16 24, label %207
    i16 25, label %207
    i16 23, label %127
  ], !prof !378

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %129 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !139
  %131 = load ptr, ptr %128, align 8, !tbaa !139
  %132 = load ptr, ptr @global_rtl, align 16, !tbaa !128
  %133 = icmp eq ptr %131, %132
  %134 = icmp eq ptr %130, %132
  %135 = select i1 %133, i1 %134, i1 false, !prof !363
  br i1 %135, label %207, label %136, !prof !364

136:                                              ; preds = %127
  %137 = load i32, ptr %131, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 43
  br i1 %139, label %140, label %150, !prof !365

140:                                              ; preds = %136
  %141 = load i32, ptr %130, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 43
  br i1 %143, label %144, label %150, !prof !366

144:                                              ; preds = %140
  %145 = tail call i32 @rtx_equal_p(ptr noundef nonnull %131, ptr noundef nonnull %130) #28
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %206, label %147, !prof !367

147:                                              ; preds = %144
  %148 = tail call i32 @side_effects_p(ptr noundef nonnull %131)
  %149 = icmp eq i32 %148, 0
  br label %204

150:                                              ; preds = %140, %136
  %151 = trunc i32 %137 to i16
  switch i16 %151, label %168 [
    i16 120, label %152
    i16 40, label %165
  ], !prof !368

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !139
  %155 = tail call i32 @rtx_equal_p(ptr noundef %154, ptr noundef %130) #28
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %206, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 2
  %159 = load ptr, ptr %158, align 8, !tbaa !139
  %160 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !128
  %161 = icmp eq ptr %159, %160
  br i1 %161, label %162, label %206

162:                                              ; preds = %157
  %163 = tail call i32 @side_effects_p(ptr noundef %130)
  %164 = icmp eq i32 %163, 0
  br label %204

165:                                              ; preds = %150
  %166 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !139
  br label %168

168:                                              ; preds = %165, %150
  %169 = phi ptr [ %167, %165 ], [ %131, %150 ]
  %170 = load i32, ptr %130, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 39
  br i1 %172, label %173, label %188, !prof !369

173:                                              ; preds = %168
  %174 = load i32, ptr %169, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 39
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 0, i64 1
  %179 = load i32, ptr %178, align 8, !tbaa !139
  %180 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %181 = load i32, ptr %180, align 8, !tbaa !139
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %206

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %185 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !139
  %187 = load ptr, ptr %184, align 8, !tbaa !139
  br label %188

188:                                              ; preds = %183, %173, %168
  %189 = phi ptr [ %186, %183 ], [ %130, %173 ], [ %130, %168 ]
  %190 = phi ptr [ %187, %183 ], [ %169, %173 ], [ %169, %168 ]
  %191 = load i32, ptr %189, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 37
  br i1 %193, label %194, label %206, !prof !370

194:                                              ; preds = %188
  %195 = load i32, ptr %190, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 37
  br i1 %197, label %198, label %206, !prof !371

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  %200 = load i32, ptr %199, align 8, !tbaa !139
  %201 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1
  %202 = load i32, ptr %201, align 8, !tbaa !139
  %203 = icmp eq i32 %200, %202
  br label %204

204:                                              ; preds = %147, %162, %198
  %205 = phi i1 [ %149, %147 ], [ %164, %162 ], [ %203, %198 ]
  br i1 %205, label %207, label %206, !prof !379

206:                                              ; preds = %144, %157, %152, %177, %194, %188, %204, %120
  br label %207

207:                                              ; preds = %127, %120, %204, %120, %206
  %208 = phi i32 [ 1, %206 ], [ 4, %120 ], [ 0, %204 ], [ 4, %120 ], [ 0, %127 ]
  switch i32 %208, label %215 [
    i32 0, label %209
    i32 4, label %209
  ], !prof !380

209:                                              ; preds = %207, %207
  %210 = add nuw nsw i64 %121, 1
  %211 = load ptr, ptr %116, align 8, !tbaa !139
  %212 = load i32, ptr %211, align 8, !tbaa !147
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %210, %213
  br i1 %214, label %120, label %215, !prof !381, !llvm.loop !382

215:                                              ; preds = %19, %207, %209, %115, %32, %111, %109, %1
  %216 = phi i32 [ 1, %1 ], [ 1, %109 ], [ 0, %111 ], [ 1, %32 ], [ 1, %115 ], [ 1, %209 ], [ 0, %207 ], [ 0, %19 ]
  ret i32 %216
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_last_value(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #13 !prof !127 {
  %5 = load ptr, ptr %1, align 8, !tbaa !128
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  %11 = icmp ne i32 %3, 0
  br label %12

12:                                               ; preds = %9, %95
  %13 = phi ptr [ %7, %9 ], [ %98, %95 ]
  %14 = phi ptr [ undef, %9 ], [ %96, %95 ]
  %15 = load i32, ptr %13, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %95 [
    i16 12, label %100
    i16 8, label %17
    i16 7, label %17
    i16 9, label %17
    i16 10, label %17
  ]

17:                                               ; preds = %12, %12, %12, %12
  %18 = and i32 %15, 65535
  %19 = add nsw i32 %18, -7
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @single_set_2(ptr noundef nonnull %13, ptr noundef nonnull %23)
  br label %29

29:                                               ; preds = %27, %21, %17
  %30 = phi ptr [ %28, %27 ], [ null, %17 ], [ %23, %21 ]
  %31 = load i32, ptr %13, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !139
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35, %44
  %40 = phi ptr [ %46, %44 ], [ %37, %35 ]
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 16711680
  %43 = icmp eq i32 %42, 262144
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !139
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39, !llvm.loop !333

48:                                               ; preds = %39, %44, %35, %29
  %49 = phi ptr [ null, %29 ], [ null, %35 ], [ null, %44 ], [ %40, %39 ]
  %50 = icmp eq ptr %30, null
  br i1 %50, label %87, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !139
  %54 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %53) #28
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %87, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !139
  %59 = icmp eq ptr %49, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !139
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 3
  %66 = select i1 %65, ptr %58, ptr %62
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi ptr [ %58, %56 ], [ %66, %60 ]
  br i1 %10, label %74, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !139
  %72 = tail call i32 @modified_between_p(ptr noundef %68, ptr noundef %71, ptr noundef nonnull %2), !range !228
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69, %67
  %75 = load i32, ptr %68, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 37
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !139
  %81 = icmp ugt i32 %80, 52
  %82 = or i1 %11, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %74
  store ptr %13, ptr %1, align 8, !tbaa !128
  br label %84

84:                                               ; preds = %78, %69, %83
  %85 = phi ptr [ %68, %83 ], [ %14, %69 ], [ %14, %78 ]
  %86 = phi i1 [ false, %83 ], [ true, %69 ], [ true, %78 ]
  br i1 %86, label %87, label %92

87:                                               ; preds = %84, %51, %48
  %88 = phi ptr [ %85, %84 ], [ %14, %51 ], [ %14, %48 ]
  %89 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %13), !range !228
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 0, i32 2
  br label %92

92:                                               ; preds = %84, %87
  %93 = phi ptr [ %88, %87 ], [ %85, %84 ]
  %94 = phi i32 [ %91, %87 ], [ 1, %84 ]
  switch i32 %94, label %101 [
    i32 0, label %95
    i32 2, label %100
  ]

95:                                               ; preds = %12, %92
  %96 = phi ptr [ %93, %92 ], [ %14, %12 ]
  %97 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !139
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %12, !llvm.loop !383

100:                                              ; preds = %92, %95, %12
  br label %101

101:                                              ; preds = %92, %100, %4
  %102 = phi ptr [ %0, %4 ], [ %0, %100 ], [ %93, %92 ]
  ret ptr %102
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #11 !prof !384 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %147, label %6, !prof !156

6:                                                ; preds = %4, %95
  %7 = phi ptr [ %97, %95 ], [ %2, %4 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -23
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 31)
  switch i32 %11, label %99 [
    i32 7, label %12
    i32 8, label %38
    i32 1, label %59
    i32 0, label %59
  ], !prof !385

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !139
  %15 = icmp eq i32 %14, 7
  %16 = and i32 %14, -5
  %17 = icmp eq i32 %16, 16
  %18 = or i1 %15, %17
  %19 = add i32 %0, -53
  %20 = icmp ult i32 %19, 5
  %21 = and i1 %20, %18
  br i1 %21, label %147, label %22, !prof !386

22:                                               ; preds = %12
  %23 = icmp ult i32 %14, %1
  br i1 %23, label %24, label %147, !prof !387

24:                                               ; preds = %22
  %25 = icmp ult i32 %14, 53
  br i1 %25, label %26, label %34, !prof !388

26:                                               ; preds = %24
  %27 = lshr i32 %8, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %14 to i64
  %30 = zext nneg i32 %28 to i64
  %31 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %29, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !139
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %24, %26
  %35 = phi i32 [ %33, %26 ], [ 1, %24 ]
  %36 = add i32 %35, %14
  %37 = icmp ugt i32 %36, %0
  br label %147

38:                                               ; preds = %6
  %39 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !139
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %99, !prof !389

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !139
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %48, label %99, !prof !390

48:                                               ; preds = %44
  %49 = tail call i32 @subreg_regno(ptr noundef nonnull %7)
  %50 = icmp ult i32 %49, 53
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call i32 @subreg_nregs(ptr noundef nonnull %7)
  br label %53

53:                                               ; preds = %48, %51
  %54 = phi i32 [ %52, %51 ], [ 1, %48 ]
  %55 = add i32 %54, %49
  %56 = icmp ult i32 %49, %1
  %57 = icmp ugt i32 %55, %0
  %58 = select i1 %56, i1 %57, i1 false
  br label %147

59:                                               ; preds = %6, %6
  %60 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %90, label %62, !prof !391

62:                                               ; preds = %59
  %63 = load ptr, ptr %60, align 8, !tbaa !139
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 39
  br i1 %66, label %67, label %82, !prof !392

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = icmp eq ptr %68, %3
  br i1 %69, label %82, label %70, !prof !393

70:                                               ; preds = %67
  %71 = load ptr, ptr %68, align 8, !tbaa !139
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %82, !prof !394

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !139
  %78 = icmp ugt i32 %77, 52
  br i1 %78, label %79, label %82, !prof !394

79:                                               ; preds = %75
  %80 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %71, ptr noundef %3)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %147, !prof !394

82:                                               ; preds = %79, %75, %70, %67, %62
  %83 = load ptr, ptr %60, align 8, !tbaa !139
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %90, label %87, !prof !395

87:                                               ; preds = %82
  %88 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %83, ptr noundef %3)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %147, !prof !396

90:                                               ; preds = %87, %82, %59
  %91 = icmp eq i32 %9, 25
  %92 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = icmp eq ptr %92, %3
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %147, label %95, !prof !397

95:                                               ; preds = %117, %90
  %96 = phi ptr [ %92, %90 ], [ %107, %117 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !139
  %98 = icmp eq ptr %97, null
  br i1 %98, label %147, label %6, !prof !398

99:                                               ; preds = %6, %38, %44
  %100 = zext nneg i32 %9 to i64
  %101 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !128
  %103 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %100
  %104 = load i8, ptr %103, align 1, !tbaa !139
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %147, label %106, !prof !399

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %108 = zext i8 %104 to i64
  br label %109

109:                                              ; preds = %106, %145
  %110 = phi i64 [ %108, %106 ], [ %111, %145 ]
  %111 = add nsw i64 %110, -1
  %112 = getelementptr inbounds i8, ptr %102, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !139
  switch i8 %113, label %145 [
    i8 101, label %114
    i8 69, label %125
  ], !prof !400

114:                                              ; preds = %109
  %115 = getelementptr inbounds [1 x %union.rtunion_def], ptr %107, i64 0, i64 %111
  %116 = icmp eq ptr %115, %3
  br i1 %116, label %123, label %117, !prof !401

117:                                              ; preds = %114
  %118 = icmp eq i64 %111, 0
  br i1 %118, label %95, label %119, !prof !402

119:                                              ; preds = %117
  %120 = load ptr, ptr %115, align 8, !tbaa !139
  %121 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %120, ptr noundef %3)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %145, label %147, !prof !403

123:                                              ; preds = %114
  %124 = icmp eq i8 %113, 69
  br i1 %124, label %125, label %145, !prof !404

125:                                              ; preds = %109, %123
  %126 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %127 = getelementptr inbounds [1 x %union.rtunion_def], ptr %126, i64 0, i64 %111
  %128 = load ptr, ptr %127, align 8, !tbaa !139
  %129 = load i32, ptr %128, align 8, !tbaa !147
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %145, label %131, !prof !405

131:                                              ; preds = %125
  %132 = zext nneg i32 %129 to i64
  br label %133

133:                                              ; preds = %131, %143
  %134 = phi i64 [ %132, %131 ], [ %135, %143 ]
  %135 = add nsw i64 %134, -1
  %136 = load ptr, ptr %127, align 8, !tbaa !139
  %137 = getelementptr inbounds %struct.rtvec_def, ptr %136, i64 0, i32 1, i64 %135
  %138 = icmp eq ptr %137, %3
  br i1 %138, label %143, label %139, !prof !406

139:                                              ; preds = %133
  %140 = load ptr, ptr %137, align 8, !tbaa !128
  %141 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %1, ptr noundef %140, ptr noundef %3)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147, !prof !407

143:                                              ; preds = %133, %139
  %144 = icmp slt i64 %134, 2
  br i1 %144, label %145, label %133, !prof !408, !llvm.loop !409

145:                                              ; preds = %143, %125, %109, %119, %123
  %146 = icmp sgt i64 %110, 1
  br i1 %146, label %109, label %147, !prof !410, !llvm.loop !411

147:                                              ; preds = %95, %90, %79, %87, %99, %119, %145, %139, %4, %22, %34, %12, %53
  %148 = phi i1 [ %58, %53 ], [ true, %12 ], [ false, %22 ], [ %37, %34 ], [ false, %4 ], [ true, %139 ], [ false, %145 ], [ true, %119 ], [ true, %87 ], [ true, %79 ], [ false, %90 ], [ false, %95 ], [ false, %99 ]
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @subreg_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !127 {
  %2 = alloca %struct.subreg_info, align 4
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !139
  %7 = load i32, ptr %4, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #28
  call void @subreg_get_info(i32 noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef %14, ptr noundef nonnull %2)
  %15 = load i32, ptr %2, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #28
  %16 = add i32 %15, %6
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @subreg_nregs(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !412 {
  %2 = alloca %struct.subreg_info, align 4
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #28
  %7 = load i32, ptr %4, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  call void @subreg_get_info(i32 noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef %14, ptr noundef nonnull %2)
  %15 = getelementptr inbounds %struct.subreg_info, ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !236
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #28
  ret i32 %16
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @note_uses(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !413 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %100 [
    i16 14, label %9
    i16 15, label %12
    i16 5, label %25
    i16 24, label %40
    i16 17, label %42
    i16 29, label %55
    i16 22, label %57
    i16 18, label %59
    i16 19, label %59
    i16 25, label %72
    i16 23, label %80
  ], !prof !414

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %10, ptr noundef %2) #28
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %4

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = load i32, ptr %14, align 8, !tbaa !147
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %101, !prof !415

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %18, %17 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %13, align 8, !tbaa !139
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %21
  tail call void @note_uses(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2)
  %24 = icmp sgt i64 %20, 1
  br i1 %24, label %19, label %101, !prof !416, !llvm.loop !417

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !139
  %28 = load i32, ptr %27, align 8, !tbaa !147
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %101

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !139
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !128
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1
  tail call void @note_uses(ptr noundef nonnull %38, ptr noundef %1, ptr noundef %2)
  %39 = icmp sgt i64 %33, 1
  br i1 %39, label %32, label %101, !llvm.loop !418

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %41, ptr noundef %2) #28, !prof !419
  br label %101

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !139
  %45 = load i32, ptr %44, align 8, !tbaa !147
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %42
  %48 = zext nneg i32 %45 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %51, %49 ]
  %51 = add nsw i64 %50, -1
  %52 = load ptr, ptr %43, align 8, !tbaa !139
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  tail call void %1(ptr noundef nonnull %53, ptr noundef %2) #28
  %54 = icmp sgt i64 %50, 1
  br i1 %54, label %49, label %101, !llvm.loop !420

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %56, ptr noundef %2) #28
  br label %101

57:                                               ; preds = %4
  %58 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %58, ptr noundef %2) #28
  br label %101

59:                                               ; preds = %4, %4
  %60 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !139
  %62 = load i32, ptr %61, align 8, !tbaa !147
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  %65 = zext nneg i32 %62 to i64
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %65, %64 ], [ %68, %66 ]
  %68 = add nsw i64 %67, -1
  %69 = load ptr, ptr %60, align 8, !tbaa !139
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %68
  tail call void %1(ptr noundef nonnull %70, ptr noundef %2) #28
  %71 = icmp sgt i64 %67, 1
  br i1 %71, label %66, label %101, !llvm.loop !421

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !139
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %101, !prof !422

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %79, ptr noundef %2) #28, !prof !423
  br label %101

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !139
  %83 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %1(ptr noundef nonnull %83, ptr noundef %2) #28, !prof !424
  %84 = load i32, ptr %82, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 120
  br i1 %86, label %87, label %90, !prof !425

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %1(ptr noundef nonnull %88, ptr noundef %2) #28
  %89 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %1(ptr noundef nonnull %89, ptr noundef %2) #28
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %95
  %92 = phi ptr [ %97, %95 ], [ %82, %90 ]
  %93 = load i32, ptr %92, align 8
  %94 = trunc i32 %93 to i16
  switch i16 %94, label %101 [
    i16 39, label %95
    i16 40, label %95
    i16 43, label %98
  ], !prof !426

95:                                               ; preds = %91, %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !139
  br label %91, !llvm.loop !427

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  tail call void %1(ptr noundef nonnull %99, ptr noundef %2) #28, !prof !428
  br label %101

100:                                              ; preds = %4
  tail call void %1(ptr noundef nonnull %5, ptr noundef %2) #28, !prof !429
  br label %101

101:                                              ; preds = %91, %66, %49, %32, %19, %59, %42, %25, %12, %98, %72, %78, %100, %57, %55, %40
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @dead_or_set_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !430 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %5 [
    i16 46, label %258
    i16 37, label %6
  ], !prof !431

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1585, ptr noundef nonnull @.str.1) #28
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !139
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %19, !prof !432

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %8 to i64
  %15 = zext nneg i32 %13 to i64
  %16 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %14, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !139
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %6, %10
  %20 = phi i32 [ %18, %10 ], [ 1, %6 ]
  %21 = add i32 %20, %8
  %22 = icmp ult i32 %8, %21
  br i1 %22, label %23, label %258, !prof !433

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  br label %32

29:                                               ; preds = %255
  %30 = add nuw i32 %33, 1
  %31 = icmp eq i32 %30, %21
  br i1 %31, label %258, label %32, !prof !434, !llvm.loop !435

32:                                               ; preds = %23, %29
  %33 = phi i32 [ %8, %23 ], [ %30, %29 ]
  br i1 %27, label %34, label %70, !prof !436

34:                                               ; preds = %32
  %35 = load ptr, ptr %28, align 8, !tbaa !139
  %36 = icmp eq ptr %35, null
  br i1 %36, label %70, label %37, !prof !437

37:                                               ; preds = %34, %66
  %38 = phi ptr [ %68, %66 ], [ %35, %34 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 16711680
  %41 = icmp eq i32 %40, 65536
  br i1 %41, label %42, label %66, !prof !438

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !139
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 37
  br i1 %47, label %48, label %66, !prof !439

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !139
  %51 = icmp ugt i32 %50, %33
  br i1 %51, label %66, label %52, !prof !440

52:                                               ; preds = %48
  %53 = icmp ult i32 %50, 53
  br i1 %53, label %54, label %62, !prof !441

54:                                               ; preds = %52
  %55 = lshr i32 %45, 16
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %50 to i64
  %58 = zext nneg i32 %56 to i64
  %59 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %57, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !139
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %54, %52
  %63 = phi i32 [ %61, %54 ], [ 1, %52 ]
  %64 = add i32 %63, %50
  %65 = icmp ugt i32 %64, %33
  br i1 %65, label %255, label %66, !prof !442

66:                                               ; preds = %62, %48, %42, %37
  %67 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !139
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %37, !prof !443, !llvm.loop !444

70:                                               ; preds = %66, %34, %32
  %71 = icmp eq i32 %25, 10
  br i1 %71, label %72, label %75, !prof !445

72:                                               ; preds = %70
  %73 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef 25, i32 noundef %33)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %255

75:                                               ; preds = %72, %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !139
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 14
  br i1 %80, label %81, label %84, !prof !445

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !139
  br label %84

84:                                               ; preds = %81, %75
  %85 = phi ptr [ %83, %81 ], [ %77, %75 ]
  %86 = load i32, ptr %85, align 8
  %87 = trunc i32 %86 to i16
  switch i16 %87, label %255 [
    i16 23, label %88
    i16 15, label %158
  ], !prof !446

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !139
  %91 = load i32, ptr %90, align 8
  %92 = trunc i32 %91 to i16
  switch i16 %92, label %134 [
    i16 15, label %93
    i16 39, label %113
  ], !prof !447

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !139
  %96 = load i32, ptr %95, align 8, !tbaa !147
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %255

98:                                               ; preds = %93
  %99 = zext nneg i32 %96 to i64
  br label %100

100:                                              ; preds = %111, %98
  %101 = phi i64 [ %99, %98 ], [ %102, %111 ]
  %102 = add nsw i64 %101, -1
  %103 = getelementptr inbounds %struct.rtvec_def, ptr %95, i64 0, i32 1, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !128
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !139
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %106, i32 noundef %33), !range !448
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %255

111:                                              ; preds = %108, %100
  %112 = icmp sgt i64 %101, 1
  br i1 %112, label %100, label %255, !llvm.loop !449

113:                                              ; preds = %88
  %114 = lshr i32 %91, 16
  %115 = and i32 %114, 255
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !139
  %119 = zext i8 %118 to i32
  %120 = add nuw nsw i32 %119, 3
  %121 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !139
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !139
  %129 = zext i8 %128 to i32
  %130 = add nuw nsw i32 %129, 3
  %131 = xor i32 %130, %120
  %132 = icmp ult i32 %131, 4
  %133 = select i1 %132, ptr %122, ptr %90
  br label %134

134:                                              ; preds = %113, %88
  %135 = phi ptr [ %133, %113 ], [ %90, %88 ]
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 37
  br i1 %138, label %139, label %255, !prof !450

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !139
  %142 = icmp ult i32 %141, 53
  br i1 %142, label %143, label %151, !prof !451

143:                                              ; preds = %139
  %144 = lshr i32 %136, 16
  %145 = and i32 %144, 255
  %146 = zext nneg i32 %141 to i64
  %147 = zext nneg i32 %145 to i64
  %148 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %146, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !139
  %150 = zext i8 %149 to i32
  br label %151

151:                                              ; preds = %143, %139
  %152 = phi i32 [ %150, %143 ], [ 1, %139 ]
  %153 = add i32 %152, %141
  %154 = icmp ule i32 %141, %33
  %155 = icmp ugt i32 %153, %33
  %156 = select i1 %154, i1 %155, i1 false, !prof !452
  %157 = zext i1 %156 to i32
  br label %255

158:                                              ; preds = %84
  %159 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !139
  %161 = load i32, ptr %160, align 8, !tbaa !147
  %162 = icmp slt i32 %161, 1
  br i1 %162, label %255, label %163, !prof !453

163:                                              ; preds = %158
  %164 = zext nneg i32 %161 to i64
  br label %165

165:                                              ; preds = %253, %163
  %166 = phi i64 [ %164, %163 ], [ %167, %253 ]
  %167 = add nsw i64 %166, -1
  %168 = getelementptr inbounds %struct.rtvec_def, ptr %160, i64 0, i32 1, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !128
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 14
  br i1 %172, label %173, label %176, !prof !454

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load ptr, ptr %174, align 8, !tbaa !139
  br label %176

176:                                              ; preds = %173, %165
  %177 = phi ptr [ %175, %173 ], [ %169, %165 ]
  %178 = load i32, ptr %177, align 8
  %179 = trunc i32 %178 to i16
  switch i16 %179, label %253 [
    i16 23, label %180
    i16 25, label %180
  ], !prof !455

180:                                              ; preds = %176, %176
  %181 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !139
  %183 = load i32, ptr %182, align 8
  %184 = trunc i32 %183 to i16
  switch i16 %184, label %226 [
    i16 15, label %185
    i16 39, label %205
  ], !prof !447

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !139
  %188 = load i32, ptr %187, align 8, !tbaa !147
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %250

190:                                              ; preds = %185
  %191 = zext nneg i32 %188 to i64
  br label %192

192:                                              ; preds = %203, %190
  %193 = phi i64 [ %191, %190 ], [ %194, %203 ]
  %194 = add nsw i64 %193, -1
  %195 = getelementptr inbounds %struct.rtvec_def, ptr %187, i64 0, i32 1, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !128
  %197 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !139
  %199 = icmp eq ptr %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %192
  %201 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %198, i32 noundef %33), !range !448
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %250

203:                                              ; preds = %200, %192
  %204 = icmp sgt i64 %193, 1
  br i1 %204, label %192, label %250, !llvm.loop !449

205:                                              ; preds = %180
  %206 = lshr i32 %183, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !139
  %211 = zext i8 %210 to i32
  %212 = add nuw nsw i32 %211, 3
  %213 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !139
  %215 = load i32, ptr %214, align 8
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !139
  %221 = zext i8 %220 to i32
  %222 = add nuw nsw i32 %221, 3
  %223 = xor i32 %222, %212
  %224 = icmp ult i32 %223, 4
  %225 = select i1 %224, ptr %214, ptr %182
  br label %226

226:                                              ; preds = %205, %180
  %227 = phi ptr [ %225, %205 ], [ %182, %180 ]
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 37
  br i1 %230, label %231, label %250, !prof !450

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1
  %233 = load i32, ptr %232, align 8, !tbaa !139
  %234 = icmp ult i32 %233, 53
  br i1 %234, label %235, label %243, !prof !451

235:                                              ; preds = %231
  %236 = lshr i32 %228, 16
  %237 = and i32 %236, 255
  %238 = zext nneg i32 %233 to i64
  %239 = zext nneg i32 %237 to i64
  %240 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %238, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !139
  %242 = zext i8 %241 to i32
  br label %243

243:                                              ; preds = %235, %231
  %244 = phi i32 [ %242, %235 ], [ 1, %231 ]
  %245 = add i32 %244, %233
  %246 = icmp ule i32 %233, %33
  %247 = icmp ugt i32 %245, %33
  %248 = select i1 %246, i1 %247, i1 false, !prof !452
  %249 = zext i1 %248 to i8
  br label %250

250:                                              ; preds = %203, %200, %243, %226, %185
  %251 = phi i8 [ %249, %243 ], [ 0, %226 ], [ 0, %185 ], [ 1, %200 ], [ 0, %203 ]
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %255, !prof !456

253:                                              ; preds = %250, %176
  %254 = icmp slt i64 %166, 2
  br i1 %254, label %255, label %165, !prof !457, !llvm.loop !458

255:                                              ; preds = %62, %250, %253, %108, %111, %72, %84, %93, %134, %151, %158
  %256 = phi i32 [ 1, %72 ], [ 0, %84 ], [ %157, %151 ], [ 0, %134 ], [ 0, %93 ], [ 0, %158 ], [ 1, %108 ], [ 0, %111 ], [ 0, %253 ], [ 1, %250 ], [ 1, %62 ]
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %29, !prof !459

258:                                              ; preds = %255, %29, %19, %2
  %259 = phi i32 [ 1, %2 ], [ 1, %19 ], [ 1, %29 ], [ 0, %255 ]
  ret i32 %259
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dead_or_set_regno_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !127 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %44, !prof !436

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11, !prof !437

11:                                               ; preds = %7, %40
  %12 = phi ptr [ %42, %40 ], [ %9, %7 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 16711680
  %15 = icmp eq i32 %14, 65536
  br i1 %15, label %16, label %40, !prof !438

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %40, !prof !439

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !139
  %25 = icmp ugt i32 %24, %1
  br i1 %25, label %40, label %26, !prof !440

26:                                               ; preds = %22
  %27 = icmp ult i32 %24, 53
  br i1 %27, label %28, label %36, !prof !441

28:                                               ; preds = %26
  %29 = lshr i32 %19, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %24 to i64
  %32 = zext nneg i32 %30 to i64
  %33 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !139
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %28, %26
  %37 = phi i32 [ %35, %28 ], [ 1, %26 ]
  %38 = add i32 %37, %24
  %39 = icmp ugt i32 %38, %1
  br i1 %39, label %229, label %40, !prof !442

40:                                               ; preds = %36, %22, %16, %11
  %41 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !139
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %11, !prof !443, !llvm.loop !444

44:                                               ; preds = %40, %7, %2
  %45 = icmp eq i32 %4, 10
  br i1 %45, label %46, label %49, !prof !445

46:                                               ; preds = %44
  %47 = tail call i32 @find_regno_fusage(ptr noundef nonnull %0, i32 noundef 25, i32 noundef %1)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %229

49:                                               ; preds = %46, %44
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 14
  br i1 %54, label %55, label %58, !prof !445

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !139
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %57, %55 ], [ %51, %49 ]
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  switch i16 %61, label %229 [
    i16 23, label %62
    i16 15, label %132
  ], !prof !446

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !139
  %65 = load i32, ptr %64, align 8
  %66 = trunc i32 %65 to i16
  switch i16 %66, label %108 [
    i16 15, label %67
    i16 39, label %87
  ], !prof !447

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !139
  %70 = load i32, ptr %69, align 8, !tbaa !147
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %229

72:                                               ; preds = %67
  %73 = zext nneg i32 %70 to i64
  br label %74

74:                                               ; preds = %85, %72
  %75 = phi i64 [ %73, %72 ], [ %76, %85 ]
  %76 = add nsw i64 %75, -1
  %77 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !128
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !139
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %80, i32 noundef %1), !range !448
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %229

85:                                               ; preds = %82, %74
  %86 = icmp sgt i64 %75, 1
  br i1 %86, label %74, label %229, !llvm.loop !449

87:                                               ; preds = %62
  %88 = lshr i32 %65, 16
  %89 = and i32 %88, 255
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !139
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %93, 3
  %95 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !139
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !139
  %103 = zext i8 %102 to i32
  %104 = add nuw nsw i32 %103, 3
  %105 = xor i32 %104, %94
  %106 = icmp ult i32 %105, 4
  %107 = select i1 %106, ptr %96, ptr %64
  br label %108

108:                                              ; preds = %87, %62
  %109 = phi ptr [ %107, %87 ], [ %64, %62 ]
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 37
  br i1 %112, label %113, label %229, !prof !450

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !139
  %116 = icmp ult i32 %115, 53
  br i1 %116, label %117, label %125, !prof !451

117:                                              ; preds = %113
  %118 = lshr i32 %110, 16
  %119 = and i32 %118, 255
  %120 = zext nneg i32 %115 to i64
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %120, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !139
  %124 = zext i8 %123 to i32
  br label %125

125:                                              ; preds = %117, %113
  %126 = phi i32 [ %124, %117 ], [ 1, %113 ]
  %127 = add i32 %126, %115
  %128 = icmp ule i32 %115, %1
  %129 = icmp ugt i32 %127, %1
  %130 = select i1 %128, i1 %129, i1 false, !prof !452
  %131 = zext i1 %130 to i32
  br label %229

132:                                              ; preds = %58
  %133 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !139
  %135 = load i32, ptr %134, align 8, !tbaa !147
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %229, label %137, !prof !453

137:                                              ; preds = %132
  %138 = zext nneg i32 %135 to i64
  br label %139

139:                                              ; preds = %137, %227
  %140 = phi i64 [ %138, %137 ], [ %141, %227 ]
  %141 = add nsw i64 %140, -1
  %142 = getelementptr inbounds %struct.rtvec_def, ptr %134, i64 0, i32 1, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !128
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 14
  br i1 %146, label %147, label %150, !prof !454

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !139
  br label %150

150:                                              ; preds = %147, %139
  %151 = phi ptr [ %149, %147 ], [ %143, %139 ]
  %152 = load i32, ptr %151, align 8
  %153 = trunc i32 %152 to i16
  switch i16 %153, label %227 [
    i16 23, label %154
    i16 25, label %154
  ], !prof !455

154:                                              ; preds = %150, %150
  %155 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !139
  %157 = load i32, ptr %156, align 8
  %158 = trunc i32 %157 to i16
  switch i16 %158, label %200 [
    i16 15, label %159
    i16 39, label %179
  ], !prof !447

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !139
  %162 = load i32, ptr %161, align 8, !tbaa !147
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %224

164:                                              ; preds = %159
  %165 = zext nneg i32 %162 to i64
  br label %166

166:                                              ; preds = %177, %164
  %167 = phi i64 [ %165, %164 ], [ %168, %177 ]
  %168 = add nsw i64 %167, -1
  %169 = getelementptr inbounds %struct.rtvec_def, ptr %161, i64 0, i32 1, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !128
  %171 = getelementptr inbounds %struct.rtx_def, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !139
  %173 = icmp eq ptr %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %166
  %175 = tail call fastcc zeroext i8 @covers_regno_no_parallel_p(ptr noundef nonnull %172, i32 noundef %1), !range !448
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %224

177:                                              ; preds = %174, %166
  %178 = icmp sgt i64 %167, 1
  br i1 %178, label %166, label %224, !llvm.loop !449

179:                                              ; preds = %154
  %180 = lshr i32 %157, 16
  %181 = and i32 %180, 255
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !139
  %185 = zext i8 %184 to i32
  %186 = add nuw nsw i32 %185, 3
  %187 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !139
  %189 = load i32, ptr %188, align 8
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !139
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %195, 3
  %197 = xor i32 %196, %186
  %198 = icmp ult i32 %197, 4
  %199 = select i1 %198, ptr %188, ptr %156
  br label %200

200:                                              ; preds = %179, %154
  %201 = phi ptr [ %199, %179 ], [ %156, %154 ]
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 37
  br i1 %204, label %205, label %224, !prof !450

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !139
  %208 = icmp ult i32 %207, 53
  br i1 %208, label %209, label %217, !prof !451

209:                                              ; preds = %205
  %210 = lshr i32 %202, 16
  %211 = and i32 %210, 255
  %212 = zext nneg i32 %207 to i64
  %213 = zext nneg i32 %211 to i64
  %214 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %212, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !139
  %216 = zext i8 %215 to i32
  br label %217

217:                                              ; preds = %209, %205
  %218 = phi i32 [ %216, %209 ], [ 1, %205 ]
  %219 = add i32 %218, %207
  %220 = icmp ule i32 %207, %1
  %221 = icmp ugt i32 %219, %1
  %222 = select i1 %220, i1 %221, i1 false, !prof !452
  %223 = zext i1 %222 to i8
  br label %224

224:                                              ; preds = %174, %177, %159, %200, %217
  %225 = phi i8 [ %223, %217 ], [ 0, %200 ], [ 0, %159 ], [ 1, %174 ], [ 0, %177 ]
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %229, !prof !456

227:                                              ; preds = %150, %224
  %228 = icmp slt i64 %140, 2
  br i1 %228, label %229, label %139, !prof !457, !llvm.loop !458

229:                                              ; preds = %36, %224, %227, %85, %82, %132, %125, %108, %67, %58, %46
  %230 = phi i32 [ 1, %46 ], [ 0, %58 ], [ %131, %125 ], [ 0, %108 ], [ 0, %67 ], [ 0, %132 ], [ 1, %82 ], [ 0, %85 ], [ 0, %227 ], [ 1, %224 ], [ 1, %36 ]
  ret i32 %230
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_regno_note(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 !prof !460 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %46, !prof !436

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12, !prof !437

12:                                               ; preds = %8, %42
  %13 = phi ptr [ %44, %42 ], [ %10, %8 ]
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %42, !prof !438

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %42, !prof !439

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !139
  %27 = icmp ugt i32 %26, %2
  br i1 %27, label %42, label %28, !prof !440

28:                                               ; preds = %24
  %29 = icmp ult i32 %26, 53
  br i1 %29, label %30, label %38, !prof !441

30:                                               ; preds = %28
  %31 = lshr i32 %21, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %26 to i64
  %34 = zext nneg i32 %32 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !139
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %28, %30
  %39 = phi i32 [ %37, %30 ], [ 1, %28 ]
  %40 = add i32 %39, %26
  %41 = icmp ugt i32 %40, %2
  br i1 %41, label %46, label %42, !prof !442

42:                                               ; preds = %12, %18, %24, %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !139
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %12, !prof !443, !llvm.loop !444

46:                                               ; preds = %38, %42, %8, %3
  %47 = phi ptr [ null, %3 ], [ null, %8 ], [ null, %42 ], [ %13, %38 ]
  ret ptr %47
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @find_regno_fusage(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 !prof !127 {
  %4 = icmp ugt i32 %2, 52
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %44

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %9, %40
  %14 = phi ptr [ %42, %40 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !139
  %29 = icmp ugt i32 %28, %2
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = lshr i32 %23, 16
  %32 = and i32 %31, 255
  %33 = zext i32 %28 to i64
  %34 = zext nneg i32 %32 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !139
  %37 = zext i8 %36 to i32
  %38 = add i32 %28, %37
  %39 = icmp ugt i32 %38, %2
  br i1 %39, label %44, label %40

40:                                               ; preds = %30, %26, %20, %13
  %41 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !139
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !llvm.loop !461

44:                                               ; preds = %30, %40, %9, %3, %5
  %45 = phi i32 [ 0, %5 ], [ 0, %3 ], [ 0, %9 ], [ 0, %40 ], [ 1, %30 ]
  ret i32 %45
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @find_reg_equal_equiv_note(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !462 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %48, !prof !463

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10, !prof !464

10:                                               ; preds = %6, %44
  %11 = phi ptr [ %46, %44 ], [ %8, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = add nsw i32 %14, -3
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %44, !prof !465

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %48, !prof !466

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !139
  %26 = load i32, ptr %25, align 8, !tbaa !147
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48, !prof !357

28:                                               ; preds = %23
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %40, %28
  %31 = phi i64 [ 0, %28 ], [ %42, %40 ]
  %32 = phi i32 [ 0, %28 ], [ %41, %40 ]
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 23
  br i1 %37, label %38, label %40, !prof !358

38:                                               ; preds = %30
  %39 = icmp eq i32 %32, 0
  br i1 %39, label %40, label %48, !prof !359

40:                                               ; preds = %38, %30
  %41 = phi i32 [ %32, %30 ], [ 1, %38 ]
  %42 = add nuw nsw i64 %31, 1
  %43 = icmp eq i64 %42, %29
  br i1 %43, label %48, label %30, !prof !360, !llvm.loop !361

44:                                               ; preds = %10
  %45 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !139
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !prof !467, !llvm.loop !468

48:                                               ; preds = %44, %40, %38, %6, %23, %17, %1
  %49 = phi ptr [ null, %1 ], [ %11, %17 ], [ %11, %23 ], [ null, %6 ], [ null, %38 ], [ %11, %40 ], [ null, %44 ]
  ret ptr %49
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @find_constant_src(ptr noundef %0) local_unnamed_addr #13 !prof !127 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8)
  br label %14

14:                                               ; preds = %1, %6, %12
  %15 = phi ptr [ %13, %12 ], [ null, %1 ], [ %8, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = tail call ptr @avoid_constant_pool_reference(ptr noundef %19) #28
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !143
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %40, label %27

27:                                               ; preds = %17, %14
  %28 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !143
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %40, label %39

39:                                               ; preds = %30, %27
  br label %40

40:                                               ; preds = %30, %17, %39
  %41 = phi ptr [ null, %39 ], [ %20, %17 ], [ %32, %30 ]
  ret ptr %41
}

declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @alloc_reg_note(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !469 {
  %4 = add i32 %0, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %12, !prof !470

6:                                                ; preds = %3
  %7 = tail call ptr @alloc_INSN_LIST(ptr noundef %1, ptr noundef %2) #28
  %8 = load i32, ptr %7, align 8
  %9 = shl nuw nsw i32 %0, 16
  %10 = and i32 %8, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %7, align 8
  br label %14

12:                                               ; preds = %3
  %13 = tail call ptr @alloc_EXPR_LIST(i32 noundef %0, ptr noundef %1, ptr noundef %2) #28
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ]
  ret ptr %15
}

declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @add_reg_note(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !471 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = add i32 %1, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %14, !prof !470

8:                                                ; preds = %3
  %9 = tail call ptr @alloc_INSN_LIST(ptr noundef %2, ptr noundef %5) #28
  %10 = load i32, ptr %9, align 8
  %11 = shl nuw nsw i32 %1, 16
  %12 = and i32 %10, -16711681
  %13 = or disjoint i32 %12, %11
  store i32 %13, ptr %9, align 8
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @alloc_EXPR_LIST(i32 noundef %1, ptr noundef %2, ptr noundef %5) #28
  br label %16

16:                                               ; preds = %8, %14
  %17 = phi ptr [ %15, %14 ], [ %9, %8 ]
  store ptr %17, ptr %4, align 8, !tbaa !139
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_note(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #15 !prof !472 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4, !prof !473

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %17, label %8, !prof !474

8:                                                ; preds = %4, %11
  %9 = phi ptr [ %13, %11 ], [ %6, %4 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !475

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %8, !prof !476, !llvm.loop !477

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ %16, %15 ], [ %5, %4 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  store ptr %20, ptr %18, align 8, !tbaa !139
  br label %21

21:                                               ; preds = %8, %17
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, -3
  %26 = icmp ult i8 %25, 2
  br i1 %26, label %27, label %28, !prof !478

27:                                               ; preds = %21
  tail call void @df_notes_rescan(ptr noundef %0) #28
  br label %28

28:                                               ; preds = %27, %21, %2
  ret void
}

declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_reg_equal_equiv_notes(ptr nocapture noundef %0) local_unnamed_addr #18 !prof !127 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %18, %16 ], [ %3, %1 ]
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load i32, ptr %6, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -3
  %12 = icmp ult i32 %11, 2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %12, label %14, label %16

14:                                               ; preds = %5
  %15 = load ptr, ptr %13, align 8, !tbaa !139
  store ptr %15, ptr %7, align 8, !tbaa !128
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi ptr [ %7, %14 ], [ %13, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !479

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @in_expr_list_p(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #19 !prof !480 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !377

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !377, !llvm.loop !481

13:                                               ; preds = %4, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_node_from_expr_list(ptr noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #20 !prof !480 {
  %3 = load ptr, ptr %1, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5, !prof !377

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %21

9:                                                ; preds = %21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %21, !llvm.loop !482

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %3, %5 ], [ %24, %9 ]
  %15 = phi ptr [ null, %5 ], [ %22, %9 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = select i1 %16, ptr %1, ptr %19
  store ptr %18, ptr %20, align 8, !tbaa !139
  br label %26

21:                                               ; preds = %5, %9
  %22 = phi ptr [ %24, %9 ], [ %3, %5 ]
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !139
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !prof !377, !llvm.loop !482

26:                                               ; preds = %21, %13, %2
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_insn_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !483 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %9 [
    i16 44, label %52
    i16 45, label %52
    i16 30, label %52
    i16 35, label %52
    i16 32, label %52
    i16 31, label %52
    i16 33, label %52
    i16 46, label %52
    i16 36, label %52
    i16 37, label %52
    i16 38, label %52
    i16 25, label %52
    i16 20, label %52
    i16 21, label %52
    i16 26, label %52
    i16 43, label %52
    i16 19, label %5
    i16 16, label %6
    i16 17, label %6
  ], !prof !484

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !139
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %49, !prof !485

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %47
  %20 = phi i64 [ %18, %16 ], [ %22, %47 ]
  %21 = phi i1 [ %15, %16 ], [ %48, %47 ]
  %22 = add nsw i64 %20, -1
  %23 = getelementptr inbounds i8, ptr %12, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !139
  switch i8 %24, label %47 [
    i8 101, label %33
    i8 69, label %25
  ], !prof !486

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds [1 x %union.rtunion_def], ptr %26, i64 0, i64 %22
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = load i32, ptr %28, align 8, !tbaa !147
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %47, !prof !487

31:                                               ; preds = %25
  %32 = zext nneg i32 %29 to i64
  br label %41

33:                                               ; preds = %19
  %34 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %22
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  %36 = tail call i32 @volatile_insn_p(ptr noundef %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %49, !prof !488

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %32
  br i1 %40, label %47, label %41, !prof !489, !llvm.loop !490

41:                                               ; preds = %31, %38
  %42 = phi i64 [ 0, %31 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = tail call i32 @volatile_insn_p(ptr noundef %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %38, label %49, !prof !491

47:                                               ; preds = %38, %25, %19, %33
  %48 = icmp sgt i64 %20, 1
  br i1 %48, label %19, label %49, !prof !492, !llvm.loop !493

49:                                               ; preds = %33, %47, %41, %9
  %50 = phi i1 [ %15, %9 ], [ %21, %41 ], [ %48, %47 ], [ %21, %33 ]
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %49, %1, %5
  %53 = phi i32 [ 1, %5 ], [ 0, %1 ], [ %51, %49 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ]
  ret i32 %53
}

; Function Attrs: inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @volatile_refs_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !494 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %9 [
    i16 44, label %52
    i16 45, label %52
    i16 30, label %52
    i16 35, label %52
    i16 32, label %52
    i16 31, label %52
    i16 33, label %52
    i16 46, label %52
    i16 36, label %52
    i16 37, label %52
    i16 38, label %52
    i16 25, label %52
    i16 20, label %52
    i16 21, label %52
    i16 19, label %5
    i16 43, label %6
    i16 16, label %6
    i16 17, label %6
  ], !prof !495

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1, %1, %1
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52, !prof !496

9:                                                ; preds = %1, %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !139
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %49, !prof !497

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %47
  %20 = phi i64 [ %18, %16 ], [ %22, %47 ]
  %21 = phi i1 [ %15, %16 ], [ %48, %47 ]
  %22 = add nsw i64 %20, -1
  %23 = getelementptr inbounds i8, ptr %12, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !139
  switch i8 %24, label %47 [
    i8 101, label %33
    i8 69, label %25
  ], !prof !498

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds [1 x %union.rtunion_def], ptr %26, i64 0, i64 %22
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = load i32, ptr %28, align 8, !tbaa !147
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %47, !prof !499

31:                                               ; preds = %25
  %32 = zext nneg i32 %29 to i64
  br label %41

33:                                               ; preds = %19
  %34 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %22
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  %36 = tail call i32 @volatile_refs_p(ptr noundef %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %49, !prof !500

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %32
  br i1 %40, label %47, label %41, !prof !501, !llvm.loop !502

41:                                               ; preds = %31, %38
  %42 = phi i64 [ 0, %31 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = tail call i32 @volatile_refs_p(ptr noundef %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %38, label %49, !prof !503

47:                                               ; preds = %38, %25, %19, %33
  %48 = icmp sgt i64 %20, 1
  br i1 %48, label %19, label %49, !prof !504, !llvm.loop !505

49:                                               ; preds = %33, %47, %41, %9
  %50 = phi i1 [ %15, %9 ], [ %21, %41 ], [ %48, %47 ], [ %21, %33 ]
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %49, %1, %5
  %53 = phi i32 [ 1, %5 ], [ 0, %1 ], [ %51, %49 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %6 ]
  ret i32 %53
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @may_trap_p_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !506 {
  %3 = icmp ne i32 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %4, label %386, label %5, !prof !507

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = trunc i32 %6 to i16
  switch i16 %8, label %330 [
    i16 30, label %386
    i16 32, label %386
    i16 31, label %386
    i16 33, label %386
    i16 45, label %386
    i16 44, label %386
    i16 35, label %386
    i16 36, label %386
    i16 46, label %386
    i16 37, label %386
    i16 38, label %386
    i16 18, label %9
    i16 19, label %9
    i16 16, label %12
    i16 29, label %12
    i16 17, label %13
    i16 43, label %16
    i16 55, label %78
    i16 58, label %78
    i16 59, label %78
    i16 60, label %78
    i16 3, label %128
    i16 82, label %129
    i16 83, label %129
    i16 84, label %129
    i16 85, label %129
    i16 97, label %129
    i16 48, label %129
    i16 81, label %213
    i16 80, label %213
    i16 104, label %299
    i16 51, label %345
    i16 111, label %345
    i16 39, label %345
  ], !prof !508

9:                                                ; preds = %5, %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 63), align 8, !tbaa !509
  %11 = tail call i32 %10(ptr noundef nonnull %0, i32 noundef %1) #28
  br label %386

12:                                               ; preds = %5, %5
  br label %386

13:                                               ; preds = %5
  %14 = lshr i32 %6, 27
  %15 = and i32 %14, 1
  br label %386

16:                                               ; preds = %5
  %17 = load i32, ptr @flag_stack_check, align 4, !tbaa !143
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %6, 134217728
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %27, label %22, !prof !521

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !139
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !128
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %386, label %27

27:                                               ; preds = %22, %16
  %28 = and i32 %6, 33554432
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %3, %29
  br i1 %30, label %31, label %386, !prof !522

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !523

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !524
  %39 = icmp eq ptr %38, null
  br i1 %39, label %71, label %51, !prof !526

40:                                               ; preds = %31
  %41 = lshr i32 %6, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %71, label %44, !prof !527

44:                                               ; preds = %40
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !139
  %48 = zext i8 %47 to i64
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %48) #28
  %50 = icmp eq ptr %49, null
  br i1 %50, label %71, label %51, !prof !528

51:                                               ; preds = %44, %36
  %52 = load ptr, ptr %33, align 8, !tbaa !139
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54, !prof !529

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %52, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !524
  br label %67

57:                                               ; preds = %51
  %58 = load i32, ptr %0, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp ne i32 %60, 1
  tail call void @llvm.assume(i1 %61)
  %62 = zext nneg i32 %60 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !139
  %65 = zext i8 %64 to i64
  %66 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %65) #28
  br label %67

67:                                               ; preds = %57, %54
  %68 = phi ptr [ %56, %54 ], [ %66, %57 ]
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !139
  br label %71

71:                                               ; preds = %44, %36, %40, %67
  %72 = phi i64 [ %70, %67 ], [ 0, %40 ], [ 0, %36 ], [ 0, %44 ]
  %73 = load ptr, ptr %32, align 8, !tbaa !139
  %74 = load i32, ptr %0, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = tail call fastcc i32 @rtx_addr_can_trap_p_1(ptr noundef %73, i64 noundef 0, i64 noundef %72, i32 noundef %76)
  br label %386

78:                                               ; preds = %5, %5, %5, %5
  %79 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !143
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %78
  %82 = lshr i32 %6, 16
  %83 = and i32 %82, 255
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !139
  switch i8 %86, label %106 [
    i8 8, label %87
    i8 9, label %87
    i8 11, label %87
    i8 17, label %87
  ]

87:                                               ; preds = %81, %81, %81, %81
  %88 = and i8 %86, -2
  %89 = icmp eq i8 %88, 8
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %84
  %92 = load i8, ptr %91, align 1, !tbaa !139
  %93 = zext i8 %92 to i32
  br label %94

94:                                               ; preds = %87, %90
  %95 = phi i32 [ %93, %90 ], [ %83, %87 ]
  %96 = add nsw i32 %95, -38
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !128
  %100 = getelementptr inbounds %struct.real_format, ptr %99, i64 0, i32 11
  %101 = load i8, ptr %100, align 2, !tbaa !530
  %102 = icmp eq i8 %101, 0
  %103 = load i32, ptr @flag_finite_math_only, align 4
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %106, label %386

106:                                              ; preds = %81, %94, %78
  %107 = lshr i32 %6, 16
  %108 = and i32 %107, 255
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !139
  %112 = and i8 %111, -2
  %113 = icmp eq i8 %112, 8
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, ptr @flag_trapping_math, align 4, !tbaa !143
  br label %386

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !139
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 65535
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !143
  %124 = icmp ne i32 %123, 9
  %125 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %126 = icmp eq ptr %118, %125
  %127 = select i1 %124, i1 true, i1 %126
  br i1 %127, label %386, label %345

128:                                              ; preds = %5
  br label %386

129:                                              ; preds = %5, %5, %5, %5, %5, %5
  %130 = load i32, ptr @flag_trapping_math, align 4, !tbaa !143
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %345, label %132, !prof !532

132:                                              ; preds = %129
  %133 = lshr i32 %6, 16
  %134 = and i32 %133, 255
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !139
  switch i8 %137, label %157 [
    i8 8, label %138
    i8 9, label %138
    i8 11, label %138
    i8 17, label %138
  ], !prof !533

138:                                              ; preds = %132, %132, %132, %132
  %139 = and i8 %137, -2
  %140 = icmp eq i8 %139, 8
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %135
  %143 = load i8, ptr %142, align 1, !tbaa !139
  %144 = zext i8 %143 to i32
  br label %145

145:                                              ; preds = %138, %141
  %146 = phi i32 [ %144, %141 ], [ %134, %138 ]
  %147 = add nsw i32 %146, -38
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !128
  %151 = getelementptr inbounds %struct.real_format, ptr %150, i64 0, i32 11
  %152 = load i8, ptr %151, align 2, !tbaa !530
  %153 = icmp eq i8 %152, 0
  %154 = load i32, ptr @flag_finite_math_only, align 4
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %157, label %386

157:                                              ; preds = %132, %145
  %158 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !139
  %160 = load i32, ptr %159, align 8
  %161 = lshr i32 %160, 16
  %162 = and i32 %161, 255
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !139
  switch i8 %165, label %185 [
    i8 8, label %166
    i8 9, label %166
    i8 11, label %166
    i8 17, label %166
  ], !prof !533

166:                                              ; preds = %157, %157, %157, %157
  %167 = and i8 %165, -2
  %168 = icmp eq i8 %167, 8
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %163
  %171 = load i8, ptr %170, align 1, !tbaa !139
  %172 = zext i8 %171 to i32
  br label %173

173:                                              ; preds = %166, %169
  %174 = phi i32 [ %172, %169 ], [ %162, %166 ]
  %175 = add nsw i32 %174, -38
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !128
  %179 = getelementptr inbounds %struct.real_format, ptr %178, i64 0, i32 11
  %180 = load i8, ptr %179, align 2, !tbaa !530
  %181 = icmp eq i8 %180, 0
  %182 = load i32, ptr @flag_finite_math_only, align 4
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %181, i1 true, i1 %183
  br i1 %184, label %185, label %386

185:                                              ; preds = %157, %173
  %186 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !139
  %188 = load i32, ptr %187, align 8
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !139
  switch i8 %193, label %345 [
    i8 8, label %194
    i8 9, label %194
    i8 11, label %194
    i8 17, label %194
  ], !prof !533

194:                                              ; preds = %185, %185, %185, %185
  %195 = and i8 %193, -2
  %196 = icmp eq i8 %195, 8
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %191
  %199 = load i8, ptr %198, align 1, !tbaa !139
  %200 = zext i8 %199 to i32
  br label %201

201:                                              ; preds = %194, %197
  %202 = phi i32 [ %200, %197 ], [ %190, %194 ]
  %203 = add nsw i32 %202, -38
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !128
  %207 = getelementptr inbounds %struct.real_format, ptr %206, i64 0, i32 11
  %208 = load i8, ptr %207, align 2, !tbaa !530
  %209 = icmp eq i8 %208, 0
  %210 = load i32, ptr @flag_finite_math_only, align 4
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %345, label %386

213:                                              ; preds = %5, %5
  %214 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !143
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %345, label %216, !prof !534

216:                                              ; preds = %213
  %217 = lshr i32 %6, 16
  %218 = and i32 %217, 255
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !139
  switch i8 %221, label %241 [
    i8 8, label %222
    i8 9, label %222
    i8 11, label %222
    i8 17, label %222
  ]

222:                                              ; preds = %216, %216, %216, %216
  %223 = and i8 %221, -2
  %224 = icmp eq i8 %223, 8
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %219
  %227 = load i8, ptr %226, align 1, !tbaa !139
  %228 = zext i8 %227 to i32
  br label %229

229:                                              ; preds = %222, %225
  %230 = phi i32 [ %228, %225 ], [ %218, %222 ]
  %231 = add nsw i32 %230, -38
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !128
  %235 = getelementptr inbounds %struct.real_format, ptr %234, i64 0, i32 11
  %236 = load i8, ptr %235, align 2, !tbaa !530
  %237 = icmp eq i8 %236, 0
  %238 = load i32, ptr @flag_finite_math_only, align 4
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %237, i1 true, i1 %239
  br i1 %240, label %241, label %386

241:                                              ; preds = %216, %229
  br i1 %215, label %345, label %242, !prof !534

242:                                              ; preds = %241
  %243 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !139
  %245 = load i32, ptr %244, align 8
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  %248 = zext nneg i32 %247 to i64
  %249 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !139
  switch i8 %250, label %270 [
    i8 8, label %251
    i8 9, label %251
    i8 11, label %251
    i8 17, label %251
  ]

251:                                              ; preds = %242, %242, %242, %242
  %252 = and i8 %250, -2
  %253 = icmp eq i8 %252, 8
  br i1 %253, label %258, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %248
  %256 = load i8, ptr %255, align 1, !tbaa !139
  %257 = zext i8 %256 to i32
  br label %258

258:                                              ; preds = %251, %254
  %259 = phi i32 [ %257, %254 ], [ %247, %251 ]
  %260 = add nsw i32 %259, -38
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !128
  %264 = getelementptr inbounds %struct.real_format, ptr %263, i64 0, i32 11
  %265 = load i8, ptr %264, align 2, !tbaa !530
  %266 = icmp eq i8 %265, 0
  %267 = load i32, ptr @flag_finite_math_only, align 4
  %268 = icmp ne i32 %267, 0
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %270, label %386

270:                                              ; preds = %242, %258
  br i1 %215, label %345, label %271, !prof !534

271:                                              ; preds = %270
  %272 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !139
  %274 = load i32, ptr %273, align 8
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !139
  switch i8 %279, label %345 [
    i8 8, label %280
    i8 9, label %280
    i8 11, label %280
    i8 17, label %280
  ]

280:                                              ; preds = %271, %271, %271, %271
  %281 = and i8 %279, -2
  %282 = icmp eq i8 %281, 8
  br i1 %282, label %287, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %277
  %285 = load i8, ptr %284, align 1, !tbaa !139
  %286 = zext i8 %285 to i32
  br label %287

287:                                              ; preds = %280, %283
  %288 = phi i32 [ %286, %283 ], [ %276, %280 ]
  %289 = add nsw i32 %288, -38
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !128
  %293 = getelementptr inbounds %struct.real_format, ptr %292, i64 0, i32 11
  %294 = load i8, ptr %293, align 2, !tbaa !530
  %295 = icmp eq i8 %294, 0
  %296 = load i32, ptr @flag_finite_math_only, align 4
  %297 = icmp ne i32 %296, 0
  %298 = select i1 %295, i1 true, i1 %297
  br i1 %298, label %345, label %386

299:                                              ; preds = %5
  %300 = load i32, ptr @flag_trapping_math, align 4, !tbaa !143
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %345, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !139
  %305 = load i32, ptr %304, align 8
  %306 = lshr i32 %305, 16
  %307 = and i32 %306, 255
  %308 = zext nneg i32 %307 to i64
  %309 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !139
  switch i8 %310, label %345 [
    i8 8, label %311
    i8 9, label %311
    i8 11, label %311
    i8 17, label %311
  ]

311:                                              ; preds = %302, %302, %302, %302
  %312 = and i8 %310, -2
  %313 = icmp eq i8 %312, 8
  br i1 %313, label %318, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %308
  %316 = load i8, ptr %315, align 1, !tbaa !139
  %317 = zext i8 %316 to i32
  br label %318

318:                                              ; preds = %311, %314
  %319 = phi i32 [ %317, %314 ], [ %307, %311 ]
  %320 = add nsw i32 %319, -38
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !128
  %324 = getelementptr inbounds %struct.real_format, ptr %323, i64 0, i32 11
  %325 = load i8, ptr %324, align 2, !tbaa !530
  %326 = icmp eq i8 %325, 0
  %327 = load i32, ptr @flag_finite_math_only, align 4
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %326, i1 true, i1 %328
  br i1 %329, label %345, label %386

330:                                              ; preds = %5
  %331 = lshr i32 %6, 16
  %332 = and i32 %331, 255
  %333 = zext nneg i32 %332 to i64
  %334 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !139
  %336 = icmp eq i8 %335, 8
  br i1 %336, label %342, label %337, !prof !535

337:                                              ; preds = %330
  %338 = icmp eq i8 %335, 9
  %339 = load i32, ptr @flag_trapping_math, align 4
  %340 = icmp ne i32 %339, 0
  %341 = select i1 %338, i1 %340, i1 false, !prof !535
  br i1 %341, label %386, label %345, !prof !535

342:                                              ; preds = %330
  %343 = load i32, ptr @flag_trapping_math, align 4, !tbaa !143
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %386

345:                                              ; preds = %213, %241, %342, %337, %270, %185, %129, %116, %5, %5, %302, %271, %5, %299, %318, %287, %201
  %346 = zext nneg i32 %7 to i64
  %347 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !128
  %349 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %346
  %350 = load i8, ptr %349, align 1, !tbaa !139
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %386, label %352, !prof !536

352:                                              ; preds = %345
  %353 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %354 = zext i8 %350 to i64
  br label %355

355:                                              ; preds = %352, %384
  %356 = phi i64 [ %354, %352 ], [ %357, %384 ]
  %357 = add nsw i64 %356, -1
  %358 = getelementptr inbounds i8, ptr %348, i64 %357
  %359 = load i8, ptr %358, align 1, !tbaa !139
  switch i8 %359, label %384 [
    i8 101, label %366
    i8 69, label %360
  ], !prof !537

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %362 = getelementptr inbounds [1 x %union.rtunion_def], ptr %361, i64 0, i64 %357
  %363 = load ptr, ptr %362, align 8, !tbaa !139
  %364 = load i32, ptr %363, align 8, !tbaa !147
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %377, label %384, !prof !538

366:                                              ; preds = %355
  %367 = getelementptr inbounds [1 x %union.rtunion_def], ptr %353, i64 0, i64 %357
  %368 = load ptr, ptr %367, align 8, !tbaa !139
  %369 = tail call i32 @may_trap_p_1(ptr noundef %368, i32 noundef %1)
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %384, label %386, !prof !539

371:                                              ; preds = %377
  %372 = add nuw nsw i64 %378, 1
  %373 = load ptr, ptr %362, align 8, !tbaa !139
  %374 = load i32, ptr %373, align 8, !tbaa !147
  %375 = sext i32 %374 to i64
  %376 = icmp slt i64 %372, %375
  br i1 %376, label %377, label %384, !prof !540, !llvm.loop !541

377:                                              ; preds = %360, %371
  %378 = phi i64 [ %372, %371 ], [ 0, %360 ]
  %379 = phi ptr [ %373, %371 ], [ %363, %360 ]
  %380 = getelementptr inbounds %struct.rtvec_def, ptr %379, i64 0, i32 1, i64 %378
  %381 = load ptr, ptr %380, align 8, !tbaa !128
  %382 = tail call i32 @may_trap_p_1(ptr noundef %381, i32 noundef %1)
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %371, label %386, !prof !542

384:                                              ; preds = %371, %360, %355, %366
  %385 = icmp sgt i64 %356, 1
  br i1 %385, label %355, label %386, !prof !543, !llvm.loop !544

386:                                              ; preds = %366, %384, %377, %345, %318, %287, %258, %229, %201, %94, %27, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %342, %337, %173, %145, %116, %22, %5, %2, %128, %114, %71, %13, %12, %9
  %387 = phi i32 [ 1, %128 ], [ %115, %114 ], [ %77, %71 ], [ %15, %13 ], [ 1, %12 ], [ %11, %9 ], [ 0, %2 ], [ 0, %5 ], [ 1, %22 ], [ 1, %116 ], [ 1, %145 ], [ 1, %173 ], [ 1, %337 ], [ 1, %342 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %27 ], [ 1, %94 ], [ 1, %201 ], [ 1, %229 ], [ 1, %258 ], [ 1, %287 ], [ 1, %318 ], [ 0, %345 ], [ 1, %377 ], [ 0, %384 ], [ 1, %366 ]
  ret i32 %387
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @may_trap_p(ptr noundef %0) local_unnamed_addr #11 !prof !545 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @may_trap_or_fault_p(ptr noundef %0) local_unnamed_addr #13 !prof !127 {
  %2 = tail call i32 @may_trap_p_1(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inequality_comparisons_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !127 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %5 [
    i16 37, label %45
    i16 38, label %45
    i16 36, label %45
    i16 46, label %45
    i16 30, label %45
    i16 32, label %45
    i16 31, label %45
    i16 33, label %45
    i16 35, label %45
    i16 44, label %45
    i16 45, label %45
    i16 85, label %4
    i16 89, label %4
    i16 83, label %4
    i16 87, label %4
    i16 84, label %4
    i16 88, label %4
    i16 82, label %4
    i16 86, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %45

5:                                                ; preds = %1
  %6 = and i32 %2, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !139
  %10 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = zext i8 %9 to i64
  br label %16

16:                                               ; preds = %13, %42
  %17 = phi i64 [ 0, %13 ], [ %43, %42 ]
  %18 = getelementptr inbounds i8, ptr %11, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !139
  switch i8 %19, label %42 [
    i8 101, label %20
    i8 69, label %26
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = tail call i32 @inequality_comparisons_p(ptr noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %45

26:                                               ; preds = %16
  %27 = getelementptr inbounds [1 x %union.rtunion_def], ptr %14, i64 0, i64 %17
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = load i32, ptr %28, align 8, !tbaa !147
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %35, %26
  %32 = phi i64 [ %37, %35 ], [ %30, %26 ]
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = add nsw i64 %32, -1
  %37 = add nsw i64 %32, -1
  %38 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !128
  %40 = tail call i32 @inequality_comparisons_p(ptr noundef %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %31, label %45, !llvm.loop !546

42:                                               ; preds = %31, %16, %20
  %43 = add nuw nsw i64 %17, 1
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %45, label %16, !llvm.loop !547

45:                                               ; preds = %42, %20, %35, %5, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %46 = phi i32 [ 1, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %5 ], [ 1, %35 ], [ 1, %20 ], [ 0, %42 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define dso_local ptr @replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 !prof !196 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5, !prof !548

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %96, label %9, !prof !548

9:                                                ; preds = %5, %3
  %10 = icmp eq ptr %0, %1
  %11 = or i1 %4, %10
  %12 = select i1 %10, ptr %2, ptr null, !prof !197
  br i1 %11, label %96, label %13, !prof !197

13:                                               ; preds = %9
  %14 = load i32, ptr %0, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %56 [
    i16 39, label %16
    i16 99, label %37
  ], !prof !549

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = tail call ptr @replace_rtx(ptr noundef %18, ptr noundef %1, ptr noundef %2)
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 30
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i32, ptr %0, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = load ptr, ptr %17, align 8, !tbaa !139
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load i32, ptr %31, align 8, !tbaa !139
  %33 = tail call ptr @simplify_subreg(i32 noundef %26, ptr noundef nonnull %19, i32 noundef %30, i32 noundef %32) #28
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %96

35:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2509, ptr noundef nonnull @.str.1) #28
  br label %96

36:                                               ; preds = %16
  store ptr %19, ptr %17, align 8, !tbaa !139
  br label %96

37:                                               ; preds = %13
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !139
  %40 = tail call ptr @replace_rtx(ptr noundef %39, ptr noundef %1, ptr noundef %2)
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 30
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i32, ptr %0, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = load ptr, ptr %38, align 8, !tbaa !139
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = tail call ptr @simplify_unary_operation(i32 noundef 99, i32 noundef %47, ptr noundef nonnull %40, i32 noundef %51) #28
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %96

54:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2524, ptr noundef nonnull @.str.1) #28
  br label %96

55:                                               ; preds = %37
  store ptr %40, ptr %38, align 8, !tbaa !139
  br label %96

56:                                               ; preds = %13
  %57 = and i32 %14, 65535
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !128
  %61 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %58
  %62 = load i8, ptr %61, align 1, !tbaa !139
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %96, label %64, !prof !550

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %66 = zext i8 %62 to i64
  br label %67

67:                                               ; preds = %64, %94
  %68 = phi i64 [ %66, %64 ], [ %69, %94 ]
  %69 = add nsw i64 %68, -1
  %70 = getelementptr inbounds i8, ptr %60, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !139
  switch i8 %71, label %94 [
    i8 101, label %72
    i8 69, label %76
  ], !prof !551

72:                                               ; preds = %67
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %65, i64 0, i64 %69
  %74 = load ptr, ptr %73, align 8, !tbaa !139
  %75 = tail call ptr @replace_rtx(ptr noundef %74, ptr noundef %1, ptr noundef %2)
  store ptr %75, ptr %73, align 8, !tbaa !139
  br label %94

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = getelementptr inbounds [1 x %union.rtunion_def], ptr %77, i64 0, i64 %69
  %79 = load ptr, ptr %78, align 8, !tbaa !139
  %80 = load i32, ptr %79, align 8, !tbaa !147
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = zext nneg i32 %80 to i64
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ %83, %82 ], [ %86, %84 ]
  %86 = add nsw i64 %85, -1
  %87 = load ptr, ptr %78, align 8, !tbaa !139
  %88 = getelementptr inbounds %struct.rtvec_def, ptr %87, i64 0, i32 1, i64 %86
  %89 = load ptr, ptr %88, align 8, !tbaa !128
  %90 = tail call ptr @replace_rtx(ptr noundef %89, ptr noundef %1, ptr noundef %2)
  %91 = load ptr, ptr %78, align 8, !tbaa !139
  %92 = getelementptr inbounds %struct.rtvec_def, ptr %91, i64 0, i32 1, i64 %86
  store ptr %90, ptr %92, align 8, !tbaa !128
  %93 = icmp sgt i64 %85, 1
  br i1 %93, label %84, label %94, !llvm.loop !552

94:                                               ; preds = %84, %76, %67, %72
  %95 = icmp sgt i64 %68, 1
  br i1 %95, label %67, label %96, !prof !553, !llvm.loop !554

96:                                               ; preds = %94, %56, %9, %55, %44, %54, %36, %23, %35, %5
  %97 = phi ptr [ %0, %5 ], [ %12, %9 ], [ %33, %23 ], [ null, %35 ], [ %0, %36 ], [ %52, %44 ], [ null, %54 ], [ %0, %55 ], [ %0, %56 ], [ %0, %94 ]
  ret ptr %97
}

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @replace_label(ptr nocapture noundef %0, ptr noundef %1) #13 !prof !127 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !128
  %6 = load ptr, ptr %1, align 8, !tbaa !555
  %7 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !557
  %9 = getelementptr inbounds %struct.replace_label_data, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !558
  %11 = icmp eq ptr %5, null
  br i1 %11, label %69, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 8
  %14 = and i32 %13, 67174399
  %15 = icmp eq i32 %14, 67108909
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = tail call ptr @get_pool_constant(ptr noundef nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %17, ptr %3, align 8, !tbaa !128
  %18 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @rtx_referenced_p_1, ptr noundef %6), !range !559
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %21 = call ptr @copy_rtx(ptr noundef %17) #28
  store ptr %21, ptr %4, align 8, !tbaa !128
  store i8 0, ptr %9, align 8, !tbaa !558
  %22 = call i32 @replace_label(ptr noundef nonnull %4, ptr noundef nonnull %1) #28, !prof !560
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36, !prof !561

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !tbaa !128
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27, !prof !562

27:                                               ; preds = %24
  %28 = load i32, ptr %25, align 8
  %29 = and i32 %28, 65535
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !143
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %36, label %34, !prof !563

34:                                               ; preds = %27
  %35 = call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %25, i32 noundef %32, ptr noundef nonnull @replace_label, ptr noundef nonnull %1), !range !559
  br label %36

36:                                               ; preds = %20, %24, %27, %34
  store i8 %10, ptr %9, align 8, !tbaa !558
  %37 = call i32 @get_pool_mode(ptr noundef nonnull %5) #28
  %38 = load ptr, ptr %4, align 8, !tbaa !128
  %39 = call ptr @force_const_mem(i32 noundef %37, ptr noundef %38) #28
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !139
  %42 = load i32, ptr %5, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 32
  %45 = select i1 %44, ptr %5, ptr %41
  store ptr %45, ptr %0, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  br label %69

46:                                               ; preds = %12
  %47 = and i32 %13, 65535
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = icmp eq ptr %51, %6
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store ptr %8, ptr %50, align 8, !tbaa !139
  br label %54

54:                                               ; preds = %53, %49, %46
  %55 = trunc i32 %13 to i16
  switch i16 %55, label %69 [
    i16 44, label %56
    i16 4, label %56
  ]

56:                                               ; preds = %54, %54
  %57 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !139
  %59 = icmp eq ptr %58, %6
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  store ptr %8, ptr %57, align 8, !tbaa !139
  %61 = icmp eq i8 %10, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !139
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !139
  %66 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !139
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %66, align 8, !tbaa !139
  br label %69

69:                                               ; preds = %54, %56, %60, %62, %16, %36, %2
  ret i32 0
}

declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @rtx_referenced_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !127 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !128
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @rtx_referenced_p_1, ptr noundef %0), !range !559
  ret i32 %4
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @for_each_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !564 {
  %4 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #28, !prof !565
  switch i32 %4, label %5 [
    i32 -1, label %18
    i32 0, label %6
  ], !prof !566

5:                                                ; preds = %3
  br label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !128
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !562

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !143
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16, !prof !563

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %7, i32 noundef %14, ptr noundef %1, ptr noundef %2), !range !559
  br label %18

18:                                               ; preds = %9, %6, %3, %16, %5
  %19 = phi i32 [ %4, %5 ], [ %17, %16 ], [ 0, %3 ], [ 0, %6 ], [ 0, %9 ]
  ret i32 %19
}

declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @rtx_referenced_p_1(ptr nocapture noundef readonly %0, ptr noundef %1) #13 !prof !127 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !128
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = zext i1 %7 to i32
  br label %44

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 44
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 12
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = icmp eq ptr %19, %1
  %21 = zext i1 %20 to i32
  br label %44

22:                                               ; preds = %13, %9
  %23 = and i32 %10, 67174399
  %24 = icmp eq i32 %23, 67108909
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = tail call ptr @get_pool_constant(ptr noundef nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %26, ptr %3, align 8, !tbaa !128
  %27 = call i32 @rtx_referenced_p_1(ptr noundef nonnull %3, ptr noundef %1) #28, !prof !560
  switch i32 %27, label %28 [
    i32 -1, label %40
    i32 0, label %29
  ], !prof !566

28:                                               ; preds = %25
  br label %40

29:                                               ; preds = %25
  %30 = icmp eq ptr %26, null
  br i1 %30, label %40, label %31, !prof !562

31:                                               ; preds = %29
  %32 = load i32, ptr %26, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !143
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %40, label %38, !prof !563

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %26, i32 noundef %36, ptr noundef nonnull @rtx_referenced_p_1, ptr noundef %1), !range !559
  br label %40

40:                                               ; preds = %25, %28, %29, %31, %38
  %41 = phi i32 [ %27, %28 ], [ %39, %38 ], [ 0, %25 ], [ 0, %29 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br label %44

42:                                               ; preds = %22
  %43 = tail call i32 @rtx_equal_p(ptr noundef nonnull %4, ptr noundef %1) #28
  br label %44

44:                                               ; preds = %42, %40, %17, %6
  %45 = phi i32 [ %8, %6 ], [ %21, %17 ], [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @tablejump_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #11 !prof !567 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %30, !prof !568

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11, !prof !569

11:                                               ; preds = %7
  %12 = tail call ptr @next_active_insn(ptr noundef nonnull %9) #28
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14, !prof !570

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %30, !prof !571

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 20
  br i1 %23, label %24, label %30, !prof !572

24:                                               ; preds = %18
  %25 = icmp eq ptr %1, null
  br i1 %25, label %27, label %26, !prof !573

26:                                               ; preds = %24
  store ptr %9, ptr %1, align 8, !tbaa !128
  br label %27

27:                                               ; preds = %26, %24
  %28 = icmp eq ptr %2, null
  br i1 %28, label %30, label %29, !prof !574

29:                                               ; preds = %27
  store ptr %12, ptr %2, align 8, !tbaa !128
  br label %30

30:                                               ; preds = %18, %3, %7, %11, %14, %27, %29
  %31 = phi i8 [ 1, %29 ], [ 1, %27 ], [ 0, %18 ], [ 0, %14 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %31
}

declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @computed_jump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !575 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %83, !prof !576

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %80, !prof !577

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %79 [
    i16 15, label %14
    i16 23, label %69
  ], !prof !578

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = load i32, ptr %16, align 8, !tbaa !147
  %18 = add i32 %17, -1
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = zext i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ %21, %20 ], [ %39, %37 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %37 ]
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !128
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 44
  %36 = select i1 %35, i32 1, i32 %24
  br label %37

37:                                               ; preds = %30, %22
  %38 = phi i32 [ %24, %22 ], [ %36, %30 ]
  %39 = add nsw i64 %23, -1
  %40 = icmp sgt i64 %23, 0
  br i1 %40, label %22, label %41, !llvm.loop !579

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  br label %43

43:                                               ; preds = %41, %14
  %44 = phi i1 [ true, %14 ], [ %42, %41 ]
  %45 = icmp sgt i32 %17, 0
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load ptr, ptr @global_rtl, align 16
  %49 = zext i32 %18 to i64
  br label %50

50:                                               ; preds = %47, %66
  %51 = phi i64 [ %49, %47 ], [ %67, %66 ]
  %52 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !128
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 23
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !139
  %60 = icmp eq ptr %59, %48
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !139
  %64 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %63), !range !228
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %50, %57, %61
  %67 = add nsw i64 %51, -1
  %68 = icmp sgt i64 %51, 0
  br i1 %68, label %50, label %79, !llvm.loop !580

69:                                               ; preds = %11
  %70 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !139
  %72 = load ptr, ptr @global_rtl, align 16, !tbaa !128
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !139
  %77 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %76), !range !228
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66, %11, %43, %69, %74
  br label %80

80:                                               ; preds = %61, %74, %5, %79
  %81 = phi i1 [ true, %79 ], [ false, %5 ], [ false, %74 ], [ false, %61 ]
  %82 = phi i32 [ 1, %79 ], [ 0, %5 ], [ 1, %74 ], [ 1, %61 ]
  br i1 %81, label %83, label %84, !prof !577

83:                                               ; preds = %80, %1
  br label %84

84:                                               ; preds = %80, %83
  %85 = phi i32 [ 0, %83 ], [ %82, %80 ]
  ret i32 %85
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @computed_jump_p_1(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !127 {
  br label %2

2:                                                ; preds = %22, %1
  %3 = phi ptr [ %0, %1 ], [ %24, %22 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %25 [
    i16 44, label %67
    i16 36, label %67
    i16 35, label %6
    i16 30, label %6
    i16 32, label %6
    i16 31, label %6
    i16 33, label %6
    i16 45, label %6
    i16 37, label %6
    i16 43, label %7
    i16 47, label %17
  ]

6:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  br label %67

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 45
  %13 = lshr i32 %10, 26
  %14 = and i32 %13, 1
  %15 = xor i32 %14, 1
  %16 = select i1 %12, i32 %15, i32 1
  br label %67

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %19), !range !228
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !139
  br label %2

25:                                               ; preds = %2
  %26 = and i32 %4, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  %30 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !139
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %35 = zext i8 %31 to i64
  br label %36

36:                                               ; preds = %33, %65
  %37 = phi i64 [ %35, %33 ], [ %38, %65 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds i8, ptr %29, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !139
  switch i8 %40, label %65 [
    i8 101, label %41
    i8 69, label %49
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !139
  %45 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %44), !range !228
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = icmp eq i8 %40, 69
  br i1 %48, label %49, label %65

49:                                               ; preds = %47, %36
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %38
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = load i32, ptr %51, align 8, !tbaa !147
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = zext nneg i32 %52 to i64
  br label %59

56:                                               ; preds = %59
  %57 = add nuw nsw i64 %60, 1
  %58 = icmp eq i64 %57, %55
  br i1 %58, label %65, label %59, !llvm.loop !581

59:                                               ; preds = %54, %56
  %60 = phi i64 [ 0, %54 ], [ %57, %56 ]
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %51, i64 0, i32 1, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !128
  %63 = tail call fastcc i32 @computed_jump_p_1(ptr noundef %62), !range !228
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %56, label %67

65:                                               ; preds = %56, %49, %36, %47
  %66 = icmp sgt i64 %37, 1
  br i1 %66, label %36, label %67, !llvm.loop !582

67:                                               ; preds = %41, %65, %59, %25, %2, %17, %2, %7, %6
  %68 = phi i32 [ %16, %7 ], [ 1, %6 ], [ 0, %2 ], [ 1, %17 ], [ 0, %2 ], [ 0, %25 ], [ 1, %59 ], [ 0, %65 ], [ 1, %41 ]
  ret i32 %68
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @for_each_rtx_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 !prof !583 !PGOFuncName !584 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %65, %4
  %13 = phi i64 [ %66, %65 ], [ %11, %4 ]
  %14 = getelementptr inbounds i8, ptr %9, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !139
  switch i8 %15, label %65 [
    i8 0, label %67
    i8 101, label %16
    i8 86, label %32
    i8 69, label %32
  ], !prof !585

16:                                               ; preds = %12
  %17 = getelementptr inbounds [1 x %union.rtunion_def], ptr %10, i64 0, i64 %13
  %18 = tail call i32 %2(ptr noundef nonnull %17, ptr noundef %3) #28, !prof !586
  switch i32 %18, label %67 [
    i32 -1, label %65
    i32 0, label %19
  ], !prof !587

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !128
  %21 = icmp eq ptr %20, null
  br i1 %21, label %65, label %22, !prof !588

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !143
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %65, !prof !589

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %20, i32 noundef %27, ptr noundef %2, ptr noundef %3), !range !559
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %65, label %67, !prof !590

32:                                               ; preds = %12, %12
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %13
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  %36 = icmp eq ptr %35, null
  br i1 %36, label %65, label %37, !prof !591

37:                                               ; preds = %32
  %38 = load ptr, ptr %34, align 8, !tbaa !139
  %39 = load i32, ptr %38, align 8, !tbaa !147
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %65, !prof !592

41:                                               ; preds = %37, %59
  %42 = phi i64 [ %60, %59 ], [ 0, %37 ]
  %43 = phi ptr [ %61, %59 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1, i64 %42
  %45 = tail call i32 %2(ptr noundef nonnull %44, ptr noundef %3) #28, !prof !593
  switch i32 %45, label %67 [
    i32 -1, label %59
    i32 0, label %46
  ], !prof !594

46:                                               ; preds = %41
  %47 = load ptr, ptr %44, align 8, !tbaa !128
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49, !prof !595

49:                                               ; preds = %46
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !143
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %59, !prof !596

56:                                               ; preds = %49
  %57 = tail call fastcc i32 @for_each_rtx_1(ptr noundef nonnull %47, i32 noundef %54, ptr noundef %2, ptr noundef %3), !range !559
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67, !prof !597

59:                                               ; preds = %41, %49, %56, %46
  %60 = add nuw nsw i64 %42, 1
  %61 = load ptr, ptr %34, align 8, !tbaa !139
  %62 = load i32, ptr %61, align 8, !tbaa !147
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %41, label %65, !prof !598, !llvm.loop !599

65:                                               ; preds = %59, %37, %32, %16, %12, %29, %22, %19
  %66 = add i64 %13, 1
  br label %12, !llvm.loop !600

67:                                               ; preds = %29, %16, %12, %56, %41
  %68 = phi i32 [ %45, %41 ], [ %57, %56 ], [ 0, %12 ], [ %18, %16 ], [ %30, %29 ]
  ret i32 %68
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @regno_use_in(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !127 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !139
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %49, label %10

10:                                               ; preds = %6, %2
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  %14 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !139
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %19 = zext i8 %15 to i64
  br label %20

20:                                               ; preds = %17, %47
  %21 = phi i64 [ %19, %17 ], [ %22, %47 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds i8, ptr %13, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !139
  switch i8 %24, label %47 [
    i8 101, label %25
    i8 69, label %31
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = getelementptr inbounds [1 x %union.rtunion_def], ptr %26, i64 0, i64 %22
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %28)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %49

31:                                               ; preds = %20
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %22
  %33 = load ptr, ptr %32, align 8, !tbaa !139
  %34 = load i32, ptr %33, align 8, !tbaa !147
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %40, %31
  %37 = phi i64 [ %42, %40 ], [ %35, %31 ]
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = add nsw i64 %37, -1
  %42 = add nsw i64 %37, -1
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = tail call ptr @regno_use_in(i32 noundef %0, ptr noundef %44)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %36, label %49, !llvm.loop !601

47:                                               ; preds = %36, %20, %25
  %48 = icmp sgt i64 %21, 1
  br i1 %48, label %20, label %49, !llvm.loop !602

49:                                               ; preds = %47, %25, %40, %10, %6
  %50 = phi ptr [ %1, %6 ], [ null, %10 ], [ %45, %40 ], [ %29, %25 ], [ null, %47 ]
  ret ptr %50
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @commutative_operand_precedence(ptr noundef %0) local_unnamed_addr #11 !prof !603 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -30
  %5 = icmp ult i16 %4, 3
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %0) #28
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !143
  switch i32 %12, label %42 [
    i32 9, label %13
    i32 5, label %17
    i32 8, label %30
    i32 3, label %51
    i32 2, label %36
    i32 4, label %37
  ], !prof !604

13:                                               ; preds = %6
  %14 = trunc i32 %8 to i16
  %15 = add i16 %14, -30
  %16 = icmp ult i16 %15, 3
  br i1 %16, label %47, label %51

17:                                               ; preds = %6
  %18 = icmp eq i32 %9, 39
  br i1 %18, label %19, label %29, !prof !605

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !143
  %27 = and i32 %26, -2
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %51, label %29, !prof !606

29:                                               ; preds = %19, %17
  br label %51

30:                                               ; preds = %6
  %31 = and i32 %8, 1073807359
  %32 = icmp eq i32 %31, 1073741861
  br i1 %32, label %51, label %33, !prof !607

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 1073741867
  %35 = select i1 %34, i32 -1, i32 -2, !prof !608
  br label %51

36:                                               ; preds = %6
  br label %51

37:                                               ; preds = %6
  %38 = icmp eq i32 %9, 64
  %39 = icmp eq i32 %9, 51
  %40 = or i1 %38, %39
  %41 = zext i1 %40 to i32
  br label %51

42:                                               ; preds = %6
  br label %51

43:                                               ; preds = %1
  %44 = zext nneg i16 %4 to i64
  %45 = getelementptr inbounds [3 x i32], ptr @switch.table.swap_commutative_operands_p.5, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  br label %51

47:                                               ; preds = %13
  %48 = zext nneg i16 %15 to i64
  %49 = getelementptr inbounds [3 x i32], ptr @switch.table.swap_commutative_operands_p.6, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %13, %47, %43, %33, %37, %6, %30, %19, %42, %36, %29
  %52 = phi i32 [ 0, %42 ], [ 2, %36 ], [ 0, %29 ], [ -3, %19 ], [ -1, %30 ], [ 4, %6 ], [ %35, %33 ], [ %41, %37 ], [ %46, %43 ], [ %50, %47 ], [ -4, %13 ]
  ret i32 %52
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !609 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, -30
  %6 = icmp ult i16 %5, 3
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %0) #28
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !143
  switch i32 %13, label %43 [
    i32 9, label %14
    i32 5, label %18
    i32 8, label %31
    i32 3, label %52
    i32 2, label %37
    i32 4, label %38
  ], !prof !604

14:                                               ; preds = %7
  %15 = trunc i32 %9 to i16
  %16 = add i16 %15, -30
  %17 = icmp ult i16 %16, 3
  br i1 %17, label %48, label %52

18:                                               ; preds = %7
  %19 = icmp eq i32 %10, 39
  br i1 %19, label %20, label %30, !prof !605

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !143
  %28 = and i32 %27, -2
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %52, label %30, !prof !606

30:                                               ; preds = %20, %18
  br label %52

31:                                               ; preds = %7
  %32 = and i32 %9, 1073807359
  %33 = icmp eq i32 %32, 1073741861
  br i1 %33, label %52, label %34, !prof !607

34:                                               ; preds = %31
  %35 = icmp eq i32 %32, 1073741867
  %36 = select i1 %35, i32 -1, i32 -2, !prof !608
  br label %52

37:                                               ; preds = %7
  br label %52

38:                                               ; preds = %7
  %39 = icmp eq i32 %10, 64
  %40 = icmp eq i32 %10, 51
  %41 = or i1 %39, %40
  %42 = zext i1 %41 to i32
  br label %52

43:                                               ; preds = %7
  br label %52

44:                                               ; preds = %2
  %45 = zext nneg i16 %5 to i64
  %46 = getelementptr inbounds [3 x i32], ptr @switch.table.swap_commutative_operands_p.5, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  br label %52

48:                                               ; preds = %14
  %49 = zext nneg i16 %16 to i64
  %50 = getelementptr inbounds [3 x i32], ptr @switch.table.swap_commutative_operands_p.6, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %14, %48, %44, %7, %20, %30, %31, %34, %37, %38, %43
  %53 = phi i32 [ 0, %43 ], [ 2, %37 ], [ 0, %30 ], [ -3, %20 ], [ -1, %31 ], [ 4, %7 ], [ %36, %34 ], [ %42, %38 ], [ %47, %44 ], [ %51, %48 ], [ -4, %14 ]
  %54 = load i32, ptr %1, align 8
  %55 = trunc i32 %54 to i16
  %56 = add i16 %55, -30
  %57 = icmp ult i16 %56, 3
  br i1 %57, label %95, label %58

58:                                               ; preds = %52
  %59 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %1) #28
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !143
  switch i32 %64, label %94 [
    i32 9, label %65
    i32 5, label %69
    i32 8, label %82
    i32 3, label %103
    i32 2, label %88
    i32 4, label %89
  ], !prof !604

65:                                               ; preds = %58
  %66 = trunc i32 %60 to i16
  %67 = add i16 %66, -30
  %68 = icmp ult i16 %67, 3
  br i1 %68, label %99, label %103

69:                                               ; preds = %58
  %70 = icmp eq i32 %61, 39
  br i1 %70, label %71, label %81, !prof !605

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !139
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !143
  %79 = and i32 %78, -2
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %103, label %81, !prof !606

81:                                               ; preds = %71, %69
  br label %103

82:                                               ; preds = %58
  %83 = and i32 %60, 1073807359
  %84 = icmp eq i32 %83, 1073741861
  br i1 %84, label %103, label %85, !prof !607

85:                                               ; preds = %82
  %86 = icmp eq i32 %83, 1073741867
  %87 = select i1 %86, i32 -1, i32 -2, !prof !608
  br label %103

88:                                               ; preds = %58
  br label %103

89:                                               ; preds = %58
  %90 = icmp eq i32 %61, 64
  %91 = icmp eq i32 %61, 51
  %92 = or i1 %90, %91
  %93 = zext i1 %92 to i32
  br label %103

94:                                               ; preds = %58
  br label %103

95:                                               ; preds = %52
  %96 = zext nneg i16 %56 to i64
  %97 = getelementptr inbounds [3 x i32], ptr @switch.table.swap_commutative_operands_p.5, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4
  br label %103

99:                                               ; preds = %65
  %100 = zext nneg i16 %67 to i64
  %101 = getelementptr inbounds [3 x i32], ptr @switch.table.swap_commutative_operands_p.6, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %65, %99, %95, %58, %71, %81, %82, %85, %88, %89, %94
  %104 = phi i32 [ 0, %94 ], [ 2, %88 ], [ 0, %81 ], [ -3, %71 ], [ -1, %82 ], [ 4, %58 ], [ %87, %85 ], [ %93, %89 ], [ %98, %95 ], [ %102, %99 ], [ -4, %65 ]
  %105 = icmp slt i32 %53, %104
  %106 = zext i1 %105 to i8
  ret i8 %106
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @auto_inc_p(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !127 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -74
  %5 = icmp ult i16 %4, 6
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !128
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1, %6
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @loc_mentioned_in_p(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !127 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !139
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %4
  %14 = zext i8 %11 to i64
  br label %15

15:                                               ; preds = %13, %47
  %16 = phi i64 [ %14, %13 ], [ %17, %47 ]
  %17 = add nsw i64 %16, -1
  %18 = getelementptr inbounds i8, ptr %9, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !139
  switch i8 %19, label %47 [
    i8 101, label %20
    i8 69, label %28
  ]

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %17
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !139
  %26 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %25), !range !228
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %47, label %49

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %29, i64 0, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = load i32, ptr %31, align 8, !tbaa !147
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %43, %28
  %35 = phi i64 [ %36, %43 ], [ %33, %28 ]
  %36 = add nsw i64 %35, -1
  %37 = trunc i64 %35 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = add nsw i64 %35, -1
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %40
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !128
  %45 = tail call i32 @loc_mentioned_in_p(ptr noundef %0, ptr noundef %44), !range !228
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %34, label %49, !llvm.loop !610

47:                                               ; preds = %34, %15, %24
  %48 = icmp sgt i64 %16, 1
  br i1 %48, label %15, label %49, !llvm.loop !611

49:                                               ; preds = %20, %47, %24, %39, %43, %4, %2
  %50 = phi i32 [ 0, %2 ], [ 0, %4 ], [ 1, %43 ], [ 1, %39 ], [ 1, %24 ], [ 0, %47 ], [ 1, %20 ]
  ret i32 %50
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #22 !prof !127 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !139
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !139
  %10 = icmp ugt i8 %6, %9
  %11 = shl i32 %2, 3
  %12 = select i1 %10, i32 0, i32 %11
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lsb(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !127 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !139
  %15 = zext nneg i32 %9 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !139
  %18 = icmp ugt i8 %14, %17
  %19 = shl i32 %11, 3
  %20 = select i1 %18, i32 0, i32 %19
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #15 !prof !612 {
  %6 = icmp ult i32 %0, 53
  br i1 %6, label %8, label %7, !prof !613

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3102, ptr noundef nonnull @.str.1) #28
  br label %8

8:                                                ; preds = %5, %7
  %9 = load i32, ptr @target_flags, align 4, !tbaa !143
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %74, label %12, !prof !613

12:                                               ; preds = %8
  %13 = zext i32 %0 to i64
  %14 = and i64 %13, 4294967288
  %15 = icmp eq i64 %14, 8
  %16 = add nsw i64 %13, -21
  %17 = icmp ult i64 %16, 8
  %18 = select i1 %15, i1 true, i1 %17
  %19 = add nsw i64 %13, -45
  %20 = icmp ult i64 %19, 8
  %21 = select i1 %18, i1 true, i1 %20
  %22 = add nsw i64 %13, -29
  %23 = icmp ult i64 %22, 8
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %74, label %25

25:                                               ; preds = %12
  switch i32 %1, label %74 [
    i32 53, label %26
    i32 40, label %26
  ]

26:                                               ; preds = %25, %25
  %27 = icmp eq i32 %1, 40
  %28 = select i1 %27, i32 4, i32 8
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !139
  %32 = icmp eq i8 %31, 0
  %33 = zext i8 %31 to i32
  %34 = select i1 %32, i32 %1, i32 %33
  switch i32 %34, label %35 [
    i32 53, label %36
    i32 40, label %36
  ]

35:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3117, ptr noundef nonnull @.str.1) #28
  br label %36

36:                                               ; preds = %26, %26, %35
  %37 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %29
  %38 = load i8, ptr %37, align 1, !tbaa !139
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %34, 40
  %41 = select i1 %40, i32 2, i32 3
  %42 = shl nuw nsw i32 %39, %41
  %43 = icmp eq i32 %28, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3120, ptr noundef nonnull @.str.1) #28
  br label %45

45:                                               ; preds = %36, %44
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %13, i64 %29
  %47 = load i8, ptr %46, align 1, !tbaa !139
  %48 = zext i8 %47 to i32
  %49 = zext i32 %34 to i64
  %50 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %13, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !139
  %52 = zext i8 %51 to i32
  %53 = mul nuw nsw i32 %52, %39
  %54 = icmp eq i32 %53, %48
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3123, ptr noundef nonnull @.str.1) #28
  br label %56

56:                                               ; preds = %45, %55
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %58 = load i8, ptr %57, align 1, !tbaa !139
  %59 = zext i8 %58 to i32
  %60 = udiv i32 %2, %59
  %61 = add i32 %60, 1
  %62 = icmp ult i32 %61, %39
  br i1 %62, label %63, label %80

63:                                               ; preds = %56
  %64 = zext i32 %3 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !139
  %67 = zext i8 %66 to i32
  %68 = add i32 %2, -1
  %69 = add i32 %68, %67
  %70 = udiv i32 %69, %59
  %71 = icmp eq i32 %60, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %73, align 4, !tbaa !614
  br label %80

74:                                               ; preds = %25, %8, %12
  %75 = zext i32 %0 to i64
  %76 = zext i32 %1 to i64
  %77 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %75, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !139
  %79 = zext i8 %78 to i32
  br label %80

80:                                               ; preds = %56, %63, %72, %74
  %81 = phi i32 [ %79, %74 ], [ %28, %72 ], [ %28, %63 ], [ %28, %56 ]
  %82 = phi i1 [ true, %74 ], [ false, %72 ], [ true, %63 ], [ true, %56 ]
  %83 = zext i32 %0 to i64
  %84 = zext i32 %3 to i64
  %85 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %83, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !139
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %2, 0
  %89 = and i1 %88, %82
  br i1 %89, label %90, label %100, !prof !613

90:                                               ; preds = %80
  %91 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %84
  %92 = load i8, ptr %91, align 1, !tbaa !139
  %93 = zext i32 %1 to i64
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !139
  %96 = icmp ugt i8 %92, %95
  br i1 %96, label %97, label %100, !prof !615

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %98, align 4, !tbaa !614
  store i32 0, ptr %4, align 4, !tbaa !234
  %99 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %87, ptr %99, align 4, !tbaa !236
  br label %224

100:                                              ; preds = %90, %80
  %101 = load i32, ptr @target_flags, align 4, !tbaa !143
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  %104 = and i64 %83, 4294967288
  %105 = icmp eq i64 %104, 8
  %106 = or i1 %105, %103
  %107 = add nsw i64 %83, -21
  %108 = icmp ult i64 %107, 8
  %109 = select i1 %106, i1 true, i1 %108, !prof !616
  %110 = add nsw i64 %83, -45
  %111 = icmp ult i64 %110, 8
  %112 = select i1 %109, i1 true, i1 %111, !prof !616
  %113 = add nsw i64 %83, -29
  %114 = icmp ult i64 %113, 8
  %115 = select i1 %112, i1 true, i1 %114, !prof !616
  br i1 %115, label %119, label %116, !prof !616

116:                                              ; preds = %100
  switch i32 %1, label %117 [
    i32 53, label %161
    i32 40, label %161
  ]

117:                                              ; preds = %116
  br i1 %115, label %119, label %118, !prof !616

118:                                              ; preds = %117
  switch i32 %3, label %119 [
    i32 53, label %161
    i32 40, label %161
  ]

119:                                              ; preds = %100, %118, %117
  %120 = zext i32 %1 to i64
  %121 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !139
  %123 = zext i8 %122 to i32
  %124 = urem i32 %123, %81
  %125 = udiv i32 %123, %81
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %127, label %161, !prof !616

127:                                              ; preds = %119
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %84
  %129 = load i8, ptr %128, align 1, !tbaa !139
  %130 = zext i8 %129 to i32
  %131 = urem i32 %130, %87
  %132 = udiv i32 %130, %87
  %133 = icmp eq i32 %131, 0
  br i1 %133, label %134, label %161, !prof !616

134:                                              ; preds = %127
  br i1 %82, label %135, label %171, !prof !616

135:                                              ; preds = %134
  %136 = icmp ugt i32 %125, %132
  %137 = icmp ugt i8 %86, 1
  %138 = select i1 %136, i1 %137, i1 false, !prof !617
  br i1 %138, label %139, label %148, !prof !618

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %140, align 4, !tbaa !614
  %141 = load i8, ptr %128, align 1, !tbaa !139
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %125, -1
  %144 = add nsw i32 %143, %142
  %145 = udiv i32 %144, %125
  %146 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %145, ptr %146, align 4, !tbaa !236
  %147 = udiv i32 %2, %125
  store i32 %147, ptr %4, align 4, !tbaa !234
  br label %224

148:                                              ; preds = %135
  %149 = icmp ugt i32 %132, %125
  %150 = icmp ugt i32 %81, 1
  %151 = and i1 %150, %149
  br i1 %151, label %152, label %161, !prof !618

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 0, ptr %153, align 4, !tbaa !614
  %154 = load i8, ptr %128, align 1, !tbaa !139
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %125, -1
  %157 = add nsw i32 %156, %155
  %158 = sdiv i32 %157, %125
  %159 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %158, ptr %159, align 4, !tbaa !236
  %160 = udiv i32 %2, %125
  store i32 %160, ptr %4, align 4, !tbaa !234
  br label %224

161:                                              ; preds = %118, %116, %118, %116, %148, %127, %119
  br i1 %82, label %162, label %171, !prof !616

162:                                              ; preds = %161
  %163 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %1) #28
  %164 = icmp eq i32 %163, %2
  br i1 %164, label %165, label %171, !prof !616

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 1, ptr %166, align 4, !tbaa !614
  %167 = icmp eq i32 %81, %87
  %168 = select i1 %88, i1 true, i1 %167, !prof !616
  br i1 %168, label %169, label %171, !prof !616

169:                                              ; preds = %165
  store i32 0, ptr %4, align 4, !tbaa !234
  %170 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %87, ptr %170, align 4, !tbaa !236
  br label %224

171:                                              ; preds = %134, %165, %162, %161
  %172 = phi i1 [ false, %161 ], [ true, %162 ], [ false, %165 ], [ false, %134 ]
  %173 = zext i32 %1 to i64
  %174 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !139
  %176 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %84
  %177 = load i8, ptr %176, align 1, !tbaa !139
  %178 = urem i8 %175, %177
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3211, ptr noundef nonnull @.str.1) #28
  br label %181

181:                                              ; preds = %171, %180
  %182 = urem i32 %81, %87
  %183 = udiv i32 %81, %87
  %184 = icmp eq i32 %182, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3212, ptr noundef nonnull @.str.1) #28
  br label %186

186:                                              ; preds = %181, %185
  %187 = load i8, ptr %174, align 1, !tbaa !139
  %188 = zext i8 %187 to i32
  %189 = shl nuw nsw i32 %188, 3
  %190 = udiv i32 %189, %81
  %191 = tail call i32 @mode_for_size(i32 noundef %190, i32 noundef 2, i32 noundef 0) #28
  %192 = tail call i32 @subreg_lowpart_offset(i32 noundef %3, i32 noundef %191) #28
  %193 = sub i32 %2, %192
  %194 = load i8, ptr %174, align 1, !tbaa !139
  %195 = load i8, ptr %176, align 1, !tbaa !139
  %196 = udiv i8 %194, %195
  %197 = zext i8 %196 to i32
  %198 = icmp ugt i8 %195, %194
  br i1 %198, label %199, label %200

199:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3225, ptr noundef nonnull @.str.1) #28
  br label %200

200:                                              ; preds = %186, %199
  %201 = load i8, ptr %176, align 1, !tbaa !139
  %202 = zext i8 %201 to i32
  %203 = udiv i32 %2, %202
  %204 = sdiv i32 %193, %202
  %205 = srem i32 %193, %202
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3231, ptr noundef nonnull @.str.1) #28
  br label %208

208:                                              ; preds = %200, %207
  %209 = urem i32 %197, %183
  %210 = udiv i32 %197, %183
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3232, ptr noundef nonnull @.str.1) #28
  br label %213

213:                                              ; preds = %208, %212
  br i1 %172, label %214, label %220

214:                                              ; preds = %213
  %215 = udiv i32 %197, %183
  %216 = srem i32 %204, %215
  %217 = icmp eq i32 %216, 0
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 2
  store i8 %218, ptr %219, align 4, !tbaa !614
  br label %220

220:                                              ; preds = %214, %213
  %221 = sdiv i32 %203, %210
  %222 = mul nsw i32 %221, %87
  store i32 %222, ptr %4, align 4, !tbaa !234
  %223 = getelementptr inbounds %struct.subreg_info, ptr %4, i64 0, i32 1
  store i32 %87, ptr %223, align 4, !tbaa !236
  br label %224

224:                                              ; preds = %220, %169, %152, %139, %97
  ret void
}

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @subreg_regno_offset(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #15 !prof !619 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #28
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  %6 = load i32, ptr %5, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #28
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @subreg_offset_representable_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 !prof !127 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #28
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  %6 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !614
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #28
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @simplify_subreg_regno(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #15 !prof !620 {
  %5 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #28
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !139
  %9 = and i8 %8, -2
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %17, label %11, !prof !621

11:                                               ; preds = %4
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !143
  %15 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %1, i32 noundef %3, i32 noundef %14) #28
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40, !prof !622

17:                                               ; preds = %4, %11
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !143
  %19 = icmp eq i32 %18, 0
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21, !prof !623
  br i1 %22, label %23, label %24, !prof !622

23:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 20, label %40
    i32 6, label %40
    i32 16, label %40
    i32 7, label %40
  ], !prof !624

24:                                               ; preds = %17
  switch i32 %0, label %25 [
    i32 16, label %40
    i32 7, label %40
  ]

25:                                               ; preds = %23, %24
  call void @subreg_get_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  %26 = getelementptr inbounds %struct.subreg_info, ptr %5, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !614
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29, !prof !621

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4, !tbaa !234
  %31 = add i32 %30, %0
  %32 = icmp ult i32 %31, 53
  br i1 %32, label %33, label %40, !prof !622

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %31, i32 noundef %3) #28
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !621

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %1) #28
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %25, %24, %23, %23, %23, %36, %29, %24, %23, %11, %39
  %41 = phi i32 [ %31, %39 ], [ -1, %11 ], [ -1, %23 ], [ -1, %24 ], [ -1, %29 ], [ -1, %36 ], [ -1, %23 ], [ -1, %23 ], [ -1, %23 ], [ -1, %24 ], [ -1, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #28
  ret i32 %41
}

declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @subreg_nregs_with_regno(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 !prof !127 {
  %3 = alloca %struct.subreg_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !139
  %11 = load i32, ptr %1, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  call void @subreg_get_info(i32 noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %13, ptr noundef nonnull %3)
  %14 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !236
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #28
  ret i32 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_first_parameter_load(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 !prof !127 {
  %3 = alloca %struct.parms_set_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.parms_set_data, ptr %3, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !625
  store i32 0, ptr %3, align 8, !tbaa !627
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %51, %2
  %9 = load i32, ptr %3, align 8, !tbaa !627
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne ptr %0, %1
  %12 = and i1 %11, %10
  br i1 %12, label %55, label %78

13:                                               ; preds = %2, %51
  %14 = phi ptr [ %53, %51 ], [ %6, %2 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 24
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !139
  %29 = icmp ult i32 %28, 53
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3411, ptr noundef nonnull @.str.1) #28
  br label %31

31:                                               ; preds = %26, %30
  %32 = load ptr, ptr %15, align 8, !tbaa !139
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !139
  %37 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %36) #28
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %15, align 8, !tbaa !139
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !139
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !139
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = load i64, ptr %4, align 8, !tbaa !625
  %48 = or i64 %46, %47
  store i64 %48, ptr %4, align 8, !tbaa !625
  %49 = load i32, ptr %3, align 8, !tbaa !627
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %3, align 8, !tbaa !627
  br label %51

51:                                               ; preds = %13, %20, %39, %31
  %52 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !139
  %54 = icmp eq ptr %53, null
  br i1 %54, label %8, label %13, !llvm.loop !628

55:                                               ; preds = %8, %72
  %56 = phi i32 [ %74, %72 ], [ %9, %8 ]
  %57 = phi ptr [ %73, %72 ], [ %0, %8 ]
  %58 = phi ptr [ %60, %72 ], [ %0, %8 ]
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = load i32, ptr %60, align 8
  %62 = trunc i32 %61 to i16
  switch i16 %62, label %72 [
    i16 10, label %78
    i16 12, label %63
    i16 8, label %66
    i16 7, label %66
    i16 9, label %66
  ]

63:                                               ; preds = %55
  %64 = icmp eq ptr %60, %1
  br i1 %64, label %78, label %65

65:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3440, ptr noundef nonnull @.str.1) #28
  br label %78

66:                                               ; preds = %55, %55, %55
  %67 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !139
  call void @note_stores(ptr noundef %68, ptr noundef nonnull @parms_set, ptr noundef nonnull %3)
  %69 = load i32, ptr %3, align 8, !tbaa !627
  %70 = icmp eq i32 %56, %69
  %71 = select i1 %70, ptr %57, ptr %60
  br i1 %70, label %78, label %72

72:                                               ; preds = %55, %66
  %73 = phi ptr [ %71, %66 ], [ %57, %55 ]
  %74 = load i32, ptr %3, align 8, !tbaa !627
  %75 = icmp ne i32 %74, 0
  %76 = icmp ne ptr %60, %1
  %77 = and i1 %76, %75
  br i1 %77, label %55, label %78, !llvm.loop !629

78:                                               ; preds = %72, %66, %55, %8, %65, %63
  %79 = phi ptr [ %57, %63 ], [ %57, %65 ], [ %0, %8 ], [ %57, %55 ], [ %71, %66 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  ret ptr %79
}

declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @parms_set(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #23 !prof !127 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !139
  %10 = icmp ult i32 %9, 53
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.parms_set_data, ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !625
  %14 = zext nneg i32 %9 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %13, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = xor i64 %15, -1
  %20 = and i64 %13, %19
  store i64 %20, ptr %12, align 8, !tbaa !625
  %21 = load i32, ptr %2, align 8, !tbaa !627
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %2, align 8, !tbaa !627
  br label %23

23:                                               ; preds = %18, %11, %7, %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @keep_with_call_p(ptr noundef %0) local_unnamed_addr #11 !prof !630 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %68, !prof !631

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %14, label %12, !prof !632

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8)
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17, !prof !633

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %37, !prof !634

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !139
  %26 = icmp ult i32 %25, 53
  br i1 %26, label %27, label %37, !prof !635

27:                                               ; preds = %23
  %28 = zext nneg i32 %25 to i64
  %29 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !139
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32, !prof !635

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = tail call i32 @general_operand(ptr noundef %34, i32 noundef 0) #28
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %32, %27, %23, %17
  %38 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !139
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %57, !prof !636

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !139
  %46 = tail call zeroext i8 @ix86_function_value_regno_p(i32 noundef %45) #28
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %57, label %48, !prof !637

48:                                               ; preds = %43
  %49 = load ptr, ptr %18, align 8, !tbaa !139
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %57, !prof !638

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !139
  %56 = icmp ugt i32 %55, 52
  br i1 %56, label %68, label %57, !prof !639

57:                                               ; preds = %53, %48, %43, %37
  %58 = load ptr, ptr %18, align 8, !tbaa !139
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !128
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %68, !prof !640

61:                                               ; preds = %57
  %62 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %0) #28
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = tail call zeroext i8 @keep_with_call_p(ptr noundef nonnull %62), !range !448
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %1, %14, %57, %67, %64, %53, %32
  %69 = phi i8 [ 1, %32 ], [ 1, %53 ], [ 1, %64 ], [ 0, %67 ], [ 0, %1 ], [ 0, %57 ], [ 0, %14 ]
  ret i8 %69
}

declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_function_value_regno_p(i32 noundef) local_unnamed_addr #3

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @label_is_jump_target_p(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !641 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %87, label %6, !prof !642

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp ne i32 %8, 9
  %10 = icmp eq ptr %4, null
  %11 = or i1 %10, %9
  br i1 %11, label %26, label %12, !prof !643

12:                                               ; preds = %6
  %13 = tail call ptr @next_active_insn(ptr noundef nonnull %4) #28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15, !prof !570

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %26, !prof !571

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65534
  %24 = icmp eq i32 %23, 20
  br i1 %24, label %25, label %26, !prof !572

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %6, %12, %15, %19, %25
  %27 = phi ptr [ %4, %12 ], [ %13, %25 ], [ %4, %19 ], [ %4, %15 ], [ %4, %6 ]
  %28 = phi i1 [ true, %12 ], [ false, %25 ], [ true, %19 ], [ true, %15 ], [ true, %6 ]
  br i1 %28, label %53, label %29, !prof !644

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %31, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 21
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !139
  %39 = load i32, ptr %38, align 8, !tbaa !147
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = zext nneg i32 %39 to i64
  br label %46

43:                                               ; preds = %46
  %44 = add nuw nsw i64 %47, 1
  %45 = icmp eq i64 %44, %42
  br i1 %45, label %53, label %46, !llvm.loop !645

46:                                               ; preds = %41, %43
  %47 = phi i64 [ 0, %41 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.rtvec_def, ptr %38, i64 0, i32 1, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !128
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %87, label %43

53:                                               ; preds = %43, %29, %26
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -7
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %87, !prof !328

58:                                               ; preds = %53
  %59 = icmp eq ptr %0, null
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !139
  %62 = icmp eq ptr %61, null
  br i1 %59, label %63, label %73, !prof !329

63:                                               ; preds = %58
  br i1 %62, label %87, label %64, !prof !330

64:                                               ; preds = %63, %69
  %65 = phi ptr [ %71, %69 ], [ %61, %63 ]
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 16711680
  %68 = icmp eq i32 %67, 589824
  br i1 %68, label %87, label %69, !prof !331

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !139
  %72 = icmp eq ptr %71, null
  br i1 %72, label %87, label %64, !prof !332, !llvm.loop !333

73:                                               ; preds = %58
  br i1 %62, label %87, label %74, !prof !334

74:                                               ; preds = %73, %83
  %75 = phi ptr [ %85, %83 ], [ %61, %73 ]
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 16711680
  %78 = icmp eq i32 %77, 589824
  br i1 %78, label %79, label %83, !prof !335

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !139
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %87, label %83, !prof !336

83:                                               ; preds = %79, %74
  %84 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !139
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %74, !prof !337, !llvm.loop !338

87:                                               ; preds = %46, %83, %79, %69, %64, %73, %63, %53, %2
  %88 = phi i8 [ 1, %2 ], [ 0, %53 ], [ 0, %63 ], [ 0, %73 ], [ 0, %69 ], [ 1, %64 ], [ 0, %83 ], [ 1, %79 ], [ 1, %46 ]
  ret i8 %88
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @rtx_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #11 !prof !646 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  %5 = icmp eq ptr %0, null
  br i1 %5, label %86, label %6, !prof !647

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = trunc i32 %7 to i16
  switch i16 %9, label %13 [
    i16 52, label %10
    i16 55, label %11
    i16 59, label %11
    i16 58, label %11
    i16 60, label %11
    i16 24, label %12
  ], !prof !648

10:                                               ; preds = %6
  store i32 20, ptr %4, align 4, !tbaa !143
  br label %14

11:                                               ; preds = %6, %6, %6, %6
  store i32 28, ptr %4, align 4, !tbaa !143
  br label %14

12:                                               ; preds = %6
  store i32 0, ptr %4, align 4, !tbaa !143
  br label %14

13:                                               ; preds = %6
  store i32 4, ptr %4, align 4, !tbaa !143
  br label %14

14:                                               ; preds = %13, %12, %11, %10
  switch i16 %9, label %36 [
    i16 37, label %86
    i16 39, label %15
  ], !prof !649

15:                                               ; preds = %14
  store i32 0, ptr %4, align 4, !tbaa !143
  %16 = lshr i32 %7, 16
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %17, i32 noundef %22) #28
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %42, !prof !650

25:                                               ; preds = %15
  %26 = load i32, ptr %0, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !139
  %32 = lshr i8 %31, 2
  %33 = add nuw nsw i8 %32, 2
  %34 = zext nneg i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 2
  br label %86

36:                                               ; preds = %14
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 60), align 8, !tbaa !651
  %38 = call zeroext i8 %37(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %2) #28, !prof !652
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40, !prof !653

40:                                               ; preds = %36
  %41 = load i32, ptr %4, align 4, !tbaa !143
  br label %86

42:                                               ; preds = %36, %15
  %43 = zext nneg i32 %8 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !128
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !139
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %84, label %49, !prof !654

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %82
  %53 = phi i64 [ %51, %49 ], [ %54, %82 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i8, ptr %45, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !139
  switch i8 %56, label %82 [
    i8 101, label %63
    i8 69, label %57
  ], !prof !655

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %59 = getelementptr inbounds [1 x %union.rtunion_def], ptr %58, i64 0, i64 %54
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = load i32, ptr %60, align 8, !tbaa !147
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %69, label %82

63:                                               ; preds = %52
  %64 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %65 = load ptr, ptr %64, align 8, !tbaa !139
  %66 = call i32 @rtx_cost(ptr noundef %65, i32 noundef %8, i8 noundef zeroext %2)
  %67 = load i32, ptr %4, align 4, !tbaa !143
  %68 = add nsw i32 %67, %66
  store i32 %68, ptr %4, align 4, !tbaa !143
  br label %82

69:                                               ; preds = %57, %69
  %70 = phi i64 [ %77, %69 ], [ 0, %57 ]
  %71 = phi ptr [ %78, %69 ], [ %60, %57 ]
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !128
  %74 = call i32 @rtx_cost(ptr noundef %73, i32 noundef %8, i8 noundef zeroext %2)
  %75 = load i32, ptr %4, align 4, !tbaa !143
  %76 = add nsw i32 %75, %74
  store i32 %76, ptr %4, align 4, !tbaa !143
  %77 = add nuw nsw i64 %70, 1
  %78 = load ptr, ptr %59, align 8, !tbaa !139
  %79 = load i32, ptr %78, align 8, !tbaa !147
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %69, label %82, !llvm.loop !656

82:                                               ; preds = %69, %57, %52, %63
  %83 = icmp sgt i64 %53, 1
  br i1 %83, label %52, label %84, !prof !657, !llvm.loop !658

84:                                               ; preds = %82, %42
  %85 = load i32, ptr %4, align 4, !tbaa !143
  br label %86

86:                                               ; preds = %14, %3, %84, %40, %25
  %87 = phi i32 [ %41, %40 ], [ %85, %84 ], [ %35, %25 ], [ 0, %3 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret i32 %87
}

declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @address_cost(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #15 !prof !659 {
  %5 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %0, i8 noundef zeroext %2) #28
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !660

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 61), align 8, !tbaa !661
  %9 = tail call i32 %8(ptr noundef %0, i8 noundef zeroext %3) #28, !prof !662
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi i32 [ %9, %7 ], [ 1000, %4 ]
  ret i32 %11
}

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @default_address_cost(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #13 !prof !127 {
  %3 = tail call i32 @rtx_cost(ptr noundef %0, i32 noundef 43, i8 noundef zeroext %1)
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @nonzero_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !663 {
  %3 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i64 noundef 0)
  ret i64 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @cached_nonzero_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #11 !prof !664 !PGOFuncName !665 {
  %6 = alloca i64, align 8
  %7 = icmp eq ptr %0, %2
  %8 = icmp eq i32 %1, %3
  %9 = and i1 %7, %8
  br i1 %9, label %116, label %10, !prof !666

10:                                               ; preds = %5
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !143
  %16 = and i32 %15, -2
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %68, !prof !667

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %27, !prof !668

24:                                               ; preds = %18
  %25 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %20, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %26 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %20, i32 noundef %1, i64 noundef %25)
  br label %65

27:                                               ; preds = %18
  %28 = load i32, ptr %20, align 8
  %29 = and i32 %28, 65535
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !143
  %33 = and i32 %32, -2
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %46, !prof !669

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !139
  %38 = icmp eq ptr %22, %37
  br i1 %38, label %43, label %39, !prof !670

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !139
  %42 = icmp eq ptr %22, %41
  br i1 %42, label %43, label %46, !prof !671

43:                                               ; preds = %39, %35
  %44 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %22, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %45 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %22, i32 noundef %1, i64 noundef %44)
  br label %65

46:                                               ; preds = %39, %27
  %47 = load i32, ptr %22, align 8
  %48 = and i32 %47, 65535
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !143
  %52 = and i32 %51, -2
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %65, !prof !672

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  %57 = icmp eq ptr %20, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = icmp eq ptr %20, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54
  %63 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %20, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %64 = tail call fastcc i64 @nonzero_bits1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %20, i32 noundef %1, i64 noundef %63)
  br label %65

65:                                               ; preds = %46, %58, %62, %43, %24
  %66 = phi i64 [ %26, %24 ], [ %45, %43 ], [ %64, %62 ], [ undef, %58 ], [ undef, %46 ]
  %67 = phi i1 [ false, %24 ], [ false, %43 ], [ false, %62 ], [ true, %58 ], [ true, %46 ]
  br i1 %67, label %68, label %116, !prof !673

68:                                               ; preds = %65, %10
  %69 = zext i32 %1 to i64
  %70 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !264
  %72 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %73 = load i8, ptr %72, align 1, !tbaa !139
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 3
  %76 = load i32, ptr %0, align 8
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !139
  switch i8 %81, label %82 [
    i8 8, label %116
    i8 9, label %116
    i8 11, label %116
    i8 17, label %116
  ], !prof !674

82:                                               ; preds = %68
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %84 = load i8, ptr %83, align 1, !tbaa !139
  switch i8 %84, label %85 [
    i8 8, label %116
    i8 9, label %116
    i8 11, label %116
    i8 17, label %116
  ], !prof !674

85:                                               ; preds = %82
  %86 = add i8 %81, -12
  %87 = icmp ult i8 %86, 5
  %88 = add i8 %84, -12
  %89 = icmp ult i8 %88, 5
  %90 = or i1 %87, %89
  br i1 %90, label %116, label %91, !prof !675

91:                                               ; preds = %85
  %92 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %79
  %93 = load i8, ptr %92, align 1, !tbaa !139
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 3
  %96 = icmp ugt i32 %95, %75
  br i1 %96, label %97, label %100, !prof !676

97:                                               ; preds = %91
  %98 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %79
  %99 = load i64, ptr %98, align 8, !tbaa !264
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i32 [ %95, %97 ], [ %75, %91 ]
  %102 = phi i64 [ %99, %97 ], [ %71, %91 ]
  %103 = phi i32 [ %78, %97 ], [ %1, %91 ]
  %104 = icmp ugt i32 %101, 64
  br i1 %104, label %116, label %105, !prof !675

105:                                              ; preds = %100
  %106 = icmp ne i32 %78, 0
  %107 = icmp ne i32 %78, %103
  %108 = and i1 %106, %107
  %109 = icmp ult i8 %93, 5
  %110 = and i1 %109, %108
  br i1 %110, label %111, label %132, !prof !677

111:                                              ; preds = %105
  %112 = zext i32 %103 to i64
  %113 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !139
  %115 = icmp ugt i8 %114, %93
  br i1 %115, label %118, label %132, !prof !678

116:                                              ; preds = %5, %65, %414, %132, %82, %82, %82, %68, %68, %68, %68, %82, %85, %100, %176, %178, %181, %184, %186, %204, %214, %249, %261, %337, %351, %357, %361, %378, %389, %406, %421, %425, %471, %475, %481, %482, %483, %484, %490, %267, %252, %195, %118
  %117 = phi i64 [ %131, %118 ], [ %203, %195 ], [ %260, %252 ], [ %272, %267 ], [ %495, %490 ], [ %66, %65 ], [ %4, %5 ], [ %180, %178 ], [ %177, %176 ], [ %71, %85 ], [ %71, %82 ], [ %71, %68 ], [ %102, %100 ], [ -1, %482 ], [ -1, %481 ], [ %480, %475 ], [ %474, %471 ], [ %102, %425 ], [ %102, %421 ], [ %413, %406 ], [ %391, %389 ], [ %379, %378 ], [ %364, %361 ], [ %102, %357 ], [ %102, %351 ], [ %350, %337 ], [ %251, %249 ], [ %218, %214 ], [ %208, %204 ], [ 1, %483 ], [ %194, %186 ], [ %102, %184 ], [ %183, %181 ], [ %102, %261 ], [ %102, %484 ], [ %71, %68 ], [ %71, %68 ], [ %71, %68 ], [ %71, %82 ], [ %71, %82 ], [ %71, %82 ], [ %102, %132 ], [ %102, %414 ]
  ret i64 %117

118:                                              ; preds = %111
  %119 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %0, i32 noundef %78, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %120 = and i64 %119, %102
  %121 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %112
  %122 = load i64, ptr %121, align 8, !tbaa !264
  %123 = load i32, ptr %0, align 8
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !264
  %129 = xor i64 %128, -1
  %130 = and i64 %122, %129
  %131 = or i64 %130, %120
  br label %116

132:                                              ; preds = %111, %105
  %133 = trunc i32 %76 to i16
  switch i16 %133, label %116 [
    i16 37, label %134
    i16 30, label %178
    i16 47, label %484
    i16 81, label %181
    i16 80, label %181
    i16 92, label %181
    i16 97, label %181
    i16 83, label %181
    i16 87, label %181
    i16 94, label %181
    i16 85, label %181
    i16 89, label %181
    i16 96, label %181
    i16 82, label %181
    i16 86, label %181
    i16 93, label %181
    i16 84, label %181
    i16 88, label %181
    i16 95, label %181
    i16 90, label %181
    i16 91, label %181
    i16 51, label %184
    i16 118, label %483
    i16 100, label %195
    i16 99, label %204
    i16 98, label %219
    i16 61, label %252
    i16 63, label %261
    i16 62, label %261
    i16 72, label %261
    i16 73, label %261
    i16 70, label %261
    i16 71, label %261
    i16 49, label %273
    i16 50, label %273
    i16 52, label %273
    i16 55, label %273
    i16 59, label %273
    i16 58, label %273
    i16 60, label %273
    i16 120, label %351
    i16 39, label %365
    i16 67, label %414
    i16 68, label %414
    i16 65, label %414
    i16 66, label %414
    i16 114, label %475
    i16 117, label %475
    i16 115, label %481
    i16 116, label %482
  ], !prof !679

134:                                              ; preds = %132
  %135 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !128
  %136 = icmp eq ptr %135, %0
  %137 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %138 = icmp eq ptr %137, %0
  %139 = select i1 %136, i1 true, i1 %138, !prof !680
  %140 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %141 = icmp eq ptr %140, %0
  %142 = select i1 %139, i1 true, i1 %141, !prof !680
  br i1 %142, label %143, label %167, !prof !680

143:                                              ; preds = %134
  %144 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !681
  %145 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !139
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %144, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !139
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %143
  %152 = lshr i8 %149, 3
  %153 = zext nneg i8 %152 to i64
  br i1 %136, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32, ptr @target_flags, align 4, !tbaa !143
  %156 = and i32 %155, 8196
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = tail call i32 @ix86_cfun_abi() #28
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = tail call i64 @llvm.umin.i64(i64 %153, i64 4)
  br label %163

163:                                              ; preds = %161, %158, %154, %151
  %164 = phi i64 [ %153, %158 ], [ %162, %161 ], [ %153, %154 ], [ %153, %151 ]
  %165 = sub nsw i64 0, %164
  %166 = and i64 %102, %165
  br label %167

167:                                              ; preds = %163, %143, %134
  %168 = phi i64 [ %166, %163 ], [ %102, %143 ], [ %102, %134 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  store i64 %168, ptr %6, align 8, !tbaa !264
  %169 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 2), align 8, !tbaa !690
  %170 = call ptr %169(ptr noundef nonnull %0, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #28, !prof !692
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172, !prof !693

172:                                              ; preds = %167
  %173 = call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %170, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %174 = load i64, ptr %6, align 8, !tbaa !264
  %175 = and i64 %174, %173
  store i64 %175, ptr %6, align 8, !tbaa !264
  br label %176

176:                                              ; preds = %172, %167
  %177 = load i64, ptr %6, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  br label %116

178:                                              ; preds = %132
  %179 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !139
  br label %116

181:                                              ; preds = %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132, %132
  %182 = icmp eq i8 %81, 2
  %183 = select i1 %182, i64 1, i64 %102, !prof !694
  br label %116

184:                                              ; preds = %132
  %185 = icmp ugt i32 %101, %94
  br i1 %185, label %186, label %116, !prof !695

186:                                              ; preds = %184
  %187 = zext i32 %103 to i64
  %188 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %187
  %189 = load i64, ptr %188, align 8, !tbaa !264
  %190 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %79
  %191 = load i64, ptr %190, align 8, !tbaa !264
  %192 = xor i64 %191, -1
  %193 = and i64 %189, %192
  %194 = or i64 %193, %102
  br label %116

195:                                              ; preds = %132
  %196 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !139
  %198 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %197, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %199 = zext i32 %103 to i64
  %200 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !264
  %202 = and i64 %198, %201
  %203 = and i64 %202, %102
  br label %116

204:                                              ; preds = %132
  %205 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !139
  %207 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %206, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %208 = and i64 %207, %102
  %209 = load ptr, ptr %205, align 8, !tbaa !139
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 16
  %212 = and i32 %211, 255
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %116, label %214, !prof !696

214:                                              ; preds = %204
  %215 = zext nneg i32 %212 to i64
  %216 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !264
  %218 = and i64 %217, %208
  br label %116

219:                                              ; preds = %132
  %220 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !139
  %222 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %221, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %223 = load ptr, ptr %220, align 8, !tbaa !139
  %224 = load i32, ptr %223, align 8
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %249, label %228

228:                                              ; preds = %219
  %229 = zext nneg i32 %226 to i64
  %230 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %229
  %231 = load i64, ptr %230, align 8, !tbaa !264
  %232 = and i64 %231, %222
  %233 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %229
  %234 = load i8, ptr %233, align 1, !tbaa !139
  %235 = zext i8 %234 to i64
  %236 = shl nuw nsw i64 %235, 3
  %237 = add nuw nsw i64 %236, 4294967295
  %238 = and i64 %237, 4294967295
  %239 = shl nuw i64 1, %238
  %240 = and i64 %239, %232
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %228
  %243 = zext i32 %103 to i64
  %244 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !264
  %246 = xor i64 %231, -1
  %247 = and i64 %245, %246
  %248 = or i64 %247, %232
  br label %249

249:                                              ; preds = %242, %228, %219
  %250 = phi i64 [ %248, %242 ], [ %232, %228 ], [ %222, %219 ]
  %251 = and i64 %250, %102
  br label %116

252:                                              ; preds = %132
  %253 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !139
  %255 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %254, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %256 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %257 = load ptr, ptr %256, align 8, !tbaa !139
  %258 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %257, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %259 = and i64 %255, %258
  %260 = and i64 %259, %102
  br label %116

261:                                              ; preds = %132, %132, %132, %132, %132, %132
  %262 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !139
  %264 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %263, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %265 = and i64 %264, %102
  %266 = icmp eq i64 %265, %102
  br i1 %266, label %116, label %267, !prof !697

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !139
  %270 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %269, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %271 = or i64 %270, %264
  %272 = and i64 %271, %102
  br label %116

273:                                              ; preds = %132, %132, %132, %132, %132, %132, %132
  %274 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !139
  %276 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %275, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %277 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %278 = load ptr, ptr %277, align 8, !tbaa !139
  %279 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %278, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %280 = load i32, ptr %0, align 8
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  %283 = zext nneg i32 %282 to i64
  %284 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !139
  %286 = zext i8 %285 to i64
  %287 = shl nuw nsw i64 %286, 3
  %288 = add nuw nsw i64 %287, 4294967295
  %289 = tail call i32 @floor_log2(i64 noundef %276) #28
  %290 = add nsw i32 %289, 1
  %291 = tail call i32 @floor_log2(i64 noundef %279) #28
  %292 = add nsw i32 %291, 1
  %293 = sub i64 0, %276
  %294 = and i64 %276, %293
  %295 = tail call i32 @floor_log2(i64 noundef %294) #28
  %296 = sub i64 0, %279
  %297 = and i64 %279, %296
  %298 = tail call i32 @floor_log2(i64 noundef %297) #28
  %299 = and i64 %288, 4294967295
  %300 = shl nuw i64 1, %299
  %301 = and i64 %300, %276
  %302 = and i64 %300, %279
  switch i16 %133, label %336 [
    i16 49, label %303
    i16 50, label %307
    i16 52, label %309
    i16 55, label %312
    i16 59, label %319
    i16 58, label %322
    i16 60, label %331
  ], !prof !698

303:                                              ; preds = %273
  %304 = tail call i32 @llvm.smax.i32(i32 %290, i32 %292)
  %305 = add nsw i32 %304, 1
  %306 = tail call i32 @llvm.smin.i32(i32 %295, i32 %298)
  br label %337

307:                                              ; preds = %273
  %308 = tail call i32 @llvm.smin.i32(i32 %295, i32 %298)
  br label %337

309:                                              ; preds = %273
  %310 = add nsw i32 %292, %290
  %311 = add nsw i32 %298, %295
  br label %337

312:                                              ; preds = %273
  %313 = icmp eq i32 %292, 0
  br i1 %313, label %337, label %314

314:                                              ; preds = %312
  %315 = icmp ne i64 %301, 0
  %316 = icmp ne i64 %302, 0
  %317 = select i1 %315, i1 true, i1 %316
  %318 = select i1 %317, i32 %101, i32 %290
  br label %337

319:                                              ; preds = %273
  %320 = icmp eq i32 %292, 0
  %321 = select i1 %320, i32 %101, i32 %290
  br label %337

322:                                              ; preds = %273
  %323 = icmp eq i32 %292, 0
  br i1 %323, label %337, label %324

324:                                              ; preds = %322
  %325 = icmp ne i64 %301, 0
  %326 = icmp ne i64 %302, 0
  %327 = select i1 %325, i1 true, i1 %326
  %328 = tail call i32 @llvm.smin.i32(i32 %290, i32 %292)
  %329 = select i1 %327, i32 %101, i32 %328
  %330 = tail call i32 @llvm.smin.i32(i32 %295, i32 %298)
  br label %337

331:                                              ; preds = %273
  %332 = icmp eq i32 %292, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %331
  %334 = tail call i32 @llvm.smin.i32(i32 %290, i32 %292)
  %335 = tail call i32 @llvm.smin.i32(i32 %295, i32 %298)
  br label %337

336:                                              ; preds = %273
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3984, ptr noundef nonnull @.str.1) #28
  br label %337

337:                                              ; preds = %336, %333, %331, %324, %322, %319, %314, %312, %309, %307, %303
  %338 = phi i32 [ %101, %336 ], [ %101, %331 ], [ %334, %333 ], [ %101, %322 ], [ %329, %324 ], [ %101, %312 ], [ %310, %309 ], [ %101, %307 ], [ %305, %303 ], [ %318, %314 ], [ %321, %319 ]
  %339 = phi i32 [ 0, %336 ], [ 0, %331 ], [ %335, %333 ], [ 0, %322 ], [ %330, %324 ], [ 0, %312 ], [ %311, %309 ], [ %308, %307 ], [ %306, %303 ], [ 0, %314 ], [ 0, %319 ]
  %340 = icmp ult i32 %338, %101
  %341 = zext nneg i32 %338 to i64
  %342 = shl nsw i64 -1, %341
  %343 = xor i64 %342, -1
  %344 = select i1 %340, i64 %343, i64 -1, !prof !699
  %345 = icmp sgt i32 %339, 0
  %346 = zext nneg i32 %339 to i64
  %347 = shl nsw i64 -1, %346
  %348 = select i1 %345, i64 %347, i64 -1, !prof !700
  %349 = and i64 %344, %348
  %350 = and i64 %349, %102
  br label %116

351:                                              ; preds = %132
  %352 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !139
  %354 = load i32, ptr %353, align 8
  %355 = and i32 %354, 65535
  %356 = icmp eq i32 %355, 30
  br i1 %356, label %357, label %116, !prof !701

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 0, i32 1
  %359 = load i64, ptr %358, align 8, !tbaa !139
  %360 = icmp slt i64 %359, 64
  br i1 %360, label %361, label %116, !prof !701

361:                                              ; preds = %357
  %362 = shl nsw i64 -1, %359
  %363 = xor i64 %362, -1
  %364 = and i64 %102, %363
  br label %116

365:                                              ; preds = %132
  %366 = and i32 %76, 268435456
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %378, label %368, !prof !702

368:                                              ; preds = %365
  %369 = and i32 %76, 201326592
  %370 = icmp eq i32 %369, 67108864
  br i1 %370, label %371, label %378

371:                                              ; preds = %368
  %372 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %79
  %373 = load i64, ptr %372, align 8, !tbaa !264
  %374 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !139
  %376 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %375, i32 noundef %78, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %377 = and i64 %376, %373
  br label %378

378:                                              ; preds = %371, %368, %365
  %379 = phi i64 [ %377, %371 ], [ %102, %368 ], [ %102, %365 ]
  %380 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !139
  %382 = load i32, ptr %381, align 8
  %383 = lshr i32 %382, 16
  %384 = and i32 %383, 255
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !139
  %388 = icmp ult i8 %387, 5
  br i1 %388, label %389, label %116, !prof !702

389:                                              ; preds = %378
  %390 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %381, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %391 = and i64 %390, %379
  %392 = load i32, ptr %0, align 8
  %393 = lshr i32 %392, 16
  %394 = and i32 %393, 255
  %395 = zext nneg i32 %394 to i64
  %396 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !139
  %398 = load ptr, ptr %380, align 8, !tbaa !139
  %399 = load i32, ptr %398, align 8
  %400 = lshr i32 %399, 16
  %401 = and i32 %400, 255
  %402 = zext nneg i32 %401 to i64
  %403 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !139
  %405 = icmp ugt i8 %397, %404
  br i1 %405, label %406, label %116, !prof !703

406:                                              ; preds = %389
  %407 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %395
  %408 = load i64, ptr %407, align 8, !tbaa !264
  %409 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %402
  %410 = load i64, ptr %409, align 8, !tbaa !264
  %411 = xor i64 %410, -1
  %412 = and i64 %408, %411
  %413 = or i64 %412, %391
  br label %116

414:                                              ; preds = %132, %132, %132, %132
  %415 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %416 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %417 = load ptr, ptr %416, align 8, !tbaa !139
  %418 = load i32, ptr %417, align 8
  %419 = and i32 %418, 65535
  %420 = icmp eq i32 %419, 30
  br i1 %420, label %421, label %116, !prof !704

421:                                              ; preds = %414
  %422 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1
  %423 = load i64, ptr %422, align 8, !tbaa !139
  %424 = icmp ult i64 %423, 64
  br i1 %424, label %425, label %116, !prof !705

425:                                              ; preds = %421
  %426 = zext i8 %93 to i16
  %427 = shl nuw nsw i16 %426, 3
  %428 = zext nneg i16 %427 to i64
  %429 = icmp slt i64 %423, %428
  br i1 %429, label %430, label %116, !prof !705

430:                                              ; preds = %425
  %431 = zext nneg i16 %427 to i32
  %432 = trunc i64 %423 to i32
  %433 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %79
  %434 = load i64, ptr %433, align 8, !tbaa !264
  %435 = load ptr, ptr %415, align 8, !tbaa !139
  %436 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %435, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %437 = and i64 %436, %434
  %438 = icmp ugt i32 %101, %431
  %439 = xor i64 %434, -1
  %440 = and i64 %102, %439
  %441 = and i64 %440, %436
  %442 = select i1 %438, i64 %441, i64 0, !prof !706
  switch i16 %133, label %462 [
    i16 68, label %443
    i16 67, label %445
    i16 65, label %460
  ], !prof !707

443:                                              ; preds = %430
  %444 = lshr i64 %437, %423
  br label %471

445:                                              ; preds = %430
  %446 = lshr i64 %437, %423
  %447 = xor i32 %432, -1
  %448 = add nsw i32 %447, %431
  %449 = zext nneg i32 %448 to i64
  %450 = shl nuw i64 1, %449
  %451 = and i64 %446, %450
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %471, label %453, !prof !708

453:                                              ; preds = %445
  %454 = shl nsw i64 -1, %423
  %455 = xor i64 %454, -1
  %456 = sub nsw i32 %431, %432
  %457 = zext nneg i32 %456 to i64
  %458 = shl i64 %455, %457
  %459 = or i64 %446, %458
  br label %471

460:                                              ; preds = %430
  %461 = shl i64 %437, %423
  br label %471

462:                                              ; preds = %430
  %463 = urem i32 %432, %431
  %464 = zext nneg i32 %463 to i64
  %465 = shl i64 %437, %464
  %466 = sub nsw i32 %431, %463
  %467 = zext nneg i32 %466 to i64
  %468 = lshr i64 %437, %467
  %469 = or i64 %468, %465
  %470 = and i64 %469, %434
  br label %471

471:                                              ; preds = %462, %460, %453, %445, %443
  %472 = phi i64 [ %444, %443 ], [ %459, %453 ], [ %446, %445 ], [ %461, %460 ], [ %470, %462 ]
  %473 = or i64 %472, %442
  %474 = and i64 %473, %102
  br label %116

475:                                              ; preds = %132, %132
  %476 = zext nneg i32 %101 to i64
  %477 = tail call i32 @floor_log2(i64 noundef %476) #28
  %478 = zext nneg i32 %477 to i64
  %479 = shl i64 2, %478
  %480 = add nsw i64 %479, -1
  br label %116

481:                                              ; preds = %132
  br label %116

482:                                              ; preds = %132
  br label %116

483:                                              ; preds = %132
  br label %116

484:                                              ; preds = %132
  %485 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %486 = load ptr, ptr %485, align 8, !tbaa !139
  %487 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %486, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %488 = and i64 %487, %102
  %489 = icmp eq i64 %488, %102
  br i1 %489, label %116, label %490, !prof !709

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %492 = load ptr, ptr %491, align 8, !tbaa !139
  %493 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %492, i32 noundef %103, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %494 = or i64 %493, %487
  %495 = and i64 %494, %102
  br label %116
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @num_sign_bit_copies(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !710 {
  %3 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cached_num_sign_bit_copies(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 !prof !711 !PGOFuncName !712 {
  %6 = alloca i32, align 4
  br label %7

7:                                                ; preds = %442, %429, %249, %219, %5
  %8 = phi i32 [ 0, %5 ], [ %231, %219 ], [ %8, %249 ], [ %8, %429 ], [ %8, %442 ]
  %9 = phi ptr [ %0, %5 ], [ %221, %219 ], [ %251, %249 ], [ %430, %429 ], [ %443, %442 ]
  %10 = phi i32 [ %1, %5 ], [ 0, %219 ], [ %83, %249 ], [ %83, %429 ], [ %83, %442 ]
  %11 = icmp eq ptr %9, %2
  %12 = icmp eq i32 %10, %3
  %13 = and i1 %11, %12
  br i1 %13, label %581, label %14, !prof !713

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !143
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %72, !prof !714

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !139
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %28, label %31, !prof !715

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %24, i32 noundef %10, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %30 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %9, i32 noundef %10, ptr noundef %24, i32 noundef %10, i32 noundef %29)
  br label %69

31:                                               ; preds = %22
  %32 = load i32, ptr %24, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !143
  %37 = and i32 %36, -2
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %50, !prof !716

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !139
  %42 = icmp eq ptr %26, %41
  br i1 %42, label %47, label %43, !prof !717

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !139
  %46 = icmp eq ptr %26, %45
  br i1 %46, label %47, label %50, !prof !718

47:                                               ; preds = %43, %39
  %48 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %26, i32 noundef %10, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %49 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %9, i32 noundef %10, ptr noundef %26, i32 noundef %10, i32 noundef %48)
  br label %69

50:                                               ; preds = %43, %31
  %51 = load i32, ptr %26, align 8
  %52 = and i32 %51, 65535
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !143
  %56 = and i32 %55, -2
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %69, !prof !719

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = icmp eq ptr %24, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !139
  %65 = icmp eq ptr %24, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %58
  %67 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %24, i32 noundef %10, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %68 = tail call fastcc i32 @num_sign_bit_copies1(ptr noundef nonnull %9, i32 noundef %10, ptr noundef nonnull %24, i32 noundef %10, i32 noundef %67)
  br label %69

69:                                               ; preds = %50, %62, %66, %47, %28
  %70 = phi i32 [ %30, %28 ], [ %49, %47 ], [ %68, %66 ], [ undef, %62 ], [ undef, %50 ]
  %71 = phi i1 [ false, %28 ], [ false, %47 ], [ false, %66 ], [ true, %62 ], [ true, %50 ]
  br i1 %71, label %72, label %581, !prof !720

72:                                               ; preds = %69, %14
  %73 = load i32, ptr %9, align 8
  %74 = and i32 %73, 65535
  %75 = zext i32 %10 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !139
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 3
  %80 = icmp eq i32 %10, 0
  %81 = lshr i32 %73, 16
  %82 = and i32 %81, 255
  %83 = select i1 %80, i32 %82, i32 %10, !prof !721
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %581, label %85, !prof !722

85:                                               ; preds = %72
  %86 = zext i32 %83 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !139
  %89 = add i8 %88, -8
  %90 = icmp ult i8 %89, 10
  br i1 %90, label %568, label %91

91:                                               ; preds = %568, %85
  %92 = zext nneg i32 %82 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !139
  %95 = add i8 %94, -8
  %96 = icmp ult i8 %95, 10
  br i1 %96, label %573, label %97

97:                                               ; preds = %91
  %98 = add i8 %88, -12
  %99 = icmp ult i8 %98, 5
  br i1 %99, label %581, label %100, !prof !722

100:                                              ; preds = %573, %97
  %101 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %92
  %102 = load i8, ptr %101, align 1, !tbaa !139
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 3
  %105 = icmp ult i32 %79, %104
  br i1 %105, label %108, label %122, !prof !721

106:                                              ; preds = %581, %538, %527, %376, %232, %191, %168, %108
  %107 = phi i32 [ %121, %108 ], [ %182, %168 ], [ %205, %191 ], [ %248, %232 ], [ %387, %376 ], [ %537, %527 ], [ %546, %538 ], [ %583, %581 ]
  ret i32 %107

108:                                              ; preds = %100
  %109 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %9, i32 noundef %82, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %110 = load i32, ptr %9, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !139
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %78, %116
  %118 = shl nsw i32 %117, 3
  %119 = add i32 %118, %109
  %120 = tail call i32 @llvm.smax.i32(i32 %119, i32 1)
  %121 = add i32 %120, %8
  br label %106

122:                                              ; preds = %100
  %123 = icmp ne i32 %82, 0
  %124 = icmp ugt i32 %79, %104
  %125 = select i1 %123, i1 %124, i1 false, !prof !723
  br i1 %125, label %581, label %126, !prof !724

126:                                              ; preds = %122
  %127 = trunc i32 %73 to i16
  switch i16 %127, label %551 [
    i16 37, label %128
    i16 91, label %547
    i16 30, label %141
    i16 39, label %163
    i16 119, label %206
    i16 98, label %219
    i16 100, label %232
    i16 64, label %249
    i16 66, label %252
    i16 69, label %252
    i16 51, label %285
    i16 62, label %308
    i16 61, label %308
    i16 63, label %308
    i16 70, label %308
    i16 71, label %308
    i16 72, label %308
    i16 73, label %308
    i16 49, label %352
    i16 50, label %352
    i16 52, label %388
    i16 59, label %418
    i16 60, label %431
    i16 55, label %444
    i16 58, label %462
    i16 67, label %479
    i16 65, label %509
    i16 47, label %538
    i16 81, label %547
    i16 80, label %547
    i16 82, label %547
    i16 83, label %547
    i16 84, label %547
    i16 85, label %547
    i16 92, label %547
    i16 97, label %547
    i16 93, label %547
    i16 94, label %547
    i16 95, label %547
    i16 96, label %547
    i16 86, label %547
    i16 87, label %547
    i16 88, label %547
    i16 89, label %547
    i16 90, label %547
  ], !prof !725

128:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 1, ptr %6, align 4, !tbaa !143
  %129 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 3), align 8, !tbaa !726
  %130 = call ptr %129(ptr noundef nonnull %9, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #28, !prof !727
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132, !prof !728

132:                                              ; preds = %128
  %133 = call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %130, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi i32 [ %133, %132 ], [ 1, %128 ]
  %136 = icmp ult i32 %135, 2
  %137 = load i32, ptr %6, align 4
  %138 = icmp ult i32 %137, 2
  %139 = select i1 %136, i1 %138, i1 false, !prof !729
  %140 = call i32 @llvm.umax.i32(i32 %135, i32 %137)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  br i1 %139, label %551, label %581, !prof !730

141:                                              ; preds = %126
  %142 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !139
  %144 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %86
  %145 = load i64, ptr %144, align 8, !tbaa !264
  %146 = and i64 %145, %143
  %147 = icmp ult i8 %77, 9
  br i1 %147, label %148, label %156, !prof !731

148:                                              ; preds = %141
  %149 = add nsw i32 %79, -1
  %150 = zext nneg i32 %149 to i64
  %151 = shl nuw i64 1, %150
  %152 = and i64 %146, %151
  %153 = icmp eq i64 %152, 0
  %154 = select i1 %153, i64 0, i64 %145, !prof !732
  %155 = xor i64 %154, %146
  br label %156

156:                                              ; preds = %148, %141
  %157 = phi i64 [ %146, %141 ], [ %155, %148 ]
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %581, label %159, !prof !733

159:                                              ; preds = %156
  %160 = tail call i32 @floor_log2(i64 noundef %157) #28
  %161 = xor i32 %160, -1
  %162 = add i32 %79, %161
  br label %581

163:                                              ; preds = %126
  %164 = and i32 %73, 469762048
  %165 = icmp eq i32 %164, 268435456
  %166 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !139
  br i1 %165, label %168, label %183, !prof !734

168:                                              ; preds = %163
  %169 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %167, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %170 = load i32, ptr %9, align 8
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !139
  %176 = zext i8 %175 to i32
  %177 = sub nsw i32 %78, %176
  %178 = shl nsw i32 %177, 3
  %179 = icmp slt i32 %178, %169
  %180 = or disjoint i32 %178, 1
  %181 = select i1 %179, i32 %169, i32 %180
  %182 = add i32 %181, %8
  br label %106

183:                                              ; preds = %163
  %184 = load i32, ptr %167, align 8
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !139
  %190 = icmp ugt i8 %77, %189
  br i1 %190, label %551, label %191, !prof !735

191:                                              ; preds = %183
  %192 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %167, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %193 = load ptr, ptr %166, align 8, !tbaa !139
  %194 = load i32, ptr %193, align 8
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = zext nneg i32 %196 to i64
  %198 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !139
  %200 = zext i8 %199 to i32
  %201 = sub nsw i32 %78, %200
  %202 = shl nsw i32 %201, 3
  %203 = add i32 %202, %192
  %204 = tail call i32 @llvm.smax.i32(i32 %203, i32 1)
  %205 = add i32 %204, %8
  br label %106

206:                                              ; preds = %126
  %207 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !139
  %209 = load i32, ptr %208, align 8
  %210 = and i32 %209, 65535
  %211 = icmp eq i32 %210, 30
  br i1 %211, label %212, label %551

212:                                              ; preds = %206
  %213 = zext nneg i32 %79 to i64
  %214 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %215 = load i64, ptr %214, align 8, !tbaa !139
  %216 = sub nsw i64 %213, %215
  %217 = tail call i64 @llvm.smax.i64(i64 %216, i64 1)
  %218 = trunc i64 %217 to i32
  br label %581

219:                                              ; preds = %126
  %220 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !139
  %222 = load i32, ptr %221, align 8
  %223 = lshr i32 %222, 16
  %224 = and i32 %223, 255
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !139
  %228 = zext i8 %227 to i32
  %229 = sub nsw i32 %78, %228
  %230 = shl nsw i32 %229, 3
  %231 = add i32 %230, %8
  br label %7

232:                                              ; preds = %126
  %233 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !139
  %235 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %234, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %236 = load ptr, ptr %233, align 8, !tbaa !139
  %237 = load i32, ptr %236, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !139
  %243 = zext i8 %242 to i32
  %244 = sub nsw i32 %78, %243
  %245 = shl nsw i32 %244, 3
  %246 = add i32 %245, %235
  %247 = tail call i32 @llvm.smax.i32(i32 %246, i32 1)
  %248 = add i32 %247, %8
  br label %106

249:                                              ; preds = %126
  %250 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !139
  br label %7

252:                                              ; preds = %126, %126
  %253 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %254 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !139
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 65535
  %258 = icmp eq i32 %257, 30
  br i1 %258, label %259, label %551

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %261 = load i64, ptr %260, align 8, !tbaa !139
  %262 = icmp sgt i64 %261, -1
  br i1 %262, label %263, label %551

263:                                              ; preds = %259
  %264 = zext nneg i32 %79 to i64
  %265 = icmp slt i64 %261, %264
  br i1 %265, label %266, label %551

266:                                              ; preds = %263
  %267 = load ptr, ptr %253, align 8, !tbaa !139
  %268 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %267, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %269 = sext i32 %268 to i64
  %270 = icmp eq i32 %74, 66
  %271 = load ptr, ptr %254, align 8, !tbaa !139
  %272 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1
  %273 = load i64, ptr %272, align 8, !tbaa !139
  %274 = sub nsw i64 %264, %273
  %275 = select i1 %270, i64 %273, i64 %274
  %276 = icmp slt i64 %275, %269
  br i1 %276, label %277, label %581

277:                                              ; preds = %266
  %278 = load ptr, ptr %254, align 8, !tbaa !139
  %279 = getelementptr inbounds %struct.rtx_def, ptr %278, i64 0, i32 1
  %280 = load i64, ptr %279, align 8, !tbaa !139
  %281 = sub nsw i64 %264, %280
  %282 = select i1 %270, i64 %280, i64 %281
  %283 = trunc i64 %282 to i32
  %284 = sub i32 %268, %283
  br label %581

285:                                              ; preds = %126
  %286 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !139
  %288 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %287, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %289 = icmp ugt i8 %77, 8
  br i1 %289, label %290, label %294, !prof !736

290:                                              ; preds = %285
  %291 = icmp sgt i32 %288, 1
  %292 = add nsw i32 %288, -1
  %293 = select i1 %291, i32 %292, i32 1
  br label %581

294:                                              ; preds = %285
  %295 = load ptr, ptr %286, align 8, !tbaa !139
  %296 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %295, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %297 = icmp eq i64 %296, 1
  br i1 %297, label %581, label %298, !prof !737

298:                                              ; preds = %294
  %299 = icmp sgt i32 %288, 1
  br i1 %299, label %300, label %581

300:                                              ; preds = %298
  %301 = add nsw i32 %79, -1
  %302 = zext nneg i32 %301 to i64
  %303 = shl nuw i64 1, %302
  %304 = and i64 %296, %303
  %305 = icmp ne i64 %304, 0
  %306 = sext i1 %305 to i32
  %307 = add nsw i32 %288, %306
  br label %581

308:                                              ; preds = %126, %126, %126, %126, %126, %126, %126
  %309 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !139
  %311 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %310, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %312 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !139
  %314 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %313, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %315 = icmp eq i32 %74, 61
  %316 = icmp sgt i32 %314, 1
  %317 = select i1 %315, i1 %316, i1 false, !prof !738
  %318 = icmp ult i8 %77, 9
  %319 = select i1 %317, i1 %318, i1 false, !prof !738
  br i1 %319, label %320, label %333, !prof !738

320:                                              ; preds = %308
  %321 = load ptr, ptr %312, align 8, !tbaa !139
  %322 = load i32, ptr %321, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 30
  br i1 %324, label %325, label %333, !prof !739

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !139
  %328 = add nsw i32 %79, -1
  %329 = zext nneg i32 %328 to i64
  %330 = shl nuw i64 1, %329
  %331 = and i64 %327, %330
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %581, label %333, !prof !740

333:                                              ; preds = %325, %320, %308
  %334 = icmp eq i32 %74, 62
  %335 = select i1 %334, i1 %316, i1 false, !prof !741
  %336 = select i1 %335, i1 %318, i1 false, !prof !742
  br i1 %336, label %337, label %350, !prof !742

337:                                              ; preds = %333
  %338 = load ptr, ptr %312, align 8, !tbaa !139
  %339 = load i32, ptr %338, align 8
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 30
  br i1 %341, label %342, label %350, !prof !743

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %344 = load i64, ptr %343, align 8, !tbaa !139
  %345 = add nsw i32 %79, -1
  %346 = zext nneg i32 %345 to i64
  %347 = shl nuw i64 1, %346
  %348 = and i64 %344, %347
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %581, !prof !744

350:                                              ; preds = %342, %337, %333
  %351 = tail call i32 @llvm.smin.i32(i32 %311, i32 %314)
  br label %581

352:                                              ; preds = %126, %126
  %353 = icmp eq i32 %74, 49
  br i1 %353, label %354, label %376, !prof !745

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %356 = load ptr, ptr %355, align 8, !tbaa !139
  %357 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !128
  %358 = icmp eq ptr %356, %357
  %359 = icmp ult i8 %77, 9
  %360 = select i1 %358, i1 %359, i1 false, !prof !746
  br i1 %360, label %361, label %376, !prof !746

361:                                              ; preds = %354
  %362 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !139
  %364 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %363, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %365 = add nsw i32 %79, -1
  %366 = zext nneg i32 %365 to i64
  %367 = shl nuw i64 1, %366
  %368 = and i64 %364, %367
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %376, !prof !747

370:                                              ; preds = %361
  %371 = icmp ult i64 %364, 2
  br i1 %371, label %581, label %372, !prof !748

372:                                              ; preds = %370
  %373 = tail call i32 @floor_log2(i64 noundef %364) #28
  %374 = xor i32 %373, -1
  %375 = add i32 %79, %374
  br label %581

376:                                              ; preds = %361, %354, %352
  %377 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !139
  %379 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %378, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %380 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %381 = load ptr, ptr %380, align 8, !tbaa !139
  %382 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %381, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %383 = tail call i32 @llvm.smin.i32(i32 %379, i32 %382)
  %384 = add nsw i32 %383, -1
  %385 = icmp sgt i32 %383, 1
  %386 = select i1 %385, i32 %384, i32 1, !prof !749
  %387 = add i32 %386, %8
  br label %106

388:                                              ; preds = %126
  %389 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !139
  %391 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %390, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %392 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %393 = load ptr, ptr %392, align 8, !tbaa !139
  %394 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %393, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %395 = sub i32 %394, %79
  %396 = add i32 %395, %391
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %415, !prof !750

398:                                              ; preds = %388
  %399 = icmp ugt i8 %77, 8
  br i1 %399, label %413, label %400, !prof !751

400:                                              ; preds = %398
  %401 = load ptr, ptr %389, align 8, !tbaa !139
  %402 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %401, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %403 = add nsw i32 %79, -1
  %404 = zext nneg i32 %403 to i64
  %405 = shl nuw i64 1, %404
  %406 = and i64 %402, %405
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %415, label %408, !prof !750

408:                                              ; preds = %400
  %409 = load ptr, ptr %392, align 8, !tbaa !139
  %410 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %409, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %411 = and i64 %410, %405
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %408, %398
  %414 = add nsw i32 %396, -1
  br label %415

415:                                              ; preds = %413, %408, %400, %388
  %416 = phi i32 [ %414, %413 ], [ %396, %408 ], [ %396, %400 ], [ %396, %388 ]
  %417 = tail call i32 @llvm.smax.i32(i32 %416, i32 1)
  br label %581

418:                                              ; preds = %126
  %419 = icmp ugt i8 %77, 8
  br i1 %419, label %581, label %420

420:                                              ; preds = %418
  %421 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !139
  %423 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %422, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %424 = add nsw i32 %79, -1
  %425 = zext nneg i32 %424 to i64
  %426 = shl nuw i64 1, %425
  %427 = and i64 %423, %426
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %581

429:                                              ; preds = %420
  %430 = load ptr, ptr %421, align 8, !tbaa !139
  br label %7

431:                                              ; preds = %126
  %432 = icmp ugt i8 %77, 8
  br i1 %432, label %581, label %433

433:                                              ; preds = %431
  %434 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %435 = load ptr, ptr %434, align 8, !tbaa !139
  %436 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %435, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %437 = add nsw i32 %79, -1
  %438 = zext nneg i32 %437 to i64
  %439 = shl nuw i64 1, %438
  %440 = and i64 %436, %439
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %442, label %581

442:                                              ; preds = %433
  %443 = load ptr, ptr %434, align 8, !tbaa !139
  br label %7

444:                                              ; preds = %126
  %445 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !139
  %447 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %446, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %448 = icmp sgt i32 %447, 1
  br i1 %448, label %449, label %581

449:                                              ; preds = %444
  %450 = icmp ugt i8 %77, 8
  br i1 %450, label %460, label %451

451:                                              ; preds = %449
  %452 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %453 = load ptr, ptr %452, align 8, !tbaa !139
  %454 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %453, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %455 = add nsw i32 %79, -1
  %456 = zext nneg i32 %455 to i64
  %457 = shl nuw i64 1, %456
  %458 = and i64 %454, %457
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %581, label %460

460:                                              ; preds = %451, %449
  %461 = add nsw i32 %447, -1
  br label %581

462:                                              ; preds = %126
  %463 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !139
  %465 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %464, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %466 = icmp sgt i32 %465, 1
  br i1 %466, label %467, label %581

467:                                              ; preds = %462
  %468 = icmp ugt i8 %77, 8
  br i1 %468, label %477, label %469

469:                                              ; preds = %467
  %470 = load ptr, ptr %463, align 8, !tbaa !139
  %471 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %470, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %472 = add nsw i32 %79, -1
  %473 = zext nneg i32 %472 to i64
  %474 = shl nuw i64 1, %473
  %475 = and i64 %471, %474
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %581, label %477

477:                                              ; preds = %469, %467
  %478 = add nsw i32 %465, -1
  br label %581

479:                                              ; preds = %126
  %480 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %481 = load ptr, ptr %480, align 8, !tbaa !139
  %482 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %481, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %483 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %484 = load ptr, ptr %483, align 8, !tbaa !139
  %485 = load i32, ptr %484, align 8
  %486 = and i32 %485, 65535
  %487 = icmp eq i32 %486, 30
  br i1 %487, label %488, label %581, !prof !752

488:                                              ; preds = %479
  %489 = getelementptr inbounds %struct.rtx_def, ptr %484, i64 0, i32 1
  %490 = load i64, ptr %489, align 8, !tbaa !139
  %491 = icmp sgt i64 %490, 0
  br i1 %491, label %492, label %581

492:                                              ; preds = %488
  %493 = load i32, ptr %9, align 8
  %494 = lshr i32 %493, 16
  %495 = and i32 %494, 255
  %496 = zext nneg i32 %495 to i64
  %497 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !139
  %499 = zext i8 %498 to i64
  %500 = shl nuw nsw i64 %499, 3
  %501 = icmp slt i64 %490, %500
  br i1 %501, label %502, label %581

502:                                              ; preds = %492
  %503 = zext nneg i32 %79 to i64
  %504 = sext i32 %482 to i64
  %505 = add nsw i64 %490, %504
  %506 = icmp sgt i64 %505, %503
  %507 = trunc i64 %505 to i32
  %508 = select i1 %506, i32 %79, i32 %507
  br label %581

509:                                              ; preds = %126
  %510 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %511 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %512 = load ptr, ptr %511, align 8, !tbaa !139
  %513 = load i32, ptr %512, align 8
  %514 = and i32 %513, 65535
  %515 = icmp eq i32 %514, 30
  br i1 %515, label %516, label %581, !prof !753

516:                                              ; preds = %509
  %517 = getelementptr inbounds %struct.rtx_def, ptr %512, i64 0, i32 1
  %518 = load i64, ptr %517, align 8, !tbaa !139
  %519 = icmp sgt i64 %518, -1
  %520 = zext nneg i32 %79 to i64
  %521 = icmp slt i64 %518, %520
  %522 = select i1 %519, i1 %521, i1 false, !prof !753
  %523 = zext i8 %102 to i64
  %524 = shl nuw nsw i64 %523, 3
  %525 = icmp slt i64 %518, %524
  %526 = select i1 %522, i1 %525, i1 false, !prof !753
  br i1 %526, label %527, label %581, !prof !753

527:                                              ; preds = %516
  %528 = load ptr, ptr %510, align 8, !tbaa !139
  %529 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %528, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %530 = sext i32 %529 to i64
  %531 = load ptr, ptr %511, align 8, !tbaa !139
  %532 = getelementptr inbounds %struct.rtx_def, ptr %531, i64 0, i32 1
  %533 = load i64, ptr %532, align 8, !tbaa !139
  %534 = sub nsw i64 %530, %533
  %535 = tail call i64 @llvm.smax.i64(i64 %534, i64 1)
  %536 = trunc i64 %535 to i32
  %537 = add i32 %536, %8
  br label %106

538:                                              ; preds = %126
  %539 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %540 = load ptr, ptr %539, align 8, !tbaa !139
  %541 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %540, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %542 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %543 = load ptr, ptr %542, align 8, !tbaa !139
  %544 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %543, i32 noundef %83, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %545 = tail call i32 @llvm.smin.i32(i32 %541, i32 %544)
  %546 = add i32 %545, %8
  br label %106

547:                                              ; preds = %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126
  %548 = tail call i32 @floor_log2(i64 noundef 1) #28
  %549 = xor i32 %548, -1
  %550 = add i32 %79, %549
  br label %581

551:                                              ; preds = %126, %263, %259, %252, %206, %183, %134
  %552 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %86
  %553 = load i8, ptr %552, align 1, !tbaa !139
  %554 = zext i8 %553 to i32
  %555 = shl nuw nsw i32 %554, 3
  %556 = icmp ugt i8 %553, 8
  br i1 %556, label %581, label %557, !prof !754

557:                                              ; preds = %551
  %558 = call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %9, i32 noundef %83, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %559 = add nsw i32 %555, -1
  %560 = zext nneg i32 %559 to i64
  %561 = shl nuw i64 1, %560
  %562 = and i64 %558, %561
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %564, label %581, !prof !755

564:                                              ; preds = %557
  %565 = call i32 @floor_log2(i64 noundef %558) #28
  %566 = xor i32 %565, -1
  %567 = add i32 %555, %566
  br label %581

568:                                              ; preds = %85
  %569 = zext nneg i8 %89 to i16
  %570 = lshr i16 523, %569
  %571 = and i16 %570, 1
  %572 = icmp eq i16 %571, 0
  br i1 %572, label %91, label %581

573:                                              ; preds = %91
  %574 = zext nneg i8 %95 to i16
  %575 = lshr i16 1019, %574
  %576 = and i16 %575, 1
  %577 = icmp ne i16 %576, 0
  %578 = add i8 %88, -12
  %579 = icmp ult i8 %578, 5
  %580 = or i1 %577, %579
  br i1 %580, label %581, label %100, !prof !756

581:                                              ; preds = %573, %568, %564, %557, %551, %547, %516, %509, %502, %492, %488, %479, %477, %469, %462, %460, %451, %444, %433, %431, %420, %418, %415, %372, %370, %350, %342, %300, %298, %294, %290, %277, %266, %212, %159, %156, %122, %97, %72, %134, %325, %69, %7
  %582 = phi i32 [ %70, %69 ], [ %4, %7 ], [ %417, %415 ], [ %351, %350 ], [ %293, %290 ], [ %218, %212 ], [ %550, %547 ], [ 1, %97 ], [ 1, %72 ], [ 1, %122 ], [ %162, %159 ], [ %79, %156 ], [ %284, %277 ], [ 1, %266 ], [ %79, %294 ], [ %288, %298 ], [ %307, %300 ], [ %314, %342 ], [ %375, %372 ], [ %79, %370 ], [ 1, %418 ], [ 1, %420 ], [ 1, %431 ], [ 1, %433 ], [ %461, %460 ], [ %447, %451 ], [ %447, %444 ], [ %478, %477 ], [ %465, %469 ], [ %465, %462 ], [ %508, %502 ], [ %482, %492 ], [ %482, %488 ], [ %482, %479 ], [ 1, %516 ], [ 1, %509 ], [ 1, %551 ], [ %567, %564 ], [ 1, %557 ], [ %140, %134 ], [ %314, %325 ], [ 1, %568 ], [ 1, %573 ]
  %583 = add i32 %582, %8
  br label %106
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @insn_rtx_cost(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #11 !prof !757 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %38 [
    i16 23, label %31
    i16 15, label %5
  ], !prof !758

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = load i32, ptr %7, align 8, !tbaa !147
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %28, !prof !759

10:                                               ; preds = %5
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %23
  %13 = phi i64 [ 0, %10 ], [ %26, %23 ]
  %14 = phi ptr [ null, %10 ], [ %25, %23 ]
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %7, i64 0, i32 1, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 23
  %20 = icmp eq ptr %14, null
  %21 = xor i1 %19, true
  %22 = select i1 %21, i1 true, i1 %20, !prof !760
  br i1 %22, label %23, label %38, !prof !761

23:                                               ; preds = %12
  %24 = select i1 %19, i1 %20, i1 false, !prof !762
  %25 = select i1 %24, ptr %16, ptr %14, !prof !762
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %28, label %12, !prof !763, !llvm.loop !764

28:                                               ; preds = %23, %5
  %29 = phi ptr [ null, %5 ], [ %25, %23 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31, !prof !765

31:                                               ; preds = %2, %28
  %32 = phi ptr [ %29, %28 ], [ %0, %2 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = tail call i32 @rtx_cost(ptr noundef %34, i32 noundef 23, i8 noundef zeroext %1)
  %36 = icmp sgt i32 %35, 0
  %37 = select i1 %36, i32 %35, i32 4, !prof !766
  br label %38

38:                                               ; preds = %12, %28, %2, %31
  %39 = phi i32 [ %37, %31 ], [ 0, %2 ], [ 0, %28 ], [ 0, %12 ]
  ret i32 %39
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @canonicalize_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef readnone %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #11 !prof !767 {
  %8 = alloca %struct.set_of_data, align 8
  %9 = alloca %struct.set_of_data, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 65535
  %14 = lshr i32 %12, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %23, label %21, !prof !768

21:                                               ; preds = %7
  %22 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %1, ptr noundef %0) #28
  br label %23

23:                                               ; preds = %21, %7
  %24 = phi i32 [ %22, %21 ], [ %13, %7 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %319, label %26, !prof !769

26:                                               ; preds = %23
  %27 = icmp eq ptr %3, null
  br i1 %27, label %29, label %28, !prof !770

28:                                               ; preds = %26
  store ptr %0, ptr %3, align 8, !tbaa !128
  br label %29

29:                                               ; preds = %28, %26
  %30 = sext i32 %24 to i64
  %31 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !143
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %247, !prof !377

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.set_of_data, ptr %9, i64 0, i32 1
  br label %36

36:                                               ; preds = %34, %242
  %37 = phi i32 [ %24, %34 ], [ %241, %242 ]
  %38 = phi ptr [ %0, %34 ], [ %240, %242 ]
  %39 = phi ptr [ %17, %34 ], [ %239, %242 ]
  %40 = phi ptr [ %19, %34 ], [ %237, %242 ]
  %41 = phi i32 [ 0, %34 ], [ %236, %242 ]
  %42 = load i32, ptr %39, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  %48 = icmp ne ptr %40, %47
  %49 = icmp eq ptr %39, %4
  %50 = or i1 %48, %49
  br i1 %50, label %247, label %51, !prof !771

51:                                               ; preds = %36
  %52 = trunc i32 %42 to i16
  switch i16 %52, label %235 [
    i16 48, label %53
    i16 37, label %58
  ], !prof !772

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %55 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  %57 = load ptr, ptr %54, align 8, !tbaa !139
  br label %235, !llvm.loop !773

58:                                               ; preds = %51, %62
  %59 = phi ptr [ %60, %62 ], [ %38, %51 ]
  %60 = call ptr @prev_nonnote_insn(ptr noundef %59) #28
  %61 = icmp eq ptr %60, null
  br i1 %61, label %235, label %62, !prof !774

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 8
  %64 = trunc i32 %63 to i16
  switch i16 %64, label %235 [
    i16 7, label %58
    i16 8, label %65
  ], !prof !775

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !139
  %68 = icmp eq ptr %67, %11
  br i1 %68, label %69, label %235, !prof !776

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #28
  store ptr null, ptr %9, align 8, !tbaa !269
  store ptr %39, ptr %35, align 8, !tbaa !271
  %70 = load i32, ptr %60, align 8
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, -7
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %74, label %77, !prof !776

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !139
  br label %77

77:                                               ; preds = %69, %74
  %78 = phi ptr [ %76, %74 ], [ %60, %69 ]
  call void @note_stores(ptr noundef %78, ptr noundef nonnull @set_of_1, ptr noundef nonnull %9)
  %79 = load ptr, ptr %9, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #28
  %80 = icmp eq ptr %79, null
  br i1 %80, label %147, label %81, !prof !777

81:                                               ; preds = %77
  %82 = load i32, ptr %79, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 23
  br i1 %84, label %85, label %235, !prof !778

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !139
  %88 = call i32 @rtx_equal_p(ptr noundef %87, ptr noundef nonnull %39) #28
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %235, label %90, !prof !779

90:                                               ; preds = %85
  %91 = load ptr, ptr %86, align 8, !tbaa !139
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 16
  %94 = and i32 %93, 255
  %95 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !139
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 48
  br i1 %99, label %106, label %100, !prof !780

100:                                              ; preds = %90
  switch i32 %37, label %142 [
    i32 80, label %101
    i32 81, label %122
  ], !prof !781

101:                                              ; preds = %100
  %102 = zext nneg i32 %98 to i64
  %103 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !143
  %105 = icmp ult i32 %104, 2
  br i1 %105, label %106, label %120, !prof !782

106:                                              ; preds = %101, %90
  %107 = zext nneg i32 %15 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %107
  %109 = icmp eq i32 %15, 0
  %110 = load i8, ptr %108, align 1, !tbaa !139
  %111 = icmp eq i8 %110, 1
  %112 = zext nneg i32 %94 to i64
  %113 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !139
  %115 = icmp ne i8 %114, 1
  %116 = xor i1 %111, %115
  %117 = select i1 %116, i1 true, i1 %109, !prof !783
  %118 = icmp eq i32 %94, 0
  %119 = select i1 %117, i1 true, i1 %118, !prof !784
  br i1 %119, label %142, label %120, !prof !784

120:                                              ; preds = %101, %106
  %121 = icmp eq i32 %37, 81
  br i1 %121, label %122, label %142, !prof !782

122:                                              ; preds = %100, %120
  %123 = zext nneg i32 %98 to i64
  %124 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !143
  %126 = icmp ult i32 %125, 2
  br i1 %126, label %127, label %142, !prof !785

127:                                              ; preds = %122
  %128 = zext nneg i32 %15 to i64
  %129 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %128
  %130 = icmp eq i32 %15, 0
  %131 = load i8, ptr %129, align 1, !tbaa !139
  %132 = icmp eq i8 %131, 1
  %133 = zext nneg i32 %94 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !139
  %136 = icmp ne i8 %135, 1
  %137 = xor i1 %132, %136
  %138 = select i1 %137, i1 true, i1 %130, !prof !786
  %139 = icmp eq i32 %94, 0
  %140 = select i1 %138, i1 true, i1 %139, !prof !786
  br i1 %140, label %141, label %142, !prof !786

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %122, %106, %120, %100, %127, %141
  %143 = phi i32 [ %41, %127 ], [ 1, %141 ], [ %41, %100 ], [ %41, %120 ], [ %41, %106 ], [ %41, %122 ]
  %144 = phi i1 [ false, %127 ], [ true, %141 ], [ false, %100 ], [ false, %120 ], [ true, %106 ], [ false, %122 ]
  %145 = phi i32 [ 3, %127 ], [ 0, %141 ], [ 3, %100 ], [ 3, %120 ], [ 0, %106 ], [ 3, %122 ]
  %146 = phi ptr [ null, %127 ], [ %96, %141 ], [ null, %100 ], [ null, %120 ], [ %96, %106 ], [ null, %122 ]
  br i1 %144, label %204, label %235, !prof !787

147:                                              ; preds = %77
  %148 = load i32, ptr %60, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %187, !prof !261

151:                                              ; preds = %147
  %152 = load i32, ptr %39, align 8
  %153 = and i32 %152, 65535
  %154 = trunc i32 %152 to i16
  switch i16 %154, label %184 [
    i16 37, label %155
    i16 43, label %201
  ], !prof !262

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !139
  %158 = icmp ult i32 %157, 53
  br i1 %158, label %159, label %182, !prof !263

159:                                              ; preds = %155
  %160 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !264
  %161 = zext nneg i32 %157 to i64
  %162 = shl nuw i64 1, %161
  %163 = and i64 %160, %162
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %201, !prof !265

165:                                              ; preds = %159
  %166 = lshr i32 %152, 16
  %167 = and i32 %166, 255
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %161, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !139
  %171 = zext i8 %170 to i32
  %172 = add nuw nsw i32 %157, %171
  %173 = zext nneg i32 %172 to i64
  br label %174

174:                                              ; preds = %178, %165
  %175 = phi i64 [ %176, %178 ], [ %161, %165 ]
  %176 = add nuw nsw i64 %175, 1
  %177 = icmp ult i64 %176, %173
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = shl i64 2, %175
  %180 = and i64 %179, %160
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %174, label %201, !llvm.loop !266

182:                                              ; preds = %174, %155
  %183 = icmp eq i32 %153, 43
  br i1 %183, label %201, label %184, !prof !267

184:                                              ; preds = %182, %151
  %185 = call i32 @find_reg_fusage(ptr noundef nonnull %60, i32 noundef 25, ptr noundef nonnull %39), !range !228
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %201, !prof !268

187:                                              ; preds = %184, %147
  %188 = getelementptr inbounds %struct.set_of_data, ptr %8, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #28
  store ptr null, ptr %8, align 8, !tbaa !269
  store ptr %39, ptr %188, align 8, !tbaa !271
  %189 = load i32, ptr %60, align 8
  %190 = and i32 %189, 65535
  %191 = add nsw i32 %190, -7
  %192 = icmp ult i32 %191, 4
  br i1 %192, label %193, label %196, !prof !272

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !139
  br label %196

196:                                              ; preds = %193, %187
  %197 = phi ptr [ %195, %193 ], [ %60, %187 ]
  call void @note_stores(ptr noundef %197, ptr noundef nonnull @set_of_1, ptr noundef nonnull %8)
  %198 = load ptr, ptr %8, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #28
  %199 = icmp ne ptr %198, null
  %200 = zext i1 %199 to i32
  br label %201

201:                                              ; preds = %178, %151, %159, %182, %184, %196
  %202 = phi i32 [ %200, %196 ], [ 1, %184 ], [ 1, %182 ], [ 1, %151 ], [ 1, %159 ], [ 1, %178 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %235, !prof !788

204:                                              ; preds = %201, %142
  %205 = phi i32 [ %143, %142 ], [ %41, %201 ]
  %206 = phi ptr [ %146, %142 ], [ null, %201 ]
  %207 = icmp eq ptr %206, null
  br i1 %207, label %235, label %208, !prof !789

208:                                              ; preds = %204
  %209 = icmp eq i32 %6, 0
  br i1 %209, label %216, label %210, !prof !790

210:                                              ; preds = %208
  %211 = call i32 @modified_in_p(ptr noundef nonnull %206, ptr noundef nonnull %60), !range !228
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %235, !prof !791

213:                                              ; preds = %210
  %214 = call i32 @modified_between_p(ptr noundef nonnull %206, ptr noundef nonnull %60, ptr noundef %0), !range !228
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %235, !prof !792

216:                                              ; preds = %213, %208
  %217 = load i32, ptr %206, align 8
  %218 = and i32 %217, 65535
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !143
  %222 = icmp ult i32 %221, 2
  %223 = select i1 %222, i32 %218, i32 %37, !prof !793
  %224 = icmp eq i32 %205, 0
  br i1 %224, label %228, label %225, !prof !794

225:                                              ; preds = %216
  %226 = call i32 @reversed_comparison_code(ptr noundef nonnull %206, ptr noundef nonnull %60) #28
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %225, %216
  %229 = phi i32 [ %223, %216 ], [ %226, %225 ]
  %230 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !139
  %232 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !139
  br i1 %27, label %235, label %234, !prof !795

234:                                              ; preds = %228
  store ptr %60, ptr %3, align 8, !tbaa !128
  br label %235

235:                                              ; preds = %62, %58, %225, %204, %142, %234, %228, %210, %213, %201, %81, %85, %65, %51, %53
  %236 = phi i32 [ %41, %53 ], [ %41, %51 ], [ %41, %65 ], [ %41, %85 ], [ %41, %81 ], [ %41, %201 ], [ %205, %213 ], [ %205, %210 ], [ 0, %234 ], [ 0, %228 ], [ %143, %142 ], [ %205, %204 ], [ %205, %225 ], [ %41, %58 ], [ %41, %62 ]
  %237 = phi ptr [ %56, %53 ], [ %40, %51 ], [ %40, %65 ], [ %40, %85 ], [ %40, %81 ], [ %40, %201 ], [ %40, %213 ], [ %40, %210 ], [ %233, %234 ], [ %233, %228 ], [ %40, %142 ], [ %40, %204 ], [ %40, %225 ], [ %40, %58 ], [ %40, %62 ]
  %238 = phi i32 [ 2, %53 ], [ 3, %51 ], [ 3, %65 ], [ 3, %85 ], [ 3, %81 ], [ 3, %201 ], [ 3, %213 ], [ 3, %210 ], [ 0, %234 ], [ 0, %228 ], [ %145, %142 ], [ 0, %204 ], [ 1, %225 ], [ 3, %58 ], [ 3, %62 ]
  %239 = phi ptr [ %57, %53 ], [ %39, %51 ], [ %39, %65 ], [ %39, %85 ], [ %39, %81 ], [ %39, %201 ], [ %39, %213 ], [ %39, %210 ], [ %231, %234 ], [ %231, %228 ], [ %39, %142 ], [ %39, %204 ], [ %39, %225 ], [ %39, %58 ], [ %39, %62 ]
  %240 = phi ptr [ %38, %53 ], [ %38, %51 ], [ %60, %65 ], [ %60, %85 ], [ %60, %81 ], [ %60, %201 ], [ %60, %213 ], [ %60, %210 ], [ %60, %234 ], [ %60, %228 ], [ %60, %142 ], [ %60, %204 ], [ %60, %225 ], [ %60, %58 ], [ %60, %62 ]
  %241 = phi i32 [ %37, %53 ], [ %37, %51 ], [ %37, %65 ], [ %37, %85 ], [ %37, %81 ], [ %37, %201 ], [ %37, %213 ], [ %37, %210 ], [ %229, %234 ], [ %229, %228 ], [ %37, %142 ], [ %37, %204 ], [ 0, %225 ], [ %37, %58 ], [ %37, %62 ]
  switch i32 %238, label %319 [
    i32 0, label %242
    i32 2, label %242
    i32 3, label %247
  ], !prof !796

242:                                              ; preds = %235, %235
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !143
  %246 = icmp ult i32 %245, 2
  br i1 %246, label %36, label %247, !prof !797, !llvm.loop !773

247:                                              ; preds = %36, %242, %235, %29
  %248 = phi ptr [ %19, %29 ], [ %40, %36 ], [ %237, %242 ], [ %237, %235 ]
  %249 = phi ptr [ %17, %29 ], [ %39, %36 ], [ %239, %242 ], [ %239, %235 ]
  %250 = phi i32 [ %24, %29 ], [ %37, %36 ], [ %241, %242 ], [ %241, %235 ]
  %251 = load i32, ptr %249, align 8
  %252 = and i32 %251, 65535
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !143
  %256 = icmp eq i32 %255, 9
  br i1 %256, label %257, label %259, !prof !769

257:                                              ; preds = %247
  %258 = call i32 @swap_condition(i32 noundef %250) #28
  br label %259

259:                                              ; preds = %257, %247
  %260 = phi ptr [ %249, %257 ], [ %248, %247 ]
  %261 = phi ptr [ %248, %257 ], [ %249, %247 ]
  %262 = phi i32 [ %258, %257 ], [ %250, %247 ]
  %263 = icmp eq i32 %5, 0
  br i1 %263, label %264, label %272, !prof !768

264:                                              ; preds = %259
  %265 = load i32, ptr %261, align 8
  %266 = lshr i32 %265, 16
  %267 = and i32 %266, 255
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !139
  %271 = icmp eq i8 %270, 1
  br i1 %271, label %319, label %272, !prof !798

272:                                              ; preds = %264, %259
  %273 = load i32, ptr %261, align 8
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !139
  %279 = icmp eq i8 %278, 1
  br i1 %279, label %315, label %280, !prof !799

280:                                              ; preds = %272
  %281 = load i32, ptr %260, align 8
  %282 = and i32 %281, 65535
  %283 = icmp ne i32 %282, 30
  %284 = icmp eq i32 %275, 0
  %285 = or i1 %284, %283
  br i1 %285, label %315, label %286, !prof !799

286:                                              ; preds = %280
  %287 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %276
  %288 = load i8, ptr %287, align 1, !tbaa !139
  %289 = zext i8 %288 to i64
  %290 = shl nuw nsw i64 %289, 3
  %291 = icmp ult i8 %288, 9
  br i1 %291, label %292, label %315, !prof !800

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1
  %294 = load i64, ptr %293, align 8, !tbaa !139
  %295 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %276
  %296 = load i64, ptr %295, align 8, !tbaa !264
  switch i32 %262, label %315 [
    i32 84, label %297
    i32 82, label %300
    i32 88, label %306
    i32 86, label %308
  ], !prof !801

297:                                              ; preds = %292
  %298 = lshr i64 %296, 1
  %299 = icmp eq i64 %294, %298
  br i1 %299, label %315, label %310, !prof !802

300:                                              ; preds = %292
  %301 = and i64 %296, %294
  %302 = add nuw nsw i64 %290, 4294967295
  %303 = and i64 %302, 4294967295
  %304 = shl nuw i64 1, %303
  %305 = icmp eq i64 %301, %304
  br i1 %305, label %315, label %310, !prof !803

306:                                              ; preds = %292
  %307 = icmp ult i64 %294, %296
  br i1 %307, label %310, label %315, !prof !804

308:                                              ; preds = %292
  %309 = icmp eq i64 %294, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %308, %306, %300, %297
  %311 = phi i64 [ 1, %297 ], [ -1, %300 ], [ 1, %306 ], [ -1, %308 ]
  %312 = phi i32 [ 85, %297 ], [ 83, %300 ], [ 89, %306 ], [ 87, %308 ]
  %313 = add i64 %294, %311
  %314 = call ptr @gen_int_mode(i64 noundef %313, i32 noundef %275) #28
  br label %315

315:                                              ; preds = %310, %297, %300, %306, %308, %292, %272, %280, %286
  %316 = phi ptr [ %260, %286 ], [ %260, %280 ], [ %260, %272 ], [ %260, %292 ], [ %260, %308 ], [ %260, %306 ], [ %260, %300 ], [ %260, %297 ], [ %314, %310 ]
  %317 = phi i32 [ %262, %286 ], [ %262, %280 ], [ %262, %272 ], [ %262, %292 ], [ 86, %308 ], [ 88, %306 ], [ 82, %300 ], [ 84, %297 ], [ %312, %310 ]
  %318 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef %317, i32 noundef 0, ptr noundef nonnull %261, ptr noundef %316) #28
  br label %319

319:                                              ; preds = %235, %264, %23, %315
  %320 = phi ptr [ %318, %315 ], [ null, %23 ], [ null, %264 ], [ null, %235 ]
  ret ptr %320
}

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @get_condition(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 !prof !805 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %32, !prof !806

8:                                                ; preds = %4
  %9 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #28
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11, !prof !807

11:                                               ; preds = %8
  %12 = tail call ptr @pc_set(ptr noundef nonnull %0) #28
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %22, label %29, !prof !808

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !139
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  %27 = icmp eq ptr %24, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %22, %11
  %30 = phi i32 [ 0, %11 ], [ %28, %22 ]
  %31 = tail call ptr @canonicalize_condition(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %30, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3)
  br label %32

32:                                               ; preds = %4, %8, %29
  %33 = phi ptr [ %31, %29 ], [ null, %8 ], [ null, %4 ]
  ret ptr %33
}

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @truncated_to_mode(i32 noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !127 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 4), align 8, !tbaa !809
  %8 = tail call zeroext i8 %7(i32 noundef %0, ptr noundef nonnull %1) #28
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6, %2
  %11 = load i32, ptr %1, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = zext i32 %0 to i64
  %16 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !143
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %10
  %20 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %1, i32 noundef %13, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %21 = load i32, ptr %1, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %24, i64 %15
  %26 = load i32, ptr %25, align 4, !tbaa !143
  %27 = add i32 %26, 1
  %28 = icmp ult i32 %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19, %10
  br label %30

30:                                               ; preds = %19, %6, %29
  %31 = phi i8 [ 0, %29 ], [ 1, %6 ], [ 1, %19 ]
  ret i8 %31
}

; Function Attrs: nounwind uwtable
define dso_local void @init_rtlanal() local_unnamed_addr #15 !prof !810 {
  br label %6

1:                                                ; preds = %6
  %2 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %83, label %4, !prof !811

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !139
  br label %20

6:                                                ; preds = %0, %6
  %7 = phi i64 [ 0, %0 ], [ %18, %6 ]
  %8 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = tail call ptr @strpbrk(ptr noundef %9, ptr noundef nonnull @.str.2)
  %11 = icmp eq ptr %10, null
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = select i1 %11, i32 -1, i32 %15, !prof !812
  %17 = getelementptr inbounds [139 x i32], ptr @non_rtx_starting_operands, i64 0, i64 %7
  store i32 %16, ptr %17, align 4, !tbaa !143
  %18 = add nuw nsw i64 %7, 1
  %19 = icmp eq i64 %18, 139
  br i1 %19, label %1, label %6, !prof !813, !llvm.loop !814

20:                                               ; preds = %4, %77
  %21 = phi i8 [ %2, %4 ], [ %81, %77 ]
  %22 = zext i8 %21 to i32
  %23 = icmp eq i8 %5, %21
  br i1 %23, label %77, label %24, !prof !815

24:                                               ; preds = %20
  %25 = zext i8 %21 to i64
  br label %26

26:                                               ; preds = %24, %72
  %27 = phi i8 [ %5, %24 ], [ %75, %72 ]
  %28 = zext i8 %27 to i32
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !816
  %30 = tail call i32 %29(i32 noundef %28, i32 noundef %22) #28, !prof !817
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32, !prof !818

32:                                               ; preds = %26
  %33 = zext i8 %27 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !139
  %36 = icmp eq i8 %35, %21
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5004, ptr noundef nonnull @.str.1) #28
  br label %38

38:                                               ; preds = %37, %32, %26
  %39 = icmp eq i8 %27, %21
  br i1 %39, label %72, label %40, !prof !819

40:                                               ; preds = %38
  %41 = zext i8 %27 to i64
  %42 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %25, i64 %41
  br label %43

43:                                               ; preds = %40, %70
  %44 = phi i32 [ %28, %40 ], [ %48, %70 ]
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !139
  %48 = zext i8 %47 to i32
  %49 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 55), align 8, !tbaa !816
  %50 = tail call i32 %49(i32 noundef %44, i32 noundef %48) #28, !prof !820
  %51 = icmp eq i32 %50, 98
  br i1 %51, label %55, label %52, !prof !821

52:                                               ; preds = %43
  %53 = load i32, ptr %42, align 4, !tbaa !143
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55, !prof !822

55:                                               ; preds = %52, %43
  %56 = zext i8 %21 to i64
  %57 = zext i8 %27 to i64
  %58 = getelementptr inbounds [20 x [20 x i32]], ptr @num_sign_bit_copies_in_rep, i64 0, i64 %56, i64 %57
  %59 = zext i8 %47 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !139
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %64 = load i8, ptr %63, align 1, !tbaa !139
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %62, %65
  %67 = shl nsw i32 %66, 3
  %68 = load i32, ptr %58, align 4, !tbaa !143
  %69 = add i32 %67, %68
  store i32 %69, ptr %58, align 4, !tbaa !143
  br label %70

70:                                               ; preds = %55, %52
  %71 = icmp eq i8 %47, %21
  br i1 %71, label %72, label %43, !prof !823, !llvm.loop !824

72:                                               ; preds = %70, %38
  %73 = zext i8 %27 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !139
  %76 = icmp eq i8 %75, %21
  br i1 %76, label %77, label %26, !prof !825, !llvm.loop !826

77:                                               ; preds = %72, %20
  %78 = phi i8 [ %5, %20 ], [ %75, %72 ]
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !139
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %20, !prof !827, !llvm.loop !828

83:                                               ; preds = %77, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @constant_pool_constant_p(ptr noundef %0) local_unnamed_addr #13 !prof !127 {
  %2 = tail call ptr @avoid_constant_pool_reference(ptr noundef %0) #28
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 32
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @low_bitmask_len(i32 noundef %0, i64 noundef %1) local_unnamed_addr #13 !prof !127 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !139
  %8 = icmp ugt i8 %7, 8
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %5
  %11 = load i64, ptr %10, align 8, !tbaa !264
  %12 = and i64 %11, %1
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i64 [ %12, %9 ], [ %1, %2 ]
  %15 = add i64 %14, 1
  %16 = tail call i32 @exact_log2(i64 noundef %15) #28
  br label %17

17:                                               ; preds = %4, %13
  %18 = phi i32 [ %16, %13 ], [ -1, %4 ]
  ret i32 %18
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @covers_regno_no_parallel_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #25 !prof !127 !PGOFuncName !829 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %27, !prof !830

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !139
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %12, 3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !139
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 3
  %24 = xor i32 %23, %13
  %25 = icmp ult i32 %24, 4
  %26 = select i1 %25, ptr %15, ptr %0
  br label %27

27:                                               ; preds = %6, %2
  %28 = phi ptr [ %0, %2 ], [ %26, %6 ]
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %51, !prof !450

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !139
  %35 = icmp ult i32 %34, 53
  br i1 %35, label %36, label %44, !prof !451

36:                                               ; preds = %32
  %37 = lshr i32 %29, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %34 to i64
  %40 = zext nneg i32 %38 to i64
  %41 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %39, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !139
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %32, %36
  %45 = phi i32 [ %43, %36 ], [ 1, %32 ]
  %46 = add i32 %45, %34
  %47 = icmp ule i32 %34, %1
  %48 = icmp ugt i32 %46, %1
  %49 = select i1 %47, i1 %48, i1 false, !prof !452
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %27, %44
  %52 = phi i8 [ %50, %44 ], [ 0, %27 ]
  ret i8 %52
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @nonzero_bits1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #11 !prof !831 !PGOFuncName !832 {
  %6 = alloca i64, align 8
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !264
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !139
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !139
  switch i8 %19, label %20 [
    i8 8, label %432
    i8 9, label %432
    i8 11, label %432
    i8 17, label %432
  ], !prof !674

20:                                               ; preds = %5
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %22 = load i8, ptr %21, align 1, !tbaa !139
  switch i8 %22, label %23 [
    i8 8, label %432
    i8 9, label %432
    i8 11, label %432
    i8 17, label %432
  ], !prof !674

23:                                               ; preds = %20
  %24 = add i8 %19, -12
  %25 = icmp ult i8 %24, 5
  %26 = add i8 %22, -12
  %27 = icmp ult i8 %26, 5
  %28 = or i1 %25, %27
  br i1 %28, label %432, label %29, !prof !675

29:                                               ; preds = %23
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %31 = load i8, ptr %30, align 1, !tbaa !139
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 3
  %34 = icmp ugt i32 %33, %13
  br i1 %34, label %35, label %38, !prof !676

35:                                               ; preds = %29
  %36 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %37 = load i64, ptr %36, align 8, !tbaa !264
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %33, %35 ], [ %13, %29 ]
  %40 = phi i64 [ %37, %35 ], [ %9, %29 ]
  %41 = phi i32 [ %16, %35 ], [ %1, %29 ]
  %42 = icmp ugt i32 %39, 64
  br i1 %42, label %432, label %43, !prof !675

43:                                               ; preds = %38
  %44 = icmp ne i32 %16, 0
  %45 = icmp ne i32 %16, %41
  %46 = and i1 %44, %45
  %47 = icmp ult i8 %31, 5
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %68, !prof !677

49:                                               ; preds = %43
  %50 = zext i32 %41 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !139
  %53 = icmp ugt i8 %52, %31
  br i1 %53, label %54, label %68, !prof !678

54:                                               ; preds = %49
  %55 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %56 = and i64 %55, %40
  %57 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %50
  %58 = load i64, ptr %57, align 8, !tbaa !264
  %59 = load i32, ptr %0, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !264
  %65 = xor i64 %64, -1
  %66 = and i64 %58, %65
  %67 = or i64 %66, %56
  br label %432

68:                                               ; preds = %49, %43
  %69 = trunc i32 %14 to i16
  switch i16 %69, label %432 [
    i16 37, label %70
    i16 30, label %114
    i16 47, label %420
    i16 81, label %117
    i16 80, label %117
    i16 92, label %117
    i16 97, label %117
    i16 83, label %117
    i16 87, label %117
    i16 94, label %117
    i16 85, label %117
    i16 89, label %117
    i16 96, label %117
    i16 82, label %117
    i16 86, label %117
    i16 93, label %117
    i16 84, label %117
    i16 88, label %117
    i16 95, label %117
    i16 90, label %117
    i16 91, label %117
    i16 51, label %120
    i16 118, label %419
    i16 100, label %131
    i16 99, label %140
    i16 98, label %155
    i16 61, label %188
    i16 63, label %197
    i16 62, label %197
    i16 72, label %197
    i16 73, label %197
    i16 70, label %197
    i16 71, label %197
    i16 49, label %209
    i16 50, label %209
    i16 52, label %209
    i16 55, label %209
    i16 59, label %209
    i16 58, label %209
    i16 60, label %209
    i16 120, label %287
    i16 39, label %301
    i16 67, label %350
    i16 68, label %350
    i16 65, label %350
    i16 66, label %350
    i16 114, label %411
    i16 117, label %411
    i16 115, label %417
    i16 116, label %418
  ], !prof !679

70:                                               ; preds = %68
  %71 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !128
  %72 = icmp eq ptr %71, %0
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %74 = icmp eq ptr %73, %0
  %75 = select i1 %72, i1 true, i1 %74, !prof !680
  %76 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %77 = icmp eq ptr %76, %0
  %78 = select i1 %75, i1 true, i1 %77, !prof !680
  br i1 %78, label %79, label %103, !prof !680

79:                                               ; preds = %70
  %80 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !681
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !139
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !139
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = lshr i8 %85, 3
  %89 = zext nneg i8 %88 to i64
  br i1 %72, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, ptr @target_flags, align 4, !tbaa !143
  %92 = and i32 %91, 8196
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = tail call i32 @ix86_cfun_abi() #28
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = tail call i64 @llvm.umin.i64(i64 %89, i64 4)
  br label %99

99:                                               ; preds = %97, %94, %90, %87
  %100 = phi i64 [ %89, %94 ], [ %98, %97 ], [ %89, %90 ], [ %89, %87 ]
  %101 = sub nsw i64 0, %100
  %102 = and i64 %40, %101
  br label %103

103:                                              ; preds = %70, %99, %79
  %104 = phi i64 [ %102, %99 ], [ %40, %79 ], [ %40, %70 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  store i64 %104, ptr %6, align 8, !tbaa !264
  %105 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 2), align 8, !tbaa !690
  %106 = call ptr %105(ptr noundef nonnull %0, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #28, !prof !833
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108, !prof !693

108:                                              ; preds = %103
  %109 = call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %106, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %110 = load i64, ptr %6, align 8, !tbaa !264
  %111 = and i64 %110, %109
  store i64 %111, ptr %6, align 8, !tbaa !264
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i64, ptr %6, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  br label %432

114:                                              ; preds = %68
  %115 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !139
  br label %432

117:                                              ; preds = %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68
  %118 = icmp eq i8 %19, 2
  %119 = select i1 %118, i64 1, i64 %40, !prof !694
  br label %432

120:                                              ; preds = %68
  %121 = icmp ugt i32 %39, %32
  br i1 %121, label %122, label %432, !prof !695

122:                                              ; preds = %120
  %123 = zext i32 %41 to i64
  %124 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !264
  %126 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %127 = load i64, ptr %126, align 8, !tbaa !264
  %128 = xor i64 %127, -1
  %129 = and i64 %125, %128
  %130 = or i64 %129, %40
  br label %432

131:                                              ; preds = %68
  %132 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !139
  %134 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %133, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %135 = zext i32 %41 to i64
  %136 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !264
  %138 = and i64 %134, %137
  %139 = and i64 %138, %40
  br label %432

140:                                              ; preds = %68
  %141 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !139
  %143 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %142, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %144 = and i64 %143, %40
  %145 = load ptr, ptr %141, align 8, !tbaa !139
  %146 = load i32, ptr %145, align 8
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %432, label %150, !prof !696

150:                                              ; preds = %140
  %151 = zext nneg i32 %148 to i64
  %152 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !264
  %154 = and i64 %153, %144
  br label %432

155:                                              ; preds = %68
  %156 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !139
  %158 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %157, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %159 = load ptr, ptr %156, align 8, !tbaa !139
  %160 = load i32, ptr %159, align 8
  %161 = lshr i32 %160, 16
  %162 = and i32 %161, 255
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %185, label %164

164:                                              ; preds = %155
  %165 = zext nneg i32 %162 to i64
  %166 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !264
  %168 = and i64 %167, %158
  %169 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %165
  %170 = load i8, ptr %169, align 1, !tbaa !139
  %171 = zext i8 %170 to i64
  %172 = shl nuw nsw i64 %171, 3
  %173 = add nuw nsw i64 %172, 4294967295
  %174 = and i64 %173, 4294967295
  %175 = shl nuw i64 1, %174
  %176 = and i64 %175, %168
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %164
  %179 = zext i32 %41 to i64
  %180 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !264
  %182 = xor i64 %167, -1
  %183 = and i64 %181, %182
  %184 = or i64 %183, %168
  br label %185

185:                                              ; preds = %164, %178, %155
  %186 = phi i64 [ %184, %178 ], [ %168, %164 ], [ %158, %155 ]
  %187 = and i64 %186, %40
  br label %432

188:                                              ; preds = %68
  %189 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !139
  %191 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %190, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %192 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !139
  %194 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %193, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %195 = and i64 %191, %194
  %196 = and i64 %195, %40
  br label %432

197:                                              ; preds = %68, %68, %68, %68, %68, %68
  %198 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !139
  %200 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %199, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %201 = and i64 %200, %40
  %202 = icmp eq i64 %201, %40
  br i1 %202, label %432, label %203, !prof !697

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !139
  %206 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %205, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %207 = or i64 %206, %200
  %208 = and i64 %207, %40
  br label %432

209:                                              ; preds = %68, %68, %68, %68, %68, %68, %68
  %210 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !139
  %212 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %211, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %213 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !139
  %215 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %214, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %216 = load i32, ptr %0, align 8
  %217 = lshr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !139
  %222 = zext i8 %221 to i64
  %223 = shl nuw nsw i64 %222, 3
  %224 = add nuw nsw i64 %223, 4294967295
  %225 = tail call i32 @floor_log2(i64 noundef %212) #28
  %226 = add nsw i32 %225, 1
  %227 = tail call i32 @floor_log2(i64 noundef %215) #28
  %228 = add nsw i32 %227, 1
  %229 = sub i64 0, %212
  %230 = and i64 %212, %229
  %231 = tail call i32 @floor_log2(i64 noundef %230) #28
  %232 = sub i64 0, %215
  %233 = and i64 %215, %232
  %234 = tail call i32 @floor_log2(i64 noundef %233) #28
  %235 = and i64 %224, 4294967295
  %236 = shl nuw i64 1, %235
  %237 = and i64 %236, %212
  %238 = and i64 %236, %215
  switch i16 %69, label %272 [
    i16 49, label %239
    i16 50, label %243
    i16 52, label %245
    i16 55, label %248
    i16 59, label %255
    i16 58, label %258
    i16 60, label %267
  ], !prof !698

239:                                              ; preds = %209
  %240 = tail call i32 @llvm.smax.i32(i32 %226, i32 %228)
  %241 = add nsw i32 %240, 1
  %242 = tail call i32 @llvm.smin.i32(i32 %231, i32 %234)
  br label %273

243:                                              ; preds = %209
  %244 = tail call i32 @llvm.smin.i32(i32 %231, i32 %234)
  br label %273

245:                                              ; preds = %209
  %246 = add nsw i32 %228, %226
  %247 = add nsw i32 %234, %231
  br label %273

248:                                              ; preds = %209
  %249 = icmp eq i32 %228, 0
  br i1 %249, label %273, label %250

250:                                              ; preds = %248
  %251 = icmp ne i64 %237, 0
  %252 = icmp ne i64 %238, 0
  %253 = select i1 %251, i1 true, i1 %252
  %254 = select i1 %253, i32 %39, i32 %226
  br label %273

255:                                              ; preds = %209
  %256 = icmp eq i32 %228, 0
  %257 = select i1 %256, i32 %39, i32 %226
  br label %273

258:                                              ; preds = %209
  %259 = icmp eq i32 %228, 0
  br i1 %259, label %273, label %260

260:                                              ; preds = %258
  %261 = icmp ne i64 %237, 0
  %262 = icmp ne i64 %238, 0
  %263 = select i1 %261, i1 true, i1 %262
  %264 = tail call i32 @llvm.smin.i32(i32 %226, i32 %228)
  %265 = select i1 %263, i32 %39, i32 %264
  %266 = tail call i32 @llvm.smin.i32(i32 %231, i32 %234)
  br label %273

267:                                              ; preds = %209
  %268 = icmp eq i32 %228, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %267
  %270 = tail call i32 @llvm.smin.i32(i32 %226, i32 %228)
  %271 = tail call i32 @llvm.smin.i32(i32 %231, i32 %234)
  br label %273

272:                                              ; preds = %209
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3984, ptr noundef nonnull @.str.1) #28
  br label %273

273:                                              ; preds = %255, %250, %267, %258, %248, %272, %269, %260, %245, %243, %239
  %274 = phi i32 [ %39, %272 ], [ %39, %267 ], [ %270, %269 ], [ %39, %258 ], [ %265, %260 ], [ %39, %248 ], [ %246, %245 ], [ %39, %243 ], [ %241, %239 ], [ %254, %250 ], [ %257, %255 ]
  %275 = phi i32 [ 0, %272 ], [ 0, %267 ], [ %271, %269 ], [ 0, %258 ], [ %266, %260 ], [ 0, %248 ], [ %247, %245 ], [ %244, %243 ], [ %242, %239 ], [ 0, %250 ], [ 0, %255 ]
  %276 = icmp ult i32 %274, %39
  %277 = zext nneg i32 %274 to i64
  %278 = shl nsw i64 -1, %277
  %279 = xor i64 %278, -1
  %280 = select i1 %276, i64 %279, i64 -1, !prof !699
  %281 = icmp sgt i32 %275, 0
  %282 = zext nneg i32 %275 to i64
  %283 = shl nsw i64 -1, %282
  %284 = select i1 %281, i64 %283, i64 -1, !prof !700
  %285 = and i64 %280, %284
  %286 = and i64 %285, %40
  br label %432

287:                                              ; preds = %68
  %288 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !139
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 30
  br i1 %292, label %293, label %432, !prof !701

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1
  %295 = load i64, ptr %294, align 8, !tbaa !139
  %296 = icmp slt i64 %295, 64
  br i1 %296, label %297, label %432, !prof !701

297:                                              ; preds = %293
  %298 = shl nsw i64 -1, %295
  %299 = xor i64 %298, -1
  %300 = and i64 %40, %299
  br label %432

301:                                              ; preds = %68
  %302 = and i32 %14, 268435456
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %314, label %304, !prof !702

304:                                              ; preds = %301
  %305 = and i32 %14, 201326592
  %306 = icmp eq i32 %305, 67108864
  br i1 %306, label %307, label %314

307:                                              ; preds = %304
  %308 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %309 = load i64, ptr %308, align 8, !tbaa !264
  %310 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !139
  %312 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %311, i32 noundef %16, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %313 = and i64 %312, %309
  br label %314

314:                                              ; preds = %307, %304, %301
  %315 = phi i64 [ %313, %307 ], [ %40, %304 ], [ %40, %301 ]
  %316 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !139
  %318 = load i32, ptr %317, align 8
  %319 = lshr i32 %318, 16
  %320 = and i32 %319, 255
  %321 = zext nneg i32 %320 to i64
  %322 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !139
  %324 = icmp ult i8 %323, 5
  br i1 %324, label %325, label %432, !prof !702

325:                                              ; preds = %314
  %326 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %317, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %327 = and i64 %326, %315
  %328 = load i32, ptr %0, align 8
  %329 = lshr i32 %328, 16
  %330 = and i32 %329, 255
  %331 = zext nneg i32 %330 to i64
  %332 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !139
  %334 = load ptr, ptr %316, align 8, !tbaa !139
  %335 = load i32, ptr %334, align 8
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  %338 = zext nneg i32 %337 to i64
  %339 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !139
  %341 = icmp ugt i8 %333, %340
  br i1 %341, label %342, label %432, !prof !703

342:                                              ; preds = %325
  %343 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %331
  %344 = load i64, ptr %343, align 8, !tbaa !264
  %345 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %338
  %346 = load i64, ptr %345, align 8, !tbaa !264
  %347 = xor i64 %346, -1
  %348 = and i64 %344, %347
  %349 = or i64 %348, %327
  br label %432

350:                                              ; preds = %68, %68, %68, %68
  %351 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %352 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !139
  %354 = load i32, ptr %353, align 8
  %355 = and i32 %354, 65535
  %356 = icmp eq i32 %355, 30
  br i1 %356, label %357, label %432, !prof !704

357:                                              ; preds = %350
  %358 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 0, i32 1
  %359 = load i64, ptr %358, align 8, !tbaa !139
  %360 = icmp ult i64 %359, 64
  br i1 %360, label %361, label %432, !prof !705

361:                                              ; preds = %357
  %362 = zext i8 %31 to i16
  %363 = shl nuw nsw i16 %362, 3
  %364 = zext nneg i16 %363 to i64
  %365 = icmp slt i64 %359, %364
  br i1 %365, label %366, label %432, !prof !705

366:                                              ; preds = %361
  %367 = zext nneg i16 %363 to i32
  %368 = trunc i64 %359 to i32
  %369 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %17
  %370 = load i64, ptr %369, align 8, !tbaa !264
  %371 = load ptr, ptr %351, align 8, !tbaa !139
  %372 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %371, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %373 = and i64 %372, %370
  %374 = icmp ugt i32 %39, %367
  %375 = xor i64 %370, -1
  %376 = and i64 %40, %375
  %377 = and i64 %376, %372
  %378 = select i1 %374, i64 %377, i64 0, !prof !706
  switch i16 %69, label %398 [
    i16 68, label %379
    i16 67, label %381
    i16 65, label %396
  ], !prof !707

379:                                              ; preds = %366
  %380 = lshr i64 %373, %359
  br label %407

381:                                              ; preds = %366
  %382 = lshr i64 %373, %359
  %383 = xor i32 %368, -1
  %384 = add nsw i32 %383, %367
  %385 = zext nneg i32 %384 to i64
  %386 = shl nuw i64 1, %385
  %387 = and i64 %382, %386
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %407, label %389, !prof !708

389:                                              ; preds = %381
  %390 = shl nsw i64 -1, %359
  %391 = xor i64 %390, -1
  %392 = sub nsw i32 %367, %368
  %393 = zext nneg i32 %392 to i64
  %394 = shl i64 %391, %393
  %395 = or i64 %382, %394
  br label %407

396:                                              ; preds = %366
  %397 = shl i64 %373, %359
  br label %407

398:                                              ; preds = %366
  %399 = urem i32 %368, %367
  %400 = zext nneg i32 %399 to i64
  %401 = shl i64 %373, %400
  %402 = sub nsw i32 %367, %399
  %403 = zext nneg i32 %402 to i64
  %404 = lshr i64 %373, %403
  %405 = or i64 %404, %401
  %406 = and i64 %405, %370
  br label %407

407:                                              ; preds = %389, %381, %398, %396, %379
  %408 = phi i64 [ %380, %379 ], [ %395, %389 ], [ %382, %381 ], [ %397, %396 ], [ %406, %398 ]
  %409 = or i64 %408, %378
  %410 = and i64 %409, %40
  br label %432

411:                                              ; preds = %68, %68
  %412 = zext nneg i32 %39 to i64
  %413 = tail call i32 @floor_log2(i64 noundef %412) #28
  %414 = zext nneg i32 %413 to i64
  %415 = shl i64 2, %414
  %416 = add nsw i64 %415, -1
  br label %432

417:                                              ; preds = %68
  br label %432

418:                                              ; preds = %68
  br label %432

419:                                              ; preds = %68
  br label %432

420:                                              ; preds = %68
  %421 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %422 = load ptr, ptr %421, align 8, !tbaa !139
  %423 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %422, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %424 = and i64 %423, %40
  %425 = icmp eq i64 %424, %40
  br i1 %425, label %432, label %426, !prof !709

426:                                              ; preds = %420
  %427 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %428 = load ptr, ptr %427, align 8, !tbaa !139
  %429 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %428, i32 noundef %41, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  %430 = or i64 %429, %423
  %431 = and i64 %430, %40
  br label %432

432:                                              ; preds = %350, %68, %20, %20, %20, %5, %5, %5, %117, %23, %131, %185, %188, %273, %411, %417, %418, %419, %122, %120, %150, %140, %297, %293, %287, %325, %342, %314, %407, %361, %357, %203, %197, %426, %420, %38, %5, %20, %114, %112, %54
  %433 = phi i64 [ %67, %54 ], [ %116, %114 ], [ %113, %112 ], [ %9, %23 ], [ %9, %20 ], [ %9, %5 ], [ %40, %38 ], [ -1, %418 ], [ -1, %417 ], [ %416, %411 ], [ %410, %407 ], [ %40, %361 ], [ %40, %357 ], [ %349, %342 ], [ %327, %325 ], [ %315, %314 ], [ %300, %297 ], [ %40, %293 ], [ %40, %287 ], [ %286, %273 ], [ %196, %188 ], [ %187, %185 ], [ %154, %150 ], [ %144, %140 ], [ %139, %131 ], [ 1, %419 ], [ %130, %122 ], [ %40, %120 ], [ %119, %117 ], [ %208, %203 ], [ %40, %197 ], [ %431, %426 ], [ %40, %420 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ %40, %68 ], [ %40, %350 ]
  ret i64 %433
}

declare i32 @ix86_cfun_abi() local_unnamed_addr #3

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_sign_bit_copies1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 !prof !834 !PGOFuncName !835 {
  %6 = alloca i32, align 4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !139
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = icmp eq i32 %1, 0
  %15 = lshr i32 %7, 16
  %16 = and i32 %15, 255
  %17 = select i1 %14, i32 %16, i32 %1, !prof !721
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %510, label %19, !prof !722

19:                                               ; preds = %5
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !139
  %23 = add i8 %22, -8
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %497, label %25

25:                                               ; preds = %497, %19
  %26 = zext nneg i32 %16 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !139
  %29 = add i8 %28, -8
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %502, label %31

31:                                               ; preds = %25
  %32 = add i8 %22, -12
  %33 = icmp ult i8 %32, 5
  br i1 %33, label %510, label %34, !prof !722

34:                                               ; preds = %502, %31
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %36 = load i8, ptr %35, align 1, !tbaa !139
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = icmp ult i32 %13, %38
  br i1 %39, label %40, label %53, !prof !721

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %42 = load i32, ptr %0, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !139
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %12, %48
  %50 = shl nsw i32 %49, 3
  %51 = add i32 %50, %41
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  br label %510

53:                                               ; preds = %34
  %54 = icmp ne i32 %16, 0
  %55 = icmp ugt i32 %13, %38
  %56 = select i1 %54, i1 %55, i1 false, !prof !723
  br i1 %56, label %510, label %57, !prof !724

57:                                               ; preds = %53
  %58 = trunc i32 %7 to i16
  switch i16 %58, label %480 [
    i16 37, label %59
    i16 91, label %476
    i16 30, label %72
    i16 39, label %94
    i16 119, label %135
    i16 98, label %148
    i16 100, label %162
    i16 64, label %178
    i16 66, label %182
    i16 69, label %182
    i16 51, label %215
    i16 62, label %238
    i16 61, label %238
    i16 63, label %238
    i16 70, label %238
    i16 71, label %238
    i16 72, label %238
    i16 73, label %238
    i16 49, label %282
    i16 50, label %282
    i16 52, label %317
    i16 59, label %347
    i16 60, label %361
    i16 55, label %375
    i16 58, label %393
    i16 67, label %410
    i16 65, label %440
    i16 47, label %468
    i16 81, label %476
    i16 80, label %476
    i16 82, label %476
    i16 83, label %476
    i16 84, label %476
    i16 85, label %476
    i16 92, label %476
    i16 97, label %476
    i16 93, label %476
    i16 94, label %476
    i16 95, label %476
    i16 96, label %476
    i16 86, label %476
    i16 87, label %476
    i16 88, label %476
    i16 89, label %476
    i16 90, label %476
  ], !prof !725

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 1, ptr %6, align 4, !tbaa !143
  %60 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 3), align 8, !tbaa !726
  %61 = call ptr %60(ptr noundef nonnull %0, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #28, !prof !836
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !728

63:                                               ; preds = %59
  %64 = call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %61, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %64, %63 ], [ 1, %59 ]
  %67 = icmp ult i32 %66, 2
  %68 = load i32, ptr %6, align 4
  %69 = icmp ult i32 %68, 2
  %70 = select i1 %67, i1 %69, i1 false, !prof !729
  %71 = call i32 @llvm.umax.i32(i32 %66, i32 %68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  br i1 %70, label %480, label %510, !prof !730

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !139
  %75 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %76 = load i64, ptr %75, align 8, !tbaa !264
  %77 = and i64 %76, %74
  %78 = icmp ult i8 %11, 9
  br i1 %78, label %79, label %87, !prof !731

79:                                               ; preds = %72
  %80 = add nsw i32 %13, -1
  %81 = zext nneg i32 %80 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %77, %82
  %84 = icmp eq i64 %83, 0
  %85 = select i1 %84, i64 0, i64 %76, !prof !732
  %86 = xor i64 %85, %77
  br label %87

87:                                               ; preds = %79, %72
  %88 = phi i64 [ %77, %72 ], [ %86, %79 ]
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %510, label %90, !prof !733

90:                                               ; preds = %87
  %91 = tail call i32 @floor_log2(i64 noundef %88) #28
  %92 = xor i32 %91, -1
  %93 = add i32 %13, %92
  br label %510

94:                                               ; preds = %57
  %95 = and i32 %7, 469762048
  %96 = icmp eq i32 %95, 268435456
  %97 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !139
  br i1 %96, label %99, label %113, !prof !734

99:                                               ; preds = %94
  %100 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %98, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %101 = load i32, ptr %0, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !139
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %12, %107
  %109 = shl nsw i32 %108, 3
  %110 = icmp slt i32 %109, %100
  %111 = or disjoint i32 %109, 1
  %112 = select i1 %110, i32 %100, i32 %111
  br label %510

113:                                              ; preds = %94
  %114 = load i32, ptr %98, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !139
  %120 = icmp ugt i8 %11, %119
  br i1 %120, label %480, label %121, !prof !735

121:                                              ; preds = %113
  %122 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %98, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %123 = load ptr, ptr %97, align 8, !tbaa !139
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !139
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %12, %130
  %132 = shl nsw i32 %131, 3
  %133 = add i32 %132, %122
  %134 = tail call i32 @llvm.smax.i32(i32 %133, i32 1)
  br label %510

135:                                              ; preds = %57
  %136 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !139
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 30
  br i1 %140, label %141, label %480

141:                                              ; preds = %135
  %142 = zext nneg i32 %13 to i64
  %143 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !139
  %145 = sub nsw i64 %142, %144
  %146 = tail call i64 @llvm.smax.i64(i64 %145, i64 1)
  %147 = trunc i64 %146 to i32
  br label %510

148:                                              ; preds = %57
  %149 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !139
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !139
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %12, %157
  %159 = shl nsw i32 %158, 3
  %160 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef nonnull %150, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %161 = add i32 %159, %160
  br label %510

162:                                              ; preds = %57
  %163 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !139
  %165 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %164, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %166 = load ptr, ptr %163, align 8, !tbaa !139
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !139
  %173 = zext i8 %172 to i32
  %174 = sub nsw i32 %12, %173
  %175 = shl nsw i32 %174, 3
  %176 = add i32 %175, %165
  %177 = tail call i32 @llvm.smax.i32(i32 %176, i32 1)
  br label %510

178:                                              ; preds = %57
  %179 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !139
  %181 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %180, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %510

182:                                              ; preds = %57, %57
  %183 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %184 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !139
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 30
  br i1 %188, label %189, label %480

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !139
  %192 = icmp sgt i64 %191, -1
  br i1 %192, label %193, label %480

193:                                              ; preds = %189
  %194 = zext nneg i32 %13 to i64
  %195 = icmp slt i64 %191, %194
  br i1 %195, label %196, label %480

196:                                              ; preds = %193
  %197 = load ptr, ptr %183, align 8, !tbaa !139
  %198 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %197, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %199 = sext i32 %198 to i64
  %200 = icmp eq i32 %8, 66
  %201 = load ptr, ptr %184, align 8, !tbaa !139
  %202 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !139
  %204 = sub nsw i64 %194, %203
  %205 = select i1 %200, i64 %203, i64 %204
  %206 = icmp slt i64 %205, %199
  br i1 %206, label %207, label %510

207:                                              ; preds = %196
  %208 = load ptr, ptr %184, align 8, !tbaa !139
  %209 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !139
  %211 = sub nsw i64 %194, %210
  %212 = select i1 %200, i64 %210, i64 %211
  %213 = trunc i64 %212 to i32
  %214 = sub i32 %198, %213
  br label %510

215:                                              ; preds = %57
  %216 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !139
  %218 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %217, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %219 = icmp ugt i8 %11, 8
  br i1 %219, label %220, label %224, !prof !736

220:                                              ; preds = %215
  %221 = icmp sgt i32 %218, 1
  %222 = add nsw i32 %218, -1
  %223 = select i1 %221, i32 %222, i32 1
  br label %510

224:                                              ; preds = %215
  %225 = load ptr, ptr %216, align 8, !tbaa !139
  %226 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %225, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %227 = icmp eq i64 %226, 1
  br i1 %227, label %510, label %228, !prof !737

228:                                              ; preds = %224
  %229 = icmp sgt i32 %218, 1
  br i1 %229, label %230, label %510

230:                                              ; preds = %228
  %231 = add nsw i32 %13, -1
  %232 = zext nneg i32 %231 to i64
  %233 = shl nuw i64 1, %232
  %234 = and i64 %226, %233
  %235 = icmp ne i64 %234, 0
  %236 = sext i1 %235 to i32
  %237 = add nsw i32 %218, %236
  br label %510

238:                                              ; preds = %57, %57, %57, %57, %57, %57, %57
  %239 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !139
  %241 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %240, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %242 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !139
  %244 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %243, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %245 = icmp eq i32 %8, 61
  %246 = icmp sgt i32 %244, 1
  %247 = select i1 %245, i1 %246, i1 false, !prof !738
  %248 = icmp ult i8 %11, 9
  %249 = select i1 %247, i1 %248, i1 false, !prof !738
  br i1 %249, label %250, label %263, !prof !738

250:                                              ; preds = %238
  %251 = load ptr, ptr %242, align 8, !tbaa !139
  %252 = load i32, ptr %251, align 8
  %253 = and i32 %252, 65535
  %254 = icmp eq i32 %253, 30
  br i1 %254, label %255, label %263, !prof !739

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1
  %257 = load i64, ptr %256, align 8, !tbaa !139
  %258 = add nsw i32 %13, -1
  %259 = zext nneg i32 %258 to i64
  %260 = shl nuw i64 1, %259
  %261 = and i64 %257, %260
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %510, label %263, !prof !740

263:                                              ; preds = %255, %250, %238
  %264 = icmp eq i32 %8, 62
  %265 = select i1 %264, i1 %246, i1 false, !prof !741
  %266 = select i1 %265, i1 %248, i1 false, !prof !742
  br i1 %266, label %267, label %280, !prof !742

267:                                              ; preds = %263
  %268 = load ptr, ptr %242, align 8, !tbaa !139
  %269 = load i32, ptr %268, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 30
  br i1 %271, label %272, label %280, !prof !743

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1
  %274 = load i64, ptr %273, align 8, !tbaa !139
  %275 = add nsw i32 %13, -1
  %276 = zext nneg i32 %275 to i64
  %277 = shl nuw i64 1, %276
  %278 = and i64 %274, %277
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %510, !prof !744

280:                                              ; preds = %272, %267, %263
  %281 = tail call i32 @llvm.smin.i32(i32 %241, i32 %244)
  br label %510

282:                                              ; preds = %57, %57
  %283 = icmp eq i32 %8, 49
  br i1 %283, label %284, label %306, !prof !745

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %286 = load ptr, ptr %285, align 8, !tbaa !139
  %287 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !128
  %288 = icmp eq ptr %286, %287
  %289 = icmp ult i8 %11, 9
  %290 = select i1 %288, i1 %289, i1 false, !prof !746
  br i1 %290, label %291, label %306, !prof !746

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !139
  %294 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %293, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %295 = add nsw i32 %13, -1
  %296 = zext nneg i32 %295 to i64
  %297 = shl nuw i64 1, %296
  %298 = and i64 %294, %297
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %306, !prof !747

300:                                              ; preds = %291
  %301 = icmp ult i64 %294, 2
  br i1 %301, label %510, label %302, !prof !748

302:                                              ; preds = %300
  %303 = tail call i32 @floor_log2(i64 noundef %294) #28
  %304 = xor i32 %303, -1
  %305 = add i32 %13, %304
  br label %510

306:                                              ; preds = %291, %284, %282
  %307 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !139
  %309 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %308, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %310 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %311 = load ptr, ptr %310, align 8, !tbaa !139
  %312 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %311, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %313 = tail call i32 @llvm.smin.i32(i32 %309, i32 %312)
  %314 = add nsw i32 %313, -1
  %315 = icmp sgt i32 %313, 1
  %316 = select i1 %315, i32 %314, i32 1, !prof !749
  br label %510

317:                                              ; preds = %57
  %318 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !139
  %320 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %319, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %321 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !139
  %323 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %322, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %324 = sub i32 %323, %13
  %325 = add i32 %324, %320
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %344, !prof !750

327:                                              ; preds = %317
  %328 = icmp ugt i8 %11, 8
  br i1 %328, label %342, label %329, !prof !751

329:                                              ; preds = %327
  %330 = load ptr, ptr %318, align 8, !tbaa !139
  %331 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %330, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %332 = add nsw i32 %13, -1
  %333 = zext nneg i32 %332 to i64
  %334 = shl nuw i64 1, %333
  %335 = and i64 %331, %334
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %344, label %337, !prof !750

337:                                              ; preds = %329
  %338 = load ptr, ptr %321, align 8, !tbaa !139
  %339 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %338, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %340 = and i64 %339, %334
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %337, %327
  %343 = add nsw i32 %325, -1
  br label %344

344:                                              ; preds = %342, %337, %329, %317
  %345 = phi i32 [ %343, %342 ], [ %325, %337 ], [ %325, %329 ], [ %325, %317 ]
  %346 = tail call i32 @llvm.smax.i32(i32 %345, i32 1)
  br label %510

347:                                              ; preds = %57
  %348 = icmp ugt i8 %11, 8
  br i1 %348, label %510, label %349

349:                                              ; preds = %347
  %350 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !139
  %352 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %351, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %353 = add nsw i32 %13, -1
  %354 = zext nneg i32 %353 to i64
  %355 = shl nuw i64 1, %354
  %356 = and i64 %352, %355
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %510

358:                                              ; preds = %349
  %359 = load ptr, ptr %350, align 8, !tbaa !139
  %360 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %359, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %510

361:                                              ; preds = %57
  %362 = icmp ugt i8 %11, 8
  br i1 %362, label %510, label %363

363:                                              ; preds = %361
  %364 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %365 = load ptr, ptr %364, align 8, !tbaa !139
  %366 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %365, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %367 = add nsw i32 %13, -1
  %368 = zext nneg i32 %367 to i64
  %369 = shl nuw i64 1, %368
  %370 = and i64 %366, %369
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %372, label %510

372:                                              ; preds = %363
  %373 = load ptr, ptr %364, align 8, !tbaa !139
  %374 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %373, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %510

375:                                              ; preds = %57
  %376 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !139
  %378 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %377, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %379 = icmp sgt i32 %378, 1
  br i1 %379, label %380, label %510

380:                                              ; preds = %375
  %381 = icmp ugt i8 %11, 8
  br i1 %381, label %391, label %382

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %384 = load ptr, ptr %383, align 8, !tbaa !139
  %385 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %384, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %386 = add nsw i32 %13, -1
  %387 = zext nneg i32 %386 to i64
  %388 = shl nuw i64 1, %387
  %389 = and i64 %385, %388
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %510, label %391

391:                                              ; preds = %382, %380
  %392 = add nsw i32 %378, -1
  br label %510

393:                                              ; preds = %57
  %394 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %395 = load ptr, ptr %394, align 8, !tbaa !139
  %396 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %395, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %397 = icmp sgt i32 %396, 1
  br i1 %397, label %398, label %510

398:                                              ; preds = %393
  %399 = icmp ugt i8 %11, 8
  br i1 %399, label %408, label %400

400:                                              ; preds = %398
  %401 = load ptr, ptr %394, align 8, !tbaa !139
  %402 = tail call fastcc i64 @cached_nonzero_bits(ptr noundef %401, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %403 = add nsw i32 %13, -1
  %404 = zext nneg i32 %403 to i64
  %405 = shl nuw i64 1, %404
  %406 = and i64 %402, %405
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %510, label %408

408:                                              ; preds = %400, %398
  %409 = add nsw i32 %396, -1
  br label %510

410:                                              ; preds = %57
  %411 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !139
  %413 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %412, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %414 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !139
  %416 = load i32, ptr %415, align 8
  %417 = and i32 %416, 65535
  %418 = icmp eq i32 %417, 30
  br i1 %418, label %419, label %510, !prof !752

419:                                              ; preds = %410
  %420 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %421 = load i64, ptr %420, align 8, !tbaa !139
  %422 = icmp sgt i64 %421, 0
  br i1 %422, label %423, label %510

423:                                              ; preds = %419
  %424 = load i32, ptr %0, align 8
  %425 = lshr i32 %424, 16
  %426 = and i32 %425, 255
  %427 = zext nneg i32 %426 to i64
  %428 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %427
  %429 = load i8, ptr %428, align 1, !tbaa !139
  %430 = zext i8 %429 to i64
  %431 = shl nuw nsw i64 %430, 3
  %432 = icmp slt i64 %421, %431
  br i1 %432, label %433, label %510

433:                                              ; preds = %423
  %434 = zext nneg i32 %13 to i64
  %435 = sext i32 %413 to i64
  %436 = add nsw i64 %421, %435
  %437 = icmp sgt i64 %436, %434
  %438 = trunc i64 %436 to i32
  %439 = select i1 %437, i32 %13, i32 %438
  br label %510

440:                                              ; preds = %57
  %441 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %442 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %443 = load ptr, ptr %442, align 8, !tbaa !139
  %444 = load i32, ptr %443, align 8
  %445 = and i32 %444, 65535
  %446 = icmp eq i32 %445, 30
  br i1 %446, label %447, label %510, !prof !753

447:                                              ; preds = %440
  %448 = getelementptr inbounds %struct.rtx_def, ptr %443, i64 0, i32 1
  %449 = load i64, ptr %448, align 8, !tbaa !139
  %450 = icmp sgt i64 %449, -1
  %451 = zext nneg i32 %13 to i64
  %452 = icmp slt i64 %449, %451
  %453 = select i1 %450, i1 %452, i1 false, !prof !753
  %454 = zext i8 %36 to i64
  %455 = shl nuw nsw i64 %454, 3
  %456 = icmp slt i64 %449, %455
  %457 = select i1 %453, i1 %456, i1 false, !prof !753
  br i1 %457, label %458, label %510, !prof !753

458:                                              ; preds = %447
  %459 = load ptr, ptr %441, align 8, !tbaa !139
  %460 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %459, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %461 = sext i32 %460 to i64
  %462 = load ptr, ptr %442, align 8, !tbaa !139
  %463 = getelementptr inbounds %struct.rtx_def, ptr %462, i64 0, i32 1
  %464 = load i64, ptr %463, align 8, !tbaa !139
  %465 = sub nsw i64 %461, %464
  %466 = tail call i64 @llvm.smax.i64(i64 %465, i64 1)
  %467 = trunc i64 %466 to i32
  br label %510

468:                                              ; preds = %57
  %469 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %470 = load ptr, ptr %469, align 8, !tbaa !139
  %471 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %470, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %472 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %473 = load ptr, ptr %472, align 8, !tbaa !139
  %474 = tail call fastcc i32 @cached_num_sign_bit_copies(ptr noundef %473, i32 noundef %17, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %475 = tail call i32 @llvm.smin.i32(i32 %471, i32 %474)
  br label %510

476:                                              ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  %477 = tail call i32 @floor_log2(i64 noundef 1) #28
  %478 = xor i32 %477, -1
  %479 = add i32 %13, %478
  br label %510

480:                                              ; preds = %57, %182, %189, %193, %135, %113, %65
  %481 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %482 = load i8, ptr %481, align 1, !tbaa !139
  %483 = zext i8 %482 to i32
  %484 = shl nuw nsw i32 %483, 3
  %485 = icmp ugt i8 %482, 8
  br i1 %485, label %510, label %486, !prof !754

486:                                              ; preds = %480
  %487 = call fastcc i64 @cached_nonzero_bits(ptr noundef nonnull %0, i32 noundef %17, ptr noundef null, i32 noundef 0, i64 noundef 0)
  %488 = add nsw i32 %484, -1
  %489 = zext nneg i32 %488 to i64
  %490 = shl nuw i64 1, %489
  %491 = and i64 %487, %490
  %492 = icmp eq i64 %491, 0
  br i1 %492, label %493, label %510, !prof !755

493:                                              ; preds = %486
  %494 = call i32 @floor_log2(i64 noundef %487) #28
  %495 = xor i32 %494, -1
  %496 = add i32 %484, %495
  br label %510

497:                                              ; preds = %19
  %498 = zext nneg i8 %23 to i16
  %499 = lshr i16 523, %498
  %500 = and i16 %499, 1
  %501 = icmp eq i16 %500, 0
  br i1 %501, label %25, label %510

502:                                              ; preds = %25
  %503 = zext nneg i8 %29 to i16
  %504 = lshr i16 1019, %503
  %505 = and i16 %504, 1
  %506 = icmp ne i16 %505, 0
  %507 = add i8 %22, -12
  %508 = icmp ult i8 %507, 5
  %509 = or i1 %506, %508
  br i1 %509, label %510, label %34, !prof !756

510:                                              ; preds = %502, %497, %255, %65, %230, %31, %493, %486, %480, %440, %447, %410, %419, %423, %433, %393, %400, %408, %375, %382, %391, %363, %361, %349, %347, %302, %300, %272, %228, %224, %207, %196, %90, %87, %53, %5, %476, %468, %458, %372, %358, %344, %306, %280, %220, %178, %162, %148, %141, %121, %99, %40
  %511 = phi i32 [ %52, %40 ], [ %475, %468 ], [ %467, %458 ], [ %374, %372 ], [ %360, %358 ], [ %346, %344 ], [ %316, %306 ], [ %281, %280 ], [ %223, %220 ], [ %181, %178 ], [ %177, %162 ], [ %161, %148 ], [ %147, %141 ], [ %134, %121 ], [ %112, %99 ], [ %479, %476 ], [ 1, %31 ], [ 1, %5 ], [ 1, %53 ], [ %93, %90 ], [ %13, %87 ], [ %214, %207 ], [ 1, %196 ], [ %13, %224 ], [ %218, %228 ], [ %237, %230 ], [ %244, %272 ], [ %305, %302 ], [ %13, %300 ], [ 1, %347 ], [ 1, %349 ], [ 1, %361 ], [ 1, %363 ], [ %392, %391 ], [ %378, %382 ], [ %378, %375 ], [ %409, %408 ], [ %396, %400 ], [ %396, %393 ], [ %439, %433 ], [ %413, %423 ], [ %413, %419 ], [ %413, %410 ], [ 1, %447 ], [ 1, %440 ], [ 1, %480 ], [ %496, %493 ], [ 1, %486 ], [ %71, %65 ], [ %244, %255 ], [ 1, %497 ], [ 1, %502 ]
  ret i32 %511
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!126}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!35 = !{ptr @rtx_varies_p, ptr @rtx_varies_p, i64 563375}
!36 = !{ptr @rtx_addr_can_trap_p, ptr @rtx_addr_can_trap_p_1, i64 343099}
!37 = !{ptr @rtx_addr_can_trap_p_1, ptr @host_integerp, i64 114931}
!38 = !{ptr @rtx_addr_can_trap_p_1, ptr @tree_low_cst, i64 114931}
!39 = !{ptr @rtx_addr_can_trap_p_1, ptr @int_size_in_bytes, i64 737807}
!40 = !{ptr @rtx_addr_can_trap_p_1, ptr @rtx_addr_can_trap_p_1, i64 197968}
!41 = !{ptr @count_occurrences, ptr @count_occurrences, i64 14446}
!42 = !{ptr @reg_mentioned_p, ptr @rtx_equal_p, i64 73}
!43 = !{ptr @reg_mentioned_p, ptr @reg_mentioned_p, i64 3613143}
!44 = !{ptr @reg_used_between_p, ptr @reg_overlap_mentioned_p, i64 5506}
!45 = !{ptr @reg_overlap_mentioned_p, ptr @refers_to_regno_p, i64 2726242}
!46 = !{ptr @reg_overlap_mentioned_p, ptr @reg_mentioned_p, i64 10669}
!47 = !{ptr @reg_referenced_p, ptr @reg_overlap_mentioned_p, i64 802824}
!48 = !{ptr @reg_referenced_p, ptr @reg_referenced_p, i64 263928}
!49 = !{ptr @reg_set_between_p, ptr @find_reg_fusage, i64 2}
!50 = !{ptr @reg_set_between_p, ptr @note_stores, i64 33}
!51 = !{ptr @reg_set_p, ptr @find_reg_fusage, i64 11161}
!52 = !{ptr @reg_set_p, ptr @note_stores, i64 213497}
!53 = !{ptr @modified_between_p, ptr @modified_between_p, i64 874398}
!54 = !{ptr @modified_between_p, ptr @memory_modified_in_insn_p, i64 44493}
!55 = !{ptr @modified_between_p, ptr @find_reg_fusage, i64 4937}
!56 = !{ptr @modified_between_p, ptr @note_stores, i64 94433}
!57 = !{ptr @modified_in_p, ptr @modified_in_p, i64 1029037}
!58 = !{ptr @modified_in_p, ptr @memory_modified_in_insn_p, i64 139668}
!59 = !{ptr @modified_in_p, ptr @find_reg_fusage, i64 14294}
!60 = !{ptr @modified_in_p, ptr @note_stores, i64 273426}
!61 = !{ptr @note_stores, ptr @note_stores, i64 1600362}
!62 = !{ptr @set_of_1, ptr @rtx_equal_p, i64 892163}
!63 = !{ptr @set_of_1, ptr @reg_overlap_mentioned_p, i64 510955}
!64 = !{ptr @single_set_2, ptr @side_effects_p, i64 770}
!65 = !{ptr @side_effects_p, ptr @side_effects_p, i64 23276729}
!66 = !{ptr @set_noop_p, ptr @rtx_equal_p, i64 7218}
!67 = !{ptr @noop_move_p, ptr @rtx_equal_p, i64 6503}
!68 = !{ptr @refers_to_regno_p, ptr @refers_to_regno_p, i64 3571708}
!69 = !{ptr @subreg_nregs, ptr @subreg_get_info, i64 196}
!70 = !{ptr @note_uses, ptr @note_uses, i64 154771}
!71 = !{ptr @alloc_reg_note, ptr @alloc_INSN_LIST, i64 4}
!72 = !{ptr @alloc_reg_note, ptr @alloc_EXPR_LIST, i64 97566}
!73 = !{ptr @add_reg_note, ptr @alloc_INSN_LIST, i64 42}
!74 = !{ptr @add_reg_note, ptr @alloc_EXPR_LIST, i64 1016724}
!75 = !{ptr @remove_note, ptr @df_notes_rescan, i64 6513}
!76 = !{ptr @volatile_insn_p, ptr @volatile_insn_p, i64 115787}
!77 = !{ptr @volatile_refs_p, ptr @volatile_refs_p, i64 18171753}
!78 = !{ptr @may_trap_p_1, ptr @gen_rtx_CONST_INT, i64 1411586}
!79 = !{ptr @may_trap_p_1, ptr @rtx_addr_can_trap_p_1, i64 1344057}
!80 = !{ptr @may_trap_p_1, ptr @may_trap_p_1, i64 16292019}
!81 = !{ptr @may_trap_p, ptr @may_trap_p_1, i64 7136039}
!82 = !{ptr @replace_rtx, ptr @replace_rtx, i64 14446}
!83 = !{ptr @for_each_rtx, ptr @for_each_rtx_1, i64 7342978}
!84 = !{ptr @tablejump_p, ptr @next_active_insn, i64 532347}
!85 = !{ptr @for_each_rtx_1, ptr @for_each_rtx_1, i64 6860580}
!86 = !{ptr @commutative_operand_precedence, ptr @avoid_constant_pool_reference, i64 26290}
!87 = !{ptr @swap_commutative_operands_p, ptr @avoid_constant_pool_reference, i64 6955342}
!88 = !{ptr @subreg_get_info, ptr @subreg_lowpart_offset, i64 4185}
!89 = !{ptr @subreg_regno_offset, ptr @subreg_get_info, i64 902}
!90 = !{ptr @simplify_subreg_regno, ptr @ix86_cannot_change_mode_class, i64 3525}
!91 = !{ptr @simplify_subreg_regno, ptr @subreg_get_info, i64 3525}
!92 = !{ptr @simplify_subreg_regno, ptr @ix86_hard_regno_mode_ok, i64 3525}
!93 = !{ptr @keep_with_call_p, ptr @single_set_2, i64 2353}
!94 = !{ptr @keep_with_call_p, ptr @ix86_function_value_regno_p, i64 133}
!95 = !{ptr @label_is_jump_target_p, ptr @next_active_insn, i64 36634}
!96 = !{ptr @rtx_cost, ptr @ix86_modes_tieable_p, i64 72156}
!97 = !{ptr @rtx_cost, ptr @rtx_cost, i64 6074262}
!98 = !{ptr @address_cost, ptr @memory_address_addr_space_p, i64 28726}
!99 = !{ptr @nonzero_bits, ptr @cached_nonzero_bits, i64 4905787}
!100 = !{ptr @cached_nonzero_bits, ptr @cached_nonzero_bits, i64 2562440}
!101 = !{ptr @cached_nonzero_bits, ptr @nonzero_bits1, i64 1196}
!102 = !{ptr @cached_nonzero_bits, ptr @floor_log2, i64 1759828}
!103 = !{ptr @num_sign_bit_copies, ptr @cached_num_sign_bit_copies, i64 2605023}
!104 = !{ptr @cached_num_sign_bit_copies, ptr @cached_num_sign_bit_copies, i64 751791}
!105 = !{ptr @cached_num_sign_bit_copies, ptr @num_sign_bit_copies1, i64 305}
!106 = !{ptr @cached_num_sign_bit_copies, ptr @floor_log2, i64 438696}
!107 = !{ptr @cached_num_sign_bit_copies, ptr @cached_nonzero_bits, i64 1749885}
!108 = !{ptr @insn_rtx_cost, ptr @rtx_cost, i64 590672}
!109 = !{ptr @canonicalize_condition, ptr @prev_nonnote_insn, i64 291497}
!110 = !{ptr @canonicalize_condition, ptr @note_stores, i64 281587}
!111 = !{ptr @canonicalize_condition, ptr @rtx_equal_p, i64 251791}
!112 = !{ptr @canonicalize_condition, ptr @find_reg_fusage, i64 742}
!113 = !{ptr @canonicalize_condition, ptr @modified_in_p, i64 226591}
!114 = !{ptr @canonicalize_condition, ptr @modified_between_p, i64 226437}
!115 = !{ptr @canonicalize_condition, ptr @gen_int_mode, i64 3758}
!116 = !{ptr @canonicalize_condition, ptr @gen_rtx_fmt_ee_stat, i64 227272}
!117 = !{ptr @get_condition, ptr @any_condjump_p, i64 157737}
!118 = !{ptr @get_condition, ptr @pc_set, i64 157689}
!119 = !{ptr @get_condition, ptr @canonicalize_condition, i64 157689}
!120 = !{ptr @init_rtlanal, ptr @strpbrk, i64 139}
!121 = !{ptr @nonzero_bits1, ptr @cached_nonzero_bits, i64 310}
!122 = !{ptr @nonzero_bits1, ptr @floor_log2, i64 212}
!123 = !{ptr @num_sign_bit_copies1, ptr @cached_num_sign_bit_copies, i64 49}
!124 = !{ptr @num_sign_bit_copies1, ptr @floor_log2, i64 28}
!125 = !{ptr @num_sign_bit_copies1, ptr @cached_nonzero_bits, i64 112}
!126 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!127 = !{!"function_entry_count", i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"any pointer", !130, i64 0}
!130 = !{!"omnipotent char", !131, i64 0}
!131 = !{!"Simple C/C++ TBAA"}
!132 = !{!133, !129, i64 8}
!133 = !{!"_IO_FILE", !134, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !129, i64 56, !129, i64 64, !129, i64 72, !129, i64 80, !129, i64 88, !129, i64 96, !129, i64 104, !134, i64 112, !134, i64 116, !135, i64 120, !136, i64 128, !130, i64 130, !130, i64 131, !129, i64 136, !135, i64 144, !129, i64 152, !129, i64 160, !129, i64 168, !129, i64 176, !135, i64 184, !134, i64 192, !130, i64 196}
!134 = !{!"int", !130, i64 0}
!135 = !{!"long", !130, i64 0}
!136 = !{!"short", !130, i64 0}
!137 = !{!133, !129, i64 16}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{!130, !130, i64 0}
!140 = !{!133, !129, i64 40}
!141 = !{!133, !129, i64 48}
!142 = !{!133, !134, i64 0}
!143 = !{!134, !134, i64 0}
!144 = distinct !{!144, !145, !146}
!145 = !{!"llvm.loop.mustprogress"}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = !{!148, !134, i64 0}
!148 = !{!"rtvec_def", !134, i64 0, !130, i64 8}
!149 = distinct !{!149, !145, !146}
!150 = distinct !{!150, !145, !146}
!151 = !{!"function_entry_count", i64 1822115}
!152 = !{!"branch_weights", i32 0, i32 1822115}
!153 = !{!"branch_weights", i32 358475, i32 279684, i32 21700, i32 273334, i32 0, i32 0, i32 0, i32 6980, i32 174, i32 881768, i32 0, i32 0}
!154 = !{!"branch_weights", i32 279510, i32 174}
!155 = !{!"branch_weights", i32 0, i32 881768}
!156 = !{!"branch_weights", i32 0, i32 1}
!157 = !{!"branch_weights", i32 72149, i32 563201, i32 0}
!158 = !{!"branch_weights", i32 204726, i32 358475}
!159 = distinct !{!159, !145, !146}
!160 = !{!"branch_weights", i32 635350, i32 0}
!161 = distinct !{!161, !145, !146}
!162 = !{!"function_entry_count", i64 343099}
!163 = !{!"function_entry_count", i64 1967637}
!164 = !{!"rtlanal.c;rtx_addr_can_trap_p_1"}
!165 = !{!"branch_weights", i32 49213, i32 1005341, i32 0, i32 632522, i32 91204, i32 188817, i32 0, i32 0, i32 540, i32 0, i32 0, i32 0, i32 0}
!166 = !{!"branch_weights", i32 1005341, i32 0}
!167 = !{!"branch_weights", i32 0, i32 1005341}
!168 = !{!"branch_weights", i32 192363, i32 812978}
!169 = !{!"branch_weights", i32 0, i32 812978}
!170 = !{!"branch_weights", i32 812978, i32 0}
!171 = !{!"branch_weights", i32 703406, i32 109572}
!172 = !{!"branch_weights", i32 0, i32 109572}
!173 = !{!"branch_weights", i32 0, i32 703406}
!174 = !{!"branch_weights", i32 0, i32 632522}
!175 = !{!"branch_weights", i32 729, i32 631793}
!176 = !{!"branch_weights", i32 528430, i32 104092}
!177 = !{!"branch_weights", i32 0, i32 104092}
!178 = !{!"branch_weights", i32 0, i32 188817}
!179 = !{!"branch_weights", i32 188737, i32 80}
!180 = !{!"branch_weights", i32 175096, i32 13641}
!181 = !{!"function_entry_count", i64 2157261}
!182 = !{!"branch_weights", i32 1062450, i32 0, i32 0, i32 335731, i32 0, i32 759080, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!183 = !{!"branch_weights", i32 0, i32 335731}
!184 = !{!"branch_weights", i32 759080, i32 0}
!185 = distinct !{!185, !145, !146}
!186 = distinct !{!186, !145, !146}
!187 = !{!"function_entry_count", i64 7788}
!188 = !{!"branch_weights", i32 4238, i32 3550}
!189 = !{!"branch_weights", i32 27647400, i32 0, i32 33005544}
!190 = !{!"branch_weights", i32 4238, i32 0}
!191 = !{!"function_entry_count", i64 26590}
!192 = !{!"branch_weights", i32 26590, i32 0}
!193 = !{!"branch_weights", i32 0, i32 53180, i32 0}
!194 = !{!195, !135, i64 16}
!195 = !{!"object_block", !129, i64 0, !134, i64 8, !135, i64 16, !129, i64 24, !129, i64 32}
!196 = !{!"function_entry_count", i64 21634}
!197 = !{!"branch_weights", i32 7374, i32 14260}
!198 = !{!"branch_weights", i32 7470, i32 0, i32 6778, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 0}
!199 = !{!"branch_weights", i32 0, i32 12}
!200 = !{!"branch_weights", i32 1, i32 7481}
!201 = !{!"branch_weights", i32 12, i32 14446, i32 0}
!202 = distinct !{!202, !145, !146}
!203 = !{!"branch_weights", i32 7481, i32 6977}
!204 = distinct !{!204, !145, !146}
!205 = !{!"function_entry_count", i64 4982860}
!206 = !{!"branch_weights", i32 7, i32 4982853}
!207 = !{!"branch_weights", i32 640789, i32 4342064}
!208 = !{!"branch_weights", i32 406322, i32 3935742}
!209 = !{!"branch_weights", i32 2120468, i32 451823, i32 0, i32 0, i32 614997, i32 748454, i32 0, i32 0, i32 0}
!210 = !{!"branch_weights", i32 441730, i32 10093}
!211 = !{!"branch_weights", i32 73, i32 2120395}
!212 = !{!"branch_weights", i32 36, i32 37}
!213 = !{!"branch_weights", i32 1, i32 276406}
!214 = !{!"branch_weights", i32 371735, i32 30746, i32 3319920}
!215 = !{!"branch_weights", i32 0, i32 59913}
!216 = !{!"branch_weights", i32 29167, i32 30746}
!217 = distinct !{!217, !145, !146}
!218 = !{!"branch_weights", i32 1506642, i32 1813278}
!219 = !{!"branch_weights", i32 3445995, i32 276406}
!220 = distinct !{!220, !145, !146}
!221 = distinct !{!221, !145, !146}
!222 = !{!"function_entry_count", i64 23226}
!223 = !{!"branch_weights", i32 0, i32 23226}
!224 = !{!"branch_weights", i32 1, i32 23201}
!225 = !{!"branch_weights", i32 23677, i32 5501}
!226 = !{!"branch_weights", i32 5477, i32 24}
!227 = !{!"branch_weights", i32 0, i32 5477}
!228 = !{i32 0, i32 2}
!229 = !{!"branch_weights", i32 23201, i32 5977}
!230 = distinct !{!230, !145, !146}
!231 = !{!"function_entry_count", i64 2973382}
!232 = !{!"branch_weights", i32 236471, i32 2736911}
!233 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 2726242, i32 0, i32 0, i32 10669, i32 0, i32 0}
!234 = !{!235, !134, i64 0}
!235 = !{!"subreg_info", !134, i64 0, !134, i64 4, !130, i64 8}
!236 = !{!235, !134, i64 4}
!237 = !{!"branch_weights", i32 1299158, i32 1427084}
!238 = distinct !{!238, !145, !146}
!239 = distinct !{!239, !145, !146}
!240 = distinct !{!240, !145, !146}
!241 = !{!"function_entry_count", i64 32011}
!242 = !{!"branch_weights", i32 32011, i32 0}
!243 = !{!"branch_weights", i32 0, i32 32011}
!244 = distinct !{!244, !145, !146}
!245 = distinct !{!245, !145, !146}
!246 = !{!"function_entry_count", i64 1066021}
!247 = !{!"branch_weights", i32 0, i32 802709, i32 0, i32 0, i32 115, i32 0, i32 0, i32 0, i32 0, i32 0, i32 132580, i32 130617, i32 0}
!248 = !{!"branch_weights", i32 487778, i32 314931}
!249 = !{!"branch_weights", i32 0, i32 0, i32 28731, i32 459013, i32 34}
!250 = !{!"branch_weights", i32 34, i32 0}
!251 = distinct !{!251, !145, !146}
!252 = distinct !{!252, !145, !146}
!253 = !{!"branch_weights", i32 263928, i32 85970}
!254 = !{!"branch_weights", i32 217318, i32 46610}
!255 = distinct !{!255, !145, !146}
!256 = !{!"branch_weights", i32 0, i32 130617}
!257 = !{!"function_entry_count", i64 25}
!258 = !{!"branch_weights", i32 0, i32 25}
!259 = !{!"branch_weights", i32 1, i32 199}
!260 = !{!"branch_weights", i32 36, i32 0}
!261 = !{!"branch_weights", i32 90049, i32 564438}
!262 = !{!"branch_weights", i32 0, i32 -1491291681, i32 0}
!263 = !{!"branch_weights", i32 58914, i32 31135}
!264 = !{!135, !135, i64 0}
!265 = !{!"branch_weights", i32 0, i32 58914}
!266 = distinct !{!266, !145, !146}
!267 = !{!"branch_weights", i32 0, i32 31135}
!268 = !{!"branch_weights", i32 31135, i32 0}
!269 = !{!270, !129, i64 0}
!270 = !{!"set_of_data", !129, i64 0, !129, i64 8}
!271 = !{!270, !129, i64 8}
!272 = !{!"branch_weights", i32 572064, i32 23509}
!273 = !{!"branch_weights", i32 199, i32 89}
!274 = distinct !{!274, !145, !146}
!275 = !{!"function_entry_count", i64 234616}
!276 = !{!"function_entry_count", i64 1248933}
!277 = !{!"branch_weights", i32 0, i32 1248933}
!278 = !{!"branch_weights", i32 382682, i32 382696, i32 0, i32 0, i32 0, i32 6417, i32 95325, i32 0, i32 0, i32 0, i32 102143, i32 279670}
!279 = !{!"branch_weights", i32 175876, i32 103762}
!280 = !{!"branch_weights", i32 102143, i32 0}
!281 = !{!"branch_weights", i32 102143, i32 44493}
!282 = !{!"branch_weights", i32 44493, i32 0}
!283 = distinct !{!283, !145, !146}
!284 = !{!"branch_weights", i32 103762, i32 0}
!285 = !{!"branch_weights", i32 103730, i32 32}
!286 = !{!"branch_weights", i32 1, i32 382649}
!287 = !{!"branch_weights", i32 772223, i32 0}
!288 = !{!"branch_weights", i32 772191, i32 32}
!289 = !{!"branch_weights", i32 0, i32 772191}
!290 = distinct !{!290, !145, !146}
!291 = !{!"branch_weights", i32 389574, i32 382649}
!292 = distinct !{!292, !145, !146}
!293 = !{!"function_entry_count", i64 1461065}
!294 = !{!"branch_weights", i32 440904, i32 440752, i32 0, i32 0, i32 0, i32 5734, i32 133528, i32 0, i32 0, i32 0, i32 139674, i32 300473}
!295 = !{!"branch_weights", i32 139668, i32 6}
!296 = !{!"branch_weights", i32 139668, i32 0}
!297 = !{!"branch_weights", i32 1, i32 440206}
!298 = !{!"branch_weights", i32 888667, i32 0}
!299 = !{!"branch_weights", i32 887970, i32 697}
!300 = !{!"branch_weights", i32 0, i32 887970}
!301 = distinct !{!301, !145, !146}
!302 = !{!"branch_weights", i32 448461, i32 440206}
!303 = distinct !{!303, !145, !146}
!304 = !{!"function_entry_count", i64 27664173}
!305 = !{!"branch_weights", i32 0, i32 27664173}
!306 = !{!"branch_weights", i32 90683, i32 25971900, i32 801780, i32 799810}
!307 = !{!"branch_weights", i32 0, i32 27011041}
!308 = !{!"branch_weights", i32 26773680, i32 0, i32 237361, i32 0}
!309 = distinct !{!309, !145, !146}
!310 = distinct !{!310, !145, !146}
!311 = !{!"VP", i32 0, i64 26773680, i64 5941742940479547217, i64 11275718, i64 841486369778628284, i64 3518999, i64 -2550683578692389142, i64 3287352}
!312 = !{!"branch_weights", i32 799809, i32 1}
!313 = !{!"branch_weights", i32 800553, i32 799809}
!314 = distinct !{!314, !145, !146}
!315 = !{!"function_entry_count", i64 892163}
!316 = !{!"rtlanal.c;set_of_1"}
!317 = !{!"branch_weights", i32 619208, i32 272955}
!318 = !{!"branch_weights", i32 108253, i32 510955}
!319 = !{!"branch_weights", i32 502803, i32 8152}
!320 = !{!"function_entry_count", i64 964682}
!321 = !{!"branch_weights", i32 875534, i32 89148}
!322 = !{!"branch_weights", i32 868095, i32 1}
!323 = !{!"branch_weights", i32 883236, i32 868095}
!324 = distinct !{!324, !145, !146}
!325 = !{!"branch_weights", i32 0, i32 1152, i32 867207, i32 882972}
!326 = !{!"branch_weights", i32 7438, i32 875534}
!327 = !{!"branch_weights", i32 0, i32 47602974}
!328 = !{!"branch_weights", i32 47375195, i32 227779}
!329 = !{!"branch_weights", i32 45700941, i32 1674254}
!330 = !{!"branch_weights", i32 1, i32 43701194}
!331 = !{!"branch_weights", i32 1999746, i32 48914300}
!332 = !{!"branch_weights", i32 43701194, i32 7212852}
!333 = distinct !{!333, !145, !146}
!334 = !{!"branch_weights", i32 1, i32 1353448}
!335 = !{!"branch_weights", i32 473630, i32 1357250}
!336 = !{!"branch_weights", i32 320805, i32 152825}
!337 = !{!"branch_weights", i32 1353448, i32 477432}
!338 = distinct !{!338, !145, !146}
!339 = !{!"branch_weights", i32 875534, i32 7438}
!340 = !{!"branch_weights", i32 1743893, i32 7438}
!341 = !{!"function_entry_count", i64 41324190}
!342 = !{!"function_entry_count", i64 31063580}
!343 = !{!"branch_weights", i32 9629519, i32 3677987, i32 470172, i32 5630350, i32 64998, i32 0, i32 0, i32 0, i32 0, i32 3521975, i32 7073313, i32 0, i32 0, i32 0, i32 0, i32 27068, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198755, i32 0, i32 769443, i32 0, i32 0}
!344 = !{!"branch_weights", i32 769443, i32 0}
!345 = !{!"branch_weights", i32 10333762, i32 1}
!346 = !{!"branch_weights", i32 835485, i32 23159814, i32 27068}
!347 = !{!"branch_weights", i32 27067, i32 1}
!348 = !{!"branch_weights", i32 23094615, i32 65199}
!349 = !{!"branch_weights", i32 27067, i32 27069}
!350 = distinct !{!350, !145, !146}
!351 = !{!"branch_weights", i32 54136, i32 0}
!352 = !{!"branch_weights", i32 13688605, i32 10333762}
!353 = distinct !{!353, !145, !146}
!354 = !{!"function_entry_count", i64 487946}
!355 = !{!"branch_weights", i32 573094, i32 0}
!356 = !{!"branch_weights", i32 122251, i32 450843}
!357 = !{!"branch_weights", i32 122096, i32 1}
!358 = !{!"branch_weights", i32 122405, i32 122097}
!359 = !{!"branch_weights", i32 122251, i32 154}
!360 = !{!"branch_weights", i32 122096, i32 122406}
!361 = distinct !{!361, !145, !146}
!362 = !{!"function_entry_count", i64 6562545}
!363 = !{!"branch_weights", i32 3345114, i32 9380308}
!364 = !{!"branch_weights", i32 0, i32 12725422}
!365 = !{!"branch_weights", i32 1727353, i32 10998069}
!366 = !{!"branch_weights", i32 13996, i32 1713357}
!367 = !{!"branch_weights", i32 13996, i32 0}
!368 = !{!"branch_weights", i32 12629642, i32 0, i32 81784}
!369 = !{!"branch_weights", i32 0, i32 12711426}
!370 = !{!"branch_weights", i32 2416149, i32 10295277}
!371 = !{!"branch_weights", i32 967072, i32 1449077}
!372 = !{!"function_entry_count", i64 6215702}
!373 = !{!"branch_weights", i32 0, i32 6215702}
!374 = !{!"branch_weights", i32 5987534, i32 198081}
!375 = !{!"branch_weights", i32 0, i32 5987534}
!376 = !{!"branch_weights", i32 175343, i32 6010272}
!377 = !{!"branch_weights", i32 1, i32 0}
!378 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 175343}
!379 = !{!"branch_weights", i32 0, i32 175343}
!380 = !{!"branch_weights", i32 175343, i32 0, i32 0}
!381 = !{!"branch_weights", i32 175343, i32 0}
!382 = distinct !{!382, !145, !146}
!383 = distinct !{!383, !145, !146}
!384 = !{!"function_entry_count", i64 5747917}
!385 = !{!"branch_weights", i32 6045028, i32 2530990, i32 220580, i32 12368, i32 127370}
!386 = !{!"branch_weights", i32 0, i32 2530990}
!387 = !{!"branch_weights", i32 1195591, i32 1335399}
!388 = !{!"branch_weights", i32 777416, i32 418175}
!389 = !{!"branch_weights", i32 220580, i32 0}
!390 = !{!"branch_weights", i32 0, i32 220580}
!391 = !{!"branch_weights", i32 0, i32 139738}
!392 = !{!"branch_weights", i32 68, i32 139670}
!393 = !{!"branch_weights", i32 0, i32 68}
!394 = !{!"branch_weights", i32 68, i32 0}
!395 = !{!"branch_weights", i32 116013, i32 23725}
!396 = !{!"branch_weights", i32 23725, i32 0}
!397 = !{!"branch_weights", i32 393828040, i32 -239188071}
!398 = !{!"branch_weights", i32 0, i32 8936336}
!399 = !{!"branch_weights", i32 1, i32 3156438}
!400 = !{!"branch_weights", i32 -1923081854, i32 -1200054498, i32 6830595}
!401 = !{!"branch_weights", i32 0, i32 5743440}
!402 = !{!"branch_weights", i32 3061049, i32 2682391}
!403 = !{!"branch_weights", i32 2646704, i32 35687}
!404 = !{!"branch_weights", i32 12676, i32 4401669}
!405 = !{!"branch_weights", i32 1, i32 242}
!406 = !{!"branch_weights", i32 0, i32 25044}
!407 = !{!"branch_weights", i32 12611, i32 12433}
!408 = !{!"branch_weights", i32 242, i32 24802}
!409 = distinct !{!409, !145, !146}
!410 = !{!"branch_weights", i32 7001347, i32 3156438}
!411 = distinct !{!411, !145, !146}
!412 = !{!"function_entry_count", i64 196}
!413 = !{!"function_entry_count", i64 2248689}
!414 = !{!"branch_weights", i32 11804, i32 0, i32 77338, i32 0, i32 488, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76792, i32 2082267}
!415 = !{!"branch_weights", i32 77337, i32 1}
!416 = !{!"branch_weights", i32 77434, i32 77337}
!417 = distinct !{!417, !145, !146}
!418 = distinct !{!418, !145, !146}
!419 = !{!"VP", i32 0, i64 488, i64 -4825428009789798092, i64 141, i64 -8410490828643924128, i64 141, i64 4981610444697340008, i64 122}
!420 = distinct !{!420, !145, !146}
!421 = distinct !{!421, !145, !146}
!422 = !{!"branch_weights", i32 95, i32 76697}
!423 = !{!"VP", i32 0, i64 95, i64 4981610444697340008, i64 95}
!424 = !{!"VP", i32 0, i64 2082267, i64 4981610444697340008, i64 1228283, i64 -9049201550687577013, i64 721322, i64 -4825428009789798092, i64 65745}
!425 = !{!"branch_weights", i32 0, i32 2082267}
!426 = !{!"branch_weights", i32 1810707, i32 0, i32 12954, i32 271560}
!427 = distinct !{!427, !145, !146}
!428 = !{!"VP", i32 0, i64 271560, i64 4981610444697340008, i64 163902, i64 -9049201550687577013, i64 81708, i64 -4825428009789798092, i64 12975}
!429 = !{!"VP", i32 0, i64 11804, i64 4981610444697340008, i64 4438, i64 -4825428009789798092, i64 2583, i64 -8410490828643924128, i64 2583}
!430 = !{!"function_entry_count", i64 1147818}
!431 = !{!"branch_weights", i32 0, i32 0, i32 1147818}
!432 = !{!"branch_weights", i32 573065, i32 574753}
!433 = !{!"branch_weights", i32 1028240, i32 1}
!434 = !{!"branch_weights", i32 1028240, i32 119578}
!435 = distinct !{!435, !145, !146}
!436 = !{!"branch_weights", i32 1305216, i32 48377}
!437 = !{!"branch_weights", i32 1, i32 641597}
!438 = !{!"branch_weights", i32 1031680, i32 262182}
!439 = !{!"branch_weights", i32 1031680, i32 0}
!440 = !{!"branch_weights", i32 254208, i32 777472}
!441 = !{!"branch_weights", i32 500974, i32 276498}
!442 = !{!"branch_weights", i32 663618, i32 113854}
!443 = !{!"branch_weights", i32 641597, i32 652265}
!444 = distinct !{!444, !145, !146}
!445 = !{!"branch_weights", i32 0, i32 624980}
!446 = !{!"branch_weights", i32 1, i32 488818, i32 136161}
!447 = !{!"branch_weights", i32 -2037096068, i32 0, i32 0}
!448 = !{i8 0, i8 2}
!449 = distinct !{!449, !145, !146}
!450 = !{!"branch_weights", i32 726290, i32 33983}
!451 = !{!"branch_weights", i32 457525, i32 268765}
!452 = !{!"branch_weights", i32 700091, i32 26199}
!453 = !{!"branch_weights", i32 1, i32 36640}
!454 = !{!"branch_weights", i32 0, i32 271478}
!455 = !{!"branch_weights", i32 23, i32 135779, i32 135676}
!456 = !{!"branch_weights", i32 171935, i32 99520}
!457 = !{!"branch_weights", i32 36640, i32 234838}
!458 = distinct !{!458, !145, !146}
!459 = !{!"branch_weights", i32 119577, i32 1028241}
!460 = !{!"function_entry_count", i64 205775}
!461 = distinct !{!461, !145, !146}
!462 = !{!"function_entry_count", i64 7075389}
!463 = !{!"branch_weights", i32 7071816, i32 3573}
!464 = !{!"branch_weights", i32 2702807, i32 4233418}
!465 = !{!"branch_weights", i32 135591, i32 4097827}
!466 = !{!"branch_weights", i32 85148, i32 50443}
!467 = !{!"branch_weights", i32 4233418, i32 0}
!468 = distinct !{!468, !145, !146}
!469 = !{!"function_entry_count", i64 97570}
!470 = !{!"branch_weights", i32 46, i32 1114290}
!471 = !{!"function_entry_count", i64 1016766}
!472 = !{!"function_entry_count", i64 7889}
!473 = !{!"branch_weights", i32 608, i32 7281}
!474 = !{!"branch_weights", i32 7030, i32 251}
!475 = !{!"branch_weights", i32 0, i32 309}
!476 = !{!"branch_weights", i32 251, i32 58}
!477 = distinct !{!477, !145, !146}
!478 = !{!"branch_weights", i32 6513, i32 768}
!479 = distinct !{!479, !145, !146}
!480 = !{!"function_entry_count", i64 81085}
!481 = distinct !{!481, !145, !146}
!482 = distinct !{!482, !145, !146}
!483 = !{!"function_entry_count", i64 166948}
!484 = !{!"branch_weights", i32 57210, i32 1379, i32 0, i32 48540, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2758, i32 55072, i32 0, i32 652, i32 0, i32 0, i32 0, i32 1337, i32 0, i32 0, i32 0}
!485 = !{!"branch_weights", i32 57209, i32 1}
!486 = !{!"branch_weights", i32 12, i32 114483, i32 652}
!487 = !{!"branch_weights", i32 651, i32 1}
!488 = !{!"branch_weights", i32 114483, i32 0}
!489 = !{!"branch_weights", i32 651, i32 653}
!490 = distinct !{!490, !145, !146}
!491 = !{!"branch_weights", i32 1304, i32 0}
!492 = !{!"branch_weights", i32 57938, i32 57209}
!493 = distinct !{!493, !145, !146}
!494 = !{!"function_entry_count", i64 23478445}
!495 = !{!"branch_weights", i32 8053374, i32 303707, i32 837909, i32 3640280, i32 138480, i32 0, i32 0, i32 0, i32 0, i32 599889, i32 7813493, i32 0, i32 210264, i32 0, i32 0, i32 0, i32 1881049, i32 0, i32 0}
!496 = !{!"branch_weights", i32 1881049, i32 0}
!497 = !{!"branch_weights", i32 9934422, i32 1}
!498 = !{!"branch_weights", i32 1976304, i32 18110296, i32 30681}
!499 = !{!"branch_weights", i32 30680, i32 1}
!500 = !{!"branch_weights", i32 18110296, i32 0}
!501 = !{!"branch_weights", i32 30680, i32 30777}
!502 = distinct !{!502, !145, !146}
!503 = !{!"branch_weights", i32 61457, i32 0}
!504 = !{!"branch_weights", i32 10182859, i32 9934422}
!505 = distinct !{!505, !145, !146}
!506 = !{!"function_entry_count", i64 23424186}
!507 = !{!"branch_weights", i32 0, i32 23424186}
!508 = !{!"branch_weights", i32 5411407, i32 4802286, i32 0, i32 0, i32 0, i32 740, i32 1425634, i32 0, i32 1988951, i32 0, i32 5516805, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1900344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1056, i32 1245, i32 704, i32 1073, i32 0, i32 1153136, i32 666608, i32 553917, i32 0, i32 280, i32 0, i32 0}
!509 = !{!510, !129, i64 1272}
!510 = !{!"gcc_target", !511, i64 0, !513, i64 368, !514, i64 664, !134, i64 744, !129, i64 752, !129, i64 760, !129, i64 768, !129, i64 776, !129, i64 784, !129, i64 792, !129, i64 800, !129, i64 808, !129, i64 816, !129, i64 824, !129, i64 832, !129, i64 840, !129, i64 848, !129, i64 856, !129, i64 864, !129, i64 872, !129, i64 880, !129, i64 888, !129, i64 896, !129, i64 904, !129, i64 912, !129, i64 920, !129, i64 928, !129, i64 936, !129, i64 944, !129, i64 952, !129, i64 960, !129, i64 968, !129, i64 976, !129, i64 984, !129, i64 992, !129, i64 1000, !129, i64 1008, !129, i64 1016, !129, i64 1024, !129, i64 1032, !129, i64 1040, !129, i64 1048, !129, i64 1056, !135, i64 1064, !135, i64 1072, !129, i64 1080, !129, i64 1088, !129, i64 1096, !129, i64 1104, !129, i64 1112, !129, i64 1120, !129, i64 1128, !129, i64 1136, !129, i64 1144, !129, i64 1152, !129, i64 1160, !129, i64 1168, !515, i64 1176, !129, i64 1232, !129, i64 1240, !129, i64 1248, !129, i64 1256, !129, i64 1264, !129, i64 1272, !129, i64 1280, !129, i64 1288, !129, i64 1296, !129, i64 1304, !129, i64 1312, !129, i64 1320, !129, i64 1328, !129, i64 1336, !129, i64 1344, !129, i64 1352, !129, i64 1360, !129, i64 1368, !129, i64 1376, !129, i64 1384, !129, i64 1392, !129, i64 1400, !129, i64 1408, !129, i64 1416, !129, i64 1424, !129, i64 1432, !129, i64 1440, !129, i64 1448, !129, i64 1456, !135, i64 1464, !516, i64 1472, !129, i64 1664, !129, i64 1672, !129, i64 1680, !129, i64 1688, !129, i64 1696, !129, i64 1704, !129, i64 1712, !129, i64 1720, !129, i64 1728, !129, i64 1736, !129, i64 1744, !129, i64 1752, !129, i64 1760, !129, i64 1768, !129, i64 1776, !517, i64 1784, !518, i64 1792, !519, i64 1896, !520, i64 1968, !129, i64 2016, !130, i64 2024, !130, i64 2025, !130, i64 2026, !130, i64 2027, !130, i64 2028, !130, i64 2029, !130, i64 2030, !130, i64 2031, !130, i64 2032, !130, i64 2033, !130, i64 2034, !130, i64 2035}
!511 = !{!"asm_out", !129, i64 0, !129, i64 8, !129, i64 16, !512, i64 24, !512, i64 56, !129, i64 88, !129, i64 96, !129, i64 104, !129, i64 112, !129, i64 120, !129, i64 128, !129, i64 136, !129, i64 144, !129, i64 152, !129, i64 160, !129, i64 168, !129, i64 176, !129, i64 184, !129, i64 192, !129, i64 200, !129, i64 208, !129, i64 216, !129, i64 224, !129, i64 232, !129, i64 240, !129, i64 248, !129, i64 256, !129, i64 264, !129, i64 272, !129, i64 280, !129, i64 288, !129, i64 296, !129, i64 304, !129, i64 312, !129, i64 320, !129, i64 328, !129, i64 336, !129, i64 344, !129, i64 352, !129, i64 360}
!512 = !{!"asm_int_op", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24}
!513 = !{!"sched", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !129, i64 56, !129, i64 64, !129, i64 72, !129, i64 80, !129, i64 88, !129, i64 96, !129, i64 104, !129, i64 112, !129, i64 120, !129, i64 128, !129, i64 136, !129, i64 144, !129, i64 152, !129, i64 160, !129, i64 168, !129, i64 176, !129, i64 184, !129, i64 192, !129, i64 200, !129, i64 208, !129, i64 216, !129, i64 224, !129, i64 232, !129, i64 240, !129, i64 248, !129, i64 256, !129, i64 264, !129, i64 272, !129, i64 280, !129, i64 288}
!514 = !{!"vectorize", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !129, i64 56, !129, i64 64, !129, i64 72}
!515 = !{!"addr_space", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48}
!516 = !{!"calls", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !129, i64 56, !129, i64 64, !129, i64 72, !129, i64 80, !129, i64 88, !129, i64 96, !129, i64 104, !129, i64 112, !129, i64 120, !129, i64 128, !129, i64 136, !129, i64 144, !129, i64 152, !129, i64 160, !129, i64 168, !129, i64 176, !129, i64 184}
!517 = !{!"c", !129, i64 0}
!518 = !{!"cxx", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !129, i64 56, !129, i64 64, !129, i64 72, !129, i64 80, !129, i64 88, !129, i64 96}
!519 = !{!"emutls", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !129, i64 56, !130, i64 64, !130, i64 65}
!520 = !{!"target_option_hooks", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40}
!521 = !{!"branch_weights", i32 1900344, i32 0}
!522 = !{!"branch_weights", i32 -1800660016, i32 1032360022}
!523 = !{!"branch_weights", i32 706547, i32 637510}
!524 = !{!525, !129, i64 16}
!525 = !{!"mem_attrs", !129, i64 0, !129, i64 8, !129, i64 16, !134, i64 24, !134, i64 28, !130, i64 32}
!526 = !{!"branch_weights", i32 0, i32 637510}
!527 = !{!"branch_weights", i32 754, i32 705793}
!528 = !{!"branch_weights", i32 0, i32 705793}
!529 = !{!"branch_weights", i32 705793, i32 637510}
!530 = !{!531, !130, i64 46}
!531 = !{!"real_format", !129, i64 0, !129, i64 8, !134, i64 16, !134, i64 20, !134, i64 24, !134, i64 28, !134, i64 32, !134, i64 36, !134, i64 40, !130, i64 44, !130, i64 45, !130, i64 46, !130, i64 47, !130, i64 48, !130, i64 49, !130, i64 50, !130, i64 51}
!532 = !{!"branch_weights", i32 0, i32 1157214}
!533 = !{!"branch_weights", i32 1157214, i32 0, i32 0, i32 0, i32 0}
!534 = !{!"branch_weights", i32 1220525, i32 0}
!535 = !{!"branch_weights", i32 0, i32 5411407}
!536 = !{!"branch_weights", i32 1, i32 7786226}
!537 = !{!"branch_weights", i32 0, i32 15987022, i32 150239}
!538 = !{!"branch_weights", i32 149591, i32 1}
!539 = !{!"branch_weights", i32 15984470, i32 2552}
!540 = !{!"branch_weights", i32 151534, i32 149591}
!541 = distinct !{!541, !145, !146}
!542 = !{!"branch_weights", i32 300478, i32 647}
!543 = !{!"branch_weights", i32 8351035, i32 7786226}
!544 = distinct !{!544, !145, !146}
!545 = !{!"function_entry_count", i64 7136039}
!546 = distinct !{!546, !145, !146}
!547 = distinct !{!547, !145, !146}
!548 = !{!"branch_weights", i32 0, i32 21634}
!549 = !{!"branch_weights", i32 14260, i32 0, i32 0}
!550 = !{!"branch_weights", i32 1, i32 14259}
!551 = !{!"branch_weights", i32 6790, i32 14446, i32 0}
!552 = distinct !{!552, !145, !146}
!553 = !{!"branch_weights", i32 6977, i32 14259}
!554 = distinct !{!554, !145, !146}
!555 = !{!556, !129, i64 0}
!556 = !{!"replace_label_data", !129, i64 0, !129, i64 8, !130, i64 16}
!557 = !{!556, !129, i64 8}
!558 = !{!556, !130, i64 16}
!559 = !{i32 0, i32 -1}
!560 = !{!"VP", i32 0, i64 0, i64 -9037552785676781166, i64 0, i64 -766996629127800295, i64 0, i64 -2885040902556886922, i64 0}
!561 = !{!"branch_weights", i32 10897100, i32 981048}
!562 = !{!"branch_weights", i32 633305, i32 10263795}
!563 = !{!"branch_weights", i32 2920817, i32 7342978}
!564 = !{!"function_entry_count", i64 11878148}
!565 = !{!"VP", i32 0, i64 11878148, i64 -9037552785676781166, i64 4062403, i64 -766996629127800295, i64 1396840, i64 -2885040902556886922, i64 1055959}
!566 = !{!"branch_weights", i32 664364, i32 316684, i32 10897100}
!567 = !{!"function_entry_count", i64 700513}
!568 = !{!"branch_weights", i32 599655, i32 149064}
!569 = !{!"branch_weights", i32 30674, i32 568981}
!570 = !{!"branch_weights", i32 763, i32 568218}
!571 = !{!"branch_weights", i32 25540, i32 542678}
!572 = !{!"branch_weights", i32 139, i32 25401}
!573 = !{!"branch_weights", i32 108, i32 31}
!574 = !{!"branch_weights", i32 0, i32 139}
!575 = !{!"function_entry_count", i64 606741}
!576 = !{!"branch_weights", i32 601442, i32 5299}
!577 = !{!"branch_weights", i32 163, i32 601279}
!578 = !{!"branch_weights", i32 163, i32 0, i32 0}
!579 = distinct !{!579, !145, !146}
!580 = distinct !{!580, !145, !146}
!581 = distinct !{!581, !145, !146}
!582 = distinct !{!582, !145, !146}
!583 = !{!"function_entry_count", i64 14203529}
!584 = !{!"rtlanal.c;for_each_rtx_1"}
!585 = !{!"branch_weights", i32 3357653, i32 13109622, i32 25697090, i32 0, i32 70057}
!586 = !{!"VP", i32 0, i64 25697090, i64 -4139078311572017909, i64 5261678, i64 -2885040902556886922, i64 4670798, i64 -9037552785676781166, i64 3919614}
!587 = !{!"branch_weights", i32 696779, i32 277257, i32 24723054}
!588 = !{!"branch_weights", i32 896691, i32 23826363}
!589 = !{!"branch_weights", i32 6720359, i32 17106004}
!590 = !{!"branch_weights", i32 6323260, i32 397099}
!591 = !{!"branch_weights", i32 0, i32 70057}
!592 = !{!"branch_weights", i32 70027, i32 1}
!593 = !{!"VP", i32 0, i64 140192, i64 -2885040902556886922, i64 58398, i64 4253874205709799998, i64 50892, i64 -4139078311572017909, i64 16842}
!594 = !{!"branch_weights", i32 0, i32 0, i32 140192}
!595 = !{!"branch_weights", i32 0, i32 140192}
!596 = !{!"branch_weights", i32 140192, i32 0}
!597 = !{!"branch_weights", i32 140163, i32 29}
!598 = !{!"branch_weights", i32 70165, i32 70027}
!599 = distinct !{!599, !145, !146}
!600 = distinct !{!600, !145, !146}
!601 = distinct !{!601, !145, !146}
!602 = distinct !{!602, !145, !146}
!603 = !{!"function_entry_count", i64 52580}
!604 = !{!"branch_weights", i32 439785, i32 36244, i32 142650, i32 5103304, i32 636471, i32 662828, i32 3082}
!605 = !{!"branch_weights", i32 142650, i32 0}
!606 = !{!"branch_weights", i32 142031, i32 619}
!607 = !{!"branch_weights", i32 78921, i32 5024383}
!608 = !{!"branch_weights", i32 1037, i32 5023346}
!609 = !{!"function_entry_count", i64 6955342}
!610 = distinct !{!610, !145, !146}
!611 = distinct !{!611, !145, !146}
!612 = !{!"function_entry_count", i64 4623}
!613 = !{!"branch_weights", i32 4623, i32 0}
!614 = !{!235, !130, i64 8}
!615 = !{!"branch_weights", i32 438, i32 4185}
!616 = !{!"branch_weights", i32 4185, i32 0}
!617 = !{!"branch_weights", i32 3883, i32 302}
!618 = !{!"branch_weights", i32 0, i32 4185}
!619 = !{!"function_entry_count", i64 902}
!620 = !{!"function_entry_count", i64 3525}
!621 = !{!"branch_weights", i32 0, i32 3525}
!622 = !{!"branch_weights", i32 3525, i32 0}
!623 = !{!"branch_weights", i32 404, i32 3121}
!624 = !{!"branch_weights", i32 3525, i32 0, i32 0, i32 0, i32 0}
!625 = !{!626, !135, i64 8}
!626 = !{!"parms_set_data", !134, i64 0, !135, i64 8}
!627 = !{!626, !134, i64 0}
!628 = distinct !{!628, !145, !146}
!629 = distinct !{!629, !145, !146}
!630 = !{!"function_entry_count", i64 153283}
!631 = !{!"branch_weights", i32 153283, i32 0}
!632 = !{!"branch_weights", i32 150930, i32 2353}
!633 = !{!"branch_weights", i32 38, i32 153245}
!634 = !{!"branch_weights", i32 4566, i32 148679}
!635 = !{!"branch_weights", i32 4566, i32 0}
!636 = !{!"branch_weights", i32 133, i32 153112}
!637 = !{!"branch_weights", i32 2, i32 131}
!638 = !{!"branch_weights", i32 91, i32 40}
!639 = !{!"branch_weights", i32 0, i32 91}
!640 = !{!"branch_weights", i32 0, i32 153245}
!641 = !{!"function_entry_count", i64 293342}
!642 = !{!"branch_weights", i32 245136, i32 48206}
!643 = !{!"branch_weights", i32 842037424, i32 -1629402441}
!644 = !{!"branch_weights", i32 48206, i32 0}
!645 = distinct !{!645, !145, !146}
!646 = !{!"function_entry_count", i64 9822764}
!647 = !{!"branch_weights", i32 0, i32 9822764}
!648 = !{!"branch_weights", i32 9821725, i32 991, i32 24, i32 12, i32 12, i32 0, i32 0}
!649 = !{!"branch_weights", i32 7625886, i32 2124722, i32 72156}
!650 = !{!"branch_weights", i32 0, i32 72156}
!651 = !{!510, !129, i64 1248}
!652 = !{!"VP", i32 0, i64 7625886, i64 550908691814378496, i64 7625886}
!653 = !{!"branch_weights", i32 3624567, i32 4001319}
!654 = !{!"branch_weights", i32 1, i32 3696722}
!655 = !{!"branch_weights", i32 896061, i32 6074262, i32 0}
!656 = distinct !{!656, !145, !146}
!657 = !{!"branch_weights", i32 3273601, i32 3696722}
!658 = distinct !{!658, !145, !146}
!659 = !{!"function_entry_count", i64 28726}
!660 = !{!"branch_weights", i32 0, i32 28726}
!661 = !{!510, !129, i64 1256}
!662 = !{!"VP", i32 0, i64 28726, i64 -8888031710920691899, i64 28726}
!663 = !{!"function_entry_count", i64 4905787}
!664 = !{!"function_entry_count", i64 9838041}
!665 = !{!"rtlanal.c;cached_nonzero_bits"}
!666 = !{!"branch_weights", i32 618, i32 9837423}
!667 = !{!"branch_weights", i32 2112949, i32 7724474}
!668 = !{!"branch_weights", i32 0, i32 2112949}
!669 = !{!"branch_weights", i32 134854, i32 1978095}
!670 = !{!"branch_weights", i32 919, i32 133935}
!671 = !{!"branch_weights", i32 277, i32 133658}
!672 = !{!"branch_weights", i32 0, i32 2111753}
!673 = !{!"branch_weights", i32 2111753, i32 1196}
!674 = !{!"branch_weights", i32 9837423, i32 0, i32 0, i32 0, i32 0}
!675 = !{!"branch_weights", i32 0, i32 9837423}
!676 = !{!"branch_weights", i32 130720, i32 9706703}
!677 = !{!"branch_weights", i32 275837200, i32 -960508683}
!678 = !{!"branch_weights", i32 751054, i32 554}
!679 = !{!"branch_weights", i32 2516893, i32 3420008, i32 1057253, i32 13801, i32 103452, i32 10512, i32 0, i32 0, i32 41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 252, i32 19760, i32 0, i32 0, i32 0, i32 1270, i32 0, i32 0, i32 8506, i32 0, i32 132785, i32 76, i32 7939, i32 0, i32 0, i32 0, i32 0, i32 439665, i32 60, i32 285, i32 0, i32 0, i32 0, i32 0, i32 171727, i32 393298, i32 235585, i32 341680, i32 211395, i32 0, i32 0, i32 0, i32 0, i32 0}
!680 = !{!"branch_weights", i32 0, i32 3420008}
!681 = !{!682, !129, i64 88}
!682 = !{!"rtl_data", !683, i64 0, !684, i64 40, !685, i64 96, !686, i64 112, !688, i64 208, !689, i64 248, !134, i64 312, !129, i64 320, !129, i64 328, !129, i64 336, !129, i64 344, !129, i64 352, !129, i64 360, !129, i64 368, !129, i64 376, !129, i64 384, !129, i64 392, !135, i64 400, !129, i64 408, !129, i64 416, !129, i64 424, !134, i64 432, !134, i64 436, !134, i64 440, !134, i64 444, !134, i64 448, !134, i64 452, !129, i64 456, !130, i64 464, !130, i64 465, !130, i64 466, !130, i64 467, !130, i64 468, !130, i64 469, !130, i64 470, !130, i64 471, !130, i64 472, !130, i64 473, !130, i64 474, !130, i64 475, !130, i64 476, !130, i64 477, !130, i64 478, !130, i64 479, !130, i64 480, !130, i64 481, !130, i64 482, !130, i64 483, !130, i64 484, !130, i64 485}
!683 = !{!"expr_status", !134, i64 0, !134, i64 4, !134, i64 8, !129, i64 16, !129, i64 24, !129, i64 32}
!684 = !{!"emit_status", !134, i64 0, !134, i64 4, !129, i64 8, !129, i64 16, !129, i64 24, !134, i64 32, !134, i64 36, !134, i64 40, !134, i64 44, !129, i64 48}
!685 = !{!"varasm_status", !129, i64 0, !134, i64 8}
!686 = !{!"incoming_args", !134, i64 0, !134, i64 4, !134, i64 8, !129, i64 16, !687, i64 24, !129, i64 88}
!687 = !{!"ix86_args", !134, i64 0, !134, i64 4, !134, i64 8, !134, i64 12, !134, i64 16, !134, i64 20, !134, i64 24, !134, i64 28, !134, i64 32, !134, i64 36, !134, i64 40, !134, i64 44, !134, i64 48, !134, i64 52, !134, i64 56, !134, i64 60}
!688 = !{!"function_subsections", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32}
!689 = !{!"rtl_eh", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !130, i64 48}
!690 = !{!691, !129, i64 16}
!691 = !{!"rtl_hooks", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32}
!692 = !{!"VP", i32 0, i64 3419592, i64 5926415344991992345, i64 2249000, i64 962436520870892787, i64 1170591}
!693 = !{!"branch_weights", i32 3419800, i32 208}
!694 = !{!"branch_weights", i32 134143, i32 0}
!695 = !{!"branch_weights", i32 1270, i32 0}
!696 = !{!"branch_weights", i32 0, i32 8506}
!697 = !{!"branch_weights", i32 639, i32 7376}
!698 = !{!"branch_weights", i32 0, i32 439665, i32 60, i32 285, i32 0, i32 0, i32 0, i32 0}
!699 = !{!"branch_weights", i32 3295, i32 436715}
!700 = !{!"branch_weights", i32 2607, i32 437403}
!701 = !{!"branch_weights", i32 171727, i32 0}
!702 = !{!"branch_weights", i32 393298, i32 0}
!703 = !{!"branch_weights", i32 262848, i32 130450}
!704 = !{!"branch_weights", i32 230975, i32 557685}
!705 = !{!"branch_weights", i32 230975, i32 0}
!706 = !{!"branch_weights", i32 0, i32 230975}
!707 = !{!"branch_weights", i32 0, i32 19466, i32 114, i32 211395}
!708 = !{!"branch_weights", i32 0, i32 114}
!709 = !{!"branch_weights", i32 11070, i32 2731}
!710 = !{!"function_entry_count", i64 2605023}
!711 = !{!"function_entry_count", i64 3624796}
!712 = !{!"rtlanal.c;cached_num_sign_bit_copies"}
!713 = !{!"branch_weights", i32 610, i32 3624186}
!714 = !{!"branch_weights", i32 797505, i32 2826681}
!715 = !{!"branch_weights", i32 0, i32 797505}
!716 = !{!"branch_weights", i32 4539, i32 792966}
!717 = !{!"branch_weights", i32 279, i32 4260}
!718 = !{!"branch_weights", i32 26, i32 4234}
!719 = !{!"branch_weights", i32 0, i32 797200}
!720 = !{!"branch_weights", i32 797200, i32 305}
!721 = !{!"branch_weights", i32 59497, i32 3564689}
!722 = !{!"branch_weights", i32 0, i32 3624186}
!723 = !{!"branch_weights", i32 2953310, i32 611379}
!724 = !{!"branch_weights", i32 0, i32 3564689}
!725 = !{!"branch_weights", i32 1021701, i32 1326439, i32 0, i32 611379, i32 64102, i32 0, i32 0, i32 0, i32 1888, i32 0, i32 0, i32 190, i32 1538, i32 31492, i32 44, i32 0, i32 0, i32 0, i32 0, i32 396783, i32 57, i32 405, i32 0, i32 0, i32 0, i32 0, i32 21497, i32 6501, i32 7743, i32 59504, i32 5925, i32 18, i32 0, i32 70, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7413, i32 0, i32 0}
!726 = !{!691, !129, i64 24}
!727 = !{!"VP", i32 0, i64 1326327, i64 6526915227828751429, i64 786826, i64 -3023504414880966372, i64 539500}
!728 = !{!"branch_weights", i32 1326335, i32 104}
!729 = !{!"branch_weights", i32 1326439, i32 0}
!730 = !{!"branch_weights", i32 1270599, i32 55840}
!731 = !{!"branch_weights", i32 611379, i32 0}
!732 = !{!"branch_weights", i32 213649, i32 397730}
!733 = !{!"branch_weights", i32 93637, i32 517742}
!734 = !{!"branch_weights", i32 0, i32 64102}
!735 = !{!"branch_weights", i32 4605, i32 59497}
!736 = !{!"branch_weights", i32 0, i32 190}
!737 = !{!"branch_weights", i32 190, i32 0}
!738 = !{!"branch_weights", i32 31492, i32 1582}
!739 = !{!"branch_weights", i32 31492, i32 0}
!740 = !{!"branch_weights", i32 29022, i32 2470}
!741 = !{!"branch_weights", i32 1538, i32 2514}
!742 = !{!"branch_weights", i32 1223, i32 2829}
!743 = !{!"branch_weights", i32 3, i32 1220}
!744 = !{!"branch_weights", i32 3, i32 0}
!745 = !{!"branch_weights", i32 396783, i32 57}
!746 = !{!"branch_weights", i32 72004, i32 324779}
!747 = !{!"branch_weights", i32 2915, i32 69089}
!748 = !{!"branch_weights", i32 2915, i32 0}
!749 = !{!"branch_weights", i32 3714, i32 390211}
!750 = !{!"branch_weights", i32 405, i32 0}
!751 = !{!"branch_weights", i32 0, i32 405}
!752 = !{!"branch_weights", i32 0, i32 21497}
!753 = !{!"branch_weights", i32 6501, i32 0}
!754 = !{!"branch_weights", i32 0, i32 2296905}
!755 = !{!"branch_weights", i32 3362, i32 2293543}
!756 = !{!"branch_weights", i32 3624186, i32 3624186}
!757 = !{!"function_entry_count", i64 590864}
!758 = !{!"branch_weights", i32 38, i32 558243, i32 32583}
!759 = !{!"branch_weights", i32 32428, i32 1}
!760 = !{!"branch_weights", i32 32429, i32 32737}
!761 = !{!"branch_weights", i32 65012, i32 154}
!762 = !{!"branch_weights", i32 32583, i32 32429}
!763 = !{!"branch_weights", i32 32428, i32 32738}
!764 = distinct !{!764, !145, !146}
!765 = !{!"branch_weights", i32 0, i32 32429}
!766 = !{!"branch_weights", i32 306082, i32 284590}
!767 = !{!"function_entry_count", i64 227493}
!768 = !{!"branch_weights", i32 227493, i32 0}
!769 = !{!"branch_weights", i32 0, i32 227493}
!770 = !{!"branch_weights", i32 157689, i32 69804}
!771 = !{!"branch_weights", i32 157946, i32 312243}
!772 = !{!"branch_weights", i32 20746, i32 0, i32 291497}
!773 = distinct !{!773, !145, !146}
!774 = !{!"branch_weights", i32 0, i32 291497}
!775 = !{!"branch_weights", i32 219588333, i32 0, i32 -1859227474}
!776 = !{!"branch_weights", i32 267391, i32 0}
!777 = !{!"branch_weights", i32 15600, i32 251791}
!778 = !{!"branch_weights", i32 251791, i32 0}
!779 = !{!"branch_weights", i32 0, i32 251791}
!780 = !{!"branch_weights", i32 227250, i32 24541}
!781 = !{!"branch_weights", i32 348, i32 11919, i32 12274}
!782 = !{!"branch_weights", i32 0, i32 11919}
!783 = !{!"branch_weights", i32 0, i32 227250}
!784 = !{!"branch_weights", i32 227250, i32 0}
!785 = !{!"branch_weights", i32 32, i32 12242}
!786 = !{!"branch_weights", i32 32, i32 0}
!787 = !{!"branch_weights", i32 227282, i32 24509}
!788 = !{!"branch_weights", i32 15600, i32 0}
!789 = !{!"branch_weights", i32 15600, i32 227282}
!790 = !{!"branch_weights", i32 691, i32 226591}
!791 = !{!"branch_weights", i32 226437, i32 154}
!792 = !{!"branch_weights", i32 226405, i32 32}
!793 = !{!"branch_weights", i32 0, i32 227096}
!794 = !{!"branch_weights", i32 227096, i32 0}
!795 = !{!"branch_weights", i32 157468, i32 69628}
!796 = !{!"branch_weights", i32 0, i32 242696, i32 0, i32 69547}
!797 = !{!"branch_weights", i32 470189, i32 0}
!798 = !{!"branch_weights", i32 221, i32 227272}
!799 = !{!"branch_weights", i32 0, i32 227272}
!800 = !{!"branch_weights", i32 227272, i32 0}
!801 = !{!"branch_weights", i32 223514, i32 208, i32 1063, i32 2487, i32 0}
!802 = !{!"branch_weights", i32 0, i32 208}
!803 = !{!"branch_weights", i32 0, i32 1063}
!804 = !{!"branch_weights", i32 2487, i32 0}
!805 = !{!"function_entry_count", i64 157737}
!806 = !{!"branch_weights", i32 157737, i32 0}
!807 = !{!"branch_weights", i32 48, i32 157689}
!808 = !{!"branch_weights", i32 0, i32 157689}
!809 = !{!691, !129, i64 32}
!810 = !{!"function_entry_count", i64 1}
!811 = !{!"branch_weights", i32 1, i32 127}
!812 = !{!"branch_weights", i32 19, i32 120}
!813 = !{!"branch_weights", i32 1, i32 138}
!814 = distinct !{!814, !145, !146}
!815 = !{!"branch_weights", i32 1, i32 191}
!816 = !{!510, !129, i64 1160}
!817 = !{!"VP", i32 0, i64 15, i64 -6362454594092827824, i64 15}
!818 = !{!"branch_weights", i32 15, i32 0}
!819 = !{!"branch_weights", i32 1, i32 239}
!820 = !{!"VP", i32 0, i64 35, i64 -6362454594092827824, i64 35}
!821 = !{!"branch_weights", i32 0, i32 35}
!822 = !{!"branch_weights", i32 35, i32 0}
!823 = !{!"branch_weights", i32 239, i32 321}
!824 = distinct !{!824, !145, !146}
!825 = !{!"branch_weights", i32 191, i32 289}
!826 = distinct !{!826, !145, !146}
!827 = !{!"branch_weights", i32 127, i32 641}
!828 = distinct !{!828, !145, !146}
!829 = !{!"rtlanal.c;covers_regno_no_parallel_p"}
!830 = !{!"branch_weights", i32 0, i32 760273}
!831 = !{!"function_entry_count", i64 1196}
!832 = !{!"rtlanal.c;nonzero_bits1"}
!833 = !{!"VP", i32 0, i64 415, i64 5926415344991992345, i64 273, i64 962436520870892787, i64 142}
!834 = !{!"function_entry_count", i64 305}
!835 = !{!"rtlanal.c;num_sign_bit_copies1"}
!836 = !{!"VP", i32 0, i64 111, i64 6526915227828751429, i64 66, i64 -3023504414880966372, i64 45}
