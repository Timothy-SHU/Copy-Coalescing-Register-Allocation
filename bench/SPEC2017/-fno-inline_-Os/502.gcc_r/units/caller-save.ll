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
define dso_local void @init_caller_save() local_unnamed_addr #0 !prof !116 {
  %1 = load i8, ptr @caller_save_initialized_p, align 1, !tbaa !117
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %117, !prof !120

3:                                                ; preds = %0
  store i8 1, ptr @caller_save_initialized_p, align 1, !tbaa !117
  store i64 0, ptr @no_caller_save_reg_set, align 8, !tbaa !121
  br label %6

4:                                                ; preds = %41
  %5 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !121
  br label %44

6:                                                ; preds = %3, %41
  %7 = phi i64 [ 0, %3 ], [ %42, %41 ]
  %8 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !117
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11, !prof !123

11:                                               ; preds = %6
  %12 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !121
  %13 = shl nuw nsw i64 1, %7
  %14 = and i64 %12, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %39, !prof !124

16:                                               ; preds = %11
  %17 = trunc i64 %7 to i32
  %18 = add i32 %17, -17
  %19 = icmp ult i32 %18, 2
  br label %20

20:                                               ; preds = %16, %36
  %21 = phi i64 [ 1, %16 ], [ %37, %36 ]
  %22 = icmp ne i64 %21, 1
  %23 = or i1 %19, %22
  br i1 %23, label %27, label %24, !prof !125

24:                                               ; preds = %20
  %25 = trunc i64 %7 to i32
  %26 = tail call i32 @choose_hard_reg_mode(i32 noundef %25, i32 noundef 1, i8 noundef zeroext 0) #18
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ 0, %20 ], [ %26, %24 ]
  %29 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 %21
  store i32 %28, ptr %29, align 4, !tbaa !126
  %30 = icmp eq i32 %28, 0
  %31 = icmp eq i64 %21, 1
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %36, !prof !128

33:                                               ; preds = %27
  %34 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !121
  %35 = or i64 %34, %13
  store i64 %35, ptr @call_fixed_reg_set, align 8, !tbaa !121
  br label %36

36:                                               ; preds = %27, %33
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, 5
  br i1 %38, label %41, label %20, !prof !129, !llvm.loop !130

39:                                               ; preds = %11, %6
  %40 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 1
  store i32 0, ptr %40, align 4, !tbaa !126
  br label %41

41:                                               ; preds = %36, %39
  %42 = add nuw nsw i64 %7, 1
  %43 = icmp eq i64 %42, 53
  br i1 %43, label %4, label %6, !prof !132, !llvm.loop !133

44:                                               ; preds = %4, %49
  %45 = phi i64 [ 0, %4 ], [ %50, %49 ]
  %46 = shl nuw nsw i64 1, %45
  %47 = and i64 %5, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53, !prof !134

49:                                               ; preds = %44
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, 53
  br i1 %51, label %52, label %44, !prof !135, !llvm.loop !136

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
  %66 = load i32, ptr %65, align 4, !tbaa !126
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68, !prof !137

68:                                               ; preds = %63
  %69 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %66, ptr noundef %62, i8 noundef zeroext 0) #18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !138

71:                                               ; preds = %63, %68
  %72 = add nuw nsw i64 %64, 1
  %73 = icmp eq i64 %72, 53
  br i1 %73, label %77, label %63, !prof !132, !llvm.loop !139

74:                                               ; preds = %68
  %75 = lshr i32 %59, 1
  %76 = icmp ult i32 %59, 2
  br i1 %76, label %77, label %58, !prof !135, !llvm.loop !140

77:                                               ; preds = %74, %71
  %78 = phi ptr [ %62, %71 ], [ %57, %74 ]
  %79 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #18
  store ptr %79, ptr @test_reg, align 8, !tbaa !141
  %80 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %78) #18
  store ptr %80, ptr @test_mem, align 8, !tbaa !141
  %81 = load ptr, ptr @test_reg, align 8, !tbaa !141
  %82 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %80, ptr noundef %81) #18
  store ptr %82, ptr @savepat, align 8, !tbaa !141
  %83 = load ptr, ptr @test_reg, align 8, !tbaa !141
  %84 = load ptr, ptr @test_mem, align 8, !tbaa !141
  %85 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %83, ptr noundef %84) #18
  store ptr %85, ptr @restpat, align 8, !tbaa !141
  %86 = load ptr, ptr @savepat, align 8, !tbaa !141
  %87 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %86, i32 noundef -1, ptr noundef null) #18
  store ptr %87, ptr @saveinsn, align 8, !tbaa !141
  %88 = load ptr, ptr @restpat, align 8, !tbaa !141
  %89 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %88, i32 noundef -1, ptr noundef null) #18
  store ptr %89, ptr @restinsn, align 8, !tbaa !141
  br label %90

90:                                               ; preds = %77, %114
  %91 = phi i64 [ 0, %77 ], [ %115, %114 ]
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %90, %111
  %94 = phi i64 [ 1, %90 ], [ %112, %111 ]
  %95 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %91, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !126
  %97 = tail call fastcc i32 @reg_save_code(i32 noundef %92, i32 noundef %96) #19
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %111, !prof !143

99:                                               ; preds = %93
  store i32 0, ptr %95, align 4, !tbaa !126
  %100 = icmp eq i64 %94, 1
  br i1 %100, label %101, label %111, !prof !144

101:                                              ; preds = %99
  %102 = shl nuw i64 1, %91
  %103 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %91
  %104 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !121
  %105 = or i64 %104, %102
  store i64 %105, ptr @call_fixed_reg_set, align 8, !tbaa !121
  %106 = load i8, ptr %103, align 1, !tbaa !117
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108, !prof !145

108:                                              ; preds = %101
  %109 = load i64, ptr @no_caller_save_reg_set, align 8, !tbaa !121
  %110 = or i64 %109, %102
  store i64 %110, ptr @no_caller_save_reg_set, align 8, !tbaa !121
  br label %111

111:                                              ; preds = %93, %101, %108, %99
  %112 = add nuw nsw i64 %94, 1
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %114, label %93, !prof !146, !llvm.loop !147

114:                                              ; preds = %111
  %115 = add nuw nsw i64 %91, 1
  %116 = icmp eq i64 %115, 53
  br i1 %116, label %117, label %90, !prof !132, !llvm.loop !148

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
define internal fastcc i32 @reg_save_code(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !149 !PGOFuncName !150 {
  %3 = sext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_save_code, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !126
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %53, !prof !151

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %1) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !152

11:                                               ; preds = %8
  store i32 -1, ptr %5, align 4, !tbaa !126
  %12 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 -1, ptr %12, align 4, !tbaa !126
  br label %53

13:                                               ; preds = %8
  %14 = load ptr, ptr @test_reg, align 8, !tbaa !141
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #19
  tail call void @df_ref_change_reg_with_loc(i32 noundef %15, i32 noundef %0, ptr noundef %14) #18
  %16 = load ptr, ptr @test_reg, align 8, !tbaa !141
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  store i32 %0, ptr %17, align 8, !tbaa !117
  %18 = load i32, ptr %16, align 8
  %19 = shl i32 %1, 16
  %20 = and i32 %19, 16711680
  %21 = and i32 %18, -16711681
  %22 = or disjoint i32 %21, %20
  store i32 %22, ptr %16, align 8
  %23 = load ptr, ptr @test_mem, align 8, !tbaa !141
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -16711681
  %26 = or disjoint i32 %25, %20
  store i32 %26, ptr %23, align 8
  %27 = load ptr, ptr @saveinsn, align 8, !tbaa !141
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1, i32 1
  store i32 -1, ptr %28, align 8, !tbaa !117
  %29 = load ptr, ptr @restinsn, align 8, !tbaa !141
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1, i32 1
  store i32 -1, ptr %30, align 8, !tbaa !117
  %31 = tail call fastcc i32 @recog_memoized(ptr noundef %27) #19
  store i32 %31, ptr %5, align 4, !tbaa !126
  %32 = load ptr, ptr @restinsn, align 8, !tbaa !141
  %33 = tail call fastcc i32 @recog_memoized(ptr noundef %32) #19
  %34 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 %33, ptr %34, align 4, !tbaa !126
  %35 = load i32, ptr %5, align 4, !tbaa !126
  %36 = icmp eq i32 %35, -1
  %37 = icmp eq i32 %33, -1
  %38 = select i1 %36, i1 true, i1 %37, !prof !138
  br i1 %38, label %47, label %39, !prof !138

39:                                               ; preds = %13
  %40 = load ptr, ptr @saveinsn, align 8, !tbaa !141
  tail call void @extract_insn(ptr noundef %40) #18
  %41 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %42 = load ptr, ptr @restinsn, align 8, !tbaa !141
  tail call void @extract_insn(ptr noundef %42) #18
  %43 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %44 = and i32 %41, 255
  %45 = and i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48, !prof !138

47:                                               ; preds = %39, %13
  store i32 -1, ptr %5, align 4, !tbaa !126
  store i32 -1, ptr %34, align 4, !tbaa !126
  br label %53

48:                                               ; preds = %39
  %49 = load i32, ptr %5, align 4, !tbaa !126
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53, !prof !153

51:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.1) #18
  %52 = load i32, ptr %5, align 4, !tbaa !126
  br label %53

53:                                               ; preds = %51, %48, %47, %2, %11
  %54 = phi i32 [ -1, %11 ], [ %6, %2 ], [ -1, %47 ], [ %49, %48 ], [ %52, %51 ]
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_save_areas() local_unnamed_addr #3 !prof !116 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = mul nuw nsw i64 %2, 40
  %4 = getelementptr i8, ptr getelementptr inbounds ([53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 0, i64 1), i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !tbaa !141
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 53
  br i1 %6, label %7, label %1, !prof !154, !llvm.loop !155

7:                                                ; preds = %1
  store i32 0, ptr @save_slots_num, align 4, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_save_areas() local_unnamed_addr #0 !prof !156 {
  %1 = alloca i32, align 4
  %2 = alloca [53 x ptr], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca [53 x ptr], align 16
  %7 = load i32, ptr @max_regno, align 4, !tbaa !126
  %8 = icmp sgt i32 %7, 53
  br i1 %8, label %9, label %51, !prof !157

9:                                                ; preds = %0
  %10 = load ptr, ptr @reg_renumber, align 8, !tbaa !141
  %11 = load ptr, ptr @reg_info_p, align 8
  %12 = load ptr, ptr @regno_reg_rtx, align 8
  %13 = zext nneg i32 %7 to i64
  br label %14

14:                                               ; preds = %9, %47
  %15 = phi i64 [ 53, %9 ], [ %49, %47 ]
  %16 = phi i64 [ 0, %9 ], [ %48, %47 ]
  %17 = getelementptr inbounds i16, ptr %10, i64 %15
  %18 = load i16, ptr %17, align 2, !tbaa !158
  %19 = sext i16 %18 to i32
  %20 = icmp sgt i16 %18, -1
  br i1 %20, label %21, label %47, !prof !160

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.reg_info_t, ptr %11, i64 %15, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !161
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %47, !prof !163

25:                                               ; preds = %21
  %26 = getelementptr inbounds ptr, ptr %12, i64 %15
  %27 = load ptr, ptr %26, align 8, !tbaa !141
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = tail call fastcc i32 @end_hard_regno(i32 noundef %30, i32 noundef %19) #19
  %32 = icmp ugt i32 %31, %19
  br i1 %32, label %33, label %47, !prof !164

33:                                               ; preds = %25
  %34 = zext nneg i32 %19 to i64
  %35 = zext i32 %31 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %34, %33 ], [ %45, %36 ]
  %38 = phi i64 [ %16, %33 ], [ %44, %36 ]
  %39 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %37
  %40 = load i8, ptr %39, align 1, !tbaa !117
  %41 = icmp eq i8 %40, 0
  %42 = shl nuw i64 1, %37
  %43 = select i1 %41, i64 0, i64 %42, !prof !165
  %44 = or i64 %43, %38
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %35
  br i1 %46, label %47, label %36, !prof !164, !llvm.loop !166

47:                                               ; preds = %36, %25, %14, %21
  %48 = phi i64 [ %16, %21 ], [ %16, %14 ], [ %16, %25 ], [ %44, %36 ]
  %49 = add nuw nsw i64 %15, 1
  %50 = icmp eq i64 %49, %13
  br i1 %50, label %51, label %14, !prof !167, !llvm.loop !168

51:                                               ; preds = %47, %0
  %52 = phi i64 [ 0, %0 ], [ %48, %47 ]
  %53 = load i32, ptr @optimize, align 4, !tbaa !126
  %54 = icmp ne i32 %53, 0
  %55 = load i32, ptr @flag_ira_share_save_slots, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %509, !prof !169

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %6) #20
  tail call fastcc void @initiate_saved_hard_regs() #19
  %59 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !141
  %60 = icmp eq ptr %59, null
  br i1 %60, label %187, label %61, !prof !170

61:                                               ; preds = %58, %185
  %62 = phi ptr [ %65, %185 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.insn_chain, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !171
  %65 = load ptr, ptr %62, align 8, !tbaa !174
  %66 = load i32, ptr %64, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %185, !prof !175

69:                                               ; preds = %61
  %70 = call ptr @find_reg_note(ptr noundef nonnull %64, i32 noundef 27, ptr noundef null) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %185, !prof !176

72:                                               ; preds = %69
  %73 = load i32, ptr @optimize_size, align 4, !tbaa !126
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %95, !prof !177

75:                                               ; preds = %72
  %76 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !126
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78, !prof !177

78:                                               ; preds = %75
  %79 = load ptr, ptr @cfun, align 8, !tbaa !141
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !178
  %82 = load ptr, ptr %81, align 8, !tbaa !180
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 8
  %84 = load i64, ptr %83, align 8, !tbaa !182
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %78, %75
  %87 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !117
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 11
  %90 = load i32, ptr %89, align 8, !tbaa !184
  %91 = add i32 %90, 9
  %92 = icmp ult i32 %91, 19
  br i1 %92, label %95, label %93, !prof !185

93:                                               ; preds = %86
  %94 = sdiv i32 %90, 10
  br label %95

95:                                               ; preds = %93, %86, %72, %78
  %96 = phi i32 [ 1000, %78 ], [ 1000, %72 ], [ %94, %93 ], [ 1, %86 ]
  store i64 0, ptr %3, align 8, !tbaa !121
  %97 = getelementptr inbounds %struct.insn_chain, ptr %62, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %97) #18
  %98 = load i64, ptr @call_used_reg_set, align 8, !tbaa !121
  store i64 0, ptr %4, align 8, !tbaa !121
  %99 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !117
  call void @note_stores(ptr noundef %100, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %4) #18
  %101 = load i32, ptr %64, align 8
  %102 = and i32 %101, 16777216
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104, !prof !177

104:                                              ; preds = %95
  %105 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !186
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @mark_set_regs(ptr noundef nonnull %105, ptr poison, ptr noundef nonnull %4) #19
  br label %108

108:                                              ; preds = %107, %104, %95
  %109 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !121
  %110 = load i64, ptr %4, align 8, !tbaa !121
  %111 = or i64 %110, %109
  %112 = xor i64 %111, -1
  %113 = and i64 %98, %112
  %114 = load i64, ptr %3, align 8, !tbaa !121
  %115 = and i64 %113, %114
  store i64 %115, ptr %3, align 8, !tbaa !121
  br label %116

116:                                              ; preds = %108, %132
  %117 = phi i64 [ 0, %108 ], [ %133, %132 ]
  %118 = load i64, ptr %3, align 8, !tbaa !121
  %119 = shl nuw nsw i64 1, %117
  %120 = and i64 %118, %119
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %132, label %122, !prof !195

122:                                              ; preds = %116
  %123 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %117
  %124 = load ptr, ptr %123, align 8, !tbaa !141
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.saved_hard_reg, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !196
  %129 = add nsw i32 %128, %96
  store i32 %129, ptr %127, align 8, !tbaa !196
  br label %132

130:                                              ; preds = %122
  %131 = trunc i64 %117 to i32
  call fastcc void @new_saved_hard_reg(i32 noundef %131, i32 noundef %96) #19
  br label %132

132:                                              ; preds = %116, %130, %126
  %133 = add nuw nsw i64 %117, 1
  %134 = icmp eq i64 %133, 53
  br i1 %134, label %135, label %116, !prof !198, !llvm.loop !199

135:                                              ; preds = %132
  store i32 53, ptr %1, align 4, !tbaa !126
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %97, ptr noundef nonnull %1) #19
  %136 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !200
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %185, label %138, !prof !201

138:                                              ; preds = %135, %182
  %139 = load ptr, ptr @reg_renumber, align 8, !tbaa !141
  %140 = load i32, ptr %1, align 4, !tbaa !126
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i16, ptr %139, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !158
  %144 = icmp slt i16 %143, 0
  br i1 %144, label %182, label %145, !prof !202

145:                                              ; preds = %138
  %146 = zext nneg i16 %143 to i64
  %147 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !141
  %148 = getelementptr inbounds ptr, ptr %147, i64 %141
  %149 = load ptr, ptr %148, align 8, !tbaa !141
  %150 = load i32, ptr %149, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %146, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !117
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %182, label %157, !prof !203

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
  br i1 %165, label %179, label %166, !prof !204

166:                                              ; preds = %161
  %167 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %162
  %168 = load ptr, ptr %167, align 8, !tbaa !141
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170, !prof !205

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.saved_hard_reg, ptr %168, i64 0, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !196
  %173 = add nsw i32 %172, %96
  store i32 %173, ptr %171, align 8, !tbaa !196
  br label %176

174:                                              ; preds = %166
  %175 = trunc i64 %162 to i32
  call fastcc void @new_saved_hard_reg(i32 noundef %175, i32 noundef %96) #19
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i64, ptr %3, align 8, !tbaa !121
  %178 = or i64 %177, %163
  store i64 %178, ptr %3, align 8, !tbaa !121
  br label %179

179:                                              ; preds = %161, %176
  %180 = add nuw nsw i64 %162, 1
  %181 = icmp ult i64 %180, %160
  br i1 %181, label %161, label %182, !prof !203, !llvm.loop !206

182:                                              ; preds = %179, %145, %138
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %1) #19
  %183 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !200
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %138, !prof !207, !llvm.loop !208

185:                                              ; preds = %182, %135, %61, %69
  %186 = icmp eq ptr %65, null
  br i1 %186, label %187, label %61, !prof !209, !llvm.loop !210

187:                                              ; preds = %185, %58
  %188 = load i32, ptr @saved_regs_num, align 4, !tbaa !126
  %189 = mul nsw i32 %188, %188
  %190 = zext nneg i32 %189 to i64
  %191 = call ptr @xmalloc(i64 noundef %190) #18
  %192 = load i32, ptr @saved_regs_num, align 4, !tbaa !126
  %193 = mul nsw i32 %192, %192
  %194 = zext nneg i32 %193 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %191, i8 0, i64 %194, i1 false)
  %195 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !141
  %196 = icmp eq ptr %195, null
  br i1 %196, label %336, label %197, !prof !170

197:                                              ; preds = %187, %332
  %198 = phi ptr [ %201, %332 ], [ %195, %187 ]
  %199 = getelementptr inbounds %struct.insn_chain, ptr %198, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !171
  %201 = load ptr, ptr %198, align 8, !tbaa !174
  %202 = load i32, ptr %200, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 10
  br i1 %204, label %205, label %332, !prof !175

205:                                              ; preds = %197
  %206 = call ptr @find_reg_note(ptr noundef nonnull %200, i32 noundef 27, ptr noundef null) #18
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %332, !prof !176

208:                                              ; preds = %205
  store i64 0, ptr %3, align 8, !tbaa !121
  %209 = getelementptr inbounds %struct.insn_chain, ptr %198, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %209) #18
  %210 = load i64, ptr @call_used_reg_set, align 8, !tbaa !121
  store i64 0, ptr %4, align 8, !tbaa !121
  %211 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !117
  call void @note_stores(ptr noundef %212, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %4) #18
  %213 = load i32, ptr %200, align 8
  %214 = and i32 %213, 16777216
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216, !prof !177

216:                                              ; preds = %208
  %217 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !186
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  call void @mark_set_regs(ptr noundef nonnull %217, ptr poison, ptr noundef nonnull %4) #19
  br label %220

220:                                              ; preds = %219, %216, %208
  %221 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !121
  %222 = load i64, ptr %4, align 8, !tbaa !121
  %223 = or i64 %222, %221
  %224 = xor i64 %223, -1
  %225 = and i64 %210, %224
  %226 = load i64, ptr %3, align 8, !tbaa !121
  %227 = and i64 %225, %226
  store i64 %227, ptr %3, align 8, !tbaa !121
  br label %228

228:                                              ; preds = %220, %246
  %229 = phi i64 [ 0, %220 ], [ %248, %246 ]
  %230 = phi i32 [ 0, %220 ], [ %247, %246 ]
  %231 = load i64, ptr %3, align 8, !tbaa !121
  %232 = shl nuw nsw i64 1, %229
  %233 = and i64 %231, %232
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %246, label %235, !prof !195

235:                                              ; preds = %228
  %236 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %229
  %237 = load ptr, ptr %236, align 8, !tbaa !141
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #18
  %240 = load ptr, ptr %236, align 8, !tbaa !141
  br label %241

241:                                              ; preds = %235, %239
  %242 = phi ptr [ %237, %235 ], [ %240, %239 ]
  %243 = add nsw i32 %230, 1
  %244 = sext i32 %230 to i64
  %245 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %244
  store ptr %242, ptr %245, align 8, !tbaa !141
  br label %246

246:                                              ; preds = %228, %241
  %247 = phi i32 [ %243, %241 ], [ %230, %228 ]
  %248 = add nuw nsw i64 %229, 1
  %249 = icmp eq i64 %248, 53
  br i1 %249, label %250, label %228, !prof !198, !llvm.loop !211

250:                                              ; preds = %246
  store i32 53, ptr %1, align 4, !tbaa !126
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %209, ptr noundef nonnull %1) #19
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !200
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %256, label %253, !prof !201

253:                                              ; preds = %250
  %254 = load ptr, ptr @reg_renumber, align 8, !tbaa !141
  %255 = load ptr, ptr @regno_reg_rtx, align 8
  br label %262

256:                                              ; preds = %300, %250
  %257 = phi i32 [ %247, %250 ], [ %301, %300 ]
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %332, !prof !212

259:                                              ; preds = %256
  %260 = load i32, ptr @saved_regs_num, align 4
  %261 = zext nneg i32 %257 to i64
  br label %304

262:                                              ; preds = %253, %300
  %263 = phi i32 [ %247, %253 ], [ %301, %300 ]
  %264 = load i32, ptr %1, align 4, !tbaa !126
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i16, ptr %254, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !158
  %268 = icmp slt i16 %267, 0
  br i1 %268, label %300, label %269, !prof !202

269:                                              ; preds = %262
  %270 = zext nneg i16 %267 to i64
  %271 = getelementptr inbounds ptr, ptr %255, i64 %265
  %272 = load ptr, ptr %271, align 8, !tbaa !141
  %273 = load i32, ptr %272, align 8
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %270, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !117
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %300, label %280, !prof !203

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
  br i1 %289, label %296, label %290, !prof !204

290:                                              ; preds = %284
  %291 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %285
  %292 = load ptr, ptr %291, align 8, !tbaa !141
  %293 = add nsw i32 %286, 1
  %294 = sext i32 %286 to i64
  %295 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %294
  store ptr %292, ptr %295, align 8, !tbaa !141
  br label %296

296:                                              ; preds = %284, %290
  %297 = phi i32 [ %293, %290 ], [ %286, %284 ]
  %298 = add nuw nsw i64 %285, 1
  %299 = icmp ult i64 %298, %283
  br i1 %299, label %284, label %300, !prof !203, !llvm.loop !213

300:                                              ; preds = %296, %269, %262
  %301 = phi i32 [ %263, %262 ], [ %263, %269 ], [ %297, %296 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %1) #19
  %302 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !200
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %256, label %262, !prof !207, !llvm.loop !214

304:                                              ; preds = %259, %329
  %305 = phi i64 [ 0, %259 ], [ %330, %329 ]
  %306 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !141
  br label %308

308:                                              ; preds = %304, %326
  %309 = phi i64 [ 0, %304 ], [ %327, %326 ]
  %310 = icmp eq i64 %305, %309
  br i1 %310, label %326, label %311, !prof !215

311:                                              ; preds = %308
  %312 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %309
  %313 = load ptr, ptr %312, align 8, !tbaa !141
  %314 = load i32, ptr %313, align 8, !tbaa !216
  %315 = mul nsw i32 %260, %314
  %316 = load i32, ptr %307, align 8, !tbaa !216
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, ptr %191, i64 %318
  store i8 1, ptr %319, align 1, !tbaa !117
  %320 = load i32, ptr %307, align 8, !tbaa !216
  %321 = mul nsw i32 %320, %260
  %322 = load i32, ptr %313, align 8, !tbaa !216
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %191, i64 %324
  store i8 1, ptr %325, align 1, !tbaa !117
  br label %326

326:                                              ; preds = %308, %311
  %327 = add nuw nsw i64 %309, 1
  %328 = icmp eq i64 %327, %261
  br i1 %328, label %329, label %308, !prof !217, !llvm.loop !218

329:                                              ; preds = %326
  %330 = add nuw nsw i64 %305, 1
  %331 = icmp eq i64 %330, %261
  br i1 %331, label %332, label %304, !prof !219, !llvm.loop !220

332:                                              ; preds = %329, %256, %197, %205
  %333 = icmp eq ptr %201, null
  br i1 %333, label %334, label %197, !prof !209, !llvm.loop !221

334:                                              ; preds = %332
  %335 = load i32, ptr @saved_regs_num, align 4, !tbaa !126
  br label %336

336:                                              ; preds = %334, %187
  %337 = phi i32 [ %335, %334 ], [ %192, %187 ]
  %338 = sext i32 %337 to i64
  call void @spec_qsort(ptr noundef nonnull @all_saved_regs, i64 noundef %338, i64 noundef 8, ptr noundef nonnull @saved_hard_reg_compare_func) #18
  %339 = load i32, ptr @save_slots_num, align 4, !tbaa !126
  %340 = sext i32 %339 to i64
  %341 = shl nsw i64 %340, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 @save_slots, i64 %341, i1 false)
  store i32 0, ptr @save_slots_num, align 4, !tbaa !126
  %342 = load i32, ptr @saved_regs_num, align 4, !tbaa !126
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %508, !prof !157

344:                                              ; preds = %336, %501
  %345 = phi i64 [ %503, %501 ], [ 0, %336 ]
  %346 = phi i32 [ %507, %501 ], [ -1, %336 ]
  %347 = phi i32 [ %504, %501 ], [ %342, %336 ]
  %348 = phi i32 [ %502, %501 ], [ %339, %336 ]
  %349 = add i32 %346, 1
  %350 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %345
  %351 = load ptr, ptr %350, align 8, !tbaa !141
  %352 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !222
  %354 = icmp eq i64 %345, 0
  br i1 %354, label %421, label %355, !prof !223

355:                                              ; preds = %344
  %356 = zext i32 %353 to i64
  br label %357

357:                                              ; preds = %355, %418
  %358 = phi i64 [ 0, %355 ], [ %419, %418 ]
  %359 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !141
  %361 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 4
  %362 = load i32, ptr %361, align 8, !tbaa !224
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %418, label %364

364:                                              ; preds = %357
  %365 = load i32, ptr %351, align 8, !tbaa !216
  %366 = mul nsw i32 %365, %347
  %367 = trunc i64 %358 to i32
  br label %368

368:                                              ; preds = %364, %379
  %369 = phi i32 [ %367, %364 ], [ %381, %379 ]
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !141
  %373 = load i32, ptr %372, align 8, !tbaa !216
  %374 = add nsw i32 %366, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, ptr %191, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !117
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %418

379:                                              ; preds = %368
  %380 = getelementptr inbounds %struct.saved_hard_reg, ptr %372, i64 0, i32 5
  %381 = load i32, ptr %380, align 4, !tbaa !225
  %382 = icmp sgt i32 %381, -1
  br i1 %382, label %368, label %383, !llvm.loop !226

383:                                              ; preds = %379
  %384 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %356, i64 1
  %385 = load i32, ptr %384, align 4, !tbaa !126
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !117
  %389 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 1
  %390 = load i32, ptr %389, align 4, !tbaa !222
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %391, i64 1
  %393 = load i32, ptr %392, align 4, !tbaa !126
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !117
  %397 = icmp ugt i8 %388, %396
  br i1 %397, label %418, label %398

398:                                              ; preds = %383
  %399 = trunc i64 %358 to i32
  %400 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !227
  %402 = sext i32 %353 to i64
  %403 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %402, i64 1
  %404 = load i32, ptr %403, align 4, !tbaa !126
  %405 = call ptr @adjust_address_1(ptr noundef %401, i32 noundef %404, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  %406 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %405, ptr %406, align 8, !tbaa !227
  %407 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %356, i64 1
  store ptr %405, ptr %407, align 8, !tbaa !141
  %408 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 5
  %409 = load i32, ptr %408, align 4, !tbaa !225
  %410 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 5
  store i32 %409, ptr %410, align 4, !tbaa !225
  %411 = trunc i64 %345 to i32
  store i32 %411, ptr %408, align 4, !tbaa !225
  %412 = load ptr, ptr @dump_file, align 8, !tbaa !141
  %413 = icmp eq ptr %412, null
  br i1 %413, label %421, label %414

414:                                              ; preds = %398
  %415 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 1
  %416 = load i32, ptr %415, align 4, !tbaa !222
  %417 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %412, ptr noundef nonnull @.str.2, i32 noundef %353, i32 noundef %416) #19
  br label %421

418:                                              ; preds = %368, %383, %357
  %419 = add nuw nsw i64 %358, 1
  %420 = icmp eq i64 %419, %345
  br i1 %420, label %421, label %357, !prof !228, !llvm.loop !229

421:                                              ; preds = %418, %344, %398, %414
  %422 = phi i32 [ %399, %398 ], [ %399, %414 ], [ 0, %344 ], [ %349, %418 ]
  %423 = zext i32 %422 to i64
  %424 = icmp eq i64 %345, %423
  br i1 %424, label %425, label %501, !prof !230

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 4
  store i32 1, ptr %426, align 8, !tbaa !224
  %427 = zext i32 %353 to i64
  %428 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %427, i64 1
  %429 = icmp sgt i32 %348, 0
  br i1 %429, label %430, label %480, !prof !231

430:                                              ; preds = %425, %453
  %431 = phi i64 [ %456, %453 ], [ 0, %425 ]
  %432 = phi i32 [ %454, %453 ], [ -1, %425 ]
  %433 = getelementptr inbounds [53 x ptr], ptr %6, i64 0, i64 %431
  %434 = load ptr, ptr %433, align 8, !tbaa !141
  %435 = icmp eq ptr %434, null
  br i1 %435, label %453, label %436, !prof !232

436:                                              ; preds = %430
  %437 = load i32, ptr %428, align 4, !tbaa !126
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !117
  %441 = load i32, ptr %434, align 8
  %442 = lshr i32 %441, 16
  %443 = and i32 %442, 255
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !117
  %447 = icmp ule i8 %440, %446
  %448 = icmp slt i32 %432, 0
  %449 = select i1 %447, i1 %448, i1 false
  %450 = trunc i64 %431 to i32
  %451 = select i1 %449, i32 %450, i32 %432, !prof !233
  %452 = icmp eq i32 %443, %437
  br i1 %452, label %458, label %453, !prof !234

453:                                              ; preds = %436, %430
  %454 = phi i32 [ %432, %430 ], [ %451, %436 ]
  %455 = zext nneg i32 %348 to i64
  %456 = add nuw nsw i64 %431, 1
  %457 = icmp eq i64 %456, %455
  br i1 %457, label %458, label %430, !prof !235, !llvm.loop !236

458:                                              ; preds = %453, %436
  %459 = phi i32 [ %454, %453 ], [ %451, %436 ]
  %460 = icmp sgt i32 %459, -1
  br i1 %460, label %461, label %480, !prof !237

461:                                              ; preds = %458
  %462 = zext nneg i32 %459 to i64
  %463 = getelementptr inbounds [53 x ptr], ptr %6, i64 0, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !141
  %465 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %464, ptr %465, align 8, !tbaa !227
  %466 = load i32, ptr %352, align 4, !tbaa !222
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %467, i64 1
  %469 = load i32, ptr %468, align 4, !tbaa !126
  %470 = call ptr @adjust_address_1(ptr noundef %464, i32 noundef %469, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  store ptr %470, ptr %465, align 8, !tbaa !227
  %471 = load ptr, ptr @dump_file, align 8, !tbaa !141
  %472 = icmp eq ptr %471, null
  br i1 %472, label %475, label %473, !prof !234

473:                                              ; preds = %461
  %474 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %471, ptr noundef nonnull @.str.3, i32 noundef %353) #19
  br label %475

475:                                              ; preds = %473, %461
  store ptr null, ptr %463, align 8, !tbaa !141
  %476 = add nuw nsw i32 %459, 1
  %477 = icmp eq i32 %476, %348
  %478 = sext i1 %477 to i32
  %479 = add nsw i32 %348, %478
  br label %492

480:                                              ; preds = %425, %458
  %481 = load i32, ptr %428, align 4, !tbaa !126
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !117
  %485 = zext i8 %484 to i64
  %486 = call ptr @assign_stack_local_1(i32 noundef %481, i64 noundef %485, i32 noundef 0, i8 noundef zeroext 1) #18
  %487 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %486, ptr %487, align 8, !tbaa !227
  %488 = load ptr, ptr @dump_file, align 8, !tbaa !141
  %489 = icmp eq ptr %488, null
  br i1 %489, label %492, label %490, !prof !238

490:                                              ; preds = %480
  %491 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %488, ptr noundef nonnull @.str.4, i32 noundef %353) #19
  br label %492

492:                                              ; preds = %475, %480, %490
  %493 = phi i32 [ %348, %490 ], [ %348, %480 ], [ %479, %475 ]
  %494 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !227
  %496 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %427, i64 1
  store ptr %495, ptr %496, align 8, !tbaa !141
  %497 = load i32, ptr @save_slots_num, align 4, !tbaa !126
  %498 = add nsw i32 %497, 1
  store i32 %498, ptr @save_slots_num, align 4, !tbaa !126
  %499 = sext i32 %497 to i64
  %500 = getelementptr inbounds [53 x ptr], ptr @save_slots, i64 0, i64 %499
  store ptr %495, ptr %500, align 8, !tbaa !141
  br label %501

501:                                              ; preds = %421, %492
  %502 = phi i32 [ %493, %492 ], [ %348, %421 ]
  %503 = add nuw nsw i64 %345, 1
  %504 = load i32, ptr @saved_regs_num, align 4, !tbaa !126
  %505 = sext i32 %504 to i64
  %506 = icmp slt i64 %503, %505
  %507 = add nsw i32 %346, 1
  br i1 %506, label %344, label %508, !prof !170, !llvm.loop !239

508:                                              ; preds = %501, %336
  call void @free(ptr noundef %191) #19
  call fastcc void @finish_saved_hard_regs() #19
  call void @llvm.lifetime.end.p0(i64 424, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 424, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  br label %562

509:                                              ; preds = %51, %559
  %510 = phi i64 [ %560, %559 ], [ 0, %51 ]
  %511 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %510, i64 1
  br label %512

512:                                              ; preds = %509, %556
  %513 = phi i64 [ 4, %509 ], [ %557, %556 ]
  %514 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %510, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !126
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %556, label %517

517:                                              ; preds = %512
  %518 = load ptr, ptr %511, align 8, !tbaa !141
  %519 = icmp eq ptr %518, null
  br i1 %519, label %523, label %556

520:                                              ; preds = %523
  %521 = add nuw nsw i64 %524, 1
  %522 = icmp eq i64 %521, %513
  br i1 %522, label %532, label %523, !llvm.loop !240

523:                                              ; preds = %517, %520
  %524 = phi i64 [ %521, %520 ], [ 0, %517 ]
  %525 = add nuw nsw i64 %524, %510
  %526 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %525, i64 1
  %527 = load ptr, ptr %526, align 8, !tbaa !141
  %528 = icmp eq ptr %527, null
  br i1 %528, label %520, label %556

529:                                              ; preds = %532
  %530 = add nuw nsw i64 %533, 1
  %531 = icmp eq i64 %530, %513
  br i1 %531, label %538, label %532, !llvm.loop !241

532:                                              ; preds = %520, %529
  %533 = phi i64 [ %530, %529 ], [ 0, %520 ]
  %534 = add nuw nsw i64 %533, %510
  %535 = shl nuw i64 1, %534
  %536 = and i64 %535, %52
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %556, label %529

538:                                              ; preds = %529
  %539 = zext i32 %515 to i64
  %540 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %539
  %541 = load i8, ptr %540, align 1, !tbaa !117
  %542 = zext i8 %541 to i64
  %543 = tail call ptr @assign_stack_local_1(i32 noundef %515, i64 noundef %542, i32 noundef 0, i8 noundef zeroext 1) #18
  %544 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %510, i64 %513
  store ptr %543, ptr %544, align 8, !tbaa !141
  br label %545

545:                                              ; preds = %538, %545
  %546 = phi i64 [ 0, %538 ], [ %554, %545 ]
  %547 = load ptr, ptr %544, align 8, !tbaa !141
  %548 = add nuw nsw i64 %546, %510
  %549 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %548, i64 1
  %550 = load i32, ptr %549, align 4, !tbaa !126
  %551 = shl nsw i64 %546, 2
  %552 = tail call ptr @adjust_address_1(ptr noundef %547, i32 noundef %550, i64 noundef %551, i32 noundef 0, i32 noundef 1) #18
  %553 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %548, i64 1
  store ptr %552, ptr %553, align 8, !tbaa !141
  %554 = add nuw nsw i64 %546, 1
  %555 = icmp eq i64 %554, %513
  br i1 %555, label %556, label %545, !llvm.loop !242

556:                                              ; preds = %523, %532, %545, %512, %517
  %557 = add nsw i64 %513, -1
  %558 = icmp ugt i64 %513, 1
  br i1 %558, label %512, label %559, !llvm.loop !243

559:                                              ; preds = %556
  %560 = add nuw nsw i64 %510, 1
  %561 = icmp eq i64 %560, 53
  br i1 %561, label %562, label %509, !llvm.loop !244

562:                                              ; preds = %559, %508
  br label %563

563:                                              ; preds = %562, %575
  %564 = phi i64 [ %576, %575 ], [ 0, %562 ]
  br label %565

565:                                              ; preds = %563, %572
  %566 = phi i64 [ 4, %563 ], [ %573, %572 ]
  %567 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %564, i64 %566
  %568 = load ptr, ptr %567, align 8, !tbaa !141
  %569 = icmp eq ptr %568, null
  br i1 %569, label %572, label %570, !prof !245

570:                                              ; preds = %565
  %571 = call i32 @get_frame_alias_set() #18
  call void @set_mem_alias_set(ptr noundef nonnull %568, i32 noundef %571) #18
  br label %572

572:                                              ; preds = %565, %570
  %573 = add nsw i64 %566, -1
  %574 = icmp ugt i64 %566, 1
  br i1 %574, label %565, label %575, !prof !246, !llvm.loop !247

575:                                              ; preds = %572
  %576 = add nuw nsw i64 %564, 1
  %577 = icmp eq i64 %576, 53
  br i1 %577, label %578, label %563, !prof !248, !llvm.loop !249

578:                                              ; preds = %575
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !prof !250 !PGOFuncName !251 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !117
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @initiate_saved_hard_regs() unnamed_addr #5 !prof !156 !PGOFuncName !252 {
  store i32 0, ptr @saved_regs_num, align 4, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @hard_reg_map, i8 0, i64 424, i1 false), !tbaa !141
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_set_regs(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 !prof !253 !PGOFuncName !254 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %41 [
    i16 39, label %6
    i16 37, label %19
  ], !prof !255

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !117
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
  br i1 %21, label %22, label %41, !prof !256

22:                                               ; preds = %19
  %23 = lshr i32 %4, 16
  %24 = and i32 %23, 255
  %25 = tail call fastcc i32 @end_hard_regno(i32 noundef %24, i32 noundef %20) #19
  br label %26

26:                                               ; preds = %15, %22
  %27 = phi i32 [ %18, %15 ], [ %25, %22 ]
  %28 = phi i32 [ %16, %15 ], [ %20, %22 ]
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %30, label %41, !prof !257

30:                                               ; preds = %26
  %31 = load i64, ptr %2, align 8, !tbaa !121
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %37, %32 ]
  %34 = phi i32 [ %28, %30 ], [ %38, %32 ]
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = or i64 %33, %36
  %38 = add nsw i32 %34, 1
  %39 = icmp eq i32 %38, %27
  br i1 %39, label %40, label %32, !prof !257, !llvm.loop !258

40:                                               ; preds = %32
  store i64 %37, ptr %2, align 8, !tbaa !121
  br label %41

41:                                               ; preds = %26, %40, %6, %12, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @new_saved_hard_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !156 !PGOFuncName !259 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #18
  %4 = load i32, ptr @saved_regs_num, align 4, !tbaa !126
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %5
  store ptr %3, ptr %6, align 8, !tbaa !141
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %7
  store ptr %3, ptr %8, align 8, !tbaa !141
  %9 = add nsw i32 %4, 1
  store i32 %9, ptr @saved_regs_num, align 4, !tbaa !126
  store i32 %4, ptr %3, align 8, !tbaa !216
  %10 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 1
  store i32 %0, ptr %10, align 4, !tbaa !222
  %11 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !196
  %12 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 4
  store i32 0, ptr %12, align 8, !tbaa !224
  %13 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !260 !PGOFuncName !261 {
  %4 = load ptr, ptr %1, align 8, !tbaa !262
  store ptr %4, ptr %0, align 8, !tbaa !263
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !265
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !266

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !263
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !267
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !269

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 53, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !270
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !121
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %21 = and i32 %16, 53
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %19, %22
  store i64 %23, ptr %20, align 8, !tbaa !271
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %16, %25
  store i32 %26, ptr %2, align 4, !tbaa !126
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !272 !PGOFuncName !273 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !271
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !274

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !275

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !126
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !276, !llvm.loop !277

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !126
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !126
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !270
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !263
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !270
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !278

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !121
  store i64 %35, ptr %3, align 8, !tbaa !271
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !279

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !126
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !126
  %40 = load i32, ptr %23, align 8, !tbaa !270
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !270
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !280, !llvm.loop !281

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !282
  store ptr %44, ptr %0, align 8, !tbaa !263
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !283

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !267
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !126
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !271
  store i32 %16, ptr %1, align 4, !tbaa !126
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !284 !PGOFuncName !285 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !271
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !271
  %6 = load i32, ptr %1, align 4, !tbaa !126
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !126
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @saved_hard_reg_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !286 !PGOFuncName !287 {
  %3 = load ptr, ptr %0, align 8, !tbaa !141
  %4 = load ptr, ptr %1, align 8, !tbaa !141
  %5 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !126
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !196
  %12 = sub nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !196
  %17 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !196
  %19 = sub nsw i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %7
  %22 = load i32, ptr %3, align 8, !tbaa !216
  %23 = load i32, ptr %4, align 8, !tbaa !216
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
define internal fastcc void @finish_saved_hard_regs() unnamed_addr #0 !prof !156 !PGOFuncName !288 {
  %1 = load i32, ptr @saved_regs_num, align 4, !tbaa !126
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %11, !prof !157

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %9, %5 ]
  %7 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  tail call void @free(ptr noundef %8) #19
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, %4
  br i1 %10, label %11, label %5, !prof !157, !llvm.loop !289

11:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_frame_alias_set() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @save_call_clobbered_regs() local_unnamed_addr #0 !prof !290 {
  %1 = alloca [53 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 0, ptr @hard_regs_saved, align 8, !tbaa !121
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !126
  %6 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !141
  %7 = icmp eq ptr %6, null
  br i1 %7, label %316, label %8, !prof !291

8:                                                ; preds = %0, %313
  %9 = phi ptr [ %15, %313 ], [ %6, %0 ]
  %10 = phi ptr [ %314, %313 ], [ null, %0 ]
  %11 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = load ptr, ptr %9, align 8, !tbaa !174
  %16 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !292

20:                                               ; preds = %8
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 787, ptr noundef nonnull @.str.1) #18
  %21 = load i32, ptr %12, align 8
  br label %22

22:                                               ; preds = %8, %20
  %23 = phi i32 [ %13, %8 ], [ %21, %20 ]
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -7
  %26 = icmp ult i32 %25, 4
  %27 = icmp eq i32 %24, 7
  br i1 %26, label %28, label %221, !prof !293

28:                                               ; preds = %22
  %29 = load i32, ptr @n_regs_saved, align 4, !tbaa !126
  br i1 %27, label %224, label %30, !prof !294

30:                                               ; preds = %28
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %59, label %32, !prof !295

32:                                               ; preds = %30
  %33 = icmp eq i32 %14, 9
  br i1 %33, label %34, label %36, !prof !296

34:                                               ; preds = %32
  %35 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  br label %41

36:                                               ; preds = %32
  store i64 0, ptr @referenced_regs, align 8, !tbaa !121
  %37 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %37, ptr noundef nonnull @mark_reg_as_referenced, ptr noundef null) #19
  %38 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  %39 = load i64, ptr @referenced_regs, align 8, !tbaa !121
  %40 = and i64 %39, %38
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i64 [ %40, %36 ], [ %35, %34 ]
  store i64 %42, ptr @referenced_regs, align 8, !tbaa !121
  br label %43

43:                                               ; preds = %41, %54
  %44 = phi i64 [ %42, %41 ], [ %55, %54 ]
  %45 = phi i32 [ 0, %41 ], [ %57, %54 ]
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %44, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50, !prof !297

50:                                               ; preds = %43
  %51 = call fastcc i32 @insert_restore(ptr noundef nonnull %9, i32 noundef 1, i32 noundef %45, ptr noundef nonnull %1) #19
  %52 = add nsw i32 %51, %45
  %53 = load i64, ptr @referenced_regs, align 8, !tbaa !121
  br label %54

54:                                               ; preds = %43, %50
  %55 = phi i64 [ %53, %50 ], [ %44, %43 ]
  %56 = phi i32 [ %52, %50 ], [ %45, %43 ]
  %57 = add nsw i32 %56, 1
  %58 = icmp slt i32 %56, 52
  br i1 %58, label %43, label %59, !prof !298, !llvm.loop !299

59:                                               ; preds = %54, %30
  %60 = icmp eq i32 %14, 10
  br i1 %60, label %61, label %229, !prof !300

61:                                               ; preds = %59
  %62 = load i32, ptr %12, align 8
  %63 = and i32 %62, 16777216
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %229, !prof !301

65:                                               ; preds = %61
  %66 = call ptr @find_reg_note(ptr noundef nonnull %12, i32 noundef 27, ptr noundef null) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %229, !prof !302

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  store i64 0, ptr %4, align 8, !tbaa !121
  %69 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %69) #18
  %70 = load i64, ptr %4, align 8, !tbaa !121
  br label %71

71:                                               ; preds = %68, %79
  %72 = phi i64 [ 0, %68 ], [ %82, %79 ]
  %73 = shl nuw nsw i64 1, %72
  %74 = and i64 %70, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %79, label %76, !prof !303

76:                                               ; preds = %71
  %77 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %72, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !126
  br label %79

79:                                               ; preds = %71, %76
  %80 = phi i32 [ %78, %76 ], [ 0, %71 ]
  %81 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %72
  store i32 %80, ptr %81, align 4
  %82 = add nuw nsw i64 %72, 1
  %83 = icmp eq i64 %82, 53
  br i1 %83, label %84, label %71, !prof !304, !llvm.loop !305

84:                                               ; preds = %79
  store i32 53, ptr %3, align 4, !tbaa !126
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %69, ptr noundef nonnull %3) #19
  %85 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !200
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %179, label %87, !prof !306

87:                                               ; preds = %84
  %88 = load ptr, ptr @reg_renumber, align 8, !tbaa !141
  br label %89

89:                                               ; preds = %87, %175
  %90 = phi ptr [ %88, %87 ], [ %176, %175 ]
  %91 = load i32, ptr %3, align 4, !tbaa !126
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i16, ptr %90, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !158
  %95 = sext i16 %94 to i32
  %96 = icmp slt i16 %94, 0
  br i1 %96, label %175, label %97, !prof !307

97:                                               ; preds = %89
  %98 = zext nneg i32 %95 to i64
  %99 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !141
  %100 = getelementptr inbounds ptr, ptr %99, i64 %92
  %101 = load ptr, ptr %100, align 8, !tbaa !141
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %98, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !117
  %108 = zext i8 %107 to i32
  %109 = add nsw i16 %94, -17
  %110 = icmp ult i16 %109, 2
  br i1 %110, label %127, label %111, !prof !308

111:                                              ; preds = %97
  %112 = trunc i32 %103 to i8
  switch i8 %112, label %121 [
    i8 0, label %113
    i8 15, label %118
  ], !prof !309

113:                                              ; preds = %111
  %114 = icmp eq i8 %107, 1
  br i1 %114, label %115, label %127

115:                                              ; preds = %113
  %116 = call i32 @choose_hard_reg_mode(i32 noundef %95, i32 noundef %108, i8 noundef zeroext 0) #18
  %117 = load ptr, ptr @reg_renumber, align 8, !tbaa !141
  br label %127

118:                                              ; preds = %111
  %119 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 9), align 1, !tbaa !117
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %111, %118
  %122 = and i32 %102, 16711680
  %123 = icmp eq i32 %122, 917504
  br i1 %123, label %124, label %126, !prof !310

124:                                              ; preds = %121
  %125 = icmp ugt i16 %94, 3
  br i1 %125, label %127, label %126

126:                                              ; preds = %124, %121
  br label %127

127:                                              ; preds = %113, %118, %124, %126, %115, %97
  %128 = phi ptr [ %90, %97 ], [ %90, %113 ], [ %117, %115 ], [ %90, %118 ], [ %90, %126 ], [ %90, %124 ]
  %129 = phi i32 [ 0, %97 ], [ 0, %113 ], [ %116, %115 ], [ 16, %118 ], [ %104, %126 ], [ 16, %124 ]
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !117
  %133 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %98
  %134 = load i32, ptr %133, align 4, !tbaa !126
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !117
  %138 = icmp ugt i8 %132, %137
  br i1 %138, label %139, label %140, !prof !311

139:                                              ; preds = %127
  store i32 %129, ptr %133, align 4, !tbaa !126
  br label %140

140:                                              ; preds = %139, %127
  %141 = icmp eq i8 %107, 0
  br i1 %141, label %175, label %142, !prof !312

142:                                              ; preds = %140
  %143 = zext nneg i16 %94 to i64
  %144 = zext i8 %107 to i64
  %145 = load i64, ptr %4, align 8, !tbaa !121
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
  br i1 %167, label %168, label %158, !prof !313, !llvm.loop !314

168:                                              ; preds = %158
  %169 = insertelement <2 x i64> poison, i64 %159, i64 0
  %170 = shufflevector <2 x i64> %169, <2 x i64> poison, <2 x i32> zeroinitializer
  %171 = or disjoint <2 x i64> %170, <i64 0, i64 1>
  %172 = icmp ugt <2 x i64> %171, %150
  %173 = select <2 x i1> %172, <2 x i64> %161, <2 x i64> %164
  %174 = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %173)
  store i64 %174, ptr %4, align 8, !tbaa !121
  br label %175

175:                                              ; preds = %140, %168, %89
  %176 = phi ptr [ %128, %140 ], [ %128, %168 ], [ %90, %89 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %177 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !200
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %89, !prof !317, !llvm.loop !318

179:                                              ; preds = %175, %84
  store i64 0, ptr %2, align 8, !tbaa !121
  %180 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !117
  call void @note_stores(ptr noundef %181, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %2) #18
  %182 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !121
  %183 = load i64, ptr %4, align 8, !tbaa !121
  %184 = load i64, ptr %2, align 8, !tbaa !121
  %185 = or i64 %182, %184
  %186 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  %187 = or i64 %185, %186
  %188 = xor i64 %187, -1
  %189 = and i64 %183, %188
  %190 = load i64, ptr @call_used_reg_set, align 8, !tbaa !121
  %191 = and i64 %190, %189
  store i64 %191, ptr %4, align 8, !tbaa !121
  br label %192

192:                                              ; preds = %179, %202
  %193 = phi i32 [ 0, %179 ], [ %204, %202 ]
  %194 = load i64, ptr %4, align 8, !tbaa !121
  %195 = zext nneg i32 %193 to i64
  %196 = shl nuw nsw i64 1, %195
  %197 = and i64 %194, %196
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %202, label %199, !prof !319

199:                                              ; preds = %192
  %200 = call fastcc i32 @insert_save(ptr noundef nonnull %9, i32 noundef %193, ptr noundef nonnull %4, ptr noundef nonnull %1) #19
  %201 = add i32 %200, %193
  br label %202

202:                                              ; preds = %192, %199
  %203 = phi i32 [ %193, %192 ], [ %201, %199 ]
  %204 = add i32 %203, 1
  %205 = icmp ult i32 %204, 53
  br i1 %205, label %192, label %206, !prof !320, !llvm.loop !321

206:                                              ; preds = %202
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !126
  %207 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  br label %208

208:                                              ; preds = %206, %216
  %209 = phi i64 [ 0, %206 ], [ %218, %216 ]
  %210 = phi i32 [ 0, %206 ], [ %217, %216 ]
  %211 = shl nuw nsw i64 1, %209
  %212 = and i64 %207, %211
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %216, label %214, !prof !322

214:                                              ; preds = %208
  %215 = add nsw i32 %210, 1
  store i32 %215, ptr @n_regs_saved, align 4, !tbaa !126
  br label %216

216:                                              ; preds = %208, %214
  %217 = phi i32 [ %210, %208 ], [ %215, %214 ]
  %218 = add nuw nsw i64 %209, 1
  %219 = icmp eq i64 %218, 53
  br i1 %219, label %220, label %208, !prof !304, !llvm.loop !323

220:                                              ; preds = %216
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %229

221:                                              ; preds = %22
  br i1 %27, label %222, label %229, !prof !324

222:                                              ; preds = %221
  %223 = load i32, ptr @n_regs_saved, align 4, !tbaa !126
  br label %224

224:                                              ; preds = %222, %28
  %225 = phi i32 [ %223, %222 ], [ %29, %28 ]
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %228, ptr noundef nonnull @replace_reg_with_saved_mem, ptr noundef nonnull %1) #19
  br label %229

229:                                              ; preds = %59, %61, %65, %220, %221, %224, %227
  %230 = phi ptr [ %10, %227 ], [ %10, %224 ], [ %10, %221 ], [ %9, %220 ], [ %9, %65 ], [ %9, %61 ], [ %9, %59 ]
  %231 = load ptr, ptr %9, align 8, !tbaa !174
  %232 = icmp eq ptr %231, null
  br i1 %232, label %239, label %233, !prof !325

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.insn_chain, ptr %231, i64 0, i32 4
  %235 = load i32, ptr %234, align 8, !tbaa !326
  %236 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 4
  %237 = load i32, ptr %236, align 8, !tbaa !326
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %313, label %239, !prof !327

239:                                              ; preds = %233, %229
  %240 = load i32, ptr %12, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 7
  br i1 %242, label %243, label %288, !prof !328

243:                                              ; preds = %239
  %244 = icmp eq ptr %230, null
  br i1 %244, label %288, label %245

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.insn_chain, ptr %230, i64 0, i32 4
  %247 = load i32, ptr %246, align 8, !tbaa !326
  %248 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 4
  %249 = load i32, ptr %248, align 8, !tbaa !326
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %251, label %288

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !117
  %254 = getelementptr inbounds %struct.insn_chain, ptr %230, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !171
  %256 = icmp eq ptr %253, %255
  br i1 %256, label %288, label %257

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !117
  %260 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %259, i64 0, i32 7
  br label %262

262:                                              ; preds = %257, %285
  %263 = phi ptr [ %253, %257 ], [ %265, %285 ]
  %264 = getelementptr inbounds %struct.rtx_def, ptr %263, i64 0, i32 1, i32 0, i32 0, i64 1
  %265 = load ptr, ptr %264, align 8, !tbaa !117
  %266 = load i32, ptr %263, align 8
  %267 = trunc i32 %266 to i16
  switch i16 %267, label %284 [
    i16 13, label %268
    i16 7, label %285
  ]

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.rtx_def, ptr %263, i64 0, i32 1, i32 0, i32 0, i64 2
  %270 = load ptr, ptr %269, align 8, !tbaa !117
  %271 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %270, ptr %271, align 8, !tbaa !117
  %272 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %265, ptr %272, align 8, !tbaa !117
  store ptr %12, ptr %264, align 8, !tbaa !117
  %273 = load ptr, ptr %260, align 8, !tbaa !117
  store ptr %273, ptr %269, align 8, !tbaa !117
  store ptr %263, ptr %260, align 8, !tbaa !117
  %274 = load ptr, ptr %269, align 8, !tbaa !117
  %275 = icmp eq ptr %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %268
  %277 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %263, ptr %277, align 8, !tbaa !117
  br label %278

278:                                              ; preds = %276, %268
  %279 = load ptr, ptr %261, align 8, !tbaa !117
  %280 = getelementptr inbounds %struct.rtl_bb_info, ptr %279, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !329
  %282 = icmp eq ptr %281, %12
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  store ptr %263, ptr %280, align 8, !tbaa !329
  br label %285

284:                                              ; preds = %262
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 916, ptr noundef nonnull @.str.1) #18
  br label %285

285:                                              ; preds = %262, %284, %283, %278
  %286 = load ptr, ptr %254, align 8, !tbaa !171
  %287 = icmp eq ptr %265, %286
  br i1 %287, label %288, label %262, !llvm.loop !331

288:                                              ; preds = %285, %251, %245, %243, %239
  %289 = load i32, ptr @n_regs_saved, align 4, !tbaa !126
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %313, label %291, !prof !332

291:                                              ; preds = %288
  %292 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  br label %293

293:                                              ; preds = %291, %308
  %294 = phi i64 [ %309, %308 ], [ %292, %291 ]
  %295 = phi i32 [ %311, %308 ], [ 0, %291 ]
  %296 = zext nneg i32 %295 to i64
  %297 = shl nuw i64 1, %296
  %298 = and i64 %294, %297
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %308, label %300

300:                                              ; preds = %293
  %301 = load i32, ptr %12, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 9
  %304 = zext i1 %303 to i32
  %305 = call fastcc i32 @insert_restore(ptr noundef nonnull %9, i32 noundef %304, i32 noundef %295, ptr noundef nonnull %1) #19
  %306 = add nsw i32 %305, %295
  %307 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  br label %308

308:                                              ; preds = %293, %300
  %309 = phi i64 [ %307, %300 ], [ %294, %293 ]
  %310 = phi i32 [ %306, %300 ], [ %295, %293 ]
  %311 = add nsw i32 %310, 1
  %312 = icmp slt i32 %310, 52
  br i1 %312, label %293, label %313, !llvm.loop !333

313:                                              ; preds = %308, %288, %233
  %314 = phi ptr [ %230, %233 ], [ null, %288 ], [ null, %308 ]
  %315 = icmp eq ptr %15, null
  br i1 %315, label %316, label %8, !prof !334, !llvm.loop !335

316:                                              ; preds = %313, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_referenced_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !336 !PGOFuncName !337 {
  br label %4

4:                                                ; preds = %89, %3
  %5 = phi ptr [ %0, %3 ], [ %90, %89 ]
  %6 = phi ptr [ %2, %3 ], [ null, %89 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !141
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %45 [
    i16 23, label %10
    i16 25, label %13
  ], !prof !338

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %6) #19
  %12 = load ptr, ptr %5, align 8, !tbaa !141
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %12, %10 ], [ %7, %4 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %45 [
    i16 37, label %19
    i16 36, label %134
    i16 46, label %134
    i16 39, label %22
  ], !prof !339

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %16) #19
  %21 = icmp ult i32 %20, 53
  br i1 %21, label %134, label %61, !prof !340

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !117
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
  %36 = load i8, ptr %35, align 1, !tbaa !117
  %37 = lshr i32 %25, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !117
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
  %53 = load ptr, ptr %52, align 8, !tbaa !141
  %54 = load i32, ptr %53, align 8
  br label %55

55:                                               ; preds = %45, %50
  %56 = phi ptr [ %53, %50 ], [ %47, %45 ]
  %57 = phi i32 [ %54, %50 ], [ %48, %45 ]
  %58 = phi ptr [ %52, %50 ], [ %49, %45 ]
  %59 = and i32 %57, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %96, !prof !341

61:                                               ; preds = %19, %55
  %62 = phi i32 [ %57, %55 ], [ %17, %19 ]
  %63 = phi ptr [ %56, %55 ], [ %16, %19 ]
  %64 = phi ptr [ %58, %55 ], [ %15, %19 ]
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %63) #19
  %66 = icmp slt i32 %65, 53
  br i1 %66, label %73, label %67, !prof !342

67:                                               ; preds = %61
  %68 = load ptr, ptr @reg_renumber, align 8, !tbaa !141
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds i16, ptr %68, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !158
  %72 = sext i16 %71 to i32
  br label %73

73:                                               ; preds = %61, %67
  %74 = phi i32 [ %72, %67 ], [ %65, %61 ]
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %79, !prof !342

76:                                               ; preds = %73
  %77 = lshr i32 %62, 16
  %78 = and i32 %77, 255
  tail call void %1(ptr noundef nonnull %64, i32 noundef %78, i32 noundef %74, ptr noundef %6) #18, !callees !343
  br label %134

79:                                               ; preds = %73
  %80 = icmp eq ptr %6, null
  br i1 %80, label %81, label %134, !prof !344

81:                                               ; preds = %79
  %82 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !141
  %83 = sext i32 %65 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !141
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87, !prof !345

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  br label %89

89:                                               ; preds = %87, %91
  %90 = phi ptr [ %88, %87 ], [ %93, %91 ]
  br label %4

91:                                               ; preds = %81
  %92 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !141
  %93 = getelementptr inbounds ptr, ptr %92, i64 %83
  %94 = load ptr, ptr %93, align 8, !tbaa !141
  %95 = icmp eq ptr %94, null
  br i1 %95, label %134, label %89

96:                                               ; preds = %55
  %97 = zext nneg i32 %59 to i64
  %98 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !141
  %100 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %97
  %101 = load i8, ptr %100, align 1, !tbaa !117
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %134, label %103, !prof !346

103:                                              ; preds = %96
  %104 = zext i8 %101 to i64
  br label %105

105:                                              ; preds = %103, %132
  %106 = phi i64 [ %104, %103 ], [ %107, %132 ]
  %107 = add nsw i64 %106, -1
  %108 = getelementptr inbounds i8, ptr %99, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !117
  switch i8 %109, label %132 [
    i8 101, label %110
    i8 69, label %114
  ], !prof !347

110:                                              ; preds = %105
  %111 = load ptr, ptr %58, align 8, !tbaa !141
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %112, i64 0, i64 %107
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %113, ptr noundef %1, ptr noundef %6) #19
  br label %132

114:                                              ; preds = %105
  %115 = load ptr, ptr %58, align 8, !tbaa !141
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %117 = getelementptr inbounds [1 x %union.rtunion_def], ptr %116, i64 0, i64 %107
  %118 = load ptr, ptr %117, align 8, !tbaa !117
  %119 = load i32, ptr %118, align 8, !tbaa !348
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = zext nneg i32 %119 to i64
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi i64 [ %122, %121 ], [ %125, %123 ]
  %125 = add nsw i64 %124, -1
  %126 = load ptr, ptr %58, align 8, !tbaa !141
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %127, i64 0, i64 %107
  %129 = load ptr, ptr %128, align 8, !tbaa !117
  %130 = getelementptr inbounds %struct.rtvec_def, ptr %129, i64 0, i32 1, i64 %125
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %130, ptr noundef %1, ptr noundef %6) #19
  %131 = icmp ugt i64 %124, 1
  br i1 %131, label %123, label %132, !llvm.loop !350

132:                                              ; preds = %123, %114, %105, %110
  %133 = icmp sgt i64 %106, 1
  br i1 %133, label %105, label %134, !prof !351, !llvm.loop !352

134:                                              ; preds = %79, %91, %19, %31, %13, %13, %132, %96, %76
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mark_reg_as_referenced(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #14 !prof !353 !PGOFuncName !354 {
  tail call fastcc void @add_to_hard_reg_set(i32 noundef %1, i32 noundef %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_restore(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !355 !PGOFuncName !356 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !357

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = load i64, ptr @hard_regs_saved, align 8
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi i64 [ 4, %10 ], [ %27, %26 ]
  %14 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %20, !prof !358

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, %13
  br i1 %19, label %29, label %20, !prof !359, !llvm.loop !360

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %18, %17 ], [ 0, %12 ]
  %22 = add nsw i64 %21, %5
  %23 = shl nuw i64 1, %22
  %24 = and i64 %11, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %17, !prof !357

26:                                               ; preds = %20, %12
  %27 = add nsw i64 %13, -1
  %28 = icmp ugt i64 %13, 1
  br i1 %28, label %12, label %31, !prof !361, !llvm.loop !362

29:                                               ; preds = %17
  %30 = trunc i64 %13 to i32
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !141
  %36 = getelementptr inbounds i32, ptr %3, i64 %5
  %37 = load i32, ptr %36, align 4, !tbaa !126
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39, !prof !357

39:                                               ; preds = %31
  %40 = load i32, ptr %35, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %56, label %44, !prof !363

44:                                               ; preds = %39
  %45 = zext i32 %37 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !117
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %32, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @reg_save_code(i32 noundef %2, i32 noundef %37) #19
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, ptr %36, align 4, !tbaa !126
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
  br i1 %64, label %70, label %65, !prof !357

65:                                               ; preds = %58
  %66 = load i32, ptr %59, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = tail call i32 @get_mode_alignment(i32 noundef %68) #18
  br label %70

70:                                               ; preds = %58, %65
  %71 = phi i32 [ %69, %65 ], [ -2147483648, %58 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !117
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75, !prof !357

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !364
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi i32 [ %77, %75 ], [ 8, %70 ]
  %80 = icmp ugt i32 %71, %79
  br i1 %80, label %81, label %82, !prof !357

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
  br i1 %93, label %94, label %109, !prof !359

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.insn_chain, ptr %92, i64 0, i32 7
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ 0, %94 ], [ %107, %96 ]
  %98 = add nsw i64 %97, %5
  %99 = shl nuw i64 1, %98
  %100 = xor i64 %99, -1
  %101 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  %102 = and i64 %101, %100
  store i64 %102, ptr @hard_regs_saved, align 8, !tbaa !121
  %103 = trunc i64 %98 to i32
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %95, i32 noundef %103) #18
  %105 = load i32, ptr @n_regs_saved, align 4, !tbaa !126
  %106 = add nsw i32 %105, -1
  store i32 %106, ptr @n_regs_saved, align 4, !tbaa !126
  %107 = add nuw nsw i64 %97, 1
  %108 = icmp eq i64 %107, %33
  br i1 %108, label %109, label %96, !prof !359, !llvm.loop !366

109:                                              ; preds = %96, %82
  %110 = add nsw i32 %32, -1
  ret i32 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_save(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !355 !PGOFuncName !367 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !357

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1267, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %10, %28
  %13 = phi i64 [ 4, %10 ], [ %29, %28 ]
  %14 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17, !prof !358

17:                                               ; preds = %12
  %18 = load i64, ptr %2, align 8, !tbaa !121
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %23, 1
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %31, label %22, !prof !359, !llvm.loop !368

22:                                               ; preds = %17, %19
  %23 = phi i64 [ 0, %17 ], [ %20, %19 ]
  %24 = add nsw i64 %23, %11
  %25 = shl nuw i64 1, %24
  %26 = and i64 %18, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %19, !prof !357

28:                                               ; preds = %22, %12
  %29 = add nsw i64 %13, -1
  %30 = icmp ugt i64 %13, 1
  br i1 %30, label %12, label %33, !prof !361, !llvm.loop !369

31:                                               ; preds = %19
  %32 = trunc i64 %13 to i32
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !141
  %38 = getelementptr inbounds i32, ptr %3, i64 %5
  %39 = load i32, ptr %38, align 4, !tbaa !126
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41, !prof !357

41:                                               ; preds = %33
  %42 = load i32, ptr %37, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %58, label %46, !prof !363

46:                                               ; preds = %41
  %47 = zext i32 %39 to i64
  %48 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !117
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %34, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = tail call fastcc i32 @reg_save_code(i32 noundef %1, i32 noundef %39) #19
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, ptr %38, align 4, !tbaa !126
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
  br i1 %66, label %72, label %67, !prof !357

67:                                               ; preds = %60
  %68 = load i32, ptr %61, align 8
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = tail call i32 @get_mode_alignment(i32 noundef %70) #18
  br label %72

72:                                               ; preds = %60, %67
  %73 = phi i32 [ %71, %67 ], [ -2147483648, %60 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !117
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77, !prof !357

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mem_attrs, ptr %75, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !364
  br label %80

80:                                               ; preds = %72, %77
  %81 = phi i32 [ %79, %77 ], [ 8, %72 ]
  %82 = icmp ugt i32 %73, %81
  br i1 %82, label %83, label %84, !prof !357

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
  br i1 %95, label %110, label %96, !prof !370

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.insn_chain, ptr %94, i64 0, i32 7
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ 0, %96 ], [ %108, %98 ]
  %100 = add nuw nsw i64 %99, %5
  %101 = shl nuw i64 1, %100
  %102 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  %103 = or i64 %102, %101
  store i64 %103, ptr @hard_regs_saved, align 8, !tbaa !121
  %104 = trunc i64 %100 to i32
  %105 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %97, i32 noundef %104) #18
  %106 = load i32, ptr @n_regs_saved, align 4, !tbaa !126
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr @n_regs_saved, align 4, !tbaa !126
  %108 = add nuw nsw i64 %99, 1
  %109 = icmp eq i64 %108, %35
  br i1 %109, label %110, label %98, !prof !359, !llvm.loop !371

110:                                              ; preds = %98, %84
  %111 = add nsw i32 %34, -1
  ret i32 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @replace_reg_with_saved_mem(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 !prof !286 !PGOFuncName !372 {
  %5 = sext i32 %2 to i64
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !117
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
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
  br i1 %24, label %117, label %14, !llvm.loop !373

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
  br i1 %44, label %45, label %34, !llvm.loop !374

45:                                               ; preds = %38, %34
  %46 = phi i32 [ %39, %38 ], [ %33, %34 ]
  %47 = icmp eq i32 %46, %9
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = zext i8 %8 to i64
  %50 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !141
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @copy_rtx(ptr noundef nonnull %51) #18
  %55 = getelementptr inbounds i32, ptr %3, i64 %5
  %56 = load i32, ptr %55, align 4, !tbaa !126
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !117
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
  %79 = load i64, ptr @hard_regs_saved, align 8, !tbaa !121
  %80 = trunc i64 %78 to i32
  %81 = add i32 %80, %2
  %82 = zext i32 %81 to i64
  %83 = shl nuw i64 1, %82
  %84 = and i64 %79, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %82, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !141
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1139, ptr noundef nonnull @.str.1) #18
  %91 = load ptr, ptr %87, align 8, !tbaa !141
  br label %92

92:                                               ; preds = %86, %90
  %93 = phi ptr [ %88, %86 ], [ %91, %90 ]
  %94 = tail call ptr @copy_rtx(ptr noundef %93) #18
  br label %103

95:                                               ; preds = %77
  %96 = load i32, ptr %76, align 4, !tbaa !126
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1144, ptr noundef nonnull @.str.1) #18
  %99 = load i32, ptr %76, align 4, !tbaa !126
  br label %100

100:                                              ; preds = %95, %98
  %101 = phi i32 [ %96, %95 ], [ %99, %98 ]
  %102 = tail call ptr @gen_rtx_REG(i32 noundef %101, i32 noundef %81) #18
  br label %103

103:                                              ; preds = %92, %100
  %104 = phi ptr [ %94, %92 ], [ %102, %100 ]
  %105 = load ptr, ptr %75, align 8, !tbaa !117
  %106 = getelementptr inbounds %struct.rtvec_def, ptr %105, i64 0, i32 1, i64 %78
  store ptr %104, ptr %106, align 8, !tbaa !141
  %107 = add nuw nsw i64 %78, 1
  %108 = icmp eq i64 %107, %31
  br i1 %108, label %109, label %77, !llvm.loop !375

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
  store ptr %110, ptr %0, align 8, !tbaa !141
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #15 !prof !376 !PGOFuncName !377 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !117
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !378 !PGOFuncName !379 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !117
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !380

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #18
  store i32 %8, ptr %2, align 8, !tbaa !117
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
define internal fastcc void @add_to_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #16 !prof !353 !PGOFuncName !381 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #19
  %4 = load i64, ptr @referenced_regs, align 8, !tbaa !121
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %4, %2 ], [ %10, %5 ]
  %7 = phi i32 [ %1, %2 ], [ %11, %5 ]
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = or i64 %9, %6
  %11 = add i32 %7, 1
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %5, label %13, !prof !382, !llvm.loop !383

13:                                               ; preds = %5
  store i64 %10, ptr @referenced_regs, align 8, !tbaa !121
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
define internal fastcc i32 @reg_restore_code(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !355 !PGOFuncName !384 {
  %3 = sext i32 %0 to i64
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !126
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !357

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @reg_save_code(i32 noundef %0, i32 noundef %1) #19
  %10 = load i32, ptr %5, align 4, !tbaa !126
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ %6, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_one_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !385 !PGOFuncName !386 {
  %5 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = tail call ptr @new_insn_chain() #18
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %50, label %9, !prof !370

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !387
  %12 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !387
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, ptr @reload_insn_chain, ptr %11, !prof !370
  store ptr %7, ptr %14, align 8, !tbaa !141
  store ptr %7, ptr %10, align 8, !tbaa !387
  store ptr %0, ptr %7, align 8, !tbaa !174
  %15 = tail call ptr @emit_insn_before(ptr noundef %3, ptr noundef %6) #18
  %16 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !171
  %17 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %18 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %17, ptr noundef nonnull %18) #18
  %19 = load ptr, ptr %5, align 8, !tbaa !171
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  tail call void @note_uses(ptr noundef nonnull %20, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %21 = load ptr, ptr %5, align 8, !tbaa !171
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %35, !prof !388

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !117
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !389

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %33, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  tail call void @note_uses(ptr noundef nonnull %31, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %32 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !prof !228, !llvm.loop !390

35:                                               ; preds = %29, %25, %9
  %36 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %36) #18
  %37 = load ptr, ptr %5, align 8, !tbaa !171
  %38 = load ptr, ptr @cfun, align 8, !tbaa !141
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !178
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !391
  %43 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !326
  %45 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %44) #19
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !117
  %48 = load ptr, ptr %47, align 8, !tbaa !392
  %49 = icmp eq ptr %37, %48
  br i1 %49, label %79, label %84, !prof !370

50:                                               ; preds = %4
  %51 = load ptr, ptr %0, align 8, !tbaa !174
  store ptr %51, ptr %7, align 8, !tbaa !174
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.insn_chain, ptr %51, i64 0, i32 1
  store ptr %7, ptr %54, align 8, !tbaa !387
  br label %55

55:                                               ; preds = %53, %50
  store ptr %7, ptr %0, align 8, !tbaa !174
  %56 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %0, ptr %56, align 8, !tbaa !387
  %57 = tail call ptr @emit_insn_after(ptr noundef %3, ptr noundef %6) #18
  %58 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %57, ptr %58, align 8, !tbaa !171
  %59 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %60 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %59, ptr noundef nonnull %60) #18
  %61 = load ptr, ptr %5, align 8, !tbaa !171
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !117
  tail call void @note_stores(ptr noundef %63, ptr noundef nonnull @add_stored_regs, ptr noundef nonnull %59) #18
  %64 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %64) #18
  %65 = load ptr, ptr %5, align 8, !tbaa !171
  %66 = load ptr, ptr @cfun, align 8, !tbaa !141
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !178
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !391
  %71 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !326
  %73 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %70, i32 noundef %72) #19
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !117
  %76 = getelementptr inbounds %struct.rtl_bb_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !329
  %78 = icmp eq ptr %65, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %55, %35
  %80 = phi ptr [ %16, %35 ], [ %58, %55 ]
  %81 = phi ptr [ %47, %35 ], [ %76, %55 ]
  %82 = phi i32 [ %44, %35 ], [ %72, %55 ]
  %83 = load ptr, ptr %80, align 8, !tbaa !171
  store ptr %83, ptr %81, align 8, !tbaa !141
  br label %84

84:                                               ; preds = %79, %35, %55
  %85 = phi i32 [ %44, %35 ], [ %72, %55 ], [ %82, %79 ]
  %86 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 4
  store i32 %85, ptr %86, align 8, !tbaa !326
  %87 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 5
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 8
  store i8 %89, ptr %87, align 4
  %90 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !171
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1
  store i32 %2, ptr %92, align 8, !tbaa !117
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
define internal void @add_used_regs(ptr noundef %0, ptr noundef %1) #0 !prof !385 !PGOFuncName !393 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @add_used_regs_1, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 !prof !385 !PGOFuncName !394 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_stored_regs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !286 !PGOFuncName !395 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !117
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
  %25 = load i32, ptr %24, align 8, !tbaa !117
  %26 = tail call i32 @subreg_regno_offset(i32 noundef %19, i32 noundef %23, i32 noundef %25, i32 noundef %6) #18
  %27 = load ptr, ptr %13, align 8, !tbaa !117
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
  br i1 %45, label %46, label %41, !llvm.loop !396

46:                                               ; preds = %41, %37, %10, %12, %18, %32, %3
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_used_regs_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !397 !PGOFuncName !398 {
  %3 = load ptr, ptr %0, align 8, !tbaa !141
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %35, !prof !399

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #19
  %9 = icmp slt i32 %8, 53
  br i1 %9, label %16, label %10, !prof !400

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !141
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !158
  %15 = sext i16 %14 to i32
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ %8, %7 ], [ %15, %10 ]
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %35, !prof !400

19:                                               ; preds = %16
  %20 = zext nneg i32 %17 to i64
  %21 = lshr i32 %4, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %20, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !117
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !401

27:                                               ; preds = %19
  %28 = zext i8 %25 to i32
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i32 [ %31, %29 ], [ %28, %27 ]
  %31 = add nsw i32 %30, -1
  %32 = add nuw nsw i32 %31, %17
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %32) #18
  %34 = icmp ugt i32 %30, 1
  br i1 %34, label %29, label %35, !prof !401, !llvm.loop !402

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!115}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!35 = !{ptr @init_caller_save, ptr @choose_hard_reg_mode, i64 10}
!36 = !{ptr @init_caller_save, ptr @gen_rtx_REG, i64 4}
!37 = !{ptr @init_caller_save, ptr @gen_rtx_CONST_INT, i64 2}
!38 = !{ptr @init_caller_save, ptr @gen_rtx_fmt_ee_stat, i64 6}
!39 = !{ptr @init_caller_save, ptr @strict_memory_address_addr_space_p, i64 9}
!40 = !{ptr @init_caller_save, ptr @gen_rtx_MEM, i64 2}
!41 = !{ptr @init_caller_save, ptr @gen_rtx_fmt_iuuBieie_stat, i64 4}
!42 = !{ptr @init_caller_save, ptr @reg_save_code, i64 202}
!43 = !{ptr @reg_save_code, ptr @ix86_hard_regno_mode_ok, i64 65}
!44 = !{ptr @reg_save_code, ptr @rhs_regno, i64 12}
!45 = !{ptr @reg_save_code, ptr @df_ref_change_reg_with_loc, i64 12}
!46 = !{ptr @reg_save_code, ptr @recog_memoized, i64 24}
!47 = !{ptr @reg_save_code, ptr @extract_insn, i64 22}
!48 = !{ptr @reg_save_code, ptr @constrain_operands, i64 22}
!49 = !{ptr @reg_save_code, ptr @fancy_abort, i64 1}
!50 = !{ptr @setup_save_areas, ptr @end_hard_regno, i64 926}
!51 = !{ptr @setup_save_areas, ptr @initiate_saved_hard_regs, i64 10}
!52 = !{ptr @setup_save_areas, ptr @find_reg_note, i64 6056}
!53 = !{ptr @setup_save_areas, ptr @reg_set_to_hard_reg_set, i64 6036}
!54 = !{ptr @setup_save_areas, ptr @note_stores, i64 6036}
!55 = !{ptr @setup_save_areas, ptr @bmp_iter_set_init, i64 6036}
!56 = !{ptr @setup_save_areas, ptr @bmp_iter_set, i64 19992}
!57 = !{ptr @setup_save_areas, ptr @new_saved_hard_reg, i64 10}
!58 = !{ptr @setup_save_areas, ptr @bmp_iter_next, i64 13956}
!59 = !{ptr @setup_save_areas, ptr @xmalloc, i64 10}
!60 = !{ptr @setup_save_areas, ptr @spec_qsort, i64 10}
!61 = !{ptr @setup_save_areas, ptr @adjust_address_1, i64 3080}
!62 = !{ptr @setup_save_areas, ptr @fprintf, i64 2}
!63 = !{ptr @setup_save_areas, ptr @assign_stack_local_1, i64 99}
!64 = !{ptr @setup_save_areas, ptr @free, i64 10}
!65 = !{ptr @setup_save_areas, ptr @finish_saved_hard_regs, i64 10}
!66 = !{ptr @setup_save_areas, ptr @get_frame_alias_set, i64 12}
!67 = !{ptr @setup_save_areas, ptr @set_mem_alias_set, i64 12}
!68 = !{ptr @mark_set_regs, ptr @rhs_regno, i64 7719}
!69 = !{ptr @mark_set_regs, ptr @end_hard_regno, i64 7718}
!70 = !{ptr @new_saved_hard_reg, ptr @xmalloc, i64 12}
!71 = !{ptr @finish_saved_hard_regs, ptr @free, i64 12}
!72 = !{ptr @save_call_clobbered_regs, ptr @fancy_abort, i64 3}
!73 = !{ptr @save_call_clobbered_regs, ptr @mark_referenced_regs, i64 1040}
!74 = !{ptr @save_call_clobbered_regs, ptr @insert_restore, i64 76}
!75 = !{ptr @save_call_clobbered_regs, ptr @find_reg_note, i64 1014}
!76 = !{ptr @save_call_clobbered_regs, ptr @reg_set_to_hard_reg_set, i64 1010}
!77 = !{ptr @save_call_clobbered_regs, ptr @bmp_iter_set_init, i64 1010}
!78 = !{ptr @save_call_clobbered_regs, ptr @bmp_iter_set, i64 3345}
!79 = !{ptr @save_call_clobbered_regs, ptr @bmp_iter_next, i64 2335}
!80 = !{ptr @save_call_clobbered_regs, ptr @note_stores, i64 1010}
!81 = !{ptr @save_call_clobbered_regs, ptr @insert_save, i64 60}
!82 = !{ptr @mark_referenced_regs, ptr @mark_referenced_regs, i64 2666}
!83 = !{ptr @mark_referenced_regs, ptr @rhs_regno, i64 3659}
!84 = !{ptr @mark_reg_as_referenced, ptr @add_to_hard_reg_set, i64 1620}
!85 = !{ptr @insert_restore, ptr @fancy_abort, i64 2}
!86 = !{ptr @insert_restore, ptr @copy_rtx, i64 74}
!87 = !{ptr @insert_restore, ptr @get_mode_alignment, i64 147}
!88 = !{ptr @insert_restore, ptr @gen_rtx_REG, i64 74}
!89 = !{ptr @insert_restore, ptr @gen_rtx_fmt_ee_stat, i64 74}
!90 = !{ptr @insert_restore, ptr @reg_restore_code, i64 74}
!91 = !{ptr @insert_restore, ptr @insert_one_insn, i64 74}
!92 = !{ptr @insert_restore, ptr @bitmap_set_bit, i64 74}
!93 = !{ptr @insert_save, ptr @fancy_abort, i64 2}
!94 = !{ptr @insert_save, ptr @copy_rtx, i64 74}
!95 = !{ptr @insert_save, ptr @get_mode_alignment, i64 147}
!96 = !{ptr @insert_save, ptr @gen_rtx_REG, i64 74}
!97 = !{ptr @insert_save, ptr @gen_rtx_fmt_ee_stat, i64 74}
!98 = !{ptr @insert_save, ptr @reg_save_code, i64 74}
!99 = !{ptr @insert_save, ptr @insert_one_insn, i64 74}
!100 = !{ptr @insert_save, ptr @bitmap_set_bit, i64 74}
!101 = !{ptr @recog_memoized, ptr @recog, i64 21}
!102 = !{ptr @add_to_hard_reg_set, ptr @end_hard_regno, i64 1620}
!103 = !{ptr @reg_restore_code, ptr @reg_save_code, i64 1}
!104 = !{ptr @insert_one_insn, ptr @new_insn_chain, i64 148}
!105 = !{ptr @insert_one_insn, ptr @emit_insn_before, i64 147}
!106 = !{ptr @insert_one_insn, ptr @bitmap_copy, i64 148}
!107 = !{ptr @insert_one_insn, ptr @note_uses, i64 148}
!108 = !{ptr @insert_one_insn, ptr @bitmap_clear, i64 148}
!109 = !{ptr @insert_one_insn, ptr @VEC_basic_block_base_index, i64 148}
!110 = !{ptr @insert_one_insn, ptr @emit_insn_after, i64 1}
!111 = !{ptr @insert_one_insn, ptr @note_stores, i64 1}
!112 = !{ptr @add_used_regs, ptr @for_each_rtx, i64 148}
!113 = !{ptr @add_used_regs_1, ptr @rhs_regno, i64 139}
!114 = !{ptr @add_used_regs_1, ptr @bitmap_set_bit, i64 138}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = !{!"function_entry_count", i64 38}
!117 = !{!118, !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !{!"branch_weights", i32 2, i32 38}
!121 = !{!122, !122, i64 0}
!122 = !{!"long", !118, i64 0}
!123 = !{!"branch_weights", i32 5, i32 50}
!124 = !{!"branch_weights", i32 12, i32 39}
!125 = !{!"branch_weights", i32 73036, i32 24300}
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !118, i64 0}
!128 = !{!"branch_weights", i32 34, i32 1576}
!129 = !{!"branch_weights", i32 12, i32 33}
!130 = distinct !{!130, !131}
!131 = !{!"llvm.loop.mustprogress"}
!132 = !{!"branch_weights", i32 2, i32 52}
!133 = distinct !{!133, !131}
!134 = !{!"branch_weights", i32 1, i32 2}
!135 = !{!"branch_weights", i32 1, i32 1}
!136 = distinct !{!136, !131}
!137 = !{!"branch_weights", i32 43, i32 12}
!138 = !{!"branch_weights", i32 1, i32 12}
!139 = distinct !{!139, !131}
!140 = distinct !{!140, !131}
!141 = !{!142, !142, i64 0}
!142 = !{!"any pointer", !118, i64 0}
!143 = !{!"branch_weights", i32 202, i32 12}
!144 = !{!"branch_weights", i32 43, i32 160}
!145 = !{!"branch_weights", i32 5, i32 39}
!146 = !{!"branch_weights", i32 54, i32 159}
!147 = distinct !{!147, !131}
!148 = distinct !{!148, !131}
!149 = !{!"function_entry_count", i64 286}
!150 = !{!"caller-save.c:reg_save_code"}
!151 = !{!"branch_weights", i32 65, i32 223}
!152 = !{!"branch_weights", i32 54, i32 12}
!153 = !{!"branch_weights", i32 193870051, i32 1953613597}
!154 = !{!"branch_weights", i32 39, i32 1976}
!155 = distinct !{!155, !131}
!156 = !{!"function_entry_count", i64 12}
!157 = !{!"branch_weights", i32 207, i32 1}
!158 = !{!159, !159, i64 0}
!159 = !{!"short", !118, i64 0}
!160 = !{!"branch_weights", i32 5083, i32 6415}
!161 = !{!162, !127, i64 12}
!162 = !{!"reg_info_t", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !127, i64 24}
!163 = !{!"branch_weights", i32 1003, i32 4081}
!164 = !{!"branch_weights", i32 1002, i32 1}
!165 = !{!"branch_weights", i32 805, i32 199}
!166 = distinct !{!166, !131}
!167 = !{!"branch_weights", i32 207, i32 183745}
!168 = distinct !{!168, !131}
!169 = !{!"branch_weights", i32 169, i32 27}
!170 = !{!"branch_weights", i32 1, i32 207}
!171 = !{!172, !142, i64 24}
!172 = !{!"insn_chain", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !127, i64 32, !127, i64 36, !127, i64 36, !127, i64 36, !127, i64 36, !173, i64 40, !173, i64 72, !142, i64 104, !127, i64 112, !122, i64 120}
!173 = !{!"bitmap_head_def", !142, i64 0, !142, i64 8, !127, i64 16, !142, i64 24}
!174 = !{!172, !142, i64 0}
!175 = !{!"branch_weights", i32 3805, i32 17632}
!176 = !{!"branch_weights", i32 3793, i32 13}
!177 = !{!"branch_weights", i32 3793, i32 1}
!178 = !{!179, !142, i64 8}
!179 = !{!"function", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !142, i64 32, !142, i64 40, !142, i64 48, !142, i64 56, !142, i64 64, !142, i64 72, !142, i64 80, !142, i64 88, !142, i64 96, !127, i64 104, !127, i64 108, !127, i64 112, !127, i64 116, !127, i64 120, !127, i64 124, !142, i64 128, !127, i64 136, !127, i64 137, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139}
!180 = !{!181, !142, i64 0}
!181 = !{!"control_flow_graph", !142, i64 0, !142, i64 8, !142, i64 16, !127, i64 24, !127, i64 28, !127, i64 32, !142, i64 40, !127, i64 48, !118, i64 52, !118, i64 60, !127, i64 68, !127, i64 72}
!182 = !{!183, !122, i64 72}
!183 = !{!"basic_block_def", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !118, i64 32, !142, i64 48, !142, i64 56, !118, i64 64, !122, i64 72, !127, i64 80, !127, i64 84, !127, i64 88, !127, i64 92, !127, i64 96}
!184 = !{!183, !127, i64 88}
!185 = !{!"branch_weights", i32 1, i32 3583}
!186 = !{!187, !142, i64 320}
!187 = !{!"rtl_data", !188, i64 0, !189, i64 40, !190, i64 96, !191, i64 112, !193, i64 208, !194, i64 248, !127, i64 312, !142, i64 320, !142, i64 328, !142, i64 336, !142, i64 344, !142, i64 352, !142, i64 360, !142, i64 368, !142, i64 376, !142, i64 384, !142, i64 392, !122, i64 400, !142, i64 408, !142, i64 416, !142, i64 424, !127, i64 432, !127, i64 436, !127, i64 440, !127, i64 444, !127, i64 448, !127, i64 452, !142, i64 456, !118, i64 464, !118, i64 465, !118, i64 466, !118, i64 467, !118, i64 468, !118, i64 469, !118, i64 470, !118, i64 471, !118, i64 472, !118, i64 473, !118, i64 474, !118, i64 475, !118, i64 476, !118, i64 477, !118, i64 478, !118, i64 479, !118, i64 480, !118, i64 481, !118, i64 482, !118, i64 483, !118, i64 484, !118, i64 485}
!188 = !{!"expr_status", !127, i64 0, !127, i64 4, !127, i64 8, !142, i64 16, !142, i64 24, !142, i64 32}
!189 = !{!"emit_status", !127, i64 0, !127, i64 4, !142, i64 8, !142, i64 16, !142, i64 24, !127, i64 32, !127, i64 36, !127, i64 40, !127, i64 44, !142, i64 48}
!190 = !{!"varasm_status", !142, i64 0, !127, i64 8}
!191 = !{!"incoming_args", !127, i64 0, !127, i64 4, !127, i64 8, !142, i64 16, !192, i64 24, !142, i64 88}
!192 = !{!"ix86_args", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !127, i64 24, !127, i64 28, !127, i64 32, !127, i64 36, !127, i64 40, !127, i64 44, !127, i64 48, !127, i64 52, !127, i64 56, !127, i64 60}
!193 = !{!"function_subsections", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !142, i64 32}
!194 = !{!"rtl_eh", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !142, i64 32, !142, i64 40, !118, i64 48}
!195 = !{!"branch_weights", i32 200977, i32 1}
!196 = !{!197, !127, i64 8}
!197 = !{!"saved_hard_reg", !127, i64 0, !127, i64 4, !127, i64 8, !142, i64 16, !127, i64 24, !127, i64 28}
!198 = !{!"branch_weights", i32 3793, i32 197184}
!199 = distinct !{!199, !131}
!200 = !{i8 0, i8 2}
!201 = !{!"branch_weights", i32 1, i32 3792}
!202 = !{!"branch_weights", i32 2197, i32 6574}
!203 = !{!"branch_weights", i32 1, i32 6573}
!204 = !{!"branch_weights", i32 5200, i32 1375}
!205 = !{!"branch_weights", i32 13, i32 1363}
!206 = distinct !{!206, !131}
!207 = !{!"branch_weights", i32 3792, i32 4978}
!208 = distinct !{!208, !131}
!209 = !{!"branch_weights", i32 207, i32 342769}
!210 = distinct !{!210, !131}
!211 = distinct !{!211, !131}
!212 = !{!"branch_weights", i32 1375, i32 2418}
!213 = distinct !{!213, !131}
!214 = distinct !{!214, !131}
!215 = !{!"branch_weights", i32 1375, i32 1}
!216 = !{!197, !127, i64 0}
!217 = !{!"branch_weights", i32 1374, i32 1}
!218 = distinct !{!218, !131}
!219 = !{!"branch_weights", i32 1375, i32 0}
!220 = distinct !{!220, !131}
!221 = distinct !{!221, !131}
!222 = !{!197, !127, i64 4}
!223 = !{!"branch_weights", i32 12, i32 1}
!224 = !{!197, !127, i64 24}
!225 = !{!197, !127, i64 28}
!226 = distinct !{!226, !131}
!227 = !{!197, !142, i64 16}
!228 = !{!"branch_weights", i32 1, i32 0}
!229 = distinct !{!229, !131}
!230 = !{!"branch_weights", i32 13, i32 1}
!231 = !{!"branch_weights", i32 159, i32 1}
!232 = !{!"branch_weights", i32 1, i32 9}
!233 = !{!"branch_weights", i32 81, i32 19}
!234 = !{!"branch_weights", i32 9, i32 1}
!235 = !{!"branch_weights", i32 159, i32 129}
!236 = distinct !{!236, !131}
!237 = !{!"branch_weights", i32 1389207751, i32 758275897}
!238 = !{!"branch_weights", i32 5, i32 1}
!239 = distinct !{!239, !131}
!240 = distinct !{!240, !131}
!241 = distinct !{!241, !131}
!242 = distinct !{!242, !131}
!243 = distinct !{!243, !131}
!244 = distinct !{!244, !131}
!245 = !{!"branch_weights", i32 2533, i32 13}
!246 = !{!"branch_weights", i32 1908, i32 637}
!247 = distinct !{!247, !131}
!248 = !{!"branch_weights", i32 13, i32 624}
!249 = distinct !{!249, !131}
!250 = !{!"function_entry_count", i64 10343}
!251 = !{!"caller-save.c:end_hard_regno"}
!252 = !{!"caller-save.c:initiate_saved_hard_regs"}
!253 = !{!"function_entry_count", i64 7721}
!254 = !{!"caller-save.c:mark_set_regs"}
!255 = !{!"branch_weights", i32 7722, i32 7723, i32 59629284}
!256 = !{!"branch_weights", i32 7722, i32 1}
!257 = !{!"branch_weights", i32 7721, i32 1}
!258 = distinct !{!258, !131}
!259 = !{!"caller-save.c:new_saved_hard_reg"}
!260 = !{!"function_entry_count", i64 8848}
!261 = !{!"caller-save.c:bmp_iter_set_init"}
!262 = !{!173, !142, i64 0}
!263 = !{!264, !142, i64 0}
!264 = !{!"", !142, i64 0, !142, i64 8, !127, i64 16, !122, i64 24}
!265 = !{!264, !142, i64 8}
!266 = !{!"branch_weights", i32 1, i32 8849}
!267 = !{!268, !127, i64 16}
!268 = !{!"bitmap_element_def", !142, i64 0, !142, i64 8, !127, i64 16, !118, i64 24}
!269 = !{!"branch_weights", i32 8849, i32 1}
!270 = !{!264, !127, i64 16}
!271 = !{!264, !122, i64 24}
!272 = !{!"function_entry_count", i64 29309}
!273 = !{!"caller-save.c:bmp_iter_set"}
!274 = !{!"branch_weights", i32 18810, i32 10501}
!275 = !{!"branch_weights", i32 20461, i32 1}
!276 = !{!"branch_weights", i32 324822, i32 20461}
!277 = distinct !{!277, !131}
!278 = !{!"branch_weights", i32 1, i32 18088}
!279 = !{!"branch_weights", i32 17368, i32 9962}
!280 = !{!"branch_weights", i32 18088, i32 9241}
!281 = distinct !{!281, !131}
!282 = !{!268, !142, i64 0}
!283 = !{!"branch_weights", i32 8849, i32 9241}
!284 = !{!"function_entry_count", i64 20461}
!285 = !{!"caller-save.c:bmp_iter_next"}
!286 = !{!"function_entry_count", i64 0}
!287 = !{!"caller-save.c:saved_hard_reg_compare_func"}
!288 = !{!"caller-save.c:finish_saved_hard_regs"}
!289 = distinct !{!289, !131}
!290 = !{!"function_entry_count", i64 4}
!291 = !{!"branch_weights", i32 1, i32 159}
!292 = !{!"branch_weights", i32 7146, i32 1}
!293 = !{!"branch_weights", i32 -27740850, i32 248599471}
!294 = !{!"branch_weights", i32 1, i32 6753}
!295 = !{!"branch_weights", i32 5443, i32 1311}
!296 = !{!"branch_weights", i32 11, i32 1301}
!297 = !{!"branch_weights", i32 69357, i32 75}
!298 = !{!"branch_weights", i32 68120, i32 1311}
!299 = distinct !{!299, !131}
!300 = !{!"branch_weights", i32 1269, i32 5485}
!301 = !{!"branch_weights", i32 1269, i32 1}
!302 = !{!"branch_weights", i32 1265, i32 5}
!303 = !{!"branch_weights", i32 65729, i32 1265}
!304 = !{!"branch_weights", i32 1265, i32 65728}
!305 = distinct !{!305, !131}
!306 = !{!"branch_weights", i32 1, i32 1264}
!307 = !{!"branch_weights", i32 733, i32 2192}
!308 = !{!"branch_weights", i32 4385, i32 4804864}
!309 = !{!"branch_weights", i32 -1998060611, i32 1048336, i32 1047858}
!310 = !{!"branch_weights", i32 1, i32 2192}
!311 = !{!"branch_weights", i32 2192, i32 1}
!312 = !{!"branch_weights", i32 1, i32 2191}
!313 = !{!"branch_weights", i32 0, i32 0}
!314 = distinct !{!314, !131, !315, !316}
!315 = !{!"llvm.loop.isvectorized", i32 1}
!316 = !{!"llvm.loop.unroll.runtime.disable"}
!317 = !{!"branch_weights", i32 1264, i32 1660}
!318 = distinct !{!318, !131}
!319 = !{!"branch_weights", i32 66919, i32 75}
!320 = !{!"branch_weights", i32 65728, i32 1265}
!321 = distinct !{!321, !131}
!322 = !{!"branch_weights", i32 66535, i32 459}
!323 = distinct !{!323, !131}
!324 = !{!"branch_weights", i32 0, i32 -2147483648}
!325 = !{!"branch_weights", i32 5, i32 7142}
!326 = !{!172, !127, i64 32}
!327 = !{!"branch_weights", i32 6300, i32 843}
!328 = !{!"branch_weights", i32 1, i32 847}
!329 = !{!330, !142, i64 8}
!330 = !{!"rtl_bb_info", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !127, i64 32}
!331 = distinct !{!331, !131}
!332 = !{!"branch_weights", i32 847, i32 1}
!333 = distinct !{!333, !131}
!334 = !{!"branch_weights", i32 159, i32 228513}
!335 = distinct !{!335, !131}
!336 = !{!"function_entry_count", i64 4412}
!337 = !{!"caller-save.c:mark_referenced_regs"}
!338 = !{!"branch_weights", i32 3113, i32 2602, i32 3113}
!339 = !{!"branch_weights", i32 1584363556, i32 -503612342, i32 2479424, i32 2475562, i32 2471706}
!340 = !{!"branch_weights", i32 272770135, i32 105596417}
!341 = !{!"branch_weights", i32 822315222, i32 1325168426}
!342 = !{!"branch_weights", i32 1621, i32 257}
!343 = !{ptr @mark_reg_as_referenced, ptr @replace_reg_with_saved_mem}
!344 = !{!"branch_weights", i32 257, i32 1}
!345 = !{!"branch_weights", i32 1, i32 257}
!346 = !{!"branch_weights", i32 1, i32 1876}
!347 = !{!"branch_weights", i32 3485689, i32 2908476, i32 1867}
!348 = !{!349, !127, i64 0}
!349 = !{!"rtvec_def", !127, i64 0, !118, i64 8}
!350 = distinct !{!350, !131}
!351 = !{!"branch_weights", i32 1547, i32 1876}
!352 = distinct !{!352, !131}
!353 = !{!"function_entry_count", i64 1620}
!354 = !{!"caller-save.c:mark_reg_as_referenced"}
!355 = !{!"function_entry_count", i64 74}
!356 = !{!"caller-save.c:insert_restore"}
!357 = !{!"branch_weights", i32 1, i32 75}
!358 = !{!"branch_weights", i32 223, i32 75}
!359 = !{!"branch_weights", i32 149, i32 1}
!360 = distinct !{!360, !131}
!361 = !{!"branch_weights", i32 296, i32 1}
!362 = distinct !{!362, !131}
!363 = !{!"branch_weights", i32 75, i32 1}
!364 = !{!365, !127, i64 28}
!365 = !{!"mem_attrs", !142, i64 0, !142, i64 8, !142, i64 16, !127, i64 24, !127, i64 28, !118, i64 32}
!366 = distinct !{!366, !131}
!367 = !{!"caller-save.c:insert_save"}
!368 = distinct !{!368, !131}
!369 = distinct !{!369, !131}
!370 = !{!"branch_weights", i32 1, i32 149}
!371 = distinct !{!371, !131}
!372 = !{!"caller-save.c:replace_reg_with_saved_mem"}
!373 = distinct !{!373, !131}
!374 = distinct !{!374, !131}
!375 = distinct !{!375, !131}
!376 = !{!"function_entry_count", i64 26104}
!377 = !{!"caller-save.c:rhs_regno"}
!378 = !{!"function_entry_count", i64 22}
!379 = !{!"caller-save.c:recog_memoized"}
!380 = !{!"branch_weights", i32 23, i32 1}
!381 = !{!"caller-save.c:add_to_hard_reg_set"}
!382 = !{!"branch_weights", i32 1, i32 1621}
!383 = distinct !{!383, !131}
!384 = !{!"caller-save.c:reg_restore_code"}
!385 = !{!"function_entry_count", i64 148}
!386 = !{!"caller-save.c:insert_one_insn"}
!387 = !{!172, !142, i64 8}
!388 = !{!"branch_weights", i32 75, i32 75}
!389 = !{!"branch_weights", i32 74, i32 1}
!390 = distinct !{!390, !131}
!391 = !{!181, !142, i64 16}
!392 = !{!330, !142, i64 0}
!393 = !{!"caller-save.c:add_used_regs"}
!394 = !{!"caller-save.c:VEC_basic_block_base_index"}
!395 = !{!"caller-save.c:add_stored_regs"}
!396 = distinct !{!396, !131}
!397 = !{!"function_entry_count", i64 676}
!398 = !{!"caller-save.c:add_used_regs_1"}
!399 = !{!"branch_weights", i32 139, i32 539}
!400 = !{!"branch_weights", i32 139, i32 1}
!401 = !{!"branch_weights", i32 1, i32 138}
!402 = distinct !{!402, !131}
