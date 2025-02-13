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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
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
@cached_reg_save_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16
@cached_reg_restore_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16
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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@hard_regs_saved = internal unnamed_addr global i64 0, align 8
@n_regs_saved = internal unnamed_addr global i32 0, align 4
@referenced_regs = internal unnamed_addr global i64 0, align 8
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@reg_equiv_mem = external local_unnamed_addr global ptr, align 8
@reg_equiv_address = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@gt_ggc_r_gt_caller_save_h = dso_local local_unnamed_addr constant [7 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @restinsn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @saveinsn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @test_mem, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @test_reg, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @restpat, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @savepat, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_caller_save() local_unnamed_addr #0 !prof !124 {
  %1 = load i8, ptr @caller_save_initialized_p, align 1, !tbaa !125
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %117, !prof !128

3:                                                ; preds = %0
  store i8 1, ptr @caller_save_initialized_p, align 1, !tbaa !125
  store i64 0, ptr @no_caller_save_reg_set, align 8, !tbaa !129
  br label %6

4:                                                ; preds = %41
  %5 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !129
  br label %44

6:                                                ; preds = %3, %41
  %7 = phi i64 [ 0, %3 ], [ %42, %41 ]
  %8 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !125
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11, !prof !131

11:                                               ; preds = %6
  %12 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !129
  %13 = shl nuw nsw i64 1, %7
  %14 = and i64 %12, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %39, !prof !132

16:                                               ; preds = %11
  %17 = trunc i64 %7 to i32
  %18 = add i32 %17, -17
  %19 = icmp ult i32 %18, 2
  br label %20

20:                                               ; preds = %16, %36
  %21 = phi i64 [ 1, %16 ], [ %37, %36 ]
  %22 = icmp ne i64 %21, 1
  %23 = or i1 %19, %22
  br i1 %23, label %27, label %24, !prof !133

24:                                               ; preds = %20
  %25 = trunc i64 %7 to i32
  %26 = tail call i32 @choose_hard_reg_mode(i32 noundef %25, i32 noundef 1, i8 noundef zeroext 0) #18
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ 0, %20 ], [ %26, %24 ]
  %29 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 %21
  store i32 %28, ptr %29, align 4, !tbaa !134
  %30 = icmp eq i32 %28, 0
  %31 = icmp eq i64 %21, 1
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %36, !prof !136

33:                                               ; preds = %27
  %34 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !129
  %35 = or i64 %34, %13
  store i64 %35, ptr @call_fixed_reg_set, align 8, !tbaa !129
  br label %36

36:                                               ; preds = %27, %33
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, 5
  br i1 %38, label %41, label %20, !prof !137, !llvm.loop !138

39:                                               ; preds = %11, %6
  %40 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 1
  store i32 0, ptr %40, align 4, !tbaa !134
  br label %41

41:                                               ; preds = %36, %39
  %42 = add nuw nsw i64 %7, 1
  %43 = icmp eq i64 %42, 53
  br i1 %43, label %4, label %6, !prof !140, !llvm.loop !141

44:                                               ; preds = %4, %49
  %45 = phi i64 [ 0, %4 ], [ %50, %49 ]
  %46 = shl nuw nsw i64 1, %45
  %47 = and i64 %5, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53, !prof !142

49:                                               ; preds = %44
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, 53
  br i1 %51, label %52, label %44, !prof !143, !llvm.loop !144

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
  %66 = load i32, ptr %65, align 4, !tbaa !134
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68, !prof !145

68:                                               ; preds = %63
  %69 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %66, ptr noundef %62, i8 noundef zeroext 0) #18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !146

71:                                               ; preds = %63, %68
  %72 = add nuw nsw i64 %64, 1
  %73 = icmp eq i64 %72, 53
  br i1 %73, label %77, label %63, !prof !140, !llvm.loop !147

74:                                               ; preds = %68
  %75 = lshr i32 %59, 1
  %76 = icmp ult i32 %59, 2
  br i1 %76, label %77, label %58, !prof !143, !llvm.loop !148

77:                                               ; preds = %74, %71
  %78 = phi ptr [ %62, %71 ], [ %57, %74 ]
  %79 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #18
  store ptr %79, ptr @test_reg, align 8, !tbaa !149
  %80 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %78) #18
  store ptr %80, ptr @test_mem, align 8, !tbaa !149
  %81 = load ptr, ptr @test_reg, align 8, !tbaa !149
  %82 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %80, ptr noundef %81) #18
  store ptr %82, ptr @savepat, align 8, !tbaa !149
  %83 = load ptr, ptr @test_reg, align 8, !tbaa !149
  %84 = load ptr, ptr @test_mem, align 8, !tbaa !149
  %85 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %83, ptr noundef %84) #18
  store ptr %85, ptr @restpat, align 8, !tbaa !149
  %86 = load ptr, ptr @savepat, align 8, !tbaa !149
  %87 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %86, i32 noundef -1, ptr noundef null) #18
  store ptr %87, ptr @saveinsn, align 8, !tbaa !149
  %88 = load ptr, ptr @restpat, align 8, !tbaa !149
  %89 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %88, i32 noundef -1, ptr noundef null) #18
  store ptr %89, ptr @restinsn, align 8, !tbaa !149
  br label %90

90:                                               ; preds = %77, %114
  %91 = phi i64 [ 0, %77 ], [ %115, %114 ]
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %90, %111
  %94 = phi i64 [ 1, %90 ], [ %112, %111 ]
  %95 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %91, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !134
  %97 = tail call fastcc i32 @reg_save_code(i32 noundef %92, i32 noundef %96) #19
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %111, !prof !151

99:                                               ; preds = %93
  store i32 0, ptr %95, align 4, !tbaa !134
  %100 = icmp eq i64 %94, 1
  br i1 %100, label %101, label %111, !prof !152

101:                                              ; preds = %99
  %102 = shl nuw i64 1, %91
  %103 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %91
  %104 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !129
  %105 = or i64 %104, %102
  store i64 %105, ptr @call_fixed_reg_set, align 8, !tbaa !129
  %106 = load i8, ptr %103, align 1, !tbaa !125
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108, !prof !153

108:                                              ; preds = %101
  %109 = load i64, ptr @no_caller_save_reg_set, align 8, !tbaa !129
  %110 = or i64 %109, %102
  store i64 %110, ptr @no_caller_save_reg_set, align 8, !tbaa !129
  br label %111

111:                                              ; preds = %93, %101, %108, %99
  %112 = add nuw nsw i64 %94, 1
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %114, label %93, !prof !154, !llvm.loop !155

114:                                              ; preds = %111
  %115 = add nuw nsw i64 %91, 1
  %116 = icmp eq i64 %115, 53
  br i1 %116, label %117, label %90, !prof !140, !llvm.loop !156

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
define internal fastcc i32 @reg_save_code(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !157 !PGOFuncName !158 {
  %3 = sext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_save_code, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !134
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %53, !prof !159

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %1) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !160

11:                                               ; preds = %8
  store i32 -1, ptr %5, align 4, !tbaa !134
  %12 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 -1, ptr %12, align 4, !tbaa !134
  br label %53

13:                                               ; preds = %8
  %14 = load ptr, ptr @test_reg, align 8, !tbaa !149
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #19
  tail call void @df_ref_change_reg_with_loc(i32 noundef %15, i32 noundef %0, ptr noundef %14) #18
  %16 = load ptr, ptr @test_reg, align 8, !tbaa !149
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  store i32 %0, ptr %17, align 8, !tbaa !125
  %18 = load i32, ptr %16, align 8
  %19 = shl i32 %1, 16
  %20 = and i32 %19, 16711680
  %21 = and i32 %18, -16711681
  %22 = or disjoint i32 %21, %20
  store i32 %22, ptr %16, align 8
  %23 = load ptr, ptr @test_mem, align 8, !tbaa !149
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -16711681
  %26 = or disjoint i32 %25, %20
  store i32 %26, ptr %23, align 8
  %27 = load ptr, ptr @saveinsn, align 8, !tbaa !149
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1, i32 1
  store i32 -1, ptr %28, align 8, !tbaa !125
  %29 = load ptr, ptr @restinsn, align 8, !tbaa !149
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1, i32 1
  store i32 -1, ptr %30, align 8, !tbaa !125
  %31 = tail call fastcc i32 @recog_memoized(ptr noundef %27) #19
  store i32 %31, ptr %5, align 4, !tbaa !134
  %32 = load ptr, ptr @restinsn, align 8, !tbaa !149
  %33 = tail call fastcc i32 @recog_memoized(ptr noundef %32) #19
  %34 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 %33, ptr %34, align 4, !tbaa !134
  %35 = load i32, ptr %5, align 4, !tbaa !134
  %36 = icmp eq i32 %35, -1
  %37 = icmp eq i32 %33, -1
  %38 = select i1 %36, i1 true, i1 %37, !prof !161
  br i1 %38, label %47, label %39, !prof !161

39:                                               ; preds = %13
  %40 = load ptr, ptr @saveinsn, align 8, !tbaa !149
  tail call void @extract_insn(ptr noundef %40) #18
  %41 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %42 = load ptr, ptr @restinsn, align 8, !tbaa !149
  tail call void @extract_insn(ptr noundef %42) #18
  %43 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %44 = and i32 %41, 255
  %45 = and i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48, !prof !161

47:                                               ; preds = %39, %13
  store i32 -1, ptr %5, align 4, !tbaa !134
  store i32 -1, ptr %34, align 4, !tbaa !134
  br label %53

48:                                               ; preds = %39
  %49 = load i32, ptr %5, align 4, !tbaa !134
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53, !prof !162

51:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.1) #18
  %52 = load i32, ptr %5, align 4, !tbaa !134
  br label %53

53:                                               ; preds = %51, %48, %47, %2, %11
  %54 = phi i32 [ -1, %11 ], [ %6, %2 ], [ -1, %47 ], [ %49, %48 ], [ %52, %51 ]
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !163 !PGOFuncName !164 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !125
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !165 !PGOFuncName !166 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !125
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !167

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #18
  store i32 %8, ptr %2, align 8, !tbaa !125
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_save_areas() local_unnamed_addr #4 !prof !124 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = mul nuw nsw i64 %2, 40
  %4 = getelementptr i8, ptr getelementptr inbounds ([53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 0, i64 1), i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !tbaa !149
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 53
  br i1 %6, label %7, label %1, !prof !168, !llvm.loop !169

7:                                                ; preds = %1
  store i32 0, ptr @save_slots_num, align 4, !tbaa !134
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_save_areas() local_unnamed_addr #0 !prof !170 {
  %1 = alloca i32, align 4
  %2 = alloca [53 x ptr], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca [53 x ptr], align 16
  %7 = load i32, ptr @max_regno, align 4, !tbaa !134
  %8 = icmp sgt i32 %7, 53
  br i1 %8, label %9, label %51, !prof !171

9:                                                ; preds = %0
  %10 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %11 = load ptr, ptr @reg_info_p, align 8
  %12 = load ptr, ptr @regno_reg_rtx, align 8
  %13 = zext nneg i32 %7 to i64
  br label %14

14:                                               ; preds = %9, %47
  %15 = phi i64 [ 53, %9 ], [ %49, %47 ]
  %16 = phi i64 [ 0, %9 ], [ %48, %47 ]
  %17 = getelementptr inbounds i16, ptr %10, i64 %15
  %18 = load i16, ptr %17, align 2, !tbaa !172
  %19 = sext i16 %18 to i32
  %20 = icmp sgt i16 %18, -1
  br i1 %20, label %21, label %47, !prof !174

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.reg_info_t, ptr %11, i64 %15, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !175
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %47, !prof !177

25:                                               ; preds = %21
  %26 = getelementptr inbounds ptr, ptr %12, i64 %15
  %27 = load ptr, ptr %26, align 8, !tbaa !149
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = tail call fastcc i32 @end_hard_regno(i32 noundef %30, i32 noundef %19) #19
  %32 = icmp ugt i32 %31, %19
  br i1 %32, label %33, label %47, !prof !178

33:                                               ; preds = %25
  %34 = zext nneg i32 %19 to i64
  %35 = zext i32 %31 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %34, %33 ], [ %45, %36 ]
  %38 = phi i64 [ %16, %33 ], [ %44, %36 ]
  %39 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %37
  %40 = load i8, ptr %39, align 1, !tbaa !125
  %41 = icmp eq i8 %40, 0
  %42 = shl nuw i64 1, %37
  %43 = select i1 %41, i64 0, i64 %42, !prof !179
  %44 = or i64 %43, %38
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %35
  br i1 %46, label %47, label %36, !prof !180, !llvm.loop !181

47:                                               ; preds = %36, %25, %14, %21
  %48 = phi i64 [ %16, %21 ], [ %16, %14 ], [ %16, %25 ], [ %44, %36 ]
  %49 = add nuw nsw i64 %15, 1
  %50 = icmp eq i64 %49, %13
  br i1 %50, label %51, label %14, !prof !182, !llvm.loop !183

51:                                               ; preds = %47, %0
  %52 = phi i64 [ 0, %0 ], [ %48, %47 ]
  %53 = load i32, ptr @optimize, align 4, !tbaa !134
  %54 = icmp ne i32 %53, 0
  %55 = load i32, ptr @flag_ira_share_save_slots, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %509, !prof !184

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %6) #20
  tail call fastcc void @initiate_saved_hard_regs() #19
  %59 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !149
  %60 = icmp eq ptr %59, null
  br i1 %60, label %187, label %61, !prof !185

61:                                               ; preds = %58, %185
  %62 = phi ptr [ %65, %185 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.insn_chain, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !186
  %65 = load ptr, ptr %62, align 8, !tbaa !189
  %66 = load i32, ptr %64, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %185, !prof !190

69:                                               ; preds = %61
  %70 = call ptr @find_reg_note(ptr noundef nonnull %64, i32 noundef 27, ptr noundef null) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %185, !prof !191

72:                                               ; preds = %69
  %73 = load i32, ptr @optimize_size, align 4, !tbaa !134
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %95, !prof !192

75:                                               ; preds = %72
  %76 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !134
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78, !prof !192

78:                                               ; preds = %75
  %79 = load ptr, ptr @cfun, align 8, !tbaa !149
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !193
  %82 = load ptr, ptr %81, align 8, !tbaa !195
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 8
  %84 = load i64, ptr %83, align 8, !tbaa !197
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %78, %75
  %87 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !125
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 11
  %90 = load i32, ptr %89, align 8, !tbaa !199
  %91 = add i32 %90, 9
  %92 = icmp ult i32 %91, 19
  br i1 %92, label %95, label %93, !prof !200

93:                                               ; preds = %86
  %94 = sdiv i32 %90, 10
  br label %95

95:                                               ; preds = %93, %86, %72, %78
  %96 = phi i32 [ 1000, %78 ], [ 1000, %72 ], [ %94, %93 ], [ 1, %86 ]
  store i64 0, ptr %3, align 8, !tbaa !129
  %97 = getelementptr inbounds %struct.insn_chain, ptr %62, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %97) #18
  %98 = load i64, ptr @call_used_reg_set, align 8, !tbaa !129
  store i64 0, ptr %4, align 8, !tbaa !129
  %99 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !125
  call void @note_stores(ptr noundef %100, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %4) #18
  %101 = load i32, ptr %64, align 8
  %102 = and i32 %101, 16777216
  %103 = icmp ne i32 %102, 0
  %104 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8
  %105 = icmp ne ptr %104, null
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %108, !prof !201

107:                                              ; preds = %95
  call void @mark_set_regs(ptr noundef nonnull %104, ptr poison, ptr noundef nonnull %4) #19
  br label %108

108:                                              ; preds = %107, %95
  %109 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !129
  %110 = load i64, ptr %4, align 8, !tbaa !129
  %111 = or i64 %110, %109
  %112 = xor i64 %111, -1
  %113 = and i64 %98, %112
  %114 = load i64, ptr %3, align 8, !tbaa !129
  %115 = and i64 %113, %114
  store i64 %115, ptr %3, align 8, !tbaa !129
  br label %116

116:                                              ; preds = %108, %132
  %117 = phi i64 [ 0, %108 ], [ %133, %132 ]
  %118 = load i64, ptr %3, align 8, !tbaa !129
  %119 = shl nuw nsw i64 1, %117
  %120 = and i64 %118, %119
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %132, label %122, !prof !202

122:                                              ; preds = %116
  %123 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %117
  %124 = load ptr, ptr %123, align 8, !tbaa !149
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.saved_hard_reg, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !203
  %129 = add nsw i32 %128, %96
  store i32 %129, ptr %127, align 8, !tbaa !203
  br label %132

130:                                              ; preds = %122
  %131 = trunc i64 %117 to i32
  call fastcc void @new_saved_hard_reg(i32 noundef %131, i32 noundef %96) #19
  br label %132

132:                                              ; preds = %116, %130, %126
  %133 = add nuw nsw i64 %117, 1
  %134 = icmp eq i64 %133, 53
  br i1 %134, label %135, label %116, !prof !205, !llvm.loop !206

135:                                              ; preds = %132
  store i32 53, ptr %1, align 4, !tbaa !134
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %97, ptr noundef nonnull %1) #19
  %136 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !207
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %185, label %138, !prof !208

138:                                              ; preds = %135, %182
  %139 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %140 = load i32, ptr %1, align 4, !tbaa !134
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i16, ptr %139, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !172
  %144 = icmp slt i16 %143, 0
  br i1 %144, label %182, label %145, !prof !209

145:                                              ; preds = %138
  %146 = zext nneg i16 %143 to i64
  %147 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !149
  %148 = getelementptr inbounds ptr, ptr %147, i64 %141
  %149 = load ptr, ptr %148, align 8, !tbaa !149
  %150 = load i32, ptr %149, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %146, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !125
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %182, label %157, !prof !210

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
  br i1 %165, label %179, label %166, !prof !211

166:                                              ; preds = %161
  %167 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %162
  %168 = load ptr, ptr %167, align 8, !tbaa !149
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170, !prof !212

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.saved_hard_reg, ptr %168, i64 0, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !203
  %173 = add nsw i32 %172, %96
  store i32 %173, ptr %171, align 8, !tbaa !203
  br label %176

174:                                              ; preds = %166
  %175 = trunc i64 %162 to i32
  call fastcc void @new_saved_hard_reg(i32 noundef %175, i32 noundef %96) #19
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i64, ptr %3, align 8, !tbaa !129
  %178 = or i64 %177, %163
  store i64 %178, ptr %3, align 8, !tbaa !129
  br label %179

179:                                              ; preds = %161, %176
  %180 = add nuw nsw i64 %162, 1
  %181 = icmp ult i64 %180, %160
  br i1 %181, label %161, label %182, !prof !213, !llvm.loop !214

182:                                              ; preds = %179, %145, %138
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %1) #19
  %183 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !207
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %138, !prof !215, !llvm.loop !216

185:                                              ; preds = %182, %135, %61, %69
  %186 = icmp eq ptr %65, null
  br i1 %186, label %187, label %61, !prof !217, !llvm.loop !218

187:                                              ; preds = %185, %58
  %188 = load i32, ptr @saved_regs_num, align 4, !tbaa !134
  %189 = mul nsw i32 %188, %188
  %190 = zext nneg i32 %189 to i64
  %191 = call ptr @xmalloc(i64 noundef %190) #18
  %192 = load i32, ptr @saved_regs_num, align 4, !tbaa !134
  %193 = mul nsw i32 %192, %192
  %194 = zext nneg i32 %193 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %191, i8 0, i64 %194, i1 false)
  %195 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !149
  %196 = icmp eq ptr %195, null
  br i1 %196, label %336, label %197, !prof !185

197:                                              ; preds = %187, %332
  %198 = phi ptr [ %201, %332 ], [ %195, %187 ]
  %199 = getelementptr inbounds %struct.insn_chain, ptr %198, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !186
  %201 = load ptr, ptr %198, align 8, !tbaa !189
  %202 = load i32, ptr %200, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 10
  br i1 %204, label %205, label %332, !prof !190

205:                                              ; preds = %197
  %206 = call ptr @find_reg_note(ptr noundef nonnull %200, i32 noundef 27, ptr noundef null) #18
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %332, !prof !191

208:                                              ; preds = %205
  store i64 0, ptr %3, align 8, !tbaa !129
  %209 = getelementptr inbounds %struct.insn_chain, ptr %198, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %209) #18
  %210 = load i64, ptr @call_used_reg_set, align 8, !tbaa !129
  store i64 0, ptr %4, align 8, !tbaa !129
  %211 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !125
  call void @note_stores(ptr noundef %212, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %4) #18
  %213 = load i32, ptr %200, align 8
  %214 = and i32 %213, 16777216
  %215 = icmp ne i32 %214, 0
  %216 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8
  %217 = icmp ne ptr %216, null
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %220, !prof !201

219:                                              ; preds = %208
  call void @mark_set_regs(ptr noundef nonnull %216, ptr poison, ptr noundef nonnull %4) #19
  br label %220

220:                                              ; preds = %219, %208
  %221 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !129
  %222 = load i64, ptr %4, align 8, !tbaa !129
  %223 = or i64 %222, %221
  %224 = xor i64 %223, -1
  %225 = and i64 %210, %224
  %226 = load i64, ptr %3, align 8, !tbaa !129
  %227 = and i64 %225, %226
  store i64 %227, ptr %3, align 8, !tbaa !129
  br label %228

228:                                              ; preds = %220, %246
  %229 = phi i64 [ 0, %220 ], [ %248, %246 ]
  %230 = phi i32 [ 0, %220 ], [ %247, %246 ]
  %231 = load i64, ptr %3, align 8, !tbaa !129
  %232 = shl nuw nsw i64 1, %229
  %233 = and i64 %231, %232
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %246, label %235, !prof !202

235:                                              ; preds = %228
  %236 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %229
  %237 = load ptr, ptr %236, align 8, !tbaa !149
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #18
  %240 = load ptr, ptr %236, align 8, !tbaa !149
  br label %241

241:                                              ; preds = %235, %239
  %242 = phi ptr [ %237, %235 ], [ %240, %239 ]
  %243 = add nsw i32 %230, 1
  %244 = sext i32 %230 to i64
  %245 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %244
  store ptr %242, ptr %245, align 8, !tbaa !149
  br label %246

246:                                              ; preds = %228, %241
  %247 = phi i32 [ %243, %241 ], [ %230, %228 ]
  %248 = add nuw nsw i64 %229, 1
  %249 = icmp eq i64 %248, 53
  br i1 %249, label %250, label %228, !prof !205, !llvm.loop !219

250:                                              ; preds = %246
  store i32 53, ptr %1, align 4, !tbaa !134
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %209, ptr noundef nonnull %1) #19
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !207
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %256, label %253, !prof !208

253:                                              ; preds = %250
  %254 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %255 = load ptr, ptr @regno_reg_rtx, align 8
  br label %262

256:                                              ; preds = %300, %250
  %257 = phi i32 [ %247, %250 ], [ %301, %300 ]
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %332, !prof !220

259:                                              ; preds = %256
  %260 = load i32, ptr @saved_regs_num, align 4
  %261 = zext nneg i32 %257 to i64
  br label %304

262:                                              ; preds = %253, %300
  %263 = phi i32 [ %247, %253 ], [ %301, %300 ]
  %264 = load i32, ptr %1, align 4, !tbaa !134
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i16, ptr %254, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !172
  %268 = icmp slt i16 %267, 0
  br i1 %268, label %300, label %269, !prof !209

269:                                              ; preds = %262
  %270 = zext nneg i16 %267 to i64
  %271 = getelementptr inbounds ptr, ptr %255, i64 %265
  %272 = load ptr, ptr %271, align 8, !tbaa !149
  %273 = load i32, ptr %272, align 8
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %270, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !125
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %300, label %280, !prof !210

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
  br i1 %289, label %296, label %290, !prof !211

290:                                              ; preds = %284
  %291 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %285
  %292 = load ptr, ptr %291, align 8, !tbaa !149
  %293 = add nsw i32 %286, 1
  %294 = sext i32 %286 to i64
  %295 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %294
  store ptr %292, ptr %295, align 8, !tbaa !149
  br label %296

296:                                              ; preds = %284, %290
  %297 = phi i32 [ %293, %290 ], [ %286, %284 ]
  %298 = add nuw nsw i64 %285, 1
  %299 = icmp ult i64 %298, %283
  br i1 %299, label %284, label %300, !prof !213, !llvm.loop !221

300:                                              ; preds = %296, %269, %262
  %301 = phi i32 [ %263, %262 ], [ %263, %269 ], [ %297, %296 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %1) #19
  %302 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %1) #19, !range !207
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %256, label %262, !prof !215, !llvm.loop !222

304:                                              ; preds = %259, %329
  %305 = phi i64 [ 0, %259 ], [ %330, %329 ]
  %306 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !149
  br label %308

308:                                              ; preds = %304, %326
  %309 = phi i64 [ 0, %304 ], [ %327, %326 ]
  %310 = icmp eq i64 %305, %309
  br i1 %310, label %326, label %311, !prof !223

311:                                              ; preds = %308
  %312 = getelementptr inbounds [53 x ptr], ptr %2, i64 0, i64 %309
  %313 = load ptr, ptr %312, align 8, !tbaa !149
  %314 = load i32, ptr %313, align 8, !tbaa !224
  %315 = mul nsw i32 %260, %314
  %316 = load i32, ptr %307, align 8, !tbaa !224
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, ptr %191, i64 %318
  store i8 1, ptr %319, align 1, !tbaa !125
  %320 = load i32, ptr %307, align 8, !tbaa !224
  %321 = mul nsw i32 %320, %260
  %322 = load i32, ptr %313, align 8, !tbaa !224
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %191, i64 %324
  store i8 1, ptr %325, align 1, !tbaa !125
  br label %326

326:                                              ; preds = %308, %311
  %327 = add nuw nsw i64 %309, 1
  %328 = icmp eq i64 %327, %261
  br i1 %328, label %329, label %308, !prof !225, !llvm.loop !226

329:                                              ; preds = %326
  %330 = add nuw nsw i64 %305, 1
  %331 = icmp eq i64 %330, %261
  br i1 %331, label %332, label %304, !prof !227, !llvm.loop !228

332:                                              ; preds = %329, %256, %197, %205
  %333 = icmp eq ptr %201, null
  br i1 %333, label %334, label %197, !prof !217, !llvm.loop !229

334:                                              ; preds = %332
  %335 = load i32, ptr @saved_regs_num, align 4, !tbaa !134
  br label %336

336:                                              ; preds = %334, %187
  %337 = phi i32 [ %335, %334 ], [ %192, %187 ]
  %338 = sext i32 %337 to i64
  call void @spec_qsort(ptr noundef nonnull @all_saved_regs, i64 noundef %338, i64 noundef 8, ptr noundef nonnull @saved_hard_reg_compare_func) #18
  %339 = load i32, ptr @save_slots_num, align 4, !tbaa !134
  %340 = sext i32 %339 to i64
  %341 = shl nsw i64 %340, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 @save_slots, i64 %341, i1 false)
  store i32 0, ptr @save_slots_num, align 4, !tbaa !134
  %342 = load i32, ptr @saved_regs_num, align 4, !tbaa !134
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %508, !prof !171

344:                                              ; preds = %336, %501
  %345 = phi i64 [ %503, %501 ], [ 0, %336 ]
  %346 = phi i32 [ %507, %501 ], [ -1, %336 ]
  %347 = phi i32 [ %504, %501 ], [ %342, %336 ]
  %348 = phi i32 [ %502, %501 ], [ %339, %336 ]
  %349 = add i32 %346, 1
  %350 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %345
  %351 = load ptr, ptr %350, align 8, !tbaa !149
  %352 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !230
  %354 = icmp eq i64 %345, 0
  br i1 %354, label %421, label %355, !prof !231

355:                                              ; preds = %344
  %356 = zext i32 %353 to i64
  br label %357

357:                                              ; preds = %355, %418
  %358 = phi i64 [ 0, %355 ], [ %419, %418 ]
  %359 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !149
  %361 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 4
  %362 = load i32, ptr %361, align 8, !tbaa !232
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %418, label %364, !prof !233

364:                                              ; preds = %357
  %365 = load i32, ptr %351, align 8, !tbaa !224
  %366 = mul nsw i32 %365, %347
  %367 = trunc i64 %358 to i32
  br label %368

368:                                              ; preds = %364, %379
  %369 = phi i32 [ %367, %364 ], [ %381, %379 ]
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !149
  %373 = load i32, ptr %372, align 8, !tbaa !224
  %374 = add nsw i32 %366, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, ptr %191, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !125
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %418, !prof !234

379:                                              ; preds = %368
  %380 = getelementptr inbounds %struct.saved_hard_reg, ptr %372, i64 0, i32 5
  %381 = load i32, ptr %380, align 4, !tbaa !235
  %382 = icmp sgt i32 %381, -1
  br i1 %382, label %368, label %383, !prof !236, !llvm.loop !237

383:                                              ; preds = %379
  %384 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %356, i64 1
  %385 = load i32, ptr %384, align 4, !tbaa !134
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !125
  %389 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 1
  %390 = load i32, ptr %389, align 4, !tbaa !230
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %391, i64 1
  %393 = load i32, ptr %392, align 4, !tbaa !134
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !125
  %397 = icmp ugt i8 %388, %396
  br i1 %397, label %418, label %398, !prof !238

398:                                              ; preds = %383
  %399 = trunc i64 %358 to i32
  %400 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !239
  %402 = sext i32 %353 to i64
  %403 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %402, i64 1
  %404 = load i32, ptr %403, align 4, !tbaa !134
  %405 = call ptr @adjust_address_1(ptr noundef %401, i32 noundef %404, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  %406 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %405, ptr %406, align 8, !tbaa !239
  %407 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %356, i64 1
  store ptr %405, ptr %407, align 8, !tbaa !149
  %408 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 5
  %409 = load i32, ptr %408, align 4, !tbaa !235
  %410 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 5
  store i32 %409, ptr %410, align 4, !tbaa !235
  %411 = trunc i64 %345 to i32
  store i32 %411, ptr %408, align 4, !tbaa !235
  %412 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %413 = icmp eq ptr %412, null
  br i1 %413, label %421, label %414, !prof !240

414:                                              ; preds = %398
  %415 = getelementptr inbounds %struct.saved_hard_reg, ptr %360, i64 0, i32 1
  %416 = load i32, ptr %415, align 4, !tbaa !230
  %417 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %412, ptr noundef nonnull @.str.2, i32 noundef %353, i32 noundef %416) #19
  br label %421

418:                                              ; preds = %368, %383, %357
  %419 = add nuw nsw i64 %358, 1
  %420 = icmp eq i64 %419, %345
  br i1 %420, label %421, label %357, !prof !241, !llvm.loop !242

421:                                              ; preds = %418, %344, %398, %414
  %422 = phi i32 [ %399, %398 ], [ %399, %414 ], [ 0, %344 ], [ %349, %418 ]
  %423 = zext i32 %422 to i64
  %424 = icmp eq i64 %345, %423
  br i1 %424, label %425, label %501, !prof !243

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 4
  store i32 1, ptr %426, align 8, !tbaa !232
  %427 = zext i32 %353 to i64
  %428 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %427, i64 1
  %429 = icmp sgt i32 %348, 0
  br i1 %429, label %430, label %480, !prof !244

430:                                              ; preds = %425, %453
  %431 = phi i64 [ %456, %453 ], [ 0, %425 ]
  %432 = phi i32 [ %454, %453 ], [ -1, %425 ]
  %433 = getelementptr inbounds [53 x ptr], ptr %6, i64 0, i64 %431
  %434 = load ptr, ptr %433, align 8, !tbaa !149
  %435 = icmp eq ptr %434, null
  br i1 %435, label %453, label %436, !prof !245

436:                                              ; preds = %430
  %437 = load i32, ptr %428, align 4, !tbaa !134
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !125
  %441 = load i32, ptr %434, align 8
  %442 = lshr i32 %441, 16
  %443 = and i32 %442, 255
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !125
  %447 = icmp ule i8 %440, %446
  %448 = icmp slt i32 %432, 0
  %449 = select i1 %447, i1 %448, i1 false
  %450 = trunc i64 %431 to i32
  %451 = select i1 %449, i32 %450, i32 %432, !prof !246
  %452 = icmp eq i32 %443, %437
  br i1 %452, label %458, label %453, !prof !247

453:                                              ; preds = %436, %430
  %454 = phi i32 [ %432, %430 ], [ %451, %436 ]
  %455 = zext nneg i32 %348 to i64
  %456 = add nuw nsw i64 %431, 1
  %457 = icmp eq i64 %456, %455
  br i1 %457, label %458, label %430, !prof !248, !llvm.loop !249

458:                                              ; preds = %453, %436
  %459 = phi i32 [ %454, %453 ], [ %451, %436 ]
  %460 = icmp sgt i32 %459, -1
  br i1 %460, label %461, label %480, !prof !250

461:                                              ; preds = %458
  %462 = zext nneg i32 %459 to i64
  %463 = getelementptr inbounds [53 x ptr], ptr %6, i64 0, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !149
  %465 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %464, ptr %465, align 8, !tbaa !239
  %466 = load i32, ptr %352, align 4, !tbaa !230
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %467, i64 1
  %469 = load i32, ptr %468, align 4, !tbaa !134
  %470 = call ptr @adjust_address_1(ptr noundef %464, i32 noundef %469, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  store ptr %470, ptr %465, align 8, !tbaa !239
  %471 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %472 = icmp eq ptr %471, null
  br i1 %472, label %475, label %473, !prof !247

473:                                              ; preds = %461
  %474 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %471, ptr noundef nonnull @.str.3, i32 noundef %353) #19
  br label %475

475:                                              ; preds = %473, %461
  store ptr null, ptr %463, align 8, !tbaa !149
  %476 = add nuw nsw i32 %459, 1
  %477 = icmp eq i32 %476, %348
  %478 = sext i1 %477 to i32
  %479 = add nsw i32 %348, %478
  br label %492

480:                                              ; preds = %425, %458
  %481 = load i32, ptr %428, align 4, !tbaa !134
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !125
  %485 = zext i8 %484 to i64
  %486 = call ptr @assign_stack_local_1(i32 noundef %481, i64 noundef %485, i32 noundef 0, i8 noundef zeroext 1) #18
  %487 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  store ptr %486, ptr %487, align 8, !tbaa !239
  %488 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %489 = icmp eq ptr %488, null
  br i1 %489, label %492, label %490, !prof !251

490:                                              ; preds = %480
  %491 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %488, ptr noundef nonnull @.str.4, i32 noundef %353) #19
  br label %492

492:                                              ; preds = %475, %480, %490
  %493 = phi i32 [ %348, %490 ], [ %348, %480 ], [ %479, %475 ]
  %494 = getelementptr inbounds %struct.saved_hard_reg, ptr %351, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !239
  %496 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %427, i64 1
  store ptr %495, ptr %496, align 8, !tbaa !149
  %497 = load i32, ptr @save_slots_num, align 4, !tbaa !134
  %498 = add nsw i32 %497, 1
  store i32 %498, ptr @save_slots_num, align 4, !tbaa !134
  %499 = sext i32 %497 to i64
  %500 = getelementptr inbounds [53 x ptr], ptr @save_slots, i64 0, i64 %499
  store ptr %495, ptr %500, align 8, !tbaa !149
  br label %501

501:                                              ; preds = %421, %492
  %502 = phi i32 [ %493, %492 ], [ %348, %421 ]
  %503 = add nuw nsw i64 %345, 1
  %504 = load i32, ptr @saved_regs_num, align 4, !tbaa !134
  %505 = sext i32 %504 to i64
  %506 = icmp slt i64 %503, %505
  %507 = add nsw i32 %346, 1
  br i1 %506, label %344, label %508, !prof !252, !llvm.loop !253

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
  %515 = load i32, ptr %514, align 4, !tbaa !134
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %556, label %517

517:                                              ; preds = %512
  %518 = load ptr, ptr %511, align 8, !tbaa !149
  %519 = icmp eq ptr %518, null
  br i1 %519, label %523, label %556

520:                                              ; preds = %523
  %521 = add nuw nsw i64 %524, 1
  %522 = icmp eq i64 %521, %513
  br i1 %522, label %532, label %523, !llvm.loop !254

523:                                              ; preds = %517, %520
  %524 = phi i64 [ %521, %520 ], [ 0, %517 ]
  %525 = add nuw nsw i64 %524, %510
  %526 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %525, i64 1
  %527 = load ptr, ptr %526, align 8, !tbaa !149
  %528 = icmp eq ptr %527, null
  br i1 %528, label %520, label %556

529:                                              ; preds = %532
  %530 = add nuw nsw i64 %533, 1
  %531 = icmp eq i64 %530, %513
  br i1 %531, label %538, label %532, !llvm.loop !255

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
  %541 = load i8, ptr %540, align 1, !tbaa !125
  %542 = zext i8 %541 to i64
  %543 = tail call ptr @assign_stack_local_1(i32 noundef %515, i64 noundef %542, i32 noundef 0, i8 noundef zeroext 1) #18
  %544 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %510, i64 %513
  store ptr %543, ptr %544, align 8, !tbaa !149
  br label %545

545:                                              ; preds = %538, %545
  %546 = phi i64 [ 0, %538 ], [ %554, %545 ]
  %547 = load ptr, ptr %544, align 8, !tbaa !149
  %548 = add nuw nsw i64 %546, %510
  %549 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %548, i64 1
  %550 = load i32, ptr %549, align 4, !tbaa !134
  %551 = shl nsw i64 %546, 2
  %552 = tail call ptr @adjust_address_1(ptr noundef %547, i32 noundef %550, i64 noundef %551, i32 noundef 0, i32 noundef 1) #18
  %553 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %548, i64 1
  store ptr %552, ptr %553, align 8, !tbaa !149
  %554 = add nuw nsw i64 %546, 1
  %555 = icmp eq i64 %554, %513
  br i1 %555, label %556, label %545, !llvm.loop !256

556:                                              ; preds = %523, %532, %545, %512, %517
  %557 = add nsw i64 %513, -1
  %558 = icmp ugt i64 %513, 1
  br i1 %558, label %512, label %559, !llvm.loop !257

559:                                              ; preds = %556
  %560 = add nuw nsw i64 %510, 1
  %561 = icmp eq i64 %560, 53
  br i1 %561, label %562, label %509, !llvm.loop !258

562:                                              ; preds = %559, %508
  br label %563

563:                                              ; preds = %562, %575
  %564 = phi i64 [ %576, %575 ], [ 0, %562 ]
  br label %565

565:                                              ; preds = %563, %572
  %566 = phi i64 [ 4, %563 ], [ %573, %572 ]
  %567 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %564, i64 %566
  %568 = load ptr, ptr %567, align 8, !tbaa !149
  %569 = icmp eq ptr %568, null
  br i1 %569, label %572, label %570, !prof !259

570:                                              ; preds = %565
  %571 = call i32 @get_frame_alias_set() #18
  call void @set_mem_alias_set(ptr noundef nonnull %568, i32 noundef %571) #18
  br label %572

572:                                              ; preds = %565, %570
  %573 = add nsw i64 %566, -1
  %574 = icmp ugt i64 %566, 1
  br i1 %574, label %565, label %575, !prof !260, !llvm.loop !261

575:                                              ; preds = %572
  %576 = add nuw nsw i64 %564, 1
  %577 = icmp eq i64 %576, 53
  br i1 %577, label %578, label %563, !prof !262, !llvm.loop !263

578:                                              ; preds = %575
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !prof !264 !PGOFuncName !265 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !125
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @initiate_saved_hard_regs() unnamed_addr #6 !prof !170 !PGOFuncName !266 {
  store i32 0, ptr @saved_regs_num, align 4, !tbaa !134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @hard_reg_map, i8 0, i64 424, i1 false), !tbaa !149
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_set_regs(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 !prof !267 !PGOFuncName !268 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %41 [
    i16 39, label %6
    i16 37, label %19
  ], !prof !269

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !125
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
  br i1 %21, label %22, label %41, !prof !270

22:                                               ; preds = %19
  %23 = lshr i32 %4, 16
  %24 = and i32 %23, 255
  %25 = tail call fastcc i32 @end_hard_regno(i32 noundef %24, i32 noundef %20) #19
  br label %26

26:                                               ; preds = %15, %22
  %27 = phi i32 [ %18, %15 ], [ %25, %22 ]
  %28 = phi i32 [ %16, %15 ], [ %20, %22 ]
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %30, label %41, !prof !271

30:                                               ; preds = %26
  %31 = load i64, ptr %2, align 8, !tbaa !129
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %37, %32 ]
  %34 = phi i32 [ %28, %30 ], [ %38, %32 ]
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = or i64 %33, %36
  %38 = add nsw i32 %34, 1
  %39 = icmp eq i32 %38, %27
  br i1 %39, label %40, label %32, !prof !272, !llvm.loop !273

40:                                               ; preds = %32
  store i64 %37, ptr %2, align 8, !tbaa !129
  br label %41

41:                                               ; preds = %26, %40, %6, %12, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @new_saved_hard_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !274 !PGOFuncName !275 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #18
  %4 = load i32, ptr @saved_regs_num, align 4, !tbaa !134
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %5
  store ptr %3, ptr %6, align 8, !tbaa !149
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %7
  store ptr %3, ptr %8, align 8, !tbaa !149
  %9 = add nsw i32 %4, 1
  store i32 %9, ptr @saved_regs_num, align 4, !tbaa !134
  store i32 %4, ptr %3, align 8, !tbaa !224
  %10 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 1
  store i32 %0, ptr %10, align 4, !tbaa !230
  %11 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !203
  %12 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 4
  store i32 0, ptr %12, align 8, !tbaa !232
  %13 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !235
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !276 !PGOFuncName !277 {
  %4 = load ptr, ptr %1, align 8, !tbaa !278
  store ptr %4, ptr %0, align 8, !tbaa !279
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !281
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !282

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !279
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !283
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !285

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 53, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !286
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %21 = and i32 %16, 53
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %19, %22
  store i64 %23, ptr %20, align 8, !tbaa !287
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %16, %25
  store i32 %26, ptr %2, align 4, !tbaa !134
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !288 !PGOFuncName !289 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !287
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !290

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !291

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !134
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !292, !llvm.loop !293

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !134
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !134
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !286
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !279
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !286
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !294

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !129
  store i64 %35, ptr %3, align 8, !tbaa !287
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !295

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !134
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !134
  %40 = load i32, ptr %23, align 8, !tbaa !286
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !286
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !296, !llvm.loop !297

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !298
  store ptr %44, ptr %0, align 8, !tbaa !279
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !299

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !283
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !134
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !287
  store i32 %16, ptr %1, align 4, !tbaa !134
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !300 !PGOFuncName !301 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !287
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !287
  %6 = load i32, ptr %1, align 4, !tbaa !134
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @saved_hard_reg_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !302 !PGOFuncName !303 {
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = load ptr, ptr %1, align 8, !tbaa !149
  %5 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !134
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7, !prof !304

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !203
  %10 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !203
  %12 = sub nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !203
  %17 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !203
  %19 = sub nsw i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !305

21:                                               ; preds = %14, %7
  %22 = load i32, ptr %3, align 8, !tbaa !224
  %23 = load i32, ptr %4, align 8, !tbaa !224
  %24 = sub nsw i32 %22, %23
  br label %25

25:                                               ; preds = %14, %7, %21
  %26 = phi i32 [ %24, %21 ], [ %12, %7 ], [ %19, %14 ]
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @assign_stack_local_1(i32 noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_saved_hard_regs() unnamed_addr #0 !prof !170 !PGOFuncName !306 {
  %1 = load i32, ptr @saved_regs_num, align 4, !tbaa !134
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %11, !prof !171

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %9, %5 ]
  %7 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  tail call void @free(ptr noundef %8) #19
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, %4
  br i1 %10, label %11, label %5, !prof !307, !llvm.loop !308

11:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_frame_alias_set() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @save_call_clobbered_regs() local_unnamed_addr #0 !prof !309 {
  %1 = alloca [53 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 0, ptr @hard_regs_saved, align 8, !tbaa !129
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !134
  %6 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !149
  %7 = icmp eq ptr %6, null
  br i1 %7, label %315, label %8, !prof !310

8:                                                ; preds = %0, %312
  %9 = phi ptr [ %15, %312 ], [ %6, %0 ]
  %10 = phi ptr [ %313, %312 ], [ null, %0 ]
  %11 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !186
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = load ptr, ptr %9, align 8, !tbaa !189
  %16 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !311

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
  br i1 %26, label %28, label %220, !prof !312

28:                                               ; preds = %22
  %29 = load i32, ptr @n_regs_saved, align 4, !tbaa !134
  br i1 %27, label %223, label %30, !prof !313

30:                                               ; preds = %28
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %59, label %32, !prof !314

32:                                               ; preds = %30
  %33 = icmp eq i32 %14, 9
  br i1 %33, label %34, label %36, !prof !315

34:                                               ; preds = %32
  %35 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  br label %41

36:                                               ; preds = %32
  store i64 0, ptr @referenced_regs, align 8, !tbaa !129
  %37 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %37, ptr noundef nonnull @mark_reg_as_referenced, ptr noundef null) #19
  %38 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  %39 = load i64, ptr @referenced_regs, align 8, !tbaa !129
  %40 = and i64 %39, %38
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i64 [ %40, %36 ], [ %35, %34 ]
  store i64 %42, ptr @referenced_regs, align 8, !tbaa !129
  br label %43

43:                                               ; preds = %41, %54
  %44 = phi i64 [ %42, %41 ], [ %55, %54 ]
  %45 = phi i32 [ 0, %41 ], [ %57, %54 ]
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %44, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50, !prof !316

50:                                               ; preds = %43
  %51 = call fastcc i32 @insert_restore(ptr noundef nonnull %9, i32 noundef 1, i32 noundef %45, ptr noundef nonnull %1) #19
  %52 = add nsw i32 %51, %45
  %53 = load i64, ptr @referenced_regs, align 8, !tbaa !129
  br label %54

54:                                               ; preds = %43, %50
  %55 = phi i64 [ %53, %50 ], [ %44, %43 ]
  %56 = phi i32 [ %52, %50 ], [ %45, %43 ]
  %57 = add nsw i32 %56, 1
  %58 = icmp slt i32 %56, 52
  br i1 %58, label %43, label %59, !prof !317, !llvm.loop !318

59:                                               ; preds = %54, %30
  %60 = icmp eq i32 %14, 10
  br i1 %60, label %61, label %228, !prof !319

61:                                               ; preds = %59
  %62 = load i32, ptr %12, align 8
  %63 = and i32 %62, 16777216
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %228, !prof !320

65:                                               ; preds = %61
  %66 = call ptr @find_reg_note(ptr noundef nonnull %12, i32 noundef 27, ptr noundef null) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %228, !prof !321

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  store i64 0, ptr %4, align 8, !tbaa !129
  %69 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %69) #18
  %70 = load i64, ptr %4, align 8, !tbaa !129
  br label %71

71:                                               ; preds = %68, %79
  %72 = phi i64 [ 0, %68 ], [ %82, %79 ]
  %73 = shl nuw nsw i64 1, %72
  %74 = and i64 %70, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %79, label %76, !prof !322

76:                                               ; preds = %71
  %77 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %72, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !134
  br label %79

79:                                               ; preds = %71, %76
  %80 = phi i32 [ %78, %76 ], [ 0, %71 ]
  %81 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %72
  store i32 %80, ptr %81, align 4
  %82 = add nuw nsw i64 %72, 1
  %83 = icmp eq i64 %82, 53
  br i1 %83, label %84, label %71, !prof !323, !llvm.loop !324

84:                                               ; preds = %79
  store i32 53, ptr %3, align 4, !tbaa !134
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %69, ptr noundef nonnull %3) #19
  %85 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !207
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %178, label %87, !prof !325

87:                                               ; preds = %84
  %88 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  br label %89

89:                                               ; preds = %87, %174
  %90 = phi ptr [ %88, %87 ], [ %175, %174 ]
  %91 = load i32, ptr %3, align 4, !tbaa !134
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i16, ptr %90, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !172
  %95 = sext i16 %94 to i32
  %96 = icmp slt i16 %94, 0
  br i1 %96, label %174, label %97, !prof !326

97:                                               ; preds = %89
  %98 = zext nneg i32 %95 to i64
  %99 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !149
  %100 = getelementptr inbounds ptr, ptr %99, i64 %92
  %101 = load ptr, ptr %100, align 8, !tbaa !149
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %98, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !125
  %108 = zext i8 %107 to i32
  %109 = add nsw i16 %94, -17
  %110 = icmp ult i16 %109, 2
  br i1 %110, label %126, label %111, !prof !327

111:                                              ; preds = %97
  %112 = trunc i32 %103 to i8
  switch i8 %112, label %121 [
    i8 0, label %113
    i8 15, label %118
  ], !prof !328

113:                                              ; preds = %111
  %114 = icmp eq i8 %107, 1
  br i1 %114, label %115, label %126

115:                                              ; preds = %113
  %116 = call i32 @choose_hard_reg_mode(i32 noundef %95, i32 noundef %108, i8 noundef zeroext 0) #18
  %117 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  br label %126

118:                                              ; preds = %111
  %119 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 9), align 1, !tbaa !125
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121, !prof !329

121:                                              ; preds = %111, %118
  %122 = icmp eq i32 %104, 14
  %123 = icmp ugt i16 %94, 3
  %124 = and i1 %123, %122
  %125 = select i1 %124, i32 16, i32 %104, !prof !330
  br label %126

126:                                              ; preds = %121, %113, %118, %115, %97
  %127 = phi ptr [ %90, %97 ], [ %90, %113 ], [ %117, %115 ], [ %90, %118 ], [ %90, %121 ]
  %128 = phi i32 [ 0, %97 ], [ 0, %113 ], [ %116, %115 ], [ 16, %118 ], [ %125, %121 ]
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !125
  %132 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %98
  %133 = load i32, ptr %132, align 4, !tbaa !134
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !125
  %137 = icmp ugt i8 %131, %136
  br i1 %137, label %138, label %139, !prof !331

138:                                              ; preds = %126
  store i32 %128, ptr %132, align 4, !tbaa !134
  br label %139

139:                                              ; preds = %138, %126
  %140 = icmp eq i8 %107, 0
  br i1 %140, label %174, label %141, !prof !332

141:                                              ; preds = %139
  %142 = zext nneg i16 %94 to i64
  %143 = zext i8 %107 to i64
  %144 = load i64, ptr %4, align 8, !tbaa !129
  %145 = add nuw nsw i64 %143, 1
  %146 = and i64 %145, 510
  %147 = add nsw i64 %143, -1
  %148 = insertelement <2 x i64> poison, i64 %147, i64 0
  %149 = shufflevector <2 x i64> %148, <2 x i64> poison, <2 x i32> zeroinitializer
  %150 = insertelement <2 x i64> poison, i64 %143, i64 0
  %151 = shufflevector <2 x i64> %150, <2 x i64> poison, <2 x i32> zeroinitializer
  %152 = add nsw <2 x i64> %151, <i64 0, i64 -1>
  %153 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %144, i64 0
  %154 = add nsw i64 %142, -1
  %155 = insertelement <2 x i64> poison, i64 %154, i64 0
  %156 = shufflevector <2 x i64> %155, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %157

157:                                              ; preds = %157, %141
  %158 = phi i64 [ 0, %141 ], [ %164, %157 ]
  %159 = phi <2 x i64> [ %152, %141 ], [ %165, %157 ]
  %160 = phi <2 x i64> [ %153, %141 ], [ %163, %157 ]
  %161 = add <2 x i64> %156, %159
  %162 = shl nuw <2 x i64> <i64 1, i64 1>, %161
  %163 = or <2 x i64> %160, %162
  %164 = add i64 %158, 2
  %165 = add <2 x i64> %159, <i64 -2, i64 -2>
  %166 = icmp eq i64 %164, %146
  br i1 %166, label %167, label %157, !prof !333, !llvm.loop !334

167:                                              ; preds = %157
  %168 = insertelement <2 x i64> poison, i64 %158, i64 0
  %169 = shufflevector <2 x i64> %168, <2 x i64> poison, <2 x i32> zeroinitializer
  %170 = or disjoint <2 x i64> %169, <i64 0, i64 1>
  %171 = icmp ugt <2 x i64> %170, %149
  %172 = select <2 x i1> %171, <2 x i64> %160, <2 x i64> %163
  %173 = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %172)
  store i64 %173, ptr %4, align 8, !tbaa !129
  br label %174

174:                                              ; preds = %139, %167, %89
  %175 = phi ptr [ %127, %139 ], [ %127, %167 ], [ %90, %89 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %176 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !207
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %89, !prof !337, !llvm.loop !338

178:                                              ; preds = %174, %84
  store i64 0, ptr %2, align 8, !tbaa !129
  %179 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !125
  call void @note_stores(ptr noundef %180, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %2) #18
  %181 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !129
  %182 = load i64, ptr %4, align 8, !tbaa !129
  %183 = load i64, ptr %2, align 8, !tbaa !129
  %184 = or i64 %181, %183
  %185 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  %186 = or i64 %184, %185
  %187 = xor i64 %186, -1
  %188 = and i64 %182, %187
  %189 = load i64, ptr @call_used_reg_set, align 8, !tbaa !129
  %190 = and i64 %189, %188
  store i64 %190, ptr %4, align 8, !tbaa !129
  br label %191

191:                                              ; preds = %178, %201
  %192 = phi i32 [ 0, %178 ], [ %203, %201 ]
  %193 = load i64, ptr %4, align 8, !tbaa !129
  %194 = zext nneg i32 %192 to i64
  %195 = shl nuw nsw i64 1, %194
  %196 = and i64 %193, %195
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %201, label %198, !prof !339

198:                                              ; preds = %191
  %199 = call fastcc i32 @insert_save(ptr noundef nonnull %9, i32 noundef %192, ptr noundef nonnull %4, ptr noundef nonnull %1) #19
  %200 = add i32 %199, %192
  br label %201

201:                                              ; preds = %191, %198
  %202 = phi i32 [ %192, %191 ], [ %200, %198 ]
  %203 = add i32 %202, 1
  %204 = icmp ult i32 %203, 53
  br i1 %204, label %191, label %205, !prof !340, !llvm.loop !341

205:                                              ; preds = %201
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !134
  %206 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  br label %207

207:                                              ; preds = %205, %215
  %208 = phi i64 [ 0, %205 ], [ %217, %215 ]
  %209 = phi i32 [ 0, %205 ], [ %216, %215 ]
  %210 = shl nuw nsw i64 1, %208
  %211 = and i64 %206, %210
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %215, label %213, !prof !342

213:                                              ; preds = %207
  %214 = add nsw i32 %209, 1
  store i32 %214, ptr @n_regs_saved, align 4, !tbaa !134
  br label %215

215:                                              ; preds = %207, %213
  %216 = phi i32 [ %209, %207 ], [ %214, %213 ]
  %217 = add nuw nsw i64 %208, 1
  %218 = icmp eq i64 %217, 53
  br i1 %218, label %219, label %207, !prof !323, !llvm.loop !343

219:                                              ; preds = %215
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %228

220:                                              ; preds = %22
  br i1 %27, label %221, label %228, !prof !344

221:                                              ; preds = %220
  %222 = load i32, ptr @n_regs_saved, align 4, !tbaa !134
  br label %223

223:                                              ; preds = %221, %28
  %224 = phi i32 [ %222, %221 ], [ %29, %28 ]
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %227, ptr noundef nonnull @replace_reg_with_saved_mem, ptr noundef nonnull %1) #19
  br label %228

228:                                              ; preds = %59, %61, %65, %219, %220, %223, %226
  %229 = phi ptr [ %10, %226 ], [ %10, %223 ], [ %10, %220 ], [ %9, %219 ], [ %9, %65 ], [ %9, %61 ], [ %9, %59 ]
  %230 = load ptr, ptr %9, align 8, !tbaa !189
  %231 = icmp eq ptr %230, null
  br i1 %231, label %238, label %232, !prof !345

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.insn_chain, ptr %230, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !346
  %235 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !346
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %312, label %238, !prof !347

238:                                              ; preds = %232, %228
  %239 = load i32, ptr %12, align 8
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 7
  br i1 %241, label %242, label %287, !prof !348

242:                                              ; preds = %238
  %243 = icmp eq ptr %229, null
  br i1 %243, label %287, label %244

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.insn_chain, ptr %229, i64 0, i32 4
  %246 = load i32, ptr %245, align 8, !tbaa !346
  %247 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 4
  %248 = load i32, ptr %247, align 8, !tbaa !346
  %249 = icmp eq i32 %246, %248
  br i1 %249, label %250, label %287

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !125
  %253 = getelementptr inbounds %struct.insn_chain, ptr %229, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !186
  %255 = icmp eq ptr %252, %254
  br i1 %255, label %287, label %256

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !125
  %259 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %258, i64 0, i32 7
  br label %261

261:                                              ; preds = %256, %284
  %262 = phi ptr [ %252, %256 ], [ %264, %284 ]
  %263 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1, i32 0, i32 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !125
  %265 = load i32, ptr %262, align 8
  %266 = trunc i32 %265 to i16
  switch i16 %266, label %283 [
    i16 13, label %267
    i16 7, label %284
  ]

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1, i32 0, i32 0, i64 2
  %269 = load ptr, ptr %268, align 8, !tbaa !125
  %270 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %269, ptr %270, align 8, !tbaa !125
  %271 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %264, ptr %271, align 8, !tbaa !125
  store ptr %12, ptr %263, align 8, !tbaa !125
  %272 = load ptr, ptr %259, align 8, !tbaa !125
  store ptr %272, ptr %268, align 8, !tbaa !125
  store ptr %262, ptr %259, align 8, !tbaa !125
  %273 = load ptr, ptr %268, align 8, !tbaa !125
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %262, ptr %276, align 8, !tbaa !125
  br label %277

277:                                              ; preds = %275, %267
  %278 = load ptr, ptr %260, align 8, !tbaa !125
  %279 = getelementptr inbounds %struct.rtl_bb_info, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !349
  %281 = icmp eq ptr %280, %12
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  store ptr %262, ptr %279, align 8, !tbaa !349
  br label %284

283:                                              ; preds = %261
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 916, ptr noundef nonnull @.str.1) #18
  br label %284

284:                                              ; preds = %261, %283, %282, %277
  %285 = load ptr, ptr %253, align 8, !tbaa !186
  %286 = icmp eq ptr %264, %285
  br i1 %286, label %287, label %261, !llvm.loop !351

287:                                              ; preds = %284, %250, %244, %242, %238
  %288 = load i32, ptr @n_regs_saved, align 4, !tbaa !134
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %312, label %290, !prof !352

290:                                              ; preds = %287
  %291 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  br label %292

292:                                              ; preds = %290, %307
  %293 = phi i64 [ %308, %307 ], [ %291, %290 ]
  %294 = phi i32 [ %310, %307 ], [ 0, %290 ]
  %295 = zext nneg i32 %294 to i64
  %296 = shl nuw i64 1, %295
  %297 = and i64 %293, %296
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %307, label %299, !prof !353

299:                                              ; preds = %292
  %300 = load i32, ptr %12, align 8
  %301 = and i32 %300, 65535
  %302 = icmp eq i32 %301, 9
  %303 = zext i1 %302 to i32
  %304 = call fastcc i32 @insert_restore(ptr noundef nonnull %9, i32 noundef %303, i32 noundef %294, ptr noundef nonnull %1) #19
  %305 = add nsw i32 %304, %294
  %306 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  br label %307

307:                                              ; preds = %292, %299
  %308 = phi i64 [ %306, %299 ], [ %293, %292 ]
  %309 = phi i32 [ %305, %299 ], [ %294, %292 ]
  %310 = add nsw i32 %309, 1
  %311 = icmp slt i32 %309, 52
  br i1 %311, label %292, label %312, !prof !354, !llvm.loop !355

312:                                              ; preds = %307, %287, %232
  %313 = phi ptr [ %229, %232 ], [ null, %287 ], [ null, %307 ]
  %314 = icmp eq ptr %15, null
  br i1 %314, label %315, label %8, !prof !356, !llvm.loop !357

315:                                              ; preds = %312, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_referenced_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !358 !PGOFuncName !359 {
  br label %4

4:                                                ; preds = %89, %3
  %5 = phi ptr [ %0, %3 ], [ %90, %89 ]
  %6 = phi ptr [ %2, %3 ], [ null, %89 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !149
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %45 [
    i16 23, label %10
    i16 25, label %13
  ], !prof !360

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %6) #19
  %12 = load ptr, ptr %5, align 8, !tbaa !149
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %12, %10 ], [ %7, %4 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !149
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %45 [
    i16 37, label %19
    i16 36, label %134
    i16 46, label %134
    i16 39, label %22
  ], !prof !361

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %16) #19
  %21 = icmp ult i32 %20, 53
  br i1 %21, label %134, label %61, !prof !362

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %50, !prof !363

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %24) #19
  %30 = icmp ult i32 %29, 53
  br i1 %30, label %31, label %50, !prof !363

31:                                               ; preds = %28
  %32 = lshr i32 %17, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !125
  %37 = lshr i32 %25, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !125
  %42 = icmp uge i8 %36, %41
  %43 = icmp ult i8 %41, 5
  %44 = or i1 %42, %43
  br i1 %44, label %134, label %50, !prof !364

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
  %53 = load ptr, ptr %52, align 8, !tbaa !149
  %54 = load i32, ptr %53, align 8
  br label %55

55:                                               ; preds = %45, %50
  %56 = phi ptr [ %53, %50 ], [ %47, %45 ]
  %57 = phi i32 [ %54, %50 ], [ %48, %45 ]
  %58 = phi ptr [ %52, %50 ], [ %49, %45 ]
  %59 = and i32 %57, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %96, !prof !365

61:                                               ; preds = %19, %55
  %62 = phi i32 [ %57, %55 ], [ %17, %19 ]
  %63 = phi ptr [ %56, %55 ], [ %16, %19 ]
  %64 = phi ptr [ %58, %55 ], [ %15, %19 ]
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %63) #19
  %66 = icmp slt i32 %65, 53
  br i1 %66, label %73, label %67, !prof !366

67:                                               ; preds = %61
  %68 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds i16, ptr %68, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !172
  %72 = sext i16 %71 to i32
  br label %73

73:                                               ; preds = %61, %67
  %74 = phi i32 [ %72, %67 ], [ %65, %61 ]
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %79, !prof !366

76:                                               ; preds = %73
  %77 = lshr i32 %62, 16
  %78 = and i32 %77, 255
  tail call void %1(ptr noundef nonnull %64, i32 noundef %78, i32 noundef %74, ptr noundef %6) #18, !callees !367
  br label %134

79:                                               ; preds = %73
  %80 = icmp eq ptr %6, null
  br i1 %80, label %81, label %134, !prof !368

81:                                               ; preds = %79
  %82 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !149
  %83 = sext i32 %65 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !149
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87, !prof !369

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  br label %89

89:                                               ; preds = %87, %91
  %90 = phi ptr [ %88, %87 ], [ %93, %91 ]
  br label %4

91:                                               ; preds = %81
  %92 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !149
  %93 = getelementptr inbounds ptr, ptr %92, i64 %83
  %94 = load ptr, ptr %93, align 8, !tbaa !149
  %95 = icmp eq ptr %94, null
  br i1 %95, label %134, label %89, !prof !370

96:                                               ; preds = %55
  %97 = zext nneg i32 %59 to i64
  %98 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !149
  %100 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %97
  %101 = load i8, ptr %100, align 1, !tbaa !125
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %134, label %103, !prof !371

103:                                              ; preds = %96
  %104 = zext i8 %101 to i64
  br label %105

105:                                              ; preds = %103, %132
  %106 = phi i64 [ %104, %103 ], [ %107, %132 ]
  %107 = add nsw i64 %106, -1
  %108 = getelementptr inbounds i8, ptr %99, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !125
  switch i8 %109, label %132 [
    i8 101, label %110
    i8 69, label %114
  ], !prof !372

110:                                              ; preds = %105
  %111 = load ptr, ptr %58, align 8, !tbaa !149
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %112, i64 0, i64 %107
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %113, ptr noundef %1, ptr noundef %6) #19
  br label %132

114:                                              ; preds = %105
  %115 = load ptr, ptr %58, align 8, !tbaa !149
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %117 = getelementptr inbounds [1 x %union.rtunion_def], ptr %116, i64 0, i64 %107
  %118 = load ptr, ptr %117, align 8, !tbaa !125
  %119 = load i32, ptr %118, align 8, !tbaa !373
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %132, !prof !375

121:                                              ; preds = %114
  %122 = zext nneg i32 %119 to i64
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi i64 [ %122, %121 ], [ %125, %123 ]
  %125 = add nsw i64 %124, -1
  %126 = load ptr, ptr %58, align 8, !tbaa !149
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %127, i64 0, i64 %107
  %129 = load ptr, ptr %128, align 8, !tbaa !125
  %130 = getelementptr inbounds %struct.rtvec_def, ptr %129, i64 0, i32 1, i64 %125
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %130, ptr noundef %1, ptr noundef %6) #19
  %131 = icmp ugt i64 %124, 1
  br i1 %131, label %123, label %132, !prof !376, !llvm.loop !377

132:                                              ; preds = %123, %114, %105, %110
  %133 = icmp sgt i64 %106, 1
  br i1 %133, label %105, label %134, !prof !378, !llvm.loop !379

134:                                              ; preds = %79, %91, %19, %31, %13, %13, %132, %96, %76
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mark_reg_as_referenced(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #15 !prof !380 !PGOFuncName !381 {
  tail call fastcc void @add_to_hard_reg_set(i32 noundef %1, i32 noundef %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_restore(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !382 !PGOFuncName !383 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !384

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = load i64, ptr @hard_regs_saved, align 8
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi i64 [ 4, %10 ], [ %27, %26 ]
  %14 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %20, !prof !385

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, %13
  br i1 %19, label %29, label %20, !prof !386, !llvm.loop !387

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %18, %17 ], [ 0, %12 ]
  %22 = add nsw i64 %21, %5
  %23 = shl nuw i64 1, %22
  %24 = and i64 %11, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %17, !prof !384

26:                                               ; preds = %20, %12
  %27 = add nsw i64 %13, -1
  %28 = icmp ugt i64 %13, 1
  br i1 %28, label %12, label %31, !prof !388, !llvm.loop !389

29:                                               ; preds = %17
  %30 = trunc i64 %13 to i32
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !149
  %36 = getelementptr inbounds i32, ptr %3, i64 %5
  %37 = load i32, ptr %36, align 4, !tbaa !134
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39, !prof !390

39:                                               ; preds = %31
  %40 = load i32, ptr %35, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %56, label %44, !prof !391

44:                                               ; preds = %39
  %45 = zext i32 %37 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !125
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %32, %48
  br i1 %49, label %50, label %56, !prof !392

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @reg_save_code(i32 noundef %2, i32 noundef %37) #19
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %56, !prof !393

53:                                               ; preds = %50
  %54 = load i32, ptr %36, align 4, !tbaa !134
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
  br i1 %64, label %70, label %65, !prof !384

65:                                               ; preds = %58
  %66 = load i32, ptr %59, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = tail call i32 @get_mode_alignment(i32 noundef %68) #18
  br label %70

70:                                               ; preds = %58, %65
  %71 = phi i32 [ %69, %65 ], [ -2147483648, %58 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !125
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75, !prof !384

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !394
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi i32 [ %77, %75 ], [ 8, %70 ]
  %80 = icmp ugt i32 %71, %79
  br i1 %80, label %81, label %82, !prof !384

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
  br i1 %93, label %94, label %109, !prof !386

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.insn_chain, ptr %92, i64 0, i32 7
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ 0, %94 ], [ %107, %96 ]
  %98 = add nsw i64 %97, %5
  %99 = shl nuw i64 1, %98
  %100 = xor i64 %99, -1
  %101 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  %102 = and i64 %101, %100
  store i64 %102, ptr @hard_regs_saved, align 8, !tbaa !129
  %103 = trunc i64 %98 to i32
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %95, i32 noundef %103) #18
  %105 = load i32, ptr @n_regs_saved, align 4, !tbaa !134
  %106 = add nsw i32 %105, -1
  store i32 %106, ptr @n_regs_saved, align 4, !tbaa !134
  %107 = add nuw nsw i64 %97, 1
  %108 = icmp eq i64 %107, %33
  br i1 %108, label %109, label %96, !prof !386, !llvm.loop !396

109:                                              ; preds = %96, %82
  %110 = add nsw i32 %32, -1
  ret i32 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_save(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !382 !PGOFuncName !397 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !384

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1267, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %10, %28
  %13 = phi i64 [ 4, %10 ], [ %29, %28 ]
  %14 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17, !prof !385

17:                                               ; preds = %12
  %18 = load i64, ptr %2, align 8, !tbaa !129
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %23, 1
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %31, label %22, !prof !386, !llvm.loop !398

22:                                               ; preds = %17, %19
  %23 = phi i64 [ 0, %17 ], [ %20, %19 ]
  %24 = add nsw i64 %23, %11
  %25 = shl nuw i64 1, %24
  %26 = and i64 %18, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %19, !prof !384

28:                                               ; preds = %22, %12
  %29 = add nsw i64 %13, -1
  %30 = icmp ugt i64 %13, 1
  br i1 %30, label %12, label %33, !prof !388, !llvm.loop !399

31:                                               ; preds = %19
  %32 = trunc i64 %13 to i32
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !149
  %38 = getelementptr inbounds i32, ptr %3, i64 %5
  %39 = load i32, ptr %38, align 4, !tbaa !134
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41, !prof !390

41:                                               ; preds = %33
  %42 = load i32, ptr %37, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %58, label %46, !prof !391

46:                                               ; preds = %41
  %47 = zext i32 %39 to i64
  %48 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !125
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %34, %50
  br i1 %51, label %52, label %58, !prof !392

52:                                               ; preds = %46
  %53 = tail call fastcc i32 @reg_save_code(i32 noundef %1, i32 noundef %39) #19
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %58, !prof !393

55:                                               ; preds = %52
  %56 = load i32, ptr %38, align 4, !tbaa !134
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
  br i1 %66, label %72, label %67, !prof !384

67:                                               ; preds = %60
  %68 = load i32, ptr %61, align 8
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = tail call i32 @get_mode_alignment(i32 noundef %70) #18
  br label %72

72:                                               ; preds = %60, %67
  %73 = phi i32 [ %71, %67 ], [ -2147483648, %60 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !125
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77, !prof !384

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mem_attrs, ptr %75, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !394
  br label %80

80:                                               ; preds = %72, %77
  %81 = phi i32 [ %79, %77 ], [ 8, %72 ]
  %82 = icmp ugt i32 %73, %81
  br i1 %82, label %83, label %84, !prof !384

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
  br i1 %95, label %110, label %96, !prof !400

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.insn_chain, ptr %94, i64 0, i32 7
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ 0, %96 ], [ %108, %98 ]
  %100 = add nuw nsw i64 %99, %5
  %101 = shl nuw i64 1, %100
  %102 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  %103 = or i64 %102, %101
  store i64 %103, ptr @hard_regs_saved, align 8, !tbaa !129
  %104 = trunc i64 %100 to i32
  %105 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %97, i32 noundef %104) #18
  %106 = load i32, ptr @n_regs_saved, align 4, !tbaa !134
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr @n_regs_saved, align 4, !tbaa !134
  %108 = add nuw nsw i64 %99, 1
  %109 = icmp eq i64 %108, %35
  br i1 %109, label %110, label %98, !prof !386, !llvm.loop !401

110:                                              ; preds = %98, %84
  %111 = add nsw i32 %34, -1
  ret i32 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @replace_reg_with_saved_mem(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 !prof !402 !PGOFuncName !403 {
  %5 = sext i32 %2 to i64
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !125
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
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
  br i1 %24, label %117, label %14, !llvm.loop !404

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
  br i1 %44, label %45, label %34, !llvm.loop !405

45:                                               ; preds = %38, %34
  %46 = phi i32 [ %39, %38 ], [ %33, %34 ]
  %47 = icmp eq i32 %46, %9
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = zext i8 %8 to i64
  %50 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !149
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @copy_rtx(ptr noundef nonnull %51) #18
  %55 = getelementptr inbounds i32, ptr %3, i64 %5
  %56 = load i32, ptr %55, align 4, !tbaa !134
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !125
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
  %79 = load i64, ptr @hard_regs_saved, align 8, !tbaa !129
  %80 = trunc i64 %78 to i32
  %81 = add i32 %80, %2
  %82 = zext i32 %81 to i64
  %83 = shl nuw i64 1, %82
  %84 = and i64 %79, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %82, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !149
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1139, ptr noundef nonnull @.str.1) #18
  %91 = load ptr, ptr %87, align 8, !tbaa !149
  br label %92

92:                                               ; preds = %86, %90
  %93 = phi ptr [ %88, %86 ], [ %91, %90 ]
  %94 = tail call ptr @copy_rtx(ptr noundef %93) #18
  br label %103

95:                                               ; preds = %77
  %96 = load i32, ptr %76, align 4, !tbaa !134
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1144, ptr noundef nonnull @.str.1) #18
  %99 = load i32, ptr %76, align 4, !tbaa !134
  br label %100

100:                                              ; preds = %95, %98
  %101 = phi i32 [ %96, %95 ], [ %99, %98 ]
  %102 = tail call ptr @gen_rtx_REG(i32 noundef %101, i32 noundef %81) #18
  br label %103

103:                                              ; preds = %92, %100
  %104 = phi ptr [ %94, %92 ], [ %102, %100 ]
  %105 = load ptr, ptr %75, align 8, !tbaa !125
  %106 = getelementptr inbounds %struct.rtvec_def, ptr %105, i64 0, i32 1, i64 %78
  store ptr %104, ptr %106, align 8, !tbaa !149
  %107 = add nuw nsw i64 %78, 1
  %108 = icmp eq i64 %107, %31
  br i1 %108, label %109, label %77, !llvm.loop !406

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
  store ptr %110, ptr %0, align 8, !tbaa !149
  br label %117

117:                                              ; preds = %22, %25, %116
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #16 !prof !380 !PGOFuncName !407 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #19
  %4 = load i64, ptr @referenced_regs, align 8, !tbaa !129
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %4, %2 ], [ %10, %5 ]
  %7 = phi i32 [ %1, %2 ], [ %11, %5 ]
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = or i64 %9, %6
  %11 = add i32 %7, 1
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %5, label %13, !prof !408, !llvm.loop !409

13:                                               ; preds = %5
  store i64 %10, ptr @referenced_regs, align 8, !tbaa !129
  ret void
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reg_restore_code(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !382 !PGOFuncName !410 {
  %3 = sext i32 %0 to i64
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !134
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !384

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @reg_save_code(i32 noundef %0, i32 noundef %1) #19
  %10 = load i32, ptr %5, align 4, !tbaa !134
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ %6, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_one_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !411 !PGOFuncName !412 {
  %5 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = tail call ptr @new_insn_chain() #18
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %50, label %9, !prof !413

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !414
  %12 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !414
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, ptr @reload_insn_chain, ptr %11, !prof !415
  store ptr %7, ptr %14, align 8, !tbaa !149
  store ptr %7, ptr %10, align 8, !tbaa !414
  store ptr %0, ptr %7, align 8, !tbaa !189
  %15 = tail call ptr @emit_insn_before(ptr noundef %3, ptr noundef %6) #18
  %16 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !186
  %17 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %18 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %17, ptr noundef nonnull %18) #18
  %19 = load ptr, ptr %5, align 8, !tbaa !186
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  tail call void @note_uses(ptr noundef nonnull %20, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %21 = load ptr, ptr %5, align 8, !tbaa !186
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %35, !prof !416

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !417

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %33, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  tail call void @note_uses(ptr noundef nonnull %31, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %32 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !125
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !prof !418, !llvm.loop !419

35:                                               ; preds = %29, %25, %9
  %36 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %36) #18
  %37 = load ptr, ptr %5, align 8, !tbaa !186
  %38 = load ptr, ptr @cfun, align 8, !tbaa !149
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !193
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !420
  %43 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !346
  %45 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %44) #19
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !125
  %48 = load ptr, ptr %47, align 8, !tbaa !421
  %49 = icmp eq ptr %37, %48
  br i1 %49, label %79, label %84, !prof !415

50:                                               ; preds = %4
  %51 = load ptr, ptr %0, align 8, !tbaa !189
  store ptr %51, ptr %7, align 8, !tbaa !189
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !422

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.insn_chain, ptr %51, i64 0, i32 1
  store ptr %7, ptr %54, align 8, !tbaa !414
  br label %55

55:                                               ; preds = %53, %50
  store ptr %7, ptr %0, align 8, !tbaa !189
  %56 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %0, ptr %56, align 8, !tbaa !414
  %57 = tail call ptr @emit_insn_after(ptr noundef %3, ptr noundef %6) #18
  %58 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %57, ptr %58, align 8, !tbaa !186
  %59 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %60 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %59, ptr noundef nonnull %60) #18
  %61 = load ptr, ptr %5, align 8, !tbaa !186
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !125
  tail call void @note_stores(ptr noundef %63, ptr noundef nonnull @add_stored_regs, ptr noundef nonnull %59) #18
  %64 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %64) #18
  %65 = load ptr, ptr %5, align 8, !tbaa !186
  %66 = load ptr, ptr @cfun, align 8, !tbaa !149
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !193
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !420
  %71 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !346
  %73 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %70, i32 noundef %72) #19
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !125
  %76 = getelementptr inbounds %struct.rtl_bb_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !349
  %78 = icmp eq ptr %65, %77
  br i1 %78, label %79, label %84, !prof !422

79:                                               ; preds = %55, %35
  %80 = phi ptr [ %16, %35 ], [ %58, %55 ]
  %81 = phi ptr [ %47, %35 ], [ %76, %55 ]
  %82 = phi i32 [ %44, %35 ], [ %72, %55 ]
  %83 = load ptr, ptr %80, align 8, !tbaa !186
  store ptr %83, ptr %81, align 8, !tbaa !149
  br label %84

84:                                               ; preds = %79, %35, %55
  %85 = phi i32 [ %44, %35 ], [ %72, %55 ], [ %82, %79 ]
  %86 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 4
  store i32 %85, ptr %86, align 8, !tbaa !346
  %87 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 5
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 8
  store i8 %89, ptr %87, align 4
  %90 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !186
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1
  store i32 %2, ptr %92, align 8, !tbaa !125
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
define internal void @add_used_regs(ptr noundef %0, ptr noundef %1) #0 !prof !423 !PGOFuncName !424 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @add_used_regs_1, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !411 !PGOFuncName !425 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !149
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_stored_regs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !426 !PGOFuncName !427 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 25
  br i1 %9, label %46, label %10, !prof !428

10:                                               ; preds = %3
  %11 = trunc i32 %4 to i16
  switch i16 %11, label %46 [
    i16 39, label %12
    i16 37, label %32
  ], !prof !429

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !125
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
  %25 = load i32, ptr %24, align 8, !tbaa !125
  %26 = tail call i32 @subreg_regno_offset(i32 noundef %19, i32 noundef %23, i32 noundef %25, i32 noundef %6) #18
  %27 = load ptr, ptr %13, align 8, !tbaa !125
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef %27) #19
  %29 = add i32 %28, %26
  %30 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #18
  %31 = add i32 %29, %30
  br label %37

32:                                               ; preds = %10
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %34 = icmp ugt i32 %33, 52
  br i1 %34, label %46, label %35, !prof !430

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %33) #19
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i32 [ %31, %21 ], [ %36, %35 ]
  %39 = phi i32 [ %29, %21 ], [ %33, %35 ]
  %40 = icmp slt i32 %39, %38
  br i1 %40, label %41, label %46, !prof !431

41:                                               ; preds = %37, %41
  %42 = phi i32 [ %44, %41 ], [ %39, %37 ]
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %42) #18
  %44 = add i32 %42, 1
  %45 = icmp eq i32 %44, %38
  br i1 %45, label %46, label %41, !prof !431, !llvm.loop !432

46:                                               ; preds = %41, %37, %10, %12, %18, %32, %3
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_used_regs_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !433 !PGOFuncName !434 {
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %35, !prof !435

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #19
  %9 = icmp slt i32 %8, 53
  br i1 %9, label %16, label %10, !prof !436

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !172
  %15 = sext i16 %14 to i32
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ %8, %7 ], [ %15, %10 ]
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %35, !prof !436

19:                                               ; preds = %16
  %20 = zext nneg i32 %17 to i64
  %21 = lshr i32 %4, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %20, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !125
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !437

27:                                               ; preds = %19
  %28 = zext i8 %25 to i32
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i32 [ %31, %29 ], [ %28, %27 ]
  %31 = add nsw i32 %30, -1
  %32 = add nuw nsw i32 %31, %17
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %32) #18
  %34 = icmp ugt i32 %30, 1
  br i1 %34, label %29, label %35, !prof !438, !llvm.loop !439

35:                                               ; preds = %29, %19, %16, %2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!123}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!36 = !{ptr @init_caller_save, ptr @choose_hard_reg_mode, i64 11}
!37 = !{ptr @init_caller_save, ptr @gen_rtx_REG, i64 4}
!38 = !{ptr @init_caller_save, ptr @gen_rtx_CONST_INT, i64 2}
!39 = !{ptr @init_caller_save, ptr @gen_rtx_fmt_ee_stat, i64 6}
!40 = !{ptr @init_caller_save, ptr @strict_memory_address_addr_space_p, i64 10}
!41 = !{ptr @init_caller_save, ptr @gen_rtx_MEM, i64 2}
!42 = !{ptr @init_caller_save, ptr @gen_rtx_fmt_iuuBieie_stat, i64 4}
!43 = !{ptr @init_caller_save, ptr @reg_save_code, i64 213}
!44 = !{ptr @reg_save_code, ptr @ix86_hard_regno_mode_ok, i64 72}
!45 = !{ptr @reg_save_code, ptr @rhs_regno, i64 19}
!46 = !{ptr @reg_save_code, ptr @df_ref_change_reg_with_loc, i64 19}
!47 = !{ptr @reg_save_code, ptr @recog_memoized, i64 38}
!48 = !{ptr @reg_save_code, ptr @extract_insn, i64 36}
!49 = !{ptr @reg_save_code, ptr @constrain_operands, i64 36}
!50 = !{ptr @reg_save_code, ptr @fancy_abort, i64 1}
!51 = !{ptr @recog_memoized, ptr @recog, i64 35}
!52 = !{ptr @setup_save_areas, ptr @end_hard_regno, i64 123193}
!53 = !{ptr @setup_save_areas, ptr @initiate_saved_hard_regs, i64 6207}
!54 = !{ptr @setup_save_areas, ptr @find_reg_note, i64 564968}
!55 = !{ptr @setup_save_areas, ptr @reg_set_to_hard_reg_set, i64 544008}
!56 = !{ptr @setup_save_areas, ptr @note_stores, i64 544008}
!57 = !{ptr @setup_save_areas, ptr @mark_set_regs, i64 3706}
!58 = !{ptr @setup_save_areas, ptr @bmp_iter_set_init, i64 544008}
!59 = !{ptr @setup_save_areas, ptr @bmp_iter_set, i64 4610510}
!60 = !{ptr @setup_save_areas, ptr @new_saved_hard_reg, i64 9854}
!61 = !{ptr @setup_save_areas, ptr @bmp_iter_next, i64 4066502}
!62 = !{ptr @setup_save_areas, ptr @xmalloc, i64 6207}
!63 = !{ptr @setup_save_areas, ptr @spec_qsort, i64 6207}
!64 = !{ptr @setup_save_areas, ptr @adjust_address_1, i64 10617}
!65 = !{ptr @setup_save_areas, ptr @fprintf, i64 2}
!66 = !{ptr @setup_save_areas, ptr @assign_stack_local_1, i64 2455}
!67 = !{ptr @setup_save_areas, ptr @free, i64 6207}
!68 = !{ptr @setup_save_areas, ptr @finish_saved_hard_regs, i64 6207}
!69 = !{ptr @setup_save_areas, ptr @get_frame_alias_set, i64 10002}
!70 = !{ptr @setup_save_areas, ptr @set_mem_alias_set, i64 10002}
!71 = !{ptr @mark_set_regs, ptr @rhs_regno, i64 504961}
!72 = !{ptr @mark_set_regs, ptr @end_hard_regno, i64 504959}
!73 = !{ptr @new_saved_hard_reg, ptr @xmalloc, i64 9858}
!74 = !{ptr @finish_saved_hard_regs, ptr @free, i64 9857}
!75 = !{ptr @save_call_clobbered_regs, ptr @fancy_abort, i64 3}
!76 = !{ptr @save_call_clobbered_regs, ptr @mark_referenced_regs, i64 70346}
!77 = !{ptr @save_call_clobbered_regs, ptr @insert_restore, i64 23363}
!78 = !{ptr @save_call_clobbered_regs, ptr @find_reg_note, i64 123071}
!79 = !{ptr @save_call_clobbered_regs, ptr @reg_set_to_hard_reg_set, i64 118256}
!80 = !{ptr @save_call_clobbered_regs, ptr @bmp_iter_set_init, i64 118256}
!81 = !{ptr @save_call_clobbered_regs, ptr @bmp_iter_set, i64 1044018}
!82 = !{ptr @save_call_clobbered_regs, ptr @bmp_iter_next, i64 925762}
!83 = !{ptr @save_call_clobbered_regs, ptr @note_stores, i64 118256}
!84 = !{ptr @save_call_clobbered_regs, ptr @insert_save, i64 23361}
!85 = !{ptr @mark_referenced_regs, ptr @mark_referenced_regs, i64 157116}
!86 = !{ptr @mark_referenced_regs, ptr @rhs_regno, i64 179177}
!87 = !{ptr @mark_reg_as_referenced, ptr @add_to_hard_reg_set, i64 83948}
!88 = !{ptr @insert_restore, ptr @fancy_abort, i64 2}
!89 = !{ptr @insert_restore, ptr @reg_save_code, i64 743}
!90 = !{ptr @insert_restore, ptr @adjust_address_1, i64 742}
!91 = !{ptr @insert_restore, ptr @copy_rtx, i64 22628}
!92 = !{ptr @insert_restore, ptr @get_mode_alignment, i64 46739}
!93 = !{ptr @insert_restore, ptr @gen_rtx_REG, i64 23370}
!94 = !{ptr @insert_restore, ptr @gen_rtx_fmt_ee_stat, i64 23370}
!95 = !{ptr @insert_restore, ptr @reg_restore_code, i64 23370}
!96 = !{ptr @insert_restore, ptr @insert_one_insn, i64 23370}
!97 = !{ptr @insert_restore, ptr @bitmap_set_bit, i64 23370}
!98 = !{ptr @insert_save, ptr @fancy_abort, i64 2}
!99 = !{ptr @insert_save, ptr @reg_save_code, i64 24113}
!100 = !{ptr @insert_save, ptr @adjust_address_1, i64 742}
!101 = !{ptr @insert_save, ptr @copy_rtx, i64 22628}
!102 = !{ptr @insert_save, ptr @get_mode_alignment, i64 46739}
!103 = !{ptr @insert_save, ptr @gen_rtx_REG, i64 23370}
!104 = !{ptr @insert_save, ptr @gen_rtx_fmt_ee_stat, i64 23370}
!105 = !{ptr @insert_save, ptr @insert_one_insn, i64 23370}
!106 = !{ptr @insert_save, ptr @bitmap_set_bit, i64 23370}
!107 = !{ptr @add_to_hard_reg_set, ptr @end_hard_regno, i64 83948}
!108 = !{ptr @reg_restore_code, ptr @reg_save_code, i64 1}
!109 = !{ptr @insert_one_insn, ptr @new_insn_chain, i64 46740}
!110 = !{ptr @insert_one_insn, ptr @emit_insn_before, i64 43222}
!111 = !{ptr @insert_one_insn, ptr @bitmap_copy, i64 46740}
!112 = !{ptr @insert_one_insn, ptr @note_uses, i64 50578}
!113 = !{ptr @insert_one_insn, ptr @bitmap_clear, i64 46740}
!114 = !{ptr @insert_one_insn, ptr @VEC_basic_block_base_index, i64 46740}
!115 = !{ptr @insert_one_insn, ptr @emit_insn_after, i64 3518}
!116 = !{ptr @insert_one_insn, ptr @note_stores, i64 3518}
!117 = !{ptr @add_used_regs, ptr @for_each_rtx, i64 55049}
!118 = !{ptr @add_stored_regs, ptr @rhs_regno, i64 1713}
!119 = !{ptr @add_stored_regs, ptr @end_hard_regno, i64 1284}
!120 = !{ptr @add_stored_regs, ptr @bitmap_set_bit, i64 1284}
!121 = !{ptr @add_used_regs_1, ptr @rhs_regno, i64 31111}
!122 = !{ptr @add_used_regs_1, ptr @bitmap_set_bit, i64 30791}
!123 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!124 = !{!"function_entry_count", i64 6652}
!125 = !{!126, !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C/C++ TBAA"}
!128 = !{!"branch_weights", i32 2, i32 6652}
!129 = !{!130, !130, i64 0}
!130 = !{!"long", !126, i64 0}
!131 = !{!"branch_weights", i32 5, i32 50}
!132 = !{!"branch_weights", i32 12, i32 39}
!133 = !{!"branch_weights", i32 73036, i32 24300}
!134 = !{!135, !135, i64 0}
!135 = !{!"int", !126, i64 0}
!136 = !{!"branch_weights", i32 34, i32 1576}
!137 = !{!"branch_weights", i32 12, i32 33}
!138 = distinct !{!138, !139}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"branch_weights", i32 2, i32 52}
!141 = distinct !{!141, !139}
!142 = !{!"branch_weights", i32 1, i32 2}
!143 = !{!"branch_weights", i32 1, i32 1}
!144 = distinct !{!144, !139}
!145 = !{!"branch_weights", i32 43, i32 12}
!146 = !{!"branch_weights", i32 1, i32 12}
!147 = distinct !{!147, !139}
!148 = distinct !{!148, !139}
!149 = !{!150, !150, i64 0}
!150 = !{!"any pointer", !126, i64 0}
!151 = !{!"branch_weights", i32 202, i32 12}
!152 = !{!"branch_weights", i32 43, i32 160}
!153 = !{!"branch_weights", i32 5, i32 39}
!154 = !{!"branch_weights", i32 54, i32 159}
!155 = distinct !{!155, !139}
!156 = distinct !{!156, !139}
!157 = !{!"function_entry_count", i64 25068}
!158 = !{!"caller-save.c:reg_save_code"}
!159 = !{!"branch_weights", i32 72, i32 24998}
!160 = !{!"branch_weights", i32 54, i32 19}
!161 = !{!"branch_weights", i32 1, i32 19}
!162 = !{!"branch_weights", i32 118974162, i32 2028509486}
!163 = !{!"function_entry_count", i64 1688115}
!164 = !{!"caller-save.c:rhs_regno"}
!165 = !{!"function_entry_count", i64 36}
!166 = !{!"caller-save.c:recog_memoized"}
!167 = !{!"branch_weights", i32 37, i32 1}
!168 = !{!"branch_weights", i32 6653, i32 345904}
!169 = distinct !{!169, !139}
!170 = !{!"function_entry_count", i64 6209}
!171 = !{!"branch_weights", i32 6209, i32 1}
!172 = !{!173, !173, i64 0}
!173 = !{!"short", !126, i64 0}
!174 = !{!"branch_weights", i32 821910, i32 2496061}
!175 = !{!176, !135, i64 12}
!176 = !{!"reg_info_t", !135, i64 0, !135, i64 4, !135, i64 8, !135, i64 12, !135, i64 16, !135, i64 20, !135, i64 24}
!177 = !{!"branch_weights", i32 123213, i32 698698}
!178 = !{!"branch_weights", i32 123212, i32 1}
!179 = !{!"branch_weights", i32 94790, i32 28450}
!180 = !{!"branch_weights", i32 123212, i32 27}
!181 = distinct !{!181, !139}
!182 = !{!"branch_weights", i32 6209, i32 3311761}
!183 = distinct !{!183, !139}
!184 = !{!"branch_weights", i32 38564100, i32 12421}
!185 = !{!"branch_weights", i32 1, i32 6209}
!186 = !{!187, !150, i64 24}
!187 = !{!"insn_chain", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !135, i64 32, !135, i64 36, !135, i64 36, !135, i64 36, !135, i64 36, !188, i64 40, !188, i64 72, !150, i64 104, !135, i64 112, !130, i64 120}
!188 = !{!"bitmap_head_def", !150, i64 0, !150, i64 8, !135, i64 16, !150, i64 24}
!189 = !{!187, !150, i64 0}
!190 = !{!"branch_weights", i32 282621, i32 3796435}
!191 = !{!"branch_weights", i32 272136, i32 10486}
!192 = !{!"branch_weights", i32 272136, i32 1}
!193 = !{!194, !150, i64 8}
!194 = !{!"function", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !150, i64 96, !135, i64 104, !135, i64 108, !135, i64 112, !135, i64 116, !135, i64 120, !135, i64 124, !150, i64 128, !135, i64 136, !135, i64 137, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 138, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139, !135, i64 139}
!195 = !{!196, !150, i64 0}
!196 = !{!"control_flow_graph", !150, i64 0, !150, i64 8, !150, i64 16, !135, i64 24, !135, i64 28, !135, i64 32, !150, i64 40, !135, i64 48, !126, i64 52, !126, i64 60, !135, i64 68, !135, i64 72}
!197 = !{!198, !130, i64 72}
!198 = !{!"basic_block_def", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !126, i64 32, !150, i64 48, !150, i64 56, !126, i64 64, !130, i64 72, !135, i64 80, !135, i64 84, !135, i64 88, !135, i64 92, !135, i64 96}
!199 = !{!198, !135, i64 88}
!200 = !{!"branch_weights", i32 1, i32 143650}
!201 = !{!"branch_weights", i32 5903136, i32 860853209}
!202 = !{!"branch_weights", i32 14423156, i32 1}
!203 = !{!204, !135, i64 8}
!204 = !{!"saved_hard_reg", !135, i64 0, !135, i64 4, !135, i64 8, !150, i64 16, !135, i64 24, !135, i64 28}
!205 = !{!"branch_weights", i32 272136, i32 14151020}
!206 = distinct !{!206, !139}
!207 = !{i8 0, i8 2}
!208 = !{!"branch_weights", i32 1, i32 272135}
!209 = !{!"branch_weights", i32 1486923, i32 547319}
!210 = !{!"branch_weights", i32 1, i32 547318}
!211 = !{!"branch_weights", i32 478750, i32 68608}
!212 = !{!"branch_weights", i32 9859, i32 58750}
!213 = !{!"branch_weights", i32 39, i32 547318}
!214 = distinct !{!214, !139}
!215 = !{!"branch_weights", i32 272135, i32 1762106}
!216 = distinct !{!216, !139}
!217 = !{!"branch_weights", i32 6209, i32 4072846}
!218 = distinct !{!218, !139}
!219 = distinct !{!219, !139}
!220 = !{!"branch_weights", i32 68608, i32 203528}
!221 = distinct !{!221, !139}
!222 = distinct !{!222, !139}
!223 = !{!"branch_weights", i32 68608, i32 23073}
!224 = !{!204, !135, i64 0}
!225 = !{!"branch_weights", i32 68607, i32 23073}
!226 = distinct !{!226, !139}
!227 = !{!"branch_weights", i32 68608, i32 0}
!228 = distinct !{!228, !139}
!229 = distinct !{!229, !139}
!230 = !{!204, !135, i64 4}
!231 = !{!"branch_weights", i32 4916, i32 3896}
!232 = !{!204, !135, i64 24}
!233 = !{!"branch_weights", i32 74, i32 3823}
!234 = !{!"branch_weights", i32 1166, i32 2758}
!235 = !{!204, !135, i64 28}
!236 = !{!"branch_weights", i32 2858, i32 1065}
!237 = distinct !{!237, !139}
!238 = !{!"branch_weights", i32 19, i32 1048}
!239 = !{!204, !150, i64 16}
!240 = !{!"branch_weights", i32 1048, i32 1}
!241 = !{!"branch_weights", i32 3896, i32 0}
!242 = distinct !{!242, !139}
!243 = !{!"branch_weights", i32 8812, i32 1048}
!244 = !{!"branch_weights", i32 2340, i32 1}
!245 = !{!"branch_weights", i32 1997, i32 6472}
!246 = !{!"branch_weights", i32 41886784, i32 12945}
!247 = !{!"branch_weights", i32 6472, i32 1}
!248 = !{!"branch_weights", i32 2340, i32 6128}
!249 = distinct !{!249, !139}
!250 = !{!"branch_weights", i32 1577720834, i32 569762814}
!251 = !{!"branch_weights", i32 2341, i32 1}
!252 = !{!"branch_weights", i32 3650, i32 6209}
!253 = distinct !{!253, !139}
!254 = distinct !{!254, !139}
!255 = distinct !{!255, !139}
!256 = distinct !{!256, !139}
!257 = distinct !{!257, !139}
!258 = distinct !{!258, !139}
!259 = !{!"branch_weights", i32 1306306, i32 10004}
!260 = !{!"branch_weights", i32 987231, i32 329078}
!261 = distinct !{!261, !139}
!262 = !{!"branch_weights", i32 6210, i32 322868}
!263 = distinct !{!263, !139}
!264 = !{!"function_entry_count", i64 713407}
!265 = !{!"caller-save.c:end_hard_regno"}
!266 = !{!"caller-save.c:initiate_saved_hard_regs"}
!267 = !{!"function_entry_count", i64 504962}
!268 = !{!"caller-save.c:mark_set_regs"}
!269 = !{!"branch_weights", i32 7890, i32 7890, i32 -310785556}
!270 = !{!"branch_weights", i32 504963, i32 1}
!271 = !{!"branch_weights", i32 504962, i32 1}
!272 = !{!"branch_weights", i32 504962, i32 590}
!273 = distinct !{!273, !139}
!274 = !{!"function_entry_count", i64 9858}
!275 = !{!"caller-save.c:new_saved_hard_reg"}
!276 = !{!"function_entry_count", i64 662574}
!277 = !{!"caller-save.c:bmp_iter_set_init"}
!278 = !{!188, !150, i64 0}
!279 = !{!280, !150, i64 0}
!280 = !{!"", !150, i64 0, !150, i64 8, !135, i64 16, !130, i64 24}
!281 = !{!280, !150, i64 8}
!282 = !{!"branch_weights", i32 1, i32 662575}
!283 = !{!284, !135, i64 16}
!284 = !{!"bitmap_element_def", !150, i64 0, !150, i64 8, !135, i64 16, !126, i64 24}
!285 = !{!"branch_weights", i32 662526, i32 50}
!286 = !{!280, !135, i64 16}
!287 = !{!280, !130, i64 24}
!288 = !{!"function_entry_count", i64 5657196}
!289 = !{!"caller-save.c:bmp_iter_set"}
!290 = !{!"branch_weights", i32 2738535, i32 2918663}
!291 = !{!"branch_weights", i32 4994622, i32 1}
!292 = !{!"branch_weights", i32 62697552, i32 4994622}
!293 = distinct !{!293, !139}
!294 = !{!"branch_weights", i32 1, i32 2248867}
!295 = !{!"branch_weights", i32 1759201, i32 2075961}
!296 = !{!"branch_weights", i32 2248867, i32 1586294}
!297 = distinct !{!297, !139}
!298 = !{!284, !150, i64 0}
!299 = !{!"branch_weights", i32 662575, i32 1586294}
!300 = !{!"function_entry_count", i64 4994622}
!301 = !{!"caller-save.c:bmp_iter_next"}
!302 = !{!"function_entry_count", i64 3855}
!303 = !{!"caller-save.c:saved_hard_reg_compare_func"}
!304 = !{!"branch_weights", i32 3856, i32 1}
!305 = !{!"branch_weights", i32 449, i32 3408}
!306 = !{!"caller-save.c:finish_saved_hard_regs"}
!307 = !{!"branch_weights", i32 6209, i32 3650}
!308 = distinct !{!308, !139}
!309 = !{!"function_entry_count", i64 2533}
!310 = !{!"branch_weights", i32 1, i32 2533}
!311 = !{!"branch_weights", i32 1851858, i32 1}
!312 = !{!"branch_weights", i32 -1236926566, i32 358767824}
!313 = !{!"branch_weights", i32 1, i32 1657411}
!314 = !{!"branch_weights", i32 1576118, i32 81294}
!315 = !{!"branch_weights", i32 10921, i32 70374}
!316 = !{!"branch_weights", i32 4288677, i32 19854}
!317 = !{!"branch_weights", i32 4227236, i32 81294}
!318 = distinct !{!318, !139}
!319 = !{!"branch_weights", i32 124448, i32 1532964}
!320 = !{!"branch_weights", i32 123121, i32 1328}
!321 = !{!"branch_weights", i32 118305, i32 4817}
!322 = !{!"branch_weights", i32 6151839, i32 118275}
!323 = !{!"branch_weights", i32 118305, i32 6151808}
!324 = distinct !{!324, !139}
!325 = !{!"branch_weights", i32 1, i32 118304}
!326 = !{!"branch_weights", i32 684791, i32 241353}
!327 = !{!"branch_weights", i32 30169, i32 -654262883}
!328 = !{!"branch_weights", i32 -346071005, i32 16383, i32 5423069}
!329 = !{!"branch_weights", i32 331, i32 1}
!330 = !{!"branch_weights", i32 11120091, i32 1010772745}
!331 = !{!"branch_weights", i32 241353, i32 1}
!332 = !{!"branch_weights", i32 1, i32 241352}
!333 = !{!"branch_weights", i32 0, i32 0}
!334 = distinct !{!334, !139, !335, !336}
!335 = !{!"llvm.loop.isvectorized", i32 1}
!336 = !{!"llvm.loop.unroll.runtime.disable"}
!337 = !{!"branch_weights", i32 118304, i32 807839}
!338 = distinct !{!338, !139}
!339 = !{!"branch_weights", i32 6246743, i32 23371}
!340 = !{!"branch_weights", i32 6151808, i32 118305}
!341 = distinct !{!341, !139}
!342 = !{!"branch_weights", i32 6239881, i32 30233}
!343 = distinct !{!343, !139}
!344 = !{!"branch_weights", i32 0, i32 -2147483648}
!345 = !{!"branch_weights", i32 2534, i32 1849325}
!346 = !{!187, !135, i64 32}
!347 = !{!"branch_weights", i32 1457975, i32 391351}
!348 = !{!"branch_weights", i32 1, i32 393884}
!349 = !{!350, !150, i64 8}
!350 = !{!"rtl_bb_info", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !135, i64 32}
!351 = distinct !{!351, !139}
!352 = !{!"branch_weights", i32 390873, i32 3012}
!353 = !{!"branch_weights", i32 156067, i32 3518}
!354 = !{!"branch_weights", i32 156572, i32 3012}
!355 = distinct !{!355, !139}
!356 = !{!"branch_weights", i32 2533, i32 1849325}
!357 = distinct !{!357, !139}
!358 = !{!"function_entry_count", i64 260231}
!359 = !{!"caller-save.c:mark_referenced_regs"}
!360 = !{!"branch_weights", i32 190975, i32 138516, i32 190975}
!361 = !{!"branch_weights", i32 1323586819, i32 -2016334037, i32 44249, i32 44249, i32 309735}
!362 = !{!"branch_weights", i32 -1984159713, i32 184776957}
!363 = !{!"branch_weights", i32 7, i32 1}
!364 = !{!"branch_weights", i32 23, i32 9}
!365 = !{!"branch_weights", i32 859906668, i32 1287576980}
!366 = !{!"branch_weights", i32 83949, i32 9477}
!367 = !{ptr @mark_reg_as_referenced, ptr @replace_reg_with_saved_mem}
!368 = !{!"branch_weights", i32 9477, i32 1}
!369 = !{!"branch_weights", i32 245, i32 9233}
!370 = !{!"branch_weights", i32 245, i32 1}
!371 = !{!"branch_weights", i32 1, i32 124512}
!372 = !{!"branch_weights", i32 1887474843, i32 -1966961767, i32 66054658}
!373 = !{!374, !135, i64 0}
!374 = !{!"rtvec_def", !135, i64 0, !126, i64 8}
!375 = !{!"branch_weights", i32 2988, i32 1}
!376 = !{!"branch_weights", i32 3041, i32 2988}
!377 = distinct !{!377, !139}
!378 = !{!"branch_weights", i32 69226, i32 124512}
!379 = distinct !{!379, !139}
!380 = !{!"function_entry_count", i64 83948}
!381 = !{!"caller-save.c:mark_reg_as_referenced"}
!382 = !{!"function_entry_count", i64 23370}
!383 = !{!"caller-save.c:insert_restore"}
!384 = !{!"branch_weights", i32 1, i32 23371}
!385 = !{!"branch_weights", i32 70111, i32 23371}
!386 = !{!"branch_weights", i32 23370, i32 1}
!387 = distinct !{!387, !139}
!388 = !{!"branch_weights", i32 93480, i32 1}
!389 = distinct !{!389, !139}
!390 = !{!"branch_weights", i32 2, i32 23370}
!391 = !{!"branch_weights", i32 22626, i32 745}
!392 = !{!"branch_weights", i32 744, i32 2}
!393 = !{!"branch_weights", i32 744, i32 1}
!394 = !{!395, !135, i64 28}
!395 = !{!"mem_attrs", !150, i64 0, !150, i64 8, !150, i64 16, !135, i64 24, !135, i64 28, !126, i64 32}
!396 = distinct !{!396, !139}
!397 = !{!"caller-save.c:insert_save"}
!398 = distinct !{!398, !139}
!399 = distinct !{!399, !139}
!400 = !{!"branch_weights", i32 1, i32 23370}
!401 = distinct !{!401, !139}
!402 = !{!"function_entry_count", i64 0}
!403 = !{!"caller-save.c:replace_reg_with_saved_mem"}
!404 = distinct !{!404, !139}
!405 = distinct !{!405, !139}
!406 = distinct !{!406, !139}
!407 = !{!"caller-save.c:add_to_hard_reg_set"}
!408 = !{!"branch_weights", i32 33, i32 83949}
!409 = distinct !{!409, !139}
!410 = !{!"caller-save.c:reg_restore_code"}
!411 = !{!"function_entry_count", i64 46740}
!412 = !{!"caller-save.c:insert_one_insn"}
!413 = !{!"branch_weights", i32 3518, i32 43224}
!414 = !{!187, !150, i64 8}
!415 = !{!"branch_weights", i32 1, i32 43224}
!416 = !{!"branch_weights", i32 23375, i32 19850}
!417 = !{!"branch_weights", i32 16019, i32 7356}
!418 = !{!"branch_weights", i32 7356, i32 0}
!419 = distinct !{!419, !139}
!420 = !{!196, !150, i64 16}
!421 = !{!350, !150, i64 0}
!422 = !{!"branch_weights", i32 1, i32 3518}
!423 = !{!"function_entry_count", i64 55049}
!424 = !{!"caller-save.c:add_used_regs"}
!425 = !{!"caller-save.c:VEC_basic_block_base_index"}
!426 = !{!"function_entry_count", i64 2644}
!427 = !{!"caller-save.c:add_stored_regs"}
!428 = !{!"branch_weights", i32 117, i32 2529}
!429 = !{!"branch_weights", i32 1707437123, i32 2097152, i32 -698707012}
!430 = !{!"branch_weights", i32 430, i32 1286}
!431 = !{!"branch_weights", i32 1285, i32 1}
!432 = distinct !{!432, !139}
!433 = !{!"function_entry_count", i64 203341}
!434 = !{!"caller-save.c:add_used_regs_1"}
!435 = !{!"branch_weights", i32 31111, i32 172232}
!436 = !{!"branch_weights", i32 30790, i32 322}
!437 = !{!"branch_weights", i32 1, i32 30789}
!438 = !{!"branch_weights", i32 3, i32 30789}
!439 = distinct !{!439, !139}
