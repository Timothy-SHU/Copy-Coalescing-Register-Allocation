; ModuleID = 'caller-save.c'
source_filename = "caller-save.c"
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.insn_chain = type { ptr, ptr, ptr, ptr, i32, i8, %struct.bitmap_head_def, %struct.bitmap_head_def, ptr, i32, i64 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.saved_hard_reg = type { i32, i32, i32, ptr, i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@caller_save_initialized_p = dso_local local_unnamed_addr global i8 0, align 1
@no_caller_save_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@call_fixed_reg_set = external local_unnamed_addr global i64, align 8
@regno_save_mode = internal unnamed_addr global [53 x [5 x i32]] zeroinitializer, align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@.str = private unnamed_addr constant [14 x i8] c"caller-save.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@test_reg = internal global ptr null, align 8
@test_mem = internal global ptr null, align 8
@savepat = internal global ptr null, align 8
@restpat = internal global ptr null, align 8
@saveinsn = internal global ptr null, align 8
@restinsn = internal global ptr null, align 8
@regno_save_mem = internal unnamed_addr global [53 x [5 x ptr]] zeroinitializer, align 16
@save_slots_num = internal unnamed_addr global i32 0, align 4
@max_regno = external local_unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@reg_info_p = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_ira_share_save_slots = external local_unnamed_addr global i32, align 4
@reload_insn_chain = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@hard_reg_map = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@saved_regs_num = internal unnamed_addr global i32 0, align 4
@all_saved_regs = internal global [53 x ptr] zeroinitializer, align 16
@save_slots = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%d uses slot of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d uses a slot from prev iteration\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%d uses a new slot\0A\00", align 1
@hard_regs_saved = internal unnamed_addr global i64 0, align 8
@n_regs_saved = internal unnamed_addr global i32 0, align 4
@referenced_regs = internal unnamed_addr global i64 0, align 8
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@gt_ggc_r_gt_caller_save_h = dso_local local_unnamed_addr constant [7 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @restinsn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @saveinsn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @test_mem, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @test_reg, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @restpat, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @savepat, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@cached_reg_save_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16
@cached_reg_restore_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@reg_equiv_mem = external local_unnamed_addr global ptr, align 8
@reg_equiv_address = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_caller_save() local_unnamed_addr #0 {
  %1 = load i8, ptr @caller_save_initialized_p, align 1, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %117

3:                                                ; preds = %0
  store i8 1, ptr @caller_save_initialized_p, align 1, !tbaa !5
  store i64 0, ptr @no_caller_save_reg_set, align 8, !tbaa !8
  br label %6

4:                                                ; preds = %41
  %5 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !8
  br label %44

6:                                                ; preds = %3, %41
  %7 = phi i64 [ 0, %3 ], [ %42, %41 ]
  %8 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !8
  %13 = shl nuw nsw i64 1, %7
  %14 = and i64 %12, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = trunc i64 %7 to i32
  %18 = add i32 %17, -17
  %19 = icmp ult i32 %18, 2
  %20 = trunc i64 %7 to i32
  br label %21

21:                                               ; preds = %16, %36
  %22 = phi i64 [ 1, %16 ], [ %37, %36 ]
  %23 = icmp ne i64 %22, 1
  %24 = or i1 %19, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @choose_hard_reg_mode(i32 noundef %20, i32 noundef 1, i8 noundef zeroext 0) #18
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ 0, %21 ], [ %26, %25 ]
  %29 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 %22
  store i32 %28, ptr %29, align 4, !tbaa !10
  %30 = icmp eq i32 %28, 0
  %31 = icmp eq i64 %22, 1
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !8
  %35 = or i64 %34, %13
  store i64 %35, ptr @call_fixed_reg_set, align 8, !tbaa !8
  br label %36

36:                                               ; preds = %27, %33
  %37 = add nuw nsw i64 %22, 1
  %38 = icmp eq i64 %37, 5
  br i1 %38, label %41, label %21, !llvm.loop !12

39:                                               ; preds = %11, %6
  %40 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 1
  store i32 0, ptr %40, align 4, !tbaa !10
  br label %41

41:                                               ; preds = %36, %39
  %42 = add nuw nsw i64 %7, 1
  %43 = icmp eq i64 %42, 53
  br i1 %43, label %4, label %6, !llvm.loop !14

44:                                               ; preds = %4, %49
  %45 = phi i64 [ 0, %4 ], [ %50, %49 ]
  %46 = shl nuw nsw i64 1, %45
  %47 = and i64 %5, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, 53
  br i1 %51, label %52, label %44, !llvm.loop !15

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @.str.1) #18
  br label %55

53:                                               ; preds = %44
  %54 = trunc i64 %45 to i32
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 53, %52 ], [ %54, %53 ]
  %57 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %56) #18
  br label %58

58:                                               ; preds = %55, %74
  %59 = phi i32 [ 65536, %55 ], [ %75, %74 ]
  %60 = zext nneg i32 %59 to i64
  %61 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %60) #18
  %62 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %57, ptr noundef %61) #18
  br label %63

63:                                               ; preds = %58, %71
  %64 = phi i64 [ 0, %58 ], [ %72, %71 ]
  %65 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %64, i64 1
  %66 = load i32, ptr %65, align 4, !tbaa !10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %66, ptr noundef %62, i8 noundef zeroext 0) #18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63, %68
  %72 = add nuw nsw i64 %64, 1
  %73 = icmp eq i64 %72, 53
  br i1 %73, label %77, label %63, !llvm.loop !16

74:                                               ; preds = %68
  %75 = lshr i32 %59, 1
  %76 = icmp ult i32 %59, 2
  br i1 %76, label %77, label %58, !llvm.loop !17

77:                                               ; preds = %74, %71
  %78 = phi ptr [ %62, %71 ], [ %57, %74 ]
  %79 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #18
  store ptr %79, ptr @test_reg, align 8, !tbaa !18
  %80 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %78) #18
  store ptr %80, ptr @test_mem, align 8, !tbaa !18
  %81 = load ptr, ptr @test_reg, align 8, !tbaa !18
  %82 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %80, ptr noundef %81) #18
  store ptr %82, ptr @savepat, align 8, !tbaa !18
  %83 = load ptr, ptr @test_reg, align 8, !tbaa !18
  %84 = load ptr, ptr @test_mem, align 8, !tbaa !18
  %85 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %83, ptr noundef %84) #18
  store ptr %85, ptr @restpat, align 8, !tbaa !18
  %86 = load ptr, ptr @savepat, align 8, !tbaa !18
  %87 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %86, i32 noundef -1, ptr noundef null) #18
  store ptr %87, ptr @saveinsn, align 8, !tbaa !18
  %88 = load ptr, ptr @restpat, align 8, !tbaa !18
  %89 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %88, i32 noundef -1, ptr noundef null) #18
  store ptr %89, ptr @restinsn, align 8, !tbaa !18
  br label %90

90:                                               ; preds = %77, %114
  %91 = phi i64 [ 0, %77 ], [ %115, %114 ]
  %92 = shl nuw i64 1, %91
  %93 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %91
  %94 = trunc i64 %91 to i32
  br label %95

95:                                               ; preds = %90, %111
  %96 = phi i64 [ 1, %90 ], [ %112, %111 ]
  %97 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %91, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !10
  %99 = tail call fastcc i32 @reg_save_code(i32 noundef %94, i32 noundef %98) #19
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  store i32 0, ptr %97, align 4, !tbaa !10
  %102 = icmp eq i64 %96, 1
  br i1 %102, label %103, label %111

103:                                              ; preds = %101
  %104 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !8
  %105 = or i64 %104, %92
  store i64 %105, ptr @call_fixed_reg_set, align 8, !tbaa !8
  %106 = load i8, ptr %93, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i64, ptr @no_caller_save_reg_set, align 8, !tbaa !8
  %110 = or i64 %109, %92
  store i64 %110, ptr @no_caller_save_reg_set, align 8, !tbaa !8
  br label %111

111:                                              ; preds = %95, %103, %108, %101
  %112 = add nuw nsw i64 %96, 1
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %114, label %95, !llvm.loop !20

114:                                              ; preds = %111
  %115 = add nuw nsw i64 %91, 1
  %116 = icmp eq i64 %115, 53
  br i1 %116, label %117, label %90, !llvm.loop !21

117:                                              ; preds = %114, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @choose_hard_reg_mode(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reg_save_code(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_save_code, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %1) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  store i32 -1, ptr %5, align 4, !tbaa !10
  %12 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 -1, ptr %12, align 4, !tbaa !10
  br label %53

13:                                               ; preds = %8
  %14 = load ptr, ptr @test_reg, align 8, !tbaa !18
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #19
  tail call void @df_ref_change_reg_with_loc(i32 noundef %15, i32 noundef %0, ptr noundef %14) #18
  %16 = load ptr, ptr @test_reg, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  store i32 %0, ptr %17, align 8, !tbaa !5
  %18 = load i32, ptr %16, align 8
  %19 = shl i32 %1, 16
  %20 = and i32 %19, 16711680
  %21 = and i32 %18, -16711681
  %22 = or disjoint i32 %21, %20
  store i32 %22, ptr %16, align 8
  %23 = load ptr, ptr @test_mem, align 8, !tbaa !18
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -16711681
  %26 = or disjoint i32 %25, %20
  store i32 %26, ptr %23, align 8
  %27 = load ptr, ptr @saveinsn, align 8, !tbaa !18
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1, i32 1
  store i32 -1, ptr %28, align 8, !tbaa !5
  %29 = load ptr, ptr @restinsn, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1, i32 1
  store i32 -1, ptr %30, align 8, !tbaa !5
  %31 = tail call fastcc i32 @recog_memoized(ptr noundef %27) #19
  store i32 %31, ptr %5, align 4, !tbaa !10
  %32 = load ptr, ptr @restinsn, align 8, !tbaa !18
  %33 = tail call fastcc i32 @recog_memoized(ptr noundef %32) #19
  %34 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 %33, ptr %34, align 4, !tbaa !10
  %35 = load i32, ptr %5, align 4, !tbaa !10
  %36 = icmp eq i32 %35, -1
  %37 = icmp eq i32 %33, -1
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %13
  %40 = load ptr, ptr @saveinsn, align 8, !tbaa !18
  tail call void @extract_insn(ptr noundef %40) #18
  %41 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %42 = load ptr, ptr @restinsn, align 8, !tbaa !18
  tail call void @extract_insn(ptr noundef %42) #18
  %43 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %44 = and i32 %41, 255
  %45 = and i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %13
  store i32 -1, ptr %5, align 4, !tbaa !10
  store i32 -1, ptr %34, align 4, !tbaa !10
  br label %53

48:                                               ; preds = %39
  %49 = load i32, ptr %5, align 4, !tbaa !10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.1) #18
  %52 = load i32, ptr %5, align 4, !tbaa !10
  br label %53

53:                                               ; preds = %51, %48, %47, %2, %11
  %54 = phi i32 [ -1, %11 ], [ %6, %2 ], [ -1, %47 ], [ %49, %48 ], [ %52, %51 ]
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_save_areas() local_unnamed_addr #3 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = mul nuw nsw i64 %2, 40
  %4 = getelementptr i8, ptr getelementptr inbounds ([53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 0, i64 1), i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !tbaa !18
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 53
  br i1 %6, label %7, label %1, !llvm.loop !22

7:                                                ; preds = %1
  store i32 0, ptr @save_slots_num, align 4, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_save_areas() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca [53 x ptr], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca [53 x ptr], align 16
  %7 = load i32, ptr @max_regno, align 4, !tbaa !10
  %8 = icmp sgt i32 %7, 53
  br i1 %8, label %9, label %51

9:                                                ; preds = %0
  %10 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %11 = load ptr, ptr @reg_info_p, align 8
  %12 = load ptr, ptr @regno_reg_rtx, align 8
  %13 = zext nneg i32 %7 to i64
  br label %14

14:                                               ; preds = %9, %47
  %15 = phi i64 [ 53, %9 ], [ %49, %47 ]
  %16 = phi i64 [ 0, %9 ], [ %48, %47 ]
  %17 = getelementptr inbounds i16, ptr %10, i64 %15
  %18 = load i16, ptr %17, align 2, !tbaa !23
  %19 = sext i16 %18 to i32
  %20 = icmp sgt i16 %18, -1
  br i1 %20, label %21, label %47

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.reg_info_t, ptr %11, i64 %15, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !25
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = getelementptr inbounds ptr, ptr %12, i64 %15
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = tail call fastcc i32 @end_hard_regno(i32 noundef %30, i32 noundef %19) #19
  %32 = icmp ugt i32 %31, %19
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = zext nneg i32 %19 to i64
  %35 = zext i32 %31 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %34, %33 ], [ %45, %36 ]
  %38 = phi i64 [ %16, %33 ], [ %44, %36 ]
  %39 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %37
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp eq i8 %40, 0
  %42 = shl nuw i64 1, %37
  %43 = select i1 %41, i64 0, i64 %42
  %44 = or i64 %43, %38
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %35
  br i1 %46, label %47, label %36, !llvm.loop !27

47:                                               ; preds = %36, %25, %14, %21
  %48 = phi i64 [ %16, %21 ], [ %16, %14 ], [ %16, %25 ], [ %44, %36 ]
  %49 = add nuw nsw i64 %15, 1
  %50 = icmp eq i64 %49, %13
  br i1 %50, label %51, label %14, !llvm.loop !28

51:                                               ; preds = %47, %0
  %52 = phi i64 [ 0, %0 ], [ %48, %47 ]
  %53 = load i32, ptr @optimize, align 4, !tbaa !10
  %54 = icmp ne i32 %53, 0
  %55 = load i32, ptr @flag_ira_share_save_slots, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %510

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %6) #20
  tail call fastcc void @initiate_saved_hard_regs() #19
  %59 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !18
  %60 = icmp eq ptr %59, null
  br i1 %60, label %187, label %61

61:                                               ; preds = %58, %185
  %62 = phi ptr [ %65, %185 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.insn_chain, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !29
  %65 = load ptr, ptr %62, align 8, !tbaa !32
  %66 = load i32, ptr %64, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %185

69:                                               ; preds = %61
  %70 = call ptr @find_reg_note(ptr noundef nonnull %64, i32 noundef 27, ptr noundef null) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %185

72:                                               ; preds = %69
  %73 = load i32, ptr @optimize_size, align 4, !tbaa !10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @cfun, align 8, !tbaa !18
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !33
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 8
  %84 = load i64, ptr %83, align 8, !tbaa !37
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %78, %75
  %87 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 11
  %90 = load i32, ptr %89, align 8, !tbaa !39
  %91 = add i32 %90, 9
  %92 = icmp ult i32 %91, 19
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = sdiv i32 %90, 10
  br label %95

95:                                               ; preds = %93, %86, %72, %78
  %96 = phi i32 [ 1000, %78 ], [ 1000, %72 ], [ %94, %93 ], [ 1, %86 ]
  store i64 0, ptr %3, align 8, !tbaa !8
  %97 = getelementptr inbounds %struct.insn_chain, ptr %62, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %97) #18
  %98 = load i64, ptr @call_used_reg_set, align 8, !tbaa !8
  store i64 0, ptr %4, align 8, !tbaa !8
  %99 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  call void @note_stores(ptr noundef %100, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %4) #18
  %101 = load i32, ptr %64, align 8
  %102 = and i32 %101, 16777216
  %103 = icmp ne i32 %102, 0
  %104 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8
  %105 = icmp ne ptr %104, null
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  call void @mark_set_regs(ptr noundef nonnull %104, ptr poison, ptr noundef nonnull %4) #19
  br label %108

108:                                              ; preds = %107, %95
  %109 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !8
  %110 = load i64, ptr %4, align 8, !tbaa !8
  %111 = or i64 %110, %109
  %112 = xor i64 %111, -1
  %113 = and i64 %98, %112
  %114 = load i64, ptr %3, align 8, !tbaa !8
  %115 = and i64 %113, %114
  store i64 %115, ptr %3, align 8, !tbaa !8
  br label %116

116:                                              ; preds = %108, %132
  %117 = phi i64 [ 0, %108 ], [ %133, %132 ]
  %118 = load i64, ptr %3, align 8, !tbaa !8
  %119 = shl nuw nsw i64 1, %117
  %120 = and i64 %118, %119
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %117
  %124 = load ptr, ptr %123, align 8, !tbaa !18
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.saved_hard_reg, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !40
  %129 = add nsw i32 %128, %96
  store i32 %129, ptr %127, align 8, !tbaa !40
  br label %132

130:                                              ; preds = %122
  %131 = trunc i64 %117 to i32
  call fastcc void @new_saved_hard_reg(i32 noundef %131, i32 noundef %96) #19
  br label %132

132:                                              ; preds = %116, %130, %126
  %133 = add nuw nsw i64 %117, 1
  %134 = icmp eq i64 %133, 53
  br i1 %134, label %135, label %116, !llvm.loop !42

135:                                              ; preds = %132
  store i32 53, ptr %1, align 4, !tbaa !10
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %97, ptr noundef nonnull %1) #19
  %136 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !43
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %185, label %138

138:                                              ; preds = %135, %182
  %139 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %140 = load i32, ptr %1, align 4, !tbaa !10
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i16, ptr %139, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !23
  %144 = icmp slt i16 %143, 0
  br i1 %144, label %182, label %145

145:                                              ; preds = %138
  %146 = zext nneg i16 %143 to i64
  %147 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !18
  %148 = getelementptr inbounds ptr, ptr %147, i64 %141
  %149 = load ptr, ptr %148, align 8, !tbaa !18
  %150 = load i32, ptr %149, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %146, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %182, label %157

157:                                              ; preds = %145
  %158 = zext i8 %155 to i64
  %159 = zext nneg i16 %143 to i64
  %160 = add nuw nsw i64 %158, %159
  br label %161

161:                                              ; preds = %157, %179
  %162 = phi i64 [ %146, %157 ], [ %180, %179 ]
  %163 = shl nuw i64 1, %162
  %164 = and i64 %163, %113
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %179, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %162
  %168 = load ptr, ptr %167, align 8, !tbaa !18
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.saved_hard_reg, ptr %168, i64 0, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !40
  %173 = add nsw i32 %172, %96
  store i32 %173, ptr %171, align 8, !tbaa !40
  br label %176

174:                                              ; preds = %166
  %175 = trunc i64 %162 to i32
  call fastcc void @new_saved_hard_reg(i32 noundef %175, i32 noundef %96) #19
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i64, ptr %3, align 8, !tbaa !8
  %178 = or i64 %177, %163
  store i64 %178, ptr %3, align 8, !tbaa !8
  br label %179

179:                                              ; preds = %161, %176
  %180 = add nuw nsw i64 %162, 1
  %181 = icmp ult i64 %180, %160
  br i1 %181, label %161, label %182, !llvm.loop !44

182:                                              ; preds = %179, %145, %138
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %1) #19
  %183 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !43
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %138, !llvm.loop !45

185:                                              ; preds = %182, %135, %61, %69
  %186 = icmp eq ptr %65, null
  br i1 %186, label %187, label %61, !llvm.loop !46

187:                                              ; preds = %185, %58
  %188 = load i32, ptr @saved_regs_num, align 4, !tbaa !10
  %189 = mul nsw i32 %188, %188
  %190 = zext nneg i32 %189 to i64
  %191 = call ptr @xmalloc(i64 noundef %190) #18
  %192 = load i32, ptr @saved_regs_num, align 4, !tbaa !10
  %193 = mul nsw i32 %192, %192
  %194 = zext nneg i32 %193 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %191, i8 0, i64 %194, i1 false)
  %195 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !18
  %196 = icmp eq ptr %195, null
  br i1 %196, label %336, label %197

197:                                              ; preds = %187, %332
  %198 = phi ptr [ %201, %332 ], [ %195, %187 ]
  %199 = getelementptr inbounds %struct.insn_chain, ptr %198, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !29
  %201 = load ptr, ptr %198, align 8, !tbaa !32
  %202 = load i32, ptr %200, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 10
  br i1 %204, label %205, label %332

205:                                              ; preds = %197
  %206 = call ptr @find_reg_note(ptr noundef nonnull %200, i32 noundef 27, ptr noundef null) #18
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %332

208:                                              ; preds = %205
  store i64 0, ptr %3, align 8, !tbaa !8
  %209 = getelementptr inbounds %struct.insn_chain, ptr %198, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %209) #18
  %210 = load i64, ptr @call_used_reg_set, align 8, !tbaa !8
  store i64 0, ptr %4, align 8, !tbaa !8
  %211 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  call void @note_stores(ptr noundef %212, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %4) #18
  %213 = load i32, ptr %200, align 8
  %214 = and i32 %213, 16777216
  %215 = icmp ne i32 %214, 0
  %216 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8
  %217 = icmp ne ptr %216, null
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  call void @mark_set_regs(ptr noundef nonnull %216, ptr poison, ptr noundef nonnull %4) #19
  br label %220

220:                                              ; preds = %219, %208
  %221 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !8
  %222 = load i64, ptr %4, align 8, !tbaa !8
  %223 = or i64 %222, %221
  %224 = xor i64 %223, -1
  %225 = and i64 %210, %224
  %226 = load i64, ptr %3, align 8, !tbaa !8
  %227 = and i64 %225, %226
  store i64 %227, ptr %3, align 8, !tbaa !8
  br label %228

228:                                              ; preds = %220, %246
  %229 = phi i64 [ 0, %220 ], [ %248, %246 ]
  %230 = phi i32 [ 0, %220 ], [ %247, %246 ]
  %231 = load i64, ptr %3, align 8, !tbaa !8
  %232 = shl nuw nsw i64 1, %229
  %233 = and i64 %231, %232
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %246, label %235

235:                                              ; preds = %228
  %236 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %229
  %237 = load ptr, ptr %236, align 8, !tbaa !18
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #18
  %240 = load ptr, ptr %236, align 8, !tbaa !18
  br label %241

241:                                              ; preds = %235, %239
  %242 = phi ptr [ %237, %235 ], [ %240, %239 ]
  %243 = add nsw i32 %230, 1
  %244 = sext i32 %230 to i64
  %245 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %244
  store ptr %242, ptr %245, align 8, !tbaa !18
  br label %246

246:                                              ; preds = %228, %241
  %247 = phi i32 [ %243, %241 ], [ %230, %228 ]
  %248 = add nuw nsw i64 %229, 1
  %249 = icmp eq i64 %248, 53
  br i1 %249, label %250, label %228, !llvm.loop !47

250:                                              ; preds = %246
  store i32 53, ptr %1, align 4, !tbaa !10
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %209, ptr noundef nonnull %1) #19
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !43
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %255 = load ptr, ptr @regno_reg_rtx, align 8
  br label %262

256:                                              ; preds = %300, %250
  %257 = phi i32 [ %247, %250 ], [ %301, %300 ]
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %332

259:                                              ; preds = %256
  %260 = load i32, ptr @saved_regs_num, align 4
  %261 = zext nneg i32 %257 to i64
  br label %304

262:                                              ; preds = %253, %300
  %263 = phi i32 [ %247, %253 ], [ %301, %300 ]
  %264 = load i32, ptr %1, align 4, !tbaa !10
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i16, ptr %254, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !23
  %268 = icmp slt i16 %267, 0
  br i1 %268, label %300, label %269

269:                                              ; preds = %262
  %270 = zext nneg i16 %267 to i64
  %271 = getelementptr inbounds ptr, ptr %255, i64 %265
  %272 = load ptr, ptr %271, align 8, !tbaa !18
  %273 = load i32, ptr %272, align 8
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %270, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !5
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %300, label %280

280:                                              ; preds = %269
  %281 = zext i8 %278 to i64
  %282 = zext nneg i16 %267 to i64
  %283 = add nuw nsw i64 %281, %282
  br label %284

284:                                              ; preds = %280, %296
  %285 = phi i64 [ %270, %280 ], [ %298, %296 ]
  %286 = phi i32 [ %263, %280 ], [ %297, %296 ]
  %287 = shl nuw i64 1, %285
  %288 = and i64 %287, %225
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %285
  %292 = load ptr, ptr %291, align 8, !tbaa !18
  %293 = add nsw i32 %286, 1
  %294 = sext i32 %286 to i64
  %295 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %294
  store ptr %292, ptr %295, align 8, !tbaa !18
  br label %296

296:                                              ; preds = %284, %290
  %297 = phi i32 [ %293, %290 ], [ %286, %284 ]
  %298 = add nuw nsw i64 %285, 1
  %299 = icmp ult i64 %298, %283
  br i1 %299, label %284, label %300, !llvm.loop !48

300:                                              ; preds = %296, %269, %262
  %301 = phi i32 [ %263, %262 ], [ %263, %269 ], [ %297, %296 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %1) #19
  %302 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !43
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %256, label %262, !llvm.loop !49

304:                                              ; preds = %259, %329
  %305 = phi i64 [ 0, %259 ], [ %330, %329 ]
  %306 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !18
  br label %308

308:                                              ; preds = %304, %326
  %309 = phi i64 [ 0, %304 ], [ %327, %326 ]
  %310 = icmp eq i64 %305, %309
  br i1 %310, label %326, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %309
  %313 = load ptr, ptr %312, align 8, !tbaa !18
  %314 = load i32, ptr %313, align 8, !tbaa !50
  %315 = mul nsw i32 %260, %314
  %316 = load i32, ptr %307, align 8, !tbaa !50
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, ptr %191, i64 %318
  store i8 1, ptr %319, align 1, !tbaa !5
  %320 = load i32, ptr %307, align 8, !tbaa !50
  %321 = mul nsw i32 %320, %260
  %322 = load i32, ptr %313, align 8, !tbaa !50
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %191, i64 %324
  store i8 1, ptr %325, align 1, !tbaa !5
  br label %326

326:                                              ; preds = %308, %311
  %327 = add nuw nsw i64 %309, 1
  %328 = icmp eq i64 %327, %261
  br i1 %328, label %329, label %308, !llvm.loop !51

329:                                              ; preds = %326
  %330 = add nuw nsw i64 %305, 1
  %331 = icmp eq i64 %330, %261
  br i1 %331, label %332, label %304, !llvm.loop !52

332:                                              ; preds = %329, %256, %197, %205
  %333 = icmp eq ptr %201, null
  br i1 %333, label %334, label %197, !llvm.loop !53

334:                                              ; preds = %332
  %335 = load i32, ptr @saved_regs_num, align 4, !tbaa !10
  br label %336

336:                                              ; preds = %334, %187
  %337 = phi i32 [ %335, %334 ], [ %192, %187 ]
  %338 = sext i32 %337 to i64
  call void @spec_qsort(ptr noundef nonnull @all_saved_regs, i64 noundef %338, i64 noundef 8, ptr noundef nonnull @saved_hard_reg_compare_func) #18
  %339 = load i32, ptr @save_slots_num, align 4, !tbaa !10
  %340 = sext i32 %339 to i64
  %341 = shl nsw i64 %340, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 @save_slots, i64 %341, i1 false)
  store i32 0, ptr @save_slots_num, align 4, !tbaa !10
  %342 = load i32, ptr @saved_regs_num, align 4, !tbaa !10
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %509

344:                                              ; preds = %336, %502
  %345 = phi i64 [ %504, %502 ], [ 0, %336 ]
  %346 = phi i32 [ %508, %502 ], [ -1, %336 ]
  %347 = phi i32 [ %505, %502 ], [ %342, %336 ]
  %348 = phi i32 [ %503, %502 ], [ %339, %336 ]
  %349 = add i32 %346, 1
  %350 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %345
  %351 = load ptr, ptr %350, align 8, !tbaa !18
  %352 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !54
  %354 = icmp eq i64 %345, 0
  br i1 %354, label %421, label %355

355:                                              ; preds = %344
  %356 = zext i32 %353 to i64
  %357 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %356, i64 1
  br label %358

358:                                              ; preds = %355, %418
  %359 = phi i64 [ 0, %355 ], [ %419, %418 ]
  %360 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !18
  %362 = getelementptr inbounds %struct.saved_hard_reg, ptr %361, i64 0, i32 4
  %363 = load i32, ptr %362, align 8, !tbaa !55
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %418, label %365

365:                                              ; preds = %358
  %366 = load i32, ptr %351, align 8, !tbaa !50
  %367 = mul nsw i32 %366, %347
  %368 = trunc i64 %359 to i32
  br label %369

369:                                              ; preds = %365, %380
  %370 = phi i32 [ %368, %365 ], [ %382, %380 ]
  %371 = zext nneg i32 %370 to i64
  %372 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !18
  %374 = load i32, ptr %373, align 8, !tbaa !50
  %375 = add nsw i32 %367, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, ptr %191, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !5
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %418

380:                                              ; preds = %369
  %381 = getelementptr inbounds %struct.saved_hard_reg, ptr %373, i64 0, i32 5
  %382 = load i32, ptr %381, align 4, !tbaa !56
  %383 = icmp sgt i32 %382, -1
  br i1 %383, label %369, label %384, !llvm.loop !57

384:                                              ; preds = %380
  %385 = load i32, ptr %357, align 4, !tbaa !10
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !5
  %389 = getelementptr inbounds %struct.saved_hard_reg, ptr %361, i64 0, i32 1
  %390 = load i32, ptr %389, align 4, !tbaa !54
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %391, i64 1
  %393 = load i32, ptr %392, align 4, !tbaa !10
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !5
  %397 = icmp ugt i8 %388, %396
  br i1 %397, label %418, label %398

398:                                              ; preds = %384
  %399 = trunc i64 %359 to i32
  %400 = getelementptr inbounds %struct.saved_hard_reg, ptr %361, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !58
  %402 = sext i32 %353 to i64
  %403 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %402, i64 1
  %404 = load i32, ptr %403, align 4, !tbaa !10
  %405 = call ptr @adjust_address_1(ptr noundef %401, i32 noundef %404, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  %406 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %405, ptr %406, align 8, !tbaa !58
  %407 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %356, i64 1
  store ptr %405, ptr %407, align 8, !tbaa !18
  %408 = getelementptr inbounds %struct.saved_hard_reg, ptr %361, i64 0, i32 5
  %409 = load i32, ptr %408, align 4, !tbaa !56
  %410 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 5
  store i32 %409, ptr %410, align 4, !tbaa !56
  %411 = trunc i64 %345 to i32
  store i32 %411, ptr %408, align 4, !tbaa !56
  %412 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %413 = icmp eq ptr %412, null
  br i1 %413, label %421, label %414

414:                                              ; preds = %398
  %415 = getelementptr inbounds %struct.saved_hard_reg, ptr %361, i64 0, i32 1
  %416 = load i32, ptr %415, align 4, !tbaa !54
  %417 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %412, ptr noundef nonnull @.str.2, i32 noundef %353, i32 noundef %416) #19
  br label %421

418:                                              ; preds = %369, %384, %358
  %419 = add nuw nsw i64 %359, 1
  %420 = icmp eq i64 %419, %345
  br i1 %420, label %421, label %358, !llvm.loop !59

421:                                              ; preds = %418, %344, %398, %414
  %422 = phi i32 [ %399, %398 ], [ %399, %414 ], [ 0, %344 ], [ %349, %418 ]
  %423 = zext i32 %422 to i64
  %424 = icmp eq i64 %345, %423
  br i1 %424, label %425, label %502

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 4
  store i32 1, ptr %426, align 8, !tbaa !55
  %427 = zext i32 %353 to i64
  %428 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %427, i64 1
  %429 = icmp sgt i32 %348, 0
  br i1 %429, label %430, label %481

430:                                              ; preds = %425
  %431 = zext nneg i32 %348 to i64
  br label %432

432:                                              ; preds = %430, %455
  %433 = phi i64 [ 0, %430 ], [ %457, %455 ]
  %434 = phi i32 [ -1, %430 ], [ %456, %455 ]
  %435 = getelementptr inbounds [53 x ptr], ptr %6, i64 0, i64 %433
  %436 = load ptr, ptr %435, align 8, !tbaa !18
  %437 = icmp eq ptr %436, null
  br i1 %437, label %455, label %438

438:                                              ; preds = %432
  %439 = load i32, ptr %428, align 4, !tbaa !10
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !5
  %443 = load i32, ptr %436, align 8
  %444 = lshr i32 %443, 16
  %445 = and i32 %444, 255
  %446 = zext nneg i32 %445 to i64
  %447 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %446
  %448 = load i8, ptr %447, align 1, !tbaa !5
  %449 = icmp ule i8 %442, %448
  %450 = icmp slt i32 %434, 0
  %451 = select i1 %449, i1 %450, i1 false
  %452 = trunc i64 %433 to i32
  %453 = select i1 %451, i32 %452, i32 %434
  %454 = icmp eq i32 %445, %439
  br i1 %454, label %459, label %455

455:                                              ; preds = %438, %432
  %456 = phi i32 [ %434, %432 ], [ %453, %438 ]
  %457 = add nuw nsw i64 %433, 1
  %458 = icmp eq i64 %457, %431
  br i1 %458, label %459, label %432, !llvm.loop !60

459:                                              ; preds = %455, %438
  %460 = phi i32 [ %456, %455 ], [ %453, %438 ]
  %461 = icmp sgt i32 %460, -1
  br i1 %461, label %462, label %481

462:                                              ; preds = %459
  %463 = zext nneg i32 %460 to i64
  %464 = getelementptr inbounds [53 x ptr], ptr %6, i64 0, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !18
  %466 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %465, ptr %466, align 8, !tbaa !58
  %467 = load i32, ptr %352, align 4, !tbaa !54
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %468, i64 1
  %470 = load i32, ptr %469, align 4, !tbaa !10
  %471 = call ptr @adjust_address_1(ptr noundef %465, i32 noundef %470, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  store ptr %471, ptr %466, align 8, !tbaa !58
  %472 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %462
  %475 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %472, ptr noundef nonnull @.str.3, i32 noundef %353) #19
  br label %476

476:                                              ; preds = %474, %462
  store ptr null, ptr %464, align 8, !tbaa !18
  %477 = add nuw nsw i32 %460, 1
  %478 = icmp eq i32 %477, %348
  %479 = sext i1 %478 to i32
  %480 = add nsw i32 %348, %479
  br label %493

481:                                              ; preds = %425, %459
  %482 = load i32, ptr %428, align 4, !tbaa !10
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !5
  %486 = zext i8 %485 to i64
  %487 = call ptr @assign_stack_local_1(i32 noundef %482, i64 noundef %486, i32 noundef 0, i8 noundef zeroext 1) #18
  %488 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %487, ptr %488, align 8, !tbaa !58
  %489 = load ptr, ptr @dump_file, align 8, !tbaa !18
  %490 = icmp eq ptr %489, null
  br i1 %490, label %493, label %491

491:                                              ; preds = %481
  %492 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %489, ptr noundef nonnull @.str.4, i32 noundef %353) #19
  br label %493

493:                                              ; preds = %476, %481, %491
  %494 = phi i32 [ %348, %491 ], [ %348, %481 ], [ %480, %476 ]
  %495 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  %496 = load ptr, ptr %495, align 8, !tbaa !58
  %497 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %427, i64 1
  store ptr %496, ptr %497, align 8, !tbaa !18
  %498 = load i32, ptr @save_slots_num, align 4, !tbaa !10
  %499 = add nsw i32 %498, 1
  store i32 %499, ptr @save_slots_num, align 4, !tbaa !10
  %500 = sext i32 %498 to i64
  %501 = getelementptr inbounds [53 x ptr], ptr @save_slots, i64 0, i64 %500
  store ptr %496, ptr %501, align 8, !tbaa !18
  br label %502

502:                                              ; preds = %421, %493
  %503 = phi i32 [ %494, %493 ], [ %348, %421 ]
  %504 = add nuw nsw i64 %345, 1
  %505 = load i32, ptr @saved_regs_num, align 4, !tbaa !10
  %506 = sext i32 %505 to i64
  %507 = icmp slt i64 %504, %506
  %508 = add nsw i32 %346, 1
  br i1 %507, label %344, label %509, !llvm.loop !61

509:                                              ; preds = %502, %336
  call void @free(ptr noundef %191) #19
  call fastcc void @finish_saved_hard_regs() #19
  call void @llvm.lifetime.end.p0(i64 424, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 424, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  br label %563

510:                                              ; preds = %51, %560
  %511 = phi i64 [ %561, %560 ], [ 0, %51 ]
  %512 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %511, i64 1
  br label %513

513:                                              ; preds = %510, %557
  %514 = phi i64 [ 4, %510 ], [ %558, %557 ]
  %515 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %511, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !10
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %557, label %518

518:                                              ; preds = %513
  %519 = load ptr, ptr %512, align 8, !tbaa !18
  %520 = icmp eq ptr %519, null
  br i1 %520, label %524, label %557

521:                                              ; preds = %524
  %522 = add nuw nsw i64 %525, 1
  %523 = icmp eq i64 %522, %514
  br i1 %523, label %533, label %524, !llvm.loop !62

524:                                              ; preds = %518, %521
  %525 = phi i64 [ %522, %521 ], [ 0, %518 ]
  %526 = add nuw nsw i64 %525, %511
  %527 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %526, i64 1
  %528 = load ptr, ptr %527, align 8, !tbaa !18
  %529 = icmp eq ptr %528, null
  br i1 %529, label %521, label %557

530:                                              ; preds = %533
  %531 = add nuw nsw i64 %534, 1
  %532 = icmp eq i64 %531, %514
  br i1 %532, label %539, label %533, !llvm.loop !63

533:                                              ; preds = %521, %530
  %534 = phi i64 [ %531, %530 ], [ 0, %521 ]
  %535 = add nuw nsw i64 %534, %511
  %536 = shl nuw i64 1, %535
  %537 = and i64 %536, %52
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %557, label %530

539:                                              ; preds = %530
  %540 = zext i32 %516 to i64
  %541 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %540
  %542 = load i8, ptr %541, align 1, !tbaa !5
  %543 = zext i8 %542 to i64
  %544 = tail call ptr @assign_stack_local_1(i32 noundef %516, i64 noundef %543, i32 noundef 0, i8 noundef zeroext 1) #18
  %545 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %511, i64 %514
  store ptr %544, ptr %545, align 8, !tbaa !18
  br label %546

546:                                              ; preds = %539, %546
  %547 = phi i64 [ 0, %539 ], [ %555, %546 ]
  %548 = load ptr, ptr %545, align 8, !tbaa !18
  %549 = add nuw nsw i64 %547, %511
  %550 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %549, i64 1
  %551 = load i32, ptr %550, align 4, !tbaa !10
  %552 = shl nsw i64 %547, 2
  %553 = tail call ptr @adjust_address_1(ptr noundef %548, i32 noundef %551, i64 noundef %552, i32 noundef 0, i32 noundef 1) #18
  %554 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %549, i64 1
  store ptr %553, ptr %554, align 8, !tbaa !18
  %555 = add nuw nsw i64 %547, 1
  %556 = icmp eq i64 %555, %514
  br i1 %556, label %557, label %546, !llvm.loop !64

557:                                              ; preds = %524, %533, %546, %513, %518
  %558 = add nsw i64 %514, -1
  %559 = icmp ugt i64 %514, 1
  br i1 %559, label %513, label %560, !llvm.loop !65

560:                                              ; preds = %557
  %561 = add nuw nsw i64 %511, 1
  %562 = icmp eq i64 %561, 53
  br i1 %562, label %563, label %510, !llvm.loop !66

563:                                              ; preds = %560, %509
  br label %564

564:                                              ; preds = %563, %576
  %565 = phi i64 [ %577, %576 ], [ 0, %563 ]
  br label %566

566:                                              ; preds = %564, %573
  %567 = phi i64 [ 4, %564 ], [ %574, %573 ]
  %568 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %565, i64 %567
  %569 = load ptr, ptr %568, align 8, !tbaa !18
  %570 = icmp eq ptr %569, null
  br i1 %570, label %573, label %571

571:                                              ; preds = %566
  %572 = call i32 @get_frame_alias_set() #18
  call void @set_mem_alias_set(ptr noundef nonnull %569, i32 noundef %572) #18
  br label %573

573:                                              ; preds = %566, %571
  %574 = add nsw i64 %567, -1
  %575 = icmp ugt i64 %567, 1
  br i1 %575, label %566, label %576, !llvm.loop !67

576:                                              ; preds = %573
  %577 = add nuw nsw i64 %565, 1
  %578 = icmp eq i64 %577, 53
  br i1 %578, label %579, label %564, !llvm.loop !68

579:                                              ; preds = %576
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @initiate_saved_hard_regs() unnamed_addr #5 {
  store i32 0, ptr @saved_regs_num, align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @hard_reg_map, i8 0, i64 424, i1 false), !tbaa !18
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_set_regs(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %41 [
    i16 39, label %6
    i16 37, label %19
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %41

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %14 = icmp ugt i32 %13, 52
  br i1 %14, label %41, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @subreg_regno(ptr noundef nonnull %0) #18
  %17 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #18
  %18 = add i32 %17, %16
  br label %26

19:                                               ; preds = %3
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %21 = icmp ult i32 %20, 53
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = lshr i32 %4, 16
  %24 = and i32 %23, 255
  %25 = tail call fastcc i32 @end_hard_regno(i32 noundef %24, i32 noundef %20) #19
  br label %26

26:                                               ; preds = %15, %22
  %27 = phi i32 [ %18, %15 ], [ %25, %22 ]
  %28 = phi i32 [ %16, %15 ], [ %20, %22 ]
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i64, ptr %2, align 8, !tbaa !8
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %37, %32 ]
  %34 = phi i32 [ %28, %30 ], [ %38, %32 ]
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = or i64 %33, %36
  %38 = add nsw i32 %34, 1
  %39 = icmp eq i32 %38, %27
  br i1 %39, label %40, label %32, !llvm.loop !69

40:                                               ; preds = %32
  store i64 %37, ptr %2, align 8, !tbaa !8
  br label %41

41:                                               ; preds = %26, %40, %6, %12, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @new_saved_hard_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #18
  %4 = load i32, ptr @saved_regs_num, align 4, !tbaa !10
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %5
  store ptr %3, ptr %6, align 8, !tbaa !18
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %7
  store ptr %3, ptr %8, align 8, !tbaa !18
  %9 = add nsw i32 %4, 1
  store i32 %9, ptr @saved_regs_num, align 4, !tbaa !10
  store i32 %4, ptr %3, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 1
  store i32 %0, ptr %10, align 4, !tbaa !54
  %11 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 4
  store i32 0, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %4, ptr %0, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !73
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !71
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = icmp eq i32 %11, 0
  %13 = shl i32 %11, 7
  %14 = select i1 %12, i32 53, i32 %13
  %15 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %19 = and i32 %14, 53
  %20 = zext nneg i32 %19 to i64
  %21 = lshr i64 %17, %20
  store i64 %21, ptr %18, align 8, !tbaa !77
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %14, %23
  store i32 %24, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !78

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !10
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !10
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !76
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !71
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !76
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !8
  store i64 %35, ptr %3, align 8, !tbaa !77
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !10
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !10
  %40 = load i32, ptr %23, align 8, !tbaa !76
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !76
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !79

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !80
  store ptr %44, ptr %0, align 8, !tbaa !71
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !74
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !10
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !77
  store i32 %16, ptr %1, align 4, !tbaa !10
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !77
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !77
  %6 = load i32, ptr %1, align 4, !tbaa !10
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @saved_hard_reg_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = load ptr, ptr %1, align 8, !tbaa !18
  %5 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = sub nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !40
  %19 = sub nsw i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %7
  %22 = load i32, ptr %3, align 8, !tbaa !50
  %23 = load i32, ptr %4, align 8, !tbaa !50
  %24 = sub nsw i32 %22, %23
  br label %25

25:                                               ; preds = %14, %7, %21
  %26 = phi i32 [ %24, %21 ], [ %12, %7 ], [ %19, %14 ]
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @assign_stack_local_1(i32 noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_saved_hard_regs() unnamed_addr #0 {
  %1 = load i32, ptr @saved_regs_num, align 4, !tbaa !10
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %9, %5 ]
  %7 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  tail call void @free(ptr noundef %8) #19
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, %4
  br i1 %10, label %11, label %5, !llvm.loop !81

11:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_frame_alias_set() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @save_call_clobbered_regs() local_unnamed_addr #0 {
  %1 = alloca [53 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 0, ptr @hard_regs_saved, align 8, !tbaa !8
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !10
  %6 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %315, label %8

8:                                                ; preds = %0, %312
  %9 = phi ptr [ %15, %312 ], [ %6, %0 ]
  %10 = phi ptr [ %313, %312 ], [ null, %0 ]
  %11 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = load ptr, ptr %9, align 8, !tbaa !32
  %16 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 787, ptr noundef nonnull @.str.1) #18
  %21 = load i32, ptr %12, align 8
  br label %22

22:                                               ; preds = %8, %20
  %23 = phi i32 [ %13, %8 ], [ %21, %20 ]
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -11
  %26 = icmp ult i32 %25, -3
  br i1 %26, label %221, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr @n_regs_saved, align 4, !tbaa !10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %14, 9
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  br label %39

34:                                               ; preds = %30
  store i64 0, ptr @referenced_regs, align 8, !tbaa !8
  %35 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %35, ptr noundef nonnull @mark_reg_as_referenced, ptr noundef null) #19
  %36 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  %37 = load i64, ptr @referenced_regs, align 8, !tbaa !8
  %38 = and i64 %37, %36
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i64 [ %38, %34 ], [ %33, %32 ]
  store i64 %40, ptr @referenced_regs, align 8, !tbaa !8
  br label %41

41:                                               ; preds = %39, %52
  %42 = phi i64 [ %40, %39 ], [ %53, %52 ]
  %43 = phi i32 [ 0, %39 ], [ %55, %52 ]
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %42, %45
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = call fastcc i32 @insert_restore(ptr noundef nonnull %9, i32 noundef 1, i32 noundef %43, ptr noundef nonnull %1) #19
  %50 = add nsw i32 %49, %43
  %51 = load i64, ptr @referenced_regs, align 8, !tbaa !8
  br label %52

52:                                               ; preds = %41, %48
  %53 = phi i64 [ %51, %48 ], [ %42, %41 ]
  %54 = phi i32 [ %50, %48 ], [ %43, %41 ]
  %55 = add nsw i32 %54, 1
  %56 = icmp slt i32 %54, 52
  br i1 %56, label %41, label %57, !llvm.loop !82

57:                                               ; preds = %52, %27
  %58 = icmp eq i32 %14, 10
  br i1 %58, label %59, label %228

59:                                               ; preds = %57
  %60 = load i32, ptr %12, align 8
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %228

63:                                               ; preds = %59
  %64 = call ptr @find_reg_note(ptr noundef nonnull %12, i32 noundef 27, ptr noundef null) #18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %228

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  store i64 0, ptr %4, align 8, !tbaa !8
  %67 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %67) #18
  %68 = load i64, ptr %4, align 8, !tbaa !8
  br label %69

69:                                               ; preds = %66, %77
  %70 = phi i64 [ 0, %66 ], [ %80, %77 ]
  %71 = shl nuw nsw i64 1, %70
  %72 = and i64 %68, %71
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %70, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !10
  br label %77

77:                                               ; preds = %69, %74
  %78 = phi i32 [ %76, %74 ], [ 0, %69 ]
  %79 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %70
  store i32 %78, ptr %79, align 4
  %80 = add nuw nsw i64 %70, 1
  %81 = icmp eq i64 %80, 53
  br i1 %81, label %82, label %69, !llvm.loop !83

82:                                               ; preds = %77
  store i32 53, ptr %3, align 4, !tbaa !10
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %67, ptr noundef nonnull %3) #19
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !43
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %179, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  br label %87

87:                                               ; preds = %85, %175
  %88 = phi ptr [ %86, %85 ], [ %176, %175 ]
  %89 = load i32, ptr %3, align 4, !tbaa !10
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %88, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !23
  %93 = sext i16 %92 to i32
  %94 = icmp slt i16 %92, 0
  br i1 %94, label %175, label %95

95:                                               ; preds = %87
  %96 = zext nneg i32 %93 to i64
  %97 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !18
  %98 = getelementptr inbounds ptr, ptr %97, i64 %90
  %99 = load ptr, ptr %98, align 8, !tbaa !18
  %100 = load i32, ptr %99, align 8
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %96, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = zext i8 %105 to i32
  %107 = add nsw i16 %92, -17
  %108 = icmp ult i16 %107, 2
  br i1 %108, label %127, label %109

109:                                              ; preds = %95
  %110 = icmp eq i32 %102, 0
  %111 = icmp ne i8 %105, 1
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  br i1 %110, label %114, label %117

114:                                              ; preds = %113
  %115 = call i32 @choose_hard_reg_mode(i32 noundef %93, i32 noundef %106, i8 noundef zeroext 0) #18
  %116 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  br label %127

117:                                              ; preds = %113
  %118 = icmp ne i32 %102, 15
  %119 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 9), align 1
  %120 = icmp ne i8 %119, 0
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = icmp eq i32 %102, 14
  %124 = icmp ugt i16 %92, 3
  %125 = and i1 %124, %123
  %126 = select i1 %125, i32 16, i32 %102
  br label %127

127:                                              ; preds = %122, %109, %117, %114, %95
  %128 = phi ptr [ %88, %95 ], [ %88, %109 ], [ %116, %114 ], [ %88, %117 ], [ %88, %122 ]
  %129 = phi i32 [ 0, %95 ], [ 0, %109 ], [ %115, %114 ], [ 16, %117 ], [ %126, %122 ]
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !5
  %133 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %96
  %134 = load i32, ptr %133, align 4, !tbaa !10
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = icmp ugt i8 %132, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  store i32 %129, ptr %133, align 4, !tbaa !10
  br label %140

140:                                              ; preds = %139, %127
  %141 = icmp eq i8 %105, 0
  br i1 %141, label %175, label %142

142:                                              ; preds = %140
  %143 = zext nneg i16 %92 to i64
  %144 = zext i8 %105 to i64
  %145 = load i64, ptr %4, align 8, !tbaa !8
  %146 = add nuw nsw i64 %144, 1
  %147 = and i64 %146, 510
  %148 = add nsw i64 %144, -1
  %149 = insertelement <2 x i64> poison, i64 %148, i64 0
  %150 = shufflevector <2 x i64> %149, <2 x i64> poison, <2 x i32> zeroinitializer
  %151 = insertelement <2 x i64> poison, i64 %144, i64 0
  %152 = shufflevector <2 x i64> %151, <2 x i64> poison, <2 x i32> zeroinitializer
  %153 = add nsw <2 x i64> %152, <i64 0, i64 -1>
  %154 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %145, i64 0
  %155 = add nsw i64 %143, -1
  %156 = insertelement <2 x i64> poison, i64 %155, i64 0
  %157 = shufflevector <2 x i64> %156, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %158

158:                                              ; preds = %158, %142
  %159 = phi i64 [ 0, %142 ], [ %165, %158 ]
  %160 = phi <2 x i64> [ %153, %142 ], [ %166, %158 ]
  %161 = phi <2 x i64> [ %154, %142 ], [ %164, %158 ]
  %162 = add <2 x i64> %157, %160
  %163 = shl nuw <2 x i64> <i64 1, i64 1>, %162
  %164 = or <2 x i64> %161, %163
  %165 = add i64 %159, 2
  %166 = add <2 x i64> %160, <i64 -2, i64 -2>
  %167 = icmp eq i64 %165, %147
  br i1 %167, label %168, label %158, !llvm.loop !84

168:                                              ; preds = %158
  %169 = insertelement <2 x i64> poison, i64 %159, i64 0
  %170 = shufflevector <2 x i64> %169, <2 x i64> poison, <2 x i32> zeroinitializer
  %171 = or disjoint <2 x i64> %170, <i64 0, i64 1>
  %172 = icmp ugt <2 x i64> %171, %150
  %173 = select <2 x i1> %172, <2 x i64> %161, <2 x i64> %164
  %174 = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %173)
  store i64 %174, ptr %4, align 8, !tbaa !8
  br label %175

175:                                              ; preds = %140, %168, %87
  %176 = phi ptr [ %128, %140 ], [ %128, %168 ], [ %88, %87 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %177 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !43
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %87, !llvm.loop !87

179:                                              ; preds = %175, %82
  store i64 0, ptr %2, align 8, !tbaa !8
  %180 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !5
  call void @note_stores(ptr noundef %181, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %2) #18
  %182 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !8
  %183 = load i64, ptr %4, align 8, !tbaa !8
  %184 = load i64, ptr %2, align 8, !tbaa !8
  %185 = or i64 %182, %184
  %186 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  %187 = or i64 %185, %186
  %188 = xor i64 %187, -1
  %189 = and i64 %183, %188
  %190 = load i64, ptr @call_used_reg_set, align 8, !tbaa !8
  %191 = and i64 %190, %189
  store i64 %191, ptr %4, align 8, !tbaa !8
  br label %192

192:                                              ; preds = %179, %202
  %193 = phi i32 [ 0, %179 ], [ %204, %202 ]
  %194 = load i64, ptr %4, align 8, !tbaa !8
  %195 = zext nneg i32 %193 to i64
  %196 = shl nuw nsw i64 1, %195
  %197 = and i64 %194, %196
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %192
  %200 = call fastcc i32 @insert_save(ptr noundef nonnull %9, i32 noundef %193, ptr noundef nonnull %4, ptr noundef nonnull %1) #19
  %201 = add i32 %200, %193
  br label %202

202:                                              ; preds = %192, %199
  %203 = phi i32 [ %193, %192 ], [ %201, %199 ]
  %204 = add i32 %203, 1
  %205 = icmp ult i32 %204, 53
  br i1 %205, label %192, label %206, !llvm.loop !88

206:                                              ; preds = %202
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !10
  %207 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  br label %208

208:                                              ; preds = %206, %216
  %209 = phi i64 [ 0, %206 ], [ %218, %216 ]
  %210 = phi i32 [ 0, %206 ], [ %217, %216 ]
  %211 = shl nuw nsw i64 1, %209
  %212 = and i64 %207, %211
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %208
  %215 = add nsw i32 %210, 1
  store i32 %215, ptr @n_regs_saved, align 4, !tbaa !10
  br label %216

216:                                              ; preds = %208, %214
  %217 = phi i32 [ %210, %208 ], [ %215, %214 ]
  %218 = add nuw nsw i64 %209, 1
  %219 = icmp eq i64 %218, 53
  br i1 %219, label %220, label %208, !llvm.loop !89

220:                                              ; preds = %216
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %228

221:                                              ; preds = %22
  %222 = icmp eq i32 %24, 7
  %223 = load i32, ptr @n_regs_saved, align 4
  %224 = icmp ne i32 %223, 0
  %225 = select i1 %222, i1 %224, i1 false
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %227, ptr noundef nonnull @replace_reg_with_saved_mem, ptr noundef nonnull %1) #19
  br label %228

228:                                              ; preds = %57, %59, %63, %220, %221, %226
  %229 = phi ptr [ %10, %226 ], [ %10, %221 ], [ %9, %220 ], [ %9, %63 ], [ %9, %59 ], [ %9, %57 ]
  %230 = load ptr, ptr %9, align 8, !tbaa !32
  %231 = icmp eq ptr %230, null
  br i1 %231, label %238, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.insn_chain, ptr %230, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !90
  %235 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !90
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %312, label %238

238:                                              ; preds = %232, %228
  %239 = load i32, ptr %12, align 8
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 7
  %242 = icmp ne ptr %229, null
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %244, label %287

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.insn_chain, ptr %229, i64 0, i32 4
  %246 = load i32, ptr %245, align 8, !tbaa !90
  %247 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 4
  %248 = load i32, ptr %247, align 8, !tbaa !90
  %249 = icmp eq i32 %246, %248
  br i1 %249, label %250, label %287

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = getelementptr inbounds %struct.insn_chain, ptr %229, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !29
  %255 = icmp eq ptr %252, %254
  br i1 %255, label %287, label %256

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !5
  %259 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %258, i64 0, i32 7
  br label %261

261:                                              ; preds = %256, %284
  %262 = phi ptr [ %252, %256 ], [ %264, %284 ]
  %263 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1, i32 0, i32 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !5
  %265 = load i32, ptr %262, align 8
  %266 = trunc i32 %265 to i16
  switch i16 %266, label %283 [
    i16 13, label %267
    i16 7, label %284
  ]

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1, i32 0, i32 0, i64 2
  %269 = load ptr, ptr %268, align 8, !tbaa !5
  %270 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %269, ptr %270, align 8, !tbaa !5
  %271 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %264, ptr %271, align 8, !tbaa !5
  store ptr %12, ptr %263, align 8, !tbaa !5
  %272 = load ptr, ptr %259, align 8, !tbaa !5
  store ptr %272, ptr %268, align 8, !tbaa !5
  store ptr %262, ptr %259, align 8, !tbaa !5
  %273 = load ptr, ptr %268, align 8, !tbaa !5
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %262, ptr %276, align 8, !tbaa !5
  br label %277

277:                                              ; preds = %275, %267
  %278 = load ptr, ptr %260, align 8, !tbaa !5
  %279 = getelementptr inbounds %struct.rtl_bb_info, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !91
  %281 = icmp eq ptr %280, %12
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  store ptr %262, ptr %279, align 8, !tbaa !91
  br label %284

283:                                              ; preds = %261
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 916, ptr noundef nonnull @.str.1) #18
  br label %284

284:                                              ; preds = %261, %283, %282, %277
  %285 = load ptr, ptr %253, align 8, !tbaa !29
  %286 = icmp eq ptr %264, %285
  br i1 %286, label %287, label %261, !llvm.loop !93

287:                                              ; preds = %284, %250, %244, %238
  %288 = load i32, ptr @n_regs_saved, align 4, !tbaa !10
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %312, label %290

290:                                              ; preds = %287
  %291 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  br label %292

292:                                              ; preds = %290, %307
  %293 = phi i64 [ %308, %307 ], [ %291, %290 ]
  %294 = phi i32 [ %310, %307 ], [ 0, %290 ]
  %295 = zext nneg i32 %294 to i64
  %296 = shl nuw i64 1, %295
  %297 = and i64 %293, %296
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %292
  %300 = load i32, ptr %12, align 8
  %301 = and i32 %300, 65535
  %302 = icmp eq i32 %301, 9
  %303 = zext i1 %302 to i32
  %304 = call fastcc i32 @insert_restore(ptr noundef nonnull %9, i32 noundef %303, i32 noundef %294, ptr noundef nonnull %1) #19
  %305 = add nsw i32 %304, %294
  %306 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  br label %307

307:                                              ; preds = %292, %299
  %308 = phi i64 [ %306, %299 ], [ %293, %292 ]
  %309 = phi i32 [ %305, %299 ], [ %294, %292 ]
  %310 = add nsw i32 %309, 1
  %311 = icmp slt i32 %309, 52
  br i1 %311, label %292, label %312, !llvm.loop !94

312:                                              ; preds = %307, %287, %232
  %313 = phi ptr [ %229, %232 ], [ null, %287 ], [ null, %307 ]
  %314 = icmp eq ptr %15, null
  br i1 %314, label %315, label %8, !llvm.loop !95

315:                                              ; preds = %312, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_referenced_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %89, %3
  %5 = phi ptr [ %0, %3 ], [ %90, %89 ]
  %6 = phi ptr [ %2, %3 ], [ null, %89 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !18
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %45 [
    i16 23, label %10
    i16 25, label %13
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %6) #19
  %12 = load ptr, ptr %5, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %12, %10 ], [ %7, %4 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %45 [
    i16 37, label %19
    i16 36, label %134
    i16 46, label %134
    i16 39, label %22
  ]

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %16) #19
  %21 = icmp ult i32 %20, 53
  br i1 %21, label %134, label %61

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %24) #19
  %30 = icmp ult i32 %29, 53
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = lshr i32 %17, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = lshr i32 %25, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = icmp uge i8 %36, %41
  %43 = icmp ult i8 %41, 5
  %44 = or i1 %42, %43
  br i1 %44, label %134, label %50

45:                                               ; preds = %4, %13
  %46 = phi i16 [ %9, %4 ], [ %18, %13 ]
  %47 = phi ptr [ %7, %4 ], [ %16, %13 ]
  %48 = phi i32 [ %8, %4 ], [ %17, %13 ]
  %49 = phi ptr [ %5, %4 ], [ %15, %13 ]
  switch i16 %46, label %55 [
    i16 43, label %50
    i16 39, label %50
  ]

50:                                               ; preds = %31, %22, %28, %45, %45
  %51 = phi ptr [ %47, %45 ], [ %47, %45 ], [ %16, %28 ], [ %16, %22 ], [ %16, %31 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !18
  %54 = load i32, ptr %53, align 8
  br label %55

55:                                               ; preds = %45, %50
  %56 = phi ptr [ %53, %50 ], [ %47, %45 ]
  %57 = phi i32 [ %54, %50 ], [ %48, %45 ]
  %58 = phi ptr [ %52, %50 ], [ %49, %45 ]
  %59 = and i32 %57, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %96

61:                                               ; preds = %19, %55
  %62 = phi i32 [ %57, %55 ], [ %17, %19 ]
  %63 = phi ptr [ %56, %55 ], [ %16, %19 ]
  %64 = phi ptr [ %58, %55 ], [ %15, %19 ]
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %63) #19
  %66 = icmp slt i32 %65, 53
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds i16, ptr %68, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !23
  %72 = sext i16 %71 to i32
  br label %73

73:                                               ; preds = %61, %67
  %74 = phi i32 [ %72, %67 ], [ %65, %61 ]
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = lshr i32 %62, 16
  %78 = and i32 %77, 255
  tail call void %1(ptr noundef nonnull %64, i32 noundef %78, i32 noundef %74, ptr noundef %6) #18, !callees !96
  br label %134

79:                                               ; preds = %73
  %80 = icmp eq ptr %6, null
  br i1 %80, label %81, label %134

81:                                               ; preds = %79
  %82 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !18
  %83 = sext i32 %65 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  br label %89

89:                                               ; preds = %87, %91
  %90 = phi ptr [ %88, %87 ], [ %93, %91 ]
  br label %4

91:                                               ; preds = %81
  %92 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !18
  %93 = getelementptr inbounds ptr, ptr %92, i64 %83
  %94 = load ptr, ptr %93, align 8, !tbaa !18
  %95 = icmp eq ptr %94, null
  br i1 %95, label %134, label %89

96:                                               ; preds = %55
  %97 = zext nneg i32 %59 to i64
  %98 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !18
  %100 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %97
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %134, label %103

103:                                              ; preds = %96
  %104 = zext i8 %101 to i64
  br label %105

105:                                              ; preds = %103, %132
  %106 = phi i64 [ %104, %103 ], [ %107, %132 ]
  %107 = add nsw i64 %106, -1
  %108 = getelementptr inbounds i8, ptr %99, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !5
  switch i8 %109, label %132 [
    i8 101, label %110
    i8 69, label %114
  ]

110:                                              ; preds = %105
  %111 = load ptr, ptr %58, align 8, !tbaa !18
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %112, i64 0, i64 %107
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %113, ptr noundef %1, ptr noundef %6) #19
  br label %132

114:                                              ; preds = %105
  %115 = load ptr, ptr %58, align 8, !tbaa !18
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %117 = getelementptr inbounds [1 x %union.rtunion_def], ptr %116, i64 0, i64 %107
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = load i32, ptr %118, align 8, !tbaa !97
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = zext nneg i32 %119 to i64
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi i64 [ %122, %121 ], [ %125, %123 ]
  %125 = add nsw i64 %124, -1
  %126 = load ptr, ptr %58, align 8, !tbaa !18
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %127, i64 0, i64 %107
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.rtvec_def, ptr %129, i64 0, i32 1, i64 %125
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %130, ptr noundef %1, ptr noundef %6) #19
  %131 = icmp ugt i64 %124, 1
  br i1 %131, label %123, label %132, !llvm.loop !99

132:                                              ; preds = %123, %114, %105, %110
  %133 = icmp sgt i64 %106, 1
  br i1 %133, label %105, label %134, !llvm.loop !100

134:                                              ; preds = %79, %91, %19, %31, %13, %13, %132, %96, %76
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mark_reg_as_referenced(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #14 {
  tail call fastcc void @add_to_hard_reg_set(i32 noundef %1, i32 noundef %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_restore(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = load i64, ptr @hard_regs_saved, align 8
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi i64 [ 4, %10 ], [ %27, %26 ]
  %14 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, %13
  br i1 %19, label %29, label %20, !llvm.loop !101

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %18, %17 ], [ 0, %12 ]
  %22 = add nsw i64 %21, %5
  %23 = shl nuw i64 1, %22
  %24 = and i64 %11, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %17

26:                                               ; preds = %20, %12
  %27 = add nsw i64 %13, -1
  %28 = icmp ugt i64 %13, 1
  br i1 %28, label %12, label %31, !llvm.loop !102

29:                                               ; preds = %17
  %30 = trunc i64 %13 to i32
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = getelementptr inbounds i32, ptr %3, i64 %5
  %37 = load i32, ptr %36, align 4, !tbaa !10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %31
  %40 = load i32, ptr %35, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = zext i32 %37 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %32, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @reg_save_code(i32 noundef %2, i32 noundef %37) #19
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, ptr %36, align 4, !tbaa !10
  %55 = tail call ptr @adjust_address_1(ptr noundef nonnull %35, i32 noundef %54, i64 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %58

56:                                               ; preds = %50, %44, %39, %31
  %57 = tail call ptr @copy_rtx(ptr noundef %35) #18
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi ptr [ %55, %53 ], [ %57, %56 ]
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = tail call i32 @get_mode_alignment(i32 noundef %62) #18
  %64 = icmp ugt i32 %63, -2147483648
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %59, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = tail call i32 @get_mode_alignment(i32 noundef %68) #18
  br label %70

70:                                               ; preds = %58, %65
  %71 = phi i32 [ %69, %65 ], [ -2147483648, %58 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !103
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi i32 [ %77, %75 ], [ 8, %70 ]
  %80 = icmp ugt i32 %71, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1227, ptr noundef nonnull @.str.1) #18
  br label %82

82:                                               ; preds = %78, %81
  %83 = load i32, ptr %59, align 8
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = tail call ptr @gen_rtx_REG(i32 noundef %85, i32 noundef %2) #18
  %87 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %86, ptr noundef nonnull %59) #18
  %88 = load i32, ptr %59, align 8
  %89 = lshr i32 %88, 16
  %90 = and i32 %89, 255
  %91 = tail call fastcc i32 @reg_restore_code(i32 noundef %2, i32 noundef %90) #19
  %92 = tail call fastcc ptr @insert_one_insn(ptr noundef %0, i32 noundef %1, i32 noundef %91, ptr noundef %87) #19
  %93 = icmp sgt i32 %32, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.insn_chain, ptr %92, i64 0, i32 7
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ 0, %94 ], [ %107, %96 ]
  %98 = add nsw i64 %97, %5
  %99 = shl nuw i64 1, %98
  %100 = xor i64 %99, -1
  %101 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  %102 = and i64 %101, %100
  store i64 %102, ptr @hard_regs_saved, align 8, !tbaa !8
  %103 = trunc i64 %98 to i32
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %95, i32 noundef %103) #18
  %105 = load i32, ptr @n_regs_saved, align 4, !tbaa !10
  %106 = add nsw i32 %105, -1
  store i32 %106, ptr @n_regs_saved, align 4, !tbaa !10
  %107 = add nuw nsw i64 %97, 1
  %108 = icmp eq i64 %107, %33
  br i1 %108, label %109, label %96, !llvm.loop !105

109:                                              ; preds = %96, %82
  %110 = add nsw i32 %32, -1
  ret i32 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_save(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1267, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %10, %28
  %13 = phi i64 [ 4, %10 ], [ %29, %28 ]
  %14 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load i64, ptr %2, align 8, !tbaa !8
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %23, 1
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %31, label %22, !llvm.loop !106

22:                                               ; preds = %17, %19
  %23 = phi i64 [ 0, %17 ], [ %20, %19 ]
  %24 = add nsw i64 %23, %11
  %25 = shl nuw i64 1, %24
  %26 = and i64 %18, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %22, %12
  %29 = add nsw i64 %13, -1
  %30 = icmp ugt i64 %13, 1
  br i1 %30, label %12, label %33, !llvm.loop !107

31:                                               ; preds = %19
  %32 = trunc i64 %13 to i32
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = getelementptr inbounds i32, ptr %3, i64 %5
  %39 = load i32, ptr %38, align 4, !tbaa !10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %33
  %42 = load i32, ptr %37, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = zext i32 %39 to i64
  %48 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !5
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %34, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = tail call fastcc i32 @reg_save_code(i32 noundef %1, i32 noundef %39) #19
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, ptr %38, align 4, !tbaa !10
  %57 = tail call ptr @adjust_address_1(ptr noundef nonnull %37, i32 noundef %56, i64 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %60

58:                                               ; preds = %52, %46, %41, %33
  %59 = tail call ptr @copy_rtx(ptr noundef %37) #18
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %57, %55 ], [ %59, %58 ]
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = tail call i32 @get_mode_alignment(i32 noundef %64) #18
  %66 = icmp ugt i32 %65, -2147483648
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load i32, ptr %61, align 8
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = tail call i32 @get_mode_alignment(i32 noundef %70) #18
  br label %72

72:                                               ; preds = %60, %67
  %73 = phi i32 [ %71, %67 ], [ -2147483648, %60 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mem_attrs, ptr %75, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !103
  br label %80

80:                                               ; preds = %72, %77
  %81 = phi i32 [ %79, %77 ], [ 8, %72 ]
  %82 = icmp ugt i32 %73, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1308, ptr noundef nonnull @.str.1) #18
  br label %84

84:                                               ; preds = %80, %83
  %85 = load i32, ptr %61, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = tail call ptr @gen_rtx_REG(i32 noundef %87, i32 noundef %1) #18
  %89 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %61, ptr noundef %88) #18
  %90 = load i32, ptr %61, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = tail call fastcc i32 @reg_save_code(i32 noundef %1, i32 noundef %92) #19
  %94 = tail call fastcc ptr @insert_one_insn(ptr noundef %0, i32 noundef 1, i32 noundef %93, ptr noundef %89) #19
  %95 = icmp eq i32 %34, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.insn_chain, ptr %94, i64 0, i32 7
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ 0, %96 ], [ %108, %98 ]
  %100 = add nuw nsw i64 %99, %5
  %101 = shl nuw i64 1, %100
  %102 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  %103 = or i64 %102, %101
  store i64 %103, ptr @hard_regs_saved, align 8, !tbaa !8
  %104 = trunc i64 %100 to i32
  %105 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %97, i32 noundef %104) #18
  %106 = load i32, ptr @n_regs_saved, align 4, !tbaa !10
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr @n_regs_saved, align 4, !tbaa !10
  %108 = add nuw nsw i64 %99, 1
  %109 = icmp eq i64 %108, %35
  br i1 %109, label %110, label %98, !llvm.loop !108

110:                                              ; preds = %98, %84
  %111 = add nsw i32 %34, -1
  ret i32 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @replace_reg_with_saved_mem(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = sext i32 %2 to i64
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  %13 = zext i8 %8 to i64
  br label %14

14:                                               ; preds = %11, %22
  %15 = phi i64 [ 0, %11 ], [ %23, %22 ]
  %16 = trunc i64 %15 to i32
  %17 = add i32 %16, %2
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = and i64 %12, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %15, 1
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %117, label %14, !llvm.loop !109

25:                                               ; preds = %14, %4
  %26 = phi i32 [ 0, %4 ], [ %16, %14 ]
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %117, label %28

28:                                               ; preds = %25
  %29 = load i64, ptr @hard_regs_saved, align 8
  %30 = zext nneg i32 %26 to i64
  %31 = zext i8 %8 to i64
  %32 = add nuw nsw i32 %26, 1
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 %9)
  br label %34

34:                                               ; preds = %28, %38
  %35 = phi i64 [ %30, %28 ], [ %36, %38 ]
  %36 = add nuw nsw i64 %35, 1
  %37 = icmp ult i64 %36, %31
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = trunc i64 %36 to i32
  %40 = add i32 %39, %2
  %41 = zext nneg i32 %40 to i64
  %42 = shl nuw i64 1, %41
  %43 = and i64 %29, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %34, !llvm.loop !110

45:                                               ; preds = %38, %34
  %46 = phi i32 [ %39, %38 ], [ %33, %34 ]
  %47 = icmp eq i32 %46, %9
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = zext i8 %8 to i64
  %50 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @copy_rtx(ptr noundef nonnull %51) #18
  %55 = getelementptr inbounds i32, ptr %3, i64 %5
  %56 = load i32, ptr %55, align 4, !tbaa !10
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !5
  %60 = icmp eq i8 %8, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = tail call ptr @adjust_address_1(ptr noundef %54, i32 noundef %56, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  br label %63

63:                                               ; preds = %61, %53
  %64 = phi ptr [ %62, %61 ], [ %54, %53 ]
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, %1
  br i1 %68, label %109, label %69

69:                                               ; preds = %63
  %70 = tail call ptr @adjust_address_1(ptr noundef nonnull %64, i32 noundef %1, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  br label %109

71:                                               ; preds = %48, %45
  %72 = tail call ptr @rtvec_alloc(i32 noundef %9) #18
  %73 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 42, i32 noundef %1, ptr noundef %72) #18
  br i1 %10, label %109, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %76 = getelementptr inbounds i32, ptr %3, i64 %5
  br label %77

77:                                               ; preds = %74, %103
  %78 = phi i64 [ 0, %74 ], [ %107, %103 ]
  %79 = load i64, ptr @hard_regs_saved, align 8, !tbaa !8
  %80 = trunc i64 %78 to i32
  %81 = add i32 %80, %2
  %82 = zext i32 %81 to i64
  %83 = shl nuw i64 1, %82
  %84 = and i64 %79, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %82, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1139, ptr noundef nonnull @.str.1) #18
  %91 = load ptr, ptr %87, align 8, !tbaa !18
  br label %92

92:                                               ; preds = %86, %90
  %93 = phi ptr [ %88, %86 ], [ %91, %90 ]
  %94 = tail call ptr @copy_rtx(ptr noundef %93) #18
  br label %103

95:                                               ; preds = %77
  %96 = load i32, ptr %76, align 4, !tbaa !10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1144, ptr noundef nonnull @.str.1) #18
  %99 = load i32, ptr %76, align 4, !tbaa !10
  br label %100

100:                                              ; preds = %95, %98
  %101 = phi i32 [ %96, %95 ], [ %99, %98 ]
  %102 = tail call ptr @gen_rtx_REG(i32 noundef %101, i32 noundef %81) #18
  br label %103

103:                                              ; preds = %92, %100
  %104 = phi ptr [ %94, %92 ], [ %102, %100 ]
  %105 = load ptr, ptr %75, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.rtvec_def, ptr %105, i64 0, i32 1, i64 %78
  store ptr %104, ptr %106, align 8, !tbaa !18
  %107 = add nuw nsw i64 %78, 1
  %108 = icmp eq i64 %107, %31
  br i1 %108, label %109, label %77, !llvm.loop !111

109:                                              ; preds = %103, %71, %63, %69
  %110 = phi ptr [ %70, %69 ], [ %64, %63 ], [ %73, %71 ], [ %73, %103 ]
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, %1
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1150, ptr noundef nonnull @.str.1) #18
  br label %116

116:                                              ; preds = %109, %115
  store ptr %110, ptr %0, align 8, !tbaa !18
  br label %117

117:                                              ; preds = %22, %25, %116
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #2

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #18
  store i32 %8, ptr %2, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #16 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #19
  %4 = load i64, ptr @referenced_regs, align 8, !tbaa !8
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %4, %2 ], [ %10, %5 ]
  %7 = phi i32 [ %1, %2 ], [ %11, %5 ]
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = or i64 %9, %6
  %11 = add i32 %7, 1
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %5, label %13, !llvm.loop !112

13:                                               ; preds = %5
  store i64 %10, ptr @referenced_regs, align 8, !tbaa !8
  ret void
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reg_restore_code(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @reg_save_code(i32 noundef %0, i32 noundef %1) #19
  %10 = load i32, ptr %5, align 4, !tbaa !10
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ %6, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_one_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = tail call ptr @new_insn_chain() #18
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !113
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, ptr @reload_insn_chain, ptr %11
  store ptr %7, ptr %14, align 8, !tbaa !18
  store ptr %7, ptr %10, align 8, !tbaa !113
  store ptr %0, ptr %7, align 8, !tbaa !32
  %15 = tail call ptr @emit_insn_before(ptr noundef %3, ptr noundef %6) #18
  %16 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !29
  %17 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %18 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %17, ptr noundef nonnull %18) #18
  %19 = load ptr, ptr %5, align 8, !tbaa !29
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  tail call void @note_uses(ptr noundef nonnull %20, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %21 = load ptr, ptr %5, align 8, !tbaa !29
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %35

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %33, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  tail call void @note_uses(ptr noundef nonnull %31, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %32 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !llvm.loop !114

35:                                               ; preds = %29, %25, %9
  %36 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %36) #18
  %37 = load ptr, ptr %5, align 8, !tbaa !29
  %38 = load ptr, ptr @cfun, align 8, !tbaa !18
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !33
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !115
  %43 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !90
  %45 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %44) #19
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = load ptr, ptr %47, align 8, !tbaa !116
  %49 = icmp eq ptr %37, %48
  br i1 %49, label %79, label %84

50:                                               ; preds = %4
  %51 = load ptr, ptr %0, align 8, !tbaa !32
  store ptr %51, ptr %7, align 8, !tbaa !32
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.insn_chain, ptr %51, i64 0, i32 1
  store ptr %7, ptr %54, align 8, !tbaa !113
  br label %55

55:                                               ; preds = %53, %50
  store ptr %7, ptr %0, align 8, !tbaa !32
  %56 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %0, ptr %56, align 8, !tbaa !113
  %57 = tail call ptr @emit_insn_after(ptr noundef %3, ptr noundef %6) #18
  %58 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %57, ptr %58, align 8, !tbaa !29
  %59 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %60 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %59, ptr noundef nonnull %60) #18
  %61 = load ptr, ptr %5, align 8, !tbaa !29
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  tail call void @note_stores(ptr noundef %63, ptr noundef nonnull @add_stored_regs, ptr noundef nonnull %59) #18
  %64 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %64) #18
  %65 = load ptr, ptr %5, align 8, !tbaa !29
  %66 = load ptr, ptr @cfun, align 8, !tbaa !18
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !115
  %71 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !90
  %73 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %70, i32 noundef %72) #19
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.rtl_bb_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !91
  %78 = icmp eq ptr %65, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %55, %35
  %80 = phi ptr [ %16, %35 ], [ %58, %55 ]
  %81 = phi ptr [ %47, %35 ], [ %76, %55 ]
  %82 = phi i32 [ %44, %35 ], [ %72, %55 ]
  %83 = load ptr, ptr %80, align 8, !tbaa !29
  store ptr %83, ptr %81, align 8, !tbaa !18
  br label %84

84:                                               ; preds = %79, %35, %55
  %85 = phi i32 [ %44, %35 ], [ %72, %55 ], [ %82, %79 ]
  %86 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 4
  store i32 %85, ptr %86, align 8, !tbaa !90
  %87 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 5
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 8
  store i8 %89, ptr %87, align 4
  %90 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !29
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1
  store i32 %2, ptr %92, align 8, !tbaa !5
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @new_insn_chain() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_used_regs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @add_used_regs_1, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_stored_regs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 25
  br i1 %9, label %46, label %10

10:                                               ; preds = %3
  %11 = trunc i32 %4 to i16
  switch i16 %11, label %46 [
    i16 39, label %12
    i16 37, label %32
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #19
  %20 = icmp ult i32 %19, 53
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = lshr i32 %15, 16
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load i32, ptr %24, align 8, !tbaa !5
  %26 = tail call i32 @subreg_regno_offset(i32 noundef %19, i32 noundef %23, i32 noundef %25, i32 noundef %6) #18
  %27 = load ptr, ptr %13, align 8, !tbaa !5
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef %27) #19
  %29 = add i32 %28, %26
  %30 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #18
  %31 = add i32 %29, %30
  br label %37

32:                                               ; preds = %10
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %34 = icmp ugt i32 %33, 52
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %33) #19
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i32 [ %31, %21 ], [ %36, %35 ]
  %39 = phi i32 [ %29, %21 ], [ %33, %35 ]
  %40 = icmp slt i32 %39, %38
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %41
  %42 = phi i32 [ %44, %41 ], [ %39, %37 ]
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %42) #18
  %44 = add i32 %42, 1
  %45 = icmp eq i32 %44, %38
  br i1 %45, label %46, label %41, !llvm.loop !117

46:                                               ; preds = %41, %37, %10, %12, %18, %32, %3
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_used_regs_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #19
  %9 = icmp slt i32 %8, 53
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !23
  %15 = sext i16 %14 to i32
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ %8, %7 ], [ %15, %10 ]
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = zext nneg i32 %17 to i64
  %21 = lshr i32 %4, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %20, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = zext i8 %25 to i32
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i32 [ %31, %29 ], [ %28, %27 ]
  %31 = add nsw i32 %30, -1
  %32 = add nuw nsw i32 %31, %17
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %32) #18
  %34 = icmp ugt i32 %30, 1
  br i1 %34, label %29, label %35, !llvm.loop !118

35:                                               ; preds = %29, %19, %16, %2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !6, i64 0}
!25 = !{!26, !11, i64 12}
!26 = !{!"reg_info_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = !{!30, !19, i64 24}
!30 = !{!"insn_chain", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !11, i64 32, !11, i64 36, !11, i64 36, !11, i64 36, !11, i64 36, !31, i64 40, !31, i64 72, !19, i64 104, !11, i64 112, !9, i64 120}
!31 = !{!"bitmap_head_def", !19, i64 0, !19, i64 8, !11, i64 16, !19, i64 24}
!32 = !{!30, !19, i64 0}
!33 = !{!34, !19, i64 8}
!34 = !{!"function", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !19, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!35 = !{!36, !19, i64 0}
!36 = !{!"control_flow_graph", !19, i64 0, !19, i64 8, !19, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !19, i64 40, !11, i64 48, !6, i64 52, !6, i64 60, !11, i64 68, !11, i64 72}
!37 = !{!38, !9, i64 72}
!38 = !{!"basic_block_def", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !6, i64 32, !19, i64 48, !19, i64 56, !6, i64 64, !9, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!39 = !{!38, !11, i64 88}
!40 = !{!41, !11, i64 8}
!41 = !{!"saved_hard_reg", !11, i64 0, !11, i64 4, !11, i64 8, !19, i64 16, !11, i64 24, !11, i64 28}
!42 = distinct !{!42, !13}
!43 = !{i8 0, i8 2}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = !{!41, !11, i64 0}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = !{!41, !11, i64 4}
!55 = !{!41, !11, i64 24}
!56 = !{!41, !11, i64 28}
!57 = distinct !{!57, !13}
!58 = !{!41, !19, i64 16}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = !{!31, !19, i64 0}
!71 = !{!72, !19, i64 0}
!72 = !{!"", !19, i64 0, !19, i64 8, !11, i64 16, !9, i64 24}
!73 = !{!72, !19, i64 8}
!74 = !{!75, !11, i64 16}
!75 = !{!"bitmap_element_def", !19, i64 0, !19, i64 8, !11, i64 16, !6, i64 24}
!76 = !{!72, !11, i64 16}
!77 = !{!72, !9, i64 24}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = !{!75, !19, i64 0}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13, !85, !86}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = !{!30, !11, i64 32}
!91 = !{!92, !19, i64 8}
!92 = !{!"rtl_bb_info", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !11, i64 32}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = !{ptr @mark_reg_as_referenced, ptr @replace_reg_with_saved_mem}
!97 = !{!98, !11, i64 0}
!98 = !{!"rtvec_def", !11, i64 0, !6, i64 8}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = !{!104, !11, i64 28}
!104 = !{!"mem_attrs", !19, i64 0, !19, i64 8, !19, i64 16, !11, i64 24, !11, i64 28, !6, i64 32}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = !{!30, !19, i64 8}
!114 = distinct !{!114, !13}
!115 = !{!36, !19, i64 16}
!116 = !{!92, !19, i64 0}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
