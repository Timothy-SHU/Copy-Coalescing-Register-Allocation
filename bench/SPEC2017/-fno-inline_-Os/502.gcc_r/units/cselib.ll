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
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cselib_set = type { ptr, ptr, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_clear_table() local_unnamed_addr #0 !prof !165 {
  tail call void @cselib_reset_table(i32 noundef 1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_reset_table(i32 noundef %0) local_unnamed_addr #0 !prof !166 {
  store i32 0, ptr @max_value_regs, align 4, !tbaa !167
  %2 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !171
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11, !prof !173

4:                                                ; preds = %1
  %5 = load i32, ptr @n_used_regs, align 4, !tbaa !167
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %65, label %7, !prof !174

7:                                                ; preds = %4
  %8 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %9 = load ptr, ptr @used_regs, align 8, !tbaa !171
  %10 = zext i32 %5 to i64
  br label %57

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef %15) #16
  %17 = load i32, ptr @n_used_regs, align 4, !tbaa !167
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr @used_regs, align 8, !tbaa !171
  %21 = load ptr, ptr @reg_values, align 8
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %32
  %24 = phi i64 [ 0, %19 ], [ %34, %32 ]
  %25 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %26 = getelementptr inbounds i32, ptr %20, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !167
  %28 = icmp eq i32 %27, %16
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = zext i32 %27 to i64
  %31 = getelementptr inbounds ptr, ptr %21, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !171
  br label %32

32:                                               ; preds = %23, %29
  %33 = phi i32 [ %25, %29 ], [ 1, %23 ]
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, %22
  br i1 %35, label %36, label %23, !llvm.loop !179

36:                                               ; preds = %32
  %37 = icmp eq i32 %33, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %11, %36
  %39 = phi i32 [ %33, %36 ], [ 0, %11 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 351, ptr noundef nonnull @.str.1) #17
  %40 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !171
  br label %41

41:                                               ; preds = %36, %38
  %42 = phi i32 [ 1, %36 ], [ %39, %38 ]
  %43 = phi ptr [ %2, %36 ], [ %40, %38 ]
  store i32 %42, ptr @n_used_regs, align 4, !tbaa !167
  %44 = load ptr, ptr @used_regs, align 8, !tbaa !171
  store i32 %16, ptr %44, align 4, !tbaa !167
  %45 = zext i32 %16 to i64
  %46 = getelementptr inbounds %struct.cselib_val_struct, ptr %43, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !175
  %48 = getelementptr inbounds %struct.elt_loc_list, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !177
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %45, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !181
  %56 = zext i8 %55 to i32
  store i32 %56, ptr @max_value_regs, align 4, !tbaa !167
  br label %66

57:                                               ; preds = %7, %57
  %58 = phi i64 [ 0, %7 ], [ %63, %57 ]
  %59 = getelementptr inbounds i32, ptr %9, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !167
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %8, i64 %61
  store ptr null, ptr %62, align 8, !tbaa !171
  %63 = add nuw nsw i64 %58, 1
  %64 = icmp eq i64 %63, %10
  br i1 %64, label %65, label %57, !prof !182, !llvm.loop !183

65:                                               ; preds = %57, %4
  store i32 0, ptr @n_used_regs, align 4, !tbaa !167
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !181
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  br i1 %68, label %71, label %70, !prof !173

70:                                               ; preds = %66
  tail call void @htab_traverse(ptr noundef %69, ptr noundef nonnull @preserve_only_constants, ptr noundef null) #17
  br label %72

71:                                               ; preds = %66
  tail call void @htab_empty(ptr noundef %69) #17
  br label %72

72:                                               ; preds = %71, %70
  store i32 0, ptr @n_useless_values, align 4, !tbaa !167
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !167
  store i32 0, ptr @n_debug_values, align 4, !tbaa !167
  store i32 %0, ptr @next_uid, align 4, !tbaa !167
  store ptr @dummy_val, ptr @first_containing_mem, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !184 !PGOFuncName !185 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !181
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @preserve_only_constants(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !186 !PGOFuncName !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !171
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !188
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.elt_loc_list, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !167
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = icmp eq i32 %14, 35
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = tail call i32 @references_value_p(ptr noundef nonnull %12, i32 noundef 0) #16, !range !189
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21, %10
  %25 = load ptr, ptr @cfa_base_preserved_val, align 8, !tbaa !171
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
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 30
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !181
  %40 = getelementptr inbounds %struct.cselib_val_struct, ptr %25, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !190
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %24, %37, %31, %29, %7, %2
  %44 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  tail call void @htab_clear_slot(ptr noundef %44, ptr noundef nonnull %0) #17
  br label %45

45:                                               ; preds = %37, %27, %19, %21, %43
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @cselib_get_next_uid() local_unnamed_addr #4 !prof !186 {
  %1 = load i32, ptr @next_uid, align 4, !tbaa !167
  ret i32 %1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @references_value_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 !prof !191 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = icmp eq i32 %4, 1
  br i1 %8, label %9, label %17, !prof !192

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %53, label %11, !prof !193

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !175
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17, !prof !194

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %5
  %19 = load i8, ptr %18, align 1, !tbaa !181
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %53, label %21, !prof !195

21:                                               ; preds = %17
  %22 = zext i8 %19 to i64
  br label %23

23:                                               ; preds = %21, %51
  %24 = phi i64 [ %22, %21 ], [ %25, %51 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %7, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !181
  switch i8 %27, label %51 [
    i8 101, label %36
    i8 69, label %28
  ], !prof !196

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %29, i64 0, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = load i32, ptr %31, align 8, !tbaa !197
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = zext nneg i32 %32 to i64
  br label %45

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !181
  %40 = tail call i32 @references_value_p(ptr noundef %39, i32 noundef %1) #16, !range !189
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %53, !prof !199

42:                                               ; preds = %45
  %43 = add nuw nsw i64 %46, 1
  %44 = icmp eq i64 %43, %35
  br i1 %44, label %51, label %45, !llvm.loop !200

45:                                               ; preds = %34, %42
  %46 = phi i64 [ 0, %34 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !171
  %49 = tail call i32 @references_value_p(ptr noundef %48, i32 noundef %1) #16, !range !189
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %42, label %53

51:                                               ; preds = %42, %28, %23, %36
  %52 = icmp sgt i64 %24, 1
  br i1 %52, label %23, label %53, !prof !201, !llvm.loop !202

53:                                               ; preds = %36, %51, %45, %17, %9, %11
  %54 = phi i32 [ 1, %11 ], [ 1, %9 ], [ 0, %17 ], [ 1, %45 ], [ 1, %36 ], [ 0, %51 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cselib_preserve_value(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !186 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 67108864
  store i32 %5, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cselib_preserved_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !186 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 26
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @cselib_preserve_cfa_base_value(ptr noundef %0) local_unnamed_addr #8 !prof !186 {
  %2 = load i8, ptr @cselib_preserve_constants, align 1, !tbaa !181
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !175
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store ptr %0, ptr @cfa_base_preserved_val, align 8, !tbaa !171
  br label %15

15:                                               ; preds = %14, %8, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_preserve_only_values() local_unnamed_addr #0 !prof !186 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %6, %1 ]
  %3 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !167
  %5 = trunc i64 %2 to i32
  tail call fastcc void @cselib_invalidate_regno(i32 noundef %5, i32 noundef %4) #16
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 53
  br i1 %7, label %8, label %1, !llvm.loop !203

8:                                                ; preds = %1
  %9 = load ptr, ptr @callmem, align 8, !tbaa !171
  tail call fastcc void @cselib_invalidate_mem(ptr noundef %9) #16
  tail call fastcc void @remove_useless_values() #16
  %10 = load ptr, ptr @first_containing_mem, align 8, !tbaa !171
  %11 = icmp eq ptr %10, @dummy_val
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 597, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_invalidate_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !204 !PGOFuncName !205 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !167
  %4 = icmp eq i32 %3, 0
  %5 = icmp ult i32 %0, 53
  %6 = or i1 %5, %4
  br i1 %6, label %14, label %7, !prof !206

7:                                                ; preds = %2
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !171
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i16, ptr %8, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !207
  %12 = icmp slt i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1746, ptr noundef nonnull @.str.1) #17
  br label %22

14:                                               ; preds = %2
  br i1 %5, label %15, label %22, !prof !209

15:                                               ; preds = %14
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %18, !prof !210

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #17
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i32, ptr @max_value_regs, align 4, !tbaa !167
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 %19)
  %21 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %0) #16, !range !211
  br label %24

22:                                               ; preds = %13, %7, %14
  %23 = add i32 %0, 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %20, %18 ], [ %0, %22 ]
  %26 = phi i32 [ %21, %18 ], [ %23, %22 ]
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %123, !prof !212

28:                                               ; preds = %24
  %29 = zext i32 %25 to i64
  %30 = zext i32 %26 to i64
  br label %31

31:                                               ; preds = %28, %120
  %32 = phi i64 [ %29, %28 ], [ %121, %120 ]
  %33 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %34 = getelementptr inbounds ptr, ptr %33, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !171
  %36 = icmp eq ptr %35, null
  br i1 %36, label %120, label %37, !prof !213

37:                                               ; preds = %31
  %38 = icmp ult i64 %32, 53
  %39 = trunc i64 %32 to i32
  br label %40

40:                                               ; preds = %37, %116
  %41 = phi ptr [ %35, %37 ], [ %118, %116 ]
  %42 = phi ptr [ %34, %37 ], [ %117, %116 ]
  %43 = getelementptr inbounds %struct.elt_list, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !214
  %45 = icmp ne ptr %44, null
  %46 = select i1 %38, i1 %45, i1 false
  br i1 %46, label %47, label %55, !prof !216

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !190
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = tail call fastcc i32 @end_hard_regno(i32 noundef %52, i32 noundef %39) #16, !range !211
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
  br i1 %62, label %116, label %63, !prof !217, !llvm.loop !218

63:                                               ; preds = %55
  %64 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %65 = getelementptr inbounds ptr, ptr %64, i64 %32
  %66 = load ptr, ptr %65, align 8, !tbaa !171
  %67 = icmp eq ptr %41, %66
  br i1 %67, label %68, label %70, !prof !219

68:                                               ; preds = %63
  store ptr null, ptr %43, align 8, !tbaa !214
  %69 = load ptr, ptr %42, align 8, !tbaa !171
  br label %71

70:                                               ; preds = %63
  tail call fastcc void @unchain_one_elt_list(ptr noundef nonnull %42) #16
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi ptr [ %69, %68 ], [ %42, %70 ]
  %73 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !171
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76, !prof !220

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.elt_loc_list, ptr %74, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !221
  br label %79

79:                                               ; preds = %71, %76
  %80 = phi ptr [ %78, %76 ], [ null, %71 ]
  br label %81

81:                                               ; preds = %93, %79
  %82 = phi ptr [ %74, %79 ], [ %94, %93 ]
  %83 = phi ptr [ %73, %79 ], [ %82, %93 ]
  %84 = getelementptr inbounds %struct.elt_loc_list, ptr %82, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !177
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %93, !prof !222

89:                                               ; preds = %81
  %90 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %85) #16
  %91 = zext i32 %90 to i64
  %92 = icmp eq i64 %32, %91
  br i1 %92, label %95, label %93, !prof !223

93:                                               ; preds = %89, %81
  %94 = load ptr, ptr %82, align 8, !tbaa !171
  br label %81

95:                                               ; preds = %89
  tail call fastcc void @unchain_one_elt_loc_list(ptr noundef nonnull %83) #16
  br i1 %75, label %116, label %96, !prof !220

96:                                               ; preds = %95
  %97 = load ptr, ptr %73, align 8, !tbaa !175
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %116, !prof !224

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !190
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 67108864
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116, !prof !225

105:                                              ; preds = %99
  %106 = icmp eq ptr %80, null
  br i1 %106, label %111, label %107, !prof !226

107:                                              ; preds = %105
  %108 = load i32, ptr %80, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 7
  br i1 %110, label %112, label %111, !prof !227

111:                                              ; preds = %107, %105
  br label %112

112:                                              ; preds = %107, %111
  %113 = phi ptr [ @n_useless_values, %111 ], [ @n_useless_debug_values, %107 ]
  %114 = load i32, ptr %113, align 4, !tbaa !167
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %113, align 4, !tbaa !167
  br label %116

116:                                              ; preds = %112, %55, %95, %96, %99
  %117 = phi ptr [ %72, %99 ], [ %72, %96 ], [ %72, %95 ], [ %41, %55 ], [ %72, %112 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !171
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %40, !prof !228

120:                                              ; preds = %116, %31
  %121 = add nuw nsw i64 %32, 1
  %122 = icmp eq i64 %121, %30
  br i1 %122, label %123, label %31, !prof !229, !llvm.loop !230

123:                                              ; preds = %120, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_invalidate_mem(ptr noundef %0) unnamed_addr #0 !prof !231 !PGOFuncName !232 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = tail call ptr @get_addr(ptr noundef %3) #17
  %5 = tail call ptr @canon_rtx(ptr noundef %4) #17
  %6 = tail call ptr @canon_rtx(ptr noundef %0) #17
  %7 = load ptr, ptr @first_containing_mem, align 8, !tbaa !171
  %8 = icmp eq ptr %7, @dummy_val
  br i1 %8, label %99, label %9, !prof !233

9:                                                ; preds = %1, %94
  %10 = phi ptr [ %97, %94 ], [ @first_containing_mem, %1 ]
  %11 = phi ptr [ %95, %94 ], [ %7, %1 ]
  %12 = phi i32 [ %96, %94 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19, !prof !234

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !235
  br label %90

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.elt_loc_list, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !221
  br label %22

22:                                               ; preds = %19, %58
  %23 = phi ptr [ %62, %58 ], [ %14, %19 ]
  %24 = phi i32 [ %61, %58 ], [ %12, %19 ]
  %25 = phi ptr [ %60, %58 ], [ %13, %19 ]
  %26 = phi i8 [ %59, %58 ], [ 0, %19 ]
  %27 = getelementptr inbounds %struct.elt_loc_list, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !177
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %32, label %58, !prof !236, !llvm.loop !237

32:                                               ; preds = %22
  %33 = load ptr, ptr @compiler_params, align 8, !tbaa !171
  %34 = getelementptr inbounds %struct.param_info, ptr %33, i64 73, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !238
  %36 = icmp slt i32 %24, %35
  br i1 %36, label %37, label %46, !prof !240

37:                                               ; preds = %32
  %38 = load i32, ptr %6, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = tail call i32 @canon_true_dependence(ptr noundef nonnull %6, i32 noundef %40, ptr noundef %5, ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull @cselib_rtx_varies_p) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46, !prof !241

43:                                               ; preds = %37
  %44 = add nsw i32 %24, 1
  %45 = load ptr, ptr %25, align 8, !tbaa !171
  br label %58, !llvm.loop !237

46:                                               ; preds = %37, %32
  %47 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = tail call ptr @cselib_lookup(ptr noundef %48, i32 noundef 0, i32 noundef 0) #16
  %50 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 4
  br label %51

51:                                               ; preds = %51, %46
  %52 = phi ptr [ %50, %46 ], [ %53, %51 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !171
  %54 = getelementptr inbounds %struct.elt_list, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !214
  %56 = icmp eq ptr %55, %11
  br i1 %56, label %57, label %51, !prof !242

57:                                               ; preds = %51
  tail call fastcc void @unchain_one_elt_list(ptr noundef nonnull %52) #16
  tail call fastcc void @unchain_one_elt_loc_list(ptr noundef nonnull %25) #16
  br label %58

58:                                               ; preds = %22, %57, %43
  %59 = phi i8 [ %26, %57 ], [ 1, %43 ], [ %26, %22 ]
  %60 = phi ptr [ %25, %57 ], [ %45, %43 ], [ %23, %22 ]
  %61 = phi i32 [ %24, %57 ], [ %44, %43 ], [ %24, %22 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !171
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %22, !prof !243

64:                                               ; preds = %58
  br i1 %15, label %85, label %65, !prof !244

65:                                               ; preds = %64
  %66 = load ptr, ptr %13, align 8, !tbaa !175
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %85, !prof !245

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !190
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 67108864
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85, !prof !246

74:                                               ; preds = %68
  %75 = icmp eq ptr %21, null
  br i1 %75, label %80, label %76, !prof !247

76:                                               ; preds = %74
  %77 = load i32, ptr %21, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 7
  br i1 %79, label %81, label %80, !prof !247

80:                                               ; preds = %76, %74
  br label %81

81:                                               ; preds = %76, %80
  %82 = phi ptr [ @n_useless_values, %80 ], [ @n_useless_debug_values, %76 ]
  %83 = load i32, ptr %82, align 4, !tbaa !167
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !167
  br label %85

85:                                               ; preds = %81, %68, %65, %64
  %86 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !235
  %88 = icmp eq i8 %59, 0
  br i1 %88, label %90, label %89, !prof !248

89:                                               ; preds = %85
  store ptr %11, ptr %10, align 8, !tbaa !171
  br label %94

90:                                               ; preds = %16, %85
  %91 = phi ptr [ %18, %16 ], [ %87, %85 ]
  %92 = phi ptr [ %17, %16 ], [ %86, %85 ]
  %93 = phi i32 [ %12, %16 ], [ %61, %85 ]
  store ptr null, ptr %92, align 8, !tbaa !235
  br label %94

94:                                               ; preds = %90, %89
  %95 = phi ptr [ %87, %89 ], [ %91, %90 ]
  %96 = phi i32 [ %61, %89 ], [ %93, %90 ]
  %97 = phi ptr [ %86, %89 ], [ %10, %90 ]
  %98 = icmp eq ptr %95, @dummy_val
  br i1 %98, label %99, label %9, !prof !249, !llvm.loop !250

99:                                               ; preds = %94, %1
  %100 = phi ptr [ @first_containing_mem, %1 ], [ %97, %94 ]
  store ptr @dummy_val, ptr %100, align 8, !tbaa !171
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_useless_values() unnamed_addr #0 !prof !251 !PGOFuncName !252 {
  br label %1

1:                                                ; preds = %1, %0
  store i1 false, ptr @values_became_useless, align 4
  %2 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  tail call void @htab_traverse(ptr noundef %2, ptr noundef nonnull @discard_useless_locs, ptr noundef null) #17
  %3 = load i1, ptr @values_became_useless, align 4
  br i1 %3, label %1, label %4, !prof !253, !llvm.loop !254

4:                                                ; preds = %1
  %5 = load ptr, ptr @first_containing_mem, align 8, !tbaa !171
  %6 = icmp eq ptr %5, @dummy_val
  br i1 %6, label %20, label %7, !prof !255

7:                                                ; preds = %4, %15
  %8 = phi ptr [ %18, %15 ], [ %5, %4 ]
  %9 = phi ptr [ %16, %15 ], [ @first_containing_mem, %4 ]
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !175
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  store ptr %8, ptr %9, align 8, !tbaa !171
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 5
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = icmp eq ptr %18, @dummy_val
  br i1 %19, label %20, label %7, !prof !256, !llvm.loop !257

20:                                               ; preds = %15, %4
  %21 = phi ptr [ @first_containing_mem, %4 ], [ %16, %15 ]
  store ptr @dummy_val, ptr %21, align 8, !tbaa !171
  %22 = load i32, ptr @n_useless_debug_values, align 4, !tbaa !167
  %23 = load i32, ptr @n_useless_values, align 4, !tbaa !167
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr @n_useless_values, align 4, !tbaa !167
  %25 = load i32, ptr @n_debug_values, align 4, !tbaa !167
  %26 = sub nsw i32 %25, %22
  store i32 %26, ptr @n_debug_values, align 4, !tbaa !167
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !167
  %27 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  tail call void @htab_traverse(ptr noundef %27, ptr noundef nonnull @discard_useless_values, ptr noundef null) #17
  %28 = load i32, ptr @n_useless_values, align 4, !tbaa !167
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !258

30:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 550, ptr noundef nonnull @.str.1) #17
  br label %31

31:                                               ; preds = %20, %30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cselib_reg_set_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !259 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %8, label %5, !prof !260

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  br label %25

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !171
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15, !prof !261

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.elt_list, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !214
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19, !prof !262

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cselib_val_struct, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %8, %15, %19, %5
  %26 = phi i32 [ %24, %19 ], [ %7, %5 ], [ 0, %15 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_equal_for_cselib_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !263 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %13 [
    i16 37, label %5
    i16 43, label %5
  ], !prof !264

5:                                                ; preds = %2, %2
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %7, i32 noundef 0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !265

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !190
  br label %13

13:                                               ; preds = %5, %10, %2
  %14 = phi ptr [ %0, %2 ], [ %12, %10 ], [ %0, %5 ]
  %15 = load i32, ptr %1, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %25 [
    i16 37, label %17
    i16 43, label %17
  ], !prof !266

17:                                               ; preds = %13, %13
  %18 = lshr i32 %15, 16
  %19 = and i32 %18, 255
  %20 = tail call ptr @cselib_lookup(ptr noundef nonnull %1, i32 noundef %19, i32 noundef 0) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !267

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cselib_val_struct, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !190
  br label %25

25:                                               ; preds = %17, %22, %13
  %26 = phi ptr [ %1, %13 ], [ %24, %22 ], [ %1, %17 ]
  %27 = icmp eq ptr %14, %26
  br i1 %27, label %179, label %28, !prof !268

28:                                               ; preds = %25
  %29 = load i32, ptr %14, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 1
  %32 = load i32, ptr %26, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 1
  br i1 %31, label %35, label %54, !prof !269

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  br i1 %34, label %173, label %38, !prof !270

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.cselib_val_struct, ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !171
  %41 = icmp eq ptr %40, null
  br i1 %41, label %179, label %42, !prof !271

42:                                               ; preds = %38, %51
  %43 = phi ptr [ %52, %51 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.elt_loc_list, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !177
  %46 = load i32, ptr %45, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %48 [
    i16 37, label %51
    i16 43, label %51
  ], !prof !272

48:                                               ; preds = %42
  %49 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %45, ptr noundef nonnull %26) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %179, !prof !273

51:                                               ; preds = %48, %42, %42
  %52 = load ptr, ptr %43, align 8, !tbaa !171
  %53 = icmp eq ptr %52, null
  br i1 %53, label %179, label %42, !prof !274, !llvm.loop !275

54:                                               ; preds = %28
  br i1 %34, label %55, label %73, !prof !276

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !181
  %58 = getelementptr inbounds %struct.cselib_val_struct, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !171
  %60 = icmp eq ptr %59, null
  br i1 %60, label %179, label %61, !prof !277

61:                                               ; preds = %55, %70
  %62 = phi ptr [ %71, %70 ], [ %59, %55 ]
  %63 = getelementptr inbounds %struct.elt_loc_list, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !177
  %65 = load i32, ptr %64, align 8
  %66 = trunc i32 %65 to i16
  switch i16 %66, label %67 [
    i16 37, label %70
    i16 43, label %70
  ], !prof !278

67:                                               ; preds = %61
  %68 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %14, ptr noundef nonnull %64) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %179, !prof !279

70:                                               ; preds = %67, %61, %61
  %71 = load ptr, ptr %62, align 8, !tbaa !171
  %72 = icmp eq ptr %71, null
  br i1 %72, label %179, label %61, !prof !280, !llvm.loop !281

73:                                               ; preds = %54
  %74 = icmp eq i32 %30, %33
  br i1 %74, label %75, label %179, !prof !282

75:                                               ; preds = %73
  %76 = xor i32 %32, %29
  %77 = and i32 %76, 16711680
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %179, !prof !283

79:                                               ; preds = %75
  %80 = trunc i32 %29 to i16
  switch i16 %80, label %84 [
    i16 32, label %179
    i16 31, label %179
    i16 2, label %179
    i16 44, label %81
  ], !prof !284

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !181
  br label %173

84:                                               ; preds = %79
  %85 = zext nneg i32 %30 to i64
  %86 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !171
  %88 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %85
  %89 = load i8, ptr %88, align 1, !tbaa !181
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %179, label %91, !prof !285

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %93 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %94 = zext i8 %89 to i64
  br label %95

95:                                               ; preds = %91, %171
  %96 = phi i64 [ %94, %91 ], [ %97, %171 ]
  %97 = add nsw i64 %96, -1
  %98 = getelementptr inbounds i8, ptr %87, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !181
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
  ], !prof !286

100:                                              ; preds = %95
  %101 = getelementptr inbounds [1 x i64], ptr %92, i64 0, i64 %97
  %102 = load i64, ptr %101, align 8, !tbaa !181
  %103 = getelementptr inbounds [1 x i64], ptr %93, i64 0, i64 %97
  %104 = load i64, ptr %103, align 8, !tbaa !181
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %171, label %179, !prof !287

106:                                              ; preds = %95, %95
  %107 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %108 = load i32, ptr %107, align 8, !tbaa !181
  %109 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %110 = load i32, ptr %109, align 8, !tbaa !181
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %171, label %179, !prof !288

112:                                              ; preds = %95, %95
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %114 = load ptr, ptr %113, align 8, !tbaa !181
  %115 = load i32, ptr %114, align 8, !tbaa !197
  %116 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %117 = load ptr, ptr %116, align 8, !tbaa !181
  %118 = load i32, ptr %117, align 8, !tbaa !197
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %179

120:                                              ; preds = %112
  %121 = icmp sgt i32 %115, 0
  br i1 %121, label %128, label %171

122:                                              ; preds = %128
  %123 = add nuw nsw i64 %129, 1
  %124 = load ptr, ptr %113, align 8, !tbaa !181
  %125 = load i32, ptr %124, align 8, !tbaa !197
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %123, %126
  br i1 %127, label %128, label %171, !llvm.loop !289

128:                                              ; preds = %120, %122
  %129 = phi i64 [ %123, %122 ], [ 0, %120 ]
  %130 = phi ptr [ %124, %122 ], [ %114, %120 ]
  %131 = getelementptr inbounds %struct.rtvec_def, ptr %130, i64 0, i32 1, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !171
  %133 = load ptr, ptr %116, align 8, !tbaa !181
  %134 = getelementptr inbounds %struct.rtvec_def, ptr %133, i64 0, i32 1, i64 %129
  %135 = load ptr, ptr %134, align 8, !tbaa !171
  %136 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %132, ptr noundef %135) #16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %179, label %122

138:                                              ; preds = %95
  %139 = icmp eq i64 %97, 1
  br i1 %139, label %140, label %156, !prof !290

140:                                              ; preds = %138
  %141 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 38), align 8, !tbaa !291
  %142 = tail call zeroext i8 %141(ptr noundef nonnull %14, i32 noundef 0) #17
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %156, label %144, !prof !304

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !181
  %147 = load ptr, ptr %93, align 8, !tbaa !181
  %148 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %146, ptr noundef %147) #16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150, !prof !305

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %92, align 8, !tbaa !181
  %153 = load ptr, ptr %151, align 8, !tbaa !181
  %154 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %152, ptr noundef %153) #16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %150, %144, %140, %138
  %157 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %158 = load ptr, ptr %157, align 8, !tbaa !181
  %159 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %160 = load ptr, ptr %159, align 8, !tbaa !181
  %161 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %158, ptr noundef %160) #16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %179, label %171, !prof !306

163:                                              ; preds = %95, %95
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %97
  %165 = load ptr, ptr %164, align 8, !tbaa !181
  %166 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %97
  %167 = load ptr, ptr %166, align 8, !tbaa !181
  %168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(1) %167) #16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %179, !prof !307

170:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 766, ptr noundef nonnull @.str.1) #17
  br label %171

171:                                              ; preds = %122, %120, %95, %170, %100, %106, %156, %163, %95, %95
  %172 = icmp sgt i64 %96, 1
  br i1 %172, label %95, label %179, !prof !308, !llvm.loop !309

173:                                              ; preds = %35, %81
  %174 = phi ptr [ %83, %81 ], [ %37, %35 ]
  %175 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !181
  %177 = icmp eq ptr %174, %176
  %178 = zext i1 %177 to i32
  br label %179

179:                                              ; preds = %171, %100, %106, %112, %150, %156, %163, %128, %70, %67, %51, %48, %173, %84, %55, %38, %79, %79, %79, %73, %75, %25
  %180 = phi i32 [ 1, %25 ], [ 0, %75 ], [ 0, %73 ], [ 0, %79 ], [ 0, %79 ], [ 0, %79 ], [ 0, %38 ], [ 0, %55 ], [ 1, %84 ], [ %178, %173 ], [ 0, %51 ], [ 1, %48 ], [ 0, %70 ], [ 1, %67 ], [ 0, %128 ], [ 1, %171 ], [ 0, %100 ], [ 0, %106 ], [ 0, %112 ], [ 1, %150 ], [ 0, %156 ], [ 0, %163 ]
  ret i32 %180
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !310 {
  %4 = tail call fastcc ptr @cselib_lookup_1(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !311

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !167
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #16
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !171
  tail call void @print_inline_rtx(ptr noundef %13, ptr noundef %0, i32 noundef 2) #17
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %15 = icmp eq ptr %4, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %4, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !312
  %19 = load i32, ptr %4, align 8, !tbaa !313
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %11 ]
  %22 = phi i32 [ %19, %16 ], [ 0, %11 ]
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.3, i32 noundef %21, i32 noundef %22) #16
  br label %24

24:                                               ; preds = %20, %7, %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_expand_value_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !314 {
  %4 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  store ptr %1, ptr %4, align 8, !tbaa !315
  %5 = getelementptr inbounds %struct.expand_value_data, ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %5, i8 0, i64 17, i1 false)
  %6 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !317 !PGOFuncName !318 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %307, label %7, !prof !319

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
  ], !prof !320

9:                                                ; preds = %7
  %10 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  %15 = icmp eq ptr %14, null
  br i1 %15, label %307, label %16, !prof !321

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.elt_list, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !214
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !322

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !323
  %22 = icmp eq ptr %21, null
  br i1 %22, label %307, label %23, !prof !244

23:                                               ; preds = %16, %20
  %24 = phi ptr [ %14, %16 ], [ %21, %20 ]
  br label %25

25:                                               ; preds = %23, %57
  %26 = phi ptr [ %58, %57 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.elt_list, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !214
  %29 = getelementptr inbounds %struct.cselib_val_struct, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !190
  %31 = load i32, ptr %30, align 8
  %32 = xor i32 %31, %4
  %33 = and i32 %32, 16711680
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %57, !prof !324

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.elt_list, ptr %26, i64 0, i32 1
  switch i32 %11, label %37 [
    i32 7, label %307
    i32 20, label %307
    i32 6, label %307
  ], !prof !325

37:                                               ; preds = %35
  %38 = load ptr, ptr %1, align 8, !tbaa !315
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %38, i32 noundef %11) #17
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42, !prof !326

42:                                               ; preds = %37
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !167
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %40, ptr noundef nonnull @.str.11, i32 noundef %11) #16
  br label %48

48:                                               ; preds = %46, %42, %37
  %49 = load ptr, ptr %36, align 8, !tbaa !214
  %50 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !175
  %52 = tail call fastcc ptr @expand_loc(ptr noundef %51, ptr noundef nonnull %1, i32 noundef %2) #16
  %53 = load ptr, ptr %1, align 8, !tbaa !315
  %54 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %53, i32 noundef %11) #17
  %55 = icmp eq ptr %52, null
  %56 = select i1 %55, ptr %0, ptr %52, !prof !327
  br label %307

57:                                               ; preds = %25
  %58 = load ptr, ptr %26, align 8, !tbaa !323
  %59 = icmp eq ptr %58, null
  br i1 %59, label %307, label %25, !prof !328, !llvm.loop !329

60:                                               ; preds = %7
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !181
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
  br i1 %71, label %148, label %307

72:                                               ; preds = %7
  %73 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !330
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %1, align 8, !tbaa !315
  %78 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !331
  %80 = tail call ptr %74(ptr noundef nonnull %0, ptr noundef %77, i32 noundef %2, ptr noundef %79) #17
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %307

82:                                               ; preds = %76, %72
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !181
  %85 = add nsw i32 %2, -1
  %86 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %84, ptr noundef nonnull %1, i32 noundef %85) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %307, label %88

88:                                               ; preds = %82
  %89 = load i32, ptr %0, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = load ptr, ptr %83, align 8, !tbaa !181
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load i32, ptr %96, align 8, !tbaa !181
  %98 = tail call ptr @simplify_gen_subreg(i32 noundef %91, ptr noundef nonnull %86, i32 noundef %95, i32 noundef %97) #17
  %99 = icmp eq ptr %98, null
  br i1 %99, label %307, label %100

100:                                              ; preds = %88
  %101 = load i32, ptr %98, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 39
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !181
  %107 = load i32, ptr %106, align 8
  %108 = trunc i32 %107 to i16
  switch i16 %108, label %307 [
    i16 37, label %109
    i16 43, label %109
  ]

109:                                              ; preds = %104, %104, %100
  br label %307

110:                                              ; preds = %7
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr @dump_flags, align 4, !tbaa !167
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef nonnull %111) #16
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %120 = tail call i32 @print_rtl_single(ptr noundef %119, ptr noundef nonnull %0) #17
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %122 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %121) #16
  br label %123

123:                                              ; preds = %117, %113, %110
  %124 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !330
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %1, align 8, !tbaa !315
  %129 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !331
  %131 = tail call ptr %125(ptr noundef nonnull %0, ptr noundef %128, i32 noundef %2, ptr noundef %130) #17
  %132 = icmp eq ptr %131, %0
  br i1 %132, label %133, label %307

133:                                              ; preds = %127, %123
  %134 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !181
  %136 = getelementptr inbounds %struct.cselib_val_struct, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !175
  %138 = tail call fastcc ptr @expand_loc(ptr noundef %137, ptr noundef nonnull %1, i32 noundef %2) #16
  br label %307

139:                                              ; preds = %7
  %140 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !330
  %142 = icmp eq ptr %141, null
  br i1 %142, label %307, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %1, align 8, !tbaa !315
  %145 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !331
  %147 = tail call ptr %141(ptr noundef nonnull %0, ptr noundef %144, i32 noundef %2, ptr noundef %146) #17
  br label %307

148:                                              ; preds = %7, %69, %60, %66
  %149 = getelementptr inbounds %struct.expand_value_data, ptr %1, i64 0, i32 3
  %150 = load i8, ptr %149, align 8, !tbaa !332
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %154, !prof !333

152:                                              ; preds = %148
  %153 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  br label %154

154:                                              ; preds = %148, %152
  %155 = phi ptr [ %153, %152 ], [ null, %148 ]
  %156 = zext nneg i32 %5 to i64
  %157 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !181
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %220, label %160, !prof !334

160:                                              ; preds = %154
  %161 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %156
  %162 = load ptr, ptr %161, align 8, !tbaa !171
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
  %172 = load i8, ptr %170, align 1, !tbaa !181
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
  ], !prof !335

173:                                              ; preds = %168
  %174 = getelementptr inbounds [1 x %union.rtunion_def], ptr %163, i64 0, i64 %169
  %175 = load ptr, ptr %174, align 8, !tbaa !181
  %176 = icmp eq ptr %175, null
  br i1 %176, label %217, label %177, !prof !336

177:                                              ; preds = %173
  %178 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef nonnull %175, ptr noundef %1, i32 noundef %166) #16
  %179 = icmp eq ptr %178, null
  br i1 %179, label %307, label %180, !prof !336

180:                                              ; preds = %177
  br i1 %164, label %217, label %181, !prof !336

181:                                              ; preds = %180
  %182 = getelementptr inbounds [1 x %union.rtunion_def], ptr %165, i64 0, i64 %169
  store ptr %178, ptr %182, align 8, !tbaa !181
  br label %217

183:                                              ; preds = %168, %168
  %184 = getelementptr inbounds [1 x %union.rtunion_def], ptr %163, i64 0, i64 %169
  %185 = load ptr, ptr %184, align 8, !tbaa !181
  %186 = icmp eq ptr %185, null
  br i1 %186, label %217, label %187

187:                                              ; preds = %183
  br i1 %164, label %193, label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %185, align 8, !tbaa !197
  %190 = tail call ptr @rtvec_alloc(i32 noundef %189) #17
  %191 = getelementptr inbounds [1 x %union.rtunion_def], ptr %165, i64 0, i64 %169
  store ptr %190, ptr %191, align 8, !tbaa !181
  %192 = load ptr, ptr %184, align 8, !tbaa !181
  br label %193

193:                                              ; preds = %188, %187
  %194 = phi ptr [ %192, %188 ], [ %185, %187 ]
  %195 = load i32, ptr %194, align 8, !tbaa !197
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %193
  %198 = getelementptr inbounds [1 x %union.rtunion_def], ptr %165, i64 0, i64 %169
  br label %199

199:                                              ; preds = %197, %210
  %200 = phi i64 [ 0, %197 ], [ %211, %210 ]
  %201 = phi ptr [ %194, %197 ], [ %212, %210 ]
  %202 = getelementptr inbounds %struct.rtvec_def, ptr %201, i64 0, i32 1, i64 %200
  %203 = load ptr, ptr %202, align 8, !tbaa !171
  %204 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %203, ptr noundef %1, i32 noundef %166) #16
  %205 = icmp eq ptr %204, null
  br i1 %205, label %307, label %206

206:                                              ; preds = %199
  br i1 %164, label %210, label %207

207:                                              ; preds = %206
  %208 = load ptr, ptr %198, align 8, !tbaa !181
  %209 = getelementptr inbounds %struct.rtvec_def, ptr %208, i64 0, i32 1, i64 %200
  store ptr %204, ptr %209, align 8, !tbaa !171
  br label %210

210:                                              ; preds = %207, %206
  %211 = add nuw nsw i64 %200, 1
  %212 = load ptr, ptr %184, align 8, !tbaa !181
  %213 = load i32, ptr %212, align 8, !tbaa !197
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %199, label %217, !llvm.loop !337

216:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1438, ptr noundef nonnull @.str.1) #17
  br label %217

217:                                              ; preds = %210, %193, %181, %180, %216, %173, %183, %168, %168, %168, %168, %168, %168, %168, %168, %168
  %218 = add nuw nsw i64 %169, 1
  %219 = icmp eq i64 %218, %167
  br i1 %219, label %220, label %168, !prof !338, !llvm.loop !339

220:                                              ; preds = %217, %154
  %221 = load i8, ptr %149, align 8, !tbaa !332
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %307, !prof !333

223:                                              ; preds = %220
  %224 = load i32, ptr %155, align 8
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  %227 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %156
  %228 = load i32, ptr %227, align 4, !tbaa !167
  switch i32 %228, label %303 [
    i32 4, label %229
    i32 1, label %265
    i32 0, label %265
    i32 10, label %245
    i32 11, label %245
  ], !prof !340

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !181
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 30
  br i1 %234, label %235, label %303

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !181
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
  %247 = load ptr, ptr %246, align 8, !tbaa !181
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 30
  br i1 %250, label %251, label %303

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !181
  %254 = load i32, ptr %253, align 8
  %255 = lshr i32 %254, 16
  %256 = and i32 %255, 255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %303, label %258

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !181
  %261 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %262 = load ptr, ptr %261, align 8, !tbaa !181
  %263 = tail call ptr @simplify_ternary_operation(i32 noundef %5, i32 noundef %226, i32 noundef %256, ptr noundef nonnull %247, ptr noundef %260, ptr noundef %262) #17
  %264 = icmp eq ptr %263, null
  br i1 %264, label %303, label %307

265:                                              ; preds = %223, %223
  %266 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !181
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 30
  br i1 %270, label %271, label %303

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !181
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 16711680
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %303

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !181
  %280 = load i32, ptr %279, align 8
  %281 = and i32 %280, 16711680
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %285 = load ptr, ptr %284, align 8, !tbaa !181
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
  %295 = load ptr, ptr %294, align 8, !tbaa !181
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
  %306 = select i1 %305, ptr %155, ptr %304, !prof !341
  br label %307

307:                                              ; preds = %57, %177, %199, %9, %20, %48, %35, %35, %35, %7, %7, %7, %7, %7, %7, %7, %7, %303, %299, %258, %242, %220, %139, %133, %127, %109, %76, %82, %104, %88, %69, %66, %3, %143
  %308 = phi ptr [ %147, %143 ], [ null, %3 ], [ %0, %66 ], [ %0, %69 ], [ %98, %109 ], [ %80, %76 ], [ null, %82 ], [ null, %104 ], [ null, %88 ], [ %138, %133 ], [ %131, %127 ], [ %0, %139 ], [ %0, %220 ], [ %243, %242 ], [ %263, %258 ], [ %301, %299 ], [ %306, %303 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %7 ], [ %0, %35 ], [ %0, %35 ], [ %56, %48 ], [ %0, %35 ], [ %0, %20 ], [ %0, %9 ], [ null, %199 ], [ null, %177 ], [ %0, %57 ]
  ret ptr %308
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_expand_value_rtx_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !186 {
  %6 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  store ptr %1, ptr %6, align 8, !tbaa !315
  %7 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !330
  %8 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !331
  %9 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 3
  store i8 0, ptr %9, align 8, !tbaa !332
  %10 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !186 {
  %6 = alloca %struct.expand_value_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  store ptr %1, ptr %6, align 8, !tbaa !315
  %7 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !330
  %8 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !331
  %9 = getelementptr inbounds %struct.expand_value_data, ptr %6, i64 0, i32 3
  store i8 1, ptr %9, align 8, !tbaa !332
  %10 = call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #16
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_subst_to_values(ptr noundef %0) local_unnamed_addr #0 !prof !342 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !171
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
  ], !prof !343

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !171
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15, !prof !344

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.elt_list, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !214
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22, !prof !345

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !323
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22, !prof !346

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %13, %15 ], [ %20, %19 ]
  br label %24

24:                                               ; preds = %22, %34
  %25 = phi ptr [ %35, %34 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.elt_list, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !214
  %28 = getelementptr inbounds %struct.cselib_val_struct, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !190
  %30 = load i32, ptr %29, align 8
  %31 = xor i32 %30, %2
  %32 = and i32 %31, 16711680
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %127, label %34, !prof !347

34:                                               ; preds = %24
  %35 = load ptr, ptr %25, align 8, !tbaa !323
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24, !prof !348, !llvm.loop !349

37:                                               ; preds = %34, %8, %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1532, ptr noundef nonnull @.str.1) #17
  br label %38

38:                                               ; preds = %1, %37
  %39 = tail call fastcc ptr @cselib_lookup_mem(ptr noundef nonnull %0, i32 noundef 0) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %123, !prof !350

41:                                               ; preds = %38
  %42 = load i32, ptr %0, align 8
  br label %117

43:                                               ; preds = %1
  %44 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %4
  %45 = load i8, ptr %44, align 1, !tbaa !181
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %127, label %47, !prof !351

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = zext i8 %45 to i64
  br label %50

50:                                               ; preds = %47, %114
  %51 = phi i64 [ %49, %47 ], [ %53, %114 ]
  %52 = phi ptr [ %0, %47 ], [ %115, %114 ]
  %53 = add nsw i64 %51, -1
  %54 = getelementptr inbounds i8, ptr %6, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !181
  switch i8 %55, label %114 [
    i8 101, label %61
    i8 69, label %56
  ], !prof !352

56:                                               ; preds = %50
  %57 = getelementptr inbounds [1 x %union.rtunion_def], ptr %48, i64 0, i64 %53
  %58 = load ptr, ptr %57, align 8, !tbaa !181
  %59 = load i32, ptr %58, align 8, !tbaa !197
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %75, label %114

61:                                               ; preds = %50
  %62 = getelementptr inbounds [1 x %union.rtunion_def], ptr %48, i64 0, i64 %53
  %63 = load ptr, ptr %62, align 8, !tbaa !181
  %64 = tail call ptr @cselib_subst_to_values(ptr noundef %63) #16
  %65 = load ptr, ptr %62, align 8, !tbaa !181
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %114, label %67, !prof !353

67:                                               ; preds = %61
  %68 = icmp eq ptr %52, %0
  br i1 %68, label %69, label %71, !prof !354

69:                                               ; preds = %67
  %70 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %70, %69 ], [ %52, %67 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], ptr %73, i64 0, i64 %53
  store ptr %64, ptr %74, align 8, !tbaa !181
  br label %114

75:                                               ; preds = %56, %107
  %76 = phi i64 [ %110, %107 ], [ 0, %56 ]
  %77 = phi ptr [ %108, %107 ], [ %58, %56 ]
  %78 = phi ptr [ %109, %107 ], [ %52, %56 ]
  %79 = getelementptr inbounds %struct.rtvec_def, ptr %77, i64 0, i32 1, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !171
  %81 = tail call ptr @cselib_subst_to_values(ptr noundef %80) #16
  %82 = load ptr, ptr %57, align 8, !tbaa !181
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %76
  %84 = load ptr, ptr %83, align 8, !tbaa !171
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %107, label %86

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %88 = getelementptr inbounds [1 x %union.rtunion_def], ptr %87, i64 0, i64 %53
  %89 = load ptr, ptr %88, align 8, !tbaa !181
  %90 = icmp eq ptr %82, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = icmp eq ptr %78, %0
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  %95 = load ptr, ptr %57, align 8, !tbaa !181
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi ptr [ %95, %93 ], [ %82, %91 ]
  %98 = phi ptr [ %94, %93 ], [ %78, %91 ]
  %99 = tail call ptr @shallow_copy_rtvec(ptr noundef %97) #17
  %100 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %101 = getelementptr inbounds [1 x %union.rtunion_def], ptr %100, i64 0, i64 %53
  store ptr %99, ptr %101, align 8, !tbaa !181
  br label %102

102:                                              ; preds = %96, %86
  %103 = phi ptr [ %99, %96 ], [ %89, %86 ]
  %104 = phi ptr [ %98, %96 ], [ %78, %86 ]
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1, i64 %76
  store ptr %81, ptr %105, align 8, !tbaa !171
  %106 = load ptr, ptr %57, align 8, !tbaa !181
  br label %107

107:                                              ; preds = %102, %75
  %108 = phi ptr [ %106, %102 ], [ %82, %75 ]
  %109 = phi ptr [ %104, %102 ], [ %78, %75 ]
  %110 = add nuw nsw i64 %76, 1
  %111 = load i32, ptr %108, align 8, !tbaa !197
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %75, label %114, !llvm.loop !355

114:                                              ; preds = %107, %56, %50, %61, %71
  %115 = phi ptr [ %72, %71 ], [ %52, %61 ], [ %52, %50 ], [ %52, %56 ], [ %109, %107 ]
  %116 = icmp sgt i64 %51, 1
  br i1 %116, label %50, label %127, !prof !356, !llvm.loop !357

117:                                              ; preds = %1, %1, %1, %1, %1, %1, %41
  %118 = phi i32 [ %42, %41 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ], [ %2, %1 ]
  %119 = load i32, ptr @next_uid, align 4, !tbaa !167
  %120 = lshr i32 %118, 16
  %121 = and i32 %120, 255
  %122 = tail call fastcc ptr @new_cselib_val(i32 noundef %119, i32 noundef %121, ptr noundef nonnull %0) #16
  br label %123

123:                                              ; preds = %117, %38
  %124 = phi ptr [ %39, %38 ], [ %122, %117 ]
  %125 = getelementptr inbounds %struct.cselib_val_struct, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !190
  br label %127

127:                                              ; preds = %24, %114, %123, %43, %1, %1, %1, %1
  %128 = phi ptr [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %43 ], [ %126, %123 ], [ %115, %114 ], [ %29, %24 ]
  ret ptr %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cselib_lookup_mem(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !358 !PGOFuncName !359 {
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
  br i1 %12, label %13, label %54, !prof !360

13:                                               ; preds = %2
  %14 = zext nneg i32 %5 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !181
  switch i8 %16, label %20 [
    i8 8, label %17
    i8 9, label %17
    i8 11, label %17
    i8 17, label %17
  ], !prof !361

17:                                               ; preds = %13, %13, %13, %13
  %18 = load i32, ptr @flag_float_store, align 4, !tbaa !167
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %13, %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = tail call ptr @cselib_lookup(ptr noundef %22, i32 noundef %5, i32 noundef %1) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25, !prof !362

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cselib_val_struct, ptr %23, i64 0, i32 4
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi ptr [ %26, %25 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !171
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !prof !363

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.elt_list, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !214
  %34 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !190
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, %5
  br i1 %39, label %40, label %27, !prof !364, !llvm.loop !365

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.elt_list, ptr %29, i64 0, i32 1
  %42 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !175
  tail call fastcc void @promote_debug_loc(ptr noundef %43) #16
  %44 = load ptr, ptr %41, align 8, !tbaa !214
  br label %54

45:                                               ; preds = %27
  %46 = icmp eq i32 %1, 0
  br i1 %46, label %54, label %47, !prof !366

47:                                               ; preds = %45
  %48 = load i32, ptr @next_uid, align 4, !tbaa !167
  %49 = tail call fastcc ptr @new_cselib_val(i32 noundef %48, i32 noundef %5, ptr noundef nonnull %0) #16
  tail call fastcc void @add_mem_for_addr(ptr noundef nonnull %23, ptr noundef %49, ptr noundef nonnull %0) #16
  %50 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  %51 = tail call fastcc ptr @wrap_constant(i32 noundef %5, ptr noundef nonnull %0) #16
  %52 = load i32, ptr %49, align 8, !tbaa !313
  %53 = tail call ptr @htab_find_slot_with_hash(ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef 1) #17
  store ptr %49, ptr %53, align 8, !tbaa !171
  br label %54

54:                                               ; preds = %45, %20, %2, %17, %47, %40
  %55 = phi ptr [ %44, %40 ], [ %49, %47 ], [ null, %17 ], [ null, %2 ], [ null, %20 ], [ null, %45 ]
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_cselib_val(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !367 !PGOFuncName !368 {
  %4 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !171
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #17
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %7, label %8, !prof !369

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 980, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i32, ptr @next_uid, align 4, !tbaa !167
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !369

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @.str.1) #17
  %12 = load i32, ptr @next_uid, align 4, !tbaa !167
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i32 [ %9, %8 ], [ %12, %11 ]
  store i32 %0, ptr %5, align 8, !tbaa !313
  %15 = add i32 %14, 1
  store i32 %15, ptr @next_uid, align 4, !tbaa !167
  %16 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 1
  store i32 %14, ptr %16, align 4, !tbaa !312
  %17 = load ptr, ptr @value_pool, align 8, !tbaa !171
  %18 = tail call ptr @pool_alloc(ptr noundef %17) #17
  %19 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !190
  store i64 0, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -65536
  %23 = or disjoint i32 %22, 1
  store i32 %23, ptr %20, align 8
  %24 = load ptr, ptr %19, align 8, !tbaa !190
  %25 = load i32, ptr %24, align 8
  %26 = shl i32 %1, 16
  %27 = and i32 %26, 16711680
  %28 = and i32 %25, -16711681
  %29 = or disjoint i32 %28, %27
  store i32 %29, ptr %24, align 8
  %30 = load ptr, ptr %19, align 8, !tbaa !190
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  store ptr %5, ptr %31, align 8, !tbaa !181
  %32 = getelementptr inbounds %struct.cselib_val_struct, ptr %5, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35, !prof !370

35:                                               ; preds = %13
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !167
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %16, align 4, !tbaa !312
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.17, i32 noundef %40, i32 noundef %0) #16
  %42 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !167
  %43 = icmp ne i32 %42, 0
  %44 = load i32, ptr @flag_dump_unnumbered, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !171
  br i1 %46, label %48, label %50

48:                                               ; preds = %39
  %49 = tail call i32 @fputs(ptr noundef nonnull @.str.18, ptr noundef %47) #16
  br label %52

50:                                               ; preds = %39
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.19, ptr noundef nonnull %5) #16
  br label %52

52:                                               ; preds = %50, %48
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %54 = tail call i32 @print_rtl_single(ptr noundef %53, ptr noundef %2) #17
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %56 = tail call i32 @fputc(i32 noundef 10, ptr noundef %55) #16
  br label %57

57:                                               ; preds = %52, %35, %13
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @shallow_copy_rtvec(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cselib_lookup_from_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !186 {
  %5 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !171
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1696, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %4, %7
  store ptr %3, ptr @cselib_current_insn, align 8, !tbaa !171
  %9 = tail call ptr @cselib_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !171
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cselib_lookup_1(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !310 !PGOFuncName !371 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %1, i32 %6, !prof !372
  %9 = trunc i32 %4 to i16
  switch i16 %9, label %90 [
    i16 1, label %10
    i16 37, label %13
    i16 43, label %88
  ], !prof !373

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  br label %109

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %15 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20, !prof !374

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.elt_list, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !214
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27, !prof !375

24:                                               ; preds = %20
  %25 = load ptr, ptr %18, align 8, !tbaa !323
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27, !prof !244

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %18, %20 ], [ %25, %24 ]
  br label %29

29:                                               ; preds = %27, %44
  %30 = phi ptr [ %45, %44 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.elt_list, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !214
  %33 = getelementptr inbounds %struct.cselib_val_struct, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !190
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %8, %37
  br i1 %38, label %39, label %44, !prof !376

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.elt_list, ptr %30, i64 0, i32 1
  %41 = getelementptr inbounds %struct.cselib_val_struct, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !175
  tail call fastcc void @promote_debug_loc(ptr noundef %42) #16
  %43 = load ptr, ptr %40, align 8, !tbaa !214
  br label %109

44:                                               ; preds = %29
  %45 = load ptr, ptr %30, align 8, !tbaa !323
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %29, !prof !377, !llvm.loop !378

47:                                               ; preds = %44, %13, %24
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %109, label %49, !prof !379

49:                                               ; preds = %47
  %50 = icmp ult i32 %14, 53
  br i1 %50, label %51, label %59, !prof !380

51:                                               ; preds = %49
  %52 = zext i32 %8 to i64
  %53 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !181
  %55 = zext i8 %54 to i32
  %56 = load i32, ptr @max_value_regs, align 4, !tbaa !167
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %58, label %59, !prof !381

58:                                               ; preds = %51
  store i32 %55, ptr @max_value_regs, align 4, !tbaa !167
  br label %59

59:                                               ; preds = %51, %58, %49
  %60 = load i32, ptr @next_uid, align 4, !tbaa !167
  %61 = tail call fastcc ptr @new_cselib_val(i32 noundef %60, i32 noundef %6, ptr noundef nonnull %0) #16
  %62 = getelementptr inbounds %struct.cselib_val_struct, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !175
  %64 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %63, ptr noundef nonnull %0) #16
  store ptr %64, ptr %62, align 8, !tbaa !175
  %65 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %66 = getelementptr inbounds ptr, ptr %65, i64 %16
  %67 = load ptr, ptr %66, align 8, !tbaa !171
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %78, !prof !382

69:                                               ; preds = %59
  %70 = load ptr, ptr @used_regs, align 8, !tbaa !171
  %71 = load i32, ptr @n_used_regs, align 4, !tbaa !167
  %72 = add i32 %71, 1
  store i32 %72, ptr @n_used_regs, align 4, !tbaa !167
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  store i32 %14, ptr %74, align 4, !tbaa !167
  %75 = tail call fastcc ptr @new_elt_list(ptr noundef null, ptr noundef null) #16
  %76 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %77 = getelementptr inbounds ptr, ptr %76, i64 %16
  store ptr %75, ptr %77, align 8, !tbaa !171
  br label %78

78:                                               ; preds = %69, %59
  %79 = phi ptr [ %75, %69 ], [ %67, %59 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !323
  %81 = tail call fastcc ptr @new_elt_list(ptr noundef %80, ptr noundef nonnull %61) #16
  %82 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %83 = getelementptr inbounds ptr, ptr %82, i64 %16
  %84 = load ptr, ptr %83, align 8, !tbaa !171
  store ptr %81, ptr %84, align 8, !tbaa !323
  %85 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  %86 = load i32, ptr %61, align 8, !tbaa !313
  %87 = tail call ptr @htab_find_slot_with_hash(ptr noundef %85, ptr noundef nonnull %0, i32 noundef %86, i32 noundef 1) #17
  store ptr %61, ptr %87, align 8, !tbaa !171
  br label %109

88:                                               ; preds = %3
  %89 = tail call fastcc ptr @cselib_lookup_mem(ptr noundef nonnull %0, i32 noundef %2) #16
  br label %109

90:                                               ; preds = %3
  %91 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef nonnull %0, i32 noundef %2) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93, !prof !383

93:                                               ; preds = %90
  %94 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  %95 = tail call fastcc ptr @wrap_constant(i32 noundef %8, ptr noundef nonnull %0) #16
  %96 = icmp ne i32 %2, 0
  %97 = zext i1 %96 to i32
  %98 = tail call ptr @htab_find_slot_with_hash(ptr noundef %94, ptr noundef %95, i32 noundef %91, i32 noundef %97) #17
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100, !prof !384

100:                                              ; preds = %93
  %101 = load ptr, ptr %98, align 8, !tbaa !171
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %109, !prof !385

103:                                              ; preds = %100
  %104 = tail call fastcc ptr @new_cselib_val(i32 noundef %91, i32 noundef %8, ptr noundef nonnull %0) #16
  store ptr %104, ptr %98, align 8, !tbaa !171
  %105 = getelementptr inbounds %struct.cselib_val_struct, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !175
  %107 = tail call ptr @cselib_subst_to_values(ptr noundef nonnull %0) #16
  %108 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %106, ptr noundef %107) #16
  store ptr %108, ptr %105, align 8, !tbaa !175
  br label %109

109:                                              ; preds = %100, %93, %90, %39, %78, %47, %103, %88, %10
  %110 = phi ptr [ %12, %10 ], [ %89, %88 ], [ %104, %103 ], [ %43, %39 ], [ %61, %78 ], [ null, %47 ], [ null, %90 ], [ null, %93 ], [ %101, %100 ]
  ret ptr %110
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_invalidate_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !386 {
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
  ], !prof !387

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %8

8:                                                ; preds = %16, %6
  %9 = phi ptr [ %7, %6 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %16 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  br label %2, !llvm.loop !388

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
  br i1 %21, label %22, label %8, !prof !389

22:                                               ; preds = %16
  ret void
}

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_process_insn(ptr noundef %0) local_unnamed_addr #0 !prof !390 {
  store ptr %0, ptr @cselib_current_insn, align 8, !tbaa !171
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %9 [
    i16 12, label %22
    i16 10, label %4
  ], !prof !391

4:                                                ; preds = %1
  %5 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 30, ptr noundef null) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22, !prof !392

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %2, %1 ]
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %24, !prof !393

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %19, label %51, !prof !394

19:                                               ; preds = %13
  %20 = and i32 %16, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %1, %19, %4
  %23 = load i32, ptr @next_uid, align 4, !tbaa !167
  tail call void @cselib_reset_table(i32 noundef %23) #16
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !171
  br label %90

24:                                               ; preds = %9
  %25 = add nsw i32 %11, -7
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %28, label %27, !prof !395

27:                                               ; preds = %24
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !171
  br label %90

28:                                               ; preds = %24
  %29 = icmp eq i32 %11, 10
  br i1 %29, label %30, label %51, !prof !396

30:                                               ; preds = %28, %39
  %31 = phi i64 [ %40, %39 ], [ 0, %28 ]
  %32 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !181
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35, !prof !397

35:                                               ; preds = %30
  %36 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %31
  %37 = load i32, ptr %36, align 4, !tbaa !167
  %38 = trunc i64 %31 to i32
  tail call fastcc void @cselib_invalidate_regno(i32 noundef %38, i32 noundef %37) #16
  br label %39

39:                                               ; preds = %30, %35
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, 53
  br i1 %41, label %42, label %30, !prof !398, !llvm.loop !399

42:                                               ; preds = %39
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 33554432
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %43, -2080374784
  %47 = icmp eq i32 %46, 0
  %48 = or i1 %45, %47
  br i1 %48, label %49, label %51, !prof !400

49:                                               ; preds = %42
  %50 = load ptr, ptr @callmem, align 8, !tbaa !171
  tail call fastcc void @cselib_invalidate_mem(ptr noundef %50) #16
  br label %51

51:                                               ; preds = %42, %19, %13, %49, %28
  tail call fastcc void @cselib_record_sets(ptr noundef nonnull %0) #16
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %73, !prof !401

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !181
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59, !prof !402

59:                                               ; preds = %55, %69
  %60 = phi ptr [ %71, %69 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !181
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 25
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !181
  tail call void @cselib_invalidate_rtx(ptr noundef %68) #16
  br label %69

69:                                               ; preds = %59, %66
  %70 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !181
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %59, !prof !256, !llvm.loop !403

73:                                               ; preds = %69, %55, %51
  store ptr null, ptr @cselib_current_insn, align 8, !tbaa !171
  %74 = load i32, ptr @n_useless_values, align 4, !tbaa !167
  %75 = icmp sgt i32 %74, 32
  br i1 %75, label %76, label %90, !prof !404

76:                                               ; preds = %73
  %77 = zext nneg i32 %74 to i64
  %78 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  %79 = getelementptr inbounds %struct.htab, ptr %78, i64 0, i32 5
  %80 = load i64, ptr %79, align 8, !tbaa !405
  %81 = getelementptr inbounds %struct.htab, ptr %78, i64 0, i32 6
  %82 = load i64, ptr %81, align 8, !tbaa !407
  %83 = load i32, ptr @n_debug_values, align 4, !tbaa !167
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = sub i64 %80, %85
  %87 = lshr i64 %86, 2
  %88 = icmp ult i64 %87, %77
  br i1 %88, label %89, label %90, !prof !258

89:                                               ; preds = %76
  tail call fastcc void @remove_useless_values() #16
  br label %90

90:                                               ; preds = %73, %76, %89, %27, %22
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_record_sets(ptr noundef %0) unnamed_addr #0 !prof !408 !PGOFuncName !409 {
  %2 = alloca [106 x %struct.cselib_set], align 16
  call void @llvm.lifetime.start.p0(i64 3392, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 14
  br i1 %7, label %8, label %14, !prof !410

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !181
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
  ], !prof !411

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  store ptr %22, ptr %2, align 16, !tbaa !412
  %23 = load ptr, ptr %20, align 8, !tbaa !181
  %24 = getelementptr inbounds %struct.cselib_set, ptr %2, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !414
  br label %57

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !181
  %28 = load i32, ptr %27, align 8, !tbaa !197
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %144, !prof !415

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %50
  %33 = phi i64 [ %31, %30 ], [ %35, %50 ]
  %34 = phi i32 [ 0, %30 ], [ %51, %50 ]
  %35 = add nsw i64 %33, -1
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !171
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %41, label %50, !prof !416

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !181
  %45 = sext i32 %34 to i64
  %46 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %45
  store ptr %44, ptr %46, align 16, !tbaa !412
  %47 = load ptr, ptr %42, align 8, !tbaa !181
  %48 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %45, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !414
  %49 = add nsw i32 %34, 1
  br label %50

50:                                               ; preds = %41, %32
  %51 = phi i32 [ %49, %41 ], [ %34, %32 ]
  %52 = icmp ugt i64 %33, 1
  br i1 %52, label %32, label %53, !prof !417, !llvm.loop !418

53:                                               ; preds = %50
  %54 = icmp eq i32 %51, 1
  br i1 %54, label %55, label %78, !prof !419

55:                                               ; preds = %53
  %56 = load ptr, ptr %2, align 16, !tbaa !412
  br label %57

57:                                               ; preds = %55, %19
  %58 = phi ptr [ %56, %55 ], [ %22, %19 ]
  %59 = load i32, ptr %58, align 8
  %60 = load i8, ptr @cselib_record_memory, align 1
  %61 = icmp ne i8 %60, 0
  %62 = and i32 %59, 67174399
  %63 = icmp ne i32 %62, 67108907
  %64 = select i1 %63, i1 true, i1 %61
  br i1 %64, label %80, label %65, !prof !420

65:                                               ; preds = %57
  %66 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %0) #17
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68, !prof !421

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !181
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !167
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  store ptr %70, ptr %2, align 16, !tbaa !412
  br label %80

78:                                               ; preds = %53
  %79 = icmp sgt i32 %51, 0
  br i1 %79, label %80, label %144, !prof !422

80:                                               ; preds = %57, %77, %68, %65, %78
  %81 = phi i32 [ %51, %78 ], [ 1, %65 ], [ 1, %68 ], [ 1, %77 ], [ 1, %57 ]
  %82 = zext nneg i32 %81 to i64
  br label %83

83:                                               ; preds = %80, %141
  %84 = phi i64 [ 0, %80 ], [ %142, %141 ]
  %85 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %84
  %86 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %84, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !414
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 40
  br i1 %90, label %91, label %96, !prof !423

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !181
  store ptr %93, ptr %86, align 8, !tbaa !414
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  br label %96

96:                                               ; preds = %91, %83
  %97 = phi i32 [ %95, %91 ], [ %89, %83 ]
  %98 = phi i32 [ %94, %91 ], [ %88, %83 ]
  %99 = phi ptr [ %93, %91 ], [ %87, %83 ]
  %100 = icmp eq i32 %97, 37
  br i1 %100, label %106, label %101, !prof !424

101:                                              ; preds = %96
  %102 = icmp eq i32 %97, 43
  %103 = load i8, ptr @cselib_record_memory, align 1
  %104 = icmp ne i8 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %141, !prof !425

106:                                              ; preds = %101, %96
  %107 = icmp eq ptr %16, null
  %108 = load ptr, ptr %85, align 16, !tbaa !412
  br i1 %107, label %114, label %109, !prof !426

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
  store ptr %119, ptr %120, align 16, !tbaa !427
  %121 = load i32, ptr %99, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 43
  br i1 %123, label %124, label %138, !prof !428

124:                                              ; preds = %114
  %125 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !429
  %126 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %127 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !181
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130, !prof !430

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.mem_attrs, ptr %128, i64 0, i32 5
  %132 = load i8, ptr %131, align 8, !tbaa !431
  br label %133

133:                                              ; preds = %124, %130
  %134 = phi i8 [ %132, %130 ], [ 0, %124 ]
  %135 = tail call i32 %125(i8 noundef zeroext %134) #17
  %136 = load ptr, ptr %126, align 8, !tbaa !181
  %137 = tail call ptr @cselib_lookup(ptr noundef %136, i32 noundef %135, i32 noundef 1) #16
  br label %138

138:                                              ; preds = %114, %133
  %139 = phi ptr [ %137, %133 ], [ null, %114 ]
  %140 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %84, i32 3
  store ptr %139, ptr %140, align 8, !tbaa !433
  br label %141

141:                                              ; preds = %138, %101
  %142 = add nuw nsw i64 %84, 1
  %143 = icmp eq i64 %142, %82
  br i1 %143, label %144, label %83, !prof !434, !llvm.loop !435

144:                                              ; preds = %141, %25, %14, %78
  %145 = phi i1 [ false, %78 ], [ false, %14 ], [ false, %25 ], [ true, %141 ]
  %146 = phi i32 [ %51, %78 ], [ 0, %14 ], [ 0, %25 ], [ %81, %141 ]
  %147 = load ptr, ptr @cselib_record_sets_hook, align 8, !tbaa !171
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149, !prof !436

149:                                              ; preds = %144
  call void %147(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %146) #17
  br label %150

150:                                              ; preds = %149, %144
  call void @note_stores(ptr noundef nonnull %17, ptr noundef nonnull @cselib_invalidate_rtx_note_stores, ptr noundef null) #17
  %151 = icmp sgt i32 %146, 1
  br i1 %151, label %152, label %185, !prof !437

152:                                              ; preds = %150
  %153 = call i32 @asm_noperands(ptr noundef nonnull %17) #17
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %155, label %185, !prof !438

155:                                              ; preds = %152
  %156 = zext nneg i32 %146 to i64
  %157 = zext nneg i32 %146 to i64
  br label %158

158:                                              ; preds = %155, %181
  %159 = phi i64 [ 0, %155 ], [ %182, %181 ]
  %160 = phi i64 [ 1, %155 ], [ %183, %181 ]
  %161 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %159, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !414
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
  %173 = load ptr, ptr %172, align 8, !tbaa !414
  %174 = call i32 @rtx_equal_p(ptr noundef nonnull %162, ptr noundef %173) #17
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr @global_rtl, align 16, !tbaa !171
  store ptr %177, ptr %161, align 8, !tbaa !414
  store ptr %177, ptr %172, align 8, !tbaa !414
  br label %178

178:                                              ; preds = %170, %176
  %179 = add nuw nsw i64 %171, 1
  %180 = icmp eq i64 %179, %157
  br i1 %180, label %181, label %170, !llvm.loop !439

181:                                              ; preds = %178, %165, %167
  %182 = phi i64 [ %166, %165 ], [ %168, %167 ], [ %168, %178 ]
  %183 = add nuw nsw i64 %160, 1
  %184 = icmp eq i64 %182, %157
  br i1 %184, label %185, label %158, !llvm.loop !440

185:                                              ; preds = %181, %152, %150
  br i1 %145, label %186, label %208, !prof !441

186:                                              ; preds = %185
  %187 = zext nneg i32 %146 to i64
  br label %188

188:                                              ; preds = %186, %205
  %189 = phi i64 [ 0, %186 ], [ %206, %205 ]
  %190 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %189, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !414
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 37
  br i1 %194, label %200, label %195, !prof !424

195:                                              ; preds = %188
  %196 = icmp eq i32 %193, 43
  %197 = load i8, ptr @cselib_record_memory, align 1
  %198 = icmp ne i8 %197, 0
  %199 = select i1 %196, i1 %198, i1 false
  br i1 %199, label %200, label %205, !prof !425

200:                                              ; preds = %195, %188
  %201 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %189, i32 2
  %202 = load ptr, ptr %201, align 16, !tbaa !427
  %203 = getelementptr inbounds [106 x %struct.cselib_set], ptr %2, i64 0, i64 %189, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !433
  call fastcc void @cselib_record_set(ptr noundef nonnull %191, ptr noundef %202, ptr noundef %204) #16
  br label %205

205:                                              ; preds = %200, %195
  %206 = add nuw nsw i64 %189, 1
  %207 = icmp eq i64 %206, %187
  br i1 %207, label %208, label %188, !prof !434, !llvm.loop !442

208:                                              ; preds = %205, %185
  call void @llvm.lifetime.end.p0(i64 3392, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_init(i32 noundef %0) local_unnamed_addr #0 !prof !443 {
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 16, i64 noundef 10) #17
  store ptr %2, ptr @elt_list_pool, align 8, !tbaa !171
  %3 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.5, i64 noundef 24, i64 noundef 10) #17
  store ptr %3, ptr @elt_loc_list_pool, align 8, !tbaa !171
  %4 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 40, i64 noundef 10) #17
  store ptr %4, ptr @cselib_val_pool, align 8, !tbaa !171
  %5 = load i8, ptr getelementptr inbounds ([139 x i8], ptr @rtx_code_size, i64 0, i64 1), align 1, !tbaa !181
  %6 = zext i8 %5 to i64
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef %6, i64 noundef 100) #17
  store ptr %7, ptr @value_pool, align 8, !tbaa !171
  %8 = trunc i32 %0 to i8
  %9 = and i8 %8, 1
  store i8 %9, ptr @cselib_record_memory, align 1, !tbaa !181
  %10 = and i8 %8, 2
  store i8 %10, ptr @cselib_preserve_constants, align 1, !tbaa !181
  %11 = load ptr, ptr @callmem, align 8, !tbaa !171
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !444

13:                                               ; preds = %1
  %14 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 0) #17
  %15 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %14) #17
  store ptr %15, ptr @callmem, align 8, !tbaa !171
  br label %16

16:                                               ; preds = %13, %1
  %17 = tail call i32 @max_reg_num() #17
  store i32 %17, ptr @cselib_nregs, align 4, !tbaa !167
  %18 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20, !prof !444

20:                                               ; preds = %16
  %21 = load i32, ptr @reg_values_size, align 4, !tbaa !167
  %22 = icmp ult i32 %21, %17
  br i1 %22, label %28, label %23, !prof !445

23:                                               ; preds = %20
  %24 = icmp ugt i32 %21, 10
  %25 = shl i32 %17, 2
  %26 = icmp ugt i32 %21, %25
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %36, !prof !446

28:                                               ; preds = %23, %20
  tail call void @free(ptr noundef nonnull %18) #16
  br label %29

29:                                               ; preds = %16, %28
  %30 = add i32 %17, 63
  %31 = lshr i32 %30, 4
  %32 = add i32 %31, %17
  store i32 %32, ptr @reg_values_size, align 4, !tbaa !167
  %33 = zext i32 %32 to i64
  %34 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 8) #17
  store ptr %34, ptr @reg_values, align 8, !tbaa !171
  %35 = load i32, ptr @cselib_nregs, align 4, !tbaa !167
  br label %36

36:                                               ; preds = %29, %23
  %37 = phi i32 [ %35, %29 ], [ %17, %23 ]
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2
  %40 = tail call ptr @xmalloc(i64 noundef %39) #17
  store ptr %40, ptr @used_regs, align 8, !tbaa !171
  store i32 0, ptr @n_used_regs, align 4, !tbaa !167
  %41 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @get_value_hash, ptr noundef nonnull @entry_and_rtx_equal_p, ptr noundef null) #17
  store ptr %41, ptr @cselib_hash_table, align 8, !tbaa !171
  store i32 1, ptr @next_uid, align 4, !tbaa !167
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
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @get_value_hash(ptr nocapture noundef readonly %0) #2 !prof !447 !PGOFuncName !448 {
  %2 = load i32, ptr %0, align 8, !tbaa !313
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @entry_and_rtx_equal_p(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !449 !PGOFuncName !450 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = and i32 %3, 65535
  %7 = and i32 %3, 65534
  %8 = icmp eq i32 %7, 30
  br i1 %8, label %13, label %9, !prof !451

9:                                                ; preds = %2
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %11, label %14, !prof !452

11:                                               ; preds = %9
  %12 = icmp eq i32 %6, 32
  br i1 %12, label %13, label %14

13:                                               ; preds = %2, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #17
  br label %14

14:                                               ; preds = %9, %11, %13
  %15 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %5, %19
  br i1 %20, label %21, label %46, !prof !453

21:                                               ; preds = %14
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %25, label %33, !prof !454

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !181
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -30
  %31 = icmp ult i32 %30, 3
  %32 = select i1 %31, ptr %27, ptr %1, !prof !455
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi ptr [ %1, %21 ], [ %32, %25 ]
  %35 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 3
  br label %36

36:                                               ; preds = %40, %33
  %37 = phi ptr [ %35, %33 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !171
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40, !prof !456

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.elt_loc_list, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !177
  %43 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %42, ptr noundef %34) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %45, !prof !457, !llvm.loop !458

45:                                               ; preds = %40
  tail call fastcc void @promote_debug_loc(ptr noundef nonnull %38) #16
  br label %46

46:                                               ; preds = %36, %14, %45
  %47 = phi i32 [ 1, %45 ], [ 0, %14 ], [ 0, %36 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cselib_finish() local_unnamed_addr #0 !prof !443 {
  store ptr null, ptr @cselib_discard_hook, align 8, !tbaa !171
  store i8 0, ptr @cselib_preserve_constants, align 1, !tbaa !181
  store ptr null, ptr @cfa_base_preserved_val, align 8, !tbaa !171
  %1 = load ptr, ptr @elt_list_pool, align 8, !tbaa !171
  tail call void @free_alloc_pool(ptr noundef %1) #17
  %2 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !171
  tail call void @free_alloc_pool(ptr noundef %2) #17
  %3 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !171
  tail call void @free_alloc_pool(ptr noundef %3) #17
  %4 = load ptr, ptr @value_pool, align 8, !tbaa !171
  tail call void @free_alloc_pool(ptr noundef %4) #17
  tail call void @cselib_clear_table() #16
  %5 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  tail call void @htab_delete(ptr noundef %5) #17
  %6 = load ptr, ptr @used_regs, align 8, !tbaa !171
  tail call void @free(ptr noundef %6) #16
  store ptr null, ptr @used_regs, align 8, !tbaa !171
  store ptr null, ptr @cselib_hash_table, align 8, !tbaa !171
  store i32 0, ptr @n_useless_values, align 4, !tbaa !167
  store i32 0, ptr @n_useless_debug_values, align 4, !tbaa !167
  store i32 0, ptr @n_debug_values, align 4, !tbaa !167
  store i32 0, ptr @next_uid, align 4, !tbaa !167
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cselib_table(ptr noundef %0) local_unnamed_addr #0 !prof !186 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 19, i64 1, ptr %0)
  %3 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  tail call void @htab_traverse(ptr noundef %3, ptr noundef nonnull @dump_cselib_val, ptr noundef %0) #17
  %4 = load ptr, ptr @first_containing_mem, align 8, !tbaa !171
  %5 = icmp eq ptr %4, @dummy_val
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.9, ptr noundef %0) #16
  %8 = load ptr, ptr @first_containing_mem, align 8, !tbaa !171
  %9 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !190
  tail call void @print_inline_rtx(ptr noundef %0, ptr noundef %10, i32 noundef 2) #17
  %11 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #16
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i32, ptr @next_uid, align 4, !tbaa !167
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %13) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_cselib_val(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !186 !PGOFuncName !459 {
  %3 = load ptr, ptr %0, align 8, !tbaa !171
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %5, i32 noundef 0) #17
  %6 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.20, ptr noundef %1) #16
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %7, %9 ], [ %21, %12 ]
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !181
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %17) #16
  %19 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !177
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %20, i32 noundef 4) #17
  %21 = load ptr, ptr %13, align 8, !tbaa !188
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !460

23:                                               ; preds = %12
  %24 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  %25 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !461
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %35

28:                                               ; preds = %2
  %29 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %1) #16
  %30 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !461
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
  %42 = load ptr, ptr %41, align 8, !tbaa !214
  %43 = getelementptr inbounds %struct.cselib_val_struct, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !190
  tail call void @print_inline_rtx(ptr noundef %1, ptr noundef %44, i32 noundef 2) #17
  %45 = load ptr, ptr %39, align 8, !tbaa !323
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !462

47:                                               ; preds = %38
  %48 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) #16
  br label %51

49:                                               ; preds = %28, %23
  %50 = tail call i32 @fputs(ptr noundef nonnull @.str.25, ptr noundef %1) #16
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i1 [ true, %49 ], [ false, %47 ]
  %53 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !235
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
  %62 = load ptr, ptr %53, align 8, !tbaa !235
  %63 = getelementptr inbounds %struct.cselib_val_struct, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !190
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

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #3

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @discard_useless_locs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !463 !PGOFuncName !464 {
  %3 = load ptr, ptr %0, align 8, !tbaa !171
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7, !prof !465

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.elt_loc_list, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  br label %10

10:                                               ; preds = %7, %18
  %11 = phi ptr [ %20, %18 ], [ %5, %7 ]
  %12 = phi ptr [ %19, %18 ], [ %4, %7 ]
  %13 = getelementptr inbounds %struct.elt_loc_list, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !177
  %15 = tail call i32 @references_value_p(ptr noundef %14, i32 noundef 1) #16, !range !189
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !466

17:                                               ; preds = %10
  tail call fastcc void @unchain_one_elt_loc_list(ptr noundef nonnull %12) #16
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi ptr [ %12, %17 ], [ %11, %10 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !prof !467, !llvm.loop !468

22:                                               ; preds = %18
  br i1 %6, label %43, label %23, !prof !244

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !tbaa !175
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %43, !prof !469

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !190
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 67108864
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43, !prof !194

32:                                               ; preds = %26
  %33 = icmp eq ptr %9, null
  br i1 %33, label %38, label %34, !prof !193

34:                                               ; preds = %32
  %35 = load i32, ptr %9, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %39, label %38, !prof !193

38:                                               ; preds = %34, %32
  br label %39

39:                                               ; preds = %34, %38
  %40 = phi ptr [ @n_useless_values, %38 ], [ @n_useless_debug_values, %34 ]
  %41 = load i32, ptr %40, align 4, !tbaa !167
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !167
  store i1 true, ptr @values_became_useless, align 4
  br label %43

43:                                               ; preds = %2, %39, %26, %23, %22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @discard_useless_values(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !470 !PGOFuncName !471 {
  %3 = load ptr, ptr %0, align 8, !tbaa !171
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %24, !prof !472

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !190
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24, !prof !473

13:                                               ; preds = %7
  %14 = load ptr, ptr @cselib_discard_hook, align 8, !tbaa !171
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !473

16:                                               ; preds = %13
  tail call void %14(ptr noundef nonnull %3) #17
  %17 = load ptr, ptr %8, align 8, !tbaa !190
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %9, %13 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !181
  %21 = load ptr, ptr @cselib_hash_table, align 8, !tbaa !171
  tail call void @htab_clear_slot(ptr noundef %21, ptr noundef nonnull %0) #17
  tail call fastcc void @unchain_one_value(ptr noundef nonnull %3) #16
  %22 = load i32, ptr @n_useless_values, align 4, !tbaa !167
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr @n_useless_values, align 4, !tbaa !167
  br label %24

24:                                               ; preds = %18, %7, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unchain_one_elt_loc_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !474 !PGOFuncName !475 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  store ptr %3, ptr %0, align 8, !tbaa !171
  %4 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !171
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unchain_one_value(ptr noundef %0) unnamed_addr #0 !prof !476 !PGOFuncName !477 {
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !461
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !478

5:                                                ; preds = %1, %5
  tail call fastcc void @unchain_one_elt_list(ptr noundef nonnull %2) #16
  %6 = load ptr, ptr %2, align 8, !tbaa !461
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %5, !prof !256, !llvm.loop !479

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @cselib_val_pool, align 8, !tbaa !171
  tail call void @pool_free(ptr noundef %9, ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unchain_one_elt_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !480 !PGOFuncName !481 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  store ptr %3, ptr %0, align 8, !tbaa !171
  %4 = load ptr, ptr @elt_list_pool, align 8, !tbaa !171
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_loc(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !482 !PGOFuncName !483 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %99, label %5, !prof !484

5:                                                ; preds = %3, %79
  %6 = phi ptr [ %82, %79 ], [ %0, %3 ]
  %7 = phi ptr [ %81, %79 ], [ null, %3 ]
  %8 = phi i32 [ %80, %79 ], [ -1, %3 ]
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %27, !prof !485

14:                                               ; preds = %5
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #16
  %16 = icmp ult i32 %15, %8
  br i1 %16, label %17, label %27, !prof !485

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 8, !tbaa !315
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #16
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %19) #17
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %9, align 8, !tbaa !177
  br i1 %21, label %25, label %23, !prof !486

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
  ], !prof !487

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  %34 = getelementptr inbounds %struct.cselib_val_struct, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !175
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %79, label %37

37:                                               ; preds = %27, %31
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !167
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  tail call void @print_inline_rtx(ptr noundef nonnull %38, ptr noundef nonnull %29, i32 noundef 0) #17
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %46 = tail call i32 @fputc(i32 10, ptr %45)
  %47 = load ptr, ptr %9, align 8, !tbaa !177
  %48 = load i32, ptr %47, align 8
  br label %49

49:                                               ; preds = %44, %40, %37
  %50 = phi i32 [ %48, %44 ], [ %28, %40 ], [ %28, %37 ]
  %51 = phi ptr [ %47, %44 ], [ %29, %40 ], [ %29, %37 ]
  %52 = and i32 %50, 65535
  %53 = icmp eq i32 %52, 122
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !181
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.elt_loc_list, ptr %6, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !221
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @find_reg_note(ptr noundef nonnull %62, i32 noundef 4, ptr noundef null) #17
  %66 = icmp eq ptr %65, null
  %67 = load ptr, ptr %9, align 8, !tbaa !177
  br i1 %66, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !181
  %71 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !181
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
  %82 = load ptr, ptr %6, align 8, !tbaa !188
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %5, !prof !488, !llvm.loop !489

84:                                               ; preds = %79
  %85 = icmp eq i32 %80, -1
  br i1 %85, label %99, label %86, !prof !490

86:                                               ; preds = %84
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89, !prof !491

89:                                               ; preds = %86
  %90 = load i32, ptr @dump_flags, align 4, !tbaa !167
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.15, i32 noundef %80) #16
  br label %95

95:                                               ; preds = %93, %89, %86
  %96 = add nsw i32 %2, -1
  %97 = tail call fastcc ptr @cselib_expand_value_rtx_1(ptr noundef %81, ptr noundef %1, i32 noundef %96) #16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %3, %95, %84
  %100 = phi ptr [ %81, %95 ], [ %81, %84 ], [ null, %3 ]
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103, !prof !492

103:                                              ; preds = %99
  %104 = load i32, ptr @dump_flags, align 4, !tbaa !167
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = icmp eq ptr %100, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  tail call void @print_inline_rtx(ptr noundef nonnull %101, ptr noundef nonnull %100, i32 noundef 0) #17
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %111 = tail call i32 @fputc(i32 10, ptr %110)
  br label %114

112:                                              ; preds = %107
  %113 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr nonnull %101)
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

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @promote_debug_loc(ptr nocapture noundef %0) unnamed_addr #0 !prof !493 !PGOFuncName !494 {
  %2 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !495

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %9, label %22, !prof !496

9:                                                ; preds = %5
  %10 = load ptr, ptr @cselib_current_insn, align 8, !tbaa !171
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %9
  %17 = load i32, ptr @n_debug_values, align 4, !tbaa !167
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr @n_debug_values, align 4, !tbaa !167
  store ptr %10, ptr %2, align 8, !tbaa !221
  %19 = load ptr, ptr %0, align 8, !tbaa !188
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #17
  br label %22

22:                                               ; preds = %21, %16, %12, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_mem_for_addr(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !497 !PGOFuncName !498 {
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !499

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %22, %21 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %21, !prof !500

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %21, !prof !501

20:                                               ; preds = %14
  tail call fastcc void @promote_debug_loc(ptr noundef nonnull %8) #16
  br label %38

21:                                               ; preds = %7, %14
  %22 = load ptr, ptr %8, align 8, !tbaa !171
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !prof !502, !llvm.loop !503

24:                                               ; preds = %21, %3
  %25 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !461
  %27 = tail call fastcc ptr @new_elt_list(ptr noundef %26, ptr noundef %1) #16
  store ptr %27, ptr %25, align 8, !tbaa !461
  %28 = load ptr, ptr %4, align 8, !tbaa !175
  %29 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !190
  %31 = tail call ptr @replace_equiv_address_nv(ptr noundef %2, ptr noundef %30) #17
  %32 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %28, ptr noundef %31) #16
  store ptr %32, ptr %4, align 8, !tbaa !175
  %33 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !235
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38, !prof !504

36:                                               ; preds = %24
  %37 = load ptr, ptr @first_containing_mem, align 8, !tbaa !171
  store ptr %37, ptr %33, align 8, !tbaa !235
  store ptr %1, ptr @first_containing_mem, align 8, !tbaa !171
  br label %38

38:                                               ; preds = %24, %36, %20
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wrap_constant(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !505 !PGOFuncName !506 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %13 [
    i16 30, label %8
    i16 31, label %8
    i16 32, label %5
  ], !prof !507

5:                                                ; preds = %2
  %6 = and i32 %3, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2, %2, %5
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %10, label %11, !prof !508

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
define internal fastcc noundef ptr @new_elt_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !509 !PGOFuncName !510 {
  %3 = load ptr, ptr @elt_list_pool, align 8, !tbaa !171
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #17
  store ptr %0, ptr %4, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct.elt_list, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !214
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_elt_loc_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !511 !PGOFuncName !512 {
  %3 = load ptr, ptr @elt_loc_list_pool, align 8, !tbaa !171
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #17
  store ptr %0, ptr %4, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.elt_loc_list, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !177
  %6 = load ptr, ptr @cselib_current_insn, align 8
  %7 = getelementptr inbounds %struct.elt_loc_list, ptr %4, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !221
  %8 = icmp eq ptr %0, null
  br i1 %8, label %18, label %9, !prof !513

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !221
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13, !prof !514

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %27, !prof !514

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #17
  br label %27

18:                                               ; preds = %2
  %19 = icmp eq ptr %6, null
  br i1 %19, label %27, label %20, !prof !515

20:                                               ; preds = %18
  %21 = load i32, ptr %6, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %27, !prof !516

24:                                               ; preds = %20
  %25 = load i32, ptr @n_debug_values, align 4, !tbaa !167
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @n_debug_values, align 4, !tbaa !167
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cselib_hash_rtx(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !517 !PGOFuncName !518 {
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
  ], !prof !519

9:                                                ; preds = %2, %2
  %10 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %1) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %179, label %12, !prof !520

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !313
  br label %179

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !181
  %19 = sub i32 %7, %18
  %20 = add i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 %20
  br label %179

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !181
  %26 = trunc i64 %25 to i32
  %27 = add nuw nsw i32 %7, 3840
  %28 = add i32 %27, %26
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 30, i32 %28, !prof !521
  br label %179

31:                                               ; preds = %2
  %32 = shl nuw nsw i32 %7, 1
  %33 = icmp eq i32 %6, 0
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %33, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @real_hash(ptr noundef nonnull %34) #17
  br label %44

37:                                               ; preds = %31
  %38 = load i64, ptr %34, align 8, !tbaa !181
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load i64, ptr %40, align 8, !tbaa !181
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, %39
  br label %44

44:                                               ; preds = %37, %35
  %45 = phi i32 [ %36, %35 ], [ %43, %37 ]
  %46 = add i32 %45, %32
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 32, i32 %46
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
  %58 = load ptr, ptr %57, align 8, !tbaa !181
  %59 = load i32, ptr %58, align 8, !tbaa !197
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %179

61:                                               ; preds = %56
  %62 = zext nneg i32 %59 to i64
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %71, %63 ]
  %65 = phi i32 [ %7, %61 ], [ %70, %63 ]
  %66 = load ptr, ptr %57, align 8, !tbaa !181
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !171
  %69 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %68, i32 noundef 0) #16
  %70 = add i32 %69, %65
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, %62
  br i1 %72, label %179, label %63, !llvm.loop !522

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !181
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !181
  %78 = add nuw nsw i32 %7, 5632
  %79 = add i32 %78, %77
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 44, i32 %79, !prof !523
  br label %179

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !181
  %85 = load i8, ptr %84, align 1, !tbaa !181
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %97, label %87, !prof !524

87:                                               ; preds = %82, %87
  %88 = phi i8 [ %95, %87 ], [ %85, %82 ]
  %89 = phi ptr [ %91, %87 ], [ %84, %82 ]
  %90 = phi i32 [ %94, %87 ], [ 0, %82 ]
  %91 = getelementptr inbounds i8, ptr %89, i64 1
  %92 = zext i8 %88 to i32
  %93 = mul i32 %90, 129
  %94 = add i32 %93, %92
  %95 = load i8, ptr %91, align 1, !tbaa !181
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %87, !prof !525, !llvm.loop !526

97:                                               ; preds = %87, %82
  %98 = phi i32 [ 0, %82 ], [ %94, %87 ]
  %99 = add nuw nsw i32 %7, 5760
  %100 = add i32 %99, %98
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 45, i32 %100, !prof !527
  br label %179

103:                                              ; preds = %2
  %104 = and i32 %3, 134217728
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %179

106:                                              ; preds = %2, %103
  %107 = zext nneg i32 %4 to i64
  %108 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !181
  %110 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !171
  %112 = icmp eq i8 %109, 0
  br i1 %112, label %172, label %113, !prof !528

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %115 = zext i8 %109 to i64
  br label %116

116:                                              ; preds = %113, %169
  %117 = phi i64 [ %115, %113 ], [ %119, %169 ]
  %118 = phi i32 [ %7, %113 ], [ %170, %169 ]
  %119 = add nsw i64 %117, -1
  %120 = getelementptr inbounds i8, ptr %111, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !181
  switch i8 %121, label %168 [
    i8 101, label %127
    i8 69, label %122
    i8 115, label %148
    i8 105, label %164
    i8 48, label %169
    i8 116, label %169
  ], !prof !529

122:                                              ; preds = %116
  %123 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %124 = load ptr, ptr %123, align 8, !tbaa !181
  %125 = load i32, ptr %124, align 8, !tbaa !197
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %133, label %169

127:                                              ; preds = %116
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %129 = load ptr, ptr %128, align 8, !tbaa !181
  %130 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %129, i32 noundef %1) #16
  %131 = icmp eq i32 %130, 0
  %132 = add i32 %130, %118
  br i1 %131, label %179, label %169

133:                                              ; preds = %122, %141
  %134 = phi i64 [ %143, %141 ], [ 0, %122 ]
  %135 = phi ptr [ %144, %141 ], [ %124, %122 ]
  %136 = phi i32 [ %142, %141 ], [ %118, %122 ]
  %137 = getelementptr inbounds %struct.rtvec_def, ptr %135, i64 0, i32 1, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !171
  %139 = tail call fastcc i32 @cselib_hash_rtx(ptr noundef %138, i32 noundef %1) #16
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %179, label %141

141:                                              ; preds = %133
  %142 = add i32 %139, %136
  %143 = add nuw nsw i64 %134, 1
  %144 = load ptr, ptr %123, align 8, !tbaa !181
  %145 = load i32, ptr %144, align 8, !tbaa !197
  %146 = sext i32 %145 to i64
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %133, label %169, !llvm.loop !530

148:                                              ; preds = %116
  %149 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %150 = load ptr, ptr %149, align 8, !tbaa !181
  %151 = icmp eq ptr %150, null
  br i1 %151, label %169, label %152

152:                                              ; preds = %148
  %153 = load i8, ptr %150, align 1, !tbaa !181
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %152, %155
  %156 = phi i8 [ %162, %155 ], [ %153, %152 ]
  %157 = phi ptr [ %159, %155 ], [ %150, %152 ]
  %158 = phi i32 [ %161, %155 ], [ %118, %152 ]
  %159 = getelementptr inbounds i8, ptr %157, i64 1
  %160 = zext i8 %156 to i32
  %161 = add i32 %158, %160
  %162 = load i8, ptr %159, align 1, !tbaa !181
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %169, label %155, !llvm.loop !531

164:                                              ; preds = %116
  %165 = getelementptr inbounds [1 x %union.rtunion_def], ptr %114, i64 0, i64 %119
  %166 = load i32, ptr %165, align 8, !tbaa !181
  %167 = add i32 %166, %118
  br label %169

168:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.1) #17
  br label %169

169:                                              ; preds = %155, %141, %152, %122, %148, %164, %168, %127, %116, %116
  %170 = phi i32 [ %118, %168 ], [ %118, %116 ], [ %118, %116 ], [ %167, %164 ], [ %132, %127 ], [ %118, %148 ], [ %118, %122 ], [ %118, %152 ], [ %142, %141 ], [ %161, %155 ]
  %171 = icmp sgt i64 %117, 1
  br i1 %171, label %116, label %172, !prof !532, !llvm.loop !533

172:                                              ; preds = %169, %106
  %173 = phi i32 [ %7, %106 ], [ %170, %169 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179, !prof !534

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !prof !535 !PGOFuncName !536 {
  %3 = zext nneg i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !181
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @cselib_rtx_varies_p(ptr nocapture readnone %0, i8 zeroext %1) #13 !prof !186 !PGOFuncName !537 {
  ret i8 0
}

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cselib_invalidate_rtx_note_stores(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !538 !PGOFuncName !539 {
  tail call void @cselib_invalidate_rtx(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cselib_record_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !540 !PGOFuncName !541 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %9, !prof !542

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i32 [ %8, %7 ], [ -1, %3 ]
  %11 = icmp eq ptr %1, null
  br i1 %11, label %94, label %12, !prof !543

12:                                               ; preds = %9
  %13 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %94, !prof !544

15:                                               ; preds = %12
  %16 = icmp sgt i32 %10, -1
  br i1 %16, label %17, label %71, !prof !545

17:                                               ; preds = %15
  %18 = icmp ult i32 %10, 53
  %19 = zext nneg i32 %10 to i64
  br i1 %18, label %20, label %31, !prof !546

20:                                               ; preds = %17
  %21 = load i32, ptr %0, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %19, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !181
  %27 = zext i8 %26 to i32
  %28 = load i32, ptr @max_value_regs, align 4, !tbaa !167
  %29 = icmp ult i32 %28, %27
  br i1 %29, label %30, label %31, !prof !547

30:                                               ; preds = %20
  store i32 %27, ptr @max_value_regs, align 4, !tbaa !167
  br label %31

31:                                               ; preds = %17, %20, %30
  %32 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %33 = getelementptr inbounds ptr, ptr %32, i64 %19
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45, !prof !548

36:                                               ; preds = %31
  %37 = load ptr, ptr @used_regs, align 8, !tbaa !171
  %38 = load i32, ptr @n_used_regs, align 4, !tbaa !167
  %39 = add i32 %38, 1
  store i32 %39, ptr @n_used_regs, align 4, !tbaa !167
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  store i32 %10, ptr %41, align 4, !tbaa !167
  %42 = tail call fastcc ptr @new_elt_list(ptr noundef null, ptr noundef nonnull %1) #16
  %43 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %44 = getelementptr inbounds ptr, ptr %43, i64 %19
  store ptr %42, ptr %44, align 8, !tbaa !171
  br label %56

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.elt_list, ptr %34, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !214
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49, !prof !549

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1993, ptr noundef nonnull @.str.1) #17
  %50 = load ptr, ptr @reg_values, align 8, !tbaa !171
  %51 = getelementptr inbounds ptr, ptr %50, i64 %19
  %52 = load ptr, ptr %51, align 8, !tbaa !171
  br label %53

53:                                               ; preds = %45, %49
  %54 = phi ptr [ %34, %45 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.elt_list, ptr %54, i64 0, i32 1
  store ptr %1, ptr %55, align 8, !tbaa !214
  br label %56

56:                                               ; preds = %53, %36
  %57 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !175
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69, !prof !550

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !190
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 67108864
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, ptr @n_useless_values, align 4, !tbaa !167
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr @n_useless_values, align 4, !tbaa !167
  br label %69

69:                                               ; preds = %66, %60, %56
  %70 = tail call fastcc ptr @new_elt_loc_list(ptr noundef %58, ptr noundef nonnull %0) #16
  store ptr %70, ptr %57, align 8, !tbaa !175
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
  br i1 %79, label %80, label %94, !prof !551

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !175
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %93, !prof !430

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !190
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 67108864
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, ptr @n_useless_values, align 4, !tbaa !167
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr @n_useless_values, align 4, !tbaa !167
  br label %93

93:                                               ; preds = %90, %84, %80
  tail call fastcc void @add_mem_for_addr(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %0) #16
  br label %94

94:                                               ; preds = %69, %93, %71, %9, %12
  ret void
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!164}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!35 = !{ptr @cselib_clear_table, ptr @cselib_reset_table, i64 473965}
!36 = !{ptr @cselib_reset_table, ptr @rhs_regno, i64 1}
!37 = !{ptr @cselib_reset_table, ptr @fancy_abort, i64 1}
!38 = !{ptr @cselib_reset_table, ptr @htab_traverse, i64 1}
!39 = !{ptr @cselib_reset_table, ptr @htab_empty, i64 693075}
!40 = !{ptr @references_value_p, ptr @references_value_p, i64 3772}
!41 = !{ptr @cselib_invalidate_regno, ptr @fancy_abort, i64 2}
!42 = !{ptr @cselib_invalidate_regno, ptr @end_hard_regno, i64 19234415}
!43 = !{ptr @cselib_invalidate_regno, ptr @unchain_one_elt_list, i64 350439}
!44 = !{ptr @cselib_invalidate_regno, ptr @rhs_regno, i64 840822}
!45 = !{ptr @cselib_invalidate_regno, ptr @unchain_one_elt_loc_list, i64 837155}
!46 = !{ptr @cselib_invalidate_mem, ptr @get_addr, i64 744933}
!47 = !{ptr @cselib_invalidate_mem, ptr @canon_rtx, i64 1489866}
!48 = !{ptr @cselib_invalidate_mem, ptr @canon_true_dependence, i64 430619}
!49 = !{ptr @cselib_invalidate_mem, ptr @cselib_lookup, i64 275875}
!50 = !{ptr @cselib_invalidate_mem, ptr @unchain_one_elt_list, i64 275875}
!51 = !{ptr @cselib_invalidate_mem, ptr @unchain_one_elt_loc_list, i64 275875}
!52 = !{ptr @remove_useless_values, ptr @htab_traverse, i64 276}
!53 = !{ptr @remove_useless_values, ptr @fancy_abort, i64 1}
!54 = !{ptr @cselib_reg_set_mode, ptr @rhs_regno, i64 623278}
!55 = !{ptr @rtx_equal_for_cselib_p, ptr @cselib_lookup, i64 893135}
!56 = !{ptr @rtx_equal_for_cselib_p, ptr @rtx_equal_for_cselib_p, i64 502120}
!57 = !{ptr @rtx_equal_for_cselib_p, ptr @strcmp, i64 6051}
!58 = !{ptr @rtx_equal_for_cselib_p, ptr @fancy_abort, i64 1}
!59 = !{ptr @cselib_lookup, ptr @cselib_lookup_1, i64 8712368}
!60 = !{ptr @cselib_expand_value_rtx, ptr @cselib_expand_value_rtx_1, i64 233081}
!61 = !{ptr @cselib_expand_value_rtx_1, ptr @rhs_regno, i64 233121}
!62 = !{ptr @cselib_expand_value_rtx_1, ptr @bitmap_set_bit, i64 209}
!63 = !{ptr @cselib_expand_value_rtx_1, ptr @expand_loc, i64 210}
!64 = !{ptr @cselib_expand_value_rtx_1, ptr @bitmap_clear_bit, i64 209}
!65 = !{ptr @cselib_expand_value_rtx_1, ptr @shared_const_p, i64 1}
!66 = !{ptr @cselib_expand_value_rtx_1, ptr @cselib_expand_value_rtx_1, i64 51862}
!67 = !{ptr @cselib_expand_value_rtx_1, ptr @shallow_copy_rtx_stat, i64 25975}
!68 = !{ptr @cselib_expand_value_rtx_1, ptr @rtvec_alloc, i64 1}
!69 = !{ptr @cselib_expand_value_rtx_1, ptr @fancy_abort, i64 1}
!70 = !{ptr @cselib_expand_value_rtx_1, ptr @simplify_ternary_operation, i64 1}
!71 = !{ptr @cselib_expand_value_rtx_1, ptr @simplify_rtx, i64 25972}
!72 = !{ptr @cselib_subst_to_values, ptr @rhs_regno, i64 958344}
!73 = !{ptr @cselib_subst_to_values, ptr @fancy_abort, i64 7487}
!74 = !{ptr @cselib_subst_to_values, ptr @cselib_lookup_mem, i64 99976}
!75 = !{ptr @cselib_subst_to_values, ptr @cselib_subst_to_values, i64 2269088}
!76 = !{ptr @cselib_subst_to_values, ptr @shallow_copy_rtx_stat, i64 1051684}
!77 = !{ptr @cselib_subst_to_values, ptr @shallow_copy_rtvec, i64 5}
!78 = !{ptr @cselib_subst_to_values, ptr @new_cselib_val, i64 7}
!79 = !{ptr @cselib_lookup_mem, ptr @cselib_lookup, i64 921995}
!80 = !{ptr @cselib_lookup_mem, ptr @promote_debug_loc, i64 115676}
!81 = !{ptr @cselib_lookup_mem, ptr @new_cselib_val, i64 155875}
!82 = !{ptr @cselib_lookup_mem, ptr @add_mem_for_addr, i64 155875}
!83 = !{ptr @cselib_lookup_mem, ptr @wrap_constant, i64 155875}
!84 = !{ptr @cselib_lookup_mem, ptr @htab_find_slot_with_hash, i64 155875}
!85 = !{ptr @new_cselib_val, ptr @pool_alloc, i64 5432488}
!86 = !{ptr @new_cselib_val, ptr @fancy_abort, i64 2}
!87 = !{ptr @new_cselib_val, ptr @fprintf, i64 1}
!88 = !{ptr @new_cselib_val, ptr @print_rtl_single, i64 1}
!89 = !{ptr @new_cselib_val, ptr @fputc, i64 1}
!90 = !{ptr @cselib_lookup_1, ptr @rhs_regno, i64 3538773}
!91 = !{ptr @cselib_lookup_1, ptr @promote_debug_loc, i64 2118966}
!92 = !{ptr @cselib_lookup_1, ptr @new_cselib_val, i64 2347683}
!93 = !{ptr @cselib_lookup_1, ptr @new_elt_loc_list, i64 2347683}
!94 = !{ptr @cselib_lookup_1, ptr @new_elt_list, i64 1161397}
!95 = !{ptr @cselib_lookup_1, ptr @htab_find_slot_with_hash, i64 3440513}
!96 = !{ptr @cselib_lookup_1, ptr @cselib_lookup_mem, i64 1246517}
!97 = !{ptr @cselib_lookup_1, ptr @cselib_hash_rtx, i64 3635908}
!98 = !{ptr @cselib_lookup_1, ptr @wrap_constant, i64 2799847}
!99 = !{ptr @cselib_lookup_1, ptr @cselib_subst_to_values, i64 1707017}
!100 = !{ptr @cselib_invalidate_rtx, ptr @rhs_regno, i64 2194664}
!101 = !{ptr @cselib_invalidate_rtx, ptr @cselib_invalidate_regno, i64 2194664}
!102 = !{ptr @cselib_invalidate_rtx, ptr @cselib_invalidate_mem, i64 404781}
!103 = !{ptr @cselib_invalidate_rtx, ptr @push_operand, i64 3519176}
!104 = !{ptr @cselib_process_insn, ptr @find_reg_note, i64 340164}
!105 = !{ptr @cselib_process_insn, ptr @cselib_reset_table, i64 219113}
!106 = !{ptr @cselib_process_insn, ptr @cselib_invalidate_regno, i64 16667973}
!107 = !{ptr @cselib_process_insn, ptr @cselib_invalidate_mem, i64 340162}
!108 = !{ptr @cselib_process_insn, ptr @cselib_record_sets, i64 3433873}
!109 = !{ptr @cselib_process_insn, ptr @remove_useless_values, i64 92}
!110 = !{ptr @cselib_record_sets, ptr @find_reg_equal_equiv_note, i64 95}
!111 = !{ptr @cselib_record_sets, ptr @gen_rtx_fmt_eee_stat, i64 1}
!112 = !{ptr @cselib_record_sets, ptr @cselib_lookup, i64 2424428}
!113 = !{ptr @cselib_record_sets, ptr @note_stores, i64 3433874}
!114 = !{ptr @cselib_record_sets, ptr @asm_noperands, i64 608}
!115 = !{ptr @cselib_record_sets, ptr @rtx_equal_p, i64 341}
!116 = !{ptr @cselib_record_sets, ptr @cselib_record_set, i64 2260693}
!117 = !{ptr @cselib_init, ptr @create_alloc_pool, i64 594284}
!118 = !{ptr @cselib_init, ptr @gen_rtx_fmt_0_stat, i64 2}
!119 = !{ptr @cselib_init, ptr @gen_rtx_MEM, i64 2}
!120 = !{ptr @cselib_init, ptr @max_reg_num, i64 148571}
!121 = !{ptr @cselib_init, ptr @free, i64 17}
!122 = !{ptr @cselib_init, ptr @xcalloc, i64 19}
!123 = !{ptr @cselib_init, ptr @xmalloc, i64 148571}
!124 = !{ptr @cselib_init, ptr @htab_create, i64 148571}
!125 = !{ptr @entry_and_rtx_equal_p, ptr @fancy_abort, i64 3}
!126 = !{ptr @entry_and_rtx_equal_p, ptr @rtx_equal_for_cselib_p, i64 358363}
!127 = !{ptr @entry_and_rtx_equal_p, ptr @promote_debug_loc, i64 214171}
!128 = !{ptr @cselib_finish, ptr @free_alloc_pool, i64 594284}
!129 = !{ptr @cselib_finish, ptr @cselib_clear_table, i64 148571}
!130 = !{ptr @cselib_finish, ptr @htab_delete, i64 148571}
!131 = !{ptr @cselib_finish, ptr @free, i64 148571}
!132 = !{ptr @discard_useless_locs, ptr @references_value_p, i64 2341}
!133 = !{ptr @discard_useless_locs, ptr @unchain_one_elt_loc_list, i64 1501}
!134 = !{ptr @discard_useless_values, ptr @htab_clear_slot, i64 4738}
!135 = !{ptr @discard_useless_values, ptr @unchain_one_value, i64 4738}
!136 = !{ptr @unchain_one_elt_loc_list, ptr @pool_free, i64 1114647}
!137 = !{ptr @unchain_one_value, ptr @unchain_one_elt_list, i64 1}
!138 = !{ptr @unchain_one_value, ptr @pool_free, i64 4740}
!139 = !{ptr @unchain_one_elt_list, ptr @pool_free, i64 626314}
!140 = !{ptr @expand_loc, ptr @rhs_regno, i64 1452}
!141 = !{ptr @expand_loc, ptr @bitmap_bit_p, i64 705}
!142 = !{ptr @expand_loc, ptr @cselib_expand_value_rtx_1, i64 42}
!143 = !{ptr @add_mem_for_addr, ptr @promote_debug_loc, i64 1}
!144 = !{ptr @add_mem_for_addr, ptr @new_elt_list, i64 320040}
!145 = !{ptr @add_mem_for_addr, ptr @replace_equiv_address_nv, i64 320040}
!146 = !{ptr @add_mem_for_addr, ptr @new_elt_loc_list, i64 320040}
!147 = !{ptr @wrap_constant, ptr @fancy_abort, i64 1}
!148 = !{ptr @wrap_constant, ptr @gen_rtx_fmt_e_stat, i64 820324}
!149 = !{ptr @new_elt_list, ptr @pool_alloc, i64 2876337}
!150 = !{ptr @new_elt_loc_list, ptr @pool_alloc, i64 4284295}
!151 = !{ptr @new_elt_loc_list, ptr @fancy_abort, i64 1}
!152 = !{ptr @cselib_hash_rtx, ptr @cselib_lookup, i64 1677398}
!153 = !{ptr @cselib_hash_rtx, ptr @real_hash, i64 1}
!154 = !{ptr @cselib_hash_rtx, ptr @fixed_hash, i64 1}
!155 = !{ptr @cselib_hash_rtx, ptr @cselib_hash_rtx, i64 4839229}
!156 = !{ptr @cselib_hash_rtx, ptr @fancy_abort, i64 1}
!157 = !{ptr @cselib_invalidate_rtx_note_stores, ptr @cselib_invalidate_rtx, i64 3518999}
!158 = !{ptr @cselib_record_set, ptr @rhs_regno, i64 2096527}
!159 = !{ptr @cselib_record_set, ptr @side_effects_p, i64 1568051}
!160 = !{ptr @cselib_record_set, ptr @new_elt_list, i64 1009346}
!161 = !{ptr @cselib_record_set, ptr @fancy_abort, i64 1}
!162 = !{ptr @cselib_record_set, ptr @new_elt_loc_list, i64 1403884}
!163 = !{ptr @cselib_record_set, ptr @add_mem_for_addr, i64 164163}
!164 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!165 = !{!"function_entry_count", i64 473965}
!166 = !{!"function_entry_count", i64 693076}
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !169, i64 0}
!169 = !{!"omnipotent char", !170, i64 0}
!170 = !{!"Simple C/C++ TBAA"}
!171 = !{!172, !172, i64 0}
!172 = !{!"any pointer", !169, i64 0}
!173 = !{!"branch_weights", i32 693077, i32 1}
!174 = !{!"branch_weights", i32 1, i32 693076}
!175 = !{!176, !172, i64 16}
!176 = !{!"cselib_val_struct", !168, i64 0, !168, i64 4, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32}
!177 = !{!178, !172, i64 8}
!178 = !{!"elt_loc_list", !172, i64 0, !172, i64 8, !172, i64 16}
!179 = distinct !{!179, !180}
!180 = !{!"llvm.loop.mustprogress"}
!181 = !{!169, !169, i64 0}
!182 = !{!"branch_weights", i32 693076, i32 1009872}
!183 = distinct !{!183, !180}
!184 = !{!"function_entry_count", i64 11139589}
!185 = !{!"cselib.c:rhs_regno"}
!186 = !{!"function_entry_count", i64 0}
!187 = !{!"cselib.c:preserve_only_constants"}
!188 = !{!178, !172, i64 0}
!189 = !{i32 0, i32 2}
!190 = !{!176, !172, i64 8}
!191 = !{!"function_entry_count", i64 7510}
!192 = !{!"branch_weights", i32 1617, i32 5895}
!193 = !{!"branch_weights", i32 1, i32 1617}
!194 = !{!"branch_weights", i32 1617, i32 1}
!195 = !{!"branch_weights", i32 1, i32 4278}
!196 = !{!"branch_weights", i32 -1519386585, i32 1701314560, i32 524248}
!197 = !{!198, !168, i64 0}
!198 = !{!"rtvec_def", !168, i64 0, !169, i64 8}
!199 = !{!"branch_weights", i32 1629, i32 1617}
!200 = distinct !{!200, !180}
!201 = !{!"branch_weights", i32 4261, i32 4278}
!202 = distinct !{!202, !180}
!203 = distinct !{!203, !180}
!204 = !{!"function_entry_count", i64 18862596}
!205 = !{!"cselib.c:cselib_invalidate_regno"}
!206 = !{!"branch_weights", i32 -1095708687, i32 169}
!207 = !{!208, !208, i64 0}
!208 = !{!"short", !169, i64 0}
!209 = !{!"branch_weights", i32 2092584741, i32 54898907}
!210 = !{!"branch_weights", i32 1, i32 18380388}
!211 = !{i32 0, i32 308}
!212 = !{!"branch_weights", i32 18862596, i32 1}
!213 = !{!"branch_weights", i32 31145119, i32 1956449}
!214 = !{!215, !172, i64 8}
!215 = !{!"elt_list", !172, i64 0, !172, i64 8}
!216 = !{!"branch_weights", i32 -1038462501, i32 -91321898}
!217 = !{!"branch_weights", i32 -1796531723, i32 1868658079}
!218 = distinct !{!218, !180}
!219 = !{!"branch_weights", i32 486718, i32 350440}
!220 = !{!"branch_weights", i32 1, i32 837157}
!221 = !{!178, !172, i64 16}
!222 = !{!"branch_weights", i32 840823, i32 28981}
!223 = !{!"branch_weights", i32 837157, i32 3667}
!224 = !{!"branch_weights", i32 346619, i32 490539}
!225 = !{!"branch_weights", i32 346619, i32 1}
!226 = !{!"branch_weights", i32 137947, i32 208673}
!227 = !{!"branch_weights", i32 1, i32 208673}
!228 = !{!"branch_weights", i32 1956449, i32 0}
!229 = !{!"branch_weights", i32 18862596, i32 14238972}
!230 = distinct !{!230, !180}
!231 = !{!"function_entry_count", i64 744933}
!232 = !{!"cselib.c:cselib_invalidate_mem"}
!233 = !{!"branch_weights", i32 342509, i32 402425}
!234 = !{!"branch_weights", i32 1, i32 402425}
!235 = !{!176, !172, i64 32}
!236 = !{!"branch_weights", i32 430621, i32 201390}
!237 = distinct !{!237, !180}
!238 = !{!239, !168, i64 8}
!239 = !{!"param_info", !172, i64 0, !168, i64 8, !169, i64 12, !168, i64 16, !168, i64 20, !172, i64 24}
!240 = !{!"branch_weights", i32 430621, i32 1}
!241 = !{!"branch_weights", i32 154746, i32 275876}
!242 = !{!"branch_weights", i32 275876, i32 1}
!243 = !{!"branch_weights", i32 402424, i32 229586}
!244 = !{!"branch_weights", i32 0, i32 -2147483648}
!245 = !{!"branch_weights", i32 112381, i32 290045}
!246 = !{!"branch_weights", i32 112381, i32 1}
!247 = !{!"branch_weights", i32 1, i32 112381}
!248 = !{!"branch_weights", i32 1322472113, i32 825011535}
!249 = !{!"branch_weights", i32 402425, i32 0}
!250 = distinct !{!250, !180}
!251 = !{!"function_entry_count", i64 92}
!252 = !{!"cselib.c:remove_useless_values"}
!253 = !{!"branch_weights", i32 93, i32 93}
!254 = distinct !{!254, !180}
!255 = !{!"branch_weights", i32 92, i32 1}
!256 = !{!"branch_weights", i32 1, i32 0}
!257 = distinct !{!257, !180}
!258 = !{!"branch_weights", i32 93, i32 1}
!259 = !{!"function_entry_count", i64 1111006}
!260 = !{!"branch_weights", i32 623279, i32 487729}
!261 = !{!"branch_weights", i32 286985, i32 336295}
!262 = !{!"branch_weights", i32 184040, i32 152256}
!263 = !{!"function_entry_count", i64 1898945}
!264 = !{!"branch_weights", i32 -773425402, i32 1299370429, i32 503193567}
!265 = !{!"branch_weights", i32 330119, i32 312801}
!266 = !{!"branch_weights", i32 -1528478725, i32 303250904, i32 116599013}
!267 = !{!"branch_weights", i32 122703, i32 127513}
!268 = !{!"branch_weights", i32 240860, i32 1658087}
!269 = !{!"branch_weights", i32 335019, i32 1323069}
!270 = !{!"branch_weights", i32 11766, i32 323254}
!271 = !{!"branch_weights", i32 1, i32 309141}
!272 = !{!"branch_weights", i32 -1745840645, i32 -1048878828, i32 814892901}
!273 = !{!"branch_weights", i32 234509, i32 14113}
!274 = !{!"branch_weights", i32 309141, i32 335552}
!275 = distinct !{!275, !180}
!276 = !{!"branch_weights", i32 109732, i32 1213338}
!277 = !{!"branch_weights", i32 1, i32 109731}
!278 = !{!"branch_weights", i32 43629102, i32 -612616811, i32 1212541704}
!279 = !{!"branch_weights", i32 1231, i32 1}
!280 = !{!"branch_weights", i32 109731, i32 29605}
!281 = distinct !{!281, !180}
!282 = !{!"branch_weights", i32 415173, i32 798166}
!283 = !{!"branch_weights", i32 415173, i32 1}
!284 = !{!"branch_weights", i32 415173, i32 1, i32 1, i32 1, i32 1}
!285 = !{!"branch_weights", i32 1, i32 5687}
!286 = !{!"branch_weights", i32 1, i32 199789, i32 1, i32 91, i32 1, i32 1, i32 235950, i32 1, i32 5976, i32 1, i32 11951, i32 1}
!287 = !{!"branch_weights", i32 1, i32 199789}
!288 = !{!"branch_weights", i32 91, i32 1}
!289 = distinct !{!289, !180}
!290 = !{!"branch_weights", i32 209017, i32 26934}
!291 = !{!292, !172, i64 1024}
!292 = !{!"gcc_target", !293, i64 0, !295, i64 368, !296, i64 664, !168, i64 744, !172, i64 752, !172, i64 760, !172, i64 768, !172, i64 776, !172, i64 784, !172, i64 792, !172, i64 800, !172, i64 808, !172, i64 816, !172, i64 824, !172, i64 832, !172, i64 840, !172, i64 848, !172, i64 856, !172, i64 864, !172, i64 872, !172, i64 880, !172, i64 888, !172, i64 896, !172, i64 904, !172, i64 912, !172, i64 920, !172, i64 928, !172, i64 936, !172, i64 944, !172, i64 952, !172, i64 960, !172, i64 968, !172, i64 976, !172, i64 984, !172, i64 992, !172, i64 1000, !172, i64 1008, !172, i64 1016, !172, i64 1024, !172, i64 1032, !172, i64 1040, !172, i64 1048, !172, i64 1056, !297, i64 1064, !297, i64 1072, !172, i64 1080, !172, i64 1088, !172, i64 1096, !172, i64 1104, !172, i64 1112, !172, i64 1120, !172, i64 1128, !172, i64 1136, !172, i64 1144, !172, i64 1152, !172, i64 1160, !172, i64 1168, !298, i64 1176, !172, i64 1232, !172, i64 1240, !172, i64 1248, !172, i64 1256, !172, i64 1264, !172, i64 1272, !172, i64 1280, !172, i64 1288, !172, i64 1296, !172, i64 1304, !172, i64 1312, !172, i64 1320, !172, i64 1328, !172, i64 1336, !172, i64 1344, !172, i64 1352, !172, i64 1360, !172, i64 1368, !172, i64 1376, !172, i64 1384, !172, i64 1392, !172, i64 1400, !172, i64 1408, !172, i64 1416, !172, i64 1424, !172, i64 1432, !172, i64 1440, !172, i64 1448, !172, i64 1456, !297, i64 1464, !299, i64 1472, !172, i64 1664, !172, i64 1672, !172, i64 1680, !172, i64 1688, !172, i64 1696, !172, i64 1704, !172, i64 1712, !172, i64 1720, !172, i64 1728, !172, i64 1736, !172, i64 1744, !172, i64 1752, !172, i64 1760, !172, i64 1768, !172, i64 1776, !300, i64 1784, !301, i64 1792, !302, i64 1896, !303, i64 1968, !172, i64 2016, !169, i64 2024, !169, i64 2025, !169, i64 2026, !169, i64 2027, !169, i64 2028, !169, i64 2029, !169, i64 2030, !169, i64 2031, !169, i64 2032, !169, i64 2033, !169, i64 2034, !169, i64 2035}
!293 = !{!"asm_out", !172, i64 0, !172, i64 8, !172, i64 16, !294, i64 24, !294, i64 56, !172, i64 88, !172, i64 96, !172, i64 104, !172, i64 112, !172, i64 120, !172, i64 128, !172, i64 136, !172, i64 144, !172, i64 152, !172, i64 160, !172, i64 168, !172, i64 176, !172, i64 184, !172, i64 192, !172, i64 200, !172, i64 208, !172, i64 216, !172, i64 224, !172, i64 232, !172, i64 240, !172, i64 248, !172, i64 256, !172, i64 264, !172, i64 272, !172, i64 280, !172, i64 288, !172, i64 296, !172, i64 304, !172, i64 312, !172, i64 320, !172, i64 328, !172, i64 336, !172, i64 344, !172, i64 352, !172, i64 360}
!294 = !{!"asm_int_op", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24}
!295 = !{!"sched", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72, !172, i64 80, !172, i64 88, !172, i64 96, !172, i64 104, !172, i64 112, !172, i64 120, !172, i64 128, !172, i64 136, !172, i64 144, !172, i64 152, !172, i64 160, !172, i64 168, !172, i64 176, !172, i64 184, !172, i64 192, !172, i64 200, !172, i64 208, !172, i64 216, !172, i64 224, !172, i64 232, !172, i64 240, !172, i64 248, !172, i64 256, !172, i64 264, !172, i64 272, !172, i64 280, !172, i64 288}
!296 = !{!"vectorize", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72}
!297 = !{!"long", !169, i64 0}
!298 = !{!"addr_space", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48}
!299 = !{!"calls", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72, !172, i64 80, !172, i64 88, !172, i64 96, !172, i64 104, !172, i64 112, !172, i64 120, !172, i64 128, !172, i64 136, !172, i64 144, !172, i64 152, !172, i64 160, !172, i64 168, !172, i64 176, !172, i64 184}
!300 = !{!"c", !172, i64 0}
!301 = !{!"cxx", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72, !172, i64 80, !172, i64 88, !172, i64 96}
!302 = !{!"emutls", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !169, i64 64, !169, i64 65}
!303 = !{!"target_option_hooks", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40}
!304 = !{!"branch_weights", i32 201038, i32 7980}
!305 = !{!"branch_weights", i32 7980, i32 1}
!306 = !{!"branch_weights", i32 203723, i32 32228}
!307 = !{!"branch_weights", i32 1, i32 5976}
!308 = !{!"branch_weights", i32 448066, i32 5687}
!309 = distinct !{!309, !180}
!310 = !{!"function_entry_count", i64 8712368}
!311 = !{!"branch_weights", i32 8712369, i32 1}
!312 = !{!176, !168, i64 4}
!313 = !{!176, !168, i64 0}
!314 = !{!"function_entry_count", i64 233081}
!315 = !{!316, !172, i64 0}
!316 = !{!"expand_value_data", !172, i64 0, !172, i64 8, !172, i64 16, !169, i64 24}
!317 = !{!"function_entry_count", i64 284983}
!318 = !{!"cselib.c:cselib_expand_value_rtx_1"}
!319 = !{!"branch_weights", i32 1, i32 284984}
!320 = !{!"branch_weights", i32 25976, i32 233134, i32 25876, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!321 = !{!"branch_weights", i32 69014, i32 164121}
!322 = !{!"branch_weights", i32 163936, i32 186}
!323 = !{!215, !172, i64 0}
!324 = !{!"branch_weights", i32 164098, i32 1}
!325 = !{!"branch_weights", i32 628, i32 490413, i32 628, i32 628}
!326 = !{!"branch_weights", i32 628, i32 1}
!327 = !{!"branch_weights", i32 588, i32 41}
!328 = !{!"branch_weights", i32 69036, i32 95062}
!329 = distinct !{!329, !180}
!330 = !{!316, !172, i64 8}
!331 = !{!316, !172, i64 16}
!332 = !{!316, !169, i64 24}
!333 = !{!"branch_weights", i32 25976, i32 1}
!334 = !{!"branch_weights", i32 1, i32 25975}
!335 = !{!"branch_weights", i32 1, i32 51863, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!336 = !{!"branch_weights", i32 1, i32 51863}
!337 = distinct !{!337, !180}
!338 = !{!"branch_weights", i32 25975, i32 25888}
!339 = distinct !{!339, !180}
!340 = !{!"branch_weights", i32 25978, i32 1, i32 1, i32 1, i32 1, i32 1}
!341 = !{!"branch_weights", i32 25952, i32 25}
!342 = !{!"function_entry_count", i64 3976094}
!343 = !{!"branch_weights", i32 1603609, i32 958347, i32 92489, i32 1, i32 1, i32 1321653, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!344 = !{!"branch_weights", i32 1, i32 958347}
!345 = !{!"branch_weights", i32 465646, i32 492702}
!346 = !{!"branch_weights", i32 34524681, i32 2112958967}
!347 = !{!"branch_weights", i32 958347, i32 2180}
!348 = !{!"branch_weights", i32 127, i32 122947201}
!349 = distinct !{!349, !180}
!350 = !{!"branch_weights", i32 1, i32 92489}
!351 = !{!"branch_weights", i32 1, i32 1603608}
!352 = !{!"branch_weights", i32 1753591524, i32 -1325602148, i32 1308}
!353 = !{!"branch_weights", i32 1164586, i32 1104491}
!354 = !{!"branch_weights", i32 1051687, i32 52805}
!355 = distinct !{!355, !180}
!356 = !{!"branch_weights", i32 2005496, i32 1603608}
!357 = distinct !{!357, !180}
!358 = !{!"function_entry_count", i64 1339005}
!359 = !{!"cselib.c:cselib_lookup_mem"}
!360 = !{!"branch_weights", i32 -1215850995, i32 1392645562}
!361 = !{!"branch_weights", i32 -1727624311, i32 2783, i32 2783, i32 2783, i32 2784}
!362 = !{!"branch_weights", i32 551355, i32 370646}
!363 = !{!"branch_weights", i32 254969, i32 115678}
!364 = !{!"branch_weights", i32 115678, i32 1}
!365 = distinct !{!365, !180}
!366 = !{!"branch_weights", i32 99093, i32 155877}
!367 = !{!"function_entry_count", i64 2716244}
!368 = !{!"cselib.c:new_cselib_val"}
!369 = !{!"branch_weights", i32 1, i32 2716245}
!370 = !{!"branch_weights", i32 2716245, i32 1}
!371 = !{!"cselib.c:cselib_lookup_1"}
!372 = !{!"branch_weights", i32 1147245, i32 7565125}
!373 = !{!"branch_weights", i32 -2119547777, i32 174211436, i32 2117302025, i32 745810426}
!374 = !{!"branch_weights", i32 1393271, i32 2145504}
!375 = !{!"branch_weights", i32 1005211, i32 1140294}
!376 = !{!"branch_weights", i32 1647632, i32 20634}
!377 = !{!"branch_weights", i32 1668265, i32 0}
!378 = distinct !{!378, !180}
!379 = !{!"branch_weights", i32 1037794, i32 853350}
!380 = !{!"branch_weights", i32 714192, i32 139159}
!381 = !{!"branch_weights", i32 252597, i32 461596}
!382 = !{!"branch_weights", i32 693600, i32 159751}
!383 = !{!"branch_weights", i32 836062, i32 2799849}
!384 = !{!"branch_weights", i32 878658, i32 1921192}
!385 = !{!"branch_weights", i32 1707020, i32 214173}
!386 = !{!"function_entry_count", i64 3519087}
!387 = !{!"branch_weights", i32 1405193782, i32 1525, i32 1525, i32 1525, i32 -941890773, i32 618436584}
!388 = distinct !{!388, !180}
!389 = !{!"branch_weights", i32 3519000, i32 89}
!390 = !{!"function_entry_count", i64 4594108}
!391 = !{!"branch_weights", i32 -2140133916, i32 117018405, i32 181667092}
!392 = !{!"branch_weights", i32 340164, i32 1}
!393 = !{!"branch_weights", i32 2173920, i32 2201079}
!394 = !{!"branch_weights", i32 1, i32 2173920}
!395 = !{!"branch_weights", i32 1229277280, i32 918206368}
!396 = !{!"branch_weights", i32 579779187, i32 1567704461}
!397 = !{!"branch_weights", i32 1360653, i32 16667988}
!398 = !{!"branch_weights", i32 340164, i32 17688476}
!399 = distinct !{!399, !180}
!400 = !{!"branch_weights", i32 -1948867780, i32 13793}
!401 = !{!"branch_weights", i32 340164, i32 3093712}
!402 = !{!"branch_weights", i32 340163, i32 1}
!403 = distinct !{!403, !180}
!404 = !{!"branch_weights", i32 93, i32 3433783}
!405 = !{!406, !297, i64 40}
!406 = !{!"htab", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !297, i64 32, !297, i64 40, !297, i64 48, !168, i64 56, !168, i64 60, !172, i64 64, !172, i64 72, !172, i64 80, !172, i64 88, !172, i64 96, !168, i64 104}
!407 = !{!406, !297, i64 48}
!408 = !{!"function_entry_count", i64 3433874}
!409 = !{!"cselib.c:cselib_record_sets"}
!410 = !{!"branch_weights", i32 1, i32 3433875}
!411 = !{!"branch_weights", i32 11907598, i32 -1380501607, i32 86638284}
!412 = !{!413, !172, i64 0}
!413 = !{!"cselib_set", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24}
!414 = !{!413, !172, i64 8}
!415 = !{!"branch_weights", i32 98740, i32 1}
!416 = !{!"branch_weights", i32 99348, i32 98229}
!417 = !{!"branch_weights", i32 98836, i32 98740}
!418 = distinct !{!418, !180}
!419 = !{!"branch_weights", i32 2134301064, i32 13182584}
!420 = !{!"branch_weights", i32 -1298290843, i32 83249}
!421 = !{!"branch_weights", i32 95, i32 1}
!422 = !{!"branch_weights", i32 -2147483648, i32 0}
!423 = !{!"branch_weights", i32 25906, i32 3395007}
!424 = !{!"branch_weights", i32 2096529, i32 1324384}
!425 = !{!"branch_weights", i32 519015939, i32 -626888324}
!426 = !{!"branch_weights", i32 2260694, i32 1}
!427 = !{!413, !172, i64 16}
!428 = !{!"branch_weights", i32 164166, i32 2096529}
!429 = !{!292, !172, i64 1184}
!430 = !{!"branch_weights", i32 1, i32 164166}
!431 = !{!432, !169, i64 32}
!432 = !{!"mem_attrs", !172, i64 0, !172, i64 8, !172, i64 16, !168, i64 24, !168, i64 28, !169, i64 32}
!433 = !{!413, !172, i64 24}
!434 = !{!"branch_weights", i32 3420912, i32 0}
!435 = distinct !{!435, !180}
!436 = !{!"branch_weights", i32 3433875, i32 1}
!437 = !{!"branch_weights", i32 608, i32 3433268}
!438 = !{!"branch_weights", i32 1, i32 608}
!439 = distinct !{!439, !180}
!440 = distinct !{!440, !180}
!441 = !{!"branch_weights", i32 3420912, i32 12963}
!442 = distinct !{!442, !180}
!443 = !{!"function_entry_count", i64 148571}
!444 = !{!"branch_weights", i32 2, i32 148571}
!445 = !{!"branch_weights", i32 10, i32 148562}
!446 = !{!"branch_weights", i32 129991, i32 -1536226667}
!447 = !{!"function_entry_count", i64 2036}
!448 = !{!"cselib.c:get_value_hash"}
!449 = !{!"function_entry_count", i64 542216}
!450 = !{!"cselib.c:entry_and_rtx_equal_p"}
!451 = !{!"branch_weights", i32 8472, i32 -1998097960}
!452 = !{!"branch_weights", i32 1, i32 542217}
!453 = !{!"branch_weights", i32 369684, i32 172534}
!454 = !{!"branch_weights", i32 123576, i32 246109}
!455 = !{!"branch_weights", i32 -1534830233, i32 936428072}
!456 = !{!"branch_weights", i32 155512, i32 358365}
!457 = !{!"branch_weights", i32 144193, i32 214173}
!458 = distinct !{!458, !180}
!459 = !{!"cselib.c:dump_cselib_val"}
!460 = distinct !{!460, !180}
!461 = !{!176, !172, i64 24}
!462 = distinct !{!462, !180}
!463 = !{!"function_entry_count", i64 10204}
!464 = !{!"cselib.c:discard_useless_locs"}
!465 = !{!"branch_weights", i32 7865, i32 2341}
!466 = !{!"branch_weights", i32 905, i32 1617}
!467 = !{!"branch_weights", i32 2521, i32 0}
!468 = distinct !{!468, !180}
!469 = !{!"branch_weights", i32 1617, i32 725}
!470 = !{!"function_entry_count", i64 5102}
!471 = !{!"cselib.c:discard_useless_values"}
!472 = !{!"branch_weights", i32 4741, i32 363}
!473 = !{!"branch_weights", i32 4741, i32 1}
!474 = !{!"function_entry_count", i64 1114647}
!475 = !{!"cselib.c:unchain_one_elt_loc_list"}
!476 = !{!"function_entry_count", i64 4740}
!477 = !{!"cselib.c:unchain_one_value"}
!478 = !{!"branch_weights", i32 4740, i32 1}
!479 = distinct !{!479, !180}
!480 = !{!"function_entry_count", i64 626314}
!481 = !{!"cselib.c:unchain_one_elt_list"}
!482 = !{!"function_entry_count", i64 627}
!483 = !{!"cselib.c:expand_loc"}
!484 = !{!"branch_weights", i32 1, i32 627}
!485 = !{!"branch_weights", i32 708, i32 1}
!486 = !{!"branch_weights", i32 41, i32 668}
!487 = !{!"branch_weights", i32 1570513, i32 4194304, i32 -1494742738}
!488 = !{!"branch_weights", i32 627, i32 81}
!489 = distinct !{!489, !180}
!490 = !{!"branch_weights", i32 2007281323, i32 140202325}
!491 = !{!"branch_weights", i32 41, i32 1}
!492 = !{!"branch_weights", i32 588, i32 1}
!493 = !{!"function_entry_count", i64 1977480}
!494 = !{!"cselib.c:promote_debug_loc"}
!495 = !{!"branch_weights", i32 191648, i32 1785834}
!496 = !{!"branch_weights", i32 1, i32 1785834}
!497 = !{!"function_entry_count", i64 320041}
!498 = !{!"cselib.c:add_mem_for_addr"}
!499 = !{!"branch_weights", i32 127082, i32 192960}
!500 = !{!"branch_weights", i32 28053, i32 164908}
!501 = !{!"branch_weights", i32 1, i32 28053}
!502 = !{!"branch_weights", i32 192960, i32 0}
!503 = distinct !{!503, !180}
!504 = !{!"branch_weights", i32 291990, i32 28053}
!505 = !{!"function_entry_count", i64 2955724}
!506 = !{!"cselib.c:wrap_constant"}
!507 = !{!"branch_weights", i32 -2027820276, i32 870933770, i32 1061, i32 1061}
!508 = !{!"branch_weights", i32 1, i32 820323}
!509 = !{!"function_entry_count", i64 2876337}
!510 = !{!"cselib.c:new_elt_list"}
!511 = !{!"function_entry_count", i64 4284295}
!512 = !{!"cselib.c:new_elt_loc_list"}
!513 = !{!"branch_weights", i32 2716245, i32 1568052}
!514 = !{!"branch_weights", i32 1, i32 1568052}
!515 = !{!"branch_weights", i32 361638757, i32 1785844891}
!516 = !{!"branch_weights", i32 1, i32 2258827}
!517 = !{!"function_entry_count", i64 7362714}
!518 = !{!"cselib.c:cselib_hash_rtx"}
!519 = !{!"branch_weights", i32 1918028, i32 407908, i32 1269495, i32 1, i32 2561421, i32 1, i32 1, i32 1, i32 47, i32 878723, i32 177, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 326923, i32 1, i32 1}
!520 = !{!"branch_weights", i32 508964, i32 1168439}
!521 = !{!"branch_weights", i32 1, i32 2561421}
!522 = distinct !{!522, !180}
!523 = !{!"branch_weights", i32 1, i32 47}
!524 = !{!"branch_weights", i32 1, i32 878722}
!525 = !{!"branch_weights", i32 878722, i32 11380747}
!526 = distinct !{!526, !180}
!527 = !{!"branch_weights", i32 1, i32 878723}
!528 = !{!"branch_weights", i32 1, i32 1404254}
!529 = !{!"branch_weights", i32 1, i32 3726806, i32 1, i32 1, i32 24631, i32 1, i32 1}
!530 = distinct !{!530, !180}
!531 = distinct !{!531, !180}
!532 = !{!"branch_weights", i32 2347182, i32 1404254}
!533 = distinct !{!533, !180}
!534 = !{!"branch_weights", i32 1, i32 1404255}
!535 = !{!"function_entry_count", i64 19234416}
!536 = !{!"cselib.c:end_hard_regno"}
!537 = !{!"cselib.c:cselib_rtx_varies_p"}
!538 = !{!"function_entry_count", i64 3518999}
!539 = !{!"cselib.c:cselib_invalidate_rtx_note_stores"}
!540 = !{!"function_entry_count", i64 2260693}
!541 = !{!"cselib.c:cselib_record_set"}
!542 = !{!"branch_weights", i32 2096529, i32 164166}
!543 = !{!"branch_weights", i32 692643, i32 1568052}
!544 = !{!"branch_weights", i32 1568052, i32 1}
!545 = !{!"branch_weights", i32 1403887, i32 164166}
!546 = !{!"branch_weights", i32 1032603, i32 371285}
!547 = !{!"branch_weights", i32 206294, i32 826310}
!548 = !{!"branch_weights", i32 1009349, i32 394539}
!549 = !{!"branch_weights", i32 394539, i32 1}
!550 = !{!"branch_weights", i32 1, i32 1403887}
!551 = !{!"branch_weights", i32 -75576647, i32 77105}
