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
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.elt_list = type { ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.expand_value_data = type { ptr, ptr, ptr, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cselib_set = type { ptr, ptr, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@cselib_discard_hook = dso_local local_unnamed_addr global ptr null, align 8
@cselib_record_sets_hook = dso_local local_unnamed_addr global ptr null, align 8
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
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@reg_raw_mode = external local_unnamed_addr global [53 x i32], align 16
@callmem = internal global ptr null, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@elt_list_pool = internal unnamed_addr global ptr null, align 8
@elt_loc_list_pool = internal unnamed_addr global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@values_became_useless = internal unnamed_addr global i1 false, align 4
@cselib_val_pool = internal unnamed_addr global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"expanding: r%d into: \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\0Aexpanding \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" into...\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"r%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@cselib_record_memory = internal unnamed_addr global i8 0, align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_float_store = external local_unnamed_addr global i32, align 4
@cselib_current_insn = internal unnamed_addr global ptr null, align 8
@value_pool = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"cselib value %u:%u \00", align 1
@flag_dump_noaddr = external local_unnamed_addr global i32, align 4
@flag_dump_unnumbered = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"cselib lookup \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c" => %u:%u\0A\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"elt_list\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"elt_loc_list\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"cselib_val_list\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@rtx_code_size = external local_unnamed_addr constant [139 x i8], align 16
@cselib_nregs = internal unnamed_addr global i32 0, align 4
@reg_values_size = internal unnamed_addr global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"cselib hash table:\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"first mem \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"next uid %i\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c" locs:\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\0A  from insn %i \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" no locs\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c" addr list:\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c" no addrs\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" last mem\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c" next mem \00", align 1
@gt_ggc_r_gt_cselib_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @callmem, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_clear_table() local_unnamed_addr #0 !prof !169 {
  tail call void @cselib_reset_table(i32 noundef 1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_reset_table(i32 noundef %0) local_unnamed_addr #0 !prof !170 {
  store i32 0, ptr @max_value_regs, align 4, !tbaa !171
  %2 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !175
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11, !prof !177

4:                                                ; preds = %1
  %5 = load i32, ptr @n_used_regs, align 4, !tbaa !171
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %65, label %7, !prof !178

7:                                                ; preds = %4
  %8 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %9 = load ptr, ptr @used_regs, align 8, !tbaa !175
  %10 = zext i32 %5 to i64
  br label %57

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef %15) #16
  %17 = load i32, ptr @n_used_regs, align 4, !tbaa !171
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr @used_regs, align 8, !tbaa !175
  %21 = load ptr, ptr @reg_values, align 8
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %32
  %24 = phi i64 [ 0, %19 ], [ %34, %32 ]
  %25 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %26 = getelementptr inbounds i32, ptr %20, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !171
  %28 = icmp eq i32 %27, %16
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = zext i32 %27 to i64
  %31 = getelementptr inbounds ptr, ptr %21, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !175
  br label %32

32:                                               ; preds = %23, %29
  %33 = phi i32 [ %25, %29 ], [ 1, %23 ]
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, %22
  br i1 %35, label %36, label %23, !llvm.loop !183

36:                                               ; preds = %32
  %37 = icmp eq i32 %33, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %11, %36
  %39 = phi i32 [ %33, %36 ], [ 0, %11 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 351, ptr noundef nonnull @.str.1) #17
  %40 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !175
  br label %41

41:                                               ; preds = %36, %38
  %42 = phi i32 [ 1, %36 ], [ %39, %38 ]
  %43 = phi ptr [ %2, %36 ], [ %40, %38 ]
  store i32 %42, ptr @n_used_regs, align 4, !tbaa !171
  %44 = load ptr, ptr @used_regs, align 8, !tbaa !175
  store i32 %16, ptr %44, align 4, !tbaa !171
  %45 = zext i32 %16 to i64
  %46 = getelementptr inbounds %struct.cselib_val_struct, ptr %43, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !179
  %48 = getelementptr inbounds %struct.elt_loc_list, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !181
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %45, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !185
  %56 = zext i8 %55 to i32
  store i32 %56, ptr @max_value_regs, align 4, !tbaa !171
  br label %66

57:                                               ; preds = %7, %57
  %58 = phi i64 [ 0, %7 ], [ %63, %57 ]
  %59 = getelementptr inbounds i32, ptr %9, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !171
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %8, i64 %61
  store ptr null, ptr %62, align 8, !tbaa !175
  %63 = add nuw nsw i64 %58, 1
  %64 = icmp eq i64 %63, %10
  br i1 %64, label %65, label %57, !prof !186, !llvm.loop !187

65:                                               ; preds = %57, %4
  store i32 0, ptr @n_used_regs, align 4, !tbaa !171
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !185
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  br i1 %68, label %71, label %70, !prof !177

70:                                               ; preds = %66
  tail call void @htab_traverse(ptr noundef %69, ptr noundef nonnull @preserve_only_constants, ptr noundef null) #17
  br label %72

71:                                               ; preds = %66
  tail call void @htab_empty(ptr noundef %69) #17
  br label %72

72:                                               ; preds = %71, %70
  store i32 0, ptr @n_useless_values, align 4, !tbaa !171
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !171
  store i32 0, ptr @n_debug_values, align 4, !tbaa !171
  store i32 %0, ptr @next_uid, align 4, !tbaa !171
  store ptr @dummy_val, ptr @first_containing_mem, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !188 !PGOFuncName !189 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !185
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @preserve_only_constants(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !190 !PGOFuncName !191 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !192
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.elt_loc_list, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !171
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = icmp eq i32 %14, 35
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = tail call i32 @references_value_p(ptr noundef nonnull %12, i32 noundef 0) #16, !range !193
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21, %10
  %25 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !175
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
  %33 = load ptr, ptr %32, align 8, !tbaa !185
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 30
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !185
  %40 = getelementptr inbounds %struct.cselib_val_struct, ptr %25, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !194
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %24, %37, %31, %29, %7, %2
  %44 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  tail call void @htab_clear_slot(ptr noundef %44, ptr noundef nonnull %0) #17
  br label %45

45:                                               ; preds = %37, %27, %19, %21, %43
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @references_value_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !prof !195 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  %8 = icmp eq i32 %4, 1
  br i1 %8, label %9, label %17, !prof !196

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %52, label %11, !prof !197

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !185
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17, !prof !198

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %5
  %19 = load i8, ptr %18, align 1, !tbaa !185
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %52, label %21, !prof !199

21:                                               ; preds = %17
  %22 = zext i8 %19 to i64
  br label %23

23:                                               ; preds = %21, %50
  %24 = phi i64 [ %22, %21 ], [ %25, %50 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %7, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !185
  switch i8 %27, label %50 [
    i8 101, label %34
    i8 69, label %28
  ], !prof !200

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %29, i64 0, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !185
  %32 = load i32, ptr %31, align 8, !tbaa !201
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %44, label %50, !prof !203

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds [1 x %union.rtunion_def], ptr %35, i64 0, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !185
  %38 = tail call i32 @references_value_p(ptr noundef %37, i32 noundef %1) #16, !range !193
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %52, !prof !204

40:                                               ; preds = %44
  %41 = zext nneg i32 %32 to i64
  %42 = add nuw nsw i64 %45, 1
  %43 = icmp eq i64 %42, %41
  br i1 %43, label %50, label %44, !prof !205, !llvm.loop !206

44:                                               ; preds = %28, %40
  %45 = phi i64 [ %42, %40 ], [ 0, %28 ]
  %46 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !175
  %48 = tail call i32 @references_value_p(ptr noundef %47, i32 noundef %1) #16, !range !193
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %40, label %52, !prof !207

50:                                               ; preds = %40, %28, %23, %34
  %51 = icmp sgt i64 %24, 1
  br i1 %51, label %23, label %52, !prof !208, !llvm.loop !209

52:                                               ; preds = %34, %50, %44, %17, %9, %11
  %53 = phi i32 [ 1, %11 ], [ 1, %9 ], [ 0, %17 ], [ 1, %44 ], [ 1, %34 ], [ 0, %50 ]
  ret i32 %53
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @cselib_get_next_uid() local_unnamed_addr #5 !prof !190 {
  %1 = load i32, ptr @next_uid, align 4, !tbaa !171
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cselib_preserve_value(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !190 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 67108864
  store i32 %5, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cselib_preserved_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !190 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 26
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @cselib_preserve_cfa_base_value(ptr noundef %0) local_unnamed_addr #8 !prof !190 {
  %2 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !185
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store ptr %0, ptr @cfa_base_preserved_val, align 8, !tbaa !175
  br label %15

15:                                               ; preds = %14, %8, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_preserve_only_values() local_unnamed_addr #0 !prof !190 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %6, %1 ]
  %3 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !171
  %5 = trunc i64 %2 to i32
  tail call fastcc void @cselib_invalidate_regno(i32 noundef %5, i32 noundef %4) #16
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 53
  br i1 %7, label %8, label %1, !llvm.loop !210

8:                                                ; preds = %1
  %9 = load ptr, ptr @callmem, align 8, !tbaa !175
  tail call fastcc void @cselib_invalidate_mem(ptr noundef %9) #16
  tail call fastcc void @remove_useless_values() #16
  %10 = load ptr, ptr @first_containing_mem, align 8, !tbaa !175
  %11 = icmp eq ptr %10, @dummy_val
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 597, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_invalidate_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !211 !PGOFuncName !212 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !171
  %4 = icmp eq i32 %3, 0
  %5 = icmp ult i32 %0, 53
  %6 = or i1 %5, %4
  br i1 %6, label %14, label %7, !prof !213

7:                                                ; preds = %2
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !175
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i16, ptr %8, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !214
  %12 = icmp slt i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1746, ptr noundef nonnull @.str.1) #17
  br label %22

14:                                               ; preds = %2
  br i1 %5, label %15, label %22, !prof !216

15:                                               ; preds = %14
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %18, !prof !217

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #17
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i32, ptr @max_value_regs, align 4, !tbaa !171
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 %19)
  %21 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %0) #16, !range !218
  br label %24

22:                                               ; preds = %13, %7, %14
  %23 = add i32 %0, 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %20, %18 ], [ %0, %22 ]
  %26 = phi i32 [ %21, %18 ], [ %23, %22 ]
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %123, !prof !219

28:                                               ; preds = %24
  %29 = zext i32 %25 to i64
  %30 = zext i32 %26 to i64
  br label %31

31:                                               ; preds = %28, %120
  %32 = phi i64 [ %29, %28 ], [ %121, %120 ]
  %33 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %34 = getelementptr inbounds ptr, ptr %33, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !175
  %36 = icmp eq ptr %35, null
  br i1 %36, label %120, label %37, !prof !220

37:                                               ; preds = %31
  %38 = icmp ult i64 %32, 53
  %39 = trunc i64 %32 to i32
  br label %40

40:                                               ; preds = %37, %116
  %41 = phi ptr [ %35, %37 ], [ %118, %116 ]
  %42 = phi ptr [ %34, %37 ], [ %117, %116 ]
  %43 = getelementptr inbounds %struct.elt_list, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !221
  %45 = icmp ne ptr %44, null
  %46 = select i1 %38, i1 %45, i1 false
  br i1 %46, label %47, label %55, !prof !223

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !194
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = tail call fastcc i32 @end_hard_regno(i32 noundef %52, i32 noundef %39) #16, !range !218
  %54 = add nsw i32 %53, -1
  br label %55

55:                                               ; preds = %47, %40
  %56 = phi i32 [ %54, %47 ], [ %39, %40 ]
  %57 = icmp ult i32 %56, %0
  %58 = icmp eq ptr %44, null
  %59 = select i1 %57, i1 true, i1 %58
  %60 = load ptr, ptr @cfa_base_preserved_val, align 8
  %61 = icmp eq ptr %44, %60
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %116, label %63, !prof !224, !llvm.loop !225

63:                                               ; preds = %55
  %64 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %65 = getelementptr inbounds ptr, ptr %64, i64 %32
  %66 = load ptr, ptr %65, align 8, !tbaa !175
  %67 = icmp eq ptr %41, %66
  br i1 %67, label %68, label %70, !prof !226

68:                                               ; preds = %63
  store ptr null, ptr %43, align 8, !tbaa !221
  %69 = load ptr, ptr %42, align 8, !tbaa !175
  br label %71

70:                                               ; preds = %63
  tail call fastcc void @unchain_one_elt_list(ptr noundef nonnull %42) #16
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi ptr [ %69, %68 ], [ %42, %70 ]
  %73 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !175
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76, !prof !227

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.elt_loc_list, ptr %74, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !228
  br label %79

79:                                               ; preds = %71, %76
  %80 = phi ptr [ %78, %76 ], [ null, %71 ]
  br label %81

81:                                               ; preds = %93, %79
  %82 = phi ptr [ %74, %79 ], [ %94, %93 ]
  %83 = phi ptr [ %73, %79 ], [ %82, %93 ]
  %84 = getelementptr inbounds %struct.elt_loc_list, ptr %82, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !181
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %93, !prof !229

89:                                               ; preds = %81
  %90 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %85) #16
  %91 = zext i32 %90 to i64
  %92 = icmp eq i64 %32, %91
  br i1 %92, label %95, label %93, !prof !230

93:                                               ; preds = %89, %81
  %94 = load ptr, ptr %82, align 8, !tbaa !175
  br label %81

95:                                               ; preds = %89
  tail call fastcc void @unchain_one_elt_loc_list(ptr noundef nonnull %83) #16
  br i1 %75, label %116, label %96, !prof !227

96:                                               ; preds = %95
  %97 = load ptr, ptr %73, align 8, !tbaa !179
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %116, !prof !231

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !194
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 67108864
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116, !prof !232

105:                                              ; preds = %99
  %106 = icmp eq ptr %80, null
  br i1 %106, label %111, label %107, !prof !233

107:                                              ; preds = %105
  %108 = load i32, ptr %80, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 7
  br i1 %110, label %112, label %111, !prof !234

111:                                              ; preds = %107, %105
  br label %112

112:                                              ; preds = %107, %111
  %113 = phi ptr [ @n_useless_values, %111 ], [ @n_useless_debug_values, %107 ]
  %114 = load i32, ptr %113, align 4, !tbaa !171
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %113, align 4, !tbaa !171
  br label %116

116:                                              ; preds = %112, %55, %95, %96, %99
  %117 = phi ptr [ %72, %99 ], [ %72, %96 ], [ %72, %95 ], [ %41, %55 ], [ %72, %112 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !175
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %40, !prof !235

120:                                              ; preds = %116, %31
  %121 = add nuw nsw i64 %32, 1
  %122 = icmp eq i64 %121, %30
  br i1 %122, label %123, label %31, !prof !236, !llvm.loop !237

123:                                              ; preds = %120, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_invalidate_mem(ptr noundef %0) unnamed_addr #0 !prof !238 !PGOFuncName !239 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = tail call ptr @get_addr(ptr noundef %3) #17
  %5 = tail call ptr @canon_rtx(ptr noundef %4) #17
  %6 = tail call ptr @canon_rtx(ptr noundef %0) #17
  %7 = load ptr, ptr @first_containing_mem, align 8, !tbaa !175
  %8 = icmp eq ptr %7, @dummy_val
  br i1 %8, label %99, label %9, !prof !240

9:                                                ; preds = %1, %94
  %10 = phi ptr [ %97, %94 ], [ @first_containing_mem, %1 ]
  %11 = phi ptr [ %95, %94 ], [ %7, %1 ]
  %12 = phi i32 [ %96, %94 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !175
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19, !prof !241

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !242
  br label %90

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.elt_loc_list, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !228
  br label %22

22:                                               ; preds = %19, %58
  %23 = phi ptr [ %62, %58 ], [ %14, %19 ]
  %24 = phi i32 [ %61, %58 ], [ %12, %19 ]
  %25 = phi ptr [ %60, %58 ], [ %13, %19 ]
  %26 = phi i8 [ %59, %58 ], [ 0, %19 ]
  %27 = getelementptr inbounds %struct.elt_loc_list, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %32, label %58, !prof !243, !llvm.loop !244

32:                                               ; preds = %22
  %33 = load ptr, ptr @compiler_params, align 8, !tbaa !175
  %34 = getelementptr inbounds %struct.param_info, ptr %33, i64 73, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !245
  %36 = icmp slt i32 %24, %35
  br i1 %36, label %37, label %46, !prof !247

37:                                               ; preds = %32
  %38 = load i32, ptr %6, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = tail call i32 @canon_true_dependence(ptr noundef nonnull %6, i32 noundef %40, ptr noundef %5, ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull @cselib_rtx_varies_p) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46, !prof !248

43:                                               ; preds = %37
  %44 = add nsw i32 %24, 1
  %45 = load ptr, ptr %25, align 8, !tbaa !175
  br label %58, !llvm.loop !244

46:                                               ; preds = %37, %32
  %47 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !185
  %49 = tail call ptr @cselib_lookup(ptr noundef %48, i32 noundef 0, i32 noundef 0) #16
  %50 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 4
  br label %51

51:                                               ; preds = %51, %46
  %52 = phi ptr [ %50, %46 ], [ %53, %51 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !175
  %54 = getelementptr inbounds %struct.elt_list, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !221
  %56 = icmp eq ptr %55, %11
  br i1 %56, label %57, label %51, !prof !249

57:                                               ; preds = %51
  tail call fastcc void @unchain_one_elt_list(ptr noundef nonnull %52) #16
  tail call fastcc void @unchain_one_elt_loc_list(ptr noundef nonnull %25) #16
  br label %58

58:                                               ; preds = %22, %57, %43
  %59 = phi i8 [ %26, %57 ], [ 1, %43 ], [ %26, %22 ]
  %60 = phi ptr [ %25, %57 ], [ %45, %43 ], [ %23, %22 ]
  %61 = phi i32 [ %24, %57 ], [ %44, %43 ], [ %24, %22 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !175
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %22, !prof !250

64:                                               ; preds = %58
  br i1 %15, label %85, label %65, !prof !251

65:                                               ; preds = %64
  %66 = load ptr, ptr %13, align 8, !tbaa !179
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %85, !prof !252

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !194
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 67108864
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85, !prof !253

74:                                               ; preds = %68
  %75 = icmp eq ptr %21, null
  br i1 %75, label %80, label %76, !prof !254

76:                                               ; preds = %74
  %77 = load i32, ptr %21, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 7
  br i1 %79, label %81, label %80, !prof !254

80:                                               ; preds = %76, %74
  br label %81

81:                                               ; preds = %76, %80
  %82 = phi ptr [ @n_useless_values, %80 ], [ @n_useless_debug_values, %76 ]
  %83 = load i32, ptr %82, align 4, !tbaa !171
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !171
  br label %85

85:                                               ; preds = %81, %68, %65, %64
  %86 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !242
  %88 = icmp eq i8 %59, 0
  br i1 %88, label %90, label %89, !prof !255

89:                                               ; preds = %85
  store ptr %11, ptr %10, align 8, !tbaa !175
  br label %94

90:                                               ; preds = %16, %85
  %91 = phi ptr [ %18, %16 ], [ %87, %85 ]
  %92 = phi ptr [ %17, %16 ], [ %86, %85 ]
  %93 = phi i32 [ %12, %16 ], [ %61, %85 ]
  store ptr null, ptr %92, align 8, !tbaa !242
  br label %94

94:                                               ; preds = %90, %89
  %95 = phi ptr [ %87, %89 ], [ %91, %90 ]
  %96 = phi i32 [ %61, %89 ], [ %93, %90 ]
  %97 = phi ptr [ %86, %89 ], [ %10, %90 ]
  %98 = icmp eq ptr %95, @dummy_val
  br i1 %98, label %99, label %9, !prof !256, !llvm.loop !257

99:                                               ; preds = %94, %1
  %100 = phi ptr [ @first_containing_mem, %1 ], [ %97, %94 ]
  store ptr @dummy_val, ptr %100, align 8, !tbaa !175
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_useless_values() unnamed_addr #0 !prof !258 !PGOFuncName !259 {
  br label %1

1:                                                ; preds = %1, %0
  store i1 false, ptr @values_became_useless, align 4
  %2 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  tail call void @htab_traverse(ptr noundef %2, ptr noundef nonnull @discard_useless_locs, ptr noundef null) #17
  %3 = load i1, ptr @values_became_useless, align 4
  br i1 %3, label %1, label %4, !prof !260, !llvm.loop !261

4:                                                ; preds = %1
  %5 = load ptr, ptr @first_containing_mem, align 8, !tbaa !175
  %6 = icmp eq ptr %5, @dummy_val
  br i1 %6, label %20, label %7, !prof !262

7:                                                ; preds = %4, %15
  %8 = phi ptr [ %18, %15 ], [ %5, %4 ]
  %9 = phi ptr [ %16, %15 ], [ @first_containing_mem, %4 ]
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !179
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !263

13:                                               ; preds = %7
  store ptr %8, ptr %9, align 8, !tbaa !175
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 5
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !175
  %19 = icmp eq ptr %18, @dummy_val
  br i1 %19, label %20, label %7, !prof !264, !llvm.loop !265

20:                                               ; preds = %15, %4
  %21 = phi ptr [ @first_containing_mem, %4 ], [ %16, %15 ]
  store ptr @dummy_val, ptr %21, align 8, !tbaa !175
  %22 = load i32, ptr @n_useless_debug_values, align 4, !tbaa !171
  %23 = load i32, ptr @n_useless_values, align 4, !tbaa !171
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr @n_useless_values, align 4, !tbaa !171
  %25 = load i32, ptr @n_debug_values, align 4, !tbaa !171
  %26 = sub nsw i32 %25, %22
  store i32 %26, ptr @n_debug_values, align 4, !tbaa !171
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !171
  %27 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  tail call void @htab_traverse(ptr noundef %27, ptr noundef nonnull @discard_useless_values, ptr noundef null) #17
  %28 = load i32, ptr @n_useless_values, align 4, !tbaa !171
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !266

30:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 550, ptr noundef nonnull @.str.1) #17
  br label %31

31:                                               ; preds = %20, %30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !prof !267 !PGOFuncName !268 {
  %3 = zext nneg i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !185
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unchain_one_elt_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !269 !PGOFuncName !270 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  store ptr %3, ptr %0, align 8, !tbaa !175
  %4 = load ptr, ptr @elt_list_pool, align 8, !tbaa !175
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unchain_one_elt_loc_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !272 !PGOFuncName !273 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  store ptr %3, ptr %0, align 8, !tbaa !175
  %4 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !175
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @cselib_rtx_varies_p(ptr nocapture readnone %0, i8 zeroext %1) #9 !prof !274 !PGOFuncName !275 {
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !276 {
  %4 = tail call fastcc ptr @cselib_lookup_1(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !277

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !171
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.11, ptr noundef nonnull %5) #16
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !175
  tail call void @print_inline_rtx(ptr noundef %13, ptr noundef %0, i32 noundef 2) #17
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %15 = icmp eq ptr %4, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %4, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !278
  %19 = load i32, ptr %4, align 8, !tbaa !279
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %11 ]
  %22 = phi i32 [ %19, %16 ], [ 0, %11 ]
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %22) #16
  br label %24

24:                                               ; preds = %20, %7, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @discard_useless_locs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !280 !PGOFuncName !281 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7, !prof !282

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.elt_loc_list, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !228
  br label %10

10:                                               ; preds = %7, %18
  %11 = phi ptr [ %20, %18 ], [ %5, %7 ]
  %12 = phi ptr [ %19, %18 ], [ %4, %7 ]
  %13 = getelementptr inbounds %struct.elt_loc_list, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !181
  %15 = tail call i32 @references_value_p(ptr noundef %14, i32 noundef 1) #16, !range !193
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !283

17:                                               ; preds = %10
  tail call fastcc void @unchain_one_elt_loc_list(ptr noundef nonnull %12) #16
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi ptr [ %12, %17 ], [ %11, %10 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !175
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !prof !284, !llvm.loop !285

22:                                               ; preds = %18
  br i1 %6, label %43, label %23, !prof !251

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !tbaa !179
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %43, !prof !286

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !194
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 67108864
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43, !prof !287

32:                                               ; preds = %26
  %33 = icmp eq ptr %9, null
  br i1 %33, label %38, label %34, !prof !288

34:                                               ; preds = %32
  %35 = load i32, ptr %9, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %39, label %38, !prof !289

38:                                               ; preds = %34, %32
  br label %39

39:                                               ; preds = %34, %38
  %40 = phi ptr [ @n_useless_values, %38 ], [ @n_useless_debug_values, %34 ]
  %41 = load i32, ptr %40, align 4, !tbaa !171
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !171
  store i1 true, ptr @values_became_useless, align 4
  br label %43

43:                                               ; preds = %2, %39, %26, %23, %22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @discard_useless_values(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !290 !PGOFuncName !291 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %24, !prof !292

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24, !prof !293

13:                                               ; preds = %7
  %14 = load ptr, ptr @cselib_discard_hook, align 8, !tbaa !175
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !294

16:                                               ; preds = %13
  tail call void %14(ptr noundef nonnull %3) #17
  %17 = load ptr, ptr %8, align 8, !tbaa !194
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %9, %13 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !185
  %21 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  tail call void @htab_clear_slot(ptr noundef %21, ptr noundef nonnull %0) #17
  tail call fastcc void @unchain_one_value(ptr noundef nonnull %3) #16
  %22 = load i32, ptr @n_useless_values, align 4, !tbaa !171
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr @n_useless_values, align 4, !tbaa !171
  br label %24

24:                                               ; preds = %18, %7, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unchain_one_value(ptr noundef %0) unnamed_addr #0 !prof !295 !PGOFuncName !296 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !298

5:                                                ; preds = %1, %5
  tail call fastcc void @unchain_one_elt_list(ptr noundef nonnull %2) #16
  %6 = load ptr, ptr %2, align 8, !tbaa !297
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %5, !prof !299, !llvm.loop !300

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !175
  tail call void @pool_free(ptr noundef %9, ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cselib_reg_set_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !301 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %8, label %5, !prof !302

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  br label %25

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15, !prof !303

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.elt_list, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19, !prof !304

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cselib_val_struct, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !194
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %8, %15, %19, %5
  %26 = phi i32 [ %24, %19 ], [ %7, %5 ], [ 0, %15 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_equal_for_cselib_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !305 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %13 [
    i16 37, label %5
    i16 43, label %5
  ], !prof !306

5:                                                ; preds = %2, %2
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %7, i32 noundef 0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !307

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  br label %13

13:                                               ; preds = %5, %10, %2
  %14 = phi ptr [ %0, %2 ], [ %12, %10 ], [ %0, %5 ]
  %15 = load i32, ptr %1, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %25 [
    i16 37, label %17
    i16 43, label %17
  ], !prof !308

17:                                               ; preds = %13, %13
  %18 = lshr i32 %15, 16
  %19 = and i32 %18, 255
  %20 = tail call ptr @cselib_lookup(ptr noundef nonnull %1, i32 noundef %19, i32 noundef 0) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !309

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cselib_val_struct, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  br label %25

25:                                               ; preds = %17, %22, %13
  %26 = phi ptr [ %1, %13 ], [ %24, %22 ], [ %1, %17 ]
  %27 = icmp eq ptr %14, %26
  br i1 %27, label %179, label %28, !prof !310

28:                                               ; preds = %25
  %29 = load i32, ptr %14, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 1
  %32 = load i32, ptr %26, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 1
  br i1 %31, label %35, label %54, !prof !311

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !185
  br i1 %34, label %173, label %38, !prof !312

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.cselib_val_struct, ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !175
  %41 = icmp eq ptr %40, null
  br i1 %41, label %179, label %42, !prof !313

42:                                               ; preds = %38, %51
  %43 = phi ptr [ %52, %51 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.elt_loc_list, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !181
  %46 = load i32, ptr %45, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %48 [
    i16 37, label %51
    i16 43, label %51
  ], !prof !314

48:                                               ; preds = %42
  %49 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %45, ptr noundef nonnull %26) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %179, !prof !315

51:                                               ; preds = %48, %42, %42
  %52 = load ptr, ptr %43, align 8, !tbaa !175
  %53 = icmp eq ptr %52, null
  br i1 %53, label %179, label %42, !prof !316, !llvm.loop !317

54:                                               ; preds = %28
  br i1 %34, label %55, label %73, !prof !318

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !185
  %58 = getelementptr inbounds %struct.cselib_val_struct, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !175
  %60 = icmp eq ptr %59, null
  br i1 %60, label %179, label %61, !prof !319

61:                                               ; preds = %55, %70
  %62 = phi ptr [ %71, %70 ], [ %59, %55 ]
  %63 = getelementptr inbounds %struct.elt_loc_list, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !181
  %65 = load i32, ptr %64, align 8
  %66 = trunc i32 %65 to i16
  switch i16 %66, label %67 [
    i16 37, label %70
    i16 43, label %70
  ], !prof !320

67:                                               ; preds = %61
  %68 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %14, ptr noundef nonnull %64) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %179, !prof !321

70:                                               ; preds = %67, %61, %61
  %71 = load ptr, ptr %62, align 8, !tbaa !175
  %72 = icmp eq ptr %71, null
  br i1 %72, label %179, label %61, !prof !322, !llvm.loop !323

73:                                               ; preds = %54
  %74 = icmp eq i32 %30, %33
  br i1 %74, label %75, label %179, !prof !324

75:                                               ; preds = %73
  %76 = xor i32 %32, %29
  %77 = and i32 %76, 16711680
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %179, !prof !325

79:                                               ; preds = %75
  %80 = trunc i32 %29 to i16
  switch i16 %80, label %84 [
    i16 32, label %179
    i16 31, label %179
    i16 2, label %179
    i16 44, label %81
  ], !prof !326

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !185
  br label %173

84:                                               ; preds = %79
  %85 = zext nneg i32 %30 to i64
  %86 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !175
  %88 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %85
  %89 = load i8, ptr %88, align 1, !tbaa !185
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %179, label %91, !prof !327

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %93 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %94 = zext i8 %89 to i64
  br label %95

95:                                               ; preds = %91, %171
  %96 = phi i64 [ %94, %91 ], [ %97, %171 ]
  %97 = add nsw i64 %96, -1
  %98 = getelementptr inbounds i8, ptr %87, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !185
  switch i8 %99, label %170 [
    i8 119, label %100
    i8 110, label %106
    i8 105, label %106
    i8 86, label %112
    i8 69, label %112
    i8 101, label %138
    i8 83, label %163
    i8 115, label %163
    i8 117, label %171
    i8 48, label %171
    i8 116, label %171
  ], !prof !328

100:                                              ; preds = %95
  %101 = getelementptr inbounds [1 x i64], ptr %92, i64 0, i64 %97
  %102 = load i64, ptr %101, align 8, !tbaa !185
  %103 = getelementptr inbounds [1 x i64], ptr %93, i64 0, i64 %97
  %104 = load i64, ptr %103, align 8, !tbaa !185
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %171, label %179, !prof !329

106:                                              ; preds = %95, %95
  %107 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %108 = load i32, ptr %107, align 8, !tbaa !185
  %109 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %110 = load i32, ptr %109, align 8, !tbaa !185
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %171, label %179, !prof !330

112:                                              ; preds = %95, %95
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %114 = load ptr, ptr %113, align 8, !tbaa !185
  %115 = load i32, ptr %114, align 8, !tbaa !201
  %116 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %117 = load ptr, ptr %116, align 8, !tbaa !185
  %118 = load i32, ptr %117, align 8, !tbaa !201
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %179, !prof !331

120:                                              ; preds = %112
  %121 = icmp sgt i32 %115, 0
  br i1 %121, label %128, label %171, !prof !203

122:                                              ; preds = %128
  %123 = add nuw nsw i64 %129, 1
  %124 = load ptr, ptr %113, align 8, !tbaa !185
  %125 = load i32, ptr %124, align 8, !tbaa !201
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %123, %126
  br i1 %127, label %128, label %171, !prof !332, !llvm.loop !333

128:                                              ; preds = %120, %122
  %129 = phi i64 [ %123, %122 ], [ 0, %120 ]
  %130 = phi ptr [ %124, %122 ], [ %114, %120 ]
  %131 = getelementptr inbounds %struct.rtvec_def, ptr %130, i64 0, i32 1, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !175
  %133 = load ptr, ptr %116, align 8, !tbaa !185
  %134 = getelementptr inbounds %struct.rtvec_def, ptr %133, i64 0, i32 1, i64 %129
  %135 = load ptr, ptr %134, align 8, !tbaa !175
  %136 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %132, ptr noundef %135) #16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %179, label %122, !prof !331

138:                                              ; preds = %95
  %139 = icmp eq i64 %97, 1
  br i1 %139, label %140, label %156, !prof !334

140:                                              ; preds = %138
  %141 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 38), align 8, !tbaa !335
  %142 = tail call zeroext i8 %141(ptr noundef nonnull %14, i32 noundef 0) #17
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %156, label %144, !prof !348

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !185
  %147 = load ptr, ptr %93, align 8, !tbaa !185
  %148 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %146, ptr noundef %147) #16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150, !prof !349

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %92, align 8, !tbaa !185
  %153 = load ptr, ptr %151, align 8, !tbaa !185
  %154 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %152, ptr noundef %153) #16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %179, !prof !350

156:                                              ; preds = %150, %144, %140, %138
  %157 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %158 = load ptr, ptr %157, align 8, !tbaa !185
  %159 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %160 = load ptr, ptr %159, align 8, !tbaa !185
  %161 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %158, ptr noundef %160) #16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %179, label %171, !prof !351

163:                                              ; preds = %95, %95
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %165 = load ptr, ptr %164, align 8, !tbaa !185
  %166 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %167 = load ptr, ptr %166, align 8, !tbaa !185
  %168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(1) %167) #16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %179, !prof !352

170:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 766, ptr noundef nonnull @.str.1) #17
  br label %171

171:                                              ; preds = %122, %120, %95, %170, %100, %106, %156, %163, %95, %95
  %172 = icmp sgt i64 %96, 1
  br i1 %172, label %95, label %179, !prof !353, !llvm.loop !354

173:                                              ; preds = %35, %81
  %174 = phi ptr [ %83, %81 ], [ %37, %35 ]
  %175 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !185
  %177 = icmp eq ptr %174, %176
  %178 = zext i1 %177 to i32
  br label %179

179:                                              ; preds = %171, %100, %106, %112, %150, %156, %163, %128, %70, %67, %51, %48, %173, %84, %55, %38, %79, %79, %79, %73, %75, %25
  %180 = phi i32 [ 1, %25 ], [ 0, %75 ], [ 0, %73 ], [ 0, %79 ], [ 0, %79 ], [ 0, %79 ], [ 0, %38 ], [ 0, %55 ], [ 1, %84 ], [ %178, %173 ], [ 0, %51 ], [ 1, %48 ], [ 0, %70 ], [ 1, %67 ], [ 0, %128 ], [ 1, %171 ], [ 0, %100 ], [ 0, %106 ], [ 0, %112 ], [ 1, %150 ], [ 0, %156 ], [ 0, %163 ]
  ret i32 %180
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_expand_value_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !355 {
  %4 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  store ptr %1, ptr %4, align 8, !tbaa !356
  %5 = getelementptr inbounds %struct.expand_value_data, ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %5, i8 0, i64 17, i1 false)
  %6 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !358 !PGOFuncName !359 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %307, label %7, !prof !360

7:                                                ; preds = %3
  %8 = trunc i32 %4 to i16
  switch i16 %8, label %148 [
    i16 37, label %9
    i16 30, label %307
    i16 32, label %307
    i16 33, label %307
    i16 45, label %307
    i16 12, label %307
    i16 36, label %307
    i16 46, label %307
    i16 38, label %307
    i16 25, label %60
    i16 35, label %69
    i16 39, label %72
    i16 1, label %110
    i16 2, label %139
  ], !prof !361

9:                                                ; preds = %7
  %10 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !175
  %15 = icmp eq ptr %14, null
  br i1 %15, label %307, label %16, !prof !362

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.elt_list, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !363

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !271
  %22 = icmp eq ptr %21, null
  br i1 %22, label %307, label %23, !prof !251

23:                                               ; preds = %16, %20
  %24 = phi ptr [ %14, %16 ], [ %21, %20 ]
  br label %25

25:                                               ; preds = %23, %57
  %26 = phi ptr [ %58, %57 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.elt_list, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = getelementptr inbounds %struct.cselib_val_struct, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  %31 = load i32, ptr %30, align 8
  %32 = xor i32 %31, %4
  %33 = and i32 %32, 16711680
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %57, !prof !364

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.elt_list, ptr %26, i64 0, i32 1
  switch i32 %11, label %37 [
    i32 20, label %307
    i32 7, label %307
    i32 6, label %307
  ]

37:                                               ; preds = %35
  %38 = load ptr, ptr %1, align 8, !tbaa !356
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %38, i32 noundef %11) #17
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42, !prof !365

42:                                               ; preds = %37
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !171
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %40, ptr noundef nonnull @.str.2, i32 noundef %11) #16
  br label %48

48:                                               ; preds = %46, %42, %37
  %49 = load ptr, ptr %36, align 8, !tbaa !221
  %50 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !179
  %52 = tail call fastcc ptr @expand_loc(ptr noundef %51, ptr noundef nonnull %1, i32 noundef %2) #16
  %53 = load ptr, ptr %1, align 8, !tbaa !356
  %54 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %53, i32 noundef %11) #17
  %55 = icmp eq ptr %52, null
  %56 = select i1 %55, ptr %0, ptr %52, !prof !366
  br label %307

57:                                               ; preds = %25
  %58 = load ptr, ptr %26, align 8, !tbaa !271
  %59 = icmp eq ptr %58, null
  br i1 %59, label %307, label %25, !prof !367, !llvm.loop !368

60:                                               ; preds = %7
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !185
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %148

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %62) #16
  %68 = icmp ult i32 %67, 53
  br i1 %68, label %307, label %148

69:                                               ; preds = %7
  %70 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #17
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %148, label %307, !prof !369

72:                                               ; preds = %7
  %73 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !370
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !371

76:                                               ; preds = %72
  %77 = load ptr, ptr %1, align 8, !tbaa !356
  %78 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !372
  %80 = tail call ptr %74(ptr noundef nonnull %0, ptr noundef %77, i32 noundef %2, ptr noundef %79) #17
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %307

82:                                               ; preds = %76, %72
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !185
  %85 = add nsw i32 %2, -1
  %86 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %84, ptr noundef nonnull %1, i32 noundef %85) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %307, label %88, !prof !373

88:                                               ; preds = %82
  %89 = load i32, ptr %0, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = load ptr, ptr %83, align 8, !tbaa !185
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load i32, ptr %96, align 8, !tbaa !185
  %98 = tail call ptr @simplify_gen_subreg(i32 noundef %91, ptr noundef nonnull %86, i32 noundef %95, i32 noundef %97) #17
  %99 = icmp eq ptr %98, null
  br i1 %99, label %307, label %100, !prof !374

100:                                              ; preds = %88
  %101 = load i32, ptr %98, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 39
  br i1 %103, label %104, label %109, !prof !375

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !185
  %107 = load i32, ptr %106, align 8
  %108 = trunc i32 %107 to i16
  switch i16 %108, label %307 [
    i16 37, label %109
    i16 43, label %109
  ], !prof !376

109:                                              ; preds = %104, %104, %100
  br label %307

110:                                              ; preds = %7
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113, !prof !377

113:                                              ; preds = %110
  %114 = load i32, ptr @dump_flags, align 4, !tbaa !171
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef nonnull %111) #16
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %120 = tail call i32 @print_rtl_single(ptr noundef %119, ptr noundef nonnull %0) #17
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %122 = tail call i32 @fputs(ptr noundef nonnull @.str.4, ptr noundef %121) #16
  br label %123

123:                                              ; preds = %117, %113, %110
  %124 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !370
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %127, !prof !377

127:                                              ; preds = %123
  %128 = load ptr, ptr %1, align 8, !tbaa !356
  %129 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !372
  %131 = tail call ptr %125(ptr noundef nonnull %0, ptr noundef %128, i32 noundef %2, ptr noundef %130) #17
  %132 = icmp eq ptr %131, %0
  br i1 %132, label %133, label %307

133:                                              ; preds = %127, %123
  %134 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !185
  %136 = getelementptr inbounds %struct.cselib_val_struct, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !179
  %138 = tail call fastcc ptr @expand_loc(ptr noundef %137, ptr noundef nonnull %1, i32 noundef %2) #16
  br label %307

139:                                              ; preds = %7
  %140 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !370
  %142 = icmp eq ptr %141, null
  br i1 %142, label %307, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %1, align 8, !tbaa !356
  %145 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !372
  %147 = tail call ptr %141(ptr noundef nonnull %0, ptr noundef %144, i32 noundef %2, ptr noundef %146) #17
  br label %307

148:                                              ; preds = %7, %69, %60, %66
  %149 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 3
  %150 = load i8, ptr %149, align 8, !tbaa !378
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %154, !prof !379

152:                                              ; preds = %148
  %153 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  br label %154

154:                                              ; preds = %148, %152
  %155 = phi ptr [ %153, %152 ], [ null, %148 ]
  %156 = zext nneg i32 %5 to i64
  %157 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !185
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %220, label %160, !prof !380

160:                                              ; preds = %154
  %161 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %156
  %162 = load ptr, ptr %161, align 8, !tbaa !175
  %163 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %164 = icmp eq ptr %155, null
  %165 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %166 = add nsw i32 %2, -1
  %167 = zext i8 %158 to i64
  br label %168

168:                                              ; preds = %160, %217
  %169 = phi i64 [ 0, %160 ], [ %218, %217 ]
  %170 = phi ptr [ %162, %160 ], [ %171, %217 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 1
  %172 = load i8, ptr %170, align 1, !tbaa !185
  switch i8 %172, label %216 [
    i8 101, label %173
    i8 69, label %183
    i8 86, label %183
    i8 116, label %217
    i8 119, label %217
    i8 105, label %217
    i8 115, label %217
    i8 83, label %217
    i8 84, label %217
    i8 117, label %217
    i8 66, label %217
    i8 48, label %217
  ], !prof !381

173:                                              ; preds = %168
  %174 = getelementptr inbounds [1 x %union.rtunion_def], ptr %163, i64 0, i64 %169
  %175 = load ptr, ptr %174, align 8, !tbaa !185
  %176 = icmp eq ptr %175, null
  br i1 %176, label %217, label %177, !prof !382

177:                                              ; preds = %173
  %178 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef nonnull %175, ptr noundef %1, i32 noundef %166) #16
  %179 = icmp eq ptr %178, null
  br i1 %179, label %307, label %180, !prof !383

180:                                              ; preds = %177
  br i1 %164, label %217, label %181, !prof !384

181:                                              ; preds = %180
  %182 = getelementptr inbounds [1 x %union.rtunion_def], ptr %165, i64 0, i64 %169
  store ptr %178, ptr %182, align 8, !tbaa !185
  br label %217

183:                                              ; preds = %168, %168
  %184 = getelementptr inbounds [1 x %union.rtunion_def], ptr %163, i64 0, i64 %169
  %185 = load ptr, ptr %184, align 8, !tbaa !185
  %186 = icmp eq ptr %185, null
  br i1 %186, label %217, label %187

187:                                              ; preds = %183
  br i1 %164, label %193, label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %185, align 8, !tbaa !201
  %190 = tail call ptr @rtvec_alloc(i32 noundef %189) #17
  %191 = getelementptr inbounds [1 x %union.rtunion_def], ptr %165, i64 0, i64 %169
  store ptr %190, ptr %191, align 8, !tbaa !185
  %192 = load ptr, ptr %184, align 8, !tbaa !185
  br label %193

193:                                              ; preds = %188, %187
  %194 = phi ptr [ %192, %188 ], [ %185, %187 ]
  %195 = load i32, ptr %194, align 8, !tbaa !201
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %193
  %198 = getelementptr inbounds [1 x %union.rtunion_def], ptr %165, i64 0, i64 %169
  br label %199

199:                                              ; preds = %197, %210
  %200 = phi i64 [ 0, %197 ], [ %211, %210 ]
  %201 = phi ptr [ %194, %197 ], [ %212, %210 ]
  %202 = getelementptr inbounds %struct.rtvec_def, ptr %201, i64 0, i32 1, i64 %200
  %203 = load ptr, ptr %202, align 8, !tbaa !175
  %204 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %203, ptr noundef %1, i32 noundef %166) #16
  %205 = icmp eq ptr %204, null
  br i1 %205, label %307, label %206

206:                                              ; preds = %199
  br i1 %164, label %210, label %207

207:                                              ; preds = %206
  %208 = load ptr, ptr %198, align 8, !tbaa !185
  %209 = getelementptr inbounds %struct.rtvec_def, ptr %208, i64 0, i32 1, i64 %200
  store ptr %204, ptr %209, align 8, !tbaa !175
  br label %210

210:                                              ; preds = %207, %206
  %211 = add nuw nsw i64 %200, 1
  %212 = load ptr, ptr %184, align 8, !tbaa !185
  %213 = load i32, ptr %212, align 8, !tbaa !201
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %199, label %217, !llvm.loop !385

216:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1438, ptr noundef nonnull @.str.1) #17
  br label %217

217:                                              ; preds = %210, %193, %181, %180, %216, %173, %183, %168, %168, %168, %168, %168, %168, %168, %168, %168
  %218 = add nuw nsw i64 %169, 1
  %219 = icmp eq i64 %218, %167
  br i1 %219, label %220, label %168, !prof !386, !llvm.loop !387

220:                                              ; preds = %217, %154
  %221 = load i8, ptr %149, align 8, !tbaa !378
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %307, !prof !388

223:                                              ; preds = %220
  %224 = load i32, ptr %155, align 8
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  %227 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %156
  %228 = load i32, ptr %227, align 4, !tbaa !171
  switch i32 %228, label %303 [
    i32 4, label %229
    i32 1, label %265
    i32 0, label %265
    i32 10, label %245
    i32 11, label %245
  ], !prof !389

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !185
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 30
  br i1 %234, label %235, label %303, !prof !390

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !185
  %238 = load i32, ptr %237, align 8
  %239 = lshr i32 %238, 16
  %240 = and i32 %239, 255
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %303, label %242

242:                                              ; preds = %235
  %243 = tail call ptr @simplify_unary_operation(i32 noundef %5, i32 noundef %226, ptr noundef nonnull %231, i32 noundef %240) #17
  %244 = icmp eq ptr %243, null
  br i1 %244, label %303, label %307

245:                                              ; preds = %223, %223
  %246 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !185
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 30
  br i1 %250, label %251, label %303

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !185
  %254 = load i32, ptr %253, align 8
  %255 = lshr i32 %254, 16
  %256 = and i32 %255, 255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %303, label %258

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !185
  %261 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %262 = load ptr, ptr %261, align 8, !tbaa !185
  %263 = tail call ptr @simplify_ternary_operation(i32 noundef %5, i32 noundef %226, i32 noundef %256, ptr noundef nonnull %247, ptr noundef %260, ptr noundef %262) #17
  %264 = icmp eq ptr %263, null
  br i1 %264, label %303, label %307

265:                                              ; preds = %223, %223
  %266 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !185
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 30
  br i1 %270, label %271, label %303, !prof !391

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !185
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 16711680
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %303

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !185
  %280 = load i32, ptr %279, align 8
  %281 = and i32 %280, 16711680
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %285 = load ptr, ptr %284, align 8, !tbaa !185
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, 16711680
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %303, label %289

289:                                              ; preds = %283, %277
  %290 = lshr i32 %280, 16
  %291 = and i32 %290, 255
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !185
  %296 = load i32, ptr %295, align 8
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  br label %299

299:                                              ; preds = %289, %293
  %300 = phi i32 [ %298, %293 ], [ %291, %289 ]
  %301 = tail call ptr @simplify_relational_operation(i32 noundef %5, i32 noundef %226, i32 noundef %300, ptr noundef nonnull %267, ptr noundef nonnull %273) #17
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %307

303:                                              ; preds = %223, %265, %271, %283, %299, %245, %251, %258, %229, %235, %242
  %304 = tail call ptr @simplify_rtx(ptr noundef nonnull %155) #17
  %305 = icmp eq ptr %304, null
  %306 = select i1 %305, ptr %155, ptr %304, !prof !392
  br label %307

307:                                              ; preds = %57, %177, %199, %9, %20, %48, %35, %35, %35, %7, %7, %7, %7, %7, %7, %7, %7, %303, %299, %258, %242, %220, %139, %133, %127, %109, %76, %82, %104, %88, %69, %66, %3, %143
  %308 = phi ptr [ %147, %143 ], [ null, %3 ], [ %0, %66 ], [ %0, %69 ], [ %98, %109 ], [ %80, %76 ], [ null, %82 ], [ null, %104 ], [ null, %88 ], [ %138, %133 ], [ %131, %127 ], [ %0, %139 ], [ %0, %220 ], [ %243, %242 ], [ %263, %258 ], [ %301, %299 ], [ %306, %303 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %56, %48 ], [ %0, %35 ], [ %0, %35 ], [ %0, %35 ], [ %0, %20 ], [ %0, %9 ], [ null, %199 ], [ null, %177 ], [ %0, %57 ]
  ret ptr %308
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_loc(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !393 !PGOFuncName !394 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %99, label %5, !prof !395

5:                                                ; preds = %3, %79
  %6 = phi ptr [ %82, %79 ], [ %0, %3 ]
  %7 = phi ptr [ %81, %79 ], [ null, %3 ]
  %8 = phi i32 [ %80, %79 ], [ -1, %3 ]
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %27, !prof !396

14:                                               ; preds = %5
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #16
  %16 = icmp ult i32 %15, %8
  br i1 %16, label %17, label %27, !prof !397

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 8, !tbaa !356
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #16
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %19) #17
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %9, align 8, !tbaa !181
  br i1 %21, label %25, label %23, !prof !398

23:                                               ; preds = %17
  %24 = load i32, ptr %22, align 8
  br label %27

25:                                               ; preds = %17
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef %22) #16
  br label %79

27:                                               ; preds = %23, %14, %5
  %28 = phi i32 [ %24, %23 ], [ %11, %14 ], [ %11, %5 ]
  %29 = phi ptr [ %22, %23 ], [ %10, %14 ], [ %10, %5 ]
  %30 = trunc i32 %28 to i16
  switch i16 %30, label %37 [
    i16 1, label %31
    i16 37, label %79
  ], !prof !399

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !185
  %34 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !179
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %79, label %37

37:                                               ; preds = %27, %31
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40, !prof !400

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !171
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  tail call void @print_inline_rtx(ptr noundef nonnull %38, ptr noundef nonnull %29, i32 noundef 0) #17
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %46 = tail call i32 @fputc(i32 10, ptr %45)
  %47 = load ptr, ptr %9, align 8, !tbaa !181
  %48 = load i32, ptr %47, align 8
  br label %49

49:                                               ; preds = %44, %40, %37
  %50 = phi i32 [ %48, %44 ], [ %28, %40 ], [ %28, %37 ]
  %51 = phi ptr [ %47, %44 ], [ %29, %40 ], [ %29, %37 ]
  %52 = and i32 %50, 65535
  %53 = icmp eq i32 %52, 122
  br i1 %53, label %54, label %74, !prof !401

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !185
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.elt_loc_list, ptr %6, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !228
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @find_reg_note(ptr noundef nonnull %62, i32 noundef 4, ptr noundef null) #17
  %66 = icmp eq ptr %65, null
  %67 = load ptr, ptr %9, align 8, !tbaa !181
  br i1 %66, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !185
  %71 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !185
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %114, label %74

74:                                               ; preds = %49, %54, %60, %64, %68
  %75 = phi ptr [ %51, %49 ], [ %51, %54 ], [ %51, %60 ], [ %67, %64 ], [ %67, %68 ]
  %76 = add nsw i32 %2, -1
  %77 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %75, ptr noundef %1, i32 noundef %76) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %114

79:                                               ; preds = %27, %25, %74, %31
  %80 = phi i32 [ %8, %31 ], [ %8, %74 ], [ %26, %25 ], [ %8, %27 ]
  %81 = phi ptr [ %7, %31 ], [ %7, %74 ], [ %22, %25 ], [ %7, %27 ]
  %82 = load ptr, ptr %6, align 8, !tbaa !192
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %5, !prof !402, !llvm.loop !403

84:                                               ; preds = %79
  %85 = icmp eq i32 %80, -1
  br i1 %85, label %99, label %86, !prof !404

86:                                               ; preds = %84
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89, !prof !405

89:                                               ; preds = %86
  %90 = load i32, ptr @dump_flags, align 4, !tbaa !171
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.6, i32 noundef %80) #16
  br label %95

95:                                               ; preds = %93, %89, %86
  %96 = add nsw i32 %2, -1
  %97 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %81, ptr noundef %1, i32 noundef %96) #16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %3, %95, %84
  %100 = phi ptr [ %81, %95 ], [ %81, %84 ], [ null, %3 ]
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103, !prof !406

103:                                              ; preds = %99
  %104 = load i32, ptr @dump_flags, align 4, !tbaa !171
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = icmp eq ptr %100, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  tail call void @print_inline_rtx(ptr noundef nonnull %101, ptr noundef nonnull %100, i32 noundef 0) #17
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %111 = tail call i32 @fputc(i32 10, ptr %110)
  br label %114

112:                                              ; preds = %107
  %113 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 5, i64 1, ptr nonnull %101)
  br label %114

114:                                              ; preds = %68, %74, %99, %103, %112, %109, %95
  %115 = phi ptr [ %97, %95 ], [ %100, %109 ], [ null, %112 ], [ %100, %103 ], [ %100, %99 ], [ %70, %68 ], [ %77, %74 ]
  ret ptr %115
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_ternary_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_expand_value_rtx_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !190 {
  %6 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  store ptr %1, ptr %6, align 8, !tbaa !356
  %7 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !370
  %8 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !372
  %9 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 3
  store i8 0, ptr %9, align 8, !tbaa !378
  %10 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !190 {
  %6 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  store ptr %1, ptr %6, align 8, !tbaa !356
  %7 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !370
  %8 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !372
  %9 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 3
  store i8 1, ptr %9, align 8, !tbaa !378
  %10 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #16
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_subst_to_values(ptr noundef %0) local_unnamed_addr #0 !prof !407 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !175
  %7 = trunc i32 %2 to i16
  switch i16 %7, label %43 [
    i16 37, label %8
    i16 43, label %38
    i16 32, label %127
    i16 33, label %127
    i16 30, label %127
    i16 31, label %127
    i16 77, label %117
    i16 75, label %117
    i16 76, label %117
    i16 74, label %117
    i16 79, label %117
    i16 78, label %117
  ], !prof !408

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15, !prof !409

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.elt_list, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22, !prof !410

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !271
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22, !prof !411

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %13, %15 ], [ %20, %19 ]
  br label %24

24:                                               ; preds = %22, %34
  %25 = phi ptr [ %35, %34 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.elt_list, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !221
  %28 = getelementptr inbounds %struct.cselib_val_struct, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  %30 = load i32, ptr %29, align 8
  %31 = xor i32 %30, %2
  %32 = and i32 %31, 16711680
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %127, label %34, !prof !412

34:                                               ; preds = %24
  %35 = load ptr, ptr %25, align 8, !tbaa !271
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24, !prof !413, !llvm.loop !414

37:                                               ; preds = %34, %8, %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1532, ptr noundef nonnull @.str.1) #17
  br label %38

38:                                               ; preds = %1, %37
  %39 = tail call fastcc ptr @cselib_lookup_mem(ptr noundef nonnull %0, i32 noundef 0) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %123, !prof !415

41:                                               ; preds = %38
  %42 = load i32, ptr %0, align 8
  br label %117

43:                                               ; preds = %1
  %44 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %4
  %45 = load i8, ptr %44, align 1, !tbaa !185
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %127, label %47, !prof !416

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = zext i8 %45 to i64
  br label %50

50:                                               ; preds = %47, %114
  %51 = phi i64 [ %49, %47 ], [ %53, %114 ]
  %52 = phi ptr [ %0, %47 ], [ %115, %114 ]
  %53 = add nsw i64 %51, -1
  %54 = getelementptr inbounds i8, ptr %6, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !185
  switch i8 %55, label %114 [
    i8 101, label %61
    i8 69, label %56
  ], !prof !417

56:                                               ; preds = %50
  %57 = getelementptr inbounds [1 x %union.rtunion_def], ptr %48, i64 0, i64 %53
  %58 = load ptr, ptr %57, align 8, !tbaa !185
  %59 = load i32, ptr %58, align 8, !tbaa !201
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %75, label %114, !prof !418

61:                                               ; preds = %50
  %62 = getelementptr inbounds [1 x %union.rtunion_def], ptr %48, i64 0, i64 %53
  %63 = load ptr, ptr %62, align 8, !tbaa !185
  %64 = tail call ptr @cselib_subst_to_values(ptr noundef %63) #16
  %65 = load ptr, ptr %62, align 8, !tbaa !185
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %114, label %67, !prof !419

67:                                               ; preds = %61
  %68 = icmp eq ptr %52, %0
  br i1 %68, label %69, label %71, !prof !420

69:                                               ; preds = %67
  %70 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %70, %69 ], [ %52, %67 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], ptr %73, i64 0, i64 %53
  store ptr %64, ptr %74, align 8, !tbaa !185
  br label %114

75:                                               ; preds = %56, %107
  %76 = phi i64 [ %110, %107 ], [ 0, %56 ]
  %77 = phi ptr [ %108, %107 ], [ %58, %56 ]
  %78 = phi ptr [ %109, %107 ], [ %52, %56 ]
  %79 = getelementptr inbounds %struct.rtvec_def, ptr %77, i64 0, i32 1, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !175
  %81 = tail call ptr @cselib_subst_to_values(ptr noundef %80) #16
  %82 = load ptr, ptr %57, align 8, !tbaa !185
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %76
  %84 = load ptr, ptr %83, align 8, !tbaa !175
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %107, label %86, !prof !421

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %88 = getelementptr inbounds [1 x %union.rtunion_def], ptr %87, i64 0, i64 %53
  %89 = load ptr, ptr %88, align 8, !tbaa !185
  %90 = icmp eq ptr %82, %89
  br i1 %90, label %91, label %102, !prof !422

91:                                               ; preds = %86
  %92 = icmp eq ptr %78, %0
  br i1 %92, label %93, label %96, !prof !423

93:                                               ; preds = %91
  %94 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  %95 = load ptr, ptr %57, align 8, !tbaa !185
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi ptr [ %95, %93 ], [ %82, %91 ]
  %98 = phi ptr [ %94, %93 ], [ %78, %91 ]
  %99 = tail call ptr @shallow_copy_rtvec(ptr noundef %97) #17
  %100 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %101 = getelementptr inbounds [1 x %union.rtunion_def], ptr %100, i64 0, i64 %53
  store ptr %99, ptr %101, align 8, !tbaa !185
  br label %102

102:                                              ; preds = %96, %86
  %103 = phi ptr [ %99, %96 ], [ %89, %86 ]
  %104 = phi ptr [ %98, %96 ], [ %78, %86 ]
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1, i64 %76
  store ptr %81, ptr %105, align 8, !tbaa !175
  %106 = load ptr, ptr %57, align 8, !tbaa !185
  br label %107

107:                                              ; preds = %102, %75
  %108 = phi ptr [ %106, %102 ], [ %82, %75 ]
  %109 = phi ptr [ %104, %102 ], [ %78, %75 ]
  %110 = add nuw nsw i64 %76, 1
  %111 = load i32, ptr %108, align 8, !tbaa !201
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %75, label %114, !prof !424, !llvm.loop !425

114:                                              ; preds = %107, %56, %50, %61, %71
  %115 = phi ptr [ %72, %71 ], [ %52, %61 ], [ %52, %50 ], [ %52, %56 ], [ %109, %107 ]
  %116 = icmp sgt i64 %51, 1
  br i1 %116, label %50, label %127, !prof !426, !llvm.loop !427

117:                                              ; preds = %1, %1, %1, %1, %1, %1, %41
  %118 = phi i32 [ %42, %41 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ]
  %119 = load i32, ptr @next_uid, align 4, !tbaa !171
  %120 = lshr i32 %118, 16
  %121 = and i32 %120, 255
  %122 = tail call fastcc ptr @new_cselib_val(i32 noundef %119, i32 noundef %121, ptr noundef nonnull %0) #16
  br label %123

123:                                              ; preds = %117, %38
  %124 = phi ptr [ %39, %38 ], [ %122, %117 ]
  %125 = getelementptr inbounds %struct.cselib_val_struct, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !194
  br label %127

127:                                              ; preds = %24, %114, %123, %43, %1, %1, %1, %1
  %128 = phi ptr [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %43 ], [ %126, %123 ], [ %115, %114 ], [ %29, %24 ]
  ret ptr %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cselib_lookup_mem(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !429 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = and i32 %3, 134217728
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %5, 1
  %9 = and i1 %7, %8
  %10 = load i8, ptr @cselib_record_memory, align 1
  %11 = icmp ne i8 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %54, !prof !430

13:                                               ; preds = %2
  %14 = zext nneg i32 %5 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !185
  switch i8 %16, label %20 [
    i8 8, label %17
    i8 9, label %17
    i8 11, label %17
    i8 17, label %17
  ], !prof !431

17:                                               ; preds = %13, %13, %13, %13
  %18 = load i32, ptr @flag_float_store, align 4, !tbaa !171
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54, !prof !432

20:                                               ; preds = %13, %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !185
  %23 = tail call ptr @cselib_lookup(ptr noundef %22, i32 noundef %5, i32 noundef %1) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25, !prof !433

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cselib_val_struct, ptr %23, i64 0, i32 4
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi ptr [ %26, %25 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !175
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !prof !434

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.elt_list, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !221
  %34 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !194
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, %5
  br i1 %39, label %40, label %27, !prof !435, !llvm.loop !436

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.elt_list, ptr %29, i64 0, i32 1
  %42 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !179
  tail call fastcc void @promote_debug_loc(ptr noundef %43) #16
  %44 = load ptr, ptr %41, align 8, !tbaa !221
  br label %54

45:                                               ; preds = %27
  %46 = icmp eq i32 %1, 0
  br i1 %46, label %54, label %47, !prof !437

47:                                               ; preds = %45
  %48 = load i32, ptr @next_uid, align 4, !tbaa !171
  %49 = tail call fastcc ptr @new_cselib_val(i32 noundef %48, i32 noundef %5, ptr noundef nonnull %0) #16
  tail call fastcc void @add_mem_for_addr(ptr noundef nonnull %23, ptr noundef %49, ptr noundef nonnull %0) #16
  %50 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  %51 = tail call fastcc ptr @wrap_constant(i32 noundef %5, ptr noundef nonnull %0) #16
  %52 = load i32, ptr %49, align 8, !tbaa !279
  %53 = tail call ptr @htab_find_slot_with_hash(ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef 1) #17
  store ptr %49, ptr %53, align 8, !tbaa !175
  br label %54

54:                                               ; preds = %45, %20, %2, %17, %47, %40
  %55 = phi ptr [ %44, %40 ], [ %49, %47 ], [ null, %17 ], [ null, %2 ], [ null, %20 ], [ null, %45 ]
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_cselib_val(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !438 !PGOFuncName !439 {
  %4 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !175
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #17
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %7, label %8, !prof !440

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 980, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i32, ptr @next_uid, align 4, !tbaa !171
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !440

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @.str.1) #17
  %12 = load i32, ptr @next_uid, align 4, !tbaa !171
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i32 [ %9, %8 ], [ %12, %11 ]
  store i32 %0, ptr %5, align 8, !tbaa !279
  %15 = add i32 %14, 1
  store i32 %15, ptr @next_uid, align 4, !tbaa !171
  %16 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 1
  store i32 %14, ptr %16, align 4, !tbaa !278
  %17 = load ptr, ptr @value_pool, align 8, !tbaa !175
  %18 = tail call ptr @pool_alloc(ptr noundef %17) #17
  %19 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !194
  store i64 0, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -65536
  %23 = or disjoint i32 %22, 1
  store i32 %23, ptr %20, align 8
  %24 = load ptr, ptr %19, align 8, !tbaa !194
  %25 = load i32, ptr %24, align 8
  %26 = shl i32 %1, 16
  %27 = and i32 %26, 16711680
  %28 = and i32 %25, -16711681
  %29 = or disjoint i32 %28, %27
  store i32 %29, ptr %24, align 8
  %30 = load ptr, ptr %19, align 8, !tbaa !194
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  store ptr %5, ptr %31, align 8, !tbaa !185
  %32 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35, !prof !441

35:                                               ; preds = %13
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !171
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %16, align 4, !tbaa !278
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.8, i32 noundef %40, i32 noundef %0) #16
  %42 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !171
  %43 = icmp ne i32 %42, 0
  %44 = load i32, ptr @flag_dump_unnumbered, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !175
  br i1 %46, label %48, label %50

48:                                               ; preds = %39
  %49 = tail call i32 @fputs(ptr noundef nonnull @.str.9, ptr noundef %47) #16
  br label %52

50:                                               ; preds = %39
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #16
  br label %52

52:                                               ; preds = %50, %48
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %54 = tail call i32 @print_rtl_single(ptr noundef %53, ptr noundef %2) #17
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !175
  %56 = tail call i32 @fputc(i32 noundef 10, ptr noundef %55) #16
  br label %57

57:                                               ; preds = %52, %35, %13
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtvec(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @promote_debug_loc(ptr nocapture noundef %0) unnamed_addr #0 !prof !442 !PGOFuncName !443 {
  %2 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !444

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %9, label %22, !prof !445

9:                                                ; preds = %5
  %10 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !175
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %9
  %17 = load i32, ptr @n_debug_values, align 4, !tbaa !171
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr @n_debug_values, align 4, !tbaa !171
  store ptr %10, ptr %2, align 8, !tbaa !228
  %19 = load ptr, ptr %0, align 8, !tbaa !192
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #17
  br label %22

22:                                               ; preds = %21, %16, %12, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_mem_for_addr(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !446 !PGOFuncName !447 {
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !448

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %22, %21 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %21, !prof !449

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %21, !prof !450

20:                                               ; preds = %14
  tail call fastcc void @promote_debug_loc(ptr noundef nonnull %8) #16
  br label %38

21:                                               ; preds = %7, %14
  %22 = load ptr, ptr %8, align 8, !tbaa !175
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !prof !451, !llvm.loop !452

24:                                               ; preds = %21, %3
  %25 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !297
  %27 = tail call fastcc ptr @new_elt_list(ptr noundef %26, ptr noundef %1) #16
  store ptr %27, ptr %25, align 8, !tbaa !297
  %28 = load ptr, ptr %4, align 8, !tbaa !179
  %29 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  %31 = tail call ptr @replace_equiv_address_nv(ptr noundef %2, ptr noundef %30) #17
  %32 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %28, ptr noundef %31) #16
  store ptr %32, ptr %4, align 8, !tbaa !179
  %33 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !242
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38, !prof !453

36:                                               ; preds = %24
  %37 = load ptr, ptr @first_containing_mem, align 8, !tbaa !175
  store ptr %37, ptr %33, align 8, !tbaa !242
  store ptr %1, ptr @first_containing_mem, align 8, !tbaa !175
  br label %38

38:                                               ; preds = %24, %36, %20
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wrap_constant(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !454 !PGOFuncName !455 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %13 [
    i16 30, label %8
    i16 31, label %8
    i16 32, label %5
  ], !prof !456

5:                                                ; preds = %2
  %6 = and i32 %3, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !457

8:                                                ; preds = %2, %2, %5
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %10, label %11, !prof !458

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 781, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %8, %10
  %12 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %0, ptr noundef nonnull %1) #17
  br label %13

13:                                               ; preds = %5, %2, %11
  %14 = phi ptr [ %12, %11 ], [ %1, %2 ], [ %1, %5 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_elt_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !459 !PGOFuncName !460 {
  %3 = load ptr, ptr @elt_list_pool, align 8, !tbaa !175
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #17
  store ptr %0, ptr %4, align 8, !tbaa !271
  %5 = getelementptr inbounds %struct.elt_list, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !221
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_elt_loc_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !461 !PGOFuncName !462 {
  %3 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !175
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #17
  store ptr %0, ptr %4, align 8, !tbaa !192
  %5 = getelementptr inbounds %struct.elt_loc_list, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !181
  %6 = load ptr, ptr @cselib_current_insn, align 8
  %7 = getelementptr inbounds %struct.elt_loc_list, ptr %4, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !228
  %8 = icmp eq ptr %0, null
  br i1 %8, label %18, label %9, !prof !463

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !228
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13, !prof !464

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %27, !prof !465

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #17
  br label %27

18:                                               ; preds = %2
  %19 = icmp eq ptr %6, null
  br i1 %19, label %27, label %20, !prof !466

20:                                               ; preds = %18
  %21 = load i32, ptr %6, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %27, !prof !467

24:                                               ; preds = %20
  %25 = load i32, ptr @n_debug_values, align 4, !tbaa !171
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @n_debug_values, align 4, !tbaa !171
  br label %27

27:                                               ; preds = %17, %13, %9, %24, %20, %18
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_lookup_from_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !190 {
  %5 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1696, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %4, %7
  store ptr %3, ptr @cselib_current_insn, align 8, !tbaa !175
  %9 = tail call ptr @cselib_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !175
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cselib_lookup_1(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !276 !PGOFuncName !468 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %1, i32 %6, !prof !469
  %9 = trunc i32 %4 to i16
  switch i16 %9, label %90 [
    i16 1, label %10
    i16 37, label %13
    i16 43, label %88
  ], !prof !470

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !185
  br label %109

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %15 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !175
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20, !prof !471

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.elt_list, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27, !prof !472

24:                                               ; preds = %20
  %25 = load ptr, ptr %18, align 8, !tbaa !271
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27, !prof !251

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %18, %20 ], [ %25, %24 ]
  br label %29

29:                                               ; preds = %27, %44
  %30 = phi ptr [ %45, %44 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.elt_list, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !221
  %33 = getelementptr inbounds %struct.cselib_val_struct, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !194
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %8, %37
  br i1 %38, label %39, label %44, !prof !473

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.elt_list, ptr %30, i64 0, i32 1
  %41 = getelementptr inbounds %struct.cselib_val_struct, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !179
  tail call fastcc void @promote_debug_loc(ptr noundef %42) #16
  %43 = load ptr, ptr %40, align 8, !tbaa !221
  br label %109

44:                                               ; preds = %29
  %45 = load ptr, ptr %30, align 8, !tbaa !271
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %29, !prof !474, !llvm.loop !475

47:                                               ; preds = %44, %13, %24
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %109, label %49, !prof !476

49:                                               ; preds = %47
  %50 = icmp ult i32 %14, 53
  br i1 %50, label %51, label %59, !prof !477

51:                                               ; preds = %49
  %52 = zext i32 %8 to i64
  %53 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !185
  %55 = zext i8 %54 to i32
  %56 = load i32, ptr @max_value_regs, align 4, !tbaa !171
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %58, label %59, !prof !478

58:                                               ; preds = %51
  store i32 %55, ptr @max_value_regs, align 4, !tbaa !171
  br label %59

59:                                               ; preds = %51, %58, %49
  %60 = load i32, ptr @next_uid, align 4, !tbaa !171
  %61 = tail call fastcc ptr @new_cselib_val(i32 noundef %60, i32 noundef %6, ptr noundef nonnull %0) #16
  %62 = getelementptr inbounds %struct.cselib_val_struct, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !179
  %64 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %63, ptr noundef nonnull %0) #16
  store ptr %64, ptr %62, align 8, !tbaa !179
  %65 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %66 = getelementptr inbounds ptr, ptr %65, i64 %16
  %67 = load ptr, ptr %66, align 8, !tbaa !175
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %78, !prof !479

69:                                               ; preds = %59
  %70 = load ptr, ptr @used_regs, align 8, !tbaa !175
  %71 = load i32, ptr @n_used_regs, align 4, !tbaa !171
  %72 = add i32 %71, 1
  store i32 %72, ptr @n_used_regs, align 4, !tbaa !171
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  store i32 %14, ptr %74, align 4, !tbaa !171
  %75 = tail call fastcc ptr @new_elt_list(ptr noundef null, ptr noundef null) #16
  %76 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %77 = getelementptr inbounds ptr, ptr %76, i64 %16
  store ptr %75, ptr %77, align 8, !tbaa !175
  br label %78

78:                                               ; preds = %69, %59
  %79 = phi ptr [ %75, %69 ], [ %67, %59 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !271
  %81 = tail call fastcc ptr @new_elt_list(ptr noundef %80, ptr noundef nonnull %61) #16
  %82 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %83 = getelementptr inbounds ptr, ptr %82, i64 %16
  %84 = load ptr, ptr %83, align 8, !tbaa !175
  store ptr %81, ptr %84, align 8, !tbaa !271
  %85 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  %86 = load i32, ptr %61, align 8, !tbaa !279
  %87 = tail call ptr @htab_find_slot_with_hash(ptr noundef %85, ptr noundef nonnull %0, i32 noundef %86, i32 noundef 1) #17
  store ptr %61, ptr %87, align 8, !tbaa !175
  br label %109

88:                                               ; preds = %3
  %89 = tail call fastcc ptr @cselib_lookup_mem(ptr noundef nonnull %0, i32 noundef %2) #16
  br label %109

90:                                               ; preds = %3
  %91 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef nonnull %0, i32 noundef %2) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93, !prof !480

93:                                               ; preds = %90
  %94 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  %95 = tail call fastcc ptr @wrap_constant(i32 noundef %8, ptr noundef nonnull %0) #16
  %96 = icmp ne i32 %2, 0
  %97 = zext i1 %96 to i32
  %98 = tail call ptr @htab_find_slot_with_hash(ptr noundef %94, ptr noundef %95, i32 noundef %91, i32 noundef %97) #17
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100, !prof !481

100:                                              ; preds = %93
  %101 = load ptr, ptr %98, align 8, !tbaa !175
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %109, !prof !482

103:                                              ; preds = %100
  %104 = tail call fastcc ptr @new_cselib_val(i32 noundef %91, i32 noundef %8, ptr noundef nonnull %0) #16
  store ptr %104, ptr %98, align 8, !tbaa !175
  %105 = getelementptr inbounds %struct.cselib_val_struct, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !179
  %107 = tail call ptr @cselib_subst_to_values(ptr noundef nonnull %0) #16
  %108 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %106, ptr noundef %107) #16
  store ptr %108, ptr %105, align 8, !tbaa !179
  br label %109

109:                                              ; preds = %100, %93, %90, %39, %78, %47, %103, %88, %10
  %110 = phi ptr [ %12, %10 ], [ %89, %88 ], [ %104, %103 ], [ %43, %39 ], [ %61, %78 ], [ null, %47 ], [ null, %90 ], [ null, %93 ], [ %101, %100 ]
  ret ptr %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cselib_hash_rtx(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !483 !PGOFuncName !484 {
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
    i16 74, label %179
    i16 75, label %179
    i16 76, label %179
    i16 77, label %179
    i16 79, label %179
    i16 78, label %179
    i16 36, label %179
    i16 46, label %179
    i16 26, label %179
    i16 19, label %179
    i16 17, label %103
  ], !prof !485

9:                                                ; preds = %2, %2
  %10 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %1) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %179, label %12, !prof !486

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !279
  br label %179

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !185
  %19 = sub i32 %7, %18
  %20 = add i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 %20
  br label %179

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !185
  %26 = trunc i64 %25 to i32
  %27 = add nuw nsw i32 %7, 3840
  %28 = add i32 %27, %26
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 30, i32 %28, !prof !487
  br label %179

31:                                               ; preds = %2
  %32 = shl nuw nsw i32 %7, 1
  %33 = icmp eq i32 %6, 0
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %33, label %37, label %35, !prof !457

35:                                               ; preds = %31
  %36 = tail call i32 @real_hash(ptr noundef nonnull %34) #17
  br label %44

37:                                               ; preds = %31
  %38 = load i64, ptr %34, align 8, !tbaa !185
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load i64, ptr %40, align 8, !tbaa !185
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, %39
  br label %44

44:                                               ; preds = %37, %35
  %45 = phi i32 [ %36, %35 ], [ %43, %37 ]
  %46 = add i32 %45, %32
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 32, i32 %46, !prof !457
  br label %179

49:                                               ; preds = %2
  %50 = shl nuw nsw i32 %7, 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %52 = tail call i32 @fixed_hash(ptr noundef nonnull %51) #17
  %53 = add i32 %52, %50
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 31, i32 %53
  br label %179

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !185
  %59 = load i32, ptr %58, align 8, !tbaa !201
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %179

61:                                               ; preds = %56
  %62 = zext nneg i32 %59 to i64
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %71, %63 ]
  %65 = phi i32 [ %7, %61 ], [ %70, %63 ]
  %66 = load ptr, ptr %57, align 8, !tbaa !185
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !175
  %69 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %68, i32 noundef 0) #16
  %70 = add i32 %69, %65
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, %62
  br i1 %72, label %179, label %63, !llvm.loop !488

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !185
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !185
  %78 = add nuw nsw i32 %7, 5632
  %79 = add i32 %78, %77
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 44, i32 %79, !prof !489
  br label %179

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !185
  %85 = load i8, ptr %84, align 1, !tbaa !185
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %97, label %87, !prof !490

87:                                               ; preds = %82, %87
  %88 = phi i8 [ %95, %87 ], [ %85, %82 ]
  %89 = phi ptr [ %91, %87 ], [ %84, %82 ]
  %90 = phi i32 [ %94, %87 ], [ 0, %82 ]
  %91 = getelementptr inbounds i8, ptr %89, i64 1
  %92 = zext i8 %88 to i32
  %93 = mul i32 %90, 129
  %94 = add i32 %93, %92
  %95 = load i8, ptr %91, align 1, !tbaa !185
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %87, !prof !491, !llvm.loop !492

97:                                               ; preds = %87, %82
  %98 = phi i32 [ 0, %82 ], [ %94, %87 ]
  %99 = add nuw nsw i32 %7, 5760
  %100 = add i32 %99, %98
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 45, i32 %100, !prof !493
  br label %179

103:                                              ; preds = %2
  %104 = and i32 %3, 134217728
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %179

106:                                              ; preds = %2, %103
  %107 = zext nneg i32 %4 to i64
  %108 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !185
  %110 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !175
  %112 = icmp eq i8 %109, 0
  br i1 %112, label %172, label %113, !prof !494

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %115 = zext i8 %109 to i64
  br label %116

116:                                              ; preds = %113, %169
  %117 = phi i64 [ %115, %113 ], [ %119, %169 ]
  %118 = phi i32 [ %7, %113 ], [ %170, %169 ]
  %119 = add nsw i64 %117, -1
  %120 = getelementptr inbounds i8, ptr %111, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !185
  switch i8 %121, label %168 [
    i8 101, label %127
    i8 69, label %122
    i8 115, label %148
    i8 105, label %164
    i8 48, label %169
    i8 116, label %169
  ], !prof !495

122:                                              ; preds = %116
  %123 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %124 = load ptr, ptr %123, align 8, !tbaa !185
  %125 = load i32, ptr %124, align 8, !tbaa !201
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %133, label %169, !prof !418

127:                                              ; preds = %116
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %129 = load ptr, ptr %128, align 8, !tbaa !185
  %130 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %129, i32 noundef %1) #16
  %131 = icmp eq i32 %130, 0
  %132 = add i32 %130, %118
  br i1 %131, label %179, label %169

133:                                              ; preds = %122, %141
  %134 = phi i64 [ %143, %141 ], [ 0, %122 ]
  %135 = phi ptr [ %144, %141 ], [ %124, %122 ]
  %136 = phi i32 [ %142, %141 ], [ %118, %122 ]
  %137 = getelementptr inbounds %struct.rtvec_def, ptr %135, i64 0, i32 1, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !175
  %139 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %138, i32 noundef %1) #16
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %179, label %141

141:                                              ; preds = %133
  %142 = add i32 %139, %136
  %143 = add nuw nsw i64 %134, 1
  %144 = load ptr, ptr %123, align 8, !tbaa !185
  %145 = load i32, ptr %144, align 8, !tbaa !201
  %146 = sext i32 %145 to i64
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %133, label %169, !prof !496, !llvm.loop !497

148:                                              ; preds = %116
  %149 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %150 = load ptr, ptr %149, align 8, !tbaa !185
  %151 = icmp eq ptr %150, null
  br i1 %151, label %169, label %152

152:                                              ; preds = %148
  %153 = load i8, ptr %150, align 1, !tbaa !185
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %152, %155
  %156 = phi i8 [ %162, %155 ], [ %153, %152 ]
  %157 = phi ptr [ %159, %155 ], [ %150, %152 ]
  %158 = phi i32 [ %161, %155 ], [ %118, %152 ]
  %159 = getelementptr inbounds i8, ptr %157, i64 1
  %160 = zext i8 %156 to i32
  %161 = add i32 %158, %160
  %162 = load i8, ptr %159, align 1, !tbaa !185
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %169, label %155, !llvm.loop !498

164:                                              ; preds = %116
  %165 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %166 = load i32, ptr %165, align 8, !tbaa !185
  %167 = add i32 %166, %118
  br label %169

168:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.1) #17
  br label %169

169:                                              ; preds = %155, %141, %152, %122, %148, %164, %168, %127, %116, %116
  %170 = phi i32 [ %118, %168 ], [ %118, %116 ], [ %118, %116 ], [ %167, %164 ], [ %132, %127 ], [ %118, %148 ], [ %118, %122 ], [ %118, %152 ], [ %142, %141 ], [ %161, %155 ]
  %171 = icmp sgt i64 %117, 1
  br i1 %171, label %116, label %172, !prof !499, !llvm.loop !500

172:                                              ; preds = %169, %106
  %173 = phi i32 [ %7, %106 ], [ %170, %169 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179, !prof !501

175:                                              ; preds = %172
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 65535
  %178 = add nuw nsw i32 %177, 1
  br label %179

179:                                              ; preds = %63, %127, %133, %56, %175, %172, %103, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %9, %97, %73, %49, %44, %23, %14, %12
  %180 = phi i32 [ %102, %97 ], [ %81, %73 ], [ %55, %49 ], [ %48, %44 ], [ %30, %23 ], [ %22, %14 ], [ %13, %12 ], [ 0, %9 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %103 ], [ %178, %175 ], [ %173, %172 ], [ %7, %56 ], [ 0, %133 ], [ 0, %127 ], [ %70, %63 ]
  ret i32 %180
}

; Function Attrs: optsize
declare i32 @real_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_invalidate_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !502 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi ptr [ %0, %1 ], [ %10, %8 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %16 [
    i16 39, label %6
    i16 120, label %6
    i16 40, label %6
    i16 37, label %11
    i16 43, label %15
  ], !prof !503

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %8

8:                                                ; preds = %16, %6
  %9 = phi ptr [ %7, %6 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %16 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  br label %2, !llvm.loop !504

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #16
  %13 = lshr i32 %4, 16
  %14 = and i32 %13, 255
  tail call fastcc void @cselib_invalidate_regno(i32 noundef %12, i32 noundef %14) #16
  br label %16

15:                                               ; preds = %2
  tail call fastcc void @cselib_invalidate_mem(ptr noundef nonnull %3) #16
  br label %16

16:                                               ; preds = %2, %15, %11
  %17 = load i32, ptr %3, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @push_operand(ptr noundef nonnull %3, i32 noundef %19) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %8, !prof !505

22:                                               ; preds = %16
  ret void
}

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_process_insn(ptr noundef %0) local_unnamed_addr #0 !prof !506 {
  store ptr %0, ptr @cselib_current_insn, align 8, !tbaa !175
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %9 [
    i16 12, label %22
    i16 10, label %4
  ], !prof !507

4:                                                ; preds = %1
  %5 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 30, ptr noundef null) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22, !prof !508

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %2, %1 ]
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %24, !prof !509

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %19, label %51, !prof !510

19:                                               ; preds = %13
  %20 = and i32 %16, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %1, %19, %4
  %23 = load i32, ptr @next_uid, align 4, !tbaa !171
  tail call void @cselib_reset_table(i32 noundef %23) #16
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !175
  br label %90

24:                                               ; preds = %9
  %25 = add nsw i32 %11, -7
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %28, label %27, !prof !511

27:                                               ; preds = %24
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !175
  br label %90

28:                                               ; preds = %24
  %29 = icmp eq i32 %11, 10
  br i1 %29, label %30, label %51, !prof !512

30:                                               ; preds = %28, %39
  %31 = phi i64 [ %40, %39 ], [ 0, %28 ]
  %32 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !185
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35, !prof !513

35:                                               ; preds = %30
  %36 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %31
  %37 = load i32, ptr %36, align 4, !tbaa !171
  %38 = trunc i64 %31 to i32
  tail call fastcc void @cselib_invalidate_regno(i32 noundef %38, i32 noundef %37) #16
  br label %39

39:                                               ; preds = %30, %35
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, 53
  br i1 %41, label %42, label %30, !prof !514, !llvm.loop !515

42:                                               ; preds = %39
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 33554432
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %43, -2080374784
  %47 = icmp eq i32 %46, 0
  %48 = or i1 %45, %47
  br i1 %48, label %49, label %51, !prof !516

49:                                               ; preds = %42
  %50 = load ptr, ptr @callmem, align 8, !tbaa !175
  tail call fastcc void @cselib_invalidate_mem(ptr noundef %50) #16
  br label %51

51:                                               ; preds = %42, %19, %13, %49, %28
  tail call fastcc void @cselib_record_sets(ptr noundef nonnull %0) #16
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %73, !prof !517

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !185
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59, !prof !518

59:                                               ; preds = %55, %69
  %60 = phi ptr [ %71, %69 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !185
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 25
  br i1 %65, label %66, label %69, !prof !519

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !185
  tail call void @cselib_invalidate_rtx(ptr noundef %68) #16
  br label %69

69:                                               ; preds = %59, %66
  %70 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !185
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %59, !prof !520, !llvm.loop !521

73:                                               ; preds = %69, %55, %51
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !175
  %74 = load i32, ptr @n_useless_values, align 4, !tbaa !171
  %75 = icmp sgt i32 %74, 32
  br i1 %75, label %76, label %90, !prof !522

76:                                               ; preds = %73
  %77 = zext nneg i32 %74 to i64
  %78 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  %79 = getelementptr inbounds %struct.htab, ptr %78, i64 0, i32 5
  %80 = load i64, ptr %79, align 8, !tbaa !523
  %81 = getelementptr inbounds %struct.htab, ptr %78, i64 0, i32 6
  %82 = load i64, ptr %81, align 8, !tbaa !525
  %83 = load i32, ptr @n_debug_values, align 4, !tbaa !171
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = sub i64 %80, %85
  %87 = lshr i64 %86, 2
  %88 = icmp ult i64 %87, %77
  br i1 %88, label %89, label %90, !prof !526

89:                                               ; preds = %76
  tail call fastcc void @remove_useless_values() #16
  br label %90

90:                                               ; preds = %73, %76, %89, %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_record_sets(ptr noundef %0) unnamed_addr #0 !prof !527 !PGOFuncName !528 {
  %2 = alloca [106 x %struct.cselib_set], align 16
  call void @llvm.lifetime.start.p0(i64 3392, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 14
  br i1 %7, label %8, label %14, !prof !529

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !185
  %13 = load i32, ptr %12, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ %13, %8 ], [ %5, %1 ]
  %16 = phi ptr [ %10, %8 ], [ null, %1 ]
  %17 = phi ptr [ %12, %8 ], [ %4, %1 ]
  %18 = trunc i32 %15 to i16
  switch i16 %18, label %144 [
    i16 23, label %19
    i16 15, label %25
  ], !prof !530

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !185
  store ptr %22, ptr %2, align 16, !tbaa !531
  %23 = load ptr, ptr %20, align 8, !tbaa !185
  %24 = getelementptr inbounds %struct.cselib_set, ptr %2, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !533
  br label %57

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !185
  %28 = load i32, ptr %27, align 8, !tbaa !201
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %144, !prof !534

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %50
  %33 = phi i64 [ %31, %30 ], [ %35, %50 ]
  %34 = phi i32 [ 0, %30 ], [ %51, %50 ]
  %35 = add nsw i64 %33, -1
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !175
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %41, label %50, !prof !535

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !185
  %45 = sext i32 %34 to i64
  %46 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %45
  store ptr %44, ptr %46, align 16, !tbaa !531
  %47 = load ptr, ptr %42, align 8, !tbaa !185
  %48 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %45, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !533
  %49 = add nsw i32 %34, 1
  br label %50

50:                                               ; preds = %41, %32
  %51 = phi i32 [ %49, %41 ], [ %34, %32 ]
  %52 = icmp ugt i64 %33, 1
  br i1 %52, label %32, label %53, !prof !536, !llvm.loop !537

53:                                               ; preds = %50
  %54 = icmp eq i32 %51, 1
  br i1 %54, label %55, label %78, !prof !538

55:                                               ; preds = %53
  %56 = load ptr, ptr %2, align 16, !tbaa !531
  br label %57

57:                                               ; preds = %55, %19
  %58 = phi ptr [ %56, %55 ], [ %22, %19 ]
  %59 = load i32, ptr %58, align 8
  %60 = load i8, ptr @cselib_record_memory, align 1
  %61 = icmp ne i8 %60, 0
  %62 = and i32 %59, 67174399
  %63 = icmp ne i32 %62, 67108907
  %64 = select i1 %63, i1 true, i1 %61
  br i1 %64, label %80, label %65, !prof !539

65:                                               ; preds = %57
  %66 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %0) #17
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68, !prof !540

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !185
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !171
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %80, !prof !541

77:                                               ; preds = %68
  store ptr %70, ptr %2, align 16, !tbaa !531
  br label %80

78:                                               ; preds = %53
  %79 = icmp sgt i32 %51, 0
  br i1 %79, label %80, label %144, !prof !542

80:                                               ; preds = %57, %77, %68, %65, %78
  %81 = phi i32 [ %51, %78 ], [ 1, %65 ], [ 1, %68 ], [ 1, %77 ], [ 1, %57 ]
  %82 = zext nneg i32 %81 to i64
  br label %83

83:                                               ; preds = %80, %141
  %84 = phi i64 [ 0, %80 ], [ %142, %141 ]
  %85 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %84
  %86 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %84, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !533
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 40
  br i1 %90, label %91, label %96, !prof !543

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !185
  store ptr %93, ptr %86, align 8, !tbaa !533
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  br label %96

96:                                               ; preds = %91, %83
  %97 = phi i32 [ %95, %91 ], [ %89, %83 ]
  %98 = phi i32 [ %94, %91 ], [ %88, %83 ]
  %99 = phi ptr [ %93, %91 ], [ %87, %83 ]
  %100 = icmp eq i32 %97, 37
  br i1 %100, label %106, label %101, !prof !544

101:                                              ; preds = %96
  %102 = icmp eq i32 %97, 43
  %103 = load i8, ptr @cselib_record_memory, align 1
  %104 = icmp ne i8 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %141, !prof !545

106:                                              ; preds = %101, %96
  %107 = icmp eq ptr %16, null
  %108 = load ptr, ptr %85, align 16, !tbaa !531
  br i1 %107, label %114, label %109, !prof !546

109:                                              ; preds = %106
  %110 = lshr i32 %98, 16
  %111 = and i32 %110, 255
  %112 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %111, ptr noundef nonnull %16, ptr noundef %108, ptr noundef nonnull %99) #17
  %113 = load i32, ptr %99, align 8
  br label %114

114:                                              ; preds = %109, %106
  %115 = phi i32 [ %113, %109 ], [ %98, %106 ]
  %116 = phi ptr [ %112, %109 ], [ %108, %106 ]
  %117 = lshr i32 %115, 16
  %118 = and i32 %117, 255
  %119 = tail call ptr @cselib_lookup(ptr noundef %116, i32 noundef %118, i32 noundef 1) #16
  %120 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %84, i32 2
  store ptr %119, ptr %120, align 16, !tbaa !547
  %121 = load i32, ptr %99, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 43
  br i1 %123, label %124, label %138, !prof !548

124:                                              ; preds = %114
  %125 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !549
  %126 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %127 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !185
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130, !prof !550

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.mem_attrs, ptr %128, i64 0, i32 5
  %132 = load i8, ptr %131, align 8, !tbaa !551
  br label %133

133:                                              ; preds = %124, %130
  %134 = phi i8 [ %132, %130 ], [ 0, %124 ]
  %135 = tail call i32 %125(i8 noundef zeroext %134) #17
  %136 = load ptr, ptr %126, align 8, !tbaa !185
  %137 = tail call ptr @cselib_lookup(ptr noundef %136, i32 noundef %135, i32 noundef 1) #16
  br label %138

138:                                              ; preds = %114, %133
  %139 = phi ptr [ %137, %133 ], [ null, %114 ]
  %140 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %84, i32 3
  store ptr %139, ptr %140, align 8, !tbaa !553
  br label %141

141:                                              ; preds = %138, %101
  %142 = add nuw nsw i64 %84, 1
  %143 = icmp eq i64 %142, %82
  br i1 %143, label %144, label %83, !prof !554, !llvm.loop !555

144:                                              ; preds = %141, %25, %14, %78
  %145 = phi i1 [ false, %78 ], [ false, %14 ], [ false, %25 ], [ true, %141 ]
  %146 = phi i32 [ %51, %78 ], [ 0, %14 ], [ 0, %25 ], [ %81, %141 ]
  %147 = load ptr, ptr @cselib_record_sets_hook, align 8, !tbaa !175
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149, !prof !556

149:                                              ; preds = %144
  call void %147(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %146) #17
  br label %150

150:                                              ; preds = %149, %144
  call void @note_stores(ptr noundef nonnull %17, ptr noundef nonnull @cselib_invalidate_rtx_note_stores, ptr noundef null) #17
  %151 = icmp sgt i32 %146, 1
  br i1 %151, label %152, label %185, !prof !557

152:                                              ; preds = %150
  %153 = call i32 @asm_noperands(ptr noundef nonnull %17) #17
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %155, label %185, !prof !558

155:                                              ; preds = %152
  %156 = zext nneg i32 %146 to i64
  %157 = zext nneg i32 %146 to i64
  br label %158

158:                                              ; preds = %155, %181
  %159 = phi i64 [ 0, %155 ], [ %182, %181 ]
  %160 = phi i64 [ 1, %155 ], [ %183, %181 ]
  %161 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %159, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !533
  %163 = load i32, ptr %162, align 8
  %164 = trunc i32 %163 to i16
  switch i16 %164, label %165 [
    i16 37, label %167
    i16 43, label %167
  ]

165:                                              ; preds = %158
  %166 = add nuw nsw i64 %159, 1
  br label %181

167:                                              ; preds = %158, %158
  %168 = add nuw nsw i64 %159, 1
  %169 = icmp slt i64 %168, %156
  br i1 %169, label %170, label %181

170:                                              ; preds = %167, %178
  %171 = phi i64 [ %179, %178 ], [ %160, %167 ]
  %172 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %171, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !533
  %174 = call i32 @rtx_equal_p(ptr noundef nonnull %162, ptr noundef %173) #17
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr @global_rtl, align 16, !tbaa !175
  store ptr %177, ptr %161, align 8, !tbaa !533
  store ptr %177, ptr %172, align 8, !tbaa !533
  br label %178

178:                                              ; preds = %170, %176
  %179 = add nuw nsw i64 %171, 1
  %180 = icmp eq i64 %179, %157
  br i1 %180, label %181, label %170, !llvm.loop !559

181:                                              ; preds = %178, %165, %167
  %182 = phi i64 [ %166, %165 ], [ %168, %167 ], [ %168, %178 ]
  %183 = add nuw nsw i64 %160, 1
  %184 = icmp eq i64 %182, %157
  br i1 %184, label %185, label %158, !llvm.loop !560

185:                                              ; preds = %181, %152, %150
  br i1 %145, label %186, label %208, !prof !561

186:                                              ; preds = %185
  %187 = zext nneg i32 %146 to i64
  br label %188

188:                                              ; preds = %186, %205
  %189 = phi i64 [ 0, %186 ], [ %206, %205 ]
  %190 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %189, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !533
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 37
  br i1 %194, label %200, label %195, !prof !544

195:                                              ; preds = %188
  %196 = icmp eq i32 %193, 43
  %197 = load i8, ptr @cselib_record_memory, align 1
  %198 = icmp ne i8 %197, 0
  %199 = select i1 %196, i1 %198, i1 false
  br i1 %199, label %200, label %205, !prof !545

200:                                              ; preds = %195, %188
  %201 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %189, i32 2
  %202 = load ptr, ptr %201, align 16, !tbaa !547
  %203 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %189, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !553
  call fastcc void @cselib_record_set(ptr noundef nonnull %191, ptr noundef %202, ptr noundef %204) #16
  br label %205

205:                                              ; preds = %200, %195
  %206 = add nuw nsw i64 %189, 1
  %207 = icmp eq i64 %206, %187
  br i1 %207, label %208, label %188, !prof !554, !llvm.loop !562

208:                                              ; preds = %205, %185
  call void @llvm.lifetime.end.p0(i64 3392, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cselib_invalidate_rtx_note_stores(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !563 !PGOFuncName !564 {
  tail call void @cselib_invalidate_rtx(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_record_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !565 !PGOFuncName !566 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %9, !prof !567

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i32 [ %8, %7 ], [ -1, %3 ]
  %11 = icmp eq ptr %1, null
  br i1 %11, label %94, label %12, !prof !568

12:                                               ; preds = %9
  %13 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %94, !prof !569

15:                                               ; preds = %12
  %16 = icmp sgt i32 %10, -1
  br i1 %16, label %17, label %71, !prof !570

17:                                               ; preds = %15
  %18 = icmp ult i32 %10, 53
  %19 = zext nneg i32 %10 to i64
  br i1 %18, label %20, label %31, !prof !571

20:                                               ; preds = %17
  %21 = load i32, ptr %0, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %19, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !185
  %27 = zext i8 %26 to i32
  %28 = load i32, ptr @max_value_regs, align 4, !tbaa !171
  %29 = icmp ult i32 %28, %27
  br i1 %29, label %30, label %31, !prof !572

30:                                               ; preds = %20
  store i32 %27, ptr @max_value_regs, align 4, !tbaa !171
  br label %31

31:                                               ; preds = %17, %20, %30
  %32 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %33 = getelementptr inbounds ptr, ptr %32, i64 %19
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45, !prof !573

36:                                               ; preds = %31
  %37 = load ptr, ptr @used_regs, align 8, !tbaa !175
  %38 = load i32, ptr @n_used_regs, align 4, !tbaa !171
  %39 = add i32 %38, 1
  store i32 %39, ptr @n_used_regs, align 4, !tbaa !171
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  store i32 %10, ptr %41, align 4, !tbaa !171
  %42 = tail call fastcc ptr @new_elt_list(ptr noundef null, ptr noundef nonnull %1) #16
  %43 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %44 = getelementptr inbounds ptr, ptr %43, i64 %19
  store ptr %42, ptr %44, align 8, !tbaa !175
  br label %56

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.elt_list, ptr %34, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !221
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49, !prof !574

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1993, ptr noundef nonnull @.str.1) #17
  %50 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %51 = getelementptr inbounds ptr, ptr %50, i64 %19
  %52 = load ptr, ptr %51, align 8, !tbaa !175
  br label %53

53:                                               ; preds = %45, %49
  %54 = phi ptr [ %34, %45 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.elt_list, ptr %54, i64 0, i32 1
  store ptr %1, ptr %55, align 8, !tbaa !221
  br label %56

56:                                               ; preds = %53, %36
  %57 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !179
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69, !prof !575

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !194
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 67108864
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69, !prof !576

66:                                               ; preds = %60
  %67 = load i32, ptr @n_useless_values, align 4, !tbaa !171
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr @n_useless_values, align 4, !tbaa !171
  br label %69

69:                                               ; preds = %66, %60, %56
  %70 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %58, ptr noundef nonnull %0) #16
  store ptr %70, ptr %57, align 8, !tbaa !179
  br label %94

71:                                               ; preds = %15
  %72 = load i32, ptr %0, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 43
  %75 = icmp ne ptr %2, null
  %76 = and i1 %75, %74
  %77 = load i8, ptr @cselib_record_memory, align 1
  %78 = icmp ne i8 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %94, !prof !577

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !179
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %93, !prof !578

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !194
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 67108864
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, ptr @n_useless_values, align 4, !tbaa !171
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr @n_useless_values, align 4, !tbaa !171
  br label %93

93:                                               ; preds = %90, %84, %80
  tail call fastcc void @add_mem_for_addr(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %0) #16
  br label %94

94:                                               ; preds = %69, %93, %71, %9, %12
  ret void
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_init(i32 noundef %0) local_unnamed_addr #0 !prof !579 {
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.13, i64 noundef 16, i64 noundef 10) #17
  store ptr %2, ptr @elt_list_pool, align 8, !tbaa !175
  %3 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.14, i64 noundef 24, i64 noundef 10) #17
  store ptr %3, ptr @elt_loc_list_pool, align 8, !tbaa !175
  %4 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.15, i64 noundef 40, i64 noundef 10) #17
  store ptr %4, ptr @cselib_val_pool, align 8, !tbaa !175
  %5 = load i8, ptr getelementptr inbounds ([139 x i8], ptr @rtx_code_size, i64 0, i64 1), align 1, !tbaa !185
  %6 = zext i8 %5 to i64
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.16, i64 noundef %6, i64 noundef 100) #17
  store ptr %7, ptr @value_pool, align 8, !tbaa !175
  %8 = trunc i32 %0 to i8
  %9 = and i8 %8, 1
  store i8 %9, ptr @cselib_record_memory, align 1, !tbaa !185
  %10 = and i8 %8, 2
  store i8 %10, ptr @cselib_preserve_constants, align 1, !tbaa !185
  %11 = load ptr, ptr @callmem, align 8, !tbaa !175
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !580

13:                                               ; preds = %1
  %14 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 0) #17
  %15 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %14) #17
  store ptr %15, ptr @callmem, align 8, !tbaa !175
  br label %16

16:                                               ; preds = %13, %1
  %17 = tail call i32 @max_reg_num() #17
  store i32 %17, ptr @cselib_nregs, align 4, !tbaa !171
  %18 = load ptr, ptr @reg_values, align 8, !tbaa !175
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20, !prof !580

20:                                               ; preds = %16
  %21 = load i32, ptr @reg_values_size, align 4, !tbaa !171
  %22 = icmp ult i32 %21, %17
  br i1 %22, label %28, label %23, !prof !581

23:                                               ; preds = %20
  %24 = icmp ugt i32 %21, 10
  %25 = shl i32 %17, 2
  %26 = icmp ugt i32 %21, %25
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %36, !prof !582

28:                                               ; preds = %23, %20
  tail call void @free(ptr noundef nonnull %18) #16
  br label %29

29:                                               ; preds = %16, %28
  %30 = add i32 %17, 63
  %31 = lshr i32 %30, 4
  %32 = add i32 %31, %17
  store i32 %32, ptr @reg_values_size, align 4, !tbaa !171
  %33 = zext i32 %32 to i64
  %34 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 8) #17
  store ptr %34, ptr @reg_values, align 8, !tbaa !175
  %35 = load i32, ptr @cselib_nregs, align 4, !tbaa !171
  br label %36

36:                                               ; preds = %29, %23
  %37 = phi i32 [ %35, %29 ], [ %17, %23 ]
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2
  %40 = tail call ptr @xmalloc(i64 noundef %39) #17
  store ptr %40, ptr @used_regs, align 8, !tbaa !175
  store i32 0, ptr @n_used_regs, align 4, !tbaa !171
  %41 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @get_value_hash, ptr noundef nonnull @entry_and_rtx_equal_p, ptr noundef null) #17
  store ptr %41, ptr @cselib_hash_table, align 8, !tbaa !175
  store i32 1, ptr @next_uid, align 4, !tbaa !171
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @get_value_hash(ptr nocapture noundef readonly %0) #2 !prof !583 !PGOFuncName !584 {
  %2 = load i32, ptr %0, align 8, !tbaa !279
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @entry_and_rtx_equal_p(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !585 !PGOFuncName !586 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = and i32 %3, 65535
  %7 = and i32 %3, 65534
  %8 = icmp eq i32 %7, 30
  br i1 %8, label %13, label %9, !prof !587

9:                                                ; preds = %2
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %11, label %14, !prof !588

11:                                               ; preds = %9
  %12 = icmp eq i32 %6, 32
  br i1 %12, label %13, label %14, !prof !589

13:                                               ; preds = %2, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #17
  br label %14

14:                                               ; preds = %9, %11, %13
  %15 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %5, %19
  br i1 %20, label %21, label %46, !prof !590

21:                                               ; preds = %14
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %25, label %33, !prof !591

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !185
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -30
  %31 = icmp ult i32 %30, 3
  %32 = select i1 %31, ptr %27, ptr %1, !prof !592
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi ptr [ %1, %21 ], [ %32, %25 ]
  %35 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 3
  br label %36

36:                                               ; preds = %40, %33
  %37 = phi ptr [ %35, %33 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !175
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40, !prof !593

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.elt_loc_list, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !181
  %43 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %42, ptr noundef %34) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %45, !prof !594, !llvm.loop !595

45:                                               ; preds = %40
  tail call fastcc void @promote_debug_loc(ptr noundef nonnull %38) #16
  br label %46

46:                                               ; preds = %36, %14, %45
  %47 = phi i32 [ 1, %45 ], [ 0, %14 ], [ 0, %36 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_finish() local_unnamed_addr #0 !prof !579 {
  store ptr null, ptr @cselib_discard_hook, align 8, !tbaa !175
  store i8 0, ptr @cselib_preserve_constants, align 1, !tbaa !185
  store ptr null, ptr @cfa_base_preserved_val, align 8, !tbaa !175
  %1 = load ptr, ptr @elt_list_pool, align 8, !tbaa !175
  tail call void @free_alloc_pool(ptr noundef %1) #17
  %2 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !175
  tail call void @free_alloc_pool(ptr noundef %2) #17
  %3 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !175
  tail call void @free_alloc_pool(ptr noundef %3) #17
  %4 = load ptr, ptr @value_pool, align 8, !tbaa !175
  tail call void @free_alloc_pool(ptr noundef %4) #17
  tail call void @cselib_clear_table() #16
  %5 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  tail call void @htab_delete(ptr noundef %5) #17
  %6 = load ptr, ptr @used_regs, align 8, !tbaa !175
  tail call void @free(ptr noundef %6) #16
  store ptr null, ptr @used_regs, align 8, !tbaa !175
  store ptr null, ptr @cselib_hash_table, align 8, !tbaa !175
  store i32 0, ptr @n_useless_values, align 4, !tbaa !171
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !171
  store i32 0, ptr @n_debug_values, align 4, !tbaa !171
  store i32 0, ptr @next_uid, align 4, !tbaa !171
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cselib_table(ptr noundef %0) local_unnamed_addr #0 !prof !190 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %0)
  %3 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !175
  tail call void @htab_traverse(ptr noundef %3, ptr noundef nonnull @dump_cselib_val, ptr noundef %0) #17
  %4 = load ptr, ptr @first_containing_mem, align 8, !tbaa !175
  %5 = icmp eq ptr %4, @dummy_val
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.18, ptr noundef %0) #16
  %8 = load ptr, ptr @first_containing_mem, align 8, !tbaa !175
  %9 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  tail call void @print_inline_rtx(ptr noundef %0, ptr noundef %10, i32 noundef 2) #17
  %11 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #16
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i32, ptr @next_uid, align 4, !tbaa !171
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %13) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_cselib_val(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !190 !PGOFuncName !596 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %5, i32 noundef 0) #17
  %6 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.20, ptr noundef %1) #16
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %7, %9 ], [ %21, %12 ]
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !228
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !185
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %17) #16
  %19 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !181
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %20, i32 noundef 4) #17
  %21 = load ptr, ptr %13, align 8, !tbaa !192
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !597

23:                                               ; preds = %12
  %24 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  %25 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !297
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %35

28:                                               ; preds = %2
  %29 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %1) #16
  %30 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !297
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  br label %35

35:                                               ; preds = %23, %33
  %36 = phi ptr [ %31, %33 ], [ %26, %23 ]
  %37 = tail call i32 @fputs(ptr noundef nonnull @.str.23, ptr noundef %1) #16
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %36, %35 ], [ %45, %38 ]
  %40 = tail call i32 @fputs(ptr noundef nonnull @.str.24, ptr noundef %1) #16
  %41 = getelementptr inbounds %struct.elt_list, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !221
  %43 = getelementptr inbounds %struct.cselib_val_struct, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !194
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %44, i32 noundef 2) #17
  %45 = load ptr, ptr %39, align 8, !tbaa !271
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !598

47:                                               ; preds = %38
  %48 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  br label %51

49:                                               ; preds = %28, %23
  %50 = tail call i32 @fputs(ptr noundef nonnull @.str.25, ptr noundef %1) #16
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i1 [ true, %49 ], [ false, %47 ]
  %53 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !242
  %55 = icmp eq ptr %54, @dummy_val
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = tail call i32 @fputs(ptr noundef nonnull @.str.26, ptr noundef %1) #16
  br label %69

58:                                               ; preds = %51
  %59 = icmp eq ptr %54, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = tail call i32 @fputs(ptr noundef nonnull @.str.27, ptr noundef %1) #16
  %62 = load ptr, ptr %53, align 8, !tbaa !242
  %63 = getelementptr inbounds %struct.cselib_val_struct, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !194
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %64, i32 noundef 2) #17
  %65 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  br label %69

66:                                               ; preds = %58
  br i1 %52, label %67, label %69

67:                                               ; preds = %66
  %68 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  br label %69

69:                                               ; preds = %60, %67, %66, %56
  ret i32 1
}

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!168}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!36 = !{ptr @cselib_clear_table, ptr @cselib_reset_table, i64 1455207}
!37 = !{ptr @cselib_reset_table, ptr @rhs_regno, i64 1}
!38 = !{ptr @cselib_reset_table, ptr @fancy_abort, i64 1}
!39 = !{ptr @cselib_reset_table, ptr @htab_traverse, i64 1}
!40 = !{ptr @cselib_reset_table, ptr @htab_empty, i64 2350919}
!41 = !{ptr @references_value_p, ptr @references_value_p, i64 120451}
!42 = !{ptr @cselib_invalidate_regno, ptr @fancy_abort, i64 2}
!43 = !{ptr @cselib_invalidate_regno, ptr @end_hard_regno, i64 38293476}
!44 = !{ptr @cselib_invalidate_regno, ptr @unchain_one_elt_list, i64 764429}
!45 = !{ptr @cselib_invalidate_regno, ptr @rhs_regno, i64 1833423}
!46 = !{ptr @cselib_invalidate_regno, ptr @unchain_one_elt_loc_list, i64 1722217}
!47 = !{ptr @cselib_invalidate_mem, ptr @get_addr, i64 2467865}
!48 = !{ptr @cselib_invalidate_mem, ptr @canon_rtx, i64 4935730}
!49 = !{ptr @cselib_invalidate_mem, ptr @canon_true_dependence, i64 1962912}
!50 = !{ptr @cselib_invalidate_mem, ptr @cselib_lookup, i64 728383}
!51 = !{ptr @cselib_invalidate_mem, ptr @unchain_one_elt_list, i64 728383}
!52 = !{ptr @cselib_invalidate_mem, ptr @unchain_one_elt_loc_list, i64 728383}
!53 = !{ptr @remove_useless_values, ptr @htab_traverse, i64 2003}
!54 = !{ptr @remove_useless_values, ptr @fancy_abort, i64 1}
!55 = !{ptr @unchain_one_elt_list, ptr @pool_free, i64 1492827}
!56 = !{ptr @unchain_one_elt_loc_list, ptr @pool_free, i64 2470644}
!57 = !{ptr @cselib_lookup, ptr @cselib_lookup_1, i64 32028282}
!58 = !{ptr @discard_useless_locs, ptr @references_value_p, i64 68853}
!59 = !{ptr @discard_useless_locs, ptr @unchain_one_elt_loc_list, i64 19843}
!60 = !{ptr @discard_useless_values, ptr @htab_clear_slot, i64 42555}
!61 = !{ptr @discard_useless_values, ptr @unchain_one_value, i64 42555}
!62 = !{ptr @unchain_one_value, ptr @unchain_one_elt_list, i64 17}
!63 = !{ptr @unchain_one_value, ptr @pool_free, i64 42556}
!64 = !{ptr @cselib_reg_set_mode, ptr @rhs_regno, i64 1232017}
!65 = !{ptr @rtx_equal_for_cselib_p, ptr @cselib_lookup, i64 4459507}
!66 = !{ptr @rtx_equal_for_cselib_p, ptr @rtx_equal_for_cselib_p, i64 3827605}
!67 = !{ptr @rtx_equal_for_cselib_p, ptr @strcmp, i64 21849}
!68 = !{ptr @rtx_equal_for_cselib_p, ptr @fancy_abort, i64 1}
!69 = !{ptr @cselib_expand_value_rtx, ptr @cselib_expand_value_rtx_1, i64 944360}
!70 = !{ptr @cselib_expand_value_rtx_1, ptr @rhs_regno, i64 1013206}
!71 = !{ptr @cselib_expand_value_rtx_1, ptr @bitmap_set_bit, i64 223831}
!72 = !{ptr @cselib_expand_value_rtx_1, ptr @expand_loc, i64 259500}
!73 = !{ptr @cselib_expand_value_rtx_1, ptr @bitmap_clear_bit, i64 223831}
!74 = !{ptr @cselib_expand_value_rtx_1, ptr @shared_const_p, i64 1871}
!75 = !{ptr @cselib_expand_value_rtx_1, ptr @cselib_expand_value_rtx_1, i64 1181502}
!76 = !{ptr @cselib_expand_value_rtx_1, ptr @simplify_gen_subreg, i64 154}
!77 = !{ptr @cselib_expand_value_rtx_1, ptr @shallow_copy_rtx_stat, i64 599865}
!78 = !{ptr @cselib_expand_value_rtx_1, ptr @rtvec_alloc, i64 1}
!79 = !{ptr @cselib_expand_value_rtx_1, ptr @fancy_abort, i64 1}
!80 = !{ptr @cselib_expand_value_rtx_1, ptr @simplify_unary_operation, i64 1}
!81 = !{ptr @cselib_expand_value_rtx_1, ptr @simplify_ternary_operation, i64 1}
!82 = !{ptr @cselib_expand_value_rtx_1, ptr @simplify_rtx, i64 590665}
!83 = !{ptr @expand_loc, ptr @rhs_regno, i64 1355960}
!84 = !{ptr @expand_loc, ptr @bitmap_bit_p, i64 645060}
!85 = !{ptr @expand_loc, ptr @print_inline_rtx, i64 1}
!86 = !{ptr @expand_loc, ptr @fputc, i64 1}
!87 = !{ptr @expand_loc, ptr @cselib_expand_value_rtx_1, i64 100416}
!88 = !{ptr @expand_loc, ptr @fprintf, i64 1}
!89 = !{ptr @cselib_subst_to_values, ptr @rhs_regno, i64 3522519}
!90 = !{ptr @cselib_subst_to_values, ptr @fancy_abort, i64 27520}
!91 = !{ptr @cselib_subst_to_values, ptr @cselib_lookup_mem, i64 183085}
!92 = !{ptr @cselib_subst_to_values, ptr @cselib_subst_to_values, i64 7193631}
!93 = !{ptr @cselib_subst_to_values, ptr @shallow_copy_rtx_stat, i64 3511445}
!94 = !{ptr @cselib_subst_to_values, ptr @shallow_copy_rtvec, i64 229}
!95 = !{ptr @cselib_subst_to_values, ptr @new_cselib_val, i64 7}
!96 = !{ptr @cselib_lookup_mem, ptr @cselib_lookup, i64 3720015}
!97 = !{ptr @cselib_lookup_mem, ptr @promote_debug_loc, i64 627055}
!98 = !{ptr @cselib_lookup_mem, ptr @new_cselib_val, i64 614510}
!99 = !{ptr @cselib_lookup_mem, ptr @add_mem_for_addr, i64 614510}
!100 = !{ptr @cselib_lookup_mem, ptr @wrap_constant, i64 614510}
!101 = !{ptr @cselib_lookup_mem, ptr @htab_find_slot_with_hash, i64 614510}
!102 = !{ptr @new_cselib_val, ptr @pool_alloc, i64 14787050}
!103 = !{ptr @new_cselib_val, ptr @fancy_abort, i64 2}
!104 = !{ptr @add_mem_for_addr, ptr @promote_debug_loc, i64 1}
!105 = !{ptr @add_mem_for_addr, ptr @new_elt_list, i64 1182518}
!106 = !{ptr @add_mem_for_addr, ptr @replace_equiv_address_nv, i64 1182518}
!107 = !{ptr @add_mem_for_addr, ptr @new_elt_loc_list, i64 1182518}
!108 = !{ptr @wrap_constant, ptr @fancy_abort, i64 1}
!109 = !{ptr @wrap_constant, ptr @gen_rtx_fmt_e_stat, i64 1075888}
!110 = !{ptr @new_elt_list, ptr @pool_alloc, i64 8446513}
!111 = !{ptr @new_elt_loc_list, ptr @pool_alloc, i64 11234989}
!112 = !{ptr @new_elt_loc_list, ptr @fancy_abort, i64 1}
!113 = !{ptr @cselib_lookup_1, ptr @rhs_regno, i64 17159317}
!114 = !{ptr @cselib_lookup_1, ptr @promote_debug_loc, i64 10882444}
!115 = !{ptr @cselib_lookup_1, ptr @new_cselib_val, i64 6502238}
!116 = !{ptr @cselib_lookup_1, ptr @new_elt_loc_list, i64 6502238}
!117 = !{ptr @cselib_lookup_1, ptr @new_elt_list, i64 4364649}
!118 = !{ptr @cselib_lookup_1, ptr @htab_find_slot_with_hash, i64 9368529}
!119 = !{ptr @cselib_lookup_1, ptr @cselib_lookup_mem, i64 5107516}
!120 = !{ptr @cselib_lookup_1, ptr @cselib_hash_rtx, i64 8786614}
!121 = !{ptr @cselib_lookup_1, ptr @wrap_constant, i64 7040657}
!122 = !{ptr @cselib_lookup_1, ptr @cselib_subst_to_values, i64 4174366}
!123 = !{ptr @cselib_hash_rtx, ptr @cselib_lookup, i64 6829405}
!124 = !{ptr @cselib_hash_rtx, ptr @real_hash, i64 563}
!125 = !{ptr @cselib_hash_rtx, ptr @fixed_hash, i64 1}
!126 = !{ptr @cselib_hash_rtx, ptr @cselib_hash_rtx, i64 16100867}
!127 = !{ptr @cselib_hash_rtx, ptr @fancy_abort, i64 1}
!128 = !{ptr @cselib_invalidate_rtx, ptr @rhs_regno, i64 5915599}
!129 = !{ptr @cselib_invalidate_rtx, ptr @cselib_invalidate_regno, i64 5915599}
!130 = !{ptr @cselib_invalidate_rtx, ptr @cselib_invalidate_mem, i64 1835361}
!131 = !{ptr @cselib_invalidate_rtx, ptr @push_operand, i64 9221319}
!132 = !{ptr @cselib_process_insn, ptr @find_reg_note, i64 657836}
!133 = !{ptr @cselib_process_insn, ptr @cselib_reset_table, i64 895715}
!134 = !{ptr @cselib_process_insn, ptr @cselib_invalidate_regno, i64 32233709}
!135 = !{ptr @cselib_process_insn, ptr @cselib_invalidate_mem, i64 635655}
!136 = !{ptr @cselib_process_insn, ptr @cselib_record_sets, i64 8679101}
!137 = !{ptr @cselib_process_insn, ptr @cselib_invalidate_rtx, i64 1}
!138 = !{ptr @cselib_process_insn, ptr @remove_useless_values, i64 624}
!139 = !{ptr @cselib_record_sets, ptr @find_reg_equal_equiv_note, i64 24430}
!140 = !{ptr @cselib_record_sets, ptr @gen_rtx_fmt_eee_stat, i64 1}
!141 = !{ptr @cselib_record_sets, ptr @cselib_lookup, i64 6304961}
!142 = !{ptr @cselib_record_sets, ptr @note_stores, i64 8679102}
!143 = !{ptr @cselib_record_sets, ptr @asm_noperands, i64 29103}
!144 = !{ptr @cselib_record_sets, ptr @rtx_equal_p, i64 341}
!145 = !{ptr @cselib_record_sets, ptr @cselib_record_set, i64 5759777}
!146 = !{ptr @cselib_invalidate_rtx_note_stores, ptr @cselib_invalidate_rtx, i64 9189671}
!147 = !{ptr @cselib_record_set, ptr @rhs_regno, i64 5191509}
!148 = !{ptr @cselib_record_set, ptr @side_effects_p, i64 3841472}
!149 = !{ptr @cselib_record_set, ptr @new_elt_list, i64 2380402}
!150 = !{ptr @cselib_record_set, ptr @fancy_abort, i64 1}
!151 = !{ptr @cselib_record_set, ptr @new_elt_loc_list, i64 3273453}
!152 = !{ptr @cselib_record_set, ptr @add_mem_for_addr, i64 568007}
!153 = !{ptr @cselib_init, ptr @create_alloc_pool, i64 631912}
!154 = !{ptr @cselib_init, ptr @gen_rtx_fmt_0_stat, i64 2}
!155 = !{ptr @cselib_init, ptr @gen_rtx_MEM, i64 2}
!156 = !{ptr @cselib_init, ptr @max_reg_num, i64 157978}
!157 = !{ptr @cselib_init, ptr @free, i64 2078}
!158 = !{ptr @cselib_init, ptr @xcalloc, i64 2080}
!159 = !{ptr @cselib_init, ptr @xmalloc, i64 157978}
!160 = !{ptr @cselib_init, ptr @htab_create, i64 157978}
!161 = !{ptr @entry_and_rtx_equal_p, ptr @fancy_abort, i64 3}
!162 = !{ptr @entry_and_rtx_equal_p, ptr @rtx_equal_for_cselib_p, i64 2387430}
!163 = !{ptr @entry_and_rtx_equal_p, ptr @promote_debug_loc, i64 848148}
!164 = !{ptr @cselib_finish, ptr @free_alloc_pool, i64 631912}
!165 = !{ptr @cselib_finish, ptr @cselib_clear_table, i64 157978}
!166 = !{ptr @cselib_finish, ptr @htab_delete, i64 157978}
!167 = !{ptr @cselib_finish, ptr @free, i64 157978}
!168 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!169 = !{!"function_entry_count", i64 1455207}
!170 = !{!"function_entry_count", i64 2350920}
!171 = !{!172, !172, i64 0}
!172 = !{!"int", !173, i64 0}
!173 = !{!"omnipotent char", !174, i64 0}
!174 = !{!"Simple C/C++ TBAA"}
!175 = !{!176, !176, i64 0}
!176 = !{!"any pointer", !173, i64 0}
!177 = !{!"branch_weights", i32 2350921, i32 1}
!178 = !{!"branch_weights", i32 1, i32 2350920}
!179 = !{!180, !176, i64 16}
!180 = !{!"cselib_val_struct", !172, i64 0, !172, i64 4, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32}
!181 = !{!182, !176, i64 8}
!182 = !{!"elt_loc_list", !176, i64 0, !176, i64 8, !176, i64 16}
!183 = distinct !{!183, !184}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !{!173, !173, i64 0}
!186 = !{!"branch_weights", i32 2350920, i32 2308428}
!187 = distinct !{!187, !184}
!188 = !{!"function_entry_count", i64 39100869}
!189 = !{!"cselib.c:rhs_regno"}
!190 = !{!"function_entry_count", i64 0}
!191 = !{!"cselib.c:preserve_only_constants"}
!192 = !{!182, !176, i64 0}
!193 = !{i32 0, i32 2}
!194 = !{!180, !176, i64 8}
!195 = !{!"function_entry_count", i64 188067}
!196 = !{!"branch_weights", i32 42333, i32 145736}
!197 = !{!"branch_weights", i32 1, i32 42333}
!198 = !{!"branch_weights", i32 20045, i32 22289}
!199 = !{!"branch_weights", i32 1, i32 147673}
!200 = !{!"branch_weights", i32 -1889173503, i32 1837088768, i32 114686}
!201 = !{!202, !172, i64 0}
!202 = !{!"rtvec_def", !172, i64 0, !173, i64 8}
!203 = !{!"branch_weights", i32 127, i32 1}
!204 = !{!"branch_weights", i32 91783, i32 20345}
!205 = !{!"branch_weights", i32 127, i32 769}
!206 = distinct !{!206, !184}
!207 = !{!"branch_weights", i32 1, i32 7}
!208 = !{!"branch_weights", i32 111298, i32 147673}
!209 = distinct !{!209, !184}
!210 = distinct !{!210, !184}
!211 = !{!"function_entry_count", i64 38139158}
!212 = !{!"cselib.c:cselib_invalidate_regno"}
!213 = !{!"branch_weights", i32 -1995359791, i32 60}
!214 = !{!215, !215, i64 0}
!215 = !{!"short", !173, i64 0}
!216 = !{!"branch_weights", i32 2036429324, i32 111054324}
!217 = !{!"branch_weights", i32 1, i32 36166842}
!218 = !{i32 0, i32 308}
!219 = !{!"branch_weights", i32 38139158, i32 1}
!220 = !{!"branch_weights", i32 56909440, i32 4783926}
!221 = !{!222, !176, i64 8}
!222 = !{!"elt_list", !176, i64 0, !176, i64 8}
!223 = !{!"branch_weights", i32 -1888285536, i32 -1287752685}
!224 = !{!"branch_weights", i32 -533527098, i32 2115817249}
!225 = distinct !{!225, !184}
!226 = !{!"branch_weights", i32 957790, i32 764430}
!227 = !{!"branch_weights", i32 1, i32 1722219}
!228 = !{!182, !176, i64 16}
!229 = !{!"branch_weights", i32 1833424, i32 221482}
!230 = !{!"branch_weights", i32 1722219, i32 111206}
!231 = !{!"branch_weights", i32 632412, i32 1089808}
!232 = !{!"branch_weights", i32 632412, i32 1}
!233 = !{!"branch_weights", i32 223004, i32 409409}
!234 = !{!"branch_weights", i32 1, i32 409409}
!235 = !{!"branch_weights", i32 4783926, i32 0}
!236 = !{!"branch_weights", i32 38139158, i32 23554208}
!237 = distinct !{!237, !184}
!238 = !{!"function_entry_count", i64 2467865}
!239 = !{!"cselib.c:cselib_invalidate_mem"}
!240 = !{!"branch_weights", i32 838715, i32 1629151}
!241 = !{!"branch_weights", i32 1, i32 1629151}
!242 = !{!180, !176, i64 32}
!243 = !{!"branch_weights", i32 1962914, i32 1118917}
!244 = distinct !{!244, !184}
!245 = !{!246, !172, i64 8}
!246 = !{!"param_info", !176, i64 0, !172, i64 8, !173, i64 12, !172, i64 16, !172, i64 20, !176, i64 24}
!247 = !{!"branch_weights", i32 1962914, i32 1}
!248 = !{!"branch_weights", i32 1234532, i32 728383}
!249 = !{!"branch_weights", i32 728383, i32 7}
!250 = !{!"branch_weights", i32 1629150, i32 1452680}
!251 = !{!"branch_weights", i32 0, i32 -2147483648}
!252 = !{!"branch_weights", i32 295071, i32 1334081}
!253 = !{!"branch_weights", i32 295071, i32 1}
!254 = !{!"branch_weights", i32 1, i32 295071}
!255 = !{!"branch_weights", i32 833503648, i32 1313980000}
!256 = !{!"branch_weights", i32 1629151, i32 0}
!257 = distinct !{!257, !184}
!258 = !{!"function_entry_count", i64 623}
!259 = !{!"cselib.c:remove_useless_values"}
!260 = !{!"branch_weights", i32 758, i32 624}
!261 = distinct !{!261, !184}
!262 = !{!"branch_weights", i32 465, i32 159}
!263 = !{!"branch_weights", i32 3, i32 157}
!264 = !{!"branch_weights", i32 159, i32 0}
!265 = distinct !{!265, !184}
!266 = !{!"branch_weights", i32 624, i32 1}
!267 = !{!"function_entry_count", i64 38293477}
!268 = !{!"cselib.c:end_hard_regno"}
!269 = !{!"function_entry_count", i64 1492827}
!270 = !{!"cselib.c:unchain_one_elt_list"}
!271 = !{!222, !176, i64 0}
!272 = !{!"function_entry_count", i64 2470644}
!273 = !{!"cselib.c:unchain_one_elt_loc_list"}
!274 = !{!"function_entry_count", i64 11274}
!275 = !{!"cselib.c:cselib_rtx_varies_p"}
!276 = !{!"function_entry_count", i64 32028282}
!277 = !{!"branch_weights", i32 32028283, i32 1}
!278 = !{!180, !172, i64 4}
!279 = !{!180, !172, i64 0}
!280 = !{!"function_entry_count", i64 148826}
!281 = !{!"cselib.c:discard_useless_locs"}
!282 = !{!"branch_weights", i32 79974, i32 68854}
!283 = !{!"branch_weights", i32 49510, i32 20045}
!284 = !{!"branch_weights", i32 69554, i32 0}
!285 = distinct !{!285, !184}
!286 = !{!"branch_weights", i32 19953, i32 48902}
!287 = !{!"branch_weights", i32 19953, i32 1}
!288 = !{!"branch_weights", i32 3253, i32 16701}
!289 = !{!"branch_weights", i32 1, i32 16701}
!290 = !{!"function_entry_count", i64 62964}
!291 = !{!"cselib.c:discard_useless_values"}
!292 = !{!"branch_weights", i32 42557, i32 20409}
!293 = !{!"branch_weights", i32 42557, i32 1}
!294 = !{!"branch_weights", i32 37007, i32 5551}
!295 = !{!"function_entry_count", i64 42556}
!296 = !{!"cselib.c:unchain_one_value"}
!297 = !{!180, !176, i64 24}
!298 = !{!"branch_weights", i32 42540, i32 17}
!299 = !{!"branch_weights", i32 17, i32 0}
!300 = distinct !{!300, !184}
!301 = !{!"function_entry_count", i64 2214384}
!302 = !{!"branch_weights", i32 1232018, i32 982368}
!303 = !{!"branch_weights", i32 580617, i32 651402}
!304 = !{!"branch_weights", i32 243090, i32 408313}
!305 = !{!"function_entry_count", i64 7371583}
!306 = !{!"branch_weights", i32 -126947226, i32 831128176, i32 659981203}
!307 = !{!"branch_weights", i32 760804, i32 1181516}
!308 = !{!"branch_weights", i32 -1231707089, i32 1389652553, i32 198764340}
!309 = !{!"branch_weights", i32 348647, i32 2168542}
!310 = !{!"branch_weights", i32 1538528, i32 5833057}
!311 = !{!"branch_weights", i32 1328310, i32 4504748}
!312 = !{!"branch_weights", i32 163624, i32 1164687}
!313 = !{!"branch_weights", i32 1, i32 1075639}
!314 = !{!"branch_weights", i32 1012044839, i32 -1785440853, i32 1667452611}
!315 = !{!"branch_weights", i32 353346, i32 89048}
!316 = !{!"branch_weights", i32 1075639, i32 1192625}
!317 = distinct !{!317, !184}
!318 = !{!"branch_weights", i32 1400091, i32 3104658}
!319 = !{!"branch_weights", i32 1, i32 1400071}
!320 = !{!"branch_weights", i32 138702815, i32 -1871458976, i32 713592294}
!321 = !{!"branch_weights", i32 75998, i32 20}
!322 = !{!"branch_weights", i32 1400071, i32 395250}
!323 = distinct !{!323, !184}
!324 = !{!"branch_weights", i32 1522760, i32 1581899}
!325 = !{!"branch_weights", i32 1522614, i32 147}
!326 = !{!"branch_weights", i32 1522612, i32 3, i32 1, i32 1, i32 1}
!327 = !{!"branch_weights", i32 1, i32 615050}
!328 = !{!"branch_weights", i32 1, i32 371539, i32 1, i32 1372, i32 1, i32 17, i32 1816781, i32 1, i32 18283, i32 1, i32 38792, i32 1}
!329 = !{!"branch_weights", i32 1, i32 371539}
!330 = !{!"branch_weights", i32 242, i32 1131}
!331 = !{!"branch_weights", i32 17, i32 1}
!332 = !{!"branch_weights", i32 2049, i32 127}
!333 = distinct !{!333, !184}
!334 = !{!"branch_weights", i32 1117433, i32 699349}
!335 = !{!336, !176, i64 1024}
!336 = !{!"gcc_target", !337, i64 0, !339, i64 368, !340, i64 664, !172, i64 744, !176, i64 752, !176, i64 760, !176, i64 768, !176, i64 776, !176, i64 784, !176, i64 792, !176, i64 800, !176, i64 808, !176, i64 816, !176, i64 824, !176, i64 832, !176, i64 840, !176, i64 848, !176, i64 856, !176, i64 864, !176, i64 872, !176, i64 880, !176, i64 888, !176, i64 896, !176, i64 904, !176, i64 912, !176, i64 920, !176, i64 928, !176, i64 936, !176, i64 944, !176, i64 952, !176, i64 960, !176, i64 968, !176, i64 976, !176, i64 984, !176, i64 992, !176, i64 1000, !176, i64 1008, !176, i64 1016, !176, i64 1024, !176, i64 1032, !176, i64 1040, !176, i64 1048, !176, i64 1056, !341, i64 1064, !341, i64 1072, !176, i64 1080, !176, i64 1088, !176, i64 1096, !176, i64 1104, !176, i64 1112, !176, i64 1120, !176, i64 1128, !176, i64 1136, !176, i64 1144, !176, i64 1152, !176, i64 1160, !176, i64 1168, !342, i64 1176, !176, i64 1232, !176, i64 1240, !176, i64 1248, !176, i64 1256, !176, i64 1264, !176, i64 1272, !176, i64 1280, !176, i64 1288, !176, i64 1296, !176, i64 1304, !176, i64 1312, !176, i64 1320, !176, i64 1328, !176, i64 1336, !176, i64 1344, !176, i64 1352, !176, i64 1360, !176, i64 1368, !176, i64 1376, !176, i64 1384, !176, i64 1392, !176, i64 1400, !176, i64 1408, !176, i64 1416, !176, i64 1424, !176, i64 1432, !176, i64 1440, !176, i64 1448, !176, i64 1456, !341, i64 1464, !343, i64 1472, !176, i64 1664, !176, i64 1672, !176, i64 1680, !176, i64 1688, !176, i64 1696, !176, i64 1704, !176, i64 1712, !176, i64 1720, !176, i64 1728, !176, i64 1736, !176, i64 1744, !176, i64 1752, !176, i64 1760, !176, i64 1768, !176, i64 1776, !344, i64 1784, !345, i64 1792, !346, i64 1896, !347, i64 1968, !176, i64 2016, !173, i64 2024, !173, i64 2025, !173, i64 2026, !173, i64 2027, !173, i64 2028, !173, i64 2029, !173, i64 2030, !173, i64 2031, !173, i64 2032, !173, i64 2033, !173, i64 2034, !173, i64 2035}
!337 = !{!"asm_out", !176, i64 0, !176, i64 8, !176, i64 16, !338, i64 24, !338, i64 56, !176, i64 88, !176, i64 96, !176, i64 104, !176, i64 112, !176, i64 120, !176, i64 128, !176, i64 136, !176, i64 144, !176, i64 152, !176, i64 160, !176, i64 168, !176, i64 176, !176, i64 184, !176, i64 192, !176, i64 200, !176, i64 208, !176, i64 216, !176, i64 224, !176, i64 232, !176, i64 240, !176, i64 248, !176, i64 256, !176, i64 264, !176, i64 272, !176, i64 280, !176, i64 288, !176, i64 296, !176, i64 304, !176, i64 312, !176, i64 320, !176, i64 328, !176, i64 336, !176, i64 344, !176, i64 352, !176, i64 360}
!338 = !{!"asm_int_op", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24}
!339 = !{!"sched", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96, !176, i64 104, !176, i64 112, !176, i64 120, !176, i64 128, !176, i64 136, !176, i64 144, !176, i64 152, !176, i64 160, !176, i64 168, !176, i64 176, !176, i64 184, !176, i64 192, !176, i64 200, !176, i64 208, !176, i64 216, !176, i64 224, !176, i64 232, !176, i64 240, !176, i64 248, !176, i64 256, !176, i64 264, !176, i64 272, !176, i64 280, !176, i64 288}
!340 = !{!"vectorize", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72}
!341 = !{!"long", !173, i64 0}
!342 = !{!"addr_space", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48}
!343 = !{!"calls", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96, !176, i64 104, !176, i64 112, !176, i64 120, !176, i64 128, !176, i64 136, !176, i64 144, !176, i64 152, !176, i64 160, !176, i64 168, !176, i64 176, !176, i64 184}
!344 = !{!"c", !176, i64 0}
!345 = !{!"cxx", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96}
!346 = !{!"emutls", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !173, i64 64, !173, i64 65}
!347 = !{!"target_option_hooks", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40}
!348 = !{!"branch_weights", i32 179035, i32 938399}
!349 = !{!"branch_weights", i32 936651, i32 1749}
!350 = !{!"branch_weights", i32 142, i32 1608}
!351 = !{!"branch_weights", i32 514999, i32 1300176}
!352 = !{!"branch_weights", i32 11, i32 18273}
!353 = !{!"branch_weights", i32 1631729, i32 615050}
!354 = distinct !{!354, !184}
!355 = !{!"function_entry_count", i64 944360}
!356 = !{!357, !176, i64 0}
!357 = !{!"expand_value_data", !176, i64 0, !176, i64 8, !176, i64 16, !173, i64 24}
!358 = !{!"function_entry_count", i64 2212738}
!359 = !{!"cselib.c:cselib_expand_value_rtx_1"}
!360 = !{!"branch_weights", i32 19172, i32 2193568}
!361 = !{!"branch_weights", i32 599869, i32 1013213, i32 534032, i32 1, i32 1, i32 8512, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1871, i32 407, i32 35670, i32 1}
!362 = !{!"branch_weights", i32 117884, i32 895330}
!363 = !{!"branch_weights", i32 800728, i32 94603}
!364 = !{!"branch_weights", i32 889923, i32 2}
!365 = !{!"branch_weights", i32 524312, i32 1}
!366 = !{!"branch_weights", i32 474168, i32 50145}
!367 = !{!"branch_weights", i32 123290, i32 766634}
!368 = distinct !{!368, !184}
!369 = !{!"branch_weights", i32 1, i32 1871}
!370 = !{!357, !176, i64 8}
!371 = !{!"branch_weights", i32 407, i32 1}
!372 = !{!357, !176, i64 16}
!373 = !{!"branch_weights", i32 253, i32 155}
!374 = !{!"branch_weights", i32 1, i32 155}
!375 = !{!"branch_weights", i32 155, i32 1}
!376 = !{!"branch_weights", i32 1, i32 310, i32 1}
!377 = !{!"branch_weights", i32 35670, i32 1}
!378 = !{!357, !173, i64 24}
!379 = !{!"branch_weights", i32 599869, i32 1}
!380 = !{!"branch_weights", i32 1, i32 590740}
!381 = !{!"branch_weights", i32 1, i32 1172056, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1582}
!382 = !{!"branch_weights", i32 1, i32 1172056}
!383 = !{!"branch_weights", i32 9129, i32 1162928}
!384 = !{!"branch_weights", i32 1, i32 1162928}
!385 = distinct !{!385, !184}
!386 = !{!"branch_weights", i32 590740, i32 582897}
!387 = distinct !{!387, !184}
!388 = !{!"branch_weights", i32 590741, i32 1}
!389 = !{!"branch_weights", i32 589151, i32 1564, i32 28, i32 3, i32 1, i32 1}
!390 = !{!"branch_weights", i32 1, i32 1564}
!391 = !{!"branch_weights", i32 1, i32 30}
!392 = !{!"branch_weights", i32 550553, i32 40189}
!393 = !{!"function_entry_count", i64 559980}
!394 = !{!"cselib.c:expand_loc"}
!395 = !{!"branch_weights", i32 1, i32 534075}
!396 = !{!"branch_weights", i32 616041, i32 39733}
!397 = !{!"branch_weights", i32 615488, i32 554}
!398 = !{!"branch_weights", i32 62267, i32 553222}
!399 = !{!"branch_weights", i32 162743705, i32 4096, i32 -2026706330}
!400 = !{!"branch_weights", i32 39733, i32 1}
!401 = !{!"branch_weights", i32 1, i32 39733}
!402 = !{!"branch_weights", i32 534075, i32 121698}
!403 = distinct !{!403, !184}
!404 = !{!"branch_weights", i32 1921563524, i32 225920124}
!405 = !{!"branch_weights", i32 56186, i32 1}
!406 = !{!"branch_weights", i32 486958, i32 1}
!407 = !{!"function_entry_count", i64 11368006}
!408 = !{!"branch_weights", i32 4191176, i32 3522523, i32 155565, i32 545, i32 1, i32 3498202, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!409 = !{!"branch_weights", i32 1, i32 3522523}
!410 = !{!"branch_weights", i32 2402427, i32 1120097}
!411 = !{!"branch_weights", i32 24598464, i32 2122885184}
!412 = !{!"branch_weights", i32 3522523, i32 10521}
!413 = !{!"branch_weights", i32 127, i32 452229377}
!414 = distinct !{!414, !184}
!415 = !{!"branch_weights", i32 1, i32 155565}
!416 = !{!"branch_weights", i32 1, i32 4191175}
!417 = !{!"branch_weights", i32 560342867, i32 -1634157995, i32 85446}
!418 = !{!"branch_weights", i32 230, i32 1}
!419 = !{!"branch_weights", i32 3342797, i32 3850593}
!420 = !{!"branch_weights", i32 3511223, i32 339371}
!421 = !{!"branch_weights", i32 15, i32 237}
!422 = !{!"branch_weights", i32 231, i32 7}
!423 = !{!"branch_weights", i32 231, i32 1}
!424 = !{!"branch_weights", i32 21, i32 230}
!425 = distinct !{!425, !184}
!426 = !{!"branch_weights", i32 4517308, i32 4191175}
!427 = distinct !{!427, !184}
!428 = !{!"function_entry_count", i64 5263080}
!429 = !{!"cselib.c:cselib_lookup_mem"}
!430 = !{!"branch_weights", i32 -1296188783, i32 1243894228}
!431 = !{!"branch_weights", i32 -1645105571, i32 1950355, i32 711, i32 712, i32 712}
!432 = !{!"branch_weights", i32 2736, i32 1}
!433 = !{!"branch_weights", i32 1998917, i32 1721103}
!434 = !{!"branch_weights", i32 1094047, i32 630872}
!435 = !{!"branch_weights", i32 627057, i32 3816}
!436 = distinct !{!436, !184}
!437 = !{!"branch_weights", i32 479537, i32 614511}
!438 = !{!"function_entry_count", i64 7393525}
!439 = !{!"cselib.c:new_cselib_val"}
!440 = !{!"branch_weights", i32 1, i32 7393526}
!441 = !{!"branch_weights", i32 7393526, i32 1}
!442 = !{!"function_entry_count", i64 11611352}
!443 = !{!"cselib.c:promote_debug_loc"}
!444 = !{!"branch_weights", i32 1432781, i32 10178573}
!445 = !{!"branch_weights", i32 1, i32 10178573}
!446 = !{!"function_entry_count", i64 1182519}
!447 = !{!"cselib.c:add_mem_for_addr"}
!448 = !{!"branch_weights", i32 394777, i32 787743}
!449 = !{!"branch_weights", i32 164592, i32 623152}
!450 = !{!"branch_weights", i32 1, i32 164592}
!451 = !{!"branch_weights", i32 787743, i32 0}
!452 = distinct !{!452, !184}
!453 = !{!"branch_weights", i32 1046150, i32 136371}
!454 = !{!"function_entry_count", i64 7655168}
!455 = !{!"cselib.c:wrap_constant"}
!456 = !{!"branch_weights", i32 -150975457, i32 677709870, i32 629, i32 355268}
!457 = !{!"branch_weights", i32 1, i32 564}
!458 = !{!"branch_weights", i32 1, i32 1075886}
!459 = !{!"function_entry_count", i64 8446513}
!460 = !{!"cselib.c:new_elt_list"}
!461 = !{!"function_entry_count", i64 11234989}
!462 = !{!"cselib.c:new_elt_loc_list"}
!463 = !{!"branch_weights", i32 7393781, i32 3841210}
!464 = !{!"branch_weights", i32 5034, i32 3836177}
!465 = !{!"branch_weights", i32 1, i32 3836177}
!466 = !{!"branch_weights", i32 445194270, i32 1702289378}
!467 = !{!"branch_weights", i32 1, i32 5860979}
!468 = !{!"cselib.c:cselib_lookup_1"}
!469 = !{!"branch_weights", i32 1532579, i32 30495705}
!470 = !{!"branch_weights", i32 1723983112, i32 191268110, i32 -928212488, i32 1002123463}
!471 = !{!"branch_weights", i32 6227955, i32 10931365}
!472 = !{!"branch_weights", i32 5534521, i32 5396845}
!473 = !{!"branch_weights", i32 10136149, i32 66190}
!474 = !{!"branch_weights", i32 7023170, i32 3179168}
!475 = distinct !{!475, !184}
!476 = !{!"branch_weights", i32 4418524, i32 2604648}
!477 = !{!"branch_weights", i32 1542706, i32 1061943}
!478 = !{!"branch_weights", i32 627577, i32 915130}
!479 = !{!"branch_weights", i32 2278944, i32 325705}
!480 = !{!"branch_weights", i32 1745957, i32 7040659}
!481 = !{!"branch_weights", i32 2018143, i32 5022517}
!482 = !{!"branch_weights", i32 4174369, i32 848149}
!483 = !{!"function_entry_count", i64 22496905}
!484 = !{!"cselib.c:cselib_hash_rtx"}
!485 = !{!"branch_weights", i32 7100748, i32 637162, i32 6192249, i32 1, i32 7123040, i32 564, i32 1, i32 1, i32 2295, i32 952655, i32 31621, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 456580, i32 1, i32 1}
!486 = !{!"branch_weights", i32 1257758, i32 5571653}
!487 = !{!"branch_weights", i32 1, i32 7123040}
!488 = distinct !{!488, !184}
!489 = !{!"branch_weights", i32 1, i32 2295}
!490 = !{!"branch_weights", i32 1, i32 952654}
!491 = !{!"branch_weights", i32 952654, i32 10687409}
!492 = distinct !{!492, !184}
!493 = !{!"branch_weights", i32 1, i32 952655}
!494 = !{!"branch_weights", i32 1, i32 5798885}
!495 = !{!"branch_weights", i32 1, i32 13709946, i32 298, i32 1, i32 29327, i32 77, i32 1}
!496 = !{!"branch_weights", i32 117, i32 230}
!497 = distinct !{!497, !184}
!498 = distinct !{!498, !184}
!499 = !{!"branch_weights", i32 7940760, i32 5798885}
!500 = distinct !{!500, !184}
!501 = !{!"branch_weights", i32 3, i32 5798884}
!502 = !{!"function_entry_count", i64 9205481}
!503 = !{!"branch_weights", i32 781405559, i32 529, i32 529, i32 531, i32 -1151188745, i32 975382148}
!504 = distinct !{!504, !184}
!505 = !{!"branch_weights", i32 9189672, i32 15811}
!506 = !{!"function_entry_count", i64 11893367}
!507 = !{!"branch_weights", i32 -824695737, i32 300619935, i32 220784179}
!508 = !{!"branch_weights", i32 657832, i32 5}
!509 = !{!"branch_weights", i32 6546270, i32 4451386}
!510 = !{!"branch_weights", i32 1, i32 6546270}
!511 = !{!"branch_weights", i32 1028944272, i32 1118539376}
!512 = !{!"branch_weights", i32 662350150, i32 1485133498}
!513 = !{!"branch_weights", i32 2631325, i32 32233720}
!514 = !{!"branch_weights", i32 657832, i32 34207212}
!515 = distinct !{!515, !184}
!516 = !{!"branch_weights", i32 -438961440, i32 134529337}
!517 = !{!"branch_weights", i32 657832, i32 8021272}
!518 = !{!"branch_weights", i32 434829, i32 223003}
!519 = !{!"branch_weights", i32 1, i32 223003}
!520 = !{!"branch_weights", i32 223003, i32 0}
!521 = distinct !{!521, !184}
!522 = !{!"branch_weights", i32 20207, i32 8658897}
!523 = !{!524, !341, i64 40}
!524 = !{!"htab", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !341, i64 32, !341, i64 40, !341, i64 48, !172, i64 56, !172, i64 60, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96, !172, i64 104}
!525 = !{!524, !341, i64 48}
!526 = !{!"branch_weights", i32 624, i32 19584}
!527 = !{!"function_entry_count", i64 8679102}
!528 = !{!"cselib.c:cselib_record_sets"}
!529 = !{!"branch_weights", i32 1, i32 8679103}
!530 = !{!"branch_weights", i32 109141389, i32 -670582340, i32 342580097}
!531 = !{!532, !176, i64 0}
!532 = !{!"cselib_set", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24}
!533 = !{!532, !176, i64 8}
!534 = !{!"branch_weights", i32 729443, i32 1}
!535 = !{!"branch_weights", i32 760368, i32 719701}
!536 = !{!"branch_weights", i32 750625, i32 729443}
!537 = distinct !{!537, !184}
!538 = !{!"branch_weights", i32 2061791696, i32 85691952}
!539 = !{!"branch_weights", i32 -886912652, i32 9919802}
!540 = !{!"branch_weights", i32 23362, i32 1069}
!541 = !{!"branch_weights", i32 528, i32 542}
!542 = !{!"branch_weights", i32 -2147483648, i32 0}
!543 = !{!"branch_weights", i32 6093, i32 8471545}
!544 = !{!"branch_weights", i32 5191511, i32 3286127}
!545 = !{!"branch_weights", i32 504592849, i32 -1881645355}
!546 = !{!"branch_weights", i32 5759778, i32 1}
!547 = !{!532, !176, i64 16}
!548 = !{!"branch_weights", i32 568268, i32 5191511}
!549 = !{!336, !176, i64 1184}
!550 = !{!"branch_weights", i32 4843, i32 563426}
!551 = !{!552, !173, i64 32}
!552 = !{!"mem_attrs", !176, i64 0, !176, i64 8, !176, i64 16, !172, i64 24, !172, i64 28, !173, i64 32}
!553 = !{!532, !176, i64 24}
!554 = !{!"branch_weights", i32 8477637, i32 0}
!555 = distinct !{!555, !184}
!556 = !{!"branch_weights", i32 8679103, i32 1}
!557 = !{!"branch_weights", i32 29103, i32 8650001}
!558 = !{!"branch_weights", i32 1, i32 29103}
!559 = distinct !{!559, !184}
!560 = distinct !{!560, !184}
!561 = !{!"branch_weights", i32 8477637, i32 201466}
!562 = distinct !{!562, !184}
!563 = !{!"function_entry_count", i64 9189671}
!564 = !{!"cselib.c:cselib_invalidate_rtx_note_stores"}
!565 = !{!"function_entry_count", i64 5759777}
!566 = !{!"cselib.c:cselib_record_set"}
!567 = !{!"branch_weights", i32 5191511, i32 568268}
!568 = !{!"branch_weights", i32 1918306, i32 3841473}
!569 = !{!"branch_weights", i32 3841465, i32 9}
!570 = !{!"branch_weights", i32 3273456, i32 568010}
!571 = !{!"branch_weights", i32 2196933, i32 1076524}
!572 = !{!"branch_weights", i32 534396, i32 1662538}
!573 = !{!"branch_weights", i32 2380405, i32 893052}
!574 = !{!"branch_weights", i32 893052, i32 1}
!575 = !{!"branch_weights", i32 256, i32 3273201}
!576 = !{!"branch_weights", i32 256, i32 1}
!577 = !{!"branch_weights", i32 -1564178845, i32 14422}
!578 = !{!"branch_weights", i32 1, i32 568010}
!579 = !{!"function_entry_count", i64 157978}
!580 = !{!"branch_weights", i32 2, i32 157978}
!581 = !{!"branch_weights", i32 1544, i32 156435}
!582 = !{!"branch_weights", i32 10442036, i32 -1246381571}
!583 = !{!"function_entry_count", i64 392893}
!584 = !{!"cselib.c:get_value_hash"}
!585 = !{!"function_entry_count", i64 2779465}
!586 = !{!"cselib.c:entry_and_rtx_equal_p"}
!587 = !{!"branch_weights", i32 2714, i32 -522784071}
!588 = !{!"branch_weights", i32 49, i32 2779418}
!589 = !{!"branch_weights", i32 1, i32 49}
!590 = !{!"branch_weights", i32 2342338, i32 437129}
!591 = !{!"branch_weights", i32 334927, i32 2007412}
!592 = !{!"branch_weights", i32 -2018213121, i32 566243075}
!593 = !{!"branch_weights", i32 1494190, i32 2387432}
!594 = !{!"branch_weights", i32 1539284, i32 848149}
!595 = distinct !{!595, !184}
!596 = !{!"cselib.c:dump_cselib_val"}
!597 = distinct !{!597, !184}
!598 = distinct !{!598, !184}
