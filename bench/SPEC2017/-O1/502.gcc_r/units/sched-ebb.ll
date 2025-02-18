; ModuleID = 'sched-ebb.c'
source_filename = "sched-ebb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct._dep_link = type { ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@ebb_common_sched_info = internal global %struct.common_sched_info_def zeroinitializer, align 8
@haifa_common_sched_info = external local_unnamed_addr constant %struct.common_sched_info_def, align 8
@common_sched_info = external local_unnamed_addr global ptr, align 8
@ebb_sched_deps_info = internal global %struct.sched_deps_info_def { ptr @ebb_compute_jump_reg_dependencies, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, align 8
@sched_deps_info = external local_unnamed_addr global ptr, align 8
@ebb_sched_info = internal global %struct.haifa_sched_info { ptr @init_ready_list, ptr null, ptr @schedule_more_p, ptr null, ptr @rank, ptr @ebb_print_insn, ptr @ebb_contributes_to_priority, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @ebb_add_remove_insn, ptr @begin_schedule_ready, ptr @advance_target_bb, i32 24 }, align 8
@current_sched_info = external local_unnamed_addr global ptr, align 8
@dont_calc_deps = internal global %struct.bitmap_head_def zeroinitializer, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sched_rgn_n_insns = internal unnamed_addr global i32 0, align 4
@sched_verbose = external local_unnamed_addr global i32, align 4
@rgn_n_insns = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sched-ebb.c\00", align 1
@sched_dump = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c";;   --------------- forward dependences: ------------ \0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\0A;;   --- EBB Dependences --- from bb%d to bb%d \0A\00", align 1
@ebb_print_insn.tmp = internal global [80 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"+ %4d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"  %4d\00", align 1
@last_bb = internal unnamed_addr global ptr null, align 8
@sched_init_only_bb = external local_unnamed_addr global ptr, align 8
@h_i_d = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@haifa_recovery_bb_ever_added_p = external local_unnamed_addr global i8, align 1
@flag_schedule_speculative_load = external local_unnamed_addr global i32, align 4
@spec_info = external local_unnamed_addr global ptr, align 8
@sd_iterator_start.null_link = internal global ptr null, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @ebb_compute_jump_reg_dependencies(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  br label %8

8:                                                ; preds = %43, %4
  %9 = phi i32 [ 0, %4 ], [ %44, %43 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !54
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = icmp eq i32 %15, %9
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = zext i32 %9 to i64
  %19 = getelementptr inbounds %struct.VEC_edge_base, ptr %10, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi ptr [ %20, %17 ], [ null, %14 ]
  br i1 %16, label %45, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !56
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = tail call ptr @df_get_live_in(ptr noundef %29) #18
  br i1 %27, label %32, label %31

31:                                               ; preds = %23
  tail call void @bitmap_and(ptr noundef %3, ptr noundef %30, ptr noundef %1) #18
  br label %34

32:                                               ; preds = %23
  %33 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %30) #18
  br label %34

34:                                               ; preds = %32, %31
  %35 = load ptr, ptr %7, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 8, !tbaa !54
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %38, %37 ], [ 0, %34 ]
  %41 = icmp ult i32 %9, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %43

43:                                               ; preds = %39, %42
  %44 = add i32 %9, 1
  br label %8, !llvm.loop !59

45:                                               ; preds = %21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @schedule_ebbs() local_unnamed_addr #9 !prof !34 {
  %1 = alloca %struct._sd_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._dep, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.deps, align 8
  %8 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %9 = icmp ne ptr %8, null
  %10 = load i32, ptr @flag_branch_probabilities, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  %13 = load ptr, ptr @compiler_params, align 8
  %14 = getelementptr inbounds %struct.param_info, ptr %13, i64 51, i32 1
  %15 = getelementptr inbounds %struct.param_info, ptr %13, i64 52, i32 1
  %16 = select i1 %12, ptr %14, ptr %15
  %17 = load i32, ptr %16, align 8, !tbaa !60
  %18 = mul nsw i32 %17, 100
  %19 = load ptr, ptr @cfun, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !64
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %397, label %25

25:                                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @ebb_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store ptr @ebb_fix_recovery_cfg, ptr @ebb_common_sched_info, align 8, !tbaa !66
  store ptr @ebb_add_block, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @ebb_common_sched_info, i64 0, i32 1), align 8, !tbaa !68
  store i32 2, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @ebb_common_sched_info, i64 0, i32 4), align 8, !tbaa !69
  store ptr @ebb_common_sched_info, ptr @common_sched_info, align 8, !tbaa !35
  store ptr @ebb_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !35
  store ptr @ebb_sched_info, ptr @current_sched_info, align 8, !tbaa !35
  tail call void @haifa_sched_init() #18
  tail call void @compute_bb_for_insn() #18
  store ptr null, ptr getelementptr inbounds (%struct.bitmap_head_def, ptr @dont_calc_deps, i64 0, i32 3), align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @dont_calc_deps, i8 0, i64 16, i1 false)
  tail call void @bitmap_clear(ptr noundef nonnull @dont_calc_deps) #18
  %26 = load ptr, ptr @cfun, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %392, label %35

35:                                               ; preds = %25, %381
  %36 = phi ptr [ %385, %381 ], [ %31, %25 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  br label %40

40:                                               ; preds = %101, %35
  %41 = phi ptr [ %36, %35 ], [ %103, %101 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !78
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = load ptr, ptr @cfun, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !62
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = icmp eq ptr %47, %52
  br i1 %53, label %101, label %54

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 12
  br i1 %60, label %101, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 1
  br label %63

63:                                               ; preds = %91, %61
  %64 = phi i32 [ 0, %61 ], [ %92, %91 ]
  %65 = load ptr, ptr %62, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %65, align 8, !tbaa !54
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %68, %67 ], [ 0, %63 ]
  %71 = icmp eq i32 %70, %64
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = zext i32 %64 to i64
  %74 = getelementptr inbounds %struct.VEC_edge_base, ptr %65, i64 0, i32 2, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !35
  br label %76

76:                                               ; preds = %69, %72
  %77 = phi ptr [ %75, %72 ], [ null, %69 ]
  br i1 %71, label %93, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !56
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = icmp eq ptr %65, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = load i32, ptr %65, align 8, !tbaa !54
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %86, %85 ], [ 0, %83 ]
  %89 = icmp ult i32 %64, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %91

91:                                               ; preds = %87, %90
  %92 = add i32 %64, 1
  br label %63, !llvm.loop !79

93:                                               ; preds = %78, %76
  %94 = icmp eq ptr %77, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 8
  %97 = load i32, ptr %96, align 4, !tbaa !80
  %98 = icmp sgt i32 %97, %18
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load ptr, ptr %46, align 8, !tbaa !73
  br label %101

101:                                              ; preds = %40, %95, %93, %54, %99
  %102 = phi i1 [ true, %99 ], [ false, %54 ], [ false, %93 ], [ false, %95 ], [ false, %40 ]
  %103 = phi ptr [ %100, %99 ], [ %41, %54 ], [ %41, %93 ], [ %41, %95 ], [ %41, %40 ]
  br i1 %102, label %40, label %104

104:                                              ; preds = %101
  %105 = icmp eq ptr %39, %45
  br i1 %105, label %136, label %106

106:                                              ; preds = %104, %132
  %107 = phi ptr [ %134, %132 ], [ %45, %104 ]
  %108 = phi ptr [ %133, %132 ], [ %39, %104 ]
  %109 = load i32, ptr %108, align 8
  %110 = trunc i32 %109 to i16
  switch i16 %110, label %117 [
    i16 13, label %114
    i16 7, label %111
  ]

111:                                              ; preds = %106
  %112 = and i32 %109, 67108864
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 2
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  br label %132

117:                                              ; preds = %111, %106
  %118 = load i32, ptr %107, align 8
  %119 = trunc i32 %118 to i16
  switch i16 %119, label %126 [
    i16 13, label %123
    i16 7, label %120
  ]

120:                                              ; preds = %117
  %121 = and i32 %118, 67108864
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117, %120
  %124 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  br label %132

126:                                              ; preds = %120, %117
  %127 = and i32 %109, 65535
  %128 = icmp eq i32 %127, 12
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 2
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  br label %132

132:                                              ; preds = %123, %129, %114
  %133 = phi ptr [ %116, %114 ], [ %108, %123 ], [ %131, %129 ]
  %134 = phi ptr [ %107, %114 ], [ %125, %123 ], [ %107, %129 ]
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %136, label %106, !llvm.loop !81

136:                                              ; preds = %132, %126, %104
  %137 = phi ptr [ %39, %104 ], [ %133, %132 ], [ %108, %126 ]
  %138 = phi ptr [ %45, %104 ], [ %134, %132 ], [ %107, %126 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %7) #18
  %139 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1, i32 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !46
  %141 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !46
  store ptr %142, ptr @last_bb, align 8, !tbaa !35
  %143 = call i32 @no_real_insns_p(ptr noundef %137, ptr noundef %138) #18
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %381

145:                                              ; preds = %136
  %146 = load i32, ptr %137, align 8
  %147 = and i32 %146, 65535
  %148 = add nsw i32 %147, -7
  %149 = icmp ult i32 %148, 4
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, ptr %138, align 8
  %152 = and i32 %151, 65535
  %153 = add nsw i32 %152, -7
  %154 = icmp ult i32 %153, 4
  br i1 %154, label %156, label %155

155:                                              ; preds = %150, %145
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 474, ptr noundef nonnull @.str.1) #18
  br label %156

156:                                              ; preds = %155, %150
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %140, i64 0, i32 9
  %158 = load i32, ptr %157, align 8, !tbaa !82
  %159 = call i32 @bitmap_bit_p(ptr noundef nonnull @dont_calc_deps, i32 noundef %158) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %322

161:                                              ; preds = %156
  call void @init_deps_global() #18
  call void @init_deps(ptr noundef nonnull %7, i8 noundef zeroext 0) #18
  call void @sched_analyze(ptr noundef nonnull %7, ptr noundef nonnull %137, ptr noundef %138) #18
  call void @free_deps(ptr noundef nonnull %7) #18
  %162 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !46
  %164 = icmp eq ptr %137, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %306, %161
  %166 = phi ptr [ null, %161 ], [ %308, %306 ]
  %167 = icmp eq ptr %166, null
  br i1 %167, label %317, label %312

168:                                              ; preds = %161, %306
  %169 = phi ptr [ %310, %306 ], [ %137, %161 ]
  %170 = phi ptr [ %308, %306 ], [ null, %161 ]
  %171 = phi ptr [ %307, %306 ], [ null, %161 ]
  %172 = call zeroext i8 @control_flow_insn_p(ptr noundef %169) #18
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !46
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %176, i64 0, i32 2
  store ptr %170, ptr %177, align 8, !tbaa !83
  br label %306

178:                                              ; preds = %168
  %179 = load i32, ptr %169, align 8
  %180 = and i32 %179, 65535
  %181 = add nsw i32 %180, -7
  %182 = icmp ult i32 %181, 3
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = icmp eq i32 %180, 10
  %185 = icmp ne ptr %171, null
  %186 = select i1 %184, i1 %185, i1 false
  br i1 %186, label %189, label %306

187:                                              ; preds = %178
  %188 = icmp eq ptr %171, null
  br i1 %188, label %306, label %189

189:                                              ; preds = %187, %183
  %190 = call i32 @haifa_classify_insn(ptr noundef nonnull %169) #18
  switch i32 %190, label %306 [
    i32 2, label %191
    i32 5, label %278
    i32 4, label %278
    i32 3, label %278
  ]

191:                                              ; preds = %189
  %192 = load i32, ptr @flag_schedule_speculative_load, align 4, !tbaa !50
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %278, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %1, i64 8
  %196 = getelementptr inbounds i8, ptr %1, i64 16
  %197 = getelementptr inbounds i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i32 3, ptr %1, align 8, !tbaa.struct !84
  store ptr %169, ptr %195, align 8, !tbaa.struct !85
  store ptr @sd_iterator_start.null_link, ptr %196, align 8, !tbaa.struct !86
  store i8 0, ptr %197, align 8, !tbaa.struct !87
  %198 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %266, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds i8, ptr %3, i64 8
  %202 = getelementptr inbounds i8, ptr %3, i64 16
  %203 = getelementptr inbounds i8, ptr %3, i64 24
  br label %204

204:                                              ; preds = %200, %259
  %205 = phi ptr [ null, %200 ], [ %260, %259 ]
  %206 = load ptr, ptr %2, align 8, !tbaa !35
  %207 = getelementptr inbounds %struct._dep, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 8, !tbaa !88
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %259

210:                                              ; preds = %204
  %211 = load ptr, ptr %206, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store i32 4, ptr %3, align 8, !tbaa.struct !84
  store ptr %211, ptr %201, align 8, !tbaa.struct !85
  store ptr @sd_iterator_start.null_link, ptr %202, align 8, !tbaa.struct !86
  store i8 0, ptr %203, align 8, !tbaa.struct !87
  %212 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %257, label %214

214:                                              ; preds = %210
  %215 = icmp eq ptr %170, null
  br label %216

216:                                              ; preds = %214, %250
  %217 = phi ptr [ %251, %250 ], [ %205, %214 ]
  %218 = load ptr, ptr %4, align 8, !tbaa !35
  %219 = getelementptr inbounds %struct._dep, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !91
  %221 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1, i32 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !46
  %223 = getelementptr inbounds %struct._dep, ptr %218, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !88
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %216
  %227 = icmp eq ptr %217, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %226
  %229 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 9
  %230 = load i32, ptr %229, align 8, !tbaa !82
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %222, i64 0, i32 9
  %232 = load i32, ptr %231, align 8, !tbaa !82
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %250, label %234

234:                                              ; preds = %228, %226
  %235 = call i32 @haifa_classify_insn(ptr noundef %220) #18
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = icmp eq ptr %222, %170
  %239 = select i1 %215, i1 true, i1 %238
  br i1 %239, label %247, label %240

240:                                              ; preds = %237, %240
  %241 = phi ptr [ %243, %240 ], [ %170, %237 ]
  %242 = getelementptr inbounds %struct.basic_block_def, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !83
  %244 = icmp eq ptr %243, null
  %245 = icmp eq ptr %222, %243
  %246 = select i1 %244, i1 true, i1 %245
  br i1 %246, label %247, label %240, !llvm.loop !92

247:                                              ; preds = %240, %237
  %248 = phi i1 [ %215, %237 ], [ %244, %240 ]
  %249 = select i1 %248, ptr %222, ptr %217
  br label %250

250:                                              ; preds = %247, %234, %228, %216
  %251 = phi ptr [ %217, %228 ], [ %217, %234 ], [ %217, %216 ], [ %249, %247 ]
  %252 = load ptr, ptr %202, align 8, !tbaa !93
  %253 = load ptr, ptr %252, align 8, !tbaa !35
  %254 = getelementptr inbounds %struct._dep_link, ptr %253, i64 0, i32 1
  store ptr %254, ptr %202, align 8, !tbaa !93
  %255 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %216, !llvm.loop !95

257:                                              ; preds = %250, %210
  %258 = phi ptr [ %205, %210 ], [ %251, %250 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %259

259:                                              ; preds = %257, %204
  %260 = phi ptr [ %258, %257 ], [ %205, %204 ]
  %261 = load ptr, ptr %196, align 8, !tbaa !93
  %262 = load ptr, ptr %261, align 8, !tbaa !35
  %263 = getelementptr inbounds %struct._dep_link, ptr %262, i64 0, i32 1
  store ptr %263, ptr %196, align 8, !tbaa !93
  %264 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %204, !llvm.loop !96

266:                                              ; preds = %259, %194
  %267 = phi ptr [ null, %194 ], [ %260, %259 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #18
  %268 = icmp eq ptr %267, null
  br i1 %268, label %278, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.basic_block_def, ptr %267, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !83
  %272 = icmp eq ptr %271, null
  br i1 %272, label %306, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %271, i64 0, i32 7
  %275 = load ptr, ptr %274, align 8, !tbaa !46
  %276 = getelementptr inbounds %struct.rtl_bb_info, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !78
  br label %278

278:                                              ; preds = %189, %189, %273, %266, %191, %189
  %279 = phi ptr [ %171, %189 ], [ %277, %273 ], [ %171, %266 ], [ %171, %191 ], [ %171, %189 ], [ %171, %189 ]
  %280 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %169, ptr noundef %279) #18
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %306

282:                                              ; preds = %278
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @init_dep(ptr noundef nonnull %5, ptr noundef %279, ptr noundef nonnull %169, i32 noundef 12) #18
  %283 = load ptr, ptr @current_sched_info, align 8, !tbaa !35
  %284 = getelementptr inbounds %struct.haifa_sched_info, ptr %283, i64 0, i32 17
  %285 = load i32, ptr %284, align 8, !tbaa !97
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %282
  %289 = call i32 @sd_add_or_update_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #18
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %291, label %305

291:                                              ; preds = %288
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 428, ptr noundef nonnull @.str.1) #18
  br label %305

292:                                              ; preds = %282
  %293 = and i32 %285, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr @spec_info, align 8, !tbaa !35
  %297 = load i32, ptr %296, align 8, !tbaa !99
  %298 = and i32 %297, 258048
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct._dep, ptr %5, i64 0, i32 3
  %302 = call i32 @set_dep_weak(i32 noundef 67108864, i32 noundef 258048, i32 noundef 62) #18
  store i32 %302, ptr %301, align 4, !tbaa !101
  br label %303

303:                                              ; preds = %300, %295, %292
  %304 = call i32 @sd_add_or_update_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #18
  br label %305

305:                                              ; preds = %303, %291, %288
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %306

306:                                              ; preds = %189, %187, %183, %305, %278, %269, %174
  %307 = phi ptr [ %169, %174 ], [ %171, %278 ], [ %171, %305 ], [ %171, %269 ], [ %171, %183 ], [ null, %187 ], [ %171, %189 ]
  %308 = phi ptr [ %176, %174 ], [ %170, %278 ], [ %170, %305 ], [ %170, %269 ], [ %170, %183 ], [ %170, %187 ], [ %170, %189 ]
  %309 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 2
  %310 = load ptr, ptr %309, align 8, !tbaa !46
  %311 = icmp eq ptr %310, %163
  br i1 %311, label %165, label %168, !llvm.loop !102

312:                                              ; preds = %165, %312
  %313 = phi ptr [ %315, %312 ], [ %166, %165 ]
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !83
  store ptr null, ptr %314, align 8, !tbaa !83
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %312, !llvm.loop !103

317:                                              ; preds = %312, %165
  %318 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 10), align 8, !tbaa !104
  %319 = icmp eq ptr %318, null
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  call void %318(ptr noundef nonnull %137, ptr noundef %138) #18
  br label %321

321:                                              ; preds = %320, %317
  call void @finish_deps_global() #18
  br label %326

322:                                              ; preds = %156
  %323 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %324 = icmp eq ptr %140, %323
  br i1 %324, label %326, label %325

325:                                              ; preds = %322
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 495, ptr noundef nonnull @.str.1) #18
  br label %326

326:                                              ; preds = %325, %322, %321
  %327 = load ptr, ptr @current_sched_info, align 8, !tbaa !35
  %328 = getelementptr inbounds %struct.haifa_sched_info, ptr %327, i64 0, i32 13
  store i32 0, ptr %328, align 4, !tbaa !116
  %329 = call i32 @set_priorities(ptr noundef nonnull %137, ptr noundef %138) #18
  store i32 %329, ptr @rgn_n_insns, align 4, !tbaa !50
  %330 = load ptr, ptr @current_sched_info, align 8, !tbaa !35
  %331 = getelementptr inbounds %struct.haifa_sched_info, ptr %330, i64 0, i32 13
  %332 = load i32, ptr %331, align 4, !tbaa !116
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %331, align 4, !tbaa !116
  %334 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1, i32 0, i32 0, i64 1
  %335 = load ptr, ptr %334, align 8, !tbaa !46
  %336 = getelementptr inbounds %struct.haifa_sched_info, ptr %330, i64 0, i32 8
  store ptr %335, ptr %336, align 8, !tbaa !117
  %337 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 2
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  %339 = getelementptr inbounds %struct.haifa_sched_info, ptr %330, i64 0, i32 9
  store ptr %338, ptr %339, align 8, !tbaa !118
  call void @remove_notes(ptr noundef nonnull %137, ptr noundef %138) #18
  %340 = load ptr, ptr @last_bb, align 8, !tbaa !35
  call void @unlink_bb_notes(ptr noundef %140, ptr noundef %340) #18
  store ptr %140, ptr %6, align 8, !tbaa !35
  %341 = load i32, ptr @rgn_n_insns, align 4, !tbaa !50
  call void @sched_extend_ready_list(i32 noundef %341) #18
  call void @schedule_block(ptr noundef nonnull %6) #18
  call void @sched_finish_ready_list() #18
  %342 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !50
  %343 = load i32, ptr @rgn_n_insns, align 4, !tbaa !50
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %346, label %345

345:                                              ; preds = %326
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 521, ptr noundef nonnull @.str.1) #18
  br label %346

346:                                              ; preds = %345, %326
  %347 = load ptr, ptr @current_sched_info, align 8, !tbaa !35
  %348 = getelementptr inbounds %struct.haifa_sched_info, ptr %347, i64 0, i32 10
  %349 = load ptr, ptr %348, align 8, !tbaa !119
  %350 = getelementptr inbounds %struct.haifa_sched_info, ptr %347, i64 0, i32 11
  %351 = load ptr, ptr %350, align 8, !tbaa !120
  call void @sched_free_deps(ptr noundef %349, ptr noundef %351, i8 noundef zeroext 1) #18
  %352 = load i8, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !46
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %346
  %355 = call zeroext i8 @deps_pools_are_empty_p() #18
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 527, ptr noundef nonnull @.str.1) #18
  br label %358

358:                                              ; preds = %357, %354, %346
  %359 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %360 = load ptr, ptr %359, align 8, !tbaa !121
  %361 = icmp eq ptr %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %358
  %363 = load i32, ptr %360, align 8, !tbaa !54
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %381

365:                                              ; preds = %358, %362
  %366 = icmp eq ptr %140, %359
  br i1 %366, label %374, label %367

367:                                              ; preds = %365
  %368 = getelementptr inbounds %struct.basic_block_def, ptr %359, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !122
  %370 = icmp eq ptr %369, null
  br i1 %370, label %375, label %371

371:                                              ; preds = %367
  %372 = load i32, ptr %369, align 8, !tbaa !54
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %371, %365
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 533, ptr noundef nonnull @.str.1) #18
  br label %375

375:                                              ; preds = %367, %374, %371
  %376 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %377 = getelementptr inbounds %struct.basic_block_def, ptr %376, i64 0, i32 5
  %378 = load ptr, ptr %377, align 8, !tbaa !123
  store ptr %378, ptr @last_bb, align 8, !tbaa !35
  %379 = getelementptr inbounds %struct.basic_block_def, ptr %378, i64 0, i32 6
  %380 = load ptr, ptr %379, align 8, !tbaa !73
  call void @delete_basic_block(ptr noundef %380) #18
  br label %381

381:                                              ; preds = %136, %362, %375
  %382 = phi ptr [ %141, %136 ], [ @last_bb, %375 ], [ @last_bb, %362 ]
  %383 = load ptr, ptr %382, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 6
  %385 = load ptr, ptr %384, align 8, !tbaa !73
  %386 = load ptr, ptr @cfun, align 8, !tbaa !35
  %387 = getelementptr inbounds %struct.function, ptr %386, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !62
  %389 = getelementptr inbounds %struct.control_flow_graph, ptr %388, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !75
  %391 = icmp eq ptr %385, %390
  br i1 %391, label %392, label %35, !llvm.loop !124

392:                                              ; preds = %381, %25
  call void @bitmap_clear(ptr noundef nonnull @dont_calc_deps) #18
  %393 = load i32, ptr @reload_completed, align 4, !tbaa !50
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  call void @reposition_prologue_and_epilogue_notes() #18
  br label %396

396:                                              ; preds = %395, %392
  call void @haifa_sched_finish() #18
  br label %397

397:                                              ; preds = %0, %396
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @ebb_fix_recovery_cfg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #9 !prof !34 {
  %4 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 700, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !82
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load ptr, ptr @cfun, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !125
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %19, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  store ptr %22, ptr @last_bb, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @ebb_add_block(ptr noundef %0, ptr noundef readnone %1) #9 !prof !34 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @dont_calc_deps, i32 noundef %11) #18
  br label %17

13:                                               ; preds = %2
  %14 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store ptr %0, ptr @last_bb, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %13, %16, %9
  ret void
}

declare void @haifa_sched_init() local_unnamed_addr #3

declare void @compute_bb_for_insn() local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #3

declare void @haifa_sched_finish() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @init_ready_list() #9 !prof !34 {
  %1 = load ptr, ptr @current_sched_info, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  store i32 0, ptr @sched_rgn_n_insns, align 4, !tbaa !50
  %6 = load i32, ptr @sched_verbose, align 4, !tbaa !50
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %25

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %14 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 56, i64 1, ptr %13)
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !82
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef %19, i32 noundef %23)
  tail call void @debug_dependencies(ptr noundef %10, ptr noundef %12) #18
  br label %25

25:                                               ; preds = %8, %0
  %26 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %35, %29 ], [ %27, %25 ]
  %31 = phi i32 [ %33, %29 ], [ 0, %25 ]
  %32 = tail call i32 @try_ready(ptr noundef %30) #18
  %33 = add nuw nsw i32 %31, 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %35, %5
  br i1 %36, label %37, label %29, !llvm.loop !126

37:                                               ; preds = %29, %25
  %38 = phi i32 [ 0, %25 ], [ %33, %29 ]
  %39 = load i32, ptr @rgn_n_insns, align 4, !tbaa !50
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 124, ptr noundef nonnull @.str.1) #18
  br label %42

42:                                               ; preds = %37, %41
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @schedule_more_p() #11 !prof !34 {
  %1 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !50
  %2 = load i32, ptr @rgn_n_insns, align 4, !tbaa !50
  %3 = icmp slt i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rank(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !34 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !127
  %11 = icmp sgt i64 %8, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !128
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = icmp slt i64 %8, %10
  %20 = icmp slt i32 %14, %16
  %21 = or i1 %19, %20
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %2, %12
  %24 = phi i32 [ -1, %12 ], [ -1, %2 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: cold nofree nounwind uwtable
define internal noundef nonnull ptr @ebb_print_insn(ptr nocapture noundef readonly %0, i32 %1) #13 !prof !34 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 1179648
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = select i1 %5, ptr @.str.5, ptr @.str.6
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @ebb_print_insn.tmp, ptr noundef nonnull dereferenceable(1) %8, i32 noundef %7)
  ret ptr @ebb_print_insn.tmp
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ebb_contributes_to_priority(ptr nocapture readnone %0, ptr nocapture readnone %1) #14 !prof !34 {
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @ebb_add_remove_insn(ptr nocapture readnone %0, i32 noundef %1) #15 !prof !34 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr @rgn_n_insns, align 4
  %5 = select i1 %3, i32 1, i32 -1
  %6 = add nsw i32 %4, %5
  store i32 %6, ptr @rgn_n_insns, align 4, !tbaa !50
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @begin_schedule_ready(ptr noundef %0, ptr noundef readnone %1) #9 !prof !34 {
  %3 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !50
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @sched_rgn_n_insns, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %88

9:                                                ; preds = %2
  %10 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %0) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %88, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %88, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  br label %19

19:                                               ; preds = %47, %16
  %20 = phi i32 [ 0, %16 ], [ %48, %47 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = icmp eq i32 %26, %20
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = zext i32 %20 to i64
  %30 = getelementptr inbounds %struct.VEC_edge_base, ptr %21, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  br label %32

32:                                               ; preds = %25, %28
  %33 = phi ptr [ %31, %28 ], [ null, %25 ]
  br i1 %27, label %49, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = icmp eq ptr %21, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %21, align 8, !tbaa !54
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %42, %41 ], [ 0, %39 ]
  %45 = icmp ult i32 %20, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %47

47:                                               ; preds = %43, %46
  %48 = add i32 %20, 1
  br label %19, !llvm.loop !129

49:                                               ; preds = %34, %32
  %50 = icmp eq ptr %33, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %49
  %52 = tail call ptr @split_edge(ptr noundef nonnull %33) #18
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.rtl_bb_info, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !78
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 13
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !46
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %70, label %64

64:                                               ; preds = %60, %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 174, ptr noundef nonnull @.str.1) #18
  br label %70

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %69 = tail call ptr @create_basic_block(ptr noundef %67, ptr noundef null, ptr noundef %68) #18
  br label %70

70:                                               ; preds = %64, %60, %65
  %71 = phi ptr [ %52, %60 ], [ %52, %64 ], [ %69, %65 ]
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = getelementptr inbounds %struct.rtl_bb_info, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !78
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = load ptr, ptr @current_sched_info, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.haifa_sched_info, ptr %78, i64 0, i32 9
  store ptr %77, ptr %79, align 8, !tbaa !118
  %80 = icmp eq ptr %77, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @.str.1) #18
  br label %82

82:                                               ; preds = %70, %81
  %83 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !35
  %84 = load ptr, ptr @last_bb, align 8, !tbaa !35
  tail call void %83(ptr noundef %71, ptr noundef %84) #18
  %85 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %86 = icmp eq ptr %85, %71
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 189, ptr noundef nonnull @.str.1) #18
  br label %88

88:                                               ; preds = %87, %82, %12, %9, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @advance_target_bb(ptr noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %75, label %9

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %1) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @h_i_d, align 8
  %14 = load i32, ptr %5, align 8, !tbaa !46
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %13, i64 0, i32 2, i64 %15, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @cfun, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = icmp eq ptr %17, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %19, %12
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !46
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %13, i64 0, i32 2, i64 %33, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !130
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr @cfun, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = icmp eq ptr %35, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %37, %26
  %45 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %30) #18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = load ptr, ptr %51, align 8, !tbaa !76
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %58 = load i32, ptr %57, align 8, !tbaa !46
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %75, label %60

60:                                               ; preds = %56, %47, %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 672, ptr noundef nonnull @.str.1) #18
  br label %75

61:                                               ; preds = %2, %66
  %62 = phi ptr [ %68, %66 ], [ %0, %2 ]
  %63 = load ptr, ptr @last_bb, align 8, !tbaa !35
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 683, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %61, %65
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !73
  %69 = tail call ptr @bb_note(ptr noundef %68) #18
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !78
  %74 = icmp eq ptr %69, %73
  br i1 %74, label %61, label %75, !llvm.loop !132

75:                                               ; preds = %66, %4, %9, %19, %37, %60, %56
  %76 = phi ptr [ %0, %56 ], [ %0, %60 ], [ null, %37 ], [ null, %19 ], [ null, %9 ], [ null, %4 ], [ %68, %66 ]
  ret ptr %76
}

declare i32 @try_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @debug_dependencies(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bb_note(ptr noundef) local_unnamed_addr #3

declare i32 @no_real_insns_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @init_deps_global() local_unnamed_addr #3

declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @sched_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_deps(ptr noundef) local_unnamed_addr #3

declare void @finish_deps_global() local_unnamed_addr #3

declare i32 @set_priorities(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_notes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unlink_bb_notes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sched_extend_ready_list(i32 noundef) local_unnamed_addr #3

declare void @schedule_block(ptr noundef) local_unnamed_addr #3

declare void @sched_finish_ready_list() local_unnamed_addr #3

declare void @sched_free_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare i32 @haifa_classify_insn(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @sd_add_or_update_dep(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @set_dep_weak(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !133
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !135
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #18
  %18 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %18, ptr %4, align 8, !tbaa !93
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi i8 [ %21, %20 ], [ undef, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br i1 %19, label %24, label %27

24:                                               ; preds = %11, %22, %8
  %25 = phi ptr [ %10, %8 ], [ null, %22 ], [ null, %11 ]
  %26 = phi i8 [ 1, %8 ], [ 0, %22 ], [ 0, %11 ]
  store ptr %25, ptr %1, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i8 [ %23, %22 ], [ %26, %24 ]
  ret i8 %28
}

declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 0}
!55 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!56 = !{!57, !41, i64 48}
!57 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!58 = !{!57, !36, i64 8}
!59 = distinct !{!59, !52, !53}
!60 = !{!61, !41, i64 8}
!61 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!62 = !{!63, !36, i64 8}
!63 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!64 = !{!65, !41, i64 24}
!65 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!66 = !{!67, !36, i64 0}
!67 = !{!"common_sched_info_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!68 = !{!67, !36, i64 8}
!69 = !{!67, !41, i64 32}
!70 = !{!71, !36, i64 24}
!71 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!72 = !{!65, !36, i64 0}
!73 = !{!74, !36, i64 56}
!74 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!75 = !{!65, !36, i64 8}
!76 = !{!77, !36, i64 0}
!77 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!78 = !{!77, !36, i64 8}
!79 = distinct !{!79, !52, !53}
!80 = !{!57, !41, i64 52}
!81 = distinct !{!81, !52, !53}
!82 = !{!74, !41, i64 80}
!83 = !{!74, !36, i64 16}
!84 = !{i64 0, i64 4, !50, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 1, !46}
!85 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 1, !46}
!86 = !{i64 0, i64 8, !35, i64 8, i64 1, !46}
!87 = !{i64 0, i64 1, !46}
!88 = !{!89, !41, i64 16}
!89 = !{!"_dep", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!90 = !{!89, !36, i64 0}
!91 = !{!89, !36, i64 8}
!92 = distinct !{!92, !52, !53}
!93 = !{!94, !36, i64 16}
!94 = !{!"_sd_iterator", !41, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = !{!98, !41, i64 128}
!98 = !{!"haifa_sched_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !36, i64 104, !36, i64 112, !36, i64 120, !41, i64 128}
!99 = !{!100, !41, i64 0}
!100 = !{!"spec_info_def", !41, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24}
!101 = !{!89, !41, i64 20}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = !{!105, !36, i64 448}
!105 = !{!"gcc_target", !106, i64 0, !108, i64 368, !109, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !110, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !111, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !112, i64 1784, !113, i64 1792, !114, i64 1896, !115, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!106 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !107, i64 24, !107, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!107 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!108 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!109 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!110 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!111 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!112 = !{!"c", !36, i64 0}
!113 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!114 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!115 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!116 = !{!98, !41, i64 100}
!117 = !{!98, !36, i64 64}
!118 = !{!98, !36, i64 72}
!119 = !{!98, !36, i64 80}
!120 = !{!98, !36, i64 88}
!121 = !{!74, !36, i64 0}
!122 = !{!74, !36, i64 8}
!123 = !{!74, !36, i64 48}
!124 = distinct !{!124, !52, !53}
!125 = !{!65, !36, i64 16}
!126 = distinct !{!126, !52, !53}
!127 = !{!74, !42, i64 72}
!128 = !{!74, !41, i64 88}
!129 = distinct !{!129, !52, !53}
!130 = !{!131, !36, i64 40}
!131 = !{!"_haifa_insn_data", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !43, i64 20, !41, i64 22, !41, i64 22, !37, i64 23, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !41, i64 88}
!132 = distinct !{!132, !52, !53}
!133 = !{!134, !36, i64 0}
!134 = !{!"_dep_link", !36, i64 0, !36, i64 8, !36, i64 16}
!135 = !{!94, !41, i64 0}
!136 = !{!94, !36, i64 8}
