; ModuleID = 'insn-preds.c'
source_filename = "insn-preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.ix86_address = type { ptr, ptr, ptr, i64, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@.str = private unnamed_addr constant [3 x i8] c"Y2\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Yi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Ym\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Yz\00", align 1
@target_flags = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ix86_cmodel = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"insn-preds.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_pic = external local_unnamed_addr global i32, align 4
@internal_label_prefix = external global [16 x i8], align 16
@internal_label_prefix_len = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@switch.table.sse_comparison_operator = private unnamed_addr constant [15 x i32] [i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @any_fp_register_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = and i32 %7, -8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  switch i32 %7, label %18 [
    i32 52, label %11
    i32 51, label %11
    i32 50, label %11
    i32 49, label %11
    i32 48, label %11
    i32 47, label %11
    i32 46, label %11
    i32 45, label %11
    i32 28, label %11
    i32 27, label %11
    i32 26, label %11
    i32 25, label %11
    i32 24, label %11
    i32 23, label %11
    i32 22, label %11
    i32 21, label %11
  ]

11:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %10, %11, %13, %2
  %19 = phi i32 [ 0, %2 ], [ 1, %11 ], [ %17, %13 ], [ 0, %10 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !113 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !115
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @fp_register_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !118 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %17, !prof !119

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = and i32 %7, -8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %17, !prof !120

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = lshr i32 %3, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %10, %12, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %10 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @register_and_not_any_fp_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = and i32 %7, -8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = add i32 %7, -21
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %20, label %13

13:                                               ; preds = %20, %10
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = lshr i32 %3, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, %1
  %19 = zext i1 %18 to i32
  br label %24

20:                                               ; preds = %10
  %21 = lshr i32 -16776961, %11
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %13, label %24

24:                                               ; preds = %20, %13, %15, %6, %2
  %25 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %13 ], [ %19, %15 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @register_and_not_fp_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = and i32 %7, -8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = lshr i32 %3, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %10, %12, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %10 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @mmx_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = zext i32 %7 to i64
  %9 = add nsw i64 %8, -29
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %13, %6, %2
  %19 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %11 ], [ %17, %13 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @q_regs_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !121 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !122

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @q_regs_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @q_regs_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !123 !PGOFuncName !124 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9, !prof !125

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %18, !prof !126

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #11
  %16 = icmp ult i32 %15, 4
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 0, %9 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ext_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !127 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !128

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @ext_register_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ext_register_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !129 !PGOFuncName !130 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = add nsw i32 %4, -15
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %20, !prof !131

7:                                                ; preds = %1
  %8 = and i32 %2, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %13, !prof !132

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %12, %10 ], [ %0, %7 ]
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #11
  %16 = icmp ugt i32 %15, 57
  br i1 %16, label %20, label %17, !prof !133

17:                                               ; preds = %13
  %18 = icmp ult i32 %15, 4
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %1, %13, %17
  %21 = phi i32 [ 0, %1 ], [ 1, %13 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ax_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !134 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %16, !prof !135

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16, !prof !136

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11, !prof !137

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @flags_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !138 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %16, !prof !139

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %8 = icmp eq i32 %7, 17
  br i1 %8, label %9, label %16, !prof !140

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11, !prof !141

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @ext_QIreg_operand(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 !prof !112 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @ext_QIreg_nomode_operand(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 !prof !112 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_not_xmm0_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !142 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5, !prof !143

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %13, !prof !144

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %11 = icmp ne i32 %10, 21
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %5, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nonimm_not_xmm0_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #11
  %11 = icmp ne i32 %10, 21
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %5, %9, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @nonimmediate_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x86_64_immediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %7 [
    i16 30, label %5
    i16 45, label %5
    i16 44, label %5
    i16 35, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2
  %6 = tail call fastcc i32 @x86_64_immediate_operand_1(ptr noundef nonnull %0, i32 noundef %1) #11
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x86_64_immediate_operand_1(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !112 !PGOFuncName !145 {
  %3 = tail call i32 @immediate_operand(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x86_64_zext_immediate_operand(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %7 [
    i16 32, label %5
    i16 30, label %5
    i16 45, label %5
    i16 44, label %5
    i16 35, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2
  %6 = tail call fastcc i32 @x86_64_zext_immediate_operand_1(ptr noundef nonnull %0) #11
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x86_64_zext_immediate_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !146 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %84 [
    i16 32, label %85
    i16 30, label %4
    i16 45, label %9
    i16 44, label %21
    i16 35, label %26
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !115
  %7 = icmp ult i64 %6, 4294967296
  %8 = zext i1 %7 to i32
  br label %85

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = and i32 %11, 56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %85

14:                                               ; preds = %9
  %15 = load i32, ptr @ix86_cmodel, align 4, !tbaa !147
  switch i32 %15, label %20 [
    i32 1, label %85
    i32 3, label %16
  ]

16:                                               ; preds = %14
  %17 = lshr i32 %11, 9
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  br label %85

20:                                               ; preds = %14
  br label %85

21:                                               ; preds = %1
  %22 = load i32, ptr @ix86_cmodel, align 4
  %23 = and i32 %22, -3
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  br label %85

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 49
  br i1 %31, label %32, label %85

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !115
  %37 = load i32, ptr @ix86_cmodel, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %82, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %34, align 8
  %41 = trunc i32 %40 to i16
  switch i16 %41, label %82 [
    i16 45, label %42
    i16 44, label %65
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load i32, ptr %43, align 8, !tbaa !115
  %45 = and i32 %44, 56
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %42
  switch i32 %37, label %85 [
    i32 1, label %51
    i32 3, label %48
  ]

48:                                               ; preds = %47
  %49 = and i32 %44, 512
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %47, %48
  %52 = load i32, ptr %36, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 30
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !115
  %58 = tail call i64 @trunc_int_for_mode(i64 noundef %57, i32 noundef 17) #12
  %59 = icmp sgt i64 %58, -65536
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load i64, ptr %56, align 8, !tbaa !115
  %62 = tail call i64 @trunc_int_for_mode(i64 noundef %61, i32 noundef 16) #12
  %63 = load i64, ptr %56, align 8, !tbaa !115
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %82, label %85

65:                                               ; preds = %39
  %66 = and i32 %37, -3
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i32, ptr %36, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 30
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !115
  %75 = tail call i64 @trunc_int_for_mode(i64 noundef %74, i32 noundef 17) #12
  %76 = icmp sgt i64 %75, -65536
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i64, ptr %73, align 8, !tbaa !115
  %79 = tail call i64 @trunc_int_for_mode(i64 noundef %78, i32 noundef 16) #12
  %80 = load i64, ptr %73, align 8, !tbaa !115
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %32, %42, %60, %77, %39
  %83 = phi i32 [ 0, %39 ], [ 1, %77 ], [ 1, %60 ], [ 0, %42 ], [ 0, %32 ]
  br label %85

84:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 388, ptr noundef nonnull @.str.5) #12
  br label %85

85:                                               ; preds = %84, %26, %60, %55, %51, %48, %65, %77, %72, %68, %47, %82, %16, %20, %14, %9, %1, %21, %4
  %86 = phi i32 [ %25, %21 ], [ %8, %4 ], [ 0, %1 ], [ 0, %9 ], [ %15, %14 ], [ %19, %16 ], [ 0, %20 ], [ %83, %82 ], [ 0, %47 ], [ 0, %68 ], [ 0, %72 ], [ 0, %77 ], [ 0, %65 ], [ 0, %48 ], [ 0, %51 ], [ 0, %55 ], [ 0, %60 ], [ 0, %26 ], [ 0, %84 ]
  ret i32 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x86_64_general_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x86_64_szext_general_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x86_64_nonmemory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @nonmemory_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x86_64_szext_nonmemory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @pic_32bit_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !149 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %16 [
    i16 35, label %5
    i16 45, label %5
    i16 44, label %5
  ], !prof !150

5:                                                ; preds = %2, %2, %2
  %6 = tail call fastcc i32 @pic_32bit_operand_1(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !152

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %0, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %10, %8, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pic_32bit_operand_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !153 !PGOFuncName !154 {
  %3 = load i32, ptr @flag_pic, align 4, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !152

5:                                                ; preds = %2
  %6 = tail call i32 @symbolic_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x86_64_movabs_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %16 [
    i16 45, label %5
    i16 44, label %5
    i16 35, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = tail call fastcc i32 @symbolic_operand_1(ptr noundef nonnull %0) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %0, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %10, %8, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @symbolic_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !155 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %39 [
    i16 45, label %41
    i16 44, label %41
    i16 35, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %40 [
    i16 45, label %41
    i16 44, label %41
    i16 18, label %9
    i16 49, label %14
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = icmp ult i32 %11, 3
  %13 = zext i1 %12 to i32
  br label %41

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  %23 = load i32, ptr %22, align 8
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %29 [
    i16 45, label %41
    i16 44, label %41
    i16 18, label %25
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load i32, ptr %26, align 8, !tbaa !115
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %30, label %29

29:                                               ; preds = %20, %25
  br label %41

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !156
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65534
  %37 = icmp eq i32 %36, 44
  %38 = zext i1 %37 to i32
  br label %41

39:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 529, ptr noundef nonnull @.str.5) #12
  br label %41

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %9, %4, %4, %40, %30, %20, %20, %14, %1, %1, %39, %29
  %42 = phi i32 [ -1, %39 ], [ 0, %29 ], [ 1, %1 ], [ 1, %1 ], [ 1, %4 ], [ 1, %4 ], [ 0, %14 ], [ 1, %20 ], [ 1, %20 ], [ %38, %30 ], [ %13, %9 ], [ 0, %40 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pic_symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !158 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %6, label %16, !prof !159

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @pic_symbolic_operand_1(ptr noundef nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @pic_symbolic_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !112 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %12 [
    i16 18, label %24
    i16 49, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 30
  br i1 %11, label %13, label %12

12:                                               ; preds = %1, %6
  br label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 18
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load i32, ptr %20, align 8, !tbaa !115
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %13
  br label %24

24:                                               ; preds = %19, %1, %23, %12
  %25 = phi i32 [ 0, %12 ], [ 0, %23 ], [ 1, %1 ], [ 1, %19 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @local_symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %15 [
    i16 35, label %5
    i16 44, label %5
    i16 45, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = tail call fastcc i32 @local_symbolic_operand_1(ptr noundef nonnull %0) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %5, %10, %8, %2
  %16 = phi i32 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @local_symbolic_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !112 !PGOFuncName !161 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 49
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 30
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = load i32, ptr %19, align 8
  br label %21

21:                                               ; preds = %17, %11, %5, %1
  %22 = phi i32 [ %20, %17 ], [ %2, %11 ], [ %2, %5 ], [ %2, %1 ]
  %23 = phi ptr [ %19, %17 ], [ %0, %11 ], [ %0, %5 ], [ %0, %1 ]
  %24 = trunc i32 %22 to i16
  switch i16 %24, label %25 [
    i16 44, label %42
    i16 45, label %26
  ]

25:                                               ; preds = %21
  br label %42

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load i32, ptr %28, align 8, !tbaa !115
  %30 = and i32 %29, 56
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = and i32 %29, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load ptr, ptr %27, align 8, !tbaa !115
  %37 = load i32, ptr @internal_label_prefix_len, align 4, !tbaa !147
  %38 = sext i32 %37 to i64
  %39 = tail call i32 @strncmp(ptr noundef %36, ptr noundef nonnull @internal_label_prefix, i64 noundef %38) #11
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %35, %32, %26, %21, %25
  %43 = phi i32 [ 0, %25 ], [ 1, %21 ], [ 0, %26 ], [ 1, %32 ], [ %41, %35 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gotoff_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 !prof !112 {
  %3 = tail call i32 @local_symbolic_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @tls_symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load i32, ptr %7, align 8, !tbaa !115
  %9 = and i32 %8, 56
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %13, %6, %2
  %19 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %11 ], [ %17, %13 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tls_modbase_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call ptr @ix86_tls_module_base() #12
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @ix86_tls_module_base() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tp_or_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 18
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, %1
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %5, %9, %15, %13, %2
  %21 = phi i32 [ 1, %2 ], [ 0, %9 ], [ 0, %5 ], [ 1, %13 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @constant_call_address_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !162 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %16, !prof !163

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @constant_call_address_operand_1() #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !164

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11, !prof !165

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @constant_call_address_operand_1() unnamed_addr #6 !prof !162 !PGOFuncName !166 {
  %1 = load i32, ptr @ix86_cmodel, align 4
  %2 = icmp ne i32 %1, 7
  %3 = icmp ne i32 %1, 4
  %4 = and i1 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @register_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !167 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !168

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @register_no_elim_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @register_no_elim_operand_1(ptr noundef readonly %0) unnamed_addr #3 !prof !167 !PGOFuncName !169 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %8, !prof !168

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !156
  %11 = icmp eq ptr %9, %10
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %13 = icmp eq ptr %9, %12
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %21, label %15, !prof !170

15:                                               ; preds = %8
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #11
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, -58
  %19 = icmp ult i64 %18, -5
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %15, %8
  %22 = phi i32 [ 0, %8 ], [ %20, %15 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @call_register_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @call_register_no_elim_operand_1(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @call_register_no_elim_operand_1(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !112 !PGOFuncName !171 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %0, %2 ]
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !156
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @register_no_elim_operand(ptr noundef %10, i32 noundef %1) #11, !range !151
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @index_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !172 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !173

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @index_register_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @index_register_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !174 !PGOFuncName !175 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %8, !prof !176

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load i32, ptr @reload_in_progress, align 4, !tbaa !147
  %11 = icmp ne i32 %10, 0
  %12 = load i32, ptr @reload_completed, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #11
  br i1 %14, label %16, label %32, !prof !177

16:                                               ; preds = %8
  %17 = icmp ult i32 %15, 7
  br i1 %17, label %39, label %18, !prof !178

18:                                               ; preds = %16
  %19 = zext i32 %15 to i64
  %20 = add nsw i64 %19, -37
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @reg_renumber, align 8, !tbaa !156
  %24 = getelementptr inbounds i16, ptr %23, i64 %19
  %25 = load i16, ptr %24, align 2, !tbaa !179
  %26 = icmp ult i16 %25, 7
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = sext i16 %25 to i64
  %29 = and i64 %28, 4294967295
  %30 = add nsw i64 %29, -37
  %31 = icmp ult i64 %30, 8
  br label %39

32:                                               ; preds = %8
  %33 = zext i32 %15 to i64
  %34 = add nsw i64 %33, -37
  %35 = icmp ult i64 %34, 8
  %36 = add i32 %15, -53
  %37 = icmp ult i32 %36, -46
  %38 = select i1 %37, i1 true, i1 %35
  br label %39

39:                                               ; preds = %32, %16, %18, %22, %27
  %40 = phi i1 [ true, %22 ], [ true, %18 ], [ true, %16 ], [ %31, %27 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @general_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !167 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %7 [
    i16 37, label %5
    i16 39, label %5
  ], !prof !181

5:                                                ; preds = %2, %2
  %6 = tail call i32 @register_no_elim_operand(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #12
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nonmemory_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @register_no_elim_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @immediate_operand(ptr noundef %0, i32 noundef %1) #12
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 1, %2 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @immediate_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @call_insn_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !182 {
  %3 = tail call i32 @constant_call_address_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !183

5:                                                ; preds = %2
  %6 = tail call i32 @call_register_no_elim_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #12
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %8, %2
  %13 = phi i32 [ 1, %2 ], [ 1, %5 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sibcall_insn_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !184 {
  %3 = tail call i32 @constant_call_address_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !185

5:                                                ; preds = %2
  %6 = tail call i32 @register_no_elim_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 1, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @const0_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !186 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %7 [
    i16 30, label %5
    i16 32, label %5
    i16 33, label %5
  ], !prof !187

5:                                                ; preds = %2, %2, %2
  %6 = tail call fastcc i32 @const0_operand_1(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @const0_operand_1(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !188 !PGOFuncName !189 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8, !prof !190

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ %1, %2 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !156
  %13 = icmp eq ptr %12, %0
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @const1_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !191 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %5, i1 %7, i1 false, !prof !192
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const8_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp eq i64 %8, 8
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const128_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !193 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11, !prof !194

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp eq i64 %8, 128
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @const248_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !195 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %8, !prof !196

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @const248_operand_1(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @const248_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !195 !PGOFuncName !197 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !115
  switch i64 %3, label %4 [
    i64 4, label %7
    i64 2, label %7
  ]

4:                                                ; preds = %1
  %5 = icmp eq i64 %3, 8
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %1, %1, %4
  %8 = phi i32 [ 1, %1 ], [ %6, %4 ], [ 1, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @const_0_to_1_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !156
  %8 = icmp eq ptr %7, %0
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %10 = icmp eq ptr %9, %0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_3_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp ult i64 %8, 4
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_7_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp ult i64 %8, 8
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_15_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp ult i64 %8, 16
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_31_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp ult i64 %8, 32
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_63_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp ult i64 %8, 64
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_255_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp ult i64 %8, 256
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_255_mul_8_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @const_0_to_255_mul_8_operand_1(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @const_0_to_255_mul_8_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !198 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !115
  %4 = icmp ult i64 %3, 2041
  %5 = and i64 %3, 7
  %6 = icmp eq i64 %5, 0
  %7 = and i1 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_1_to_31_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = add i64 %8, -1
  %10 = icmp ult i64 %9, 31
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_1_to_63_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = add i64 %8, -1
  %10 = icmp ult i64 %9, 63
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_2_to_3_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = and i64 %8, -2
  %10 = icmp eq i64 %9, 2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_4_to_5_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = and i64 %8, -2
  %10 = icmp eq i64 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_4_to_7_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = and i64 %8, -4
  %10 = icmp eq i64 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_6_to_7_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = and i64 %8, -2
  %10 = icmp eq i64 %9, 6
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_8_to_11_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = and i64 %8, -4
  %10 = icmp eq i64 %9, 8
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_12_to_15_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = and i64 %8, -4
  %10 = icmp eq i64 %9, 12
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_pow2_1_to_2_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = icmp eq i64 %8, 2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %10, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @const_pow2_1_to_8_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @const_pow2_1_to_8_operand_1(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @const_pow2_1_to_8_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !199 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !115
  %4 = tail call i32 @exact_log2(i64 noundef %3) #12
  %5 = icmp ult i32 %4, 4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @const_pow2_1_to_128_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @const_pow2_1_to_128_operand_1(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @const_pow2_1_to_128_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !200 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !115
  %4 = tail call i32 @exact_log2(i64 noundef %3) #12
  %5 = icmp ult i32 %4, 8
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @const_pow2_1_to_32768_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @const_pow2_1_to_32768_operand_1(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @const_pow2_1_to_32768_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !201 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !115
  %4 = tail call i32 @exact_log2(i64 noundef %3) #12
  %5 = icmp ult i32 %4, 16
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @incdec_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !202 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %8, !prof !203

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @incdec_operand_1(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @incdec_operand_1(ptr noundef readnone %0) unnamed_addr #1 !prof !204 !PGOFuncName !205 {
  %2 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 47), align 1, !tbaa !115
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7, !prof !206

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @optimize_insn_for_size_p() #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7, !prof !207

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !156
  %9 = icmp eq ptr %8, %0
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %11 = icmp eq ptr %10, %0
  %12 = select i1 %9, i1 true, i1 %11, !prof !208
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %4, %7
  %15 = phi i32 [ %13, %7 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_or_pm1_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 30
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !156
  %11 = icmp eq ptr %10, %0
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %13 = icmp eq ptr %12, %0
  %14 = select i1 %11, i1 true, i1 %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %9, %2
  %17 = phi i32 [ 1, %2 ], [ 0, %5 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @shiftdi_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ashldi_input_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @reg_or_pm1_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @zero_extended_scalar_load_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @zero_extended_scalar_load_operand_1(ptr noundef nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @zero_extended_scalar_load_operand_1(ptr noundef %0) unnamed_addr #1 !prof !112 !PGOFuncName !209 {
  %2 = tail call ptr @maybe_get_pool_constant(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 33
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = load i32, ptr %10, align 8, !tbaa !210
  %12 = lshr i32 %5, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  br label %16

16:                                               ; preds = %20, %8
  %17 = phi i32 [ %11, %8 ], [ %18, %20 ]
  %18 = add i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %10, i64 0, i32 1, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = load i8, ptr %15, align 1, !tbaa !115
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !156
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %16, label %29, !llvm.loop !212

29:                                               ; preds = %16, %20, %1, %4
  %30 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 1, %16 ], [ 0, %20 ]
  ret i32 %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @vector_all_ones_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !214 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 33
  br i1 %5, label %6, label %16, !prof !215

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @vector_all_ones_operand_1(ptr noundef nonnull %0, i32 noundef %1) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @vector_all_ones_operand_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !112 !PGOFuncName !216 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !115
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 33
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = zext i8 %5 to i32
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = load i32, ptr %12, align 8, !tbaa !210
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = icmp eq i8 %5, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !156
  %19 = zext i8 %5 to i64
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, %19
  br i1 %22, label %28, label %23, !llvm.loop !217

23:                                               ; preds = %17, %20
  %24 = phi i64 [ 0, %17 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %12, i64 0, i32 1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = icmp eq ptr %26, %18
  br i1 %27, label %20, label %28

28:                                               ; preds = %20, %23, %15, %2, %9
  %29 = phi i32 [ 0, %9 ], [ 0, %2 ], [ 1, %15 ], [ 1, %20 ], [ 0, %23 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vector_move_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !218 {
  %3 = tail call i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !219

5:                                                ; preds = %2
  %6 = tail call i32 @const0_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 1, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nonimmediate_or_sse_const_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !220 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !221

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @nonimmediate_or_sse_const_operand_1(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @nonimmediate_or_sse_const_operand_1(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !220 !PGOFuncName !222 {
  %3 = tail call i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9, !prof !221

5:                                                ; preds = %2
  %6 = tail call i32 @standard_sse_constant_p(ptr noundef %0) #12
  %7 = icmp sgt i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 1, %2 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_or_0_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @const0_operand(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 1, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @no_seg_address_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !223 {
  %3 = tail call i32 @address_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !224

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @no_seg_address_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @address_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @no_seg_address_operand_1(ptr noundef %0) unnamed_addr #1 !prof !225 !PGOFuncName !226 {
  %2 = alloca %struct.ix86_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  %3 = call i32 @ix86_decompose_address(ptr noundef %0, ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !227

5:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1168, ptr noundef nonnull @.str.5) #12
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @aligned_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !231 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !232

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @aligned_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @aligned_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !233 !PGOFuncName !234 {
  %2 = alloca %struct.ix86_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %74, !prof !235

6:                                                ; preds = %1
  %7 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 37), align 1, !tbaa !115
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !236

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @optimize_insn_for_size_p() #12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %74, label %12, !prof !237

12:                                               ; preds = %9
  %13 = load i32, ptr %0, align 8
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %13, %12 ], [ %3, %6 ]
  %16 = and i32 %15, 134217728
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !238
  %26 = icmp ugt i32 %25, 31
  br i1 %26, label %74, label %27

27:                                               ; preds = %18, %23
  %28 = load ptr, ptr %19, align 8, !tbaa !115
  %29 = load i32, ptr %28, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %31 [
    i16 74, label %74
    i16 77, label %74
  ]

31:                                               ; preds = %27
  %32 = call i32 @ix86_decompose_address(ptr noundef nonnull %28, ptr noundef nonnull %2) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1211, ptr noundef nonnull @.str.5) #12
  br label %35

35:                                               ; preds = %31, %34
  %36 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !240
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !241
  %41 = call fastcc i32 @rhs_regno(ptr noundef nonnull %37) #11
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !115
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !250
  %48 = mul nsw i64 %47, %45
  %49 = icmp slt i64 %48, 32
  br i1 %49, label %74, label %50

50:                                               ; preds = %39, %35
  %51 = load ptr, ptr %2, align 8, !tbaa !251
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !241
  %55 = call fastcc i32 @rhs_regno(ptr noundef nonnull %51) #11
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !115
  %59 = icmp ult i8 %58, 32
  br i1 %59, label %74, label %60

60:                                               ; preds = %53, %50
  %61 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !252
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %62, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 30
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !115
  %71 = and i64 %70, 3
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %60
  br label %74

74:                                               ; preds = %64, %68, %53, %39, %27, %27, %23, %14, %9, %1, %73
  %75 = phi i32 [ 1, %73 ], [ 1, %1 ], [ 0, %9 ], [ 0, %14 ], [ 1, %23 ], [ 1, %27 ], [ 1, %27 ], [ 0, %39 ], [ 0, %53 ], [ 0, %68 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @memory_displacement_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @memory_displacement_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @memory_displacement_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !253 {
  %2 = alloca %struct.ix86_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = call i32 @ix86_decompose_address(ptr noundef %4, ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1250, ptr noundef nonnull @.str.5) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !252
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @memory_displacement_only_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !254 {
  %3 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !255

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @memory_displacement_only_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @memory_displacement_only_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !256 !PGOFuncName !257 {
  %2 = alloca %struct.ix86_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = call i32 @ix86_decompose_address(ptr noundef %4, ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !258

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1272, ptr noundef nonnull @.str.5) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr %2, align 8, !tbaa !251
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %10, i1 %13, i1 false
  %15 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %14, i1 %17, i1 false
  %19 = zext i1 %18 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cmpxchg8b_pic_memory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @cmpxchg8b_pic_memory_operand_1(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cmpxchg8b_pic_memory_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !259 {
  %2 = alloca %struct.ix86_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = call i32 @ix86_decompose_address(ptr noundef %4, ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1295, ptr noundef nonnull @.str.5) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr %2, align 8, !tbaa !251
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !156
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !156
  %16 = icmp eq ptr %9, %15
  br i1 %16, label %36, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !156
  %19 = icmp eq ptr %9, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !156
  %22 = icmp eq ptr %9, %21
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ix86_address, ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !240
  %26 = icmp eq ptr %25, null
  %27 = icmp eq ptr %25, %12
  %28 = or i1 %26, %27
  %29 = icmp eq ptr %25, %15
  %30 = or i1 %29, %28
  %31 = icmp eq ptr %25, %18
  %32 = or i1 %31, %30
  %33 = icmp eq ptr %25, %21
  %34 = or i1 %33, %32
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %23, %8, %11, %14, %17, %20
  %37 = phi i32 [ 1, %20 ], [ 1, %17 ], [ 1, %14 ], [ 1, %11 ], [ 1, %8 ], [ %35, %23 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @long_memory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @memory_address_length(ptr noundef %0) #12
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @memory_address_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @fcmov_comparison_operator(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = tail call i32 @comparison_operator(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @fcmov_comparison_operator_1(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @comparison_operator(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @fcmov_comparison_operator_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !112 !PGOFuncName !260 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %7, -11
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = tail call i32 @ix86_trivial_fp_comparison_operator(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @ix86_fp_compare_code_to_integer(i32 noundef %9) #12
  br label %17

17:                                               ; preds = %2, %15
  %18 = phi i32 [ %16, %15 ], [ %9, %2 ]
  switch i32 %18, label %22 [
    i32 89, label %19
    i32 87, label %19
    i32 88, label %19
    i32 86, label %19
    i32 91, label %23
    i32 90, label %23
    i32 81, label %23
    i32 80, label %23
  ]

19:                                               ; preds = %17, %17, %17, %17
  %20 = trunc i32 %6 to i8
  switch i8 %20, label %21 [
    i8 12, label %23
    i8 11, label %23
    i8 7, label %23
    i8 2, label %23
  ]

21:                                               ; preds = %19
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %17, %17, %17, %17, %19, %19, %19, %19, %12, %22, %21
  %24 = phi i32 [ 0, %22 ], [ 0, %21 ], [ 0, %12 ], [ 1, %19 ], [ 1, %19 ], [ 1, %19 ], [ 1, %19 ], [ 1, %17 ], [ 1, %17 ], [ 1, %17 ], [ 1, %17 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @sse_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !261 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, -80
  %6 = icmp ult i16 %5, 15
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds [15 x i32], ptr @switch.table.sse_comparison_operator, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @avx_comparison_float_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 80, label %5
    i16 81, label %5
    i16 82, label %5
    i16 83, label %5
    i16 84, label %5
    i16 85, label %5
    i16 90, label %5
    i16 91, label %5
    i16 92, label %5
    i16 93, label %5
    i16 94, label %5
    i16 95, label %5
    i16 96, label %5
    i16 97, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ix86_comparison_int_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, -80
  %6 = icmp ult i16 %5, 6
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = lshr i32 %3, 16
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, %1
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %9, %2
  %15 = phi i32 [ 0, %2 ], [ 1, %7 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ix86_comparison_uns_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !262 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 80, label %5
    i16 81, label %5
    i16 86, label %5
    i16 87, label %5
    i16 88, label %5
    i16 89, label %5
  ], !prof !263

5:                                                ; preds = %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @bt_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !264 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65534
  %5 = icmp eq i32 %4, 80
  br i1 %5, label %6, label %13, !prof !265

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8, !prof !266

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ix86_comparison_operator(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !267 {
  %3 = tail call i32 @comparison_operator(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !268

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @ix86_comparison_operator_1(ptr noundef %0, i32 noundef %1) #11, !range !151
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ix86_comparison_operator_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !269 !PGOFuncName !270 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -11
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %12, !prof !271

10:                                               ; preds = %2
  %11 = tail call i32 @ix86_trivial_fp_comparison_operator(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  br label %36

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %35 [
    i16 81, label %36
    i16 80, label %36
    i16 85, label %15
    i16 82, label %15
    i16 89, label %21
    i16 87, label %21
    i16 88, label %21
    i16 86, label %21
    i16 91, label %26
    i16 90, label %26
    i16 83, label %29
    i16 84, label %29
  ], !prof !272

15:                                               ; preds = %12, %12
  %16 = and i32 %5, 16646144
  %17 = icmp eq i32 %16, 131072
  %18 = icmp eq i32 %16, 262144
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i32
  br label %36

21:                                               ; preds = %12, %12, %12, %12
  %22 = icmp eq i32 %7, 7
  %23 = icmp eq i32 %7, 2
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i32
  br label %36

26:                                               ; preds = %12, %12
  %27 = icmp eq i32 %7, 2
  %28 = zext i1 %27 to i32
  br label %36

29:                                               ; preds = %12, %12
  %30 = and i32 %5, 16646144
  %31 = icmp eq i32 %30, 131072
  %32 = icmp eq i32 %7, 5
  %33 = or i1 %31, %32
  %34 = zext i1 %33 to i32
  br label %36

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %21, %29, %26, %15, %12, %12, %35, %10
  %37 = phi i32 [ %11, %10 ], [ 0, %35 ], [ 1, %12 ], [ 1, %12 ], [ %20, %15 ], [ %28, %26 ], [ %34, %29 ], [ %25, %21 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ix86_carry_flag_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !273 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %16 [
    i16 89, label %5
    i16 85, label %5
    i16 96, label %5
    i16 87, label %5
    i16 83, label %5
    i16 94, label %5
    i16 84, label %5
    i16 95, label %5
    i16 82, label %5
    i16 93, label %5
    i16 97, label %5
    i16 92, label %5
  ], !prof !274

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = tail call fastcc i32 @ix86_carry_flag_operator_1(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !275

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %16, label %10, !prof !276

10:                                               ; preds = %8
  %11 = load i32, ptr %0, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %10, %8, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %5 ], [ 1, %8 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ix86_carry_flag_operator_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !277 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %7, -11
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %17, !prof !279

12:                                               ; preds = %2
  %13 = tail call i32 @ix86_trivial_fp_comparison_operator(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @ix86_fp_compare_code_to_integer(i32 noundef %9) #12
  br label %23

17:                                               ; preds = %2
  %18 = trunc i32 %6 to i8
  switch i8 %18, label %26 [
    i8 7, label %19
    i8 2, label %23
  ], !prof !280

19:                                               ; preds = %17
  %20 = icmp eq i32 %9, 89
  %21 = icmp eq i32 %9, 87
  %22 = or i1 %20, %21
  br label %26

23:                                               ; preds = %17, %15
  %24 = phi i32 [ %16, %15 ], [ %9, %17 ]
  %25 = icmp eq i32 %24, 89
  br label %26

26:                                               ; preds = %17, %12, %23, %19
  %27 = phi i1 [ %25, %23 ], [ %22, %19 ], [ false, %12 ], [ false, %17 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ix86_trivial_fp_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !281 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 83, label %5
    i16 82, label %5
    i16 96, label %5
    i16 95, label %5
    i16 92, label %5
    i16 97, label %5
    i16 91, label %5
    i16 90, label %5
  ], !prof !282

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7, !prof !283

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ix86_fp_comparison_operator(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !281 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = tail call i32 @ix86_fp_comparison_strategy(i32 noundef %4) #12
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %9, !prof !284

7:                                                ; preds = %2
  %8 = tail call i32 @comparison_operator(ptr noundef nonnull %0, i32 noundef %1) #12
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @ix86_trivial_fp_comparison_operator(ptr noundef nonnull %0, i32 noundef %1) #11, !range !151
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @ix86_fp_comparison_strategy(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cmp_fp_expander_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #12
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 1, %2 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @binary_fp_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !285 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 49, label %5
    i16 50, label %5
    i16 52, label %5
    i16 55, label %5
  ], !prof !286

5:                                                ; preds = %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7, !prof !287

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @mult_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 52
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @div_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 55
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @float_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !288 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 103
  br i1 %5, label %6, label %13, !prof !289

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @arith_or_logical_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !290 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 49, label %5
    i16 52, label %5
    i16 61, label %5
    i16 62, label %5
    i16 63, label %5
    i16 70, label %5
    i16 71, label %5
    i16 72, label %5
    i16 73, label %5
    i16 48, label %5
    i16 50, label %5
    i16 55, label %5
    i16 58, label %5
    i16 59, label %5
    i16 60, label %5
    i16 65, label %5
    i16 66, label %5
    i16 67, label %5
    i16 68, label %5
    i16 69, label %5
  ], !prof !291

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7, !prof !292

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @commutative_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !293 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 49, label %5
    i16 52, label %5
    i16 61, label %5
    i16 62, label %5
    i16 63, label %5
    i16 70, label %5
    i16 71, label %5
    i16 72, label %5
    i16 73, label %5
  ], !prof !294

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @promotable_binary_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !295 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %15 [
    i16 49, label %8
    i16 61, label %8
    i16 62, label %8
    i16 63, label %8
    i16 65, label %8
    i16 52, label %5
  ], !prof !296

5:                                                ; preds = %2
  %6 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 52), align 4, !tbaa !115
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2, %2, %2, %2, %2, %5
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %15, label %10, !prof !297

10:                                               ; preds = %8
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %2, %8, %10, %5
  %16 = phi i32 [ 0, %5 ], [ 1, %8 ], [ %14, %10 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @compare_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !298 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 48
  br i1 %5, label %6, label %13, !prof !299

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8, !prof !299

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @absneg_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !300 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 111, label %5
    i16 51, label %5
  ], !prof !301

5:                                                ; preds = %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @misaligned_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !238
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i32 [ %12, %10 ], [ 8, %6 ]
  %15 = tail call i32 @get_mode_alignment(i32 noundef %1) #12
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, %1
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %17, %19, %13, %2
  %26 = phi i32 [ 0, %13 ], [ 0, %2 ], [ 1, %17 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @emms_operation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !302 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %16, !prof !303

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @emms_operation_1(ptr noundef nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !303

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @emms_operation_1(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !302 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = load i32, ptr %3, align 8, !tbaa !210
  %5 = icmp eq i32 %4, 17
  br i1 %5, label %6, label %45, !prof !305

6:                                                ; preds = %1, %40
  %7 = phi i64 [ %10, %40 ], [ 0, %1 ]
  %8 = icmp eq i64 %7, 8
  br i1 %8, label %45, label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i64 %7, 1
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %3, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !156
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 25
  br i1 %15, label %16, label %45

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 16777215
  %21 = icmp eq i32 %20, 2621477
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #11
  %24 = or disjoint i64 %7, 8
  %25 = zext i32 %23 to i64
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = add nuw nsw i64 %7, 9
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %3, i64 0, i32 1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !156
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 25
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !115
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 16777215
  %39 = icmp eq i32 %38, 1114149
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #11
  %42 = add nuw nsw i64 %7, 29
  %43 = zext i32 %41 to i64
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %6, label %45, !llvm.loop !306

45:                                               ; preds = %6, %22, %16, %9, %40, %34, %27, %1
  %46 = phi i32 [ 0, %1 ], [ 1, %6 ], [ 0, %22 ], [ 0, %16 ], [ 0, %9 ], [ 0, %40 ], [ 0, %34 ], [ 0, %27 ]
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @vzeroall_operation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !302 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %16, !prof !303

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @vzeroall_operation_1(ptr noundef nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !303

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @vzeroall_operation_1(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !302 !PGOFuncName !307 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = load i32, ptr %3, align 8, !tbaa !210
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %33, !prof !305

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 70), align 16
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi i64 [ 0, %6 ], [ %12, %29 ]
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = add nuw nsw i64 %9, 1
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %3, i64 0, i32 1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 16777215
  %23 = icmp eq i32 %22, 4587557
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #11
  %26 = add nuw nsw i64 %9, 21
  %27 = zext i32 %25 to i64
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  %32 = icmp eq ptr %31, %7
  br i1 %32, label %8, label %33, !llvm.loop !308

33:                                               ; preds = %8, %29, %24, %18, %11, %1
  %34 = phi i32 [ 0, %1 ], [ 1, %8 ], [ 0, %29 ], [ 0, %24 ], [ 0, %18 ], [ 0, %11 ]
  ret i32 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @vzeroupper_operation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !302 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %16, !prof !303

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @vzeroupper_operation_1(ptr noundef nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !303

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %11, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @vzeroupper_operation_1(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !302 !PGOFuncName !309 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = load i32, ptr %3, align 8, !tbaa !210
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %27, !prof !305

6:                                                ; preds = %1, %22
  %7 = phi i64 [ %10, %22 ], [ 0, %1 ]
  %8 = icmp eq i64 %7, 8
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i64 %7, 1
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %3, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !156
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 25
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 16777215
  %21 = icmp eq i32 %20, 4587557
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #11
  %24 = add nuw nsw i64 %7, 21
  %25 = zext i32 %23 to i64
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %6, label %27, !llvm.loop !310

27:                                               ; preds = %6, %22, %16, %9, %1
  %28 = phi i32 [ 0, %1 ], [ 1, %6 ], [ 0, %22 ], [ 0, %16 ], [ 0, %9 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @avx_vpermilp_v8sf_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 81) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @avx_vpermilp_parallel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @avx_vpermilp_v4df_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 82) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @avx_vpermilp_v4sf_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 79) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @avx_vpermilp_v2df_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 80) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @avx_vperm2f128_v8sf_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vperm2f128_parallel(ptr noundef nonnull %0, i32 noundef 81) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @avx_vperm2f128_parallel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @avx_vperm2f128_v8si_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vperm2f128_parallel(ptr noundef nonnull %0, i32 noundef 70) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @avx_vperm2f128_v4df_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vperm2f128_parallel(ptr noundef nonnull %0, i32 noundef 82) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @avx_vbroadcast_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !112 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 30
  br i1 %13, label %14, label %24

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @avx_vbroadcast_operand_1(ptr noundef nonnull %0) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = lshr i32 %3, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %17, %19, %14, %6, %2
  %25 = phi i32 [ 0, %14 ], [ 0, %6 ], [ 0, %2 ], [ 1, %17 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @avx_vbroadcast_operand_1(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !112 !PGOFuncName !311 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.rtvec_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = load i32, ptr %3, align 8, !tbaa !210
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = zext nneg i32 %6 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %18, label %13, !llvm.loop !312

13:                                               ; preds = %8, %10
  %14 = phi i64 [ 1, %8 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %3, i64 0, i32 1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %10, %1
  %19 = phi i32 [ 1, %1 ], [ 1, %10 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @lookup_constraint(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !313 {
  %2 = load i8, ptr %0, align 1, !tbaa !115
  switch i8 %2, label %42 [
    i8 65, label %43
    i8 67, label %3
    i8 68, label %4
    i8 71, label %5
    i8 73, label %6
    i8 74, label %7
    i8 75, label %8
    i8 76, label %9
    i8 77, label %10
    i8 78, label %11
    i8 79, label %12
    i8 81, label %13
    i8 82, label %14
    i8 83, label %15
    i8 85, label %16
    i8 89, label %17
    i8 90, label %29
    i8 97, label %30
    i8 98, label %31
    i8 99, label %32
    i8 100, label %33
    i8 101, label %34
    i8 102, label %35
    i8 108, label %36
    i8 113, label %37
    i8 116, label %38
    i8 117, label %39
    i8 120, label %40
    i8 121, label %41
  ], !prof !314

3:                                                ; preds = %1
  br label %43

4:                                                ; preds = %1
  br label %43

5:                                                ; preds = %1
  br label %43

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  br label %43

15:                                               ; preds = %1
  br label %43

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  %18 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str, i64 noundef 2) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20, !prof !315

20:                                               ; preds = %17
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.1, i64 noundef 2) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23, !prof !316

23:                                               ; preds = %20
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.2, i64 noundef 2) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26, !prof !317

26:                                               ; preds = %23
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.3, i64 noundef 2) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %42

29:                                               ; preds = %1
  br label %43

30:                                               ; preds = %1
  br label %43

31:                                               ; preds = %1
  br label %43

32:                                               ; preds = %1
  br label %43

33:                                               ; preds = %1
  br label %43

34:                                               ; preds = %1
  br label %43

35:                                               ; preds = %1
  br label %43

36:                                               ; preds = %1
  br label %43

37:                                               ; preds = %1
  br label %43

38:                                               ; preds = %1
  br label %43

39:                                               ; preds = %1
  br label %43

40:                                               ; preds = %1
  br label %43

41:                                               ; preds = %1
  br label %43

42:                                               ; preds = %1, %26
  br label %43

43:                                               ; preds = %26, %23, %20, %17, %1, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %44 = phi i32 [ 0, %42 ], [ 16, %41 ], [ 17, %40 ], [ 15, %39 ], [ 14, %38 ], [ 2, %37 ], [ 4, %36 ], [ 13, %35 ], [ 31, %34 ], [ 8, %33 ], [ 7, %32 ], [ 6, %31 ], [ 5, %30 ], [ 32, %29 ], [ 12, %16 ], [ 9, %15 ], [ 1, %14 ], [ 3, %13 ], [ 28, %12 ], [ 27, %11 ], [ 26, %10 ], [ 25, %9 ], [ 24, %8 ], [ 23, %7 ], [ 22, %6 ], [ 29, %5 ], [ 10, %4 ], [ 30, %3 ], [ 11, %1 ], [ 19, %17 ], [ 20, %20 ], [ 21, %23 ], [ 18, %26 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @regclass_for_constraint(i32 noundef %0) local_unnamed_addr #6 !prof !318 {
  switch i32 %0, label %66 [
    i32 1, label %67
    i32 2, label %2
    i32 3, label %3
    i32 4, label %4
    i32 5, label %5
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 10, label %10
    i32 11, label %11
    i32 12, label %12
    i32 13, label %13
    i32 14, label %20
    i32 15, label %25
    i32 16, label %30
    i32 17, label %35
    i32 18, label %40
    i32 19, label %45
    i32 20, label %50
    i32 21, label %58
  ], !prof !319

2:                                                ; preds = %1
  br label %67

3:                                                ; preds = %1
  br label %67

4:                                                ; preds = %1
  br label %67

5:                                                ; preds = %1
  br label %67

6:                                                ; preds = %1
  br label %67

7:                                                ; preds = %1
  br label %67

8:                                                ; preds = %1
  br label %67

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  br label %67

12:                                               ; preds = %1
  br label %67

13:                                               ; preds = %1
  %14 = load i32, ptr @target_flags, align 4, !tbaa !147
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %67, !prof !320

17:                                               ; preds = %13
  %18 = lshr i32 %14, 1
  %19 = and i32 %18, 16
  br label %67

20:                                               ; preds = %1
  %21 = load i32, ptr @target_flags, align 4
  %22 = and i32 %21, 34
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 14
  br label %67

25:                                               ; preds = %1
  %26 = load i32, ptr @target_flags, align 4
  %27 = and i32 %26, 34
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 15
  br label %67

30:                                               ; preds = %1
  %31 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !147
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 19
  br label %67

35:                                               ; preds = %1
  %36 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !147
  %37 = and i32 %36, 65536
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 18
  br label %67

40:                                               ; preds = %1
  %41 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !147
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 17
  br label %67

45:                                               ; preds = %1
  %46 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !147
  %47 = and i32 %46, 131072
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 0, i32 18
  br label %67

50:                                               ; preds = %1
  %51 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !147
  %52 = and i32 %51, 131072
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %67, label %54, !prof !321

54:                                               ; preds = %50
  %55 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 42), align 2, !tbaa !115
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 0, i32 18
  br label %67

58:                                               ; preds = %1
  %59 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !147
  %60 = and i32 %59, 2048
  %61 = icmp ne i32 %60, 0
  %62 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 42), align 2
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false, !prof !322
  %65 = select i1 %64, i32 19, i32 0
  br label %67

66:                                               ; preds = %1
  br label %67

67:                                               ; preds = %50, %54, %13, %17, %1, %66, %58, %45, %40, %35, %30, %25, %20, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %68 = phi i32 [ 0, %66 ], [ %65, %58 ], [ %49, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %20 ], [ 8, %12 ], [ 7, %11 ], [ 6, %10 ], [ 5, %9 ], [ 2, %8 ], [ 3, %7 ], [ 4, %6 ], [ 1, %5 ], [ 11, %4 ], [ 9, %3 ], [ 9, %2 ], [ 12, %1 ], [ 16, %13 ], [ %19, %17 ], [ 0, %50 ], [ %57, %54 ]
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @constraint_satisfied_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !323 {
  switch i32 %1, label %25 [
    i32 22, label %3
    i32 23, label %5
    i32 24, label %7
    i32 25, label %9
    i32 26, label %11
    i32 27, label %13
    i32 28, label %15
    i32 29, label %17
    i32 30, label %19
    i32 31, label %21
    i32 32, label %23
  ], !prof !324

3:                                                ; preds = %2
  %4 = tail call fastcc zeroext i8 @satisfies_constraint_I(ptr noundef %0) #11, !range !325
  br label %25

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @satisfies_constraint_J(ptr noundef %0) #11, !range !325
  br label %25

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @satisfies_constraint_K(ptr noundef %0) #11, !range !325
  br label %25

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @satisfies_constraint_L(ptr noundef %0) #11, !range !325
  br label %25

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @satisfies_constraint_M(ptr noundef %0) #11, !range !325
  br label %25

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @satisfies_constraint_N(ptr noundef %0) #11, !range !325
  br label %25

15:                                               ; preds = %2
  %16 = tail call fastcc zeroext i8 @satisfies_constraint_O(ptr noundef %0) #11, !range !325
  br label %25

17:                                               ; preds = %2
  %18 = tail call fastcc zeroext i8 @satisfies_constraint_G(ptr noundef %0) #11, !range !325
  br label %25

19:                                               ; preds = %2
  %20 = tail call fastcc zeroext i8 @satisfies_constraint_C(ptr noundef %0) #11
  br label %25

21:                                               ; preds = %2
  %22 = tail call fastcc zeroext i8 @satisfies_constraint_e(ptr noundef %0) #11
  br label %25

23:                                               ; preds = %2
  %24 = tail call fastcc zeroext i8 @satisfies_constraint_Z(ptr noundef %0) #11, !range !325
  br label %25

25:                                               ; preds = %2, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %26 = phi i8 [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ 0, %2 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @satisfies_constraint_I(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !326 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = icmp ult i64 %7, 32
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ %9, %5 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @satisfies_constraint_J(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !327 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = icmp ult i64 %7, 64
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ %9, %5 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @satisfies_constraint_K(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !328 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = add i64 %7, 128
  %9 = icmp ult i64 %8, 256
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ %10, %5 ], [ 0, %1 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @satisfies_constraint_L(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !329 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !115
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %10 = icmp eq i64 %9, 255
  %11 = icmp eq i64 %9, 65535
  %12 = or i1 %10, %11
  %13 = select i1 %4, i1 %12, i1 false
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @satisfies_constraint_M(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !330 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = icmp ult i64 %7, 4
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ %9, %5 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @satisfies_constraint_N(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !331 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = icmp ult i64 %7, 256
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ %9, %5 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @satisfies_constraint_O(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !332 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = icmp ult i64 %7, 128
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ %9, %5 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @satisfies_constraint_G(ptr noundef %0) unnamed_addr #1 !prof !112 !PGOFuncName !333 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 32
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call i32 @standard_80387_constant_p(ptr noundef nonnull %0) #12
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %5 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @satisfies_constraint_C(ptr noundef %0) unnamed_addr #1 !prof !334 !PGOFuncName !335 {
  %2 = tail call i32 @standard_sse_constant_p(ptr noundef %0) #12
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @satisfies_constraint_e(ptr noundef %0) unnamed_addr #1 !prof !112 !PGOFuncName !336 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call i32 @x86_64_immediate_operand(ptr noundef nonnull %0, i32 noundef %4) #11
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @satisfies_constraint_Z(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !112 !PGOFuncName !337 {
  %2 = tail call i32 @x86_64_zext_immediate_operand(ptr noundef nonnull %0, i32 poison) #11
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !338 {
  switch i32 %1, label %20 [
    i32 22, label %3
    i32 23, label %5
    i32 24, label %7
    i32 25, label %10
    i32 26, label %14
    i32 27, label %16
    i32 28, label %18
  ], !prof !339

3:                                                ; preds = %2
  %4 = icmp ult i64 %0, 32
  br label %20

5:                                                ; preds = %2
  %6 = icmp ult i64 %0, 64
  br label %20

7:                                                ; preds = %2
  %8 = add i64 %0, 128
  %9 = icmp ult i64 %8, 256
  br label %20

10:                                               ; preds = %2
  %11 = icmp eq i64 %0, 255
  %12 = icmp eq i64 %0, 65535
  %13 = or i1 %11, %12
  br label %20

14:                                               ; preds = %2
  %15 = icmp ult i64 %0, 4
  br label %20

16:                                               ; preds = %2
  %17 = icmp ult i64 %0, 256
  br label %20

18:                                               ; preds = %2
  %19 = icmp ult i64 %0, 128
  br label %20

20:                                               ; preds = %2, %18, %16, %14, %10, %7, %5, %3
  %21 = phi i1 [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %10 ], [ %9, %7 ], [ %6, %5 ], [ %4, %3 ], [ false, %2 ]
  %22 = zext i1 %21 to i8
  ret i8 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @maybe_get_pool_constant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @standard_sse_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_decompose_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_fp_compare_code_to_integer(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @standard_80387_constant_p(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!111}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!35 = !{ptr @fp_register_operand, ptr @rhs_regno, i64 298883}
!36 = !{ptr @q_regs_operand, ptr @register_operand, i64 2523}
!37 = !{ptr @q_regs_operand, ptr @q_regs_operand_1, i64 2068}
!38 = !{ptr @q_regs_operand_1, ptr @rhs_regno, i64 2068}
!39 = !{ptr @ext_register_operand, ptr @register_operand, i64 130704}
!40 = !{ptr @ext_register_operand, ptr @ext_register_operand_1, i64 78865}
!41 = !{ptr @ext_register_operand_1, ptr @rhs_regno, i64 76079}
!42 = !{ptr @ax_reg_operand, ptr @rhs_regno, i64 544284}
!43 = !{ptr @flags_reg_operand, ptr @rhs_regno, i64 1767738}
!44 = !{ptr @reg_not_xmm0_operand, ptr @register_operand, i64 240}
!45 = !{ptr @reg_not_xmm0_operand, ptr @rhs_regno, i64 143}
!46 = !{ptr @pic_32bit_operand, ptr @pic_32bit_operand_1, i64 1851}
!47 = !{ptr @pic_32bit_operand_1, ptr @symbolic_operand, i64 1}
!48 = !{ptr @pic_symbolic_operand, ptr @pic_symbolic_operand_1, i64 1}
!49 = !{ptr @constant_call_address_operand, ptr @constant_call_address_operand_1, i64 361835}
!50 = !{ptr @register_no_elim_operand, ptr @register_operand, i64 88}
!51 = !{ptr @register_no_elim_operand, ptr @register_no_elim_operand_1, i64 87}
!52 = !{ptr @register_no_elim_operand_1, ptr @rhs_regno, i64 86}
!53 = !{ptr @index_register_operand, ptr @register_operand, i64 2518}
!54 = !{ptr @index_register_operand, ptr @index_register_operand_1, i64 1643}
!55 = !{ptr @index_register_operand_1, ptr @rhs_regno, i64 1643}
!56 = !{ptr @general_no_elim_operand, ptr @register_no_elim_operand, i64 88}
!57 = !{ptr @call_insn_operand, ptr @constant_call_address_operand, i64 68939}
!58 = !{ptr @call_insn_operand, ptr @call_register_no_elim_operand, i64 1}
!59 = !{ptr @sibcall_insn_operand, ptr @constant_call_address_operand, i64 19}
!60 = !{ptr @sibcall_insn_operand, ptr @register_no_elim_operand, i64 1}
!61 = !{ptr @const0_operand, ptr @const0_operand_1, i64 325137}
!62 = !{ptr @const248_operand, ptr @const248_operand_1, i64 403}
!63 = !{ptr @incdec_operand, ptr @incdec_operand_1, i64 635772}
!64 = !{ptr @incdec_operand_1, ptr @optimize_insn_for_size_p, i64 635772}
!65 = !{ptr @vector_all_ones_operand, ptr @vector_all_ones_operand_1, i64 1}
!66 = !{ptr @vector_move_operand, ptr @nonimmediate_operand, i64 1140}
!67 = !{ptr @vector_move_operand, ptr @const0_operand, i64 11}
!68 = !{ptr @nonimmediate_or_sse_const_operand, ptr @general_operand, i64 1040}
!69 = !{ptr @nonimmediate_or_sse_const_operand, ptr @nonimmediate_or_sse_const_operand_1, i64 1039}
!70 = !{ptr @nonimmediate_or_sse_const_operand_1, ptr @nonimmediate_operand, i64 1040}
!71 = !{ptr @nonimmediate_or_sse_const_operand_1, ptr @standard_sse_constant_p, i64 1}
!72 = !{ptr @no_seg_address_operand, ptr @address_operand, i64 177104}
!73 = !{ptr @no_seg_address_operand, ptr @no_seg_address_operand_1, i64 4240}
!74 = !{ptr @no_seg_address_operand_1, ptr @ix86_decompose_address, i64 4239}
!75 = !{ptr @no_seg_address_operand_1, ptr @fancy_abort, i64 1}
!76 = !{ptr @aligned_operand, ptr @general_operand, i64 18548}
!77 = !{ptr @aligned_operand, ptr @aligned_operand_1, i64 15128}
!78 = !{ptr @aligned_operand_1, ptr @optimize_insn_for_size_p, i64 604}
!79 = !{ptr @memory_displacement_only_operand, ptr @memory_operand, i64 434313}
!80 = !{ptr @memory_displacement_only_operand, ptr @memory_displacement_only_operand_1, i64 349713}
!81 = !{ptr @memory_displacement_only_operand_1, ptr @ix86_decompose_address, i64 349714}
!82 = !{ptr @memory_displacement_only_operand_1, ptr @fancy_abort, i64 1}
!83 = !{ptr @ix86_comparison_operator, ptr @comparison_operator, i64 1788410}
!84 = !{ptr @ix86_comparison_operator, ptr @ix86_comparison_operator_1, i64 1234542}
!85 = !{ptr @ix86_comparison_operator_1, ptr @ix86_trivial_fp_comparison_operator, i64 2}
!86 = !{ptr @ix86_carry_flag_operator, ptr @ix86_carry_flag_operator_1, i64 2909}
!87 = !{ptr @ix86_carry_flag_operator_1, ptr @ix86_trivial_fp_comparison_operator, i64 2}
!88 = !{ptr @ix86_carry_flag_operator_1, ptr @ix86_fp_compare_code_to_integer, i64 1}
!89 = !{ptr @ix86_fp_comparison_operator, ptr @ix86_fp_comparison_strategy, i64 180185}
!90 = !{ptr @ix86_fp_comparison_operator, ptr @comparison_operator, i64 1}
!91 = !{ptr @ix86_fp_comparison_operator, ptr @ix86_trivial_fp_comparison_operator, i64 180184}
!92 = !{ptr @emms_operation, ptr @emms_operation_1, i64 171788}
!93 = !{ptr @emms_operation_1, ptr @rhs_regno, i64 9}
!94 = !{ptr @vzeroall_operation, ptr @vzeroall_operation_1, i64 171788}
!95 = !{ptr @vzeroall_operation_1, ptr @rhs_regno, i64 6}
!96 = !{ptr @vzeroupper_operation, ptr @vzeroupper_operation_1, i64 171788}
!97 = !{ptr @vzeroupper_operation_1, ptr @rhs_regno, i64 8}
!98 = !{ptr @lookup_constraint, ptr @strncmp, i64 1581655}
!99 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_I, i64 1}
!100 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_J, i64 1}
!101 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_K, i64 1}
!102 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_L, i64 1}
!103 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_M, i64 1}
!104 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_N, i64 1}
!105 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_O, i64 1}
!106 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_G, i64 1}
!107 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_C, i64 944515}
!108 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_e, i64 1}
!109 = !{ptr @constraint_satisfied_p, ptr @satisfies_constraint_Z, i64 1}
!110 = !{ptr @satisfies_constraint_C, ptr @standard_sse_constant_p, i64 944526}
!111 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!112 = !{!"function_entry_count", i64 0}
!113 = !{!"function_entry_count", i64 2707586}
!114 = !{!"insn-preds.c:rhs_regno"}
!115 = !{!116, !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !{!"function_entry_count", i64 393440}
!119 = !{!"branch_weights", i32 298885, i32 94557}
!120 = !{!"branch_weights", i32 1, i32 298885}
!121 = !{!"function_entry_count", i64 2523}
!122 = !{!"branch_weights", i32 455, i32 2070}
!123 = !{!"function_entry_count", i64 2069}
!124 = !{!"insn-preds.c:q_regs_operand_1"}
!125 = !{!"branch_weights", i32 1, i32 2070}
!126 = !{!"branch_weights", i32 2070, i32 1}
!127 = !{!"function_entry_count", i64 130704}
!128 = !{!"branch_weights", i32 51840, i32 78866}
!129 = !{!"function_entry_count", i64 78865}
!130 = !{!"insn-preds.c:ext_register_operand_1"}
!131 = !{!"branch_weights", i32 212113827, i32 7767369}
!132 = !{!"branch_weights", i32 69, i32 76012}
!133 = !{!"branch_weights", i32 61472, i32 14609}
!134 = !{!"function_entry_count", i64 946591}
!135 = !{!"branch_weights", i32 544285, i32 402308}
!136 = !{!"branch_weights", i32 434232, i32 110054}
!137 = !{!"branch_weights", i32 434232, i32 1}
!138 = !{!"function_entry_count", i64 2016799}
!139 = !{!"branch_weights", i32 1767740, i32 249061}
!140 = !{!"branch_weights", i32 867040, i32 900701}
!141 = !{!"branch_weights", i32 786326, i32 80715}
!142 = !{!"function_entry_count", i64 240}
!143 = !{!"branch_weights", i32 97, i32 145}
!144 = !{!"branch_weights", i32 145, i32 1}
!145 = !{!"insn-preds.c:x86_64_immediate_operand_1"}
!146 = !{!"insn-preds.c:x86_64_zext_immediate_operand_1"}
!147 = !{!148, !148, i64 0}
!148 = !{!"int", !116, i64 0}
!149 = !{!"function_entry_count", i64 5052665}
!150 = !{!"branch_weights", i32 5050818, i32 1, i32 1849, i32 1}
!151 = !{i32 0, i32 2}
!152 = !{!"branch_weights", i32 1849, i32 1}
!153 = !{!"function_entry_count", i64 1848}
!154 = !{!"insn-preds.c:pic_32bit_operand_1"}
!155 = !{!"insn-preds.c:symbolic_operand_1"}
!156 = !{!157, !157, i64 0}
!157 = !{!"any pointer", !116, i64 0}
!158 = !{!"function_entry_count", i64 136959}
!159 = !{!"branch_weights", i32 1, i32 136960}
!160 = !{!"insn-preds.c:pic_symbolic_operand_1"}
!161 = !{!"insn-preds.c:local_symbolic_operand_1"}
!162 = !{!"function_entry_count", i64 361836}
!163 = !{!"branch_weights", i32 361837, i32 1}
!164 = !{!"branch_weights", i32 1, i32 361837}
!165 = !{!"branch_weights", i32 226121, i32 135717}
!166 = !{!"insn-preds.c:constant_call_address_operand_1"}
!167 = !{!"function_entry_count", i64 88}
!168 = !{!"branch_weights", i32 1, i32 89}
!169 = !{!"insn-preds.c:register_no_elim_operand_1"}
!170 = !{!"branch_weights", i32 179, i32 7921}
!171 = !{!"insn-preds.c:call_register_no_elim_operand_1"}
!172 = !{!"function_entry_count", i64 2518}
!173 = !{!"branch_weights", i32 876, i32 1644}
!174 = !{!"function_entry_count", i64 1643}
!175 = !{!"insn-preds.c:index_register_operand_1"}
!176 = !{!"branch_weights", i32 1, i32 1644}
!177 = !{!"branch_weights", i32 1020925, i32 1685100}
!178 = !{!"branch_weights", i32 620, i32 1}
!179 = !{!180, !180, i64 0}
!180 = !{!"short", !116, i64 0}
!181 = !{!"branch_weights", i32 1, i32 178, i32 1}
!182 = !{!"function_entry_count", i64 68939}
!183 = !{!"branch_weights", i32 1, i32 68940}
!184 = !{!"function_entry_count", i64 19}
!185 = !{!"branch_weights", i32 1, i32 20}
!186 = !{!"function_entry_count", i64 868511}
!187 = !{!"branch_weights", i32 543377, i32 325136, i32 1, i32 1}
!188 = !{!"function_entry_count", i64 325135}
!189 = !{!"insn-preds.c:const0_operand_1"}
!190 = !{!"branch_weights", i32 44673, i32 280464}
!191 = !{!"function_entry_count", i64 2301}
!192 = !{!"branch_weights", i32 2252, i32 51}
!193 = !{!"function_entry_count", i64 133284}
!194 = !{!"branch_weights", i32 132107, i32 1179}
!195 = !{!"function_entry_count", i64 404}
!196 = !{!"branch_weights", i32 405, i32 1}
!197 = !{!"insn-preds.c:const248_operand_1"}
!198 = !{!"insn-preds.c:const_0_to_255_mul_8_operand_1"}
!199 = !{!"insn-preds.c:const_pow2_1_to_8_operand_1"}
!200 = !{!"insn-preds.c:const_pow2_1_to_128_operand_1"}
!201 = !{!"insn-preds.c:const_pow2_1_to_32768_operand_1"}
!202 = !{!"function_entry_count", i64 650025}
!203 = !{!"branch_weights", i32 635774, i32 14253}
!204 = !{!"function_entry_count", i64 635773}
!205 = !{!"insn-preds.c:incdec_operand_1"}
!206 = !{!"branch_weights", i32 635774, i32 1}
!207 = !{!"branch_weights", i32 550475, i32 85300}
!208 = !{!"branch_weights", i32 18291, i32 67010}
!209 = !{!"insn-preds.c:zero_extended_scalar_load_operand_1"}
!210 = !{!211, !148, i64 0}
!211 = !{!"rtvec_def", !148, i64 0, !116, i64 8}
!212 = distinct !{!212, !213}
!213 = !{!"llvm.loop.mustprogress"}
!214 = !{!"function_entry_count", i64 913682}
!215 = !{!"branch_weights", i32 1, i32 913683}
!216 = !{!"insn-preds.c:vector_all_ones_operand_1"}
!217 = distinct !{!217, !213}
!218 = !{!"function_entry_count", i64 1140}
!219 = !{!"branch_weights", i32 11, i32 1131}
!220 = !{!"function_entry_count", i64 1040}
!221 = !{!"branch_weights", i32 1, i32 1041}
!222 = !{!"insn-preds.c:nonimmediate_or_sse_const_operand_1"}
!223 = !{!"function_entry_count", i64 177104}
!224 = !{!"branch_weights", i32 172866, i32 4240}
!225 = !{!"function_entry_count", i64 4239}
!226 = !{!"insn-preds.c:no_seg_address_operand_1"}
!227 = !{!"branch_weights", i32 1, i32 4240}
!228 = !{!229, !148, i64 32}
!229 = !{!"ix86_address", !157, i64 0, !157, i64 8, !157, i64 16, !230, i64 24, !148, i64 32}
!230 = !{!"long", !116, i64 0}
!231 = !{!"function_entry_count", i64 18548}
!232 = !{!"branch_weights", i32 3420, i32 15130}
!233 = !{!"function_entry_count", i64 15129}
!234 = !{!"insn-preds.c:aligned_operand_1"}
!235 = !{!"branch_weights", i32 605, i32 14526}
!236 = !{!"branch_weights", i32 1, i32 605}
!237 = !{!"branch_weights", i32 605, i32 1}
!238 = !{!239, !148, i64 28}
!239 = !{!"mem_attrs", !157, i64 0, !157, i64 8, !157, i64 16, !148, i64 24, !148, i64 28, !116, i64 32}
!240 = !{!229, !157, i64 8}
!241 = !{!242, !157, i64 88}
!242 = !{!"rtl_data", !243, i64 0, !244, i64 40, !245, i64 96, !246, i64 112, !248, i64 208, !249, i64 248, !148, i64 312, !157, i64 320, !157, i64 328, !157, i64 336, !157, i64 344, !157, i64 352, !157, i64 360, !157, i64 368, !157, i64 376, !157, i64 384, !157, i64 392, !230, i64 400, !157, i64 408, !157, i64 416, !157, i64 424, !148, i64 432, !148, i64 436, !148, i64 440, !148, i64 444, !148, i64 448, !148, i64 452, !157, i64 456, !116, i64 464, !116, i64 465, !116, i64 466, !116, i64 467, !116, i64 468, !116, i64 469, !116, i64 470, !116, i64 471, !116, i64 472, !116, i64 473, !116, i64 474, !116, i64 475, !116, i64 476, !116, i64 477, !116, i64 478, !116, i64 479, !116, i64 480, !116, i64 481, !116, i64 482, !116, i64 483, !116, i64 484, !116, i64 485}
!243 = !{!"expr_status", !148, i64 0, !148, i64 4, !148, i64 8, !157, i64 16, !157, i64 24, !157, i64 32}
!244 = !{!"emit_status", !148, i64 0, !148, i64 4, !157, i64 8, !157, i64 16, !157, i64 24, !148, i64 32, !148, i64 36, !148, i64 40, !148, i64 44, !157, i64 48}
!245 = !{!"varasm_status", !157, i64 0, !148, i64 8}
!246 = !{!"incoming_args", !148, i64 0, !148, i64 4, !148, i64 8, !157, i64 16, !247, i64 24, !157, i64 88}
!247 = !{!"ix86_args", !148, i64 0, !148, i64 4, !148, i64 8, !148, i64 12, !148, i64 16, !148, i64 20, !148, i64 24, !148, i64 28, !148, i64 32, !148, i64 36, !148, i64 40, !148, i64 44, !148, i64 48, !148, i64 52, !148, i64 56, !148, i64 60}
!248 = !{!"function_subsections", !157, i64 0, !157, i64 8, !157, i64 16, !157, i64 24, !157, i64 32}
!249 = !{!"rtl_eh", !157, i64 0, !157, i64 8, !157, i64 16, !157, i64 24, !157, i64 32, !157, i64 40, !116, i64 48}
!250 = !{!229, !230, i64 24}
!251 = !{!229, !157, i64 0}
!252 = !{!229, !157, i64 16}
!253 = !{!"insn-preds.c:memory_displacement_operand_1"}
!254 = !{!"function_entry_count", i64 434313}
!255 = !{!"branch_weights", i32 84600, i32 349715}
!256 = !{!"function_entry_count", i64 349714}
!257 = !{!"insn-preds.c:memory_displacement_only_operand_1"}
!258 = !{!"branch_weights", i32 1, i32 349715}
!259 = !{!"insn-preds.c:cmpxchg8b_pic_memory_operand_1"}
!260 = !{!"insn-preds.c:fcmov_comparison_operator_1"}
!261 = !{!"function_entry_count", i64 96}
!262 = !{!"function_entry_count", i64 192}
!263 = !{!"branch_weights", i32 193, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!264 = !{!"function_entry_count", i64 241812}
!265 = !{!"branch_weights", i32 233195, i32 8620}
!266 = !{!"branch_weights", i32 233194, i32 1}
!267 = !{!"function_entry_count", i64 1788410}
!268 = !{!"branch_weights", i32 553869, i32 1234543}
!269 = !{!"function_entry_count", i64 1234542}
!270 = !{!"insn-preds.c:ix86_comparison_operator_1"}
!271 = !{!"branch_weights", i32 4822, i32 -1318216478}
!272 = !{!"branch_weights", i32 1, i32 636079, i32 564277, i32 806, i32 1012, i32 1829, i32 8128, i32 20551, i32 1, i32 1, i32 1, i32 1037, i32 832}
!273 = !{!"function_entry_count", i64 6037}
!274 = !{!"branch_weights", i32 3135, i32 2904, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!275 = !{!"branch_weights", i32 1, i32 2904}
!276 = !{!"branch_weights", i32 2904, i32 1}
!277 = !{!"function_entry_count", i64 2903}
!278 = !{!"insn-preds.c:ix86_carry_flag_operator_1"}
!279 = !{!"branch_weights", i32 5809, i32 8433216}
!280 = !{!"branch_weights", i32 2904, i32 2905, i32 8433216}
!281 = !{!"function_entry_count", i64 180185}
!282 = !{!"branch_weights", i32 179795, i32 271, i32 122, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!283 = !{!"branch_weights", i32 392, i32 1}
!284 = !{!"branch_weights", i32 1, i32 180186}
!285 = !{!"function_entry_count", i64 443864}
!286 = !{!"branch_weights", i32 436401, i32 7465, i32 1, i32 1, i32 1}
!287 = !{!"branch_weights", i32 7465, i32 1}
!288 = !{!"function_entry_count", i64 391}
!289 = !{!"branch_weights", i32 1, i32 392}
!290 = !{!"function_entry_count", i64 5439}
!291 = !{!"branch_weights", i32 1156, i32 2130, i32 1, i32 1743, i32 147, i32 12, i32 1, i32 1, i32 1, i32 1, i32 1, i32 5, i32 1, i32 1, i32 1, i32 1, i32 68, i32 1, i32 186, i32 1, i32 1}
!292 = !{!"branch_weights", i32 1, i32 4285}
!293 = !{!"function_entry_count", i64 1}
!294 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!295 = !{!"function_entry_count", i64 60729}
!296 = !{!"branch_weights", i32 -1296182154, i32 818220845, i32 409066663, i32 61879563, i32 2551673, i32 14317392, i32 70876}
!297 = !{!"branch_weights", i32 18421, i32 1}
!298 = !{!"function_entry_count", i64 786325}
!299 = !{!"branch_weights", i32 786326, i32 1}
!300 = !{!"function_entry_count", i64 47}
!301 = !{!"branch_weights", i32 48, i32 1, i32 1}
!302 = !{!"function_entry_count", i64 171789}
!303 = !{!"branch_weights", i32 171790, i32 1}
!304 = !{!"insn-preds.c:emms_operation_1"}
!305 = !{!"branch_weights", i32 1, i32 171790}
!306 = distinct !{!306, !213}
!307 = !{!"insn-preds.c:vzeroall_operation_1"}
!308 = distinct !{!308, !213}
!309 = !{!"insn-preds.c:vzeroupper_operation_1"}
!310 = distinct !{!310, !213}
!311 = !{!"insn-preds.c:avx_vbroadcast_operand_1"}
!312 = distinct !{!312, !213}
!313 = !{!"function_entry_count", i64 8250740}
!314 = !{!"branch_weights", i32 2431, i32 1, i32 2679463, i32 1, i32 1, i32 1469, i32 1, i32 1, i32 3736, i32 135, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 791042, i32 1, i32 21172, i32 1, i32 6631, i32 1, i32 1, i32 465, i32 90874, i32 701181, i32 1, i32 1, i32 1976273, i32 1975881}
!315 = !{!"branch_weights", i32 521, i32 790522}
!316 = !{!"branch_weights", i32 790426, i32 97}
!317 = !{!"branch_weights", i32 97, i32 1}
!318 = !{!"function_entry_count", i64 7298001}
!319 = !{!"branch_weights", i32 1737367, i32 1, i32 701181, i32 1, i32 90874, i32 21172, i32 1, i32 6631, i32 1, i32 1, i32 1, i32 1, i32 1, i32 465, i32 1, i32 1, i32 1974878, i32 1975074, i32 1, i32 261, i32 790060, i32 49}
!320 = !{!"branch_weights", i32 1, i32 465}
!321 = !{!"branch_weights", i32 790060, i32 1}
!322 = !{!"branch_weights", i32 1, i32 49}
!323 = !{!"function_entry_count", i64 947402}
!324 = !{!"branch_weights", i32 2877, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 944527, i32 1, i32 1}
!325 = !{i8 0, i8 2}
!326 = !{!"insn-preds.c:satisfies_constraint_I"}
!327 = !{!"insn-preds.c:satisfies_constraint_J"}
!328 = !{!"insn-preds.c:satisfies_constraint_K"}
!329 = !{!"insn-preds.c:satisfies_constraint_L"}
!330 = !{!"insn-preds.c:satisfies_constraint_M"}
!331 = !{!"insn-preds.c:satisfies_constraint_N"}
!332 = !{!"insn-preds.c:satisfies_constraint_O"}
!333 = !{!"insn-preds.c:satisfies_constraint_G"}
!334 = !{!"function_entry_count", i64 944526}
!335 = !{!"insn-preds.c:satisfies_constraint_C"}
!336 = !{!"insn-preds.c:satisfies_constraint_e"}
!337 = !{!"insn-preds.c:satisfies_constraint_Z"}
!338 = !{!"function_entry_count", i64 5337}
!339 = !{!"branch_weights", i32 1, i32 1469, i32 1, i32 1, i32 3736, i32 135, i32 1, i32 1}
