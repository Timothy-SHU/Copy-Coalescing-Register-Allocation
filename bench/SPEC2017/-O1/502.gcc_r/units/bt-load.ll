; ModuleID = 'bt-load.c'
source_filename = "bt-load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.defs_uses_info = type { ptr, i64, i64, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.btr_def_s = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.btr_def_group_s = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.btr_user_s = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"btl1\00", align 1
@pass_branch_target_load_optimize1 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_branch_target_load_optimize1, ptr @rest_of_handle_branch_target_load_optimize1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1027 } }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"btl2\00", align 1
@pass_branch_target_load_optimize2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_branch_target_load_optimize2, ptr @rest_of_handle_branch_target_load_optimize2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@flag_branch_target_load_optimize = external local_unnamed_addr global i32, align 4
@epilogue_completed = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@issue_rate = internal unnamed_addr global i32 0, align 4
@optimize = external local_unnamed_addr global i32, align 4
@migrate_btrl_obstack = internal global %struct.obstack zeroinitializer, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Basic block %d: count = %ld loop-depth = %d idom = %d\0A\00", align 1
@all_btrs = internal unnamed_addr global i64 0, align 8
@first_btr = internal unnamed_addr global i32 0, align 4
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@last_btr = internal unnamed_addr global i32 0, align 4
@btrs_live = internal unnamed_addr global ptr null, align 8
@btrs_live_at_end = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Putting insn %d back on queue with priority %d\0A\00", align 1
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"bt-load.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.6 = private unnamed_addr constant [71 x i8] c"Found target reg definition: sets %u { bb %d, insn %d }%s priority %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c":not const\00", align 1
@btr_reference_found = internal unnamed_addr global ptr null, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.9 = private unnamed_addr constant [36 x i8] c"Uses target reg: { bb %d, insn %d }\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c": unambiguous use of reg %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"BB%d live:\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Def in insn %d reaches use in insn %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"(use %d has multiple reaching defs)\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"Attempting to migrate pt from insn %d (cost = %d, min_cost = %d) ... \00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"it's not migratable\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"it's already combined with another pt\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"trying block %d ...\00", align 1
@flag_btr_bb_exclusive = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"Now btrs live in range are: \00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"giving up because there are no free target registers\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"failed to move\0A\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Adding end of block %d and rest of %d to live range\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Now live btrs are \00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Adding block %d to live range\0A\00", align 1
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@.str.27 = private unnamed_addr constant [43 x i8] c"migrating to basic block %d, using reg %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"New pt is insn %d, inserted after insn %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Combining def in insn %d with def in insn %d\0A\00", align 1
@flag_branch_target_load_optimize2 = external local_unnamed_addr global i32, align 4
@rest_of_handle_branch_target_load_optimize2.warned = internal unnamed_addr global i1 false, align 4
@.str.30 = private unnamed_addr constant [73 x i8] c"branch target register load optimization is not intended to be run twice\00", align 1

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_branch_target_load_optimize1() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @flag_branch_target_load_optimize, align 4, !tbaa !50
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_branch_target_load_optimize1() #10 !prof !34 {
  %1 = load i32, ptr @epilogue_completed, align 4, !tbaa !50
  %2 = trunc i32 %1 to i8
  tail call fastcc void @branch_target_load_optimize(i8 noundef zeroext %2)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_branch_target_load_optimize2() #9 !prof !54 !PGOFuncName !56 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !50
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_branch_target_load_optimize2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !57
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_branch_target_load_optimize2() #10 !prof !34 {
  %1 = load i32, ptr @flag_branch_target_load_optimize, align 4, !tbaa !50
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @flag_branch_target_load_optimize2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i1, ptr @rest_of_handle_branch_target_load_optimize2.warned, align 4
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.30) #18
  store i1 true, ptr @rest_of_handle_branch_target_load_optimize2.warned, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, ptr @epilogue_completed, align 4, !tbaa !50
  %12 = trunc i32 %11 to i8
  tail call fastcc void @branch_target_load_optimize(i8 noundef zeroext %12)
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @branch_target_load_optimize(i8 noundef zeroext %0) unnamed_addr #10 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.defs_uses_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 33), align 8, !tbaa !58
  %13 = tail call i32 %12() #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1781, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 2), align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 %16() #18
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi i32 [ %19, %18 ], [ 1, %15 ]
  store i32 %21, ptr @issue_rate, align 4, !tbaa !50
  %22 = icmp eq i8 %0, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, ptr @optimize, align 4, !tbaa !50
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = tail call zeroext i8 @cleanup_cfg(i32 noundef %26) #18
  br label %28

28:                                               ; preds = %23, %20
  tail call void @df_analyze() #18
  tail call void @calculate_dominance_info(i32 noundef 1) #18
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 34), align 8, !tbaa !71
  %30 = tail call zeroext i8 %29(i8 noundef zeroext %0) #18
  %31 = tail call ptr @fibheap_new() #18
  %32 = tail call i32 @_obstack_begin(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #18
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %67, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr @cfun, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %67

42:                                               ; preds = %35, %42
  %43 = phi i64 [ %59, %42 ], [ 2, %35 ]
  %44 = phi ptr [ %62, %42 ], [ %38, %35 ]
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %46, i64 0, i32 2, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !77
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 10
  %53 = load i32, ptr %52, align 4, !tbaa !79
  %54 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %48) #18
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !80
  %57 = trunc i64 %43 to i32
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.2, i32 noundef %57, i64 noundef %51, i32 noundef %53, i32 noundef %56)
  %59 = add nuw nsw i64 %43, 1
  %60 = load ptr, ptr @cfun, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !74
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %59, %65
  br i1 %66, label %42, label %67, !llvm.loop !81

67:                                               ; preds = %42, %35, %28
  store i64 0, ptr @all_btrs, align 8, !tbaa !82
  store i32 -1, ptr @first_btr, align 4, !tbaa !50
  %68 = sext i32 %13 to i64
  %69 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %68
  %70 = icmp eq i8 %30, 0
  br label %71

71:                                               ; preds = %67, %94
  %72 = phi i64 [ 0, %67 ], [ %95, %94 ]
  %73 = load i64, ptr %69, align 8, !tbaa !82
  %74 = shl nuw i64 1, %72
  %75 = and i64 %73, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %71
  br i1 %70, label %78, label %86

78:                                               ; preds = %77
  %79 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %72
  %80 = load i8, ptr %79, align 1, !tbaa !46
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = trunc i64 %72 to i32
  %84 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %83) #18
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82, %78, %77
  %87 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %88 = or i64 %87, %74
  store i64 %88, ptr @all_btrs, align 8, !tbaa !82
  %89 = trunc i64 %72 to i32
  store i32 %89, ptr @last_btr, align 4, !tbaa !50
  %90 = load i32, ptr @first_btr, align 4, !tbaa !50
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = trunc i64 %72 to i32
  store i32 %93, ptr @first_btr, align 4, !tbaa !50
  br label %94

94:                                               ; preds = %82, %92, %86, %71
  %95 = add nuw nsw i64 %72, 1
  %96 = icmp eq i64 %95, 53
  br i1 %96, label %97, label %71, !llvm.loop !83

97:                                               ; preds = %94
  %98 = load ptr, ptr @cfun, align 8, !tbaa !35
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !72
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !74
  %103 = sext i32 %102 to i64
  %104 = tail call ptr @xcalloc(i64 noundef %103, i64 noundef 8) #18
  store ptr %104, ptr @btrs_live, align 8, !tbaa !35
  %105 = load ptr, ptr @cfun, align 8, !tbaa !35
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !72
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 5
  %109 = load i32, ptr %108, align 8, !tbaa !74
  %110 = sext i32 %109 to i64
  %111 = tail call ptr @xcalloc(i64 noundef %110, i64 noundef 8) #18
  store ptr %111, ptr @btrs_live_at_end, align 8, !tbaa !35
  %112 = tail call i32 @get_max_uid() #18
  %113 = sext i32 %112 to i64
  %114 = tail call ptr @xcalloc(i64 noundef %113, i64 noundef 8) #18
  %115 = tail call ptr @xcalloc(i64 noundef %113, i64 noundef 8) #18
  %116 = load i32, ptr @last_btr, align 4, !tbaa !50
  %117 = load i32, ptr @first_btr, align 4, !tbaa !50
  %118 = add i32 %116, 1
  %119 = sub i32 %118, %117
  %120 = tail call ptr @sbitmap_vector_alloc(i32 noundef %119, i32 noundef %112) #18
  %121 = load ptr, ptr @cfun, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !72
  %124 = getelementptr inbounds %struct.control_flow_graph, ptr %123, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !74
  %126 = tail call ptr @sbitmap_vector_alloc(i32 noundef %125, i32 noundef %112) #18
  %127 = load ptr, ptr @cfun, align 8, !tbaa !35
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !72
  %130 = getelementptr inbounds %struct.control_flow_graph, ptr %129, i64 0, i32 5
  %131 = load i32, ptr %130, align 8, !tbaa !74
  %132 = sext i32 %131 to i64
  %133 = tail call ptr @xcalloc(i64 noundef %132, i64 noundef 8) #18
  %134 = load i32, ptr @last_btr, align 4, !tbaa !50
  %135 = load i32, ptr @first_btr, align 4, !tbaa !50
  %136 = add i32 %134, 1
  %137 = sub i32 %136, %135
  tail call void @sbitmap_vector_zero(ptr noundef %120, i32 noundef %137) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr null, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #18
  %138 = load ptr, ptr @cfun, align 8, !tbaa !35
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !72
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 5
  %142 = load i32, ptr %141, align 8, !tbaa !74
  tail call void @sbitmap_vector_zero(ptr noundef %126, i32 noundef %142) #18
  %143 = load ptr, ptr @cfun, align 8, !tbaa !35
  %144 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !72
  %146 = getelementptr inbounds %struct.control_flow_graph, ptr %145, i64 0, i32 5
  %147 = load i32, ptr %146, align 8, !tbaa !74
  %148 = icmp sgt i32 %147, 2
  br i1 %148, label %149, label %742

149:                                              ; preds = %97
  %150 = getelementptr inbounds %struct.defs_uses_info, ptr %9, i64 0, i32 3
  %151 = getelementptr inbounds %struct.defs_uses_info, ptr %9, i64 0, i32 4
  %152 = getelementptr inbounds %struct.defs_uses_info, ptr %9, i64 0, i32 2
  %153 = getelementptr inbounds %struct.defs_uses_info, ptr %9, i64 0, i32 1
  br label %154

154:                                              ; preds = %149, %733
  %155 = phi i64 [ 2, %149 ], [ %734, %733 ]
  %156 = phi ptr [ %145, %149 ], [ %737, %733 ]
  %157 = phi i32 [ 0, %149 ], [ %669, %733 ]
  %158 = getelementptr inbounds %struct.control_flow_graph, ptr %156, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !76
  %160 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %159, i64 0, i32 2, i64 %155
  %161 = load ptr, ptr %160, align 8, !tbaa !35
  store ptr null, ptr %9, align 8, !tbaa !84
  %162 = getelementptr inbounds ptr, ptr %126, i64 %155
  %163 = load ptr, ptr %162, align 8, !tbaa !35
  store ptr %163, ptr %150, align 8, !tbaa !86
  store ptr %120, ptr %151, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %153, i8 0, i64 16, i1 false)
  %164 = load i32, ptr @first_btr, align 4, !tbaa !50
  %165 = load i32, ptr @last_btr, align 4, !tbaa !50
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %185, label %167

167:                                              ; preds = %154, %181
  %168 = phi i32 [ %182, %181 ], [ %164, %154 ]
  %169 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %170 = zext nneg i32 %168 to i64
  %171 = shl nuw i64 1, %170
  %172 = and i64 %169, %171
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  %175 = call ptr @df_get_live_in(ptr noundef %161) #18
  %176 = call i32 @bitmap_bit_p(ptr noundef %175, i32 noundef %168) #18
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load i64, ptr %152, align 8, !tbaa !88
  %180 = or i64 %179, %171
  store i64 %180, ptr %152, align 8, !tbaa !88
  br label %181

181:                                              ; preds = %178, %174, %167
  %182 = add nsw i32 %168, 1
  %183 = load i32, ptr @last_btr, align 4, !tbaa !50
  %184 = icmp slt i32 %168, %183
  br i1 %184, label %167, label %185, !llvm.loop !89

185:                                              ; preds = %181, %154
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 7
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  %188 = getelementptr inbounds %struct.rtl_bb_info, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !90
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1, i32 0, i32 0, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  %192 = load ptr, ptr %187, align 8, !tbaa !46
  %193 = icmp eq ptr %192, %191
  br i1 %193, label %668, label %194

194:                                              ; preds = %185, %662
  %195 = phi ptr [ %666, %662 ], [ %192, %185 ]
  %196 = phi i32 [ %665, %662 ], [ %157, %185 ]
  %197 = phi ptr [ %663, %662 ], [ null, %185 ]
  %198 = load i32, ptr %195, align 8
  %199 = and i32 %198, 65535
  %200 = add nsw i32 %199, -7
  %201 = icmp ult i32 %200, 4
  br i1 %201, label %202, label %662

202:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %203 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %204 = load i32, ptr %203, align 8, !tbaa !46
  %205 = call fastcc i32 @insn_sets_btr_p(ptr noundef nonnull %195, i32 noundef 0, ptr noundef nonnull %10), !range !92
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %435, label %207

207:                                              ; preds = %202
  %208 = load i32, ptr %10, align 4, !tbaa !50
  %209 = load i64, ptr %152, align 8, !tbaa !88
  %210 = zext nneg i32 %208 to i64
  %211 = shl nuw i64 1, %210
  %212 = and i64 %211, %209
  %213 = icmp ne i64 %212, 0
  store i64 80, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %214 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !95
  %215 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %216 = ptrtoint ptr %214 to i64
  %217 = ptrtoint ptr %215 to i64
  %218 = sub i64 %216, %217
  %219 = icmp slt i64 %218, 80
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  call void @_obstack_newchunk(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 80) #18
  br label %221

221:                                              ; preds = %220, %207
  %222 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %223 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %224 = getelementptr inbounds i8, ptr %223, i64 %222
  store ptr %224, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %225 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !97
  %226 = icmp eq ptr %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  %229 = or i8 %228, 2
  store i8 %229, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  br label %230

230:                                              ; preds = %227, %221
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 11
  %232 = ptrtoint ptr %225 to i64
  store i64 %232, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %233 = ptrtoint ptr %224 to i64
  %234 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 6), align 8, !tbaa !98
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = xor i32 %234, -1
  %238 = sext i32 %237 to i64
  %239 = and i64 %236, %238
  %240 = inttoptr i64 %239 to ptr
  store ptr %240, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %241 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !99
  %242 = ptrtoint ptr %241 to i64
  %243 = sub i64 %239, %242
  %244 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !95
  %245 = ptrtoint ptr %244 to i64
  %246 = sub i64 %245, %242
  %247 = icmp sgt i64 %243, %246
  %248 = select i1 %247, ptr %244, ptr %240
  store ptr %248, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8
  store ptr %248, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !97
  %249 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 2
  store ptr %161, ptr %249, align 8, !tbaa !100
  %250 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 3
  store i32 %196, ptr %250, align 8, !tbaa !102
  %251 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 4
  store ptr %195, ptr %251, align 8, !tbaa !103
  %252 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 5
  store i32 %208, ptr %252, align 8, !tbaa !104
  %253 = load i32, ptr %231, align 8, !tbaa !105
  %254 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 6
  store i32 %253, ptr %254, align 4, !tbaa !106
  %255 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 9
  store i8 0, ptr %255, align 8, !tbaa !107
  %256 = zext i1 %213 to i8
  %257 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 10
  store i8 %256, ptr %257, align 1, !tbaa !108
  %258 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 11
  store i8 0, ptr %258, align 2, !tbaa !109
  %259 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 1
  %260 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 8
  store ptr null, ptr %260, align 8, !tbaa !110
  %261 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 13
  store ptr null, ptr %261, align 8, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, i8 0, i64 16, i1 false)
  %262 = call fastcc i32 @insn_sets_btr_p(ptr noundef nonnull %195, i32 noundef 1, ptr noundef null), !range !92
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %336, label %264

264:                                              ; preds = %230
  %265 = load ptr, ptr %251, align 8, !tbaa !103
  %266 = load i32, ptr %265, align 8
  %267 = and i32 %266, 65535
  %268 = add nsw i32 %267, -7
  %269 = icmp ult i32 %268, 3
  br i1 %269, label %272, label %270

270:                                              ; preds = %264
  %271 = icmp eq i32 %267, 10
  call void @llvm.assume(i1 %271)
  br label %272

272:                                              ; preds = %270, %264
  %273 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !46
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 65535
  %277 = icmp eq i32 %276, 23
  br i1 %277, label %280, label %278

278:                                              ; preds = %272
  %279 = call ptr @single_set_2(ptr noundef nonnull %265, ptr noundef nonnull %274) #18
  br label %280

280:                                              ; preds = %278, %272
  %281 = phi ptr [ %279, %278 ], [ %274, %272 ]
  %282 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !46
  br label %284

284:                                              ; preds = %288, %280
  %285 = phi ptr [ %8, %280 ], [ %286, %288 ]
  %286 = load ptr, ptr %285, align 8, !tbaa !35
  %287 = icmp eq ptr %286, null
  br i1 %287, label %293, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.btr_def_group_s, ptr %286, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !112
  %291 = call i32 @rtx_equal_p(ptr noundef %283, ptr noundef %290) #18
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %284, label %331, !llvm.loop !114

293:                                              ; preds = %284
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %294 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !95
  %295 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %296 = ptrtoint ptr %294 to i64
  %297 = ptrtoint ptr %295 to i64
  %298 = sub i64 %296, %297
  %299 = icmp slt i64 %298, 24
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  call void @_obstack_newchunk(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 24) #18
  br label %301

301:                                              ; preds = %300, %293
  %302 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %303 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %304 = getelementptr inbounds i8, ptr %303, i64 %302
  store ptr %304, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %305 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !97
  %306 = icmp eq ptr %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  %309 = or i8 %308, 2
  store i8 %309, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  br label %310

310:                                              ; preds = %307, %301
  %311 = ptrtoint ptr %305 to i64
  store i64 %311, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %312 = ptrtoint ptr %304 to i64
  %313 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 6), align 8, !tbaa !98
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %312
  %316 = xor i32 %313, -1
  %317 = sext i32 %316 to i64
  %318 = and i64 %315, %317
  %319 = inttoptr i64 %318 to ptr
  store ptr %319, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %320 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !99
  %321 = ptrtoint ptr %320 to i64
  %322 = sub i64 %318, %321
  %323 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !95
  %324 = ptrtoint ptr %323 to i64
  %325 = sub i64 %324, %321
  %326 = icmp sgt i64 %322, %325
  %327 = select i1 %326, ptr %323, ptr %319
  store ptr %327, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8
  store ptr %327, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !97
  %328 = getelementptr inbounds %struct.btr_def_group_s, ptr %305, i64 0, i32 1
  store ptr %283, ptr %328, align 8, !tbaa !112
  %329 = getelementptr inbounds %struct.btr_def_group_s, ptr %305, i64 0, i32 2
  store ptr null, ptr %329, align 8, !tbaa !115
  %330 = load ptr, ptr %8, align 8, !tbaa !35
  store ptr %330, ptr %305, align 8, !tbaa !116
  store ptr %305, ptr %8, align 8, !tbaa !35
  br label %331

331:                                              ; preds = %288, %310
  %332 = phi ptr [ %305, %310 ], [ %286, %288 ]
  %333 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 7
  store ptr %332, ptr %333, align 8, !tbaa !117
  %334 = getelementptr inbounds %struct.btr_def_group_s, ptr %332, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !115
  store ptr %335, ptr %259, align 8, !tbaa !118
  store ptr %225, ptr %334, align 8, !tbaa !115
  br label %338

336:                                              ; preds = %230
  %337 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 7
  store ptr null, ptr %337, align 8, !tbaa !117
  br label %338

338:                                              ; preds = %336, %331
  %339 = load i32, ptr %254, align 4, !tbaa !106
  %340 = sub nsw i32 0, %339
  %341 = sext i32 %340 to i64
  %342 = call ptr @fibheap_insert(ptr noundef %31, i64 noundef %341, ptr noundef nonnull %225) #18
  %343 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %344 = icmp eq ptr %343, null
  br i1 %344, label %355, label %345

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %347 = load i32, ptr %346, align 8, !tbaa !80
  %348 = load i32, ptr %203, align 8, !tbaa !46
  %349 = getelementptr inbounds %struct.btr_def_s, ptr %225, i64 0, i32 7
  %350 = load ptr, ptr %349, align 8, !tbaa !117
  %351 = icmp eq ptr %350, null
  %352 = select i1 %351, ptr @.str.8, ptr @.str.7
  %353 = load i32, ptr %254, align 4, !tbaa !106
  %354 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %343, ptr noundef nonnull @.str.6, i32 noundef %208, i32 noundef %347, i32 noundef %348, ptr noundef nonnull %352, i32 noundef %353)
  br label %355

355:                                              ; preds = %345, %338
  %356 = sext i32 %204 to i64
  %357 = getelementptr inbounds ptr, ptr %114, i64 %356
  store ptr %225, ptr %357, align 8, !tbaa !35
  %358 = load i32, ptr %10, align 4, !tbaa !50
  %359 = zext nneg i32 %358 to i64
  %360 = shl nuw i64 1, %359
  %361 = load i64, ptr %153, align 8, !tbaa !119
  %362 = or i64 %360, %361
  store i64 %362, ptr %153, align 8, !tbaa !119
  %363 = load i64, ptr %152, align 8, !tbaa !88
  %364 = or i64 %363, %360
  store i64 %364, ptr %152, align 8, !tbaa !88
  %365 = load ptr, ptr %162, align 8, !tbaa !35
  %366 = load i32, ptr @first_btr, align 4, !tbaa !50
  %367 = sub nsw i32 %358, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds ptr, ptr %120, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !35
  call void @sbitmap_difference(ptr noundef %365, ptr noundef %365, ptr noundef %370) #18
  %371 = load ptr, ptr %162, align 8, !tbaa !35
  %372 = load ptr, ptr %371, align 8, !tbaa !120
  %373 = icmp eq ptr %372, null
  br i1 %373, label %388, label %374

374:                                              ; preds = %355
  %375 = lshr i32 %204, 6
  %376 = zext nneg i32 %375 to i64
  %377 = getelementptr inbounds %struct.simple_bitmap_def, ptr %371, i64 0, i32 3, i64 %376
  %378 = load i64, ptr %377, align 8, !tbaa !82
  %379 = and i32 %204, 63
  %380 = zext nneg i32 %379 to i64
  %381 = shl nuw i64 1, %380
  %382 = and i64 %378, %381
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %374
  %385 = getelementptr inbounds i8, ptr %372, i64 %376
  %386 = load i8, ptr %385, align 1, !tbaa !46
  %387 = add i8 %386, 1
  store i8 %387, ptr %385, align 1, !tbaa !46
  br label %388

388:                                              ; preds = %384, %374, %355
  %389 = and i32 %204, 63
  %390 = zext nneg i32 %389 to i64
  %391 = shl nuw i64 1, %390
  %392 = lshr i32 %204, 6
  %393 = zext nneg i32 %392 to i64
  %394 = getelementptr inbounds %struct.simple_bitmap_def, ptr %371, i64 0, i32 3, i64 %393
  %395 = load i64, ptr %394, align 8, !tbaa !82
  %396 = or i64 %395, %391
  store i64 %396, ptr %394, align 8, !tbaa !82
  store ptr %197, ptr %225, align 8, !tbaa !122
  %397 = load i32, ptr %10, align 4, !tbaa !50
  %398 = load i32, ptr @first_btr, align 4, !tbaa !50
  %399 = sub nsw i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds ptr, ptr %120, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !35
  %403 = load ptr, ptr %402, align 8, !tbaa !120
  %404 = icmp eq ptr %403, null
  br i1 %404, label %414, label %405

405:                                              ; preds = %388
  %406 = getelementptr inbounds %struct.simple_bitmap_def, ptr %402, i64 0, i32 3, i64 %393
  %407 = load i64, ptr %406, align 8, !tbaa !82
  %408 = and i64 %407, %391
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %405
  %411 = getelementptr inbounds i8, ptr %403, i64 %393
  %412 = load i8, ptr %411, align 1, !tbaa !46
  %413 = add i8 %412, 1
  store i8 %413, ptr %411, align 1, !tbaa !46
  br label %414

414:                                              ; preds = %410, %405, %388
  %415 = getelementptr inbounds %struct.simple_bitmap_def, ptr %402, i64 0, i32 3, i64 %393
  %416 = load i64, ptr %415, align 8, !tbaa !82
  %417 = or i64 %416, %391
  store i64 %417, ptr %415, align 8, !tbaa !82
  %418 = load i32, ptr %10, align 4, !tbaa !50
  %419 = load ptr, ptr %9, align 8, !tbaa !35
  %420 = icmp eq ptr %419, null
  br i1 %420, label %660, label %421

421:                                              ; preds = %414, %432
  %422 = phi ptr [ %433, %432 ], [ %419, %414 ]
  %423 = getelementptr inbounds %struct.btr_user_s, ptr %422, i64 0, i32 4
  %424 = load ptr, ptr %423, align 8, !tbaa !123
  %425 = icmp eq ptr %424, null
  br i1 %425, label %432, label %426

426:                                              ; preds = %421
  %427 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1
  %428 = load i32, ptr %427, align 8, !tbaa !46
  %429 = icmp eq i32 %428, %418
  br i1 %429, label %430, label %432

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.btr_user_s, ptr %422, i64 0, i32 7
  store i8 1, ptr %431, align 8, !tbaa !125
  br label %432

432:                                              ; preds = %430, %426, %421
  %433 = load ptr, ptr %422, align 8, !tbaa !35
  %434 = icmp eq ptr %433, null
  br i1 %434, label %660, label %421, !llvm.loop !126

435:                                              ; preds = %202
  %436 = load ptr, ptr @cfun, align 8, !tbaa !35
  %437 = getelementptr inbounds %struct.function, ptr %436, i64 0, i32 20
  %438 = load i32, ptr %437, align 8
  %439 = and i32 %438, 1048576
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %467, label %441

441:                                              ; preds = %435
  %442 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 1
  %443 = load ptr, ptr %442, align 8, !tbaa !46
  %444 = load i32, ptr %443, align 8
  %445 = and i32 %444, 65535
  %446 = icmp eq i32 %445, 19
  br i1 %446, label %447, label %467

447:                                              ; preds = %441
  %448 = load ptr, ptr %9, align 8, !tbaa !35
  %449 = icmp eq ptr %448, null
  br i1 %449, label %460, label %450

450:                                              ; preds = %447, %457
  %451 = phi ptr [ %458, %457 ], [ %448, %447 ]
  %452 = getelementptr inbounds %struct.btr_user_s, ptr %451, i64 0, i32 4
  %453 = load ptr, ptr %452, align 8, !tbaa !123
  %454 = icmp eq ptr %453, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %450
  %456 = getelementptr inbounds %struct.btr_user_s, ptr %451, i64 0, i32 7
  store i8 1, ptr %456, align 8, !tbaa !125
  br label %457

457:                                              ; preds = %455, %450
  %458 = load ptr, ptr %451, align 8, !tbaa !35
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %450, !llvm.loop !127

460:                                              ; preds = %457, %447
  %461 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %462 = load i64, ptr %153, align 8, !tbaa !119
  %463 = or i64 %462, %461
  store i64 %463, ptr %153, align 8, !tbaa !119
  %464 = load i64, ptr %152, align 8, !tbaa !88
  %465 = or i64 %464, %461
  store i64 %465, ptr %152, align 8, !tbaa !88
  %466 = load ptr, ptr %150, align 8, !tbaa !86
  call void @sbitmap_zero(ptr noundef %466) #18
  br label %660

467:                                              ; preds = %441, %435
  %468 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %469, ptr %7, align 8, !tbaa !35
  %470 = call i32 @for_each_rtx(ptr noundef nonnull %7, ptr noundef nonnull @find_btr_reference, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %602, label %472

472:                                              ; preds = %467
  %473 = load ptr, ptr %468, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %473, ptr %6, align 8, !tbaa !35
  %474 = call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @find_btr_reference, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %475 = icmp eq i32 %474, 0
  %476 = load ptr, ptr @btr_reference_found, align 8
  %477 = icmp eq ptr %476, null
  %478 = select i1 %475, i1 true, i1 %477
  br i1 %478, label %484, label %479

479:                                              ; preds = %472
  %480 = load ptr, ptr %468, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %480, ptr %5, align 8, !tbaa !35
  %481 = call i32 @for_each_rtx(ptr noundef nonnull %5, ptr noundef nonnull @find_btr_reference, ptr noundef %476) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %482 = icmp eq i32 %481, 0
  %483 = select i1 %482, ptr %476, ptr null
  br label %484

484:                                              ; preds = %479, %472
  %485 = phi ptr [ %483, %479 ], [ null, %472 ]
  %486 = icmp eq ptr %485, null
  br i1 %486, label %489, label %487

487:                                              ; preds = %484
  %488 = load ptr, ptr %485, align 8, !tbaa !35
  br label %489

489:                                              ; preds = %487, %484
  %490 = phi ptr [ %488, %487 ], [ null, %484 ]
  store i64 56, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %491 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !95
  %492 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %493 = ptrtoint ptr %491 to i64
  %494 = ptrtoint ptr %492 to i64
  %495 = sub i64 %493, %494
  %496 = icmp slt i64 %495, 56
  br i1 %496, label %497, label %498

497:                                              ; preds = %489
  call void @_obstack_newchunk(ptr noundef nonnull @migrate_btrl_obstack, i32 noundef 56) #18
  br label %498

498:                                              ; preds = %497, %489
  %499 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %500 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %501 = getelementptr inbounds i8, ptr %500, i64 %499
  store ptr %501, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %502 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !97
  %503 = icmp eq ptr %501, %502
  br i1 %503, label %504, label %507

504:                                              ; preds = %498
  %505 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  %506 = or i8 %505, 2
  store i8 %506, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 10), align 8
  br label %507

507:                                              ; preds = %504, %498
  %508 = ptrtoint ptr %502 to i64
  store i64 %508, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %509 = ptrtoint ptr %501 to i64
  %510 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 6), align 8, !tbaa !98
  %511 = sext i32 %510 to i64
  %512 = add nsw i64 %511, %509
  %513 = xor i32 %510, -1
  %514 = sext i32 %513 to i64
  %515 = and i64 %512, %514
  %516 = inttoptr i64 %515 to ptr
  store ptr %516, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  %517 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !99
  %518 = ptrtoint ptr %517 to i64
  %519 = sub i64 %515, %518
  %520 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !95
  %521 = ptrtoint ptr %520 to i64
  %522 = sub i64 %521, %518
  %523 = icmp sgt i64 %519, %522
  %524 = select i1 %523, ptr %520, ptr %516
  store ptr %524, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8
  store ptr %524, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !97
  %525 = getelementptr inbounds %struct.btr_user_s, ptr %502, i64 0, i32 1
  store ptr %161, ptr %525, align 8, !tbaa !128
  %526 = getelementptr inbounds %struct.btr_user_s, ptr %502, i64 0, i32 2
  store i32 %196, ptr %526, align 8, !tbaa !129
  %527 = getelementptr inbounds %struct.btr_user_s, ptr %502, i64 0, i32 3
  store ptr %195, ptr %527, align 8, !tbaa !130
  %528 = getelementptr inbounds %struct.btr_user_s, ptr %502, i64 0, i32 4
  store ptr %490, ptr %528, align 8, !tbaa !123
  %529 = getelementptr inbounds %struct.btr_user_s, ptr %502, i64 0, i32 7
  store i8 0, ptr %529, align 8, !tbaa !125
  store ptr null, ptr %502, align 8, !tbaa !131
  %530 = getelementptr inbounds %struct.btr_user_s, ptr %502, i64 0, i32 5
  store i32 0, ptr %530, align 8, !tbaa !132
  %531 = getelementptr inbounds %struct.btr_user_s, ptr %502, i64 0, i32 6
  store i32 -1, ptr %531, align 4, !tbaa !133
  %532 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %533 = icmp eq ptr %532, null
  br i1 %533, label %546, label %534

534:                                              ; preds = %507
  %535 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %536 = load i32, ptr %535, align 8, !tbaa !80
  %537 = load i32, ptr %203, align 8, !tbaa !46
  %538 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %532, ptr noundef nonnull @.str.9, i32 noundef %536, i32 noundef %537)
  %539 = load ptr, ptr %528, align 8, !tbaa !123
  %540 = icmp eq ptr %539, null
  br i1 %540, label %546, label %541

541:                                              ; preds = %534
  %542 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %543 = getelementptr inbounds %struct.rtx_def, ptr %539, i64 0, i32 1
  %544 = load i32, ptr %543, align 8, !tbaa !46
  %545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %542, ptr noundef nonnull @.str.10, i32 noundef %544)
  br label %546

546:                                              ; preds = %541, %534, %507
  %547 = sext i32 %204 to i64
  %548 = getelementptr inbounds ptr, ptr %115, i64 %547
  store ptr %502, ptr %548, align 8, !tbaa !35
  %549 = load ptr, ptr %528, align 8, !tbaa !123
  %550 = icmp eq ptr %549, null
  br i1 %550, label %558, label %551

551:                                              ; preds = %546
  %552 = getelementptr inbounds %struct.rtx_def, ptr %549, i64 0, i32 1
  %553 = load i32, ptr %552, align 8, !tbaa !46
  %554 = zext nneg i32 %553 to i64
  %555 = shl nuw i64 1, %554
  %556 = load i64, ptr %152, align 8, !tbaa !88
  %557 = or i64 %555, %556
  store i64 %557, ptr %152, align 8, !tbaa !88
  br label %600

558:                                              ; preds = %546
  %559 = load i32, ptr @first_btr, align 4, !tbaa !50
  %560 = load i32, ptr @last_btr, align 4, !tbaa !50
  %561 = icmp sgt i32 %559, %560
  br i1 %561, label %598, label %562

562:                                              ; preds = %558, %594
  %563 = phi i32 [ %595, %594 ], [ %559, %558 ]
  %564 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %565 = zext nneg i32 %563 to i64
  %566 = shl nuw i64 1, %565
  %567 = and i64 %564, %566
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %594, label %569

569:                                              ; preds = %562
  %570 = add nsw i32 %563, 1
  %571 = load ptr, ptr %527, align 8, !tbaa !130
  %572 = call i32 @refers_to_regno_p(i32 noundef %563, i32 noundef %570, ptr noundef %571, ptr noundef null) #18
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %594, label %574

574:                                              ; preds = %569
  %575 = load ptr, ptr %9, align 8, !tbaa !35
  %576 = icmp eq ptr %575, null
  br i1 %576, label %591, label %577

577:                                              ; preds = %574, %588
  %578 = phi ptr [ %589, %588 ], [ %575, %574 ]
  %579 = getelementptr inbounds %struct.btr_user_s, ptr %578, i64 0, i32 4
  %580 = load ptr, ptr %579, align 8, !tbaa !123
  %581 = icmp eq ptr %580, null
  br i1 %581, label %588, label %582

582:                                              ; preds = %577
  %583 = getelementptr inbounds %struct.rtx_def, ptr %580, i64 0, i32 1
  %584 = load i32, ptr %583, align 8, !tbaa !46
  %585 = icmp eq i32 %584, %563
  br i1 %585, label %586, label %588

586:                                              ; preds = %582
  %587 = getelementptr inbounds %struct.btr_user_s, ptr %578, i64 0, i32 7
  store i8 1, ptr %587, align 8, !tbaa !125
  br label %588

588:                                              ; preds = %586, %582, %577
  %589 = load ptr, ptr %578, align 8, !tbaa !35
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %577, !llvm.loop !126

591:                                              ; preds = %588, %574
  %592 = load i64, ptr %152, align 8, !tbaa !88
  %593 = or i64 %592, %566
  store i64 %593, ptr %152, align 8, !tbaa !88
  br label %594

594:                                              ; preds = %591, %569, %562
  %595 = add nsw i32 %563, 1
  %596 = load i32, ptr @last_btr, align 4, !tbaa !50
  %597 = icmp slt i32 %563, %596
  br i1 %597, label %562, label %598, !llvm.loop !134

598:                                              ; preds = %594, %558
  %599 = load ptr, ptr %468, align 8, !tbaa !46
  call void @note_stores(ptr noundef %599, ptr noundef nonnull @note_btr_set, ptr noundef nonnull %9) #18
  br label %600

600:                                              ; preds = %598, %551
  %601 = load ptr, ptr %9, align 8, !tbaa !84
  store ptr %601, ptr %502, align 8, !tbaa !131
  store ptr %502, ptr %9, align 8, !tbaa !84
  br label %602

602:                                              ; preds = %600, %467
  %603 = load i32, ptr %195, align 8
  %604 = and i32 %603, 65535
  %605 = icmp eq i32 %604, 10
  br i1 %605, label %606, label %660

606:                                              ; preds = %602
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11)
  %607 = load ptr, ptr %468, align 8, !tbaa !46
  %608 = load i32, ptr %607, align 8
  %609 = and i32 %608, 65535
  %610 = icmp eq i32 %609, 15
  br i1 %610, label %611, label %637

611:                                              ; preds = %606
  %612 = getelementptr inbounds %struct.rtx_def, ptr %607, i64 0, i32 1
  %613 = load ptr, ptr %612, align 8, !tbaa !46
  %614 = load i32, ptr %613, align 8, !tbaa !135
  %615 = load i64, ptr %11, align 8, !tbaa !82
  %616 = icmp sgt i32 %614, 0
  br i1 %616, label %617, label %634

617:                                              ; preds = %611
  %618 = load i64, ptr @call_used_reg_set, align 8
  %619 = xor i64 %618, -1
  %620 = zext nneg i32 %614 to i64
  br label %621

621:                                              ; preds = %617, %621
  %622 = phi i64 [ %620, %617 ], [ %625, %621 ]
  %623 = phi ptr [ @call_used_reg_set, %617 ], [ %632, %621 ]
  %624 = phi i64 [ %615, %617 ], [ %631, %621 ]
  %625 = add nsw i64 %622, -1
  %626 = getelementptr inbounds %struct.rtvec_def, ptr %613, i64 0, i32 1, i64 %625
  %627 = load ptr, ptr %626, align 8, !tbaa !35
  %628 = load i32, ptr %627, align 8
  %629 = and i32 %628, 65535
  %630 = icmp eq i32 %629, 27
  %631 = select i1 %630, i64 %619, i64 %624
  %632 = select i1 %630, ptr %11, ptr %623
  %633 = icmp sgt i64 %622, 1
  br i1 %633, label %621, label %634, !llvm.loop !137

634:                                              ; preds = %621, %611
  %635 = phi i64 [ %615, %611 ], [ %631, %621 ]
  %636 = phi ptr [ @call_used_reg_set, %611 ], [ %632, %621 ]
  store i64 %635, ptr %11, align 8, !tbaa !82
  br label %637

637:                                              ; preds = %634, %606
  %638 = phi ptr [ @call_used_reg_set, %606 ], [ %636, %634 ]
  %639 = load i32, ptr @first_btr, align 4, !tbaa !50
  store i32 %639, ptr %10, align 4, !tbaa !50
  %640 = load i32, ptr @last_btr, align 4, !tbaa !50
  %641 = icmp sgt i32 %639, %640
  br i1 %641, label %659, label %642

642:                                              ; preds = %637, %654
  %643 = phi i32 [ %656, %654 ], [ %639, %637 ]
  %644 = load i64, ptr %638, align 8, !tbaa !82
  %645 = zext nneg i32 %643 to i64
  %646 = shl nuw i64 1, %645
  %647 = and i64 %644, %646
  %648 = icmp eq i64 %647, 0
  br i1 %648, label %654, label %649

649:                                              ; preds = %642
  %650 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %651 = sext i32 %643 to i64
  %652 = getelementptr inbounds ptr, ptr %650, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !35
  call void @note_btr_set(ptr noundef %653, ptr poison, ptr noundef nonnull %9)
  br label %654

654:                                              ; preds = %649, %642
  %655 = load i32, ptr %10, align 4, !tbaa !50
  %656 = add nsw i32 %655, 1
  store i32 %656, ptr %10, align 4, !tbaa !50
  %657 = load i32, ptr @last_btr, align 4, !tbaa !50
  %658 = icmp slt i32 %655, %657
  br i1 %658, label %642, label %659, !llvm.loop !138

659:                                              ; preds = %654, %637
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11)
  br label %660

660:                                              ; preds = %432, %414, %659, %602, %460
  %661 = phi ptr [ %197, %460 ], [ %197, %659 ], [ %197, %602 ], [ %225, %414 ], [ %225, %432 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  br label %662

662:                                              ; preds = %660, %194
  %663 = phi ptr [ %661, %660 ], [ %197, %194 ]
  %664 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1, i32 0, i32 0, i64 2
  %665 = add nsw i32 %196, 1
  %666 = load ptr, ptr %664, align 8, !tbaa !46
  %667 = icmp eq ptr %666, %191
  br i1 %667, label %668, label %194, !llvm.loop !139

668:                                              ; preds = %662, %185
  %669 = phi i32 [ %157, %185 ], [ %665, %662 ]
  %670 = load i64, ptr %152, align 8, !tbaa !88
  %671 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %672 = getelementptr inbounds i64, ptr %671, i64 %155
  store i64 %670, ptr %672, align 8, !tbaa !82
  %673 = load i64, ptr %153, align 8, !tbaa !119
  %674 = getelementptr inbounds i64, ptr %133, i64 %155
  store i64 %673, ptr %674, align 8, !tbaa !82
  %675 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %676 = getelementptr inbounds i64, ptr %675, i64 %155
  store i64 0, ptr %676, align 8, !tbaa !82
  %677 = call ptr @df_get_live_out(ptr noundef %161) #18
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %676, ptr noundef %677) #18
  %678 = load ptr, ptr %186, align 8, !tbaa !46
  %679 = getelementptr inbounds %struct.rtl_bb_info, ptr %678, i64 0, i32 1
  %680 = load ptr, ptr %678, align 8, !tbaa !140
  %681 = load ptr, ptr %679, align 8, !tbaa !46
  %682 = icmp eq ptr %681, %680
  br i1 %682, label %693, label %683

683:                                              ; preds = %668, %689
  %684 = phi ptr [ %691, %689 ], [ %681, %668 ]
  %685 = load i32, ptr %684, align 8
  %686 = and i32 %685, 65535
  %687 = add nsw i32 %686, -7
  %688 = icmp ult i32 %687, 4
  br i1 %688, label %693, label %689

689:                                              ; preds = %683
  %690 = getelementptr inbounds %struct.rtx_def, ptr %684, i64 0, i32 1, i32 0, i32 0, i64 1
  %691 = load ptr, ptr %690, align 8, !tbaa !46
  %692 = icmp eq ptr %691, %680
  br i1 %692, label %693, label %683, !llvm.loop !141

693:                                              ; preds = %689, %683, %668
  %694 = phi ptr [ %681, %668 ], [ %691, %689 ], [ %684, %683 ]
  %695 = call zeroext i8 @can_throw_internal(ptr noundef %694) #18
  %696 = icmp eq i8 %695, 0
  br i1 %696, label %705, label %697

697:                                              ; preds = %693
  %698 = load i64, ptr @call_used_reg_set, align 8, !tbaa !82
  %699 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %700 = and i64 %699, %698
  %701 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %702 = getelementptr inbounds i64, ptr %701, i64 %155
  %703 = load i64, ptr %702, align 8, !tbaa !82
  %704 = or i64 %703, %700
  store i64 %704, ptr %702, align 8, !tbaa !82
  br label %709

705:                                              ; preds = %693
  %706 = load i32, ptr %694, align 8
  %707 = and i32 %706, 65535
  %708 = icmp eq i32 %707, 9
  br i1 %708, label %709, label %728

709:                                              ; preds = %705, %697
  %710 = load i32, ptr @first_btr, align 4, !tbaa !50
  %711 = load i32, ptr @last_btr, align 4, !tbaa !50
  %712 = icmp sgt i32 %710, %711
  br i1 %712, label %728, label %713

713:                                              ; preds = %709, %725
  %714 = phi i32 [ %715, %725 ], [ %710, %709 ]
  %715 = add nsw i32 %714, 1
  %716 = call i32 @refers_to_regno_p(i32 noundef %714, i32 noundef %715, ptr noundef %694, ptr noundef null) #18
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %725, label %718

718:                                              ; preds = %713
  %719 = zext nneg i32 %714 to i64
  %720 = shl nuw i64 1, %719
  %721 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %722 = getelementptr inbounds i64, ptr %721, i64 %155
  %723 = load i64, ptr %722, align 8, !tbaa !82
  %724 = or i64 %723, %720
  store i64 %724, ptr %722, align 8, !tbaa !82
  br label %725

725:                                              ; preds = %718, %713
  %726 = load i32, ptr @last_btr, align 4, !tbaa !50
  %727 = icmp slt i32 %714, %726
  br i1 %727, label %713, label %728, !llvm.loop !142

728:                                              ; preds = %725, %709, %705
  %729 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %730 = icmp eq ptr %729, null
  br i1 %730, label %733, label %731

731:                                              ; preds = %728
  %732 = trunc i64 %155 to i32
  call fastcc void @dump_btrs_live(i32 noundef %732)
  br label %733

733:                                              ; preds = %731, %728
  %734 = add nuw nsw i64 %155, 1
  %735 = load ptr, ptr @cfun, align 8, !tbaa !35
  %736 = getelementptr inbounds %struct.function, ptr %735, i64 0, i32 1
  %737 = load ptr, ptr %736, align 8, !tbaa !72
  %738 = getelementptr inbounds %struct.control_flow_graph, ptr %737, i64 0, i32 5
  %739 = load i32, ptr %738, align 8, !tbaa !74
  %740 = sext i32 %739 to i64
  %741 = icmp slt i64 %734, %740
  br i1 %741, label %154, label %742, !llvm.loop !143

742:                                              ; preds = %733, %97
  %743 = phi ptr [ %143, %97 ], [ %735, %733 ]
  %744 = getelementptr inbounds %struct.function, ptr %743, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %745 = load ptr, ptr %744, align 8, !tbaa !72
  %746 = getelementptr inbounds %struct.control_flow_graph, ptr %745, i64 0, i32 5
  %747 = load i32, ptr %746, align 8, !tbaa !74
  %748 = call ptr @sbitmap_vector_alloc(i32 noundef %747, i32 noundef %112) #18
  %749 = load ptr, ptr @cfun, align 8, !tbaa !35
  %750 = getelementptr inbounds %struct.function, ptr %749, i64 0, i32 1
  %751 = load ptr, ptr %750, align 8, !tbaa !72
  %752 = getelementptr inbounds %struct.control_flow_graph, ptr %751, i64 0, i32 5
  %753 = load i32, ptr %752, align 8, !tbaa !74
  call void @sbitmap_vector_zero(ptr noundef %748, i32 noundef %753) #18
  %754 = load ptr, ptr @cfun, align 8, !tbaa !35
  %755 = getelementptr inbounds %struct.function, ptr %754, i64 0, i32 1
  %756 = load ptr, ptr %755, align 8, !tbaa !72
  %757 = getelementptr inbounds %struct.control_flow_graph, ptr %756, i64 0, i32 5
  %758 = load i32, ptr %757, align 8, !tbaa !74
  %759 = icmp sgt i32 %758, 2
  br i1 %759, label %760, label %799

760:                                              ; preds = %742, %790
  %761 = phi i64 [ %791, %790 ], [ 2, %742 ]
  %762 = load i32, ptr @first_btr, align 4, !tbaa !50
  %763 = load i32, ptr @last_btr, align 4, !tbaa !50
  %764 = icmp sgt i32 %762, %763
  br i1 %764, label %790, label %765

765:                                              ; preds = %760
  %766 = getelementptr inbounds i64, ptr %133, i64 %761
  %767 = getelementptr inbounds ptr, ptr %748, i64 %761
  br label %768

768:                                              ; preds = %765, %786
  %769 = phi i32 [ %762, %765 ], [ %787, %786 ]
  %770 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %771 = zext nneg i32 %769 to i64
  %772 = shl nuw i64 1, %771
  %773 = and i64 %770, %772
  %774 = icmp eq i64 %773, 0
  br i1 %774, label %786, label %775

775:                                              ; preds = %768
  %776 = load i64, ptr %766, align 8, !tbaa !82
  %777 = and i64 %776, %772
  %778 = icmp eq i64 %777, 0
  br i1 %778, label %786, label %779

779:                                              ; preds = %775
  %780 = load ptr, ptr %767, align 8, !tbaa !35
  %781 = load i32, ptr @first_btr, align 4, !tbaa !50
  %782 = sub nsw i32 %769, %781
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds ptr, ptr %120, i64 %783
  %785 = load ptr, ptr %784, align 8, !tbaa !35
  call void @sbitmap_a_or_b(ptr noundef %780, ptr noundef %780, ptr noundef %785) #18
  br label %786

786:                                              ; preds = %779, %775, %768
  %787 = add nsw i32 %769, 1
  %788 = load i32, ptr @last_btr, align 4, !tbaa !50
  %789 = icmp slt i32 %769, %788
  br i1 %789, label %768, label %790, !llvm.loop !144

790:                                              ; preds = %786, %760
  %791 = add nuw nsw i64 %761, 1
  %792 = load ptr, ptr @cfun, align 8, !tbaa !35
  %793 = getelementptr inbounds %struct.function, ptr %792, i64 0, i32 1
  %794 = load ptr, ptr %793, align 8, !tbaa !72
  %795 = getelementptr inbounds %struct.control_flow_graph, ptr %794, i64 0, i32 5
  %796 = load i32, ptr %795, align 8, !tbaa !74
  %797 = sext i32 %796 to i64
  %798 = icmp slt i64 %791, %797
  br i1 %798, label %760, label %799, !llvm.loop !145

799:                                              ; preds = %790, %742
  call void @free(ptr noundef %133)
  %800 = load ptr, ptr @cfun, align 8, !tbaa !35
  %801 = getelementptr inbounds %struct.function, ptr %800, i64 0, i32 1
  %802 = load ptr, ptr %801, align 8, !tbaa !72
  %803 = getelementptr inbounds %struct.control_flow_graph, ptr %802, i64 0, i32 5
  %804 = load i32, ptr %803, align 8, !tbaa !74
  %805 = call ptr @sbitmap_vector_alloc(i32 noundef %804, i32 noundef %112) #18
  %806 = call ptr @sbitmap_alloc(i32 noundef %112) #18
  %807 = load ptr, ptr @cfun, align 8, !tbaa !35
  %808 = getelementptr inbounds %struct.function, ptr %807, i64 0, i32 1
  %809 = load ptr, ptr %808, align 8, !tbaa !72
  %810 = getelementptr inbounds %struct.control_flow_graph, ptr %809, i64 0, i32 5
  %811 = load i32, ptr %810, align 8, !tbaa !74
  %812 = icmp sgt i32 %811, 2
  br i1 %812, label %813, label %827

813:                                              ; preds = %799, %813
  %814 = phi i64 [ %819, %813 ], [ 2, %799 ]
  %815 = getelementptr inbounds ptr, ptr %805, i64 %814
  %816 = load ptr, ptr %815, align 8, !tbaa !35
  %817 = getelementptr inbounds ptr, ptr %126, i64 %814
  %818 = load ptr, ptr %817, align 8, !tbaa !35
  call void @sbitmap_copy(ptr noundef %816, ptr noundef %818) #18
  %819 = add nuw nsw i64 %814, 1
  %820 = load ptr, ptr @cfun, align 8, !tbaa !35
  %821 = getelementptr inbounds %struct.function, ptr %820, i64 0, i32 1
  %822 = load ptr, ptr %821, align 8, !tbaa !72
  %823 = getelementptr inbounds %struct.control_flow_graph, ptr %822, i64 0, i32 5
  %824 = load i32, ptr %823, align 8, !tbaa !74
  %825 = sext i32 %824 to i64
  %826 = icmp slt i64 %819, %825
  br i1 %826, label %813, label %827, !llvm.loop !146

827:                                              ; preds = %813, %799
  br label %831

828:                                              ; preds = %838, %831
  %829 = phi i32 [ 0, %831 ], [ %850, %838 ]
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %859, label %831, !llvm.loop !147

831:                                              ; preds = %827, %828
  %832 = load ptr, ptr @cfun, align 8, !tbaa !35
  %833 = getelementptr inbounds %struct.function, ptr %832, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !72
  %835 = getelementptr inbounds %struct.control_flow_graph, ptr %834, i64 0, i32 5
  %836 = load i32, ptr %835, align 8, !tbaa !74
  %837 = icmp sgt i32 %836, 2
  br i1 %837, label %838, label %828

838:                                              ; preds = %831, %838
  %839 = phi i64 [ %851, %838 ], [ 2, %831 ]
  %840 = phi i32 [ %850, %838 ], [ 0, %831 ]
  %841 = trunc i64 %839 to i32
  call void @sbitmap_union_of_preds(ptr noundef %806, ptr noundef %805, i32 noundef %841) #18
  %842 = getelementptr inbounds ptr, ptr %805, i64 %839
  %843 = load ptr, ptr %842, align 8, !tbaa !35
  %844 = getelementptr inbounds ptr, ptr %126, i64 %839
  %845 = load ptr, ptr %844, align 8, !tbaa !35
  %846 = getelementptr inbounds ptr, ptr %748, i64 %839
  %847 = load ptr, ptr %846, align 8, !tbaa !35
  %848 = call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %843, ptr noundef %845, ptr noundef %806, ptr noundef %847) #18
  %849 = zext i8 %848 to i32
  %850 = or i32 %840, %849
  %851 = add nuw nsw i64 %839, 1
  %852 = load ptr, ptr @cfun, align 8, !tbaa !35
  %853 = getelementptr inbounds %struct.function, ptr %852, i64 0, i32 1
  %854 = load ptr, ptr %853, align 8, !tbaa !72
  %855 = getelementptr inbounds %struct.control_flow_graph, ptr %854, i64 0, i32 5
  %856 = load i32, ptr %855, align 8, !tbaa !74
  %857 = sext i32 %856 to i64
  %858 = icmp slt i64 %851, %857
  br i1 %858, label %838, label %828, !llvm.loop !148

859:                                              ; preds = %828
  %860 = load ptr, ptr %806, align 8, !tbaa !120
  call void @free(ptr noundef %860)
  call void @free(ptr noundef %806)
  call void @free(ptr noundef %126)
  call void @free(ptr noundef %748)
  %861 = call ptr @sbitmap_alloc(i32 noundef %112) #18
  %862 = load ptr, ptr @cfun, align 8, !tbaa !35
  %863 = getelementptr inbounds %struct.function, ptr %862, i64 0, i32 1
  %864 = load ptr, ptr %863, align 8, !tbaa !72
  %865 = getelementptr inbounds %struct.control_flow_graph, ptr %864, i64 0, i32 5
  %866 = load i32, ptr %865, align 8, !tbaa !74
  %867 = icmp sgt i32 %866, 2
  br i1 %867, label %868, label %1114

868:                                              ; preds = %859, %1105
  %869 = phi i64 [ %1106, %1105 ], [ 2, %859 ]
  %870 = phi ptr [ %1109, %1105 ], [ %864, %859 ]
  %871 = getelementptr inbounds %struct.control_flow_graph, ptr %870, i64 0, i32 2
  %872 = load ptr, ptr %871, align 8, !tbaa !76
  %873 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %872, i64 0, i32 2, i64 %869
  %874 = load ptr, ptr %873, align 8, !tbaa !35
  %875 = trunc i64 %869 to i32
  call void @sbitmap_union_of_preds(ptr noundef %861, ptr noundef %805, i32 noundef %875) #18
  %876 = getelementptr inbounds %struct.basic_block_def, ptr %874, i64 0, i32 7
  %877 = load ptr, ptr %876, align 8, !tbaa !46
  %878 = getelementptr inbounds %struct.rtl_bb_info, ptr %877, i64 0, i32 1
  %879 = load ptr, ptr %878, align 8, !tbaa !90
  %880 = getelementptr inbounds %struct.rtx_def, ptr %879, i64 0, i32 1, i32 0, i32 0, i64 2
  %881 = load ptr, ptr %880, align 8, !tbaa !46
  %882 = load ptr, ptr %877, align 8, !tbaa !46
  %883 = icmp eq ptr %882, %881
  br i1 %883, label %1105, label %884

884:                                              ; preds = %868, %1101
  %885 = phi ptr [ %1103, %1101 ], [ %882, %868 ]
  %886 = load i32, ptr %885, align 8
  %887 = and i32 %886, 65535
  %888 = add nsw i32 %887, -7
  %889 = icmp ult i32 %888, 4
  br i1 %889, label %890, label %1101

890:                                              ; preds = %884
  %891 = getelementptr inbounds %struct.rtx_def, ptr %885, i64 0, i32 1
  %892 = load i32, ptr %891, align 8, !tbaa !46
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds ptr, ptr %114, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !35
  %896 = getelementptr inbounds ptr, ptr %115, i64 %893
  %897 = load ptr, ptr %896, align 8, !tbaa !35
  %898 = icmp eq ptr %895, null
  br i1 %898, label %932, label %899

899:                                              ; preds = %890
  %900 = getelementptr inbounds %struct.btr_def_s, ptr %895, i64 0, i32 5
  %901 = load i32, ptr %900, align 8, !tbaa !104
  %902 = load i32, ptr @first_btr, align 4, !tbaa !50
  %903 = sub nsw i32 %901, %902
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds ptr, ptr %120, i64 %904
  %906 = load ptr, ptr %905, align 8, !tbaa !35
  call void @sbitmap_difference(ptr noundef %861, ptr noundef %861, ptr noundef %906) #18
  %907 = load ptr, ptr %861, align 8, !tbaa !120
  %908 = icmp eq ptr %907, null
  br i1 %908, label %923, label %909

909:                                              ; preds = %899
  %910 = lshr i32 %892, 6
  %911 = zext nneg i32 %910 to i64
  %912 = getelementptr inbounds %struct.simple_bitmap_def, ptr %861, i64 0, i32 3, i64 %911
  %913 = load i64, ptr %912, align 8, !tbaa !82
  %914 = and i32 %892, 63
  %915 = zext nneg i32 %914 to i64
  %916 = shl nuw i64 1, %915
  %917 = and i64 %913, %916
  %918 = icmp eq i64 %917, 0
  br i1 %918, label %919, label %923

919:                                              ; preds = %909
  %920 = getelementptr inbounds i8, ptr %907, i64 %911
  %921 = load i8, ptr %920, align 1, !tbaa !46
  %922 = add i8 %921, 1
  store i8 %922, ptr %920, align 1, !tbaa !46
  br label %923

923:                                              ; preds = %919, %909, %899
  %924 = and i32 %892, 63
  %925 = zext nneg i32 %924 to i64
  %926 = shl nuw i64 1, %925
  %927 = lshr i32 %892, 6
  %928 = zext nneg i32 %927 to i64
  %929 = getelementptr inbounds %struct.simple_bitmap_def, ptr %861, i64 0, i32 3, i64 %928
  %930 = load i64, ptr %929, align 8, !tbaa !82
  %931 = or i64 %930, %926
  store i64 %931, ptr %929, align 8, !tbaa !82
  br label %932

932:                                              ; preds = %923, %890
  %933 = icmp eq ptr %897, null
  br i1 %933, label %1072, label %934

934:                                              ; preds = %932
  %935 = call ptr @sbitmap_alloc(i32 noundef %112) #18
  %936 = getelementptr inbounds %struct.btr_user_s, ptr %897, i64 0, i32 4
  %937 = load ptr, ptr %936, align 8, !tbaa !123
  %938 = icmp eq ptr %937, null
  br i1 %938, label %947, label %939

939:                                              ; preds = %934
  %940 = getelementptr inbounds %struct.rtx_def, ptr %937, i64 0, i32 1
  %941 = load i32, ptr %940, align 8, !tbaa !46
  %942 = load i32, ptr @first_btr, align 4, !tbaa !50
  %943 = sub i32 %941, %942
  %944 = zext i32 %943 to i64
  %945 = getelementptr inbounds ptr, ptr %120, i64 %944
  %946 = load ptr, ptr %945, align 8, !tbaa !35
  call void @sbitmap_a_and_b(ptr noundef %935, ptr noundef %861, ptr noundef %946) #18
  br label %975

947:                                              ; preds = %934
  call void @sbitmap_zero(ptr noundef %935) #18
  %948 = load i32, ptr @first_btr, align 4, !tbaa !50
  %949 = load i32, ptr @last_btr, align 4, !tbaa !50
  %950 = icmp sgt i32 %948, %949
  br i1 %950, label %975, label %951

951:                                              ; preds = %947
  %952 = getelementptr inbounds %struct.btr_user_s, ptr %897, i64 0, i32 3
  br label %953

953:                                              ; preds = %951, %971
  %954 = phi i32 [ %948, %951 ], [ %972, %971 ]
  %955 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %956 = zext nneg i32 %954 to i64
  %957 = shl nuw i64 1, %956
  %958 = and i64 %955, %957
  %959 = icmp eq i64 %958, 0
  br i1 %959, label %971, label %960

960:                                              ; preds = %953
  %961 = add nsw i32 %954, 1
  %962 = load ptr, ptr %952, align 8, !tbaa !130
  %963 = call i32 @refers_to_regno_p(i32 noundef %954, i32 noundef %961, ptr noundef %962, ptr noundef null) #18
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %971, label %965

965:                                              ; preds = %960
  %966 = load i32, ptr @first_btr, align 4, !tbaa !50
  %967 = sub nsw i32 %954, %966
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds ptr, ptr %120, i64 %968
  %970 = load ptr, ptr %969, align 8, !tbaa !35
  call void @sbitmap_a_or_b_and_c(ptr noundef %935, ptr noundef %935, ptr noundef %861, ptr noundef %970) #18
  br label %971

971:                                              ; preds = %965, %960, %953
  %972 = add nsw i32 %954, 1
  %973 = load i32, ptr @last_btr, align 4, !tbaa !50
  %974 = icmp slt i32 %954, %973
  br i1 %974, label %953, label %975, !llvm.loop !149

975:                                              ; preds = %971, %947, %939
  %976 = getelementptr inbounds %struct.simple_bitmap_def, ptr %935, i64 0, i32 2
  %977 = load i32, ptr %976, align 4, !tbaa !150
  %978 = getelementptr inbounds %struct.simple_bitmap_def, ptr %935, i64 0, i32 3
  %979 = icmp eq i32 %977, 0
  br i1 %979, label %982, label %980

980:                                              ; preds = %975
  %981 = load i64, ptr %978, align 8, !tbaa !82
  br label %982

982:                                              ; preds = %980, %975
  %983 = phi i64 [ %981, %980 ], [ 0, %975 ]
  %984 = getelementptr inbounds %struct.btr_user_s, ptr %897, i64 0, i32 5
  %985 = getelementptr inbounds %struct.btr_user_s, ptr %897, i64 0, i32 6
  %986 = getelementptr inbounds %struct.btr_user_s, ptr %897, i64 0, i32 7
  br label %987

987:                                              ; preds = %1065, %982
  %988 = phi i32 [ 0, %982 ], [ %1069, %1065 ]
  %989 = phi i32 [ 0, %982 ], [ %1028, %1065 ]
  %990 = phi i64 [ %983, %982 ], [ %1068, %1065 ]
  %991 = phi i32 [ 0, %982 ], [ %1030, %1065 ]
  %992 = icmp eq i64 %990, 0
  br i1 %992, label %993, label %1000

993:                                              ; preds = %987
  %994 = add i32 %989, 1
  %995 = call i32 @llvm.umax.i32(i32 %977, i32 %994)
  %996 = add i32 %989, 1
  %997 = icmp ult i32 %996, %977
  br i1 %997, label %1010, label %1025

998:                                              ; preds = %1010
  %999 = shl i32 %1011, 6
  br label %1000

1000:                                             ; preds = %998, %987
  %1001 = phi i32 [ %988, %987 ], [ %999, %998 ]
  %1002 = phi i32 [ %989, %987 ], [ %1011, %998 ]
  %1003 = phi i64 [ %990, %987 ], [ %1014, %998 ]
  %1004 = phi i1 [ %992, %987 ], [ %1015, %998 ]
  %1005 = and i64 %1003, 1
  %1006 = icmp eq i64 %1005, 0
  br i1 %1006, label %1016, label %1025

1007:                                             ; preds = %1010
  %1008 = add i32 %1011, 1
  %1009 = icmp ult i32 %1008, %977
  br i1 %1009, label %1010, label %1023, !llvm.loop !151

1010:                                             ; preds = %993, %1007
  %1011 = phi i32 [ %1008, %1007 ], [ %996, %993 ]
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds i64, ptr %978, i64 %1012
  %1014 = load i64, ptr %1013, align 8, !tbaa !82
  %1015 = icmp eq i64 %1014, 0
  br i1 %1015, label %1007, label %998, !llvm.loop !151

1016:                                             ; preds = %1000, %1016
  %1017 = phi i64 [ %1020, %1016 ], [ %1003, %1000 ]
  %1018 = phi i32 [ %1019, %1016 ], [ %1001, %1000 ]
  %1019 = add i32 %1018, 1
  %1020 = lshr exact i64 %1017, 1
  %1021 = and i64 %1017, 2
  %1022 = icmp eq i64 %1021, 0
  br i1 %1022, label %1016, label %1025, !llvm.loop !152

1023:                                             ; preds = %1007
  %1024 = shl i32 %1011, 6
  br label %1025

1025:                                             ; preds = %1016, %1023, %993, %1000
  %1026 = phi i1 [ %1004, %1000 ], [ %992, %993 ], [ %1015, %1023 ], [ %1004, %1016 ]
  %1027 = phi i32 [ %1001, %1000 ], [ %988, %993 ], [ %1024, %1023 ], [ %1019, %1016 ]
  %1028 = phi i32 [ %1002, %1000 ], [ %995, %993 ], [ %995, %1023 ], [ %1002, %1016 ]
  %1029 = phi i64 [ %1003, %1000 ], [ %990, %993 ], [ %1014, %1023 ], [ %1020, %1016 ]
  %1030 = phi i32 [ %1001, %1000 ], [ %991, %993 ], [ %991, %1023 ], [ %1019, %1016 ]
  br i1 %1026, label %1070, label %1031

1031:                                             ; preds = %1025
  %1032 = zext i32 %1030 to i64
  %1033 = getelementptr inbounds ptr, ptr %114, i64 %1032
  %1034 = load ptr, ptr %1033, align 8, !tbaa !35
  %1035 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1039, label %1037

1037:                                             ; preds = %1031
  %1038 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1035, ptr noundef nonnull @.str.14, i32 noundef %1030, i32 noundef %892)
  br label %1039

1039:                                             ; preds = %1037, %1031
  %1040 = load i32, ptr %984, align 8, !tbaa !132
  %1041 = add nsw i32 %1040, 1
  store i32 %1041, ptr %984, align 8, !tbaa !132
  %1042 = load ptr, ptr %936, align 8, !tbaa !123
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1044, label %1046

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds %struct.btr_def_s, ptr %1034, i64 0, i32 9
  store i8 1, ptr %1045, align 8, !tbaa !107
  br label %1046

1046:                                             ; preds = %1044, %1039
  %1047 = load i32, ptr %985, align 4, !tbaa !133
  %1048 = icmp eq i32 %1047, -1
  br i1 %1048, label %1059, label %1049

1049:                                             ; preds = %1046
  %1050 = getelementptr inbounds %struct.btr_def_s, ptr %1034, i64 0, i32 9
  store i8 1, ptr %1050, align 8, !tbaa !107
  %1051 = sext i32 %1047 to i64
  %1052 = getelementptr inbounds ptr, ptr %114, i64 %1051
  %1053 = load ptr, ptr %1052, align 8, !tbaa !35
  %1054 = getelementptr inbounds %struct.btr_def_s, ptr %1053, i64 0, i32 9
  store i8 1, ptr %1054, align 8, !tbaa !107
  %1055 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1060, label %1057

1057:                                             ; preds = %1049
  %1058 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1055, ptr noundef nonnull @.str.15, i32 noundef %892)
  br label %1060

1059:                                             ; preds = %1046
  store i32 %1030, ptr %985, align 4, !tbaa !133
  br label %1060

1060:                                             ; preds = %1059, %1057, %1049
  %1061 = load i8, ptr %986, align 8, !tbaa !125
  %1062 = icmp eq i8 %1061, 0
  br i1 %1062, label %1065, label %1063

1063:                                             ; preds = %1060
  %1064 = getelementptr inbounds %struct.btr_def_s, ptr %1034, i64 0, i32 11
  store i8 1, ptr %1064, align 2, !tbaa !109
  br label %1065

1065:                                             ; preds = %1063, %1060
  %1066 = getelementptr inbounds %struct.btr_def_s, ptr %1034, i64 0, i32 8
  %1067 = load ptr, ptr %1066, align 8, !tbaa !110
  store ptr %1067, ptr %897, align 8, !tbaa !131
  store ptr %897, ptr %1066, align 8, !tbaa !110
  %1068 = lshr i64 %1029, 1
  %1069 = add i32 %1027, 1
  br label %987, !llvm.loop !153

1070:                                             ; preds = %1025
  %1071 = load ptr, ptr %935, align 8, !tbaa !120
  call void @free(ptr noundef %1071)
  call void @free(ptr noundef %935)
  br label %1072

1072:                                             ; preds = %1070, %932
  %1073 = load i32, ptr %885, align 8
  %1074 = and i32 %1073, 65535
  %1075 = icmp eq i32 %1074, 10
  br i1 %1075, label %1076, label %1101

1076:                                             ; preds = %1072
  %1077 = load i32, ptr @first_btr, align 4, !tbaa !50
  %1078 = load i32, ptr @last_btr, align 4, !tbaa !50
  %1079 = icmp sgt i32 %1077, %1078
  br i1 %1079, label %1101, label %1080

1080:                                             ; preds = %1076, %1097
  %1081 = phi i32 [ %1098, %1097 ], [ %1077, %1076 ]
  %1082 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %1083 = zext nneg i32 %1081 to i64
  %1084 = shl nuw i64 1, %1083
  %1085 = and i64 %1082, %1084
  %1086 = icmp eq i64 %1085, 0
  br i1 %1086, label %1097, label %1087

1087:                                             ; preds = %1080
  %1088 = load i64, ptr @call_used_reg_set, align 8, !tbaa !82
  %1089 = and i64 %1088, %1084
  %1090 = icmp eq i64 %1089, 0
  br i1 %1090, label %1097, label %1091

1091:                                             ; preds = %1087
  %1092 = load i32, ptr @first_btr, align 4, !tbaa !50
  %1093 = sub nsw i32 %1081, %1092
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds ptr, ptr %120, i64 %1094
  %1096 = load ptr, ptr %1095, align 8, !tbaa !35
  call void @sbitmap_difference(ptr noundef %861, ptr noundef %861, ptr noundef %1096) #18
  br label %1097

1097:                                             ; preds = %1091, %1087, %1080
  %1098 = add nsw i32 %1081, 1
  %1099 = load i32, ptr @last_btr, align 4, !tbaa !50
  %1100 = icmp slt i32 %1081, %1099
  br i1 %1100, label %1080, label %1101, !llvm.loop !154

1101:                                             ; preds = %1097, %1076, %1072, %884
  %1102 = getelementptr inbounds %struct.rtx_def, ptr %885, i64 0, i32 1, i32 0, i32 0, i64 2
  %1103 = load ptr, ptr %1102, align 8, !tbaa !46
  %1104 = icmp eq ptr %1103, %881
  br i1 %1104, label %1105, label %884, !llvm.loop !155

1105:                                             ; preds = %1101, %868
  %1106 = add nuw nsw i64 %869, 1
  %1107 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1108 = getelementptr inbounds %struct.function, ptr %1107, i64 0, i32 1
  %1109 = load ptr, ptr %1108, align 8, !tbaa !72
  %1110 = getelementptr inbounds %struct.control_flow_graph, ptr %1109, i64 0, i32 5
  %1111 = load i32, ptr %1110, align 8, !tbaa !74
  %1112 = sext i32 %1111 to i64
  %1113 = icmp slt i64 %1106, %1112
  br i1 %1113, label %868, label %1114, !llvm.loop !156

1114:                                             ; preds = %1105, %859
  %1115 = load ptr, ptr %861, align 8, !tbaa !120
  call void @free(ptr noundef %1115)
  call void @free(ptr noundef %861)
  call void @free(ptr noundef %805)
  call void @free(ptr noundef %120)
  call void @free(ptr noundef %115)
  call void @free(ptr noundef %114)
  %1116 = call i32 @fibheap_empty(ptr noundef %31) #18
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1118, label %1764

1118:                                             ; preds = %1114, %1761
  %1119 = call ptr @fibheap_extract_min(ptr noundef %31) #18
  %1120 = call i64 @fibheap_min_key(ptr noundef %31) #18
  %1121 = trunc i64 %1120 to i32
  %1122 = sub i32 0, %1121
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %1123 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1133, label %1125

1125:                                             ; preds = %1118
  %1126 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 4
  %1127 = load ptr, ptr %1126, align 8, !tbaa !103
  %1128 = getelementptr inbounds %struct.rtx_def, ptr %1127, i64 0, i32 1
  %1129 = load i32, ptr %1128, align 8, !tbaa !46
  %1130 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 6
  %1131 = load i32, ptr %1130, align 4, !tbaa !106
  %1132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1123, ptr noundef nonnull @.str.16, i32 noundef %1129, i32 noundef %1131, i32 noundef %1122)
  br label %1133

1133:                                             ; preds = %1125, %1118
  %1134 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 7
  %1135 = load ptr, ptr %1134, align 8, !tbaa !117
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1141, label %1137

1137:                                             ; preds = %1133
  %1138 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 9
  %1139 = load i8, ptr %1138, align 8, !tbaa !107
  %1140 = icmp eq i8 %1139, 0
  br i1 %1140, label %1146, label %1141

1141:                                             ; preds = %1137, %1133
  %1142 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1740, label %1144

1144:                                             ; preds = %1141
  %1145 = call i64 @fwrite(ptr nonnull @.str.17, i64 20, i64 1, ptr nonnull %1142)
  br label %1740

1146:                                             ; preds = %1137
  %1147 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 8
  %1148 = load ptr, ptr %1147, align 8, !tbaa !110
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1150, label %1155

1150:                                             ; preds = %1146
  %1151 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %1740, label %1153

1153:                                             ; preds = %1150
  %1154 = call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr nonnull %1151)
  br label %1740

1155:                                             ; preds = %1146
  call fastcc void @btr_def_live_range(ptr noundef %1119, ptr noundef nonnull %4)
  %1156 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %1157 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 13
  %1158 = load ptr, ptr %1157, align 8, !tbaa !111
  call void @bitmap_copy(ptr noundef %1156, ptr noundef %1158) #18
  %1159 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 4
  %1160 = load ptr, ptr %1159, align 8, !tbaa !103
  %1161 = call i32 @insn_default_latency(ptr noundef %1160) #18
  %1162 = load i32, ptr @issue_rate, align 4, !tbaa !50
  %1163 = mul nsw i32 %1162, %1161
  %1164 = load ptr, ptr %1147, align 8, !tbaa !35
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1211, label %1166

1166:                                             ; preds = %1155
  %1167 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 2
  %1168 = load ptr, ptr %1167, align 8, !tbaa !100
  %1169 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 3
  %1170 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 7
  br label %1171

1171:                                             ; preds = %1166, %1208
  %1172 = phi ptr [ %1164, %1166 ], [ %1209, %1208 ]
  %1173 = getelementptr inbounds %struct.btr_user_s, ptr %1172, i64 0, i32 1
  %1174 = load ptr, ptr %1173, align 8, !tbaa !128
  %1175 = icmp eq ptr %1174, %1168
  br i1 %1175, label %1176, label %1208

1176:                                             ; preds = %1171
  %1177 = getelementptr inbounds %struct.btr_user_s, ptr %1172, i64 0, i32 2
  %1178 = load i32, ptr %1177, align 8, !tbaa !129
  %1179 = load i32, ptr %1169, align 8, !tbaa !102
  %1180 = icmp sgt i32 %1178, %1179
  br i1 %1180, label %1181, label %1208

1181:                                             ; preds = %1176
  %1182 = add nsw i32 %1179, %1163
  %1183 = icmp sgt i32 %1182, %1178
  br i1 %1183, label %1184, label %1208

1184:                                             ; preds = %1181
  %1185 = load ptr, ptr %1159, align 8, !tbaa !103
  %1186 = sub nsw i32 %1182, %1178
  %1187 = load ptr, ptr %1170, align 8, !tbaa !46
  %1188 = load ptr, ptr %1187, align 8, !tbaa !140
  %1189 = icmp ne ptr %1185, %1188
  %1190 = icmp sgt i32 %1186, 0
  %1191 = select i1 %1189, i1 %1190, i1 false
  br i1 %1191, label %1192, label %1206

1192:                                             ; preds = %1184, %1192
  %1193 = phi i32 [ %1202, %1192 ], [ %1186, %1184 ]
  %1194 = phi ptr [ %1196, %1192 ], [ %1185, %1184 ]
  %1195 = getelementptr inbounds %struct.rtx_def, ptr %1194, i64 0, i32 1, i32 0, i32 0, i64 1
  %1196 = load ptr, ptr %1195, align 8, !tbaa !46
  %1197 = load i32, ptr %1196, align 8
  %1198 = and i32 %1197, 65535
  %1199 = add nsw i32 %1198, -7
  %1200 = icmp ult i32 %1199, 4
  %1201 = sext i1 %1200 to i32
  %1202 = add nsw i32 %1193, %1201
  %1203 = icmp ne ptr %1196, %1188
  %1204 = icmp sgt i32 %1202, 0
  %1205 = select i1 %1203, i1 %1204, i1 false
  br i1 %1205, label %1192, label %1206, !llvm.loop !157

1206:                                             ; preds = %1192, %1184
  %1207 = phi i1 [ %1190, %1184 ], [ %1204, %1192 ]
  br i1 %1207, label %1211, label %1208

1208:                                             ; preds = %1206, %1181, %1176, %1171
  %1209 = load ptr, ptr %1172, align 8, !tbaa !35
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1211, label %1171, !llvm.loop !158

1211:                                             ; preds = %1208, %1206, %1155
  %1212 = phi i32 [ 0, %1155 ], [ 0, %1208 ], [ 1, %1206 ]
  %1213 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 2
  %1214 = load ptr, ptr %1213, align 8, !tbaa !100
  %1215 = getelementptr inbounds %struct.basic_block_def, ptr %1214, i64 0, i32 11
  %1216 = load i32, ptr %1215, align 8, !tbaa !105
  %1217 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %1214) #18
  %1218 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 6
  %1219 = icmp eq ptr %1217, null
  br i1 %1219, label %1727, label %1220

1220:                                             ; preds = %1211
  %1221 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 5
  %1222 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 3
  %1223 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 11
  %1224 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 10
  %1225 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 12
  %1226 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1227 = getelementptr inbounds %struct.function, ptr %1226, i64 0, i32 1
  %1228 = load ptr, ptr %1227, align 8, !tbaa !72
  %1229 = load ptr, ptr %1228, align 8, !tbaa !159
  %1230 = icmp eq ptr %1217, %1229
  br i1 %1230, label %1727, label %1237

1231:                                             ; preds = %1718
  %1232 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1233 = getelementptr inbounds %struct.function, ptr %1232, i64 0, i32 1
  %1234 = load ptr, ptr %1233, align 8, !tbaa !72
  %1235 = load ptr, ptr %1234, align 8, !tbaa !159
  %1236 = icmp eq ptr %1724, %1235
  br i1 %1236, label %1727, label %1237, !llvm.loop !160

1237:                                             ; preds = %1220, %1231
  %1238 = phi i32 [ %1719, %1231 ], [ 0, %1220 ]
  %1239 = phi i32 [ %1721, %1231 ], [ 0, %1220 ]
  %1240 = phi ptr [ %1724, %1231 ], [ %1217, %1220 ]
  %1241 = phi i32 [ %1722, %1231 ], [ %1216, %1220 ]
  %1242 = phi i32 [ %1723, %1231 ], [ %1212, %1220 ]
  %1243 = load i32, ptr %1218, align 4, !tbaa !106
  %1244 = icmp slt i32 %1243, %1122
  br i1 %1244, label %1727, label %1245

1245:                                             ; preds = %1237
  %1246 = getelementptr inbounds %struct.basic_block_def, ptr %1240, i64 0, i32 11
  %1247 = load i32, ptr %1246, align 8, !tbaa !105
  %1248 = getelementptr inbounds %struct.basic_block_def, ptr %1240, i64 0, i32 1
  br label %1249

1249:                                             ; preds = %1276, %1245
  %1250 = phi i32 [ 0, %1245 ], [ %1277, %1276 ]
  %1251 = load ptr, ptr %1248, align 8, !tbaa !35
  %1252 = icmp eq ptr %1251, null
  br i1 %1252, label %1255, label %1253

1253:                                             ; preds = %1249
  %1254 = load i32, ptr %1251, align 8, !tbaa !161
  br label %1255

1255:                                             ; preds = %1253, %1249
  %1256 = phi i32 [ %1254, %1253 ], [ 0, %1249 ]
  %1257 = icmp eq i32 %1256, %1250
  br i1 %1257, label %1262, label %1258

1258:                                             ; preds = %1255
  %1259 = zext i32 %1250 to i64
  %1260 = getelementptr inbounds %struct.VEC_edge_base, ptr %1251, i64 0, i32 2, i64 %1259
  %1261 = load ptr, ptr %1260, align 8, !tbaa !35
  br label %1262

1262:                                             ; preds = %1258, %1255
  %1263 = phi ptr [ %1261, %1258 ], [ null, %1255 ]
  br i1 %1257, label %1278, label %1264

1264:                                             ; preds = %1262
  %1265 = getelementptr inbounds %struct.edge_def, ptr %1263, i64 0, i32 7
  %1266 = load i32, ptr %1265, align 8, !tbaa !163
  %1267 = and i32 %1266, 14
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1269, label %1278

1269:                                             ; preds = %1264
  br i1 %1252, label %1272, label %1270

1270:                                             ; preds = %1269
  %1271 = load i32, ptr %1251, align 8, !tbaa !161
  br label %1272

1272:                                             ; preds = %1270, %1269
  %1273 = phi i32 [ %1271, %1270 ], [ 0, %1269 ]
  %1274 = icmp ult i32 %1250, %1273
  br i1 %1274, label %1276, label %1275

1275:                                             ; preds = %1272
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 738, ptr noundef nonnull @.str.5) #18
  br label %1276

1276:                                             ; preds = %1275, %1272
  %1277 = add i32 %1250, 1
  br label %1249, !llvm.loop !165

1278:                                             ; preds = %1264, %1262
  %1279 = icmp eq ptr %1263, null
  br i1 %1279, label %1280, label %1718

1280:                                             ; preds = %1278
  %1281 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1287, label %1283

1283:                                             ; preds = %1280
  %1284 = getelementptr inbounds %struct.basic_block_def, ptr %1240, i64 0, i32 9
  %1285 = load i32, ptr %1284, align 8, !tbaa !80
  %1286 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1281, ptr noundef nonnull @.str.19, i32 noundef %1285)
  br label %1287

1287:                                             ; preds = %1283, %1280
  %1288 = icmp slt i32 %1247, %1241
  br i1 %1288, label %1293, label %1289

1289:                                             ; preds = %1287
  %1290 = icmp eq i32 %1247, %1241
  %1291 = icmp ne i32 %1242, 0
  %1292 = select i1 %1290, i1 %1291, i1 false
  br i1 %1292, label %1293, label %1718

1293:                                             ; preds = %1289, %1287
  %1294 = load ptr, ptr %1213, align 8, !tbaa !100
  %1295 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !50
  call fastcc void @augment_live_range(ptr noundef %1156, ptr noundef nonnull %4, ptr noundef %1294, ptr noundef nonnull %1240, i32 noundef %1295)
  %1296 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1297 = icmp eq ptr %1296, null
  br i1 %1297, label %1316, label %1298

1298:                                             ; preds = %1293
  %1299 = call i64 @fwrite(ptr nonnull @.str.20, i64 28, i64 1, ptr nonnull %1296)
  %1300 = load i64, ptr %4, align 8, !tbaa !82
  br label %1301

1301:                                             ; preds = %1298, %1310
  %1302 = phi i64 [ 0, %1298 ], [ %1311, %1310 ]
  %1303 = shl nuw i64 1, %1302
  %1304 = and i64 %1303, %1300
  %1305 = icmp eq i64 %1304, 0
  br i1 %1305, label %1310, label %1306

1306:                                             ; preds = %1301
  %1307 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1308 = trunc i64 %1302 to i32
  %1309 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1307, ptr noundef nonnull @.str.13, i32 noundef %1308)
  br label %1310

1310:                                             ; preds = %1306, %1301
  %1311 = add nuw nsw i64 %1302, 1
  %1312 = icmp eq i64 %1311, 53
  br i1 %1312, label %1313, label %1301, !llvm.loop !166

1313:                                             ; preds = %1310
  %1314 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1315 = call i32 @fputc(i32 10, ptr %1314)
  br label %1316

1316:                                             ; preds = %1313, %1293
  %1317 = load i64, ptr %4, align 8, !tbaa !82
  %1318 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %1319 = xor i64 %1317, -1
  %1320 = and i64 %1318, %1319
  %1321 = icmp eq i64 %1320, 0
  br i1 %1321, label %1338, label %1325

1322:                                             ; preds = %1325
  %1323 = add nuw nsw i64 %1326, 1
  %1324 = icmp eq i64 %1323, 53
  br i1 %1324, label %1338, label %1325, !llvm.loop !167

1325:                                             ; preds = %1316, %1322
  %1326 = phi i64 [ %1323, %1322 ], [ 0, %1316 ]
  %1327 = phi i32 [ %1337, %1322 ], [ undef, %1316 ]
  %1328 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %1326
  %1329 = load i32, ptr %1328, align 4, !tbaa !50
  %1330 = zext nneg i32 %1329 to i64
  %1331 = shl nuw i64 1, %1330
  %1332 = and i64 %1331, %1318
  %1333 = icmp eq i64 %1332, 0
  %1334 = and i64 %1331, %1317
  %1335 = icmp ne i64 %1334, 0
  %1336 = or i1 %1333, %1335
  %1337 = select i1 %1336, i32 %1327, i32 %1329
  br i1 %1336, label %1322, label %1338

1338:                                             ; preds = %1322, %1325, %1316
  %1339 = phi i32 [ -1, %1316 ], [ %1337, %1325 ], [ -1, %1322 ]
  %1340 = icmp eq i32 %1339, -1
  br i1 %1340, label %1713, label %1341

1341:                                             ; preds = %1338
  %1342 = getelementptr inbounds %struct.basic_block_def, ptr %1240, i64 0, i32 7
  %1343 = load ptr, ptr %1342, align 8, !tbaa !46
  %1344 = load ptr, ptr %1343, align 8, !tbaa !140
  %1345 = load ptr, ptr %1159, align 8, !tbaa !103
  %1346 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1347 = icmp eq ptr %1346, null
  br i1 %1347, label %1352, label %1348

1348:                                             ; preds = %1341
  %1349 = getelementptr inbounds %struct.basic_block_def, ptr %1240, i64 0, i32 9
  %1350 = load i32, ptr %1349, align 8, !tbaa !80
  %1351 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1346, ptr noundef nonnull @.str.27, i32 noundef %1350, i32 noundef %1339)
  br label %1352

1352:                                             ; preds = %1348, %1341
  call fastcc void @clear_btr_from_live_range(ptr noundef %1119)
  store i32 %1339, ptr %1221, align 8, !tbaa !104
  store ptr %1240, ptr %1213, align 8, !tbaa !100
  store i32 0, ptr %1222, align 8, !tbaa !102
  %1353 = load i32, ptr %1246, align 8, !tbaa !105
  store i32 %1353, ptr %1218, align 4, !tbaa !106
  %1354 = load ptr, ptr %1157, align 8, !tbaa !111
  call void @bitmap_copy(ptr noundef %1354, ptr noundef %1156) #18
  %1355 = load ptr, ptr %1134, align 8, !tbaa !117
  %1356 = getelementptr inbounds %struct.btr_def_group_s, ptr %1355, i64 0, i32 2
  %1357 = load i64, ptr %4, align 8, !tbaa !82
  %1358 = load ptr, ptr %1356, align 8, !tbaa !35
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %1495, label %1360

1360:                                             ; preds = %1352, %1490
  %1361 = phi ptr [ %1493, %1490 ], [ %1358, %1352 ]
  %1362 = phi i64 [ %1491, %1490 ], [ %1357, %1352 ]
  %1363 = icmp eq ptr %1361, %1119
  br i1 %1363, label %1490, label %1364

1364:                                             ; preds = %1360
  %1365 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 8
  %1366 = load ptr, ptr %1365, align 8, !tbaa !110
  %1367 = icmp eq ptr %1366, null
  br i1 %1367, label %1490, label %1368

1368:                                             ; preds = %1364
  %1369 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 9
  %1370 = load i8, ptr %1369, align 8, !tbaa !107
  %1371 = icmp eq i8 %1370, 0
  br i1 %1371, label %1372, label %1490

1372:                                             ; preds = %1368
  %1373 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 2
  %1374 = load ptr, ptr %1373, align 8, !tbaa !100
  %1375 = load ptr, ptr %1213, align 8, !tbaa !100
  %1376 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1374, ptr noundef %1375) #18
  %1377 = icmp eq i8 %1376, 0
  br i1 %1377, label %1490, label %1378

1378:                                             ; preds = %1372
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %1379 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %1380 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 13
  %1381 = load ptr, ptr %1380, align 8, !tbaa !111
  %1382 = icmp eq ptr %1381, null
  br i1 %1382, label %1383, label %1384

1383:                                             ; preds = %1378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call fastcc void @btr_def_live_range(ptr noundef nonnull %1361, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %1384

1384:                                             ; preds = %1383, %1378
  store i64 %1362, ptr %2, align 8, !tbaa !82
  %1385 = load ptr, ptr %1157, align 8, !tbaa !111
  call void @bitmap_copy(ptr noundef %1379, ptr noundef %1385) #18
  %1386 = load ptr, ptr %1365, align 8, !tbaa !35
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1412, label %1388

1388:                                             ; preds = %1384, %1407
  %1389 = phi ptr [ %1410, %1407 ], [ %1386, %1384 ]
  %1390 = load ptr, ptr %1213, align 8, !tbaa !100
  %1391 = getelementptr inbounds %struct.btr_user_s, ptr %1389, i64 0, i32 1
  %1392 = load ptr, ptr %1391, align 8, !tbaa !128
  %1393 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !50
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1395, label %1407

1395:                                             ; preds = %1388
  %1396 = getelementptr inbounds %struct.btr_user_s, ptr %1389, i64 0, i32 3
  %1397 = load ptr, ptr %1396, align 8, !tbaa !130
  %1398 = getelementptr inbounds %struct.basic_block_def, ptr %1390, i64 0, i32 7
  %1399 = load ptr, ptr %1398, align 8, !tbaa !46
  %1400 = getelementptr inbounds %struct.rtl_bb_info, ptr %1399, i64 0, i32 1
  %1401 = load ptr, ptr %1400, align 8, !tbaa !90
  %1402 = icmp eq ptr %1397, %1401
  br i1 %1402, label %1403, label %1407

1403:                                             ; preds = %1395
  %1404 = load i32, ptr %1397, align 8
  %1405 = and i32 %1404, 65535
  %1406 = icmp ne i32 %1405, 9
  br label %1407

1407:                                             ; preds = %1403, %1395, %1388
  %1408 = phi i1 [ true, %1395 ], [ true, %1388 ], [ %1406, %1403 ]
  %1409 = zext i1 %1408 to i32
  call fastcc void @augment_live_range(ptr noundef %1379, ptr noundef nonnull %2, ptr noundef %1390, ptr noundef %1392, i32 noundef %1409)
  %1410 = load ptr, ptr %1389, align 8, !tbaa !35
  %1411 = icmp eq ptr %1410, null
  br i1 %1411, label %1412, label %1388, !llvm.loop !168

1412:                                             ; preds = %1407, %1384
  %1413 = load i64, ptr %2, align 8, !tbaa !82
  %1414 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %1415 = xor i64 %1413, -1
  %1416 = and i64 %1414, %1415
  %1417 = icmp eq i64 %1416, 0
  br i1 %1417, label %1434, label %1421

1418:                                             ; preds = %1421
  %1419 = add nuw nsw i64 %1422, 1
  %1420 = icmp eq i64 %1419, 53
  br i1 %1420, label %1434, label %1421, !llvm.loop !167

1421:                                             ; preds = %1412, %1418
  %1422 = phi i64 [ %1419, %1418 ], [ 0, %1412 ]
  %1423 = phi i32 [ %1433, %1418 ], [ undef, %1412 ]
  %1424 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %1422
  %1425 = load i32, ptr %1424, align 4, !tbaa !50
  %1426 = zext nneg i32 %1425 to i64
  %1427 = shl nuw i64 1, %1426
  %1428 = and i64 %1427, %1414
  %1429 = icmp eq i64 %1428, 0
  %1430 = and i64 %1427, %1413
  %1431 = icmp ne i64 %1430, 0
  %1432 = or i1 %1429, %1431
  %1433 = select i1 %1432, i32 %1423, i32 %1425
  br i1 %1432, label %1418, label %1434

1434:                                             ; preds = %1418, %1421, %1412
  %1435 = phi i32 [ -1, %1412 ], [ %1433, %1421 ], [ -1, %1418 ]
  %1436 = icmp eq i32 %1435, -1
  br i1 %1436, label %1488, label %1437

1437:                                             ; preds = %1434
  %1438 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1439 = icmp eq ptr %1438, null
  br i1 %1439, label %1449, label %1440

1440:                                             ; preds = %1437
  %1441 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 4
  %1442 = load ptr, ptr %1441, align 8, !tbaa !103
  %1443 = getelementptr inbounds %struct.rtx_def, ptr %1442, i64 0, i32 1
  %1444 = load i32, ptr %1443, align 8, !tbaa !46
  %1445 = load ptr, ptr %1159, align 8, !tbaa !103
  %1446 = getelementptr inbounds %struct.rtx_def, ptr %1445, i64 0, i32 1
  %1447 = load i32, ptr %1446, align 8, !tbaa !46
  %1448 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1438, ptr noundef nonnull @.str.29, i32 noundef %1444, i32 noundef %1447)
  br label %1449

1449:                                             ; preds = %1440, %1437
  store i32 %1435, ptr %1221, align 8, !tbaa !104
  %1450 = load ptr, ptr %1365, align 8, !tbaa !110
  %1451 = icmp eq ptr %1450, null
  br i1 %1451, label %1455, label %1452

1452:                                             ; preds = %1449
  %1453 = load ptr, ptr %1147, align 8, !tbaa !110
  br label %1458

1454:                                             ; preds = %1458
  store ptr %1460, ptr %1147, align 8, !tbaa !110
  br label %1455

1455:                                             ; preds = %1454, %1449
  %1456 = load ptr, ptr %1147, align 8, !tbaa !35
  %1457 = icmp eq ptr %1456, null
  br i1 %1457, label %1474, label %1463

1458:                                             ; preds = %1452, %1458
  %1459 = phi ptr [ %1453, %1452 ], [ %1460, %1458 ]
  %1460 = phi ptr [ %1450, %1452 ], [ %1461, %1458 ]
  %1461 = load ptr, ptr %1460, align 8, !tbaa !131
  store ptr %1459, ptr %1460, align 8, !tbaa !131
  %1462 = icmp eq ptr %1461, null
  br i1 %1462, label %1454, label %1458, !llvm.loop !169

1463:                                             ; preds = %1455, %1463
  %1464 = phi ptr [ %1472, %1463 ], [ %1456, %1455 ]
  %1465 = getelementptr inbounds %struct.btr_user_s, ptr %1464, i64 0, i32 3
  %1466 = load ptr, ptr %1465, align 8, !tbaa !130
  %1467 = getelementptr inbounds %struct.btr_user_s, ptr %1464, i64 0, i32 4
  %1468 = load ptr, ptr %1467, align 8, !tbaa !123
  %1469 = getelementptr inbounds %struct.rtx_def, ptr %1468, i64 0, i32 1
  %1470 = load i32, ptr %1469, align 8, !tbaa !46
  %1471 = call ptr @find_regno_note(ptr noundef %1466, i32 noundef 1, i32 noundef %1470) #18
  call void @remove_note(ptr noundef %1466, ptr noundef %1471) #18
  %1472 = load ptr, ptr %1464, align 8, !tbaa !35
  %1473 = icmp eq ptr %1472, null
  br i1 %1473, label %1474, label %1463, !llvm.loop !170

1474:                                             ; preds = %1463, %1455
  call fastcc void @clear_btr_from_live_range(ptr noundef nonnull %1361)
  store ptr null, ptr %1365, align 8, !tbaa !110
  %1475 = load ptr, ptr %1157, align 8, !tbaa !111
  call void @bitmap_copy(ptr noundef %1475, ptr noundef %1379) #18
  %1476 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 5
  %1477 = load i32, ptr %1476, align 8, !tbaa !104
  %1478 = icmp eq i32 %1477, %1435
  br i1 %1478, label %1479, label %1484

1479:                                             ; preds = %1474
  %1480 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 11
  %1481 = load i8, ptr %1480, align 2, !tbaa !109
  %1482 = icmp eq i8 %1481, 0
  br i1 %1482, label %1484, label %1483

1483:                                             ; preds = %1479
  store i8 1, ptr %1223, align 2, !tbaa !109
  br label %1484

1484:                                             ; preds = %1483, %1479, %1474
  %1485 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 4
  %1486 = load ptr, ptr %1485, align 8, !tbaa !103
  %1487 = call ptr @delete_insn(ptr noundef %1486) #18
  br label %1488

1488:                                             ; preds = %1484, %1434
  %1489 = phi i64 [ %1413, %1484 ], [ %1362, %1434 ]
  call void @bitmap_obstack_free(ptr noundef %1379) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %1490

1490:                                             ; preds = %1488, %1372, %1368, %1364, %1360
  %1491 = phi i64 [ %1489, %1488 ], [ %1362, %1372 ], [ %1362, %1368 ], [ %1362, %1364 ], [ %1362, %1360 ]
  %1492 = getelementptr inbounds %struct.btr_def_s, ptr %1361, i64 0, i32 1
  %1493 = load ptr, ptr %1492, align 8, !tbaa !35
  %1494 = icmp eq ptr %1493, null
  br i1 %1494, label %1495, label %1360, !llvm.loop !171

1495:                                             ; preds = %1490, %1352
  %1496 = phi i64 [ %1357, %1352 ], [ %1491, %1490 ]
  store i64 %1496, ptr %4, align 8, !tbaa !82
  %1497 = load i32, ptr %1221, align 8, !tbaa !104
  %1498 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %1499 = getelementptr inbounds %struct.basic_block_def, ptr %1240, i64 0, i32 9
  %1500 = load i32, ptr %1499, align 8, !tbaa !80
  %1501 = sext i32 %1500 to i64
  %1502 = getelementptr inbounds i64, ptr %1498, i64 %1501
  %1503 = load i64, ptr %1502, align 8, !tbaa !82
  %1504 = zext nneg i32 %1497 to i64
  %1505 = shl nuw i64 1, %1504
  %1506 = and i64 %1503, %1505
  %1507 = icmp ne i64 %1506, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, ptr %1224, align 1, !tbaa !108
  %1509 = load ptr, ptr %1157, align 8, !tbaa !111
  %1510 = load ptr, ptr %1509, align 8, !tbaa !172
  %1511 = icmp eq ptr %1510, null
  %1512 = select i1 %1511, ptr @bitmap_zero_bits, ptr %1510
  %1513 = getelementptr inbounds %struct.bitmap_element_def, ptr %1512, i64 0, i32 2
  %1514 = load i32, ptr %1513, align 8, !tbaa !174
  %1515 = shl i32 %1514, 7
  %1516 = getelementptr inbounds %struct.bitmap_element_def, ptr %1512, i64 0, i32 3
  %1517 = load i64, ptr %1516, align 8, !tbaa !82
  %1518 = icmp eq i64 %1517, 0
  %1519 = zext i1 %1518 to i32
  %1520 = or disjoint i32 %1515, %1519
  br label %1521

1521:                                             ; preds = %1598, %1495
  %1522 = phi i64 [ %1517, %1495 ], [ %1599, %1598 ]
  %1523 = phi i32 [ 0, %1495 ], [ %1578, %1598 ]
  %1524 = phi i32 [ %1520, %1495 ], [ %1600, %1598 ]
  %1525 = phi ptr [ %1512, %1495 ], [ %1580, %1598 ]
  %1526 = icmp eq i64 %1522, 0
  br i1 %1526, label %1541, label %1527

1527:                                             ; preds = %1555, %1521
  %1528 = phi i64 [ %1522, %1521 ], [ %1560, %1555 ]
  %1529 = phi i32 [ %1523, %1521 ], [ %1556, %1555 ]
  %1530 = phi i32 [ %1524, %1521 ], [ %1557, %1555 ]
  %1531 = phi ptr [ %1525, %1521 ], [ %1548, %1555 ]
  %1532 = and i64 %1528, 1
  %1533 = icmp eq i64 %1532, 0
  br i1 %1533, label %1534, label %1576

1534:                                             ; preds = %1527, %1534
  %1535 = phi i32 [ %1538, %1534 ], [ %1530, %1527 ]
  %1536 = phi i64 [ %1537, %1534 ], [ %1528, %1527 ]
  %1537 = lshr exact i64 %1536, 1
  %1538 = add i32 %1535, 1
  %1539 = and i64 %1536, 2
  %1540 = icmp eq i64 %1539, 0
  br i1 %1540, label %1534, label %1576, !llvm.loop !176

1541:                                             ; preds = %1521
  %1542 = add i32 %1524, 63
  %1543 = and i32 %1542, -64
  %1544 = add i32 %1523, 1
  br label %1545

1545:                                             ; preds = %1572, %1541
  %1546 = phi i64 [ %1522, %1541 ], [ %1567, %1572 ]
  %1547 = phi i32 [ %1543, %1541 ], [ %1575, %1572 ]
  %1548 = phi ptr [ %1525, %1541 ], [ %1570, %1572 ]
  %1549 = phi i32 [ %1544, %1541 ], [ 0, %1572 ]
  %1550 = icmp eq i32 %1549, 2
  br i1 %1550, label %1566, label %1551

1551:                                             ; preds = %1545
  %1552 = add i32 %1547, 128
  %1553 = shl i32 %1549, 6
  %1554 = sub i32 %1552, %1553
  br label %1555

1555:                                             ; preds = %1551, %1562
  %1556 = phi i32 [ %1564, %1562 ], [ %1549, %1551 ]
  %1557 = phi i32 [ %1563, %1562 ], [ %1547, %1551 ]
  %1558 = zext i32 %1556 to i64
  %1559 = getelementptr inbounds %struct.bitmap_element_def, ptr %1548, i64 0, i32 3, i64 %1558
  %1560 = load i64, ptr %1559, align 8, !tbaa !82
  %1561 = icmp eq i64 %1560, 0
  br i1 %1561, label %1562, label %1527

1562:                                             ; preds = %1555
  %1563 = add i32 %1557, 64
  %1564 = add i32 %1556, 1
  %1565 = icmp eq i32 %1564, 2
  br i1 %1565, label %1566, label %1555, !llvm.loop !177

1566:                                             ; preds = %1562, %1545
  %1567 = phi i64 [ %1546, %1545 ], [ %1560, %1562 ]
  %1568 = phi i32 [ %1547, %1545 ], [ %1554, %1562 ]
  %1569 = phi i32 [ %1549, %1545 ], [ 2, %1562 ]
  %1570 = load ptr, ptr %1548, align 8, !tbaa !178
  %1571 = icmp eq ptr %1570, null
  br i1 %1571, label %1576, label %1572

1572:                                             ; preds = %1566
  %1573 = getelementptr inbounds %struct.bitmap_element_def, ptr %1570, i64 0, i32 2
  %1574 = load i32, ptr %1573, align 8, !tbaa !174
  %1575 = shl i32 %1574, 7
  br label %1545, !llvm.loop !179

1576:                                             ; preds = %1566, %1534, %1527
  %1577 = phi i64 [ %1528, %1527 ], [ %1537, %1534 ], [ %1567, %1566 ]
  %1578 = phi i32 [ %1529, %1527 ], [ %1529, %1534 ], [ %1569, %1566 ]
  %1579 = phi i32 [ %1530, %1527 ], [ %1538, %1534 ], [ %1568, %1566 ]
  %1580 = phi ptr [ %1531, %1527 ], [ %1531, %1534 ], [ %1570, %1566 ]
  %1581 = phi i1 [ false, %1527 ], [ false, %1534 ], [ true, %1566 ]
  %1582 = load i32, ptr %1221, align 8, !tbaa !104
  %1583 = zext nneg i32 %1582 to i64
  %1584 = shl nuw i64 1, %1583
  br i1 %1581, label %1601, label %1585

1585:                                             ; preds = %1576
  %1586 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %1587 = zext i32 %1579 to i64
  %1588 = getelementptr inbounds i64, ptr %1586, i64 %1587
  %1589 = load i64, ptr %1588, align 8, !tbaa !82
  %1590 = or i64 %1589, %1584
  store i64 %1590, ptr %1588, align 8, !tbaa !82
  %1591 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %1592 = getelementptr inbounds i64, ptr %1591, i64 %1587
  %1593 = load i64, ptr %1592, align 8, !tbaa !82
  %1594 = or i64 %1593, %1584
  store i64 %1594, ptr %1592, align 8, !tbaa !82
  %1595 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1596 = icmp eq ptr %1595, null
  br i1 %1596, label %1598, label %1597

1597:                                             ; preds = %1585
  call fastcc void @dump_btrs_live(i32 noundef %1579)
  br label %1598

1598:                                             ; preds = %1597, %1585
  %1599 = lshr i64 %1577, 1
  %1600 = add i32 %1579, 1
  br label %1521, !llvm.loop !180

1601:                                             ; preds = %1576
  %1602 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %1603 = load ptr, ptr %1213, align 8, !tbaa !100
  %1604 = getelementptr inbounds %struct.basic_block_def, ptr %1603, i64 0, i32 9
  %1605 = load i32, ptr %1604, align 8, !tbaa !80
  %1606 = sext i32 %1605 to i64
  %1607 = getelementptr inbounds i64, ptr %1602, i64 %1606
  %1608 = load i64, ptr %1607, align 8, !tbaa !82
  %1609 = or i64 %1608, %1584
  store i64 %1609, ptr %1607, align 8, !tbaa !82
  store i8 1, ptr %1225, align 1, !tbaa !181
  %1610 = load i32, ptr %1344, align 8
  %1611 = and i32 %1610, 65535
  %1612 = icmp eq i32 %1611, 12
  br i1 %1612, label %1613, label %1616

1613:                                             ; preds = %1601
  %1614 = getelementptr inbounds %struct.rtx_def, ptr %1344, i64 0, i32 1, i32 0, i32 0, i64 2
  %1615 = load ptr, ptr %1614, align 8, !tbaa !46
  br label %1616

1616:                                             ; preds = %1613, %1601
  %1617 = phi ptr [ %1615, %1613 ], [ %1344, %1601 ]
  %1618 = load i8, ptr %1224, align 1, !tbaa !108
  %1619 = icmp eq i8 %1618, 0
  br i1 %1619, label %1651, label %1620

1620:                                             ; preds = %1616
  %1621 = load ptr, ptr %1342, align 8, !tbaa !46
  %1622 = getelementptr inbounds %struct.rtl_bb_info, ptr %1621, i64 0, i32 1
  %1623 = load ptr, ptr %1622, align 8, !tbaa !46
  %1624 = load i32, ptr %1623, align 8
  %1625 = and i32 %1624, 65535
  %1626 = add nsw i32 %1625, -7
  %1627 = icmp ult i32 %1626, 4
  br i1 %1627, label %1641, label %1628

1628:                                             ; preds = %1620, %1634
  %1629 = phi ptr [ %1636, %1634 ], [ %1623, %1620 ]
  %1630 = load ptr, ptr %1342, align 8, !tbaa !46
  %1631 = load ptr, ptr %1630, align 8, !tbaa !140
  %1632 = icmp eq ptr %1629, %1631
  br i1 %1632, label %1633, label %1634

1633:                                             ; preds = %1628
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1189, ptr noundef nonnull @.str.5) #18
  br label %1634

1634:                                             ; preds = %1633, %1628
  %1635 = getelementptr inbounds %struct.rtx_def, ptr %1629, i64 0, i32 1, i32 0, i32 0, i64 1
  %1636 = load ptr, ptr %1635, align 8, !tbaa !46
  %1637 = load i32, ptr %1636, align 8
  %1638 = and i32 %1637, 65535
  %1639 = add nsw i32 %1638, -7
  %1640 = icmp ult i32 %1639, 4
  br i1 %1640, label %1641, label %1628, !llvm.loop !182

1641:                                             ; preds = %1634, %1620
  %1642 = phi ptr [ %1623, %1620 ], [ %1636, %1634 ]
  %1643 = phi i32 [ %1625, %1620 ], [ %1638, %1634 ]
  %1644 = icmp eq i32 %1643, 9
  br i1 %1644, label %1648, label %1645

1645:                                             ; preds = %1641
  %1646 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %1642) #18
  %1647 = icmp eq i8 %1646, 0
  br i1 %1647, label %1651, label %1648

1648:                                             ; preds = %1645, %1641
  %1649 = getelementptr inbounds %struct.rtx_def, ptr %1642, i64 0, i32 1, i32 0, i32 0, i64 1
  %1650 = load ptr, ptr %1649, align 8, !tbaa !46
  br label %1651

1651:                                             ; preds = %1648, %1645, %1616
  %1652 = phi ptr [ %1650, %1648 ], [ %1642, %1645 ], [ %1617, %1616 ]
  %1653 = getelementptr inbounds %struct.rtx_def, ptr %1345, i64 1
  %1654 = load ptr, ptr %1653, align 8, !tbaa !46
  %1655 = load i32, ptr %1654, align 8
  %1656 = and i32 %1655, 65535
  %1657 = icmp eq i32 %1656, 23
  br i1 %1657, label %1660, label %1658

1658:                                             ; preds = %1651
  %1659 = call ptr @single_set_2(ptr noundef nonnull %1345, ptr noundef nonnull %1654) #18
  br label %1660

1660:                                             ; preds = %1658, %1651
  %1661 = phi ptr [ %1659, %1658 ], [ %1654, %1651 ]
  %1662 = getelementptr inbounds %struct.rtx_def, ptr %1661, i64 0, i32 1
  %1663 = getelementptr inbounds %struct.rtx_def, ptr %1661, i64 0, i32 1, i32 0, i32 0, i64 1
  %1664 = load ptr, ptr %1663, align 8, !tbaa !46
  %1665 = load ptr, ptr %1662, align 8, !tbaa !46
  %1666 = load i32, ptr %1665, align 8
  %1667 = lshr i32 %1666, 16
  %1668 = and i32 %1667, 255
  %1669 = call ptr @gen_rtx_REG(i32 noundef %1668, i32 noundef %1497) #18
  %1670 = call ptr @gen_move_insn(ptr noundef %1669, ptr noundef %1664) #18
  %1671 = call ptr @emit_insn_after(ptr noundef %1670, ptr noundef %1652) #18
  store ptr %1671, ptr %1159, align 8, !tbaa !103
  call void @df_set_regs_ever_live(i32 noundef %1497, i8 noundef zeroext 1) #18
  %1672 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1673 = icmp eq ptr %1672, null
  br i1 %1673, label %1681, label %1674

1674:                                             ; preds = %1660
  %1675 = load ptr, ptr %1159, align 8, !tbaa !103
  %1676 = getelementptr inbounds %struct.rtx_def, ptr %1675, i64 0, i32 1
  %1677 = load i32, ptr %1676, align 8, !tbaa !46
  %1678 = getelementptr inbounds %struct.rtx_def, ptr %1652, i64 0, i32 1
  %1679 = load i32, ptr %1678, align 8, !tbaa !46
  %1680 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1672, ptr noundef nonnull @.str.28, i32 noundef %1677, i32 noundef %1679)
  br label %1681

1681:                                             ; preds = %1674, %1660
  %1682 = call ptr @delete_insn(ptr noundef nonnull %1345) #18
  %1683 = load ptr, ptr %1147, align 8, !tbaa !35
  %1684 = icmp eq ptr %1683, null
  br i1 %1684, label %1708, label %1685

1685:                                             ; preds = %1681, %1700
  %1686 = phi ptr [ %1706, %1700 ], [ %1683, %1681 ]
  %1687 = getelementptr inbounds %struct.btr_user_s, ptr %1686, i64 0, i32 4
  %1688 = load ptr, ptr %1687, align 8, !tbaa !123
  %1689 = load i32, ptr %1688, align 8
  %1690 = lshr i32 %1689, 16
  %1691 = and i32 %1690, 255
  %1692 = load i32, ptr %1669, align 8
  %1693 = lshr i32 %1692, 16
  %1694 = and i32 %1693, 255
  %1695 = icmp eq i32 %1691, %1694
  %1696 = icmp eq i32 %1691, 0
  %1697 = or i1 %1696, %1695
  br i1 %1697, label %1700, label %1698

1698:                                             ; preds = %1685
  %1699 = call ptr @gen_rtx_REG(i32 noundef %1691, i32 noundef %1497) #18
  br label %1700

1700:                                             ; preds = %1698, %1685
  %1701 = phi ptr [ %1699, %1698 ], [ %1669, %1685 ]
  %1702 = load ptr, ptr %1687, align 8, !tbaa !123
  %1703 = getelementptr inbounds %struct.btr_user_s, ptr %1686, i64 0, i32 3
  %1704 = load ptr, ptr %1703, align 8, !tbaa !130
  %1705 = call i32 @validate_replace_rtx(ptr noundef %1702, ptr noundef %1701, ptr noundef %1704) #18
  store ptr %1701, ptr %1687, align 8, !tbaa !123
  %1706 = load ptr, ptr %1686, align 8, !tbaa !35
  %1707 = icmp eq ptr %1706, null
  br i1 %1707, label %1708, label %1685, !llvm.loop !183

1708:                                             ; preds = %1700, %1681
  %1709 = load ptr, ptr %1157, align 8, !tbaa !111
  call void @bitmap_copy(ptr noundef %1156, ptr noundef %1709) #18
  %1710 = load ptr, ptr %1213, align 8, !tbaa !100
  %1711 = getelementptr inbounds %struct.basic_block_def, ptr %1710, i64 0, i32 11
  %1712 = load i32, ptr %1711, align 8, !tbaa !105
  br label %1718

1713:                                             ; preds = %1338
  %1714 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1715 = icmp eq ptr %1714, null
  br i1 %1715, label %1718, label %1716

1716:                                             ; preds = %1713
  %1717 = call i64 @fwrite(ptr nonnull @.str.21, i64 53, i64 1, ptr nonnull %1714)
  br label %1718

1718:                                             ; preds = %1716, %1713, %1708, %1289, %1278
  %1719 = phi i32 [ %1238, %1278 ], [ %1238, %1289 ], [ 1, %1708 ], [ %1238, %1716 ], [ %1238, %1713 ]
  %1720 = phi i1 [ true, %1278 ], [ true, %1289 ], [ true, %1708 ], [ false, %1716 ], [ false, %1713 ]
  %1721 = phi i32 [ 0, %1278 ], [ 0, %1289 ], [ 0, %1708 ], [ 1, %1716 ], [ 1, %1713 ]
  %1722 = phi i32 [ %1241, %1278 ], [ %1241, %1289 ], [ %1712, %1708 ], [ %1241, %1716 ], [ %1241, %1713 ]
  %1723 = phi i32 [ %1242, %1278 ], [ %1242, %1289 ], [ 0, %1708 ], [ %1242, %1716 ], [ %1242, %1713 ]
  %1724 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %1240) #18
  %1725 = icmp ne ptr %1724, null
  %1726 = select i1 %1720, i1 %1725, i1 false
  br i1 %1726, label %1231, label %1727, !llvm.loop !160

1727:                                             ; preds = %1237, %1231, %1718, %1220, %1211
  %1728 = phi i32 [ 0, %1211 ], [ 0, %1220 ], [ %1719, %1718 ], [ %1719, %1231 ], [ %1238, %1237 ]
  %1729 = phi i32 [ 0, %1211 ], [ 0, %1220 ], [ %1721, %1718 ], [ %1721, %1231 ], [ %1239, %1237 ]
  %1730 = icmp eq i32 %1728, 0
  br i1 %1730, label %1731, label %1736

1731:                                             ; preds = %1727
  %1732 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1733 = icmp eq ptr %1732, null
  br i1 %1733, label %1736, label %1734

1734:                                             ; preds = %1731
  %1735 = call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %1732)
  br label %1736

1736:                                             ; preds = %1734, %1731, %1727
  %1737 = phi i32 [ %1729, %1727 ], [ 1, %1734 ], [ 1, %1731 ]
  call void @bitmap_obstack_free(ptr noundef %1156) #18
  %1738 = icmp eq i32 %1737, 0
  %1739 = zext i1 %1738 to i32
  br label %1740

1740:                                             ; preds = %1736, %1153, %1150, %1144, %1141
  %1741 = phi i32 [ %1739, %1736 ], [ 0, %1144 ], [ 0, %1141 ], [ 0, %1153 ], [ 0, %1150 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1758, label %1743

1743:                                             ; preds = %1740
  %1744 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 6
  %1745 = load i32, ptr %1744, align 4, !tbaa !106
  %1746 = sub nsw i32 0, %1745
  %1747 = sext i32 %1746 to i64
  %1748 = call ptr @fibheap_insert(ptr noundef %31, i64 noundef %1747, ptr noundef %1119) #18
  %1749 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1750 = icmp eq ptr %1749, null
  br i1 %1750, label %1761, label %1751

1751:                                             ; preds = %1743
  %1752 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 4
  %1753 = load ptr, ptr %1752, align 8, !tbaa !103
  %1754 = getelementptr inbounds %struct.rtx_def, ptr %1753, i64 0, i32 1
  %1755 = load i32, ptr %1754, align 8, !tbaa !46
  %1756 = load i32, ptr %1744, align 4, !tbaa !106
  %1757 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1749, ptr noundef nonnull @.str.3, i32 noundef %1755, i32 noundef %1756)
  br label %1761

1758:                                             ; preds = %1740
  %1759 = getelementptr inbounds %struct.btr_def_s, ptr %1119, i64 0, i32 13
  %1760 = load ptr, ptr %1759, align 8, !tbaa !111
  call void @bitmap_obstack_free(ptr noundef %1760) #18
  store ptr null, ptr %1759, align 8, !tbaa !111
  br label %1761

1761:                                             ; preds = %1758, %1751, %1743
  %1762 = call i32 @fibheap_empty(ptr noundef %31) #18
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1118, label %1764, !llvm.loop !184

1764:                                             ; preds = %1761, %1114
  %1765 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  call void @free(ptr noundef %1765)
  %1766 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  call void @free(ptr noundef %1766)
  %1767 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 1), align 8, !tbaa !99
  %1768 = ptrtoint ptr %1767 to i64
  %1769 = sub i64 0, %1768
  store i64 %1769, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 5), align 8, !tbaa !93
  %1770 = icmp sgt i64 %1769, 0
  br i1 %1770, label %1771, label %1778

1771:                                             ; preds = %1764
  %1772 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 4), align 8, !tbaa !95
  %1773 = ptrtoint ptr %1772 to i64
  %1774 = sub i64 %1773, %1768
  %1775 = icmp sgt i64 %1774, %1769
  br i1 %1775, label %1776, label %1778

1776:                                             ; preds = %1771
  %1777 = getelementptr inbounds i8, ptr %1767, i64 %1769
  store ptr %1777, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 2), align 8, !tbaa !97
  store ptr %1777, ptr getelementptr inbounds (%struct.obstack, ptr @migrate_btrl_obstack, i64 0, i32 3), align 8, !tbaa !96
  br label %1780

1778:                                             ; preds = %1771, %1764
  %1779 = getelementptr inbounds i8, ptr %1767, i64 %1769
  call void @obstack_free(ptr noundef nonnull @migrate_btrl_obstack, ptr noundef %1779) #18
  br label %1780

1780:                                             ; preds = %1776, %1778
  call void @fibheap_delete(ptr noundef %31) #18
  call void @free_dominance_info(i32 noundef 1) #18
  br label %1781

1781:                                             ; preds = %1780, %1
  ret void
}

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @fibheap_new() local_unnamed_addr #3

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

declare i64 @fibheap_min_key(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

declare i32 @get_max_uid() local_unnamed_addr #3

declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @insn_sets_btr_p(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #10 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %60

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %10) #18
  br label %16

16:                                               ; preds = %8, %14
  %17 = phi ptr [ %15, %14 ], [ %10, %8 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 39
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi ptr [ %29, %27 ], [ %21, %19 ]
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw i64 1, %39
  %41 = and i64 %40, %36
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %23, ptr %4, align 8, !tbaa !35
  %44 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @find_btr_reference, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 241, ptr noundef nonnull @.str.5) #18
  br label %47

47:                                               ; preds = %43, %46
  %48 = icmp eq i32 %1, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %23, align 8
  %51 = and i32 %50, 65535
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %60

56:                                               ; preds = %49, %47
  %57 = icmp eq ptr %2, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %37, align 8, !tbaa !46
  store i32 %59, ptr %2, align 4, !tbaa !50
  br label %60

60:                                               ; preds = %56, %58, %3, %16, %30, %35, %49
  %61 = phi i32 [ 0, %49 ], [ 0, %35 ], [ 0, %30 ], [ 0, %16 ], [ 0, %3 ], [ 1, %58 ], [ 1, %56 ]
  ret i32 %61
}

declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare i32 @refers_to_regno_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @note_btr_set(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #10 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %63

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = lshr i32 %4, 16
  %11 = and i32 %10, 255
  %12 = zext i32 %9 to i64
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !46
  %16 = zext i8 %15 to i32
  %17 = add i32 %9, %16
  %18 = icmp slt i32 %9, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.defs_uses_info, ptr %2, i64 0, i32 1
  %21 = getelementptr inbounds %struct.defs_uses_info, ptr %2, i64 0, i32 2
  %22 = getelementptr inbounds %struct.defs_uses_info, ptr %2, i64 0, i32 3
  %23 = getelementptr inbounds %struct.defs_uses_info, ptr %2, i64 0, i32 4
  br label %24

24:                                               ; preds = %19, %60
  %25 = phi i32 [ %9, %19 ], [ %61, %60 ]
  %26 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %27 = zext nneg i32 %25 to i64
  %28 = shl nuw i64 1, %27
  %29 = and i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %2, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31, %45
  %35 = phi ptr [ %46, %45 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.btr_user_s, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !123
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !46
  %42 = icmp eq i32 %41, %25
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.btr_user_s, ptr %35, i64 0, i32 7
  store i8 1, ptr %44, align 8, !tbaa !125
  br label %45

45:                                               ; preds = %43, %39, %34
  %46 = load ptr, ptr %35, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %34, !llvm.loop !126

48:                                               ; preds = %45, %31
  %49 = load i64, ptr %20, align 8, !tbaa !119
  %50 = or i64 %49, %28
  store i64 %50, ptr %20, align 8, !tbaa !119
  %51 = load i64, ptr %21, align 8, !tbaa !88
  %52 = or i64 %51, %28
  store i64 %52, ptr %21, align 8, !tbaa !88
  %53 = load ptr, ptr %22, align 8, !tbaa !86
  %54 = load ptr, ptr %23, align 8, !tbaa !87
  %55 = load i32, ptr @first_btr, align 4, !tbaa !50
  %56 = sub nsw i32 %25, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  tail call void @sbitmap_difference(ptr noundef %53, ptr noundef %53, ptr noundef %59) #18
  br label %60

60:                                               ; preds = %24, %48
  %61 = add i32 %25, 1
  %62 = icmp eq i32 %61, %17
  br i1 %62, label %63, label %24, !llvm.loop !185

63:                                               ; preds = %60, %7, %3
  ret void
}

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_btrs_live(i32 noundef %0) unnamed_addr #12 !prof !34 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %0)
  %4 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i64, ptr %4, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !82
  br label %8

8:                                                ; preds = %1, %17
  %9 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %10 = shl nuw i64 1, %9
  %11 = and i64 %10, %7
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %15 = trunc i64 %9 to i32
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %15)
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, 53
  br i1 %19, label %20, label %8, !llvm.loop !166

20:                                               ; preds = %17
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %22 = tail call i32 @fputc(i32 10, ptr %21)
  ret void
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal noundef i32 @find_btr_reference(ptr noundef %0, ptr noundef readnone %1) #13 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load i64, ptr @all_btrs, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %10
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %9
  %18 = lshr i32 %6, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %13, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = zext i8 %22 to i32
  %24 = add i32 %12, %23
  br label %25

25:                                               ; preds = %29, %17
  %26 = phi i32 [ %12, %17 ], [ %27, %29 ]
  %27 = add i32 %26, 1
  %28 = icmp ult i32 %27, %24
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = zext nneg i32 %27 to i64
  %31 = shl nuw i64 1, %30
  %32 = and i64 %31, %10
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %25, label %34, !llvm.loop !186

34:                                               ; preds = %29, %9
  store ptr %0, ptr @btr_reference_found, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %25, %4, %2, %34
  %36 = phi i32 [ 1, %34 ], [ -1, %2 ], [ 0, %4 ], [ -1, %25 ]
  ret i32 %36
}

declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_union_of_preds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_or_b_and_c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @btr_def_live_range(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %7, ptr %3, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !80
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %11) #18
  %13 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !50
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr @btrs_live, align 8
  %16 = load ptr, ptr @btrs_live_at_end, align 8
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load ptr, ptr %8, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !80
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, ptr %17, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !82
  store i64 %23, ptr %1, align 8, !tbaa !82
  %24 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %146, label %27

27:                                               ; preds = %6, %47
  %28 = phi ptr [ %50, %47 ], [ %25, %6 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !111
  %30 = load ptr, ptr %8, align 8, !tbaa !100
  %31 = getelementptr inbounds %struct.btr_user_s, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !128
  %33 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !50
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.btr_user_s, ptr %28, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !90
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, ptr %37, align 8
  %45 = and i32 %44, 65535
  %46 = icmp ne i32 %45, 9
  br label %47

47:                                               ; preds = %43, %35, %27
  %48 = phi i1 [ true, %35 ], [ true, %27 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  tail call fastcc void @augment_live_range(ptr noundef %29, ptr noundef nonnull %1, ptr noundef %30, ptr noundef %32, i32 noundef %49)
  %50 = load ptr, ptr %28, align 8, !tbaa !35
  %51 = icmp eq ptr %50, null
  br i1 %51, label %146, label %27, !llvm.loop !187

52:                                               ; preds = %2
  %53 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !100
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !80
  br label %60

60:                                               ; preds = %52, %55
  %61 = phi i32 [ %59, %55 ], [ -1, %52 ]
  store i64 0, ptr %1, align 8, !tbaa !82
  %62 = load ptr, ptr %4, align 8, !tbaa !172
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr @bitmap_zero_bits, ptr %62
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !174
  %67 = shl i32 %66, 7
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 3
  %69 = load i64, ptr %68, align 8, !tbaa !82
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = or disjoint i32 %67, %71
  %73 = load ptr, ptr @btrs_live_at_end, align 8
  %74 = load ptr, ptr @btrs_live, align 8
  br label %75

75:                                               ; preds = %136, %60
  %76 = phi i64 [ %69, %60 ], [ %144, %136 ]
  %77 = phi i32 [ 0, %60 ], [ %132, %136 ]
  %78 = phi i32 [ %72, %60 ], [ %145, %136 ]
  %79 = phi ptr [ %64, %60 ], [ %134, %136 ]
  %80 = icmp eq i64 %76, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %109, %75
  %82 = phi i64 [ %76, %75 ], [ %114, %109 ]
  %83 = phi i32 [ %77, %75 ], [ %110, %109 ]
  %84 = phi i32 [ %78, %75 ], [ %111, %109 ]
  %85 = phi ptr [ %79, %75 ], [ %102, %109 ]
  %86 = and i64 %82, 1
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %81, %88
  %89 = phi i32 [ %92, %88 ], [ %84, %81 ]
  %90 = phi i64 [ %91, %88 ], [ %82, %81 ]
  %91 = lshr exact i64 %90, 1
  %92 = add i32 %89, 1
  %93 = and i64 %90, 2
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %88, label %130, !llvm.loop !176

95:                                               ; preds = %75
  %96 = add i32 %78, 63
  %97 = and i32 %96, -64
  %98 = add i32 %77, 1
  br label %99

99:                                               ; preds = %126, %95
  %100 = phi i64 [ %76, %95 ], [ %121, %126 ]
  %101 = phi i32 [ %97, %95 ], [ %129, %126 ]
  %102 = phi ptr [ %79, %95 ], [ %124, %126 ]
  %103 = phi i32 [ %98, %95 ], [ 0, %126 ]
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %120, label %105

105:                                              ; preds = %99
  %106 = add i32 %101, 128
  %107 = shl i32 %103, 6
  %108 = sub i32 %106, %107
  br label %109

109:                                              ; preds = %105, %116
  %110 = phi i32 [ %118, %116 ], [ %103, %105 ]
  %111 = phi i32 [ %117, %116 ], [ %101, %105 ]
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %102, i64 0, i32 3, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !82
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %81

116:                                              ; preds = %109
  %117 = add i32 %111, 64
  %118 = add i32 %110, 1
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %109, !llvm.loop !177

120:                                              ; preds = %116, %99
  %121 = phi i64 [ %100, %99 ], [ %114, %116 ]
  %122 = phi i32 [ %101, %99 ], [ %108, %116 ]
  %123 = phi i32 [ %103, %99 ], [ 2, %116 ]
  %124 = load ptr, ptr %102, align 8, !tbaa !178
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.bitmap_element_def, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !174
  %129 = shl i32 %128, 7
  br label %99, !llvm.loop !179

130:                                              ; preds = %120, %88, %81
  %131 = phi i64 [ %82, %81 ], [ %91, %88 ], [ %121, %120 ]
  %132 = phi i32 [ %83, %81 ], [ %83, %88 ], [ %123, %120 ]
  %133 = phi i32 [ %84, %81 ], [ %92, %88 ], [ %122, %120 ]
  %134 = phi ptr [ %85, %81 ], [ %85, %88 ], [ %124, %120 ]
  %135 = phi i1 [ false, %81 ], [ false, %88 ], [ true, %120 ]
  br i1 %135, label %146, label %136

136:                                              ; preds = %130
  %137 = icmp eq i32 %61, %133
  %138 = select i1 %137, ptr %73, ptr %74
  %139 = zext i32 %133 to i64
  %140 = getelementptr inbounds i64, ptr %138, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !82
  %142 = load i64, ptr %1, align 8, !tbaa !82
  %143 = or i64 %142, %141
  store i64 %143, ptr %1, align 8, !tbaa !82
  %144 = lshr i64 %131, 1
  %145 = add i32 %133, 1
  br label %75, !llvm.loop !188

146:                                              ; preds = %130, %47, %6
  %147 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 10
  %148 = load i8, ptr %147, align 1, !tbaa !108
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 11
  %152 = load i8, ptr %151, align 2, !tbaa !109
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  %156 = load i32, ptr %155, align 8, !tbaa !104
  %157 = zext nneg i32 %156 to i64
  %158 = shl nuw i64 1, %157
  %159 = xor i64 %158, -1
  %160 = load i64, ptr %1, align 8, !tbaa !82
  %161 = and i64 %160, %159
  store i64 %161, ptr %1, align 8, !tbaa !82
  br label %162

162:                                              ; preds = %154, %150, %146
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @insn_default_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @augment_live_range(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 !prof !34 {
  %6 = load ptr, ptr @cfun, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !189
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #18
  %15 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %3, ptr noundef %2) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %5
  %18 = icmp eq ptr %3, %2
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %207, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !80
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, ptr %22, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !82
  %28 = load i64, ptr %1, align 8, !tbaa !82
  %29 = or i64 %28, %27
  store i64 %29, ptr %1, align 8, !tbaa !82
  br label %207

30:                                               ; preds = %17
  %31 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %3, ptr %14, align 8, !tbaa !35
  br label %117

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !80
  %35 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %3) #18
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 922, ptr noundef nonnull @.str.5) #18
  br label %38

38:                                               ; preds = %32, %37
  %39 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !80
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %39, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !82
  %45 = load i64, ptr %1, align 8, !tbaa !82
  %46 = or i64 %45, %44
  store i64 %46, ptr %1, align 8, !tbaa !82
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %34) #18
  %48 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %49 = sext i32 %34 to i64
  %50 = getelementptr inbounds i64, ptr %48, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !82
  %52 = load i64, ptr %1, align 8, !tbaa !82
  %53 = or i64 %52, %51
  store i64 %53, ptr %1, align 8, !tbaa !82
  %54 = icmp eq i32 %4, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %38
  %56 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %57 = getelementptr inbounds i64, ptr %56, i64 %49
  %58 = load i64, ptr %57, align 8, !tbaa !82
  %59 = or i64 %58, %53
  store i64 %59, ptr %1, align 8, !tbaa !82
  br label %60

60:                                               ; preds = %55, %38
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %40, align 8, !tbaa !80
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %61, ptr noundef nonnull @.str.24, i32 noundef %34, i32 noundef %64)
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %67 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr %66)
  %68 = load i64, ptr %1, align 8, !tbaa !82
  br label %69

69:                                               ; preds = %63, %78
  %70 = phi i64 [ 0, %63 ], [ %79, %78 ]
  %71 = shl nuw i64 1, %70
  %72 = and i64 %71, %68
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %76 = trunc i64 %70 to i32
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.13, i32 noundef %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = add nuw nsw i64 %70, 1
  %80 = icmp eq i64 %79, 53
  br i1 %80, label %81, label %69, !llvm.loop !166

81:                                               ; preds = %78
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %83 = tail call i32 @fputc(i32 10, ptr %82)
  br label %84

84:                                               ; preds = %81, %60
  %85 = icmp eq ptr %2, null
  br label %86

86:                                               ; preds = %115, %84
  %87 = phi i32 [ 0, %84 ], [ %116, %115 ]
  %88 = phi ptr [ %14, %84 ], [ %106, %115 ]
  br i1 %85, label %89, label %90

89:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 687, ptr noundef nonnull @.str.5) #18
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr %2, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %91, align 8, !tbaa !161
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i32 [ %94, %93 ], [ 0, %90 ]
  %97 = icmp eq i32 %96, %87
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = zext i32 %87 to i64
  %100 = getelementptr inbounds %struct.VEC_edge_base, ptr %91, i64 0, i32 2, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  br label %102

102:                                              ; preds = %95, %98
  %103 = phi ptr [ %101, %98 ], [ null, %95 ]
  br i1 %97, label %117, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %103, align 8, !tbaa !190
  %106 = getelementptr inbounds ptr, ptr %88, i64 1
  store ptr %105, ptr %88, align 8, !tbaa !35
  %107 = load ptr, ptr %2, align 8, !tbaa !35
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %107, align 8, !tbaa !161
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi i32 [ %110, %109 ], [ 0, %104 ]
  %113 = icmp ult i32 %87, %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 738, ptr noundef nonnull @.str.5) #18
  br label %115

115:                                              ; preds = %111, %114
  %116 = add i32 %87, 1
  br label %86, !llvm.loop !191

117:                                              ; preds = %102, %30
  %118 = phi ptr [ %31, %30 ], [ %88, %102 ]
  %119 = icmp eq ptr %118, %14
  br i1 %119, label %207, label %120

120:                                              ; preds = %117, %204
  %121 = phi ptr [ %205, %204 ], [ %118, %117 ]
  %122 = getelementptr inbounds ptr, ptr %121, i64 -1
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !80
  %126 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %125) #18
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %204

128:                                              ; preds = %120
  %129 = load i32, ptr %124, align 8, !tbaa !80
  %130 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %129) #18
  %131 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %132 = load i32, ptr %124, align 8, !tbaa !80
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, ptr %131, i64 %133
  %135 = load i64, ptr %134, align 8, !tbaa !82
  %136 = load i64, ptr %1, align 8, !tbaa !82
  %137 = or i64 %136, %135
  store i64 %137, ptr %1, align 8, !tbaa !82
  %138 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %139 = getelementptr inbounds i64, ptr %138, i64 %133
  %140 = load i64, ptr %139, align 8, !tbaa !82
  %141 = or i64 %140, %137
  store i64 %141, ptr %1, align 8, !tbaa !82
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %143 = icmp eq ptr %142, null
  br i1 %143, label %164, label %144

144:                                              ; preds = %128
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %142, ptr noundef nonnull @.str.26, i32 noundef %132)
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %147 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr %146)
  %148 = load i64, ptr %1, align 8, !tbaa !82
  br label %149

149:                                              ; preds = %144, %158
  %150 = phi i64 [ 0, %144 ], [ %159, %158 ]
  %151 = shl nuw i64 1, %150
  %152 = and i64 %151, %148
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %156 = trunc i64 %150 to i32
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.13, i32 noundef %156)
  br label %158

158:                                              ; preds = %154, %149
  %159 = add nuw nsw i64 %150, 1
  %160 = icmp eq i64 %159, 53
  br i1 %160, label %161, label %149, !llvm.loop !166

161:                                              ; preds = %158
  %162 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %163 = tail call i32 @fputc(i32 10, ptr %162)
  br label %164

164:                                              ; preds = %161, %128
  %165 = icmp eq ptr %123, null
  br label %166

166:                                              ; preds = %202, %164
  %167 = phi i32 [ 0, %164 ], [ %203, %202 ]
  %168 = phi ptr [ %122, %164 ], [ %193, %202 ]
  br i1 %165, label %169, label %170

169:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 687, ptr noundef nonnull @.str.5) #18
  br label %170

170:                                              ; preds = %169, %166
  %171 = load ptr, ptr %123, align 8, !tbaa !35
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %171, align 8, !tbaa !161
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi i32 [ %174, %173 ], [ 0, %170 ]
  %177 = icmp eq i32 %176, %167
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = zext i32 %167 to i64
  %180 = getelementptr inbounds %struct.VEC_edge_base, ptr %171, i64 0, i32 2, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !35
  br label %182

182:                                              ; preds = %175, %178
  %183 = phi ptr [ %181, %178 ], [ null, %175 ]
  br i1 %177, label %204, label %184

184:                                              ; preds = %182
  %185 = load ptr, ptr %183, align 8, !tbaa !190
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 9
  %187 = load i32, ptr %186, align 8, !tbaa !80
  %188 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %187) #18
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = getelementptr inbounds ptr, ptr %168, i64 1
  store ptr %185, ptr %168, align 8, !tbaa !35
  br label %192

192:                                              ; preds = %184, %190
  %193 = phi ptr [ %168, %184 ], [ %191, %190 ]
  %194 = load ptr, ptr %123, align 8, !tbaa !35
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = load i32, ptr %194, align 8, !tbaa !161
  br label %198

198:                                              ; preds = %196, %192
  %199 = phi i32 [ %197, %196 ], [ 0, %192 ]
  %200 = icmp ult i32 %167, %199
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 738, ptr noundef nonnull @.str.5) #18
  br label %202

202:                                              ; preds = %198, %201
  %203 = add i32 %167, 1
  br label %166, !llvm.loop !192

204:                                              ; preds = %182, %120
  %205 = phi ptr [ %122, %120 ], [ %168, %182 ]
  %206 = icmp eq ptr %205, %14
  br i1 %206, label %207, label %120, !llvm.loop !193

207:                                              ; preds = %204, %117, %19, %21
  tail call void @free(ptr noundef %14)
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @clear_btr_from_live_range(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !34 {
  %2 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @bitmap_zero_bits, ptr %4
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !174
  %9 = shl i32 %8, 7
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !82
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 10
  %16 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 11
  %17 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 8
  %20 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  br label %21

21:                                               ; preds = %137, %1
  %22 = phi i64 [ %11, %1 ], [ %138, %137 ]
  %23 = phi i32 [ 0, %1 ], [ %78, %137 ]
  %24 = phi i32 [ %14, %1 ], [ %139, %137 ]
  %25 = phi ptr [ %6, %1 ], [ %80, %137 ]
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %55, %21
  %28 = phi i64 [ %22, %21 ], [ %60, %55 ]
  %29 = phi i32 [ %23, %21 ], [ %56, %55 ]
  %30 = phi i32 [ %24, %21 ], [ %57, %55 ]
  %31 = phi ptr [ %25, %21 ], [ %48, %55 ]
  %32 = and i64 %28, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %38, %34 ], [ %30, %27 ]
  %36 = phi i64 [ %37, %34 ], [ %28, %27 ]
  %37 = lshr exact i64 %36, 1
  %38 = add i32 %35, 1
  %39 = and i64 %36, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %34, label %76, !llvm.loop !176

41:                                               ; preds = %21
  %42 = add i32 %24, 63
  %43 = and i32 %42, -64
  %44 = add i32 %23, 1
  br label %45

45:                                               ; preds = %72, %41
  %46 = phi i64 [ %22, %41 ], [ %67, %72 ]
  %47 = phi i32 [ %43, %41 ], [ %75, %72 ]
  %48 = phi ptr [ %25, %41 ], [ %70, %72 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %72 ]
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = add i32 %47, 128
  %53 = shl i32 %49, 6
  %54 = sub i32 %52, %53
  br label %55

55:                                               ; preds = %51, %62
  %56 = phi i32 [ %64, %62 ], [ %49, %51 ]
  %57 = phi i32 [ %63, %62 ], [ %47, %51 ]
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !82
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %27

62:                                               ; preds = %55
  %63 = add i32 %57, 64
  %64 = add i32 %56, 1
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %55, !llvm.loop !177

66:                                               ; preds = %62, %45
  %67 = phi i64 [ %46, %45 ], [ %60, %62 ]
  %68 = phi i32 [ %47, %45 ], [ %54, %62 ]
  %69 = phi i32 [ %49, %45 ], [ 2, %62 ]
  %70 = load ptr, ptr %48, align 8, !tbaa !178
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !174
  %75 = shl i32 %74, 7
  br label %45, !llvm.loop !179

76:                                               ; preds = %66, %34, %27
  %77 = phi i64 [ %28, %27 ], [ %37, %34 ], [ %67, %66 ]
  %78 = phi i32 [ %29, %27 ], [ %29, %34 ], [ %69, %66 ]
  %79 = phi i32 [ %30, %27 ], [ %38, %34 ], [ %68, %66 ]
  %80 = phi ptr [ %31, %27 ], [ %31, %34 ], [ %70, %66 ]
  %81 = phi i1 [ false, %27 ], [ false, %34 ], [ true, %66 ]
  br i1 %81, label %140, label %82

82:                                               ; preds = %76
  %83 = load i8, ptr %15, align 1, !tbaa !108
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8, ptr %16, align 2, !tbaa !109
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %120, label %88

88:                                               ; preds = %85
  br i1 %84, label %100, label %89

89:                                               ; preds = %82, %88
  %90 = load ptr, ptr @cfun, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !72
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !76
  %95 = zext i32 %79 to i64
  %96 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %94, i64 0, i32 2, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !35
  %98 = load ptr, ptr %17, align 8, !tbaa !100
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %137, label %100

100:                                              ; preds = %89, %88
  %101 = load i8, ptr %18, align 2, !tbaa !109
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr @cfun, align 8
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = zext i32 %79 to i64
  br label %107

107:                                              ; preds = %111, %103
  %108 = phi ptr [ %19, %103 ], [ %109, %111 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !35
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %105, align 8, !tbaa !72
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !76
  %115 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %114, i64 0, i32 2, i64 %106
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = getelementptr inbounds %struct.btr_user_s, ptr %109, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !128
  %119 = icmp eq ptr %116, %118
  br i1 %119, label %137, label %107, !llvm.loop !194

120:                                              ; preds = %107, %100, %85
  %121 = load i32, ptr %20, align 8, !tbaa !104
  %122 = zext nneg i32 %121 to i64
  %123 = shl nuw i64 1, %122
  %124 = xor i64 %123, -1
  %125 = load ptr, ptr @btrs_live, align 8, !tbaa !35
  %126 = zext i32 %79 to i64
  %127 = getelementptr inbounds i64, ptr %125, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !82
  %129 = and i64 %128, %124
  store i64 %129, ptr %127, align 8, !tbaa !82
  %130 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %131 = getelementptr inbounds i64, ptr %130, i64 %126
  %132 = load i64, ptr %131, align 8, !tbaa !82
  %133 = and i64 %132, %124
  store i64 %133, ptr %131, align 8, !tbaa !82
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %120
  tail call fastcc void @dump_btrs_live(i32 noundef %79)
  br label %137

137:                                              ; preds = %111, %89, %120, %136
  %138 = lshr i64 %77, 1
  %139 = add i32 %79, 1
  br label %21, !llvm.loop !195

140:                                              ; preds = %76
  %141 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 12
  %142 = load i8, ptr %141, align 1, !tbaa !181
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 5
  %146 = load i32, ptr %145, align 8, !tbaa !104
  %147 = zext nneg i32 %146 to i64
  %148 = shl nuw i64 1, %147
  %149 = xor i64 %148, -1
  %150 = load ptr, ptr @btrs_live_at_end, align 8, !tbaa !35
  %151 = getelementptr inbounds %struct.btr_def_s, ptr %0, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !100
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !80
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, ptr %150, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !82
  %158 = and i64 %157, %149
  store i64 %158, ptr %156, align 8, !tbaa !82
  br label %159

159:                                              ; preds = %144, %140
  ret void
}

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare i32 @validate_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

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
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!54 = !{!"function_entry_count", i64 38}
!55 = !{!"bt-load.c;gate_handle_branch_target_load_optimize1"}
!56 = !{!"bt-load.c;gate_handle_branch_target_load_optimize2"}
!57 = !{!"branch_weights", i32 38, i32 0}
!58 = !{!59, !36, i64 984}
!59 = !{!"gcc_target", !60, i64 0, !62, i64 368, !63, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !64, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !65, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !66, i64 1784, !67, i64 1792, !68, i64 1896, !69, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!60 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !61, i64 24, !61, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!61 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!62 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!63 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!64 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!65 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!66 = !{!"c", !36, i64 0}
!67 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!68 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!69 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!70 = !{!59, !36, i64 384}
!71 = !{!59, !36, i64 992}
!72 = !{!73, !36, i64 8}
!73 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!74 = !{!75, !41, i64 32}
!75 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!76 = !{!75, !36, i64 16}
!77 = !{!78, !42, i64 72}
!78 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!79 = !{!78, !41, i64 84}
!80 = !{!78, !41, i64 80}
!81 = distinct !{!81, !52, !53}
!82 = !{!42, !42, i64 0}
!83 = distinct !{!83, !52, !53}
!84 = !{!85, !36, i64 0}
!85 = !{!"", !36, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !36, i64 32}
!86 = !{!85, !36, i64 24}
!87 = !{!85, !36, i64 32}
!88 = !{!85, !42, i64 16}
!89 = distinct !{!89, !52, !53}
!90 = !{!91, !36, i64 8}
!91 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!92 = !{i32 0, i32 2}
!93 = !{!94, !42, i64 40}
!94 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!95 = !{!94, !36, i64 32}
!96 = !{!94, !36, i64 24}
!97 = !{!94, !36, i64 16}
!98 = !{!94, !41, i64 48}
!99 = !{!94, !36, i64 8}
!100 = !{!101, !36, i64 16}
!101 = !{!"btr_def_s", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65, !37, i64 66, !37, i64 67, !36, i64 72}
!102 = !{!101, !41, i64 24}
!103 = !{!101, !36, i64 32}
!104 = !{!101, !41, i64 40}
!105 = !{!78, !41, i64 88}
!106 = !{!101, !41, i64 44}
!107 = !{!101, !37, i64 64}
!108 = !{!101, !37, i64 65}
!109 = !{!101, !37, i64 66}
!110 = !{!101, !36, i64 56}
!111 = !{!101, !36, i64 72}
!112 = !{!113, !36, i64 8}
!113 = !{!"btr_def_group_s", !36, i64 0, !36, i64 8, !36, i64 16}
!114 = distinct !{!114, !52, !53}
!115 = !{!113, !36, i64 16}
!116 = !{!113, !36, i64 0}
!117 = !{!101, !36, i64 48}
!118 = !{!101, !36, i64 8}
!119 = !{!85, !42, i64 8}
!120 = !{!121, !36, i64 0}
!121 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!122 = !{!101, !36, i64 0}
!123 = !{!124, !36, i64 32}
!124 = !{!"btr_user_s", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !37, i64 48}
!125 = !{!124, !37, i64 48}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = !{!124, !36, i64 8}
!129 = !{!124, !41, i64 16}
!130 = !{!124, !36, i64 24}
!131 = !{!124, !36, i64 0}
!132 = !{!124, !41, i64 40}
!133 = !{!124, !41, i64 44}
!134 = distinct !{!134, !52, !53}
!135 = !{!136, !41, i64 0}
!136 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = !{!91, !36, i64 0}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = distinct !{!147, !52, !53}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = !{!121, !41, i64 12}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = !{!75, !36, i64 0}
!160 = distinct !{!160, !52, !53}
!161 = !{!162, !41, i64 0}
!162 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!163 = !{!164, !41, i64 48}
!164 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = !{!173, !36, i64 0}
!173 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!174 = !{!175, !41, i64 16}
!175 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = !{!175, !36, i64 0}
!179 = distinct !{!179, !53}
!180 = distinct !{!180, !52, !53}
!181 = !{!101, !37, i64 67}
!182 = distinct !{!182, !52, !53}
!183 = distinct !{!183, !52, !53}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !52, !53}
!189 = !{!75, !41, i64 24}
!190 = !{!164, !36, i64 0}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = distinct !{!193, !52, !53}
!194 = distinct !{!194, !52, !53}
!195 = distinct !{!195, !52, !53}
