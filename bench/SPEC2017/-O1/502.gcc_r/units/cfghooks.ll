; ModuleID = 'cfghooks.c'
source_filename = "cfghooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cfg_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@rtl_cfg_hooks = external global %struct.cfg_hooks, align 8
@cfg_hooks = internal unnamed_addr global ptr null, align 8
@cfg_layout_rtl_cfg_hooks = external global %struct.cfg_hooks, align 8
@gimple_cfg_hooks = external global %struct.cfg_hooks, align 8
@.str = private unnamed_addr constant [11 x i8] c"cfghooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"bb %d on wrong place\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"prev_bb of %d should be %d, not %d\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"verify_flow_info: Block %i has loop_father, but there are no loops\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"verify_flow_info: Block %i lacks loop_father\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"verify_flow_info: Wrong count of block %i %i\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"verify_flow_info: Wrong frequency of block %i %i\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"verify_flow_info: Duplicate edge %i->%i\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"verify_flow_info: Wrong probability of edge %i->%i %i\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"verify_flow_info: Wrong count of edge %i->%i %i\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"verify_flow_info: Basic block %d succ edge is corrupted\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"Predecessor: \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0ASuccessor: \00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"wrong amount of branch edges after unconditional jump %i\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"basic block %d pred edge is corrupted\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"its dest_idx should be %d, not %d\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"basic block %i edge lists are corrupted\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"verify_flow_info failed\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c";;%s basic block %d, loop depth %d, count \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c";;%s prev block \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"(nil), \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"next block \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c";;%s pred:      \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c";;%s succ:      \00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"%s does not support redirect_edge_and_branch\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"%s does not support can_remove_branch_p\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"%s does not support redirect_edge_and_branch_force\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"%s does not support split_block\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"%s does not support move_block_after\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s does not support delete_basic_block\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"%s does not support split_edge\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"%s does not support create_basic_block\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"%s does not support can_merge_blocks_p\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"%s does not support predict_edge\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"%s does not support predicted_by_p\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"%s does not support merge_blocks\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"%s does not support make_forwarder_block\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"%s does not support can_duplicate_block_p\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"%s does not support duplicate_block\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"%s does not support block_ends_with_call_p\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"%s does not support block_ends_with_condjump_p\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"%s does not support flow_call_edges_add\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !70 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !71
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !70 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !71
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !70 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !81

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !75
  %11 = load i8, ptr %3, align 1, !tbaa !82
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !70 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !81

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !75
  %11 = load i8, ptr %3, align 1, !tbaa !82
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !70 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !81

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !75
  %11 = load i8, ptr %3, align 1, !tbaa !82
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !70 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !71
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !70 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !81

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !83
  store i8 %12, ptr %4, align 1, !tbaa !82
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !70 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !81

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !83
  store i8 %12, ptr %4, align 1, !tbaa !82
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !70 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !81

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !83
  store i8 %12, ptr %4, align 1, !tbaa !82
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !70 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !70 {
  %2 = load i32, ptr %0, align 8, !tbaa !85
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !70 {
  %2 = load i32, ptr %0, align 8, !tbaa !85
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !70 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !86
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !70 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !86
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !70 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !70 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !70 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !70 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !87

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !70 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @rtl_register_cfg_hooks() local_unnamed_addr #8 !prof !90 {
  store ptr @rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #8 !prof !91 {
  store ptr @cfg_layout_rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #8 !prof !92 {
  store ptr @gimple_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !71
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_cfg_hooks(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #9 !prof !93 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %2, i64 232, i1 false), !tbaa.struct !94
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_cfg_hooks(ptr nocapture noundef readonly byval(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #9 !prof !95 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false), !tbaa.struct !94
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @current_ir_type() local_unnamed_addr #11 !prof !96 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %2 = icmp eq ptr %1, @gimple_cfg_hooks
  br i1 %2, label %8, label %3, !prof !97

3:                                                ; preds = %0
  %4 = icmp eq ptr %1, @rtl_cfg_hooks
  br i1 %4, label %8, label %5, !prof !98

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, @cfg_layout_rtl_cfg_hooks
  br i1 %6, label %8, label %7, !prof !99

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %5, %3, %0, %7
  %9 = phi i32 [ 0, %7 ], [ 0, %0 ], [ 1, %3 ], [ 2, %5 ]
  ret i32 %9
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_flow_info() local_unnamed_addr #12 !prof !70 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !82
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 24) #18
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !102
  %10 = sext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #18
  %12 = load ptr, ptr @cfun, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !102
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @xcalloc(i64 noundef %17, i64 noundef 8) #18
  %19 = load ptr, ptr @cfun, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %4, %58
  %27 = phi ptr [ %61, %58 ], [ %24, %4 ]
  %28 = phi i32 [ %59, %58 ], [ 0, %4 ]
  %29 = phi ptr [ %27, %58 ], [ %22, %4 ]
  %30 = load ptr, ptr @cfun, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !100
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !107
  %35 = icmp eq ptr %27, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !109
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %38, i64 0, i32 2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = icmp eq ptr %27, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %40) #18
  br label %46

46:                                               ; preds = %45, %36, %26
  %47 = phi i32 [ 1, %45 ], [ %28, %36 ], [ %28, %26 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  %50 = icmp eq ptr %49, %29
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %53, i32 noundef %55, i32 noundef %57) #18
  br label %58

58:                                               ; preds = %51, %46
  %59 = phi i32 [ 1, %51 ], [ %47, %46 ]
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !105
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %26, !llvm.loop !111

63:                                               ; preds = %58, %4
  %64 = phi i32 [ 0, %4 ], [ %59, %58 ]
  %65 = load ptr, ptr @cfun, align 8, !tbaa !71
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !100
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !107
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !110
  %72 = load ptr, ptr @cfun, align 8, !tbaa !71
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !100
  %75 = load ptr, ptr %74, align 8, !tbaa !104
  %76 = icmp eq ptr %71, %75
  br i1 %76, label %308, label %85

77:                                               ; preds = %256
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !110
  %80 = load ptr, ptr @cfun, align 8, !tbaa !71
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !100
  %83 = load ptr, ptr %82, align 8, !tbaa !104
  %84 = icmp eq ptr %79, %83
  br i1 %84, label %308, label %85, !llvm.loop !112

85:                                               ; preds = %63, %77
  %86 = phi ptr [ %80, %77 ], [ %72, %63 ]
  %87 = phi ptr [ %79, %77 ], [ %71, %63 ]
  %88 = phi i32 [ %242, %77 ], [ %64, %63 ]
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !113
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !114
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %98) #18
  br label %99

99:                                               ; preds = %96, %92, %85
  %100 = phi i32 [ 1, %96 ], [ %88, %92 ], [ %88, %85 ]
  %101 = load ptr, ptr %89, align 8, !tbaa !113
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load ptr, ptr @cfun, align 8, !tbaa !71
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !114
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5, i32 noundef %110) #18
  br label %111

111:                                              ; preds = %108, %103, %99
  %112 = phi i32 [ 1, %108 ], [ %100, %103 ], [ %100, %99 ]
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 8
  %114 = load i64, ptr %113, align 8, !tbaa !115
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %118 = load i32, ptr %117, align 8, !tbaa !109
  %119 = trunc i64 %114 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, i32 noundef %118, i32 noundef %119) #18
  br label %120

120:                                              ; preds = %116, %111
  %121 = phi i32 [ 1, %116 ], [ %112, %111 ]
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 11
  %123 = load i32, ptr %122, align 8, !tbaa !116
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %127 = load i32, ptr %126, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %127, i32 noundef %123) #18
  br label %128

128:                                              ; preds = %125, %120
  %129 = phi i32 [ 1, %125 ], [ %121, %120 ]
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 1
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  br label %132

132:                                              ; preds = %228, %128
  %133 = phi i32 [ 0, %128 ], [ %229, %228 ]
  %134 = phi i32 [ 0, %128 ], [ %197, %228 ]
  %135 = phi i32 [ %129, %128 ], [ %211, %228 ]
  %136 = load ptr, ptr %130, align 8, !tbaa !71
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = load i32, ptr %136, align 8, !tbaa !117
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi i32 [ %139, %138 ], [ 0, %132 ]
  %142 = icmp eq i32 %141, %133
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = zext i32 %133 to i64
  %145 = getelementptr inbounds %struct.VEC_edge_base, ptr %136, i64 0, i32 2, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !71
  br label %147

147:                                              ; preds = %140, %143
  %148 = phi ptr [ %146, %143 ], [ null, %140 ]
  br i1 %142, label %230, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !119
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %151, i64 0, i32 9
  %153 = load i32, ptr %152, align 8, !tbaa !109
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %11, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !71
  %157 = icmp eq ptr %156, %87
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load ptr, ptr %148, align 8, !tbaa !121
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 9
  %161 = load i32, ptr %160, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8, i32 noundef %161, i32 noundef %153) #18
  br label %162

162:                                              ; preds = %158, %149
  %163 = phi i32 [ 1, %158 ], [ %135, %149 ]
  %164 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 8
  %165 = load i32, ptr %164, align 4, !tbaa !122
  %166 = icmp ugt i32 %165, 10000
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load ptr, ptr %148, align 8, !tbaa !121
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 9
  %170 = load i32, ptr %169, align 8, !tbaa !109
  %171 = load ptr, ptr %150, align 8, !tbaa !119
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %170, i32 noundef %173, i32 noundef %165) #18
  br label %174

174:                                              ; preds = %162, %167
  %175 = phi i32 [ 1, %167 ], [ %163, %162 ]
  %176 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 9
  %177 = load i64, ptr %176, align 8, !tbaa !123
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load ptr, ptr %148, align 8, !tbaa !121
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !109
  %183 = load ptr, ptr %150, align 8, !tbaa !119
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %183, i64 0, i32 9
  %185 = load i32, ptr %184, align 8, !tbaa !109
  %186 = trunc i64 %177 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %182, i32 noundef %185, i32 noundef %186) #18
  br label %187

187:                                              ; preds = %179, %174
  %188 = phi i32 [ 1, %179 ], [ %175, %174 ]
  %189 = load ptr, ptr %150, align 8, !tbaa !119
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %189, i64 0, i32 9
  %191 = load i32, ptr %190, align 8, !tbaa !109
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %11, i64 %192
  store ptr %87, ptr %193, align 8, !tbaa !71
  %194 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 7
  %195 = load i32, ptr %194, align 8, !tbaa !124
  %196 = and i32 %195, 1
  %197 = add i32 %196, %134
  %198 = load ptr, ptr %148, align 8, !tbaa !121
  %199 = icmp eq ptr %198, %87
  br i1 %199, label %210, label %200

200:                                              ; preds = %187
  %201 = load i32, ptr %131, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %201) #18
  %202 = load ptr, ptr @stderr, align 8, !tbaa !71
  %203 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %202) #19
  %204 = load ptr, ptr @stderr, align 8, !tbaa !71
  tail call void @dump_edge_info(ptr noundef %204, ptr noundef nonnull %148, i32 noundef 0) #18
  %205 = load ptr, ptr @stderr, align 8, !tbaa !71
  %206 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %205) #19
  %207 = load ptr, ptr @stderr, align 8, !tbaa !71
  tail call void @dump_edge_info(ptr noundef %207, ptr noundef nonnull %148, i32 noundef 1) #18
  %208 = load ptr, ptr @stderr, align 8, !tbaa !71
  %209 = tail call i32 @fputc(i32 10, ptr %208)
  br label %210

210:                                              ; preds = %200, %187
  %211 = phi i32 [ 1, %200 ], [ %188, %187 ]
  %212 = ptrtoint ptr %148 to i64
  %213 = load ptr, ptr %150, align 8, !tbaa !119
  %214 = getelementptr inbounds %struct.basic_block_def, ptr %213, i64 0, i32 9
  %215 = load i32, ptr %214, align 8, !tbaa !109
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, ptr %18, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !125
  %219 = add i64 %218, %212
  store i64 %219, ptr %217, align 8, !tbaa !125
  %220 = load ptr, ptr %130, align 8, !tbaa !71
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %210
  %223 = load i32, ptr %220, align 8, !tbaa !117
  br label %224

224:                                              ; preds = %222, %210
  %225 = phi i32 [ %223, %222 ], [ 0, %210 ]
  %226 = icmp ult i32 %133, %225
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %228

228:                                              ; preds = %224, %227
  %229 = add i32 %133, 1
  br label %132, !llvm.loop !126

230:                                              ; preds = %147
  %231 = icmp sgt i32 %134, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %230
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %234 = load i32, ptr %233, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %234) #18
  br label %235

235:                                              ; preds = %232, %230
  %236 = phi i32 [ 1, %232 ], [ %135, %230 ]
  %237 = icmp eq ptr %87, null
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %239 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  br label %240

240:                                              ; preds = %306, %235
  %241 = phi i32 [ 0, %235 ], [ %307, %306 ]
  %242 = phi i32 [ %236, %235 ], [ %289, %306 ]
  br i1 %237, label %243, label %244

243:                                              ; preds = %240
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %244

244:                                              ; preds = %243, %240
  %245 = load ptr, ptr %87, align 8, !tbaa !71
  %246 = icmp eq ptr %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %244
  %248 = load i32, ptr %245, align 8, !tbaa !117
  br label %249

249:                                              ; preds = %247, %244
  %250 = phi i32 [ %248, %247 ], [ 0, %244 ]
  %251 = icmp eq i32 %250, %241
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = zext i32 %241 to i64
  %254 = getelementptr inbounds %struct.VEC_edge_base, ptr %245, i64 0, i32 2, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !71
  br label %256

256:                                              ; preds = %249, %252
  %257 = phi ptr [ %255, %252 ], [ null, %249 ]
  br i1 %251, label %77, label %258

258:                                              ; preds = %256
  %259 = getelementptr inbounds %struct.edge_def, ptr %257, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !119
  %261 = icmp eq ptr %260, %87
  br i1 %261, label %272, label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %238, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %263) #18
  %264 = load ptr, ptr @stderr, align 8, !tbaa !71
  %265 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %264) #19
  %266 = load ptr, ptr @stderr, align 8, !tbaa !71
  tail call void @dump_edge_info(ptr noundef %266, ptr noundef %257, i32 noundef 0) #18
  %267 = load ptr, ptr @stderr, align 8, !tbaa !71
  %268 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %267) #19
  %269 = load ptr, ptr @stderr, align 8, !tbaa !71
  tail call void @dump_edge_info(ptr noundef %269, ptr noundef %257, i32 noundef 1) #18
  %270 = load ptr, ptr @stderr, align 8, !tbaa !71
  %271 = tail call i32 @fputc(i32 noundef 10, ptr noundef %270)
  br label %272

272:                                              ; preds = %262, %258
  %273 = phi i32 [ 1, %262 ], [ %242, %258 ]
  %274 = getelementptr inbounds %struct.edge_def, ptr %257, i64 0, i32 6
  %275 = load i32, ptr %274, align 4, !tbaa !127
  %276 = icmp eq i32 %241, %275
  br i1 %276, label %288, label %277

277:                                              ; preds = %272
  %278 = load i32, ptr %239, align 8, !tbaa !109
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %278) #18
  %279 = load i32, ptr %274, align 4, !tbaa !127
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %241, i32 noundef %279) #18
  %280 = load ptr, ptr @stderr, align 8, !tbaa !71
  %281 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %280) #19
  %282 = load ptr, ptr @stderr, align 8, !tbaa !71
  tail call void @dump_edge_info(ptr noundef %282, ptr noundef %257, i32 noundef 0) #18
  %283 = load ptr, ptr @stderr, align 8, !tbaa !71
  %284 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %283) #19
  %285 = load ptr, ptr @stderr, align 8, !tbaa !71
  tail call void @dump_edge_info(ptr noundef %285, ptr noundef %257, i32 noundef 1) #18
  %286 = load ptr, ptr @stderr, align 8, !tbaa !71
  %287 = tail call i32 @fputc(i32 noundef 10, ptr noundef %286)
  br label %288

288:                                              ; preds = %277, %272
  %289 = phi i32 [ 1, %277 ], [ %273, %272 ]
  %290 = ptrtoint ptr %257 to i64
  %291 = load ptr, ptr %259, align 8, !tbaa !119
  %292 = getelementptr inbounds %struct.basic_block_def, ptr %291, i64 0, i32 9
  %293 = load i32, ptr %292, align 8, !tbaa !109
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, ptr %18, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !125
  %297 = sub i64 %296, %290
  store i64 %297, ptr %295, align 8, !tbaa !125
  %298 = load ptr, ptr %87, align 8, !tbaa !71
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %288
  %301 = load i32, ptr %298, align 8, !tbaa !117
  br label %302

302:                                              ; preds = %300, %288
  %303 = phi i32 [ %301, %300 ], [ 0, %288 ]
  %304 = icmp ult i32 %241, %303
  br i1 %304, label %306, label %305

305:                                              ; preds = %302
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %306

306:                                              ; preds = %302, %305
  %307 = add i32 %241, 1
  br label %240, !llvm.loop !128

308:                                              ; preds = %77, %63
  %309 = phi i32 [ %64, %63 ], [ %242, %77 ]
  %310 = phi ptr [ %75, %63 ], [ %83, %77 ]
  %311 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 1
  br label %312

312:                                              ; preds = %344, %308
  %313 = phi i32 [ 0, %308 ], [ %345, %344 ]
  %314 = load ptr, ptr %311, align 8, !tbaa !71
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %312
  %317 = load i32, ptr %314, align 8, !tbaa !117
  br label %318

318:                                              ; preds = %316, %312
  %319 = phi i32 [ %317, %316 ], [ 0, %312 ]
  %320 = icmp eq i32 %319, %313
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = zext i32 %313 to i64
  %323 = getelementptr inbounds %struct.VEC_edge_base, ptr %314, i64 0, i32 2, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !71
  br label %325

325:                                              ; preds = %318, %321
  %326 = phi ptr [ %324, %321 ], [ null, %318 ]
  br i1 %320, label %346, label %327

327:                                              ; preds = %325
  %328 = ptrtoint ptr %326 to i64
  %329 = getelementptr inbounds %struct.edge_def, ptr %326, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !119
  %331 = getelementptr inbounds %struct.basic_block_def, ptr %330, i64 0, i32 9
  %332 = load i32, ptr %331, align 8, !tbaa !109
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, ptr %18, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !125
  %336 = add i64 %335, %328
  store i64 %336, ptr %334, align 8, !tbaa !125
  %337 = icmp eq ptr %314, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %327
  %339 = load i32, ptr %314, align 8, !tbaa !117
  br label %340

340:                                              ; preds = %338, %327
  %341 = phi i32 [ %339, %338 ], [ 0, %327 ]
  %342 = icmp ult i32 %313, %341
  br i1 %342, label %344, label %343

343:                                              ; preds = %340
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %344

344:                                              ; preds = %340, %343
  %345 = add i32 %313, 1
  br label %312, !llvm.loop !129

346:                                              ; preds = %325
  %347 = load ptr, ptr @cfun, align 8, !tbaa !71
  %348 = getelementptr inbounds %struct.function, ptr %347, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !100
  %350 = getelementptr inbounds %struct.control_flow_graph, ptr %349, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !107
  %352 = icmp eq ptr %351, null
  br label %353

353:                                              ; preds = %387, %346
  %354 = phi i32 [ 0, %346 ], [ %388, %387 ]
  br i1 %352, label %355, label %356

355:                                              ; preds = %353
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %356

356:                                              ; preds = %355, %353
  %357 = load ptr, ptr %351, align 8, !tbaa !71
  %358 = icmp eq ptr %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %356
  %360 = load i32, ptr %357, align 8, !tbaa !117
  br label %361

361:                                              ; preds = %359, %356
  %362 = phi i32 [ %360, %359 ], [ 0, %356 ]
  %363 = icmp eq i32 %362, %354
  br i1 %363, label %368, label %364

364:                                              ; preds = %361
  %365 = zext i32 %354 to i64
  %366 = getelementptr inbounds %struct.VEC_edge_base, ptr %357, i64 0, i32 2, i64 %365
  %367 = load ptr, ptr %366, align 8, !tbaa !71
  br label %368

368:                                              ; preds = %361, %364
  %369 = phi ptr [ %367, %364 ], [ null, %361 ]
  br i1 %363, label %389, label %370

370:                                              ; preds = %368
  %371 = ptrtoint ptr %369 to i64
  %372 = getelementptr inbounds %struct.edge_def, ptr %369, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !119
  %374 = getelementptr inbounds %struct.basic_block_def, ptr %373, i64 0, i32 9
  %375 = load i32, ptr %374, align 8, !tbaa !109
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i64, ptr %18, i64 %376
  %378 = load i64, ptr %377, align 8, !tbaa !125
  %379 = sub i64 %378, %371
  store i64 %379, ptr %377, align 8, !tbaa !125
  %380 = icmp eq ptr %357, null
  br i1 %380, label %383, label %381

381:                                              ; preds = %370
  %382 = load i32, ptr %357, align 8, !tbaa !117
  br label %383

383:                                              ; preds = %381, %370
  %384 = phi i32 [ %382, %381 ], [ 0, %370 ]
  %385 = icmp ult i32 %354, %384
  br i1 %385, label %387, label %386

386:                                              ; preds = %383
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %387

387:                                              ; preds = %383, %386
  %388 = add i32 %354, 1
  br label %353, !llvm.loop !130

389:                                              ; preds = %368
  %390 = load ptr, ptr @cfun, align 8, !tbaa !71
  %391 = getelementptr inbounds %struct.function, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !100
  %393 = load ptr, ptr %392, align 8, !tbaa !71
  %394 = icmp eq ptr %393, null
  br i1 %394, label %410, label %395

395:                                              ; preds = %389, %405
  %396 = phi ptr [ %408, %405 ], [ %393, %389 ]
  %397 = phi i32 [ %406, %405 ], [ %309, %389 ]
  %398 = getelementptr inbounds %struct.basic_block_def, ptr %396, i64 0, i32 9
  %399 = load i32, ptr %398, align 8, !tbaa !109
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i64, ptr %18, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !125
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %395
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %399) #18
  br label %405

405:                                              ; preds = %395, %404
  %406 = phi i32 [ 1, %404 ], [ %397, %395 ]
  %407 = getelementptr inbounds %struct.basic_block_def, ptr %396, i64 0, i32 6
  %408 = load ptr, ptr %407, align 8, !tbaa !71
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %395, !llvm.loop !131

410:                                              ; preds = %405, %389
  %411 = phi i32 [ %309, %389 ], [ %406, %405 ]
  tail call void @free(ptr noundef %11)
  tail call void @free(ptr noundef %18)
  %412 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %413 = getelementptr inbounds %struct.cfg_hooks, ptr %412, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !132
  %415 = icmp eq ptr %414, null
  br i1 %415, label %419, label %416

416:                                              ; preds = %410
  %417 = tail call i32 %414() #18
  %418 = or i32 %417, %411
  br label %419

419:                                              ; preds = %416, %410
  %420 = phi i32 [ %418, %416 ], [ %411, %410 ]
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %419
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.19) #18
  br label %423

423:                                              ; preds = %419, %422
  %424 = load i8, ptr @timevar_enable, align 1, !tbaa !82
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %423
  tail call void @timevar_pop_1(i32 noundef 24) #18
  br label %427

427:                                              ; preds = %426, %423
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !70 {
  %4 = sext i32 %2 to i64
  %5 = add nsw i64 %4, 1
  %6 = alloca i8, i64 %5, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 32, i64 %4, i1 false)
  %7 = getelementptr inbounds i8, ptr %6, i64 %4
  store i8 0, ptr %7, align 1, !tbaa !82
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !134
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %6, i32 noundef %9, i32 noundef %11)
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !115
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %14)
  %16 = call i32 @putc(i32 noundef 10, ptr noundef %1)
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %6)
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !109
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %23)
  br label %27

25:                                               ; preds = %3
  %26 = call i64 @fwrite(ptr nonnull @.str.24, i64 7, i64 1, ptr %1)
  br label %27

27:                                               ; preds = %25, %21
  %28 = call i64 @fwrite(ptr nonnull @.str.25, i64 11, i64 1, ptr %1)
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !109
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %34)
  br label %38

36:                                               ; preds = %27
  %37 = call i64 @fwrite(ptr nonnull @.str.27, i64 5, i64 1, ptr %1)
  br label %38

38:                                               ; preds = %36, %32
  %39 = call i32 @putc(i32 noundef 10, ptr noundef %1)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %6)
  %41 = icmp eq ptr %0, null
  br label %42

42:                                               ; preds = %68, %38
  %43 = phi i32 [ 0, %38 ], [ %69, %68 ]
  br i1 %41, label %44, label %45

44:                                               ; preds = %42
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %45

45:                                               ; preds = %44, %42
  %46 = load ptr, ptr %0, align 8, !tbaa !71
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %46, align 8, !tbaa !117
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %49, %48 ], [ 0, %45 ]
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = zext i32 %43 to i64
  %55 = getelementptr inbounds %struct.VEC_edge_base, ptr %46, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  br label %57

57:                                               ; preds = %50, %53
  %58 = phi ptr [ %56, %53 ], [ null, %50 ]
  br i1 %52, label %70, label %59

59:                                               ; preds = %57
  call void @dump_edge_info(ptr noundef %1, ptr noundef %58, i32 noundef 0) #18
  %60 = load ptr, ptr %0, align 8, !tbaa !71
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %60, align 8, !tbaa !117
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %63, %62 ], [ 0, %59 ]
  %66 = icmp ult i32 %43, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %68

68:                                               ; preds = %64, %67
  %69 = add i32 %43, 1
  br label %42, !llvm.loop !135

70:                                               ; preds = %57
  %71 = call i32 @putc(i32 noundef 10, ptr noundef %1)
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %6)
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %74

74:                                               ; preds = %98, %70
  %75 = phi i32 [ 0, %70 ], [ %99, %98 ]
  %76 = load ptr, ptr %73, align 8, !tbaa !71
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %76, align 8, !tbaa !117
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %79, %78 ], [ 0, %74 ]
  %82 = icmp eq i32 %81, %75
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = zext i32 %75 to i64
  %85 = getelementptr inbounds %struct.VEC_edge_base, ptr %76, i64 0, i32 2, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !71
  br label %87

87:                                               ; preds = %80, %83
  %88 = phi ptr [ %86, %83 ], [ null, %80 ]
  br i1 %82, label %100, label %89

89:                                               ; preds = %87
  call void @dump_edge_info(ptr noundef %1, ptr noundef %88, i32 noundef 1) #18
  %90 = load ptr, ptr %73, align 8, !tbaa !71
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %90, align 8, !tbaa !117
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %93, %92 ], [ 0, %89 ]
  %96 = icmp ult i32 %75, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %98

98:                                               ; preds = %94, %97
  %99 = add i32 %75, 1
  br label %74, !llvm.loop !136

100:                                              ; preds = %87
  %101 = call i32 @putc(i32 noundef 10, ptr noundef %1)
  %102 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %103 = getelementptr inbounds %struct.cfg_hooks, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !137
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  call void %104(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #18
  br label %107

107:                                              ; preds = %106, %100
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !138 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !140

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.30, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = tail call ptr %12(ptr noundef %0, ptr noundef %1) #18, !prof !142
  %14 = load ptr, ptr @cfun, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = icmp ne ptr %16, null
  %18 = icmp eq ptr %13, %0
  %19 = select i1 %17, i1 %18, i1 false, !prof !143
  br i1 %19, label %20, label %21, !prof !143

20:                                               ; preds = %9
  tail call void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  br label %21

21:                                               ; preds = %20, %9
  ret ptr %13
}

declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @can_remove_branch_p(ptr noundef %0) local_unnamed_addr #12 !prof !70 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.31, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8, !tbaa !117
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.cfg_hooks, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !144
  %20 = tail call zeroext i8 %19(ptr noundef nonnull %0) #18
  br label %21

21:                                               ; preds = %8, %13, %16
  %22 = phi i8 [ %20, %16 ], [ 0, %13 ], [ 0, %8 ]
  ret i8 %22
}

; Function Attrs: cold nounwind uwtable
define dso_local void @remove_branch(ptr noundef %0) local_unnamed_addr #12 !prof !70 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8, !tbaa !117
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %1, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %6, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !145
  %12 = getelementptr inbounds %struct.VEC_edge_base, ptr %11, i64 0, i32 2, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %13, %0
  %15 = zext i1 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_edge_base, ptr %11, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !124
  %20 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !119
  %22 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #18
  br label %25

25:                                               ; preds = %10, %24
  %26 = and i32 %19, 128
  %27 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !124
  %29 = and i32 %28, -129
  %30 = or disjoint i32 %29, %26
  store i32 %30, ptr %27, align 8, !tbaa !124
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_edge(ptr noundef %0) local_unnamed_addr #15 !prof !146 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !147

6:                                                ; preds = %1
  tail call void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  br label %7

7:                                                ; preds = %6, %1
  tail call void @remove_edge_raw(ptr noundef %0) #18
  ret void
}

declare void @remove_edge_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !148 {
  %3 = load ptr, ptr %0, align 8, !tbaa !121
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !150

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32, ptr noundef %9) #18
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr @cfun, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !151

15:                                               ; preds = %10
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.cfg_hooks, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = tail call ptr %19(ptr noundef nonnull %0, ptr noundef %1) #18, !prof !152
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !153

22:                                               ; preds = %16
  %23 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25, !prof !154

25:                                               ; preds = %22
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %20, ptr noundef %3) #18
  br label %26

26:                                               ; preds = %25, %22, %16
  %27 = load ptr, ptr @cfun, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  %30 = icmp eq ptr %29, null
  br i1 %30, label %66, label %31, !prof !151

31:                                               ; preds = %26
  br i1 %21, label %62, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %20, align 8, !tbaa !155
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %33, align 8, !tbaa !117
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %39

39:                                               ; preds = %35, %38
  %40 = load ptr, ptr %20, align 8, !tbaa !155
  %41 = getelementptr inbounds %struct.VEC_edge_base, ptr %40, i64 0, i32 2, i64 0
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = load ptr, ptr %42, align 8, !tbaa !121
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !113
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !145
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, ptr %47, align 8, !tbaa !117
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %53, label %52

52:                                               ; preds = %49, %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %53

53:                                               ; preds = %49, %52
  %54 = load ptr, ptr %46, align 8, !tbaa !145
  %55 = getelementptr inbounds %struct.VEC_edge_base, ptr %54, i64 0, i32 2, i64 0
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !119
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !113
  %61 = tail call ptr @find_common_loop(ptr noundef %45, ptr noundef %60) #18
  tail call void @add_bb_to_loop(ptr noundef nonnull %20, ptr noundef %61) #18
  br label %66

62:                                               ; preds = %31
  %63 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %1) #18
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  br label %66

66:                                               ; preds = %53, %65, %62, %26
  ret ptr %20
}

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @split_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !156 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !158

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.33, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = tail call ptr %12(ptr noundef %0, ptr noundef %1) #18, !prof !159
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15, !prof !158

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 8
  store i64 %17, ptr %18, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !116
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  store i32 %20, ptr %21, align 8, !tbaa !116
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 4, !tbaa !134
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 10
  store i32 %23, ptr %24, align 4, !tbaa !134
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !160
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 12
  store i32 %26, ptr %27, align 4, !tbaa !160
  %28 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !161

30:                                               ; preds = %15
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef %0, ptr noundef nonnull %13) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %13, ptr noundef %0) #18
  br label %31

31:                                               ; preds = %30, %15
  %32 = load ptr, ptr @cfun, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36, !prof !161

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !113
  tail call void @add_bb_to_loop(ptr noundef nonnull %13, ptr noundef %38) #18
  %39 = load ptr, ptr %37, align 8, !tbaa !113
  %40 = getelementptr inbounds %struct.loop, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !162
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store ptr %13, ptr %40, align 8, !tbaa !162
  br label %44

44:                                               ; preds = %36, %43, %31
  %45 = tail call ptr @make_single_succ_edge(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 1) #18
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !166
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50, !prof !161

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !166
  %53 = or i32 %52, 4
  store i32 %53, ptr %51, align 8, !tbaa !166
  %54 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !124
  %56 = or i32 %55, 128
  store i32 %56, ptr %54, align 8, !tbaa !124
  br label %57

57:                                               ; preds = %44, %50, %9
  %58 = phi ptr [ null, %9 ], [ %45, %50 ], [ %45, %44 ]
  ret ptr %58
}

declare void @redirect_immediate_dominators(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @split_block_after_labels(ptr noundef %0) local_unnamed_addr #12 !prof !70 {
  %2 = tail call ptr @split_block(ptr noundef %0, ptr noundef null)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @move_block_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !167 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !169

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.34, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = tail call zeroext i8 %12(ptr noundef %0, ptr noundef %1) #18, !prof !170
  ret i8 %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @delete_basic_block(ptr noundef %0) local_unnamed_addr #15 !prof !171 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !173

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.35, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  tail call void %11(ptr noundef %0) #18, !prof !174
  %12 = load ptr, ptr @cfun, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16, !prof !175

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !162
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %26, label %22, !prof !176

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !177
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %28, !prof !176

26:                                               ; preds = %22, %16
  %27 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br label %28

28:                                               ; preds = %26, %22
  tail call void @remove_bb_from_loops(ptr noundef %0) #18
  br label %29

29:                                               ; preds = %28, %8
  br label %30

30:                                               ; preds = %29, %48
  %31 = load ptr, ptr %0, align 8, !tbaa !155
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !178

33:                                               ; preds = %30
  %34 = load i32, ptr %31, align 8, !tbaa !117
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi i32 [ %34, %33 ], [ 0, %30 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40, !prof !179

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.VEC_edge_base, ptr %31, i64 0, i32 2, i64 0
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = load ptr, ptr @cfun, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !114
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !180

47:                                               ; preds = %40
  tail call void @rescan_loop_exit(ptr noundef %42, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  br label %48

48:                                               ; preds = %40, %47
  tail call void @remove_edge_raw(ptr noundef %42) #18
  br label %30, !llvm.loop !181

49:                                               ; preds = %38, %65
  %50 = load ptr, ptr %39, align 8, !tbaa !145
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !182

52:                                               ; preds = %49
  %53 = load i32, ptr %50, align 8, !tbaa !117
  br label %54

54:                                               ; preds = %49, %52
  %55 = phi i32 [ %53, %52 ], [ 0, %49 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57, !prof !183

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.VEC_edge_base, ptr %50, i64 0, i32 2, i64 0
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = load ptr, ptr @cfun, align 8, !tbaa !71
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !114
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64, !prof !184

64:                                               ; preds = %57
  tail call void @rescan_loop_exit(ptr noundef %59, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  br label %65

65:                                               ; preds = %57, %64
  tail call void @remove_edge_raw(ptr noundef %59) #18
  br label %49, !llvm.loop !185

66:                                               ; preds = %54
  %67 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69, !prof !186

69:                                               ; preds = %66
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %0) #18
  br label %70

70:                                               ; preds = %69, %66
  %71 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #18
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73, !prof !187

73:                                               ; preds = %70
  tail call void @delete_from_dominance_info(i32 noundef 2, ptr noundef nonnull %0) #18
  br label %74

74:                                               ; preds = %73, %70
  tail call void @expunge_block(ptr noundef nonnull %0) #18
  ret void
}

declare void @remove_bb_from_loops(ptr noundef) local_unnamed_addr #3

declare void @delete_from_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @expunge_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @split_edge(ptr noundef %0) local_unnamed_addr #15 !prof !188 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %3 = load i64, ptr %2, align 8, !tbaa !123
  %4 = load ptr, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !122
  %9 = mul nsw i32 %8, %6
  %10 = add nsw i32 %9, 5000
  %11 = sdiv i32 %10, 10000
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !124
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.cfg_hooks, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !189
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24, !prof !190

22:                                               ; preds = %1
  %23 = load ptr, ptr %18, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.36, ptr noundef %23) #18
  br label %24

24:                                               ; preds = %22, %1
  %25 = load ptr, ptr @cfun, align 8, !tbaa !71
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !191

29:                                               ; preds = %24
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  br label %30

30:                                               ; preds = %29, %24
  %31 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %32 = getelementptr inbounds %struct.cfg_hooks, ptr %31, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !189
  %34 = tail call ptr %33(ptr noundef nonnull %0) #18, !prof !192
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 8
  store i64 %3, ptr %35, align 8, !tbaa !115
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 11
  store i32 %11, ptr %36, align 8, !tbaa !116
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !145
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !190

40:                                               ; preds = %30
  %41 = load i32, ptr %38, align 8, !tbaa !117
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %44, label %43, !prof !193

43:                                               ; preds = %30, %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %44

44:                                               ; preds = %40, %43
  %45 = load ptr, ptr %37, align 8, !tbaa !145
  %46 = getelementptr inbounds %struct.VEC_edge_base, ptr %45, i64 0, i32 2, i64 0
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 8
  store i32 10000, ptr %48, align 4, !tbaa !122
  %49 = icmp eq ptr %45, null
  br i1 %49, label %53, label %50, !prof !190

50:                                               ; preds = %44
  %51 = load i32, ptr %45, align 8, !tbaa !117
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %54, label %53, !prof !193

53:                                               ; preds = %44, %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %54

54:                                               ; preds = %50, %53
  %55 = load ptr, ptr %37, align 8, !tbaa !145
  %56 = getelementptr inbounds %struct.VEC_edge_base, ptr %55, i64 0, i32 2, i64 0
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 9
  store i64 %3, ptr %58, align 8, !tbaa !123
  br i1 %15, label %89, label %59, !prof !193

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !166
  %62 = or i32 %61, 4
  store i32 %62, ptr %60, align 8, !tbaa !166
  %63 = load ptr, ptr %34, align 8, !tbaa !155
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %63, align 8, !tbaa !117
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %69, label %68

68:                                               ; preds = %59, %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %69

69:                                               ; preds = %65, %68
  %70 = load ptr, ptr %34, align 8, !tbaa !155
  %71 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 0
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !124
  %75 = or i32 %74, 128
  store i32 %75, ptr %73, align 8, !tbaa !124
  %76 = load ptr, ptr %37, align 8, !tbaa !145
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, ptr %76, align 8, !tbaa !117
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %82, label %81

81:                                               ; preds = %69, %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %82

82:                                               ; preds = %78, %81
  %83 = load ptr, ptr %37, align 8, !tbaa !145
  %84 = getelementptr inbounds %struct.VEC_edge_base, ptr %83, i64 0, i32 2, i64 0
  %85 = load ptr, ptr %84, align 8, !tbaa !71
  %86 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !124
  %88 = or i32 %87, 128
  store i32 %88, ptr %86, align 8, !tbaa !124
  br label %89

89:                                               ; preds = %82, %54
  %90 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %104, label %92, !prof !194

92:                                               ; preds = %89
  %93 = load ptr, ptr %34, align 8, !tbaa !155
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95, !prof !195

95:                                               ; preds = %92
  %96 = load i32, ptr %93, align 8, !tbaa !117
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %99, label %98, !prof !196

98:                                               ; preds = %95, %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %99

99:                                               ; preds = %95, %98
  %100 = load ptr, ptr %34, align 8, !tbaa !155
  %101 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 0
  %102 = load ptr, ptr %101, align 8, !tbaa !71
  %103 = load ptr, ptr %102, align 8, !tbaa !121
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %34, ptr noundef %103) #18
  br label %104

104:                                              ; preds = %99, %89
  %105 = tail call i32 @dom_info_state(i32 noundef 1) #18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %217, label %107, !prof !194

107:                                              ; preds = %104
  %108 = load ptr, ptr %37, align 8, !tbaa !145
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110, !prof !195

110:                                              ; preds = %107
  %111 = load i32, ptr %108, align 8, !tbaa !117
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %114, label %113, !prof !196

113:                                              ; preds = %110, %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %114

114:                                              ; preds = %110, %113
  %115 = load ptr, ptr %37, align 8, !tbaa !145
  %116 = getelementptr inbounds %struct.VEC_edge_base, ptr %115, i64 0, i32 2, i64 0
  %117 = load ptr, ptr %116, align 8, !tbaa !71
  %118 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !119
  %120 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %119) #18
  %121 = load ptr, ptr %34, align 8, !tbaa !155
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123, !prof !195

123:                                              ; preds = %114
  %124 = load i32, ptr %121, align 8, !tbaa !117
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %127, label %126, !prof !196

126:                                              ; preds = %123, %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %127

127:                                              ; preds = %123, %126
  %128 = load ptr, ptr %34, align 8, !tbaa !155
  %129 = getelementptr inbounds %struct.VEC_edge_base, ptr %128, i64 0, i32 2, i64 0
  %130 = load ptr, ptr %129, align 8, !tbaa !71
  %131 = load ptr, ptr %130, align 8, !tbaa !121
  %132 = icmp eq ptr %120, %131
  br i1 %132, label %133, label %217, !prof !197

133:                                              ; preds = %127
  %134 = load ptr, ptr %37, align 8, !tbaa !145
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136, !prof !198

136:                                              ; preds = %133
  %137 = load i32, ptr %134, align 8, !tbaa !117
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %140, label %139, !prof !199

139:                                              ; preds = %136, %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %140

140:                                              ; preds = %136, %139
  %141 = load ptr, ptr %37, align 8, !tbaa !145
  %142 = getelementptr inbounds %struct.VEC_edge_base, ptr %141, i64 0, i32 2, i64 0
  %143 = load ptr, ptr %142, align 8, !tbaa !71
  %144 = getelementptr inbounds %struct.edge_def, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !119
  %146 = icmp eq ptr %145, null
  br label %147

147:                                              ; preds = %200, %140
  %148 = phi i32 [ 0, %140 ], [ %201, %200 ]
  br i1 %146, label %149, label %150, !prof !200

149:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %150

150:                                              ; preds = %149, %147
  %151 = load ptr, ptr %145, align 8, !tbaa !71
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153, !prof !200

153:                                              ; preds = %150
  %154 = load i32, ptr %151, align 8, !tbaa !117
  br label %155

155:                                              ; preds = %153, %150
  %156 = phi i32 [ %154, %153 ], [ 0, %150 ]
  %157 = icmp eq i32 %156, %148
  br i1 %157, label %162, label %158, !prof !200

158:                                              ; preds = %155
  %159 = zext i32 %148 to i64
  %160 = getelementptr inbounds %struct.VEC_edge_base, ptr %151, i64 0, i32 2, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !71
  br label %162

162:                                              ; preds = %155, %158
  %163 = phi ptr [ %161, %158 ], [ null, %155 ]
  br i1 %157, label %202, label %164, !prof !200

164:                                              ; preds = %162
  %165 = load ptr, ptr %37, align 8, !tbaa !145
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167, !prof !200

167:                                              ; preds = %164
  %168 = load i32, ptr %165, align 8, !tbaa !117
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %171, label %170, !prof !201

170:                                              ; preds = %164, %167
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %171

171:                                              ; preds = %167, %170
  %172 = load ptr, ptr %37, align 8, !tbaa !145
  %173 = getelementptr inbounds %struct.VEC_edge_base, ptr %172, i64 0, i32 2, i64 0
  %174 = load ptr, ptr %173, align 8, !tbaa !71
  %175 = icmp eq ptr %163, %174
  br i1 %175, label %191, label %176, !prof !202

176:                                              ; preds = %171
  %177 = load ptr, ptr %163, align 8, !tbaa !121
  %178 = icmp eq ptr %172, null
  br i1 %178, label %182, label %179, !prof !198

179:                                              ; preds = %176
  %180 = load i32, ptr %172, align 8, !tbaa !117
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %183, label %182, !prof !199

182:                                              ; preds = %179, %176
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %183

183:                                              ; preds = %179, %182
  %184 = load ptr, ptr %37, align 8, !tbaa !145
  %185 = getelementptr inbounds %struct.VEC_edge_base, ptr %184, i64 0, i32 2, i64 0
  %186 = load ptr, ptr %185, align 8, !tbaa !71
  %187 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !119
  %189 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %177, ptr noundef %188) #18
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %202, label %191, !prof !199

191:                                              ; preds = %171, %183
  %192 = load ptr, ptr %145, align 8, !tbaa !71
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194, !prof !203

194:                                              ; preds = %191
  %195 = load i32, ptr %192, align 8, !tbaa !117
  br label %196

196:                                              ; preds = %194, %191
  %197 = phi i32 [ %195, %194 ], [ 0, %191 ]
  %198 = icmp ult i32 %148, %197
  br i1 %198, label %200, label %199, !prof !204

199:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %200

200:                                              ; preds = %196, %199
  %201 = add i32 %148, 1
  br label %147, !llvm.loop !205

202:                                              ; preds = %183, %162
  %203 = icmp eq ptr %163, null
  br i1 %203, label %204, label %217, !prof !198

204:                                              ; preds = %202
  %205 = load ptr, ptr %37, align 8, !tbaa !145
  %206 = icmp eq ptr %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr %205, align 8, !tbaa !117
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %211, label %210

210:                                              ; preds = %207, %204
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %211

211:                                              ; preds = %207, %210
  %212 = load ptr, ptr %37, align 8, !tbaa !145
  %213 = getelementptr inbounds %struct.VEC_edge_base, ptr %212, i64 0, i32 2, i64 0
  %214 = load ptr, ptr %213, align 8, !tbaa !71
  %215 = getelementptr inbounds %struct.edge_def, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !119
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %216, ptr noundef nonnull %34) #18
  br label %217

217:                                              ; preds = %202, %211, %127, %104
  %218 = load ptr, ptr @cfun, align 8, !tbaa !71
  %219 = getelementptr inbounds %struct.function, ptr %218, i64 0, i32 4
  %220 = load ptr, ptr %219, align 8, !tbaa !114
  %221 = icmp eq ptr %220, null
  br i1 %221, label %232, label %222, !prof !191

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !113
  %225 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !113
  %227 = tail call ptr @find_common_loop(ptr noundef %224, ptr noundef %226) #18
  tail call void @add_bb_to_loop(ptr noundef %34, ptr noundef %227) #18
  %228 = getelementptr inbounds %struct.loop, ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !162
  %230 = icmp eq ptr %229, %4
  br i1 %230, label %231, label %232, !prof !206

231:                                              ; preds = %222
  store ptr %34, ptr %228, align 8, !tbaa !162
  br label %232

232:                                              ; preds = %222, %231, %217
  ret ptr %34
}

declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 !prof !207 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !209

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.37, ptr noundef %9) #18
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = tail call ptr %13(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !prof !210
  %15 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !211

17:                                               ; preds = %10
  tail call void @add_to_dominance_info(i32 noundef 1, ptr noundef %14) #18
  br label %18

18:                                               ; preds = %17, %10
  %19 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !212

21:                                               ; preds = %18
  tail call void @add_to_dominance_info(i32 noundef 2, ptr noundef %14) #18
  br label %22

22:                                               ; preds = %21, %18
  ret ptr %14
}

declare void @add_to_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @create_empty_bb(ptr noundef %0) local_unnamed_addr #15 !prof !213 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !209

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.37, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !208
  %12 = tail call ptr %11(ptr noundef null, ptr noundef null, ptr noundef %0) #18, !prof !214
  %13 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !211

15:                                               ; preds = %8
  tail call void @add_to_dominance_info(i32 noundef 1, ptr noundef %12) #18
  br label %16

16:                                               ; preds = %15, %8
  %17 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !212

19:                                               ; preds = %16
  tail call void @add_to_dominance_info(i32 noundef 2, ptr noundef %12) #18
  br label %20

20:                                               ; preds = %16, %19
  ret ptr %12
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @can_merge_blocks_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !215 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !217

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.38, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  %13 = tail call zeroext i8 %12(ptr noundef %0, ptr noundef %1) #18, !prof !218
  ret i8 %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 !prof !219 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !221

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.39, ptr noundef %9) #18
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !220
  tail call void %13(ptr noundef %0, i32 noundef %1, i32 noundef %2) #18, !prof !222
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 !prof !223 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !220
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !224

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.40, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !225
  %13 = tail call zeroext i8 %12(ptr noundef %0, i32 noundef %1) #18, !prof !226
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @merge_blocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !227 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !228
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !229

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.41, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !228
  tail call void %12(ptr noundef %0, ptr noundef %1) #18, !prof !230
  %13 = load ptr, ptr @cfun, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !231

17:                                               ; preds = %9
  tail call void @remove_bb_from_loops(ptr noundef %1) #18
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %20

20:                                               ; preds = %36, %18
  %21 = load ptr, ptr %19, align 8, !tbaa !145
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !232

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28, !prof !233

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.VEC_edge_base, ptr %21, i64 0, i32 2, i64 0
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = load ptr, ptr @cfun, align 8, !tbaa !71
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !231

35:                                               ; preds = %28
  tail call void @rescan_loop_exit(ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  br label %36

36:                                               ; preds = %28, %35
  tail call void @remove_edge_raw(ptr noundef %30) #18
  br label %20, !llvm.loop !234

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  br label %39

39:                                               ; preds = %69, %37
  %40 = phi i32 [ 0, %37 ], [ %70, %69 ]
  %41 = load ptr, ptr %38, align 8, !tbaa !71
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !235

43:                                               ; preds = %39
  %44 = load i32, ptr %41, align 8, !tbaa !117
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ 0, %39 ]
  %47 = icmp eq i32 %46, %40
  br i1 %47, label %52, label %48, !prof !236

48:                                               ; preds = %45
  %49 = zext i32 %40 to i64
  %50 = getelementptr inbounds %struct.VEC_edge_base, ptr %41, i64 0, i32 2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  br label %52

52:                                               ; preds = %45, %48
  %53 = phi ptr [ %51, %48 ], [ null, %45 ]
  br i1 %47, label %71, label %54, !prof !236

54:                                               ; preds = %52
  store ptr %0, ptr %53, align 8, !tbaa !121
  %55 = load ptr, ptr @cfun, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !114
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !237

59:                                               ; preds = %54
  tail call void @rescan_loop_exit(ptr noundef nonnull %53, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  br label %60

60:                                               ; preds = %59, %54
  %61 = load ptr, ptr %38, align 8, !tbaa !71
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !238

63:                                               ; preds = %60
  %64 = load i32, ptr %61, align 8, !tbaa !117
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %64, %63 ], [ 0, %60 ]
  %67 = icmp ult i32 %40, %66
  br i1 %67, label %69, label %68, !prof !237

68:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %69

69:                                               ; preds = %65, %68
  %70 = add i32 %40, 1
  br label %39, !llvm.loop !239

71:                                               ; preds = %52
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  store ptr %41, ptr %72, align 8, !tbaa !145
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %74 = load i32, ptr %73, align 8, !tbaa !166
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !166
  %77 = or i32 %76, %74
  store i32 %77, ptr %75, align 8, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %78 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80, !prof !240

80:                                               ; preds = %71
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef nonnull %1, ptr noundef %0) #18
  br label %81

81:                                               ; preds = %80, %71
  %82 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %85, label %84, !prof !240

84:                                               ; preds = %81
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %1) #18
  br label %85

85:                                               ; preds = %84, %81
  %86 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #18
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88, !prof !231

88:                                               ; preds = %85
  tail call void @delete_from_dominance_info(i32 noundef 2, ptr noundef nonnull %1) #18
  br label %89

89:                                               ; preds = %88, %85
  tail call void @expunge_block(ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @make_forwarder_block(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #12 !prof !70 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !241
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.42, ptr noundef %9) #18
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @split_block(ptr noundef %0, ptr noundef null)
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = icmp eq ptr %12, null
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 11
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 8
  %18 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 9
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 3
  %20 = icmp eq ptr %2, null
  br label %21

21:                                               ; preds = %52, %10
  %22 = phi i32 [ %53, %52 ], [ 0, %10 ]
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %80, %21
  br i1 %15, label %25, label %26

25:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %26

26:                                               ; preds = %25, %24
  %27 = load ptr, ptr %12, align 8, !tbaa !71
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 8, !tbaa !117
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  %33 = icmp eq i32 %32, %22
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.VEC_edge_base, ptr %27, i64 0, i32 2, i64 %23
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  br label %37

37:                                               ; preds = %31, %34
  %38 = phi ptr [ %36, %34 ], [ null, %31 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %100, label %40

40:                                               ; preds = %37
  %41 = tail call zeroext i8 %1(ptr noundef nonnull %38) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %12, align 8, !tbaa !71
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %44, align 8, !tbaa !117
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %47, %46 ], [ 0, %43 ]
  %50 = icmp ult i32 %22, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %52

52:                                               ; preds = %48, %51
  %53 = add i32 %22, 1
  br label %21, !llvm.loop !242

54:                                               ; preds = %40
  %55 = load ptr, ptr %38, align 8, !tbaa !121
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 11
  %57 = load i32, ptr %56, align 8, !tbaa !116
  %58 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 8
  %59 = load i32, ptr %58, align 4, !tbaa !122
  %60 = mul nsw i32 %59, %57
  %61 = add nsw i32 %60, 5000
  %62 = sdiv i32 %61, -10000
  %63 = load i32, ptr %16, align 8, !tbaa !116
  %64 = add i32 %62, %63
  store i32 %64, ptr %16, align 8, !tbaa !116
  %65 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 9
  %66 = load i64, ptr %65, align 8, !tbaa !123
  %67 = load i64, ptr %17, align 8, !tbaa !115
  %68 = sub nsw i64 %67, %66
  store i64 %68, ptr %17, align 8, !tbaa !115
  %69 = icmp slt i32 %64, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  store i32 0, ptr %16, align 8, !tbaa !116
  br label %71

71:                                               ; preds = %70, %54
  %72 = icmp slt i64 %68, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  store i64 0, ptr %17, align 8, !tbaa !115
  br label %74

74:                                               ; preds = %73, %71
  %75 = load i64, ptr %18, align 8, !tbaa !123
  %76 = sub nsw i64 %75, %66
  %77 = tail call i64 @llvm.smax.i64(i64 %76, i64 0)
  store i64 %77, ptr %18, align 8, !tbaa !123
  %78 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %38, ptr noundef %14)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %99, %98
  br label %24

81:                                               ; preds = %74
  %82 = load ptr, ptr @cfun, align 8, !tbaa !71
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !114
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %19, align 8, !tbaa !113
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !177
  %92 = icmp eq ptr %91, %12
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !162
  %96 = icmp eq ptr %95, %55
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store ptr %78, ptr %94, align 8, !tbaa !162
  br label %98

98:                                               ; preds = %97, %93, %89, %86, %81
  br i1 %20, label %80, label %99

99:                                               ; preds = %98
  tail call void %2(ptr noundef nonnull %78) #18
  br label %80

100:                                              ; preds = %37
  %101 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #18
  %105 = load i32, ptr %104, align 8, !tbaa !243
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 8, !tbaa !243
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %104, i64 0, i32 2, i64 %107
  store ptr %12, ptr %108, align 8, !tbaa !71
  %109 = add i32 %105, 2
  store i32 %109, ptr %104, align 8, !tbaa !243
  %110 = zext i32 %106 to i64
  %111 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %104, i64 0, i32 2, i64 %110
  store ptr %14, ptr %111, align 8, !tbaa !71
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef nonnull %104, i8 noundef zeroext 0) #18
  tail call void @free(ptr noundef %104)
  br label %112

112:                                              ; preds = %103, %100
  %113 = load ptr, ptr @cfun, align 8, !tbaa !71
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !114
  %116 = icmp eq ptr %115, null
  br i1 %116, label %188, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !113
  %120 = getelementptr inbounds %struct.loop, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !177
  %122 = icmp eq ptr %121, %12
  br i1 %122, label %123, label %163

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.loop, ptr %119, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !162
  %126 = icmp eq ptr %125, null
  br i1 %126, label %163, label %127

127:                                              ; preds = %123
  %128 = tail call ptr @find_edge(ptr noundef nonnull %125, ptr noundef nonnull %12) #18
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %163

130:                                              ; preds = %127
  tail call void @remove_bb_from_loops(ptr noundef nonnull %12) #18
  store ptr %14, ptr %120, align 8, !tbaa !177
  br label %131

131:                                              ; preds = %160, %130
  %132 = phi i32 [ 0, %130 ], [ %161, %160 ]
  %133 = phi ptr [ %119, %130 ], [ %151, %160 ]
  %134 = load ptr, ptr %12, align 8, !tbaa !71
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %134, align 8, !tbaa !117
  br label %138

138:                                              ; preds = %136, %131
  %139 = phi i32 [ %137, %136 ], [ 0, %131 ]
  %140 = icmp eq i32 %139, %132
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = zext i32 %132 to i64
  %143 = getelementptr inbounds %struct.VEC_edge_base, ptr %134, i64 0, i32 2, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !71
  br label %145

145:                                              ; preds = %138, %141
  %146 = phi ptr [ %144, %141 ], [ null, %138 ]
  br i1 %140, label %162, label %147

147:                                              ; preds = %145
  %148 = load ptr, ptr %146, align 8, !tbaa !121
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !113
  %151 = tail call ptr @find_common_loop(ptr noundef %133, ptr noundef %150) #18
  %152 = load ptr, ptr %12, align 8, !tbaa !71
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %147
  %155 = load i32, ptr %152, align 8, !tbaa !117
  br label %156

156:                                              ; preds = %154, %147
  %157 = phi i32 [ %155, %154 ], [ 0, %147 ]
  %158 = icmp ult i32 %132, %157
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %160

160:                                              ; preds = %156, %159
  %161 = add i32 %132, 1
  br label %131, !llvm.loop !245

162:                                              ; preds = %145
  tail call void @add_bb_to_loop(ptr noundef nonnull %12, ptr noundef %133) #18
  br label %163

163:                                              ; preds = %162, %127, %123, %117
  %164 = icmp eq ptr %119, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %163, %185
  %166 = phi ptr [ %186, %185 ], [ %119, %163 ]
  %167 = getelementptr inbounds %struct.loop, ptr %166, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !162
  %169 = icmp eq ptr %168, %12
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store ptr %14, ptr %167, align 8, !tbaa !162
  br label %171

171:                                              ; preds = %165, %170
  %172 = getelementptr inbounds %struct.loop, ptr %166, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !246
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %173, align 8, !tbaa !247
  br label %177

177:                                              ; preds = %175, %171
  %178 = phi i32 [ %176, %175 ], [ 0, %171 ]
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = add i32 %178, -1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %173, i64 0, i32 2, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !71
  br label %185

185:                                              ; preds = %177, %180
  %186 = phi ptr [ %184, %180 ], [ null, %177 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %165, !llvm.loop !249

188:                                              ; preds = %185, %163, %112
  %189 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %190 = getelementptr inbounds %struct.cfg_hooks, ptr %189, i64 0, i32 17
  %191 = load ptr, ptr %190, align 8, !tbaa !241
  tail call void %191(ptr noundef nonnull %11) #18
  ret ptr %11
}

declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @tidy_fallthru_edge(ptr noundef %0) local_unnamed_addr #12 !prof !70 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !250
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #18
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tidy_fallthru_edges() local_unnamed_addr #11 !prof !251 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.cfg_hooks, ptr %1, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = icmp eq ptr %3, null
  br i1 %4, label %78, label %5, !prof !252

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %78, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr @cfun, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = icmp eq ptr %11, %22
  br i1 %23, label %78, label %24

24:                                               ; preds = %15, %68
  %25 = phi ptr [ %69, %68 ], [ %11, %15 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !145
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i32, ptr %29, align 8, !tbaa !117
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %24, %31
  %36 = phi i8 [ %34, %31 ], [ 0, %24 ]
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %35
  br i1 %30, label %42, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %29, align 8, !tbaa !117
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %43

43:                                               ; preds = %39, %42
  %44 = load ptr, ptr %28, align 8, !tbaa !145
  %45 = getelementptr inbounds %struct.VEC_edge_base, ptr %44, i64 0, i32 2, i64 0
  %46 = load ptr, ptr %45, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !124
  %49 = and i32 %48, 14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !119
  %54 = icmp eq ptr %53, %27
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !82
  %58 = getelementptr inbounds %struct.rtl_bb_info, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !253
  %60 = tail call ptr @find_reg_note(ptr noundef %59, i32 noundef 29, ptr noundef null) #18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %64 = getelementptr inbounds %struct.cfg_hooks, ptr %63, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !250
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void %65(ptr noundef %46) #18
  br label %68

68:                                               ; preds = %67, %62, %43, %51, %55, %35
  %69 = load ptr, ptr %26, align 8, !tbaa !105
  %70 = load ptr, ptr @cfun, align 8, !tbaa !71
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !100
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !107
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !110
  %77 = icmp eq ptr %69, %76
  br i1 %77, label %78, label %24, !llvm.loop !255

78:                                               ; preds = %68, %15, %5, %0
  ret void
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_duplicate_block_p(ptr noundef %0) local_unnamed_addr #11 !prof !256 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !257
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !258

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.43, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfun, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %23, label %15, !prof !258

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 8, !tbaa !104
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %23, label %18, !prof !258

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.cfg_hooks, ptr %19, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !257
  %22 = tail call zeroext i8 %21(ptr noundef %0) #18, !prof !259
  br label %23

23:                                               ; preds = %8, %15, %18
  %24 = phi i8 [ %22, %18 ], [ 0, %15 ], [ 0, %8 ]
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define dso_local ptr @duplicate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !260 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5, !prof !261

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %7 = load i64, ptr %6, align 8, !tbaa !123
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi i64 [ %7, %5 ], [ 0, %3 ]
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !262
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !263

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.44, ptr noundef %15) #18
  br label %16

16:                                               ; preds = %14, %8
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !115
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 %9)
  %20 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.cfg_hooks, ptr %20, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !262
  %23 = tail call ptr %22(ptr noundef %0) #18, !prof !264
  %24 = icmp eq ptr %2, null
  br i1 %24, label %37, label %25, !prof !261

25:                                               ; preds = %16
  %26 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.cfg_hooks, ptr %26, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !168
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32, !prof !265

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.34, ptr noundef %31) #18
  br label %32

32:                                               ; preds = %25, %30
  %33 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.cfg_hooks, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !168
  %36 = tail call zeroext i8 %35(ptr noundef %23, ptr noundef nonnull %2) #18, !prof !266
  br label %37

37:                                               ; preds = %32, %16
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %39 = load i32, ptr %38, align 4, !tbaa !134
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 10
  store i32 %39, ptr %40, align 4, !tbaa !134
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !166
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 13
  store i32 %42, ptr %43, align 8, !tbaa !166
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %45

45:                                               ; preds = %98, %37
  %46 = phi i32 [ 0, %37 ], [ %99, %98 ]
  %47 = load ptr, ptr %44, align 8, !tbaa !71
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !267

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 8, !tbaa !117
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ 0, %45 ]
  %53 = icmp eq i32 %52, %46
  br i1 %53, label %58, label %54, !prof !268

54:                                               ; preds = %51
  %55 = zext i32 %46 to i64
  %56 = getelementptr inbounds %struct.VEC_edge_base, ptr %47, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi ptr [ %57, %54 ], [ null, %51 ]
  br i1 %53, label %100, label %60, !prof !268

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !119
  %63 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !124
  %65 = tail call ptr @unchecked_make_edge(ptr noundef %23, ptr noundef %62, i32 noundef %64) #18
  %66 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 8
  %67 = load i32, ptr %66, align 4, !tbaa !122
  %68 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 8
  store i32 %67, ptr %68, align 4, !tbaa !122
  br i1 %4, label %82, label %69, !prof !269

69:                                               ; preds = %60
  %70 = load i64, ptr %17, align 8, !tbaa !115
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %82, label %72, !prof !270

72:                                               ; preds = %69
  %73 = mul nsw i64 %19, 10000
  %74 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 9
  %75 = load i64, ptr %74, align 8, !tbaa !123
  %76 = sdiv i64 %73, %70
  %77 = mul nsw i64 %76, %75
  %78 = sdiv i64 %77, 10000
  %79 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 9
  store i64 %78, ptr %79, align 8, !tbaa !123
  %80 = load i64, ptr %74, align 8, !tbaa !123
  %81 = sub nsw i64 %80, %78
  store i64 %81, ptr %74, align 8, !tbaa !123
  br label %86

82:                                               ; preds = %69, %60
  %83 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 9
  %84 = load i64, ptr %83, align 8, !tbaa !123
  %85 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 9
  store i64 %84, ptr %85, align 8, !tbaa !123
  br label %86

86:                                               ; preds = %82, %72
  %87 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !271
  %89 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 3
  store ptr %88, ptr %89, align 8, !tbaa !271
  %90 = load ptr, ptr %44, align 8, !tbaa !71
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !272

92:                                               ; preds = %86
  %93 = load i32, ptr %90, align 8, !tbaa !117
  br label %94

94:                                               ; preds = %92, %86
  %95 = phi i32 [ %93, %92 ], [ 0, %86 ]
  %96 = icmp ult i32 %46, %95
  br i1 %96, label %98, label %97, !prof !273

97:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %98

98:                                               ; preds = %94, %97
  %99 = add i32 %46, 1
  br label %45, !llvm.loop !274

100:                                              ; preds = %58
  br i1 %4, label %129, label %101, !prof !261

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 8
  store i64 %19, ptr %102, align 8, !tbaa !115
  %103 = load i64, ptr %17, align 8, !tbaa !115
  %104 = sub nsw i64 %103, %19
  store i64 %104, ptr %17, align 8, !tbaa !115
  %105 = load ptr, ptr %1, align 8, !tbaa !121
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 11
  %107 = load i32, ptr %106, align 8, !tbaa !116
  %108 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %109 = load i32, ptr %108, align 4, !tbaa !122
  %110 = mul nsw i32 %109, %107
  %111 = add nsw i32 %110, 5000
  %112 = sdiv i32 %111, 10000
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  store i32 %112, ptr %113, align 8, !tbaa !116
  %114 = load i32, ptr %106, align 8, !tbaa !116
  %115 = mul nsw i32 %114, %109
  %116 = add nsw i32 %115, 5000
  %117 = sdiv i32 %116, -10000
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %119 = load i32, ptr %118, align 8, !tbaa !116
  %120 = add i32 %117, %119
  store i32 %120, ptr %118, align 8, !tbaa !116
  %121 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %23)
  %122 = load i64, ptr %17, align 8, !tbaa !115
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125, !prof !265

124:                                              ; preds = %101
  store i64 0, ptr %17, align 8, !tbaa !115
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, ptr %118, align 8, !tbaa !116
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %135, !prof !275

128:                                              ; preds = %125
  store i32 0, ptr %118, align 8, !tbaa !116
  br label %135

129:                                              ; preds = %100
  %130 = load i64, ptr %17, align 8, !tbaa !115
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 8
  store i64 %130, ptr %131, align 8, !tbaa !115
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %133 = load i32, ptr %132, align 8, !tbaa !116
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  store i32 %133, ptr %134, align 8, !tbaa !116
  br label %135

135:                                              ; preds = %125, %128, %129
  tail call void @set_bb_original(ptr noundef %23, ptr noundef %0) #18
  tail call void @set_bb_copy(ptr noundef %0, ptr noundef %23) #18
  %136 = load ptr, ptr @cfun, align 8, !tbaa !71
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !114
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140, !prof !276

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !113
  %143 = tail call ptr @get_loop_copy(ptr noundef %142) #18
  %144 = icmp eq ptr %143, null
  %145 = select i1 %144, ptr %142, ptr %143, !prof !277
  tail call void @add_bb_to_loop(ptr noundef %23, ptr noundef %145) #18
  br label %146

146:                                              ; preds = %140, %135
  ret ptr %23
}

declare ptr @unchecked_make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_bb_original(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_bb_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @block_ends_with_call_p(ptr noundef %0) local_unnamed_addr #15 !prof !278 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !280

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.45, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !279
  %12 = tail call zeroext i8 %11(ptr noundef %0) #18, !prof !281
  ret i8 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @block_ends_with_condjump_p(ptr noundef %0) local_unnamed_addr #12 !prof !70 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !282
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.46, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !282
  %12 = tail call zeroext i8 %11(ptr noundef %0) #18
  ret i8 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @flow_call_edges_add(ptr noundef %0) local_unnamed_addr #12 !prof !70 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !283
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.47, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !283
  %12 = tail call i32 %11(ptr noundef %0) #18
  ret i32 %12
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @execute_on_growing_pred(ptr noundef %0) local_unnamed_addr #15 !prof !284 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !286

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #18, !prof !287
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @execute_on_shrinking_pred(ptr noundef %0) local_unnamed_addr #15 !prof !288 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !290

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #18, !prof !291
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lv_flush_pending_stmts(ptr noundef %0) local_unnamed_addr #12 !prof !70 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !292
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #18
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #12 !prof !70 {
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !293
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @.str.1) #18
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.cfg_hooks, ptr %14, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !293
  %17 = tail call zeroext i8 %16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #18
  ret i8 %17
}

; Function Attrs: cold nounwind uwtable
define dso_local void @extract_cond_bb_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !70 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1076, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  tail call void %12(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lv_adjust_loop_header_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !70 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lv_add_condition_to_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !70 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !296
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1097, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr @cfg_hooks, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !296
  tail call void %13(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  ret void
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!69}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!35 = !{ptr @redirect_edge_and_branch, ptr @rescan_loop_exit, i64 253398}
!36 = !{ptr @remove_edge, ptr @rescan_loop_exit, i64 258648}
!37 = !{ptr @remove_edge, ptr @remove_edge_raw, i64 370927}
!38 = !{ptr @redirect_edge_and_branch_force, ptr @dom_info_available_p, i64 1}
!39 = !{ptr @split_block, ptr @dom_info_available_p, i64 19147}
!40 = !{ptr @split_block, ptr @make_single_succ_edge, i64 19147}
!41 = !{ptr @delete_basic_block, ptr @remove_bb_from_loops, i64 186534}
!42 = !{ptr @delete_basic_block, ptr @remove_edge_raw, i64 120638}
!43 = !{ptr @delete_basic_block, ptr @dom_info_available_p, i64 774500}
!44 = !{ptr @delete_basic_block, ptr @delete_from_dominance_info, i64 331287}
!45 = !{ptr @delete_basic_block, ptr @expunge_block, i64 387250}
!46 = !{ptr @split_edge, ptr @rescan_loop_exit, i64 11117}
!47 = !{ptr @split_edge, ptr @dom_info_available_p, i64 257911}
!48 = !{ptr @split_edge, ptr @set_immediate_dominator, i64 11128}
!49 = !{ptr @split_edge, ptr @dom_info_state, i64 257911}
!50 = !{ptr @split_edge, ptr @get_immediate_dominator, i64 11128}
!51 = !{ptr @split_edge, ptr @dominated_by_p, i64 6234}
!52 = !{ptr @split_edge, ptr @find_common_loop, i64 11117}
!53 = !{ptr @split_edge, ptr @add_bb_to_loop, i64 11117}
!54 = !{ptr @create_basic_block, ptr @dom_info_available_p, i64 680766}
!55 = !{ptr @create_basic_block, ptr @add_to_dominance_info, i64 7714}
!56 = !{ptr @create_empty_bb, ptr @dom_info_available_p, i64 470902}
!57 = !{ptr @create_empty_bb, ptr @add_to_dominance_info, i64 5335}
!58 = !{ptr @merge_blocks, ptr @remove_edge_raw, i64 1549}
!59 = !{ptr @merge_blocks, ptr @dom_info_available_p, i64 4647}
!60 = !{ptr @merge_blocks, ptr @redirect_immediate_dominators, i64 1420}
!61 = !{ptr @merge_blocks, ptr @delete_from_dominance_info, i64 1420}
!62 = !{ptr @merge_blocks, ptr @expunge_block, i64 1549}
!63 = !{ptr @duplicate_block, ptr @unchecked_make_edge, i64 70958}
!64 = !{ptr @duplicate_block, ptr @redirect_edge_and_branch_force, i64 258}
!65 = !{ptr @duplicate_block, ptr @set_bb_original, i64 39719}
!66 = !{ptr @duplicate_block, ptr @set_bb_copy, i64 39719}
!67 = !{ptr @duplicate_block, ptr @get_loop_copy, i64 39461}
!68 = !{ptr @duplicate_block, ptr @add_bb_to_loop, i64 39461}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = !{!"function_entry_count", i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"any pointer", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !{!76, !72, i64 8}
!76 = !{!"_IO_FILE", !77, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !77, i64 112, !77, i64 116, !78, i64 120, !79, i64 128, !73, i64 130, !73, i64 131, !72, i64 136, !78, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176, !78, i64 184, !77, i64 192, !73, i64 196}
!77 = !{!"int", !73, i64 0}
!78 = !{!"long", !73, i64 0}
!79 = !{!"short", !73, i64 0}
!80 = !{!76, !72, i64 16}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{!73, !73, i64 0}
!83 = !{!76, !72, i64 40}
!84 = !{!76, !72, i64 48}
!85 = !{!76, !77, i64 0}
!86 = !{!77, !77, i64 0}
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!"function_entry_count", i64 152}
!91 = !{!"function_entry_count", i64 114}
!92 = !{!"function_entry_count", i64 208}
!93 = !{!"function_entry_count", i64 138099}
!94 = !{i64 0, i64 8, !71, i64 8, i64 8, !71, i64 16, i64 8, !71, i64 24, i64 8, !71, i64 32, i64 8, !71, i64 40, i64 8, !71, i64 48, i64 8, !71, i64 56, i64 8, !71, i64 64, i64 8, !71, i64 72, i64 8, !71, i64 80, i64 8, !71, i64 88, i64 8, !71, i64 96, i64 8, !71, i64 104, i64 8, !71, i64 112, i64 8, !71, i64 120, i64 8, !71, i64 128, i64 8, !71, i64 136, i64 8, !71, i64 144, i64 8, !71, i64 152, i64 8, !71, i64 160, i64 8, !71, i64 168, i64 8, !71, i64 176, i64 8, !71, i64 184, i64 8, !71, i64 192, i64 8, !71, i64 200, i64 8, !71, i64 208, i64 8, !71, i64 216, i64 8, !71, i64 224, i64 8, !71}
!95 = !{!"function_entry_count", i64 276198}
!96 = !{!"function_entry_count", i64 65728}
!97 = !{!"branch_weights", i32 0, i32 65728}
!98 = !{!"branch_weights", i32 65184, i32 544}
!99 = !{!"branch_weights", i32 544, i32 0}
!100 = !{!101, !72, i64 8}
!101 = !{!"function", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !77, i64 104, !77, i64 108, !77, i64 112, !77, i64 116, !77, i64 120, !77, i64 124, !72, i64 128, !77, i64 136, !77, i64 137, !77, i64 138, !77, i64 138, !77, i64 138, !77, i64 138, !77, i64 138, !77, i64 138, !77, i64 138, !77, i64 139, !77, i64 139, !77, i64 139, !77, i64 139, !77, i64 139, !77, i64 139, !77, i64 139}
!102 = !{!103, !77, i64 32}
!103 = !{!"control_flow_graph", !72, i64 0, !72, i64 8, !72, i64 16, !77, i64 24, !77, i64 28, !77, i64 32, !72, i64 40, !77, i64 48, !73, i64 52, !73, i64 60, !77, i64 68, !77, i64 72}
!104 = !{!103, !72, i64 0}
!105 = !{!106, !72, i64 56}
!106 = !{!"basic_block_def", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !73, i64 32, !72, i64 48, !72, i64 56, !73, i64 64, !78, i64 72, !77, i64 80, !77, i64 84, !77, i64 88, !77, i64 92, !77, i64 96}
!107 = !{!103, !72, i64 8}
!108 = !{!103, !72, i64 16}
!109 = !{!106, !77, i64 80}
!110 = !{!106, !72, i64 48}
!111 = distinct !{!111, !88, !89}
!112 = distinct !{!112, !88, !89}
!113 = !{!106, !72, i64 24}
!114 = !{!101, !72, i64 32}
!115 = !{!106, !78, i64 72}
!116 = !{!106, !77, i64 88}
!117 = !{!118, !77, i64 0}
!118 = !{!"VEC_edge_base", !77, i64 0, !77, i64 4, !73, i64 8}
!119 = !{!120, !72, i64 8}
!120 = !{!"edge_def", !72, i64 0, !72, i64 8, !73, i64 16, !72, i64 24, !72, i64 32, !77, i64 40, !77, i64 44, !77, i64 48, !77, i64 52, !78, i64 56}
!121 = !{!120, !72, i64 0}
!122 = !{!120, !77, i64 52}
!123 = !{!120, !78, i64 56}
!124 = !{!120, !77, i64 48}
!125 = !{!78, !78, i64 0}
!126 = distinct !{!126, !88, !89}
!127 = !{!120, !77, i64 44}
!128 = distinct !{!128, !88, !89}
!129 = distinct !{!129, !88, !89}
!130 = distinct !{!130, !88, !89}
!131 = distinct !{!131, !88, !89}
!132 = !{!133, !72, i64 8}
!133 = !{!"cfg_hooks", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176, !72, i64 184, !72, i64 192, !72, i64 200, !72, i64 208, !72, i64 216, !72, i64 224}
!134 = !{!106, !77, i64 84}
!135 = distinct !{!135, !88, !89}
!136 = distinct !{!136, !88, !89}
!137 = !{!133, !72, i64 16}
!138 = !{!"function_entry_count", i64 703066}
!139 = !{!133, !72, i64 32}
!140 = !{!"branch_weights", i32 0, i32 703066}
!141 = !{!133, !72, i64 0}
!142 = !{!"VP", i32 0, i64 703066, i64 -2424684802366159300, i64 559633, i64 3431871366430693470, i64 75794, i64 -8303683982015450455, i64 67639}
!143 = !{!"branch_weights", i32 253398, i32 449668}
!144 = !{!133, !72, i64 48}
!145 = !{!106, !72, i64 8}
!146 = !{!"function_entry_count", i64 370927}
!147 = !{!"branch_weights", i32 112279, i32 258648}
!148 = !{!"function_entry_count", i64 2453}
!149 = !{!133, !72, i64 40}
!150 = !{!"branch_weights", i32 0, i32 2453}
!151 = !{!"branch_weights", i32 2453, i32 0}
!152 = !{!"VP", i32 0, i64 2453, i64 8534388434329077161, i64 2117, i64 -8670189890485373150, i64 336}
!153 = !{!"branch_weights", i32 2452, i32 1}
!154 = !{!"branch_weights", i32 1, i32 0}
!155 = !{!106, !72, i64 0}
!156 = !{!"function_entry_count", i64 19147}
!157 = !{!133, !72, i64 64}
!158 = !{!"branch_weights", i32 0, i32 19147}
!159 = !{!"VP", i32 0, i64 19147, i64 3392499223973974893, i64 19099, i64 -1851048930130004019, i64 48}
!160 = !{!106, !77, i64 92}
!161 = !{!"branch_weights", i32 19147, i32 0}
!162 = !{!163, !72, i64 16}
!163 = !{!"loop", !77, i64 0, !77, i64 4, !72, i64 8, !72, i64 16, !164, i64 24, !77, i64 32, !77, i64 36, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !165, i64 80, !165, i64 96, !73, i64 112, !73, i64 113, !77, i64 116, !72, i64 120, !72, i64 128, !73, i64 136, !72, i64 144}
!164 = !{!"lpt_decision", !77, i64 0, !77, i64 4}
!165 = !{!"", !78, i64 0, !78, i64 8}
!166 = !{!106, !77, i64 96}
!167 = !{!"function_entry_count", i64 1420}
!168 = !{!133, !72, i64 72}
!169 = !{!"branch_weights", i32 0, i32 1420}
!170 = !{!"VP", i32 0, i64 1420, i64 7293977168896464761, i64 1420}
!171 = !{!"function_entry_count", i64 387250}
!172 = !{!133, !72, i64 56}
!173 = !{!"branch_weights", i32 0, i32 387250}
!174 = !{!"VP", i32 0, i64 387250, i64 2332157499855516076, i64 267984, i64 -7833411918001327628, i64 118729, i64 -2161487380447797711, i64 537}
!175 = !{!"branch_weights", i32 200716, i32 186534}
!176 = !{!"branch_weights", i32 0, i32 186534}
!177 = !{!163, !72, i64 8}
!178 = !{!"branch_weights", i32 23, i32 390383}
!179 = !{!"branch_weights", i32 387250, i32 3156}
!180 = !{!"branch_weights", i32 3156, i32 0}
!181 = distinct !{!181, !88, !89}
!182 = !{!"branch_weights", i32 0, i32 504732}
!183 = !{!"branch_weights", i32 387250, i32 117482}
!184 = !{!"branch_weights", i32 117482, i32 0}
!185 = distinct !{!185, !88, !89}
!186 = !{!"branch_weights", i32 119284, i32 267966}
!187 = !{!"branch_weights", i32 323929, i32 63321}
!188 = !{!"function_entry_count", i64 257911}
!189 = !{!133, !72, i64 128}
!190 = !{!"branch_weights", i32 0, i32 257911}
!191 = !{!"branch_weights", i32 246794, i32 11117}
!192 = !{!"VP", i32 0, i64 257911, i64 -5091997055876015010, i64 195942, i64 -4206391984187057342, i64 61965, i64 -1158368797485938886, i64 4}
!193 = !{!"branch_weights", i32 257911, i32 0}
!194 = !{!"branch_weights", i32 246783, i32 11128}
!195 = !{!"branch_weights", i32 0, i32 11128}
!196 = !{!"branch_weights", i32 11128, i32 0}
!197 = !{!"branch_weights", i32 6234, i32 4894}
!198 = !{!"branch_weights", i32 0, i32 6234}
!199 = !{!"branch_weights", i32 6234, i32 0}
!200 = !{!"branch_weights", i32 0, i32 12293}
!201 = !{!"branch_weights", i32 12293, i32 0}
!202 = !{!"branch_weights", i32 6059, i32 6234}
!203 = !{!"branch_weights", i32 0, i32 6059}
!204 = !{!"branch_weights", i32 6059, i32 0}
!205 = distinct !{!205, !88, !89}
!206 = !{!"branch_weights", i32 0, i32 11117}
!207 = !{!"function_entry_count", i64 340383}
!208 = !{!133, !72, i64 24}
!209 = !{!"branch_weights", i32 0, i32 575834}
!210 = !{!"VP", i32 0, i64 340383, i64 -399636362135239794, i64 250322, i64 -1290459714401341694, i64 89905, i64 3991771356374868032, i64 154}
!211 = !{!"branch_weights", i32 562786, i32 13048}
!212 = !{!"branch_weights", i32 575833, i32 1}
!213 = !{!"function_entry_count", i64 235451}
!214 = !{!"VP", i32 0, i64 235451, i64 -399636362135239794, i64 173153, i64 -1290459714401341694, i64 62190, i64 3991771356374868032, i64 107}
!215 = !{!"function_entry_count", i64 403779}
!216 = !{!133, !72, i64 80}
!217 = !{!"branch_weights", i32 0, i32 403779}
!218 = !{!"VP", i32 0, i64 403779, i64 6826113102962683993, i64 401812, i64 -5357669644464235614, i64 1962, i64 -9114358937403299774, i64 5}
!219 = !{!"function_entry_count", i64 266091}
!220 = !{!133, !72, i64 96}
!221 = !{!"branch_weights", i32 0, i32 266091}
!222 = !{!"VP", i32 0, i64 266091, i64 -942301171713899263, i64 266091}
!223 = !{!"function_entry_count", i64 175965}
!224 = !{!"branch_weights", i32 0, i32 175965}
!225 = !{!133, !72, i64 104}
!226 = !{!"VP", i32 0, i64 175965, i64 -2039473098452778483, i64 175965}
!227 = !{!"function_entry_count", i64 1549}
!228 = !{!133, !72, i64 88}
!229 = !{!"branch_weights", i32 0, i32 1549}
!230 = !{!"VP", i32 0, i64 1549, i64 5785690980147490986, i64 1420, i64 7946773829794984251, i64 118, i64 38557358559019721, i64 11}
!231 = !{!"branch_weights", i32 1549, i32 0}
!232 = !{!"branch_weights", i32 0, i32 3098}
!233 = !{!"branch_weights", i32 1549, i32 1549}
!234 = distinct !{!234, !88, !89}
!235 = !{!"branch_weights", i32 0, i32 6504}
!236 = !{!"branch_weights", i32 1549, i32 4955}
!237 = !{!"branch_weights", i32 4955, i32 0}
!238 = !{!"branch_weights", i32 0, i32 4955}
!239 = distinct !{!239, !88, !89}
!240 = !{!"branch_weights", i32 129, i32 1420}
!241 = !{!133, !72, i64 136}
!242 = distinct !{!242, !88, !89}
!243 = !{!244, !77, i64 0}
!244 = !{!"VEC_basic_block_base", !77, i64 0, !77, i64 4, !73, i64 8}
!245 = distinct !{!245, !88, !89}
!246 = !{!163, !72, i64 40}
!247 = !{!248, !77, i64 0}
!248 = !{!"VEC_loop_p_base", !77, i64 0, !77, i64 4, !73, i64 8}
!249 = distinct !{!249, !88, !89}
!250 = !{!133, !72, i64 144}
!251 = !{!"function_entry_count", i64 39}
!252 = !{!"branch_weights", i32 39, i32 0}
!253 = !{!254, !72, i64 8}
!254 = !{!"rtl_bb_info", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !77, i64 32}
!255 = distinct !{!255, !88, !89}
!256 = !{!"function_entry_count", i64 68417}
!257 = !{!133, !72, i64 112}
!258 = !{!"branch_weights", i32 0, i32 68417}
!259 = !{!"VP", i32 0, i64 68417, i64 -8644830653582282433, i64 68417}
!260 = !{!"function_entry_count", i64 39719}
!261 = !{!"branch_weights", i32 39461, i32 258}
!262 = !{!133, !72, i64 120}
!263 = !{!"branch_weights", i32 0, i32 39719}
!264 = !{!"VP", i32 0, i64 39719, i64 2570261741861000380, i64 39461, i64 6835805933355383278, i64 258}
!265 = !{!"branch_weights", i32 0, i32 258}
!266 = !{!"VP", i32 0, i64 258, i64 -363004419846230271, i64 258}
!267 = !{!"branch_weights", i32 0, i32 110677}
!268 = !{!"branch_weights", i32 39719, i32 70958}
!269 = !{!"branch_weights", i32 70700, i32 258}
!270 = !{!"branch_weights", i32 258, i32 0}
!271 = !{!120, !72, i64 24}
!272 = !{!"branch_weights", i32 0, i32 70958}
!273 = !{!"branch_weights", i32 70958, i32 0}
!274 = distinct !{!274, !88, !89}
!275 = !{!"branch_weights", i32 2, i32 256}
!276 = !{!"branch_weights", i32 258, i32 39461}
!277 = !{!"branch_weights", i32 39461, i32 0}
!278 = !{!"function_entry_count", i64 153339}
!279 = !{!133, !72, i64 152}
!280 = !{!"branch_weights", i32 0, i32 153339}
!281 = !{!"VP", i32 0, i64 153339, i64 -576416409682759532, i64 153339}
!282 = !{!133, !72, i64 160}
!283 = !{!133, !72, i64 168}
!284 = !{!"function_entry_count", i64 1729933}
!285 = !{!133, !72, i64 176}
!286 = !{!"branch_weights", i32 529680, i32 1200253}
!287 = !{!"VP", i32 0, i64 1200253, i64 -2191671260264989967, i64 1200253}
!288 = !{!"function_entry_count", i64 1392081}
!289 = !{!133, !72, i64 184}
!290 = !{!"branch_weights", i32 488955, i32 903126}
!291 = !{!"VP", i32 0, i64 903126, i64 -2619181497495553328, i64 903126}
!292 = !{!133, !72, i64 224}
!293 = !{!133, !72, i64 192}
!294 = !{!133, !72, i64 216}
!295 = !{!133, !72, i64 208}
!296 = !{!133, !72, i64 200}
