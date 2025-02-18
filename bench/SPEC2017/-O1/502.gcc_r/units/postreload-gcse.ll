; ModuleID = 'postreload-gcse.c'
source_filename = "postreload-gcse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.modifies_mem = type { ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.expr = type { ptr, i32, ptr }
%struct.occr = type { ptr, ptr, i8 }
%struct.unoccr = type { ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"gcse2\00", align 1
@pass_gcse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_gcse2, ptr @rest_of_handle_gcse2, ptr null, ptr null, i32 0, i32 152, i32 0, i32 0, i32 0, i32 0, i32 1035 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_gcse_after_reload = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@expr_table = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"GCSE AFTER RELOAD stats:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"copies inserted: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"moves inserted:  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"insns deleted:   %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@uid_cuid = internal unnamed_addr global ptr null, align 8
@expr_obstack = internal global %struct.obstack zeroinitializer, align 8
@occr_obstack = internal global %struct.obstack zeroinitializer, align 8
@unoccr_obstack = internal global %struct.obstack zeroinitializer, align 8
@modifies_mem_obstack = internal global %struct.obstack zeroinitializer, align 8
@reg_avail_info = internal unnamed_addr global ptr null, align 8
@modifies_mem_obstack_bottom = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"postreload-gcse.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@modifies_mem_list = internal unnamed_addr global ptr null, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@flag_float_store = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@mems_conflict_p = internal unnamed_addr global i1 false, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"\0A\0Aexpression hash table\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\0A\0Atable entries:\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"expr: \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\0Ahashcode: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"list of occurrences:\0A\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"generating move from %d to %d on edge from %d to %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"generating on edge from %d to %d a copy of load: \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"deleting insn:\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !76 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !77
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !76 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !77
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !76 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !87

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !81
  %11 = load i8, ptr %3, align 1, !tbaa !88
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !76 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !87

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !81
  %11 = load i8, ptr %3, align 1, !tbaa !88
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !76 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !77
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !87

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !81
  %11 = load i8, ptr %3, align 1, !tbaa !88
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !76 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !77
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !76 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !87

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !89
  store i8 %12, ptr %4, align 1, !tbaa !88
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !76 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !87

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !89
  store i8 %12, ptr %4, align 1, !tbaa !88
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !76 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !77
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !87

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !89
  store i8 %12, ptr %4, align 1, !tbaa !88
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !76 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !76 {
  %2 = load i32, ptr %0, align 8, !tbaa !91
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !76 {
  %2 = load i32, ptr %0, align 8, !tbaa !91
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !76 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !92
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !76 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !92
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !76 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !76 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !76 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !76 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
  br i1 %23, label %7, label %24, !llvm.loop !93

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !76 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_gcse2() #9 !prof !96 !PGOFuncName !97 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !92
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !98
  br i1 %5, label %6, label %11, !prof !98

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !77
  %8 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #16
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %0
  %12 = phi i8 [ 0, %0 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_gcse2() #9 !prof !96 !PGOFuncName !99 {
  %1 = alloca i32, align 4
  %2 = tail call ptr @get_insns() #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @stats, i8 0, i64 12, i1 false)
  %3 = tail call i32 @get_max_uid() #16
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 4) #16
  store ptr %6, ptr @uid_cuid, align 8, !tbaa !77
  %7 = load ptr, ptr @cfun, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = icmp eq ptr %14, %12
  br i1 %15, label %51, label %16, !prof !107

16:                                               ; preds = %0, %46
  %17 = phi ptr [ %49, %46 ], [ %14, %0 ]
  %18 = phi i32 [ %47, %46 ], [ 1, %0 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23, !prof !108

23:                                               ; preds = %16, %32
  %24 = phi ptr [ %44, %32 ], [ %21, %16 ]
  %25 = phi i32 [ %38, %32 ], [ %18, %16 ]
  %26 = load ptr, ptr %19, align 8, !tbaa !88
  %27 = getelementptr inbounds %struct.rtl_bb_info, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !88
  %31 = icmp eq ptr %24, %30
  br i1 %31, label %46, label %32, !prof !111

32:                                               ; preds = %23
  %33 = load i32, ptr %24, align 8
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -7
  %36 = icmp ult i32 %35, 4
  %37 = zext i1 %36 to i32
  %38 = add nsw i32 %25, %37
  %39 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !88
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %6, i64 %41
  store i32 %25, ptr %42, align 4, !tbaa !92
  %43 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %23, !prof !112, !llvm.loop !113

46:                                               ; preds = %32, %23, %16
  %47 = phi i32 [ %18, %16 ], [ %38, %32 ], [ %25, %23 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !105
  %50 = icmp eq ptr %49, %12
  br i1 %50, label %51, label %16, !prof !114, !llvm.loop !115

51:                                               ; preds = %46, %0
  %52 = phi i32 [ 1, %0 ], [ %47, %46 ]
  %53 = icmp sgt i32 %52, 55
  %54 = lshr i32 %52, 2
  %55 = select i1 %53, i32 %54, i32 13, !prof !116
  %56 = zext nneg i32 %55 to i64
  %57 = tail call ptr @htab_create(i64 noundef %56, ptr noundef nonnull @hash_expr_for_htab, ptr noundef nonnull @expr_equiv_p, ptr noundef null) #16
  store ptr %57, ptr @expr_table, align 8, !tbaa !77
  %58 = tail call i32 @_obstack_begin(ptr noundef nonnull @expr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #16
  %59 = tail call i32 @_obstack_begin(ptr noundef nonnull @occr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #16
  %60 = tail call i32 @_obstack_begin(ptr noundef nonnull @unoccr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #16
  %61 = tail call i32 @_obstack_begin(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #16
  %62 = tail call ptr @xmalloc(i64 noundef 212) #16
  store ptr %62, ptr @reg_avail_info, align 8, !tbaa !77
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 16
  br i1 %68, label %69, label %70, !prof !121

69:                                               ; preds = %51
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #16
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %72 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %73 = getelementptr inbounds i8, ptr %72, i64 %71
  store ptr %73, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %74 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %79, !prof !121

76:                                               ; preds = %70
  %77 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %78 = or i8 %77, 2
  store i8 %78, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %79

79:                                               ; preds = %76, %70
  %80 = ptrtoint ptr %74 to i64
  store i64 %80, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %81 = ptrtoint ptr %73 to i64
  %82 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !123
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = xor i32 %82, -1
  %86 = sext i32 %85 to i64
  %87 = and i64 %84, %86
  %88 = inttoptr i64 %87 to ptr
  store ptr %88, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %89 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !124
  %90 = ptrtoint ptr %89 to i64
  %91 = sub i64 %87, %90
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %93 = ptrtoint ptr %92 to i64
  %94 = sub i64 %93, %90
  %95 = icmp sgt i64 %91, %94
  %96 = select i1 %95, ptr %92, ptr %88, !prof !121
  store ptr %96, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8
  store ptr %96, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %74, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !77
  tail call void @init_alias_analysis() #16
  %97 = load ptr, ptr @cfun, align 8, !tbaa !77
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !100
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !105
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %99, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !104
  %105 = icmp eq ptr %102, %104
  br i1 %105, label %453, label %106, !prof !107

106:                                              ; preds = %79, %444
  %107 = phi ptr [ %446, %444 ], [ %102, %79 ]
  %108 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %108, i8 0, i64 212, i1 false)
  %109 = load ptr, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !77
  %110 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !124
  %111 = ptrtoint ptr %109 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  store i64 %113, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %122, !prof !125

115:                                              ; preds = %106
  %116 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %117 = ptrtoint ptr %116 to i64
  %118 = sub i64 %117, %112
  %119 = icmp slt i64 %113, %118
  br i1 %119, label %120, label %122, !prof !125

120:                                              ; preds = %115
  %121 = getelementptr inbounds i8, ptr %110, i64 %113
  store ptr %121, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %121, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %124

122:                                              ; preds = %115, %106
  %123 = getelementptr inbounds i8, ptr %110, i64 %113
  tail call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %123) #16
  br label %124

124:                                              ; preds = %120, %122
  store ptr null, ptr @modifies_mem_list, align 8, !tbaa !77
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !88
  %127 = load ptr, ptr %126, align 8, !tbaa !88
  %128 = icmp eq ptr %127, null
  br i1 %128, label %302, label %129, !prof !108

129:                                              ; preds = %124, %298
  %130 = phi ptr [ %300, %298 ], [ %127, %124 ]
  %131 = load ptr, ptr %125, align 8, !tbaa !88
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !109
  %134 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 2
  %135 = load ptr, ptr %134, align 8, !tbaa !88
  %136 = icmp eq ptr %130, %135
  br i1 %136, label %302, label %137, !prof !111

137:                                              ; preds = %129
  %138 = load i32, ptr %130, align 8
  %139 = and i32 %138, 65535
  %140 = add nsw i32 %139, -7
  %141 = icmp ult i32 %140, 4
  br i1 %141, label %142, label %298, !prof !126

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !88
  tail call void @note_stores(ptr noundef %144, ptr noundef nonnull @record_last_set_info, ptr noundef nonnull %130) #16
  %145 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 1, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !88
  %147 = icmp eq ptr %146, null
  br i1 %147, label %185, label %148, !prof !127

148:                                              ; preds = %142
  %149 = load ptr, ptr @uid_cuid, align 8
  %150 = load ptr, ptr @reg_avail_info, align 8
  br label %151

151:                                              ; preds = %181, %148
  %152 = phi ptr [ %146, %148 ], [ %183, %181 ]
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 16711680
  %155 = icmp eq i32 %154, 131072
  br i1 %155, label %156, label %181, !prof !128

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %158 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !88
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !88
  %162 = load i32, ptr %159, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = zext i32 %161 to i64
  %166 = zext nneg i32 %164 to i64
  %167 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %165, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !88
  %169 = zext i8 %168 to i32
  %170 = add i32 %161, %169
  br label %171

171:                                              ; preds = %171, %156
  %172 = phi i32 [ %161, %156 ], [ %179, %171 ]
  %173 = load i32, ptr %157, align 8, !tbaa !88
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %149, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !92
  %177 = zext i32 %172 to i64
  %178 = getelementptr inbounds i32, ptr %150, i64 %177
  store i32 %176, ptr %178, align 4, !tbaa !92
  %179 = add i32 %172, 1
  %180 = icmp ult i32 %179, %170
  br i1 %180, label %171, label %181, !llvm.loop !129

181:                                              ; preds = %171, %151
  %182 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !88
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %151, !prof !130, !llvm.loop !131

185:                                              ; preds = %181, %142
  %186 = load i32, ptr %130, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 10
  br i1 %188, label %189, label %298, !prof !132

189:                                              ; preds = %185
  %190 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !133
  %191 = load ptr, ptr @uid_cuid, align 8
  %192 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %193 = load ptr, ptr @reg_avail_info, align 8
  br label %194

194:                                              ; preds = %205, %189
  %195 = phi i64 [ 0, %189 ], [ %206, %205 ]
  %196 = shl nuw nsw i64 1, %195
  %197 = and i64 %196, %190
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %205, label %199, !prof !134

199:                                              ; preds = %194
  %200 = load i32, ptr %192, align 8, !tbaa !88
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %191, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !92
  %204 = getelementptr inbounds i32, ptr %193, i64 %195
  store i32 %203, ptr %204, align 4, !tbaa !92
  br label %205

205:                                              ; preds = %199, %194
  %206 = add nuw nsw i64 %195, 1
  %207 = icmp eq i64 %206, 53
  br i1 %207, label %208, label %194, !prof !135, !llvm.loop !136

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 1, i32 1, i32 0, i32 0, i64 2
  %210 = load ptr, ptr %209, align 8, !tbaa !88
  %211 = icmp eq ptr %210, null
  br i1 %211, label %257, label %212, !prof !137

212:                                              ; preds = %208, %253
  %213 = phi ptr [ %255, %253 ], [ %210, %208 ]
  %214 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !88
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 25
  br i1 %218, label %219, label %253

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !88
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 37
  br i1 %224, label %225, label %253

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %227 = load i32, ptr %226, align 8, !tbaa !88
  %228 = icmp ult i32 %227, 53
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 757, ptr noundef nonnull @.str.7) #16
  br label %230

230:                                              ; preds = %229, %225
  %231 = load i32, ptr %226, align 8, !tbaa !88
  %232 = load i32, ptr %221, align 8
  %233 = lshr i32 %232, 16
  %234 = and i32 %233, 255
  %235 = zext i32 %231 to i64
  %236 = zext nneg i32 %234 to i64
  %237 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %235, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !88
  %239 = zext i8 %238 to i32
  %240 = add i32 %231, %239
  %241 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %242 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  br label %243

243:                                              ; preds = %243, %230
  %244 = phi i32 [ %231, %230 ], [ %251, %243 ]
  %245 = load i32, ptr %192, align 8, !tbaa !88
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %241, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !92
  %249 = zext i32 %244 to i64
  %250 = getelementptr inbounds i32, ptr %242, i64 %249
  store i32 %248, ptr %250, align 4, !tbaa !92
  %251 = add i32 %244, 1
  %252 = icmp ult i32 %251, %240
  br i1 %252, label %243, label %253, !llvm.loop !129

253:                                              ; preds = %243, %219, %212
  %254 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !88
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %212, !prof !137, !llvm.loop !138

257:                                              ; preds = %253, %208
  %258 = load i32, ptr %130, align 8
  %259 = and i32 %258, -2080374784
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %298, !prof !139

261:                                              ; preds = %257
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %262 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %263 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %264 = ptrtoint ptr %262 to i64
  %265 = ptrtoint ptr %263 to i64
  %266 = sub i64 %264, %265
  %267 = icmp slt i64 %266, 16
  br i1 %267, label %268, label %269, !prof !140

268:                                              ; preds = %261
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #16
  br label %269

269:                                              ; preds = %268, %261
  %270 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %271 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %272 = getelementptr inbounds i8, ptr %271, i64 %270
  store ptr %272, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %273 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  %274 = icmp eq ptr %272, %273
  br i1 %274, label %275, label %278, !prof !140

275:                                              ; preds = %269
  %276 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %277 = or i8 %276, 2
  store i8 %277, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %278

278:                                              ; preds = %275, %269
  %279 = ptrtoint ptr %273 to i64
  store i64 %279, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %280 = ptrtoint ptr %272 to i64
  %281 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !123
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %282, %280
  %284 = xor i32 %281, -1
  %285 = sext i32 %284 to i64
  %286 = and i64 %283, %285
  %287 = inttoptr i64 %286 to ptr
  store ptr %287, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %288 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !124
  %289 = ptrtoint ptr %288 to i64
  %290 = sub i64 %286, %289
  %291 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %292 = ptrtoint ptr %291 to i64
  %293 = sub i64 %292, %289
  %294 = icmp sgt i64 %290, %293
  %295 = select i1 %294, ptr %291, ptr %287, !prof !140
  store ptr %295, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8
  store ptr %295, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %130, ptr %273, align 8, !tbaa !141
  %296 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !77
  %297 = getelementptr inbounds %struct.modifies_mem, ptr %273, i64 0, i32 1
  store ptr %296, ptr %297, align 8, !tbaa !143
  store ptr %273, ptr @modifies_mem_list, align 8, !tbaa !77
  br label %298

298:                                              ; preds = %278, %257, %185, %137
  %299 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 0, i64 2
  %300 = load ptr, ptr %299, align 8, !tbaa !88
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %129, !prof !112, !llvm.loop !144

302:                                              ; preds = %298, %129, %124
  %303 = load ptr, ptr %125, align 8, !tbaa !88
  %304 = load ptr, ptr %303, align 8, !tbaa !88
  %305 = icmp eq ptr %304, null
  br i1 %305, label %444, label %306, !prof !108

306:                                              ; preds = %302, %440
  %307 = phi ptr [ %442, %440 ], [ %304, %302 ]
  %308 = load ptr, ptr %125, align 8, !tbaa !88
  %309 = getelementptr inbounds %struct.rtl_bb_info, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !109
  %311 = getelementptr inbounds %struct.rtx_def, ptr %310, i64 0, i32 1, i32 0, i32 0, i64 2
  %312 = load ptr, ptr %311, align 8, !tbaa !88
  %313 = icmp eq ptr %307, %312
  br i1 %313, label %444, label %314, !prof !111

314:                                              ; preds = %306
  %315 = load i32, ptr %307, align 8
  %316 = and i32 %315, 65535
  %317 = add nsw i32 %316, -7
  %318 = icmp ult i32 %317, 4
  br i1 %318, label %319, label %440, !prof !126

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 1
  %321 = load ptr, ptr %320, align 8, !tbaa !88
  %322 = load i32, ptr %321, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 23
  br i1 %324, label %325, label %440, !prof !145

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %327 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %328 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1, i32 0, i32 0, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !88
  %330 = load ptr, ptr %327, align 8, !tbaa !88
  %331 = load i32, ptr %329, align 8
  %332 = and i32 %331, 65535
  %333 = icmp eq i32 %332, 43
  br i1 %333, label %340, label %334, !prof !146

334:                                              ; preds = %325
  %335 = load i32, ptr %330, align 8
  %336 = and i32 %335, 65535
  %337 = icmp ne i32 %336, 43
  %338 = icmp eq i32 %316, 9
  %339 = or i1 %338, %337
  br i1 %339, label %440, label %342, !prof !147

340:                                              ; preds = %325
  %341 = icmp eq i32 %316, 9
  br i1 %341, label %440, label %342, !prof !148

342:                                              ; preds = %334, %340
  %343 = tail call i32 @set_noop_p(ptr noundef nonnull %321) #16
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %440, !prof !149

345:                                              ; preds = %342
  %346 = load i32, ptr %330, align 8
  %347 = and i32 %346, 65535
  %348 = icmp eq i32 %347, 37
  br i1 %348, label %349, label %368, !prof !150

349:                                              ; preds = %345
  %350 = lshr i32 %346, 16
  %351 = and i32 %350, 255
  %352 = tail call zeroext i8 @can_copy_p(i32 noundef %351) #16
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %440, label %354, !prof !151

354:                                              ; preds = %349
  %355 = load i32, ptr %329, align 8
  %356 = lshr i32 %355, 16
  %357 = and i32 %356, 255
  %358 = tail call i32 @general_operand(ptr noundef nonnull %329, i32 noundef %357) #16
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %440, label %360, !prof !151

360:                                              ; preds = %354
  %361 = getelementptr inbounds %struct.rtx_def, ptr %330, i64 0, i32 1
  %362 = load i32, ptr %361, align 8, !tbaa !88
  %363 = and i32 %362, -8
  %364 = icmp eq i32 %363, 8
  br i1 %364, label %440, label %365, !prof !151

365:                                              ; preds = %360
  %366 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %329, ptr noundef nonnull %307, i8 noundef zeroext 1), !range !152
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %440, label %438, !prof !153

368:                                              ; preds = %345
  %369 = load i32, ptr %329, align 8
  %370 = and i32 %369, 65535
  %371 = icmp eq i32 %370, 37
  br i1 %371, label %372, label %440, !prof !154

372:                                              ; preds = %368
  %373 = lshr i32 %369, 16
  %374 = and i32 %373, 255
  %375 = tail call zeroext i8 @can_copy_p(i32 noundef %374) #16
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %440, label %377, !prof !155

377:                                              ; preds = %372
  %378 = load i32, ptr %330, align 8
  %379 = lshr i32 %378, 16
  %380 = and i32 %379, 255
  %381 = tail call i32 @general_operand(ptr noundef nonnull %330, i32 noundef %380) #16
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %440, label %383, !prof !155

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1
  %385 = load i32, ptr %384, align 8, !tbaa !88
  %386 = and i32 %385, -8
  %387 = icmp eq i32 %386, 8
  br i1 %387, label %440, label %388, !prof !155

388:                                              ; preds = %383
  %389 = load i32, ptr @flag_float_store, align 4, !tbaa !92
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %398, label %391, !prof !156

391:                                              ; preds = %388
  %392 = load i32, ptr %330, align 8
  %393 = lshr i32 %392, 16
  %394 = and i32 %393, 255
  %395 = zext nneg i32 %394 to i64
  %396 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !88
  switch i8 %397, label %398 [
    i8 8, label %440
    i8 9, label %440
    i8 11, label %440
    i8 17, label %440
  ]

398:                                              ; preds = %391, %388
  %399 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %400 = load i32, ptr %326, align 8, !tbaa !88
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, ptr %399, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !92
  %404 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !77
  %405 = icmp eq ptr %404, null
  br i1 %405, label %433, label %406, !prof !157

406:                                              ; preds = %398, %431
  %407 = phi ptr [ %429, %431 ], [ %404, %398 ]
  %408 = load ptr, ptr %407, align 8, !tbaa !141
  %409 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %410 = getelementptr inbounds %struct.rtx_def, ptr %408, i64 0, i32 1
  %411 = load i32, ptr %410, align 8, !tbaa !88
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, ptr %409, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !92
  %415 = icmp sgt i32 %414, %403
  br i1 %415, label %416, label %424, !prof !158, !llvm.loop !159

416:                                              ; preds = %406
  %417 = load i32, ptr %408, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 10
  br i1 %419, label %428, label %420, !prof !160

420:                                              ; preds = %416
  store i1 false, ptr @mems_conflict_p, align 4
  %421 = getelementptr inbounds %struct.rtx_def, ptr %408, i64 1
  %422 = load ptr, ptr %421, align 8, !tbaa !88
  tail call void @note_stores(ptr noundef %422, ptr noundef nonnull @find_mem_conflicts, ptr noundef nonnull %330) #16
  %423 = load i1, ptr @mems_conflict_p, align 4
  br i1 %423, label %428, label %424, !prof !161

424:                                              ; preds = %420, %406
  %425 = phi i32 [ 2, %406 ], [ 0, %420 ]
  %426 = getelementptr inbounds %struct.modifies_mem, ptr %407, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !143
  br label %428

428:                                              ; preds = %424, %420, %416
  %429 = phi ptr [ %407, %416 ], [ %407, %420 ], [ %427, %424 ]
  %430 = phi i32 [ 1, %416 ], [ 1, %420 ], [ %425, %424 ]
  switch i32 %430, label %440 [
    i32 0, label %431
    i32 2, label %431
  ], !prof !162

431:                                              ; preds = %428, %428
  %432 = icmp eq ptr %429, null
  br i1 %432, label %433, label %406, !prof !163, !llvm.loop !159

433:                                              ; preds = %431, %398
  %434 = getelementptr inbounds %struct.rtx_def, ptr %330, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !88
  %436 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %435, ptr noundef nonnull %307, i8 noundef zeroext 1), !range !152
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %440, label %438, !prof !164

438:                                              ; preds = %433, %365
  %439 = phi ptr [ %329, %365 ], [ %330, %433 ]
  tail call fastcc void @insert_expr_in_table(ptr noundef nonnull %439, ptr noundef nonnull %307)
  br label %440

440:                                              ; preds = %428, %438, %391, %391, %391, %334, %433, %391, %383, %377, %372, %368, %365, %360, %354, %349, %342, %340, %319, %314
  %441 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 0, i64 2
  %442 = load ptr, ptr %441, align 8, !tbaa !88
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %306, !prof !112, !llvm.loop !165

444:                                              ; preds = %440, %306, %302
  %445 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 6
  %446 = load ptr, ptr %445, align 8, !tbaa !105
  %447 = load ptr, ptr @cfun, align 8, !tbaa !77
  %448 = getelementptr inbounds %struct.function, ptr %447, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !100
  %450 = getelementptr inbounds %struct.control_flow_graph, ptr %449, i64 0, i32 1
  %451 = load ptr, ptr %450, align 8, !tbaa !104
  %452 = icmp eq ptr %446, %451
  br i1 %452, label %453, label %106, !prof !114, !llvm.loop !166

453:                                              ; preds = %444, %79
  %454 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %455 = icmp eq ptr %454, null
  br i1 %455, label %473, label %456, !prof !98

456:                                              ; preds = %453
  %457 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr nonnull %454)
  %458 = load ptr, ptr @expr_table, align 8, !tbaa !77
  %459 = tail call i64 @htab_size(ptr noundef %458) #16
  %460 = load ptr, ptr @expr_table, align 8, !tbaa !77
  %461 = tail call i64 @htab_elements(ptr noundef %460) #16
  %462 = load ptr, ptr @expr_table, align 8, !tbaa !77
  %463 = tail call double @htab_collisions(ptr noundef %462) #16
  %464 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %454, ptr noundef nonnull @.str.9, i64 noundef %459, i64 noundef %461, double noundef %463)
  %465 = load ptr, ptr @expr_table, align 8, !tbaa !77
  %466 = tail call i64 @htab_elements(ptr noundef %465) #16
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %456
  %469 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr nonnull %454)
  %470 = load ptr, ptr @expr_table, align 8, !tbaa !77
  tail call void @htab_traverse(ptr noundef %470, ptr noundef nonnull @dump_hash_table_entry, ptr noundef nonnull %454) #16
  br label %471

471:                                              ; preds = %468, %456
  %472 = tail call i32 @fputc(i32 10, ptr nonnull %454)
  br label %473

473:                                              ; preds = %471, %453
  %474 = load ptr, ptr @expr_table, align 8, !tbaa !77
  %475 = tail call i64 @htab_elements(ptr noundef %474) #16
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %1408, label %477, !prof !121

477:                                              ; preds = %473
  %478 = load ptr, ptr @cfun, align 8, !tbaa !77
  %479 = getelementptr inbounds %struct.function, ptr %478, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !100
  %481 = load ptr, ptr %480, align 8, !tbaa !102
  %482 = getelementptr inbounds %struct.basic_block_def, ptr %481, i64 0, i32 6
  %483 = load ptr, ptr %482, align 8, !tbaa !105
  %484 = getelementptr inbounds %struct.control_flow_graph, ptr %480, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !104
  %486 = icmp eq ptr %483, %485
  br i1 %486, label %1386, label %487, !prof !121

487:                                              ; preds = %477
  %488 = getelementptr inbounds %struct.basic_block_def, ptr %483, i64 0, i32 6
  %489 = load ptr, ptr %488, align 8, !tbaa !105
  %490 = load ptr, ptr @cfun, align 8, !tbaa !77
  %491 = getelementptr inbounds %struct.function, ptr %490, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !100
  %493 = getelementptr inbounds %struct.control_flow_graph, ptr %492, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !104
  %495 = icmp eq ptr %489, %494
  br i1 %495, label %1385, label %496, !prof !107

496:                                              ; preds = %487, %1376
  %497 = phi ptr [ %1378, %1376 ], [ %489, %487 ]
  %498 = load ptr, ptr %497, align 8, !tbaa !167
  %499 = icmp eq ptr %498, null
  br i1 %499, label %1376, label %500, !prof !168

500:                                              ; preds = %496
  %501 = load i32, ptr %498, align 8, !tbaa !169
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %1376, label %503, !prof !168

503:                                              ; preds = %500, %565
  %504 = phi i32 [ %566, %565 ], [ 0, %500 ]
  %505 = load ptr, ptr %497, align 8, !tbaa !77
  %506 = icmp eq ptr %505, null
  br i1 %506, label %509, label %507, !prof !171

507:                                              ; preds = %503
  %508 = load i32, ptr %505, align 8, !tbaa !169
  br label %509

509:                                              ; preds = %507, %503
  %510 = phi i32 [ %508, %507 ], [ 0, %503 ]
  %511 = icmp eq i32 %510, %504
  br i1 %511, label %516, label %512, !prof !172

512:                                              ; preds = %509
  %513 = zext i32 %504 to i64
  %514 = getelementptr inbounds %struct.VEC_edge_base, ptr %505, i64 0, i32 2, i64 %513
  %515 = load ptr, ptr %514, align 8, !tbaa !77
  br label %516

516:                                              ; preds = %512, %509
  %517 = phi ptr [ %515, %512 ], [ null, %509 ]
  br i1 %511, label %567, label %518, !prof !172

518:                                              ; preds = %516
  %519 = getelementptr inbounds %struct.edge_def, ptr %517, i64 0, i32 7
  %520 = load i32, ptr %519, align 8, !tbaa !173
  %521 = and i32 %520, 2
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %543, label %523, !prof !175

523:                                              ; preds = %518
  %524 = load ptr, ptr %517, align 8, !tbaa !176
  %525 = getelementptr inbounds %struct.basic_block_def, ptr %524, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !177
  %527 = icmp eq ptr %526, null
  br i1 %527, label %530, label %528

528:                                              ; preds = %523
  %529 = load i32, ptr %526, align 8, !tbaa !169
  br label %530

530:                                              ; preds = %528, %523
  %531 = phi i32 [ %529, %528 ], [ 0, %523 ]
  %532 = icmp ugt i32 %531, 1
  br i1 %532, label %533, label %543

533:                                              ; preds = %530
  %534 = getelementptr inbounds %struct.edge_def, ptr %517, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !178
  %536 = load ptr, ptr %535, align 8, !tbaa !167
  %537 = icmp eq ptr %536, null
  br i1 %537, label %540, label %538

538:                                              ; preds = %533
  %539 = load i32, ptr %536, align 8, !tbaa !169
  br label %540

540:                                              ; preds = %538, %533
  %541 = phi i32 [ %539, %538 ], [ 0, %533 ]
  %542 = icmp ugt i32 %541, 1
  br i1 %542, label %1376, label %543

543:                                              ; preds = %540, %530, %518
  %544 = load ptr, ptr %517, align 8, !tbaa !176
  %545 = getelementptr inbounds %struct.basic_block_def, ptr %544, i64 0, i32 7
  %546 = load ptr, ptr %545, align 8, !tbaa !88
  %547 = getelementptr inbounds %struct.rtl_bb_info, ptr %546, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !109
  %549 = load i32, ptr %548, align 8
  %550 = and i32 %549, 65535
  %551 = icmp eq i32 %550, 9
  br i1 %551, label %552, label %558, !prof !179

552:                                              ; preds = %543
  %553 = getelementptr inbounds %struct.rtx_def, ptr %548, i64 1
  %554 = load ptr, ptr %553, align 8, !tbaa !88
  %555 = load i32, ptr %554, align 8
  %556 = and i32 %555, 65534
  %557 = icmp eq i32 %556, 20
  br i1 %557, label %1376, label %558, !prof !180

558:                                              ; preds = %552, %543
  br i1 %506, label %561, label %559, !prof !181

559:                                              ; preds = %558
  %560 = load i32, ptr %505, align 8, !tbaa !169
  br label %561

561:                                              ; preds = %559, %558
  %562 = phi i32 [ %560, %559 ], [ 0, %558 ]
  %563 = icmp ult i32 %504, %562
  br i1 %563, label %565, label %564, !prof !175

564:                                              ; preds = %561
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.7) #16
  br label %565

565:                                              ; preds = %564, %561
  %566 = add i32 %504, 1
  br label %503, !llvm.loop !182

567:                                              ; preds = %516
  %568 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %497) #16
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %1376, !prof !183

570:                                              ; preds = %567
  %571 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %571, i8 0, i64 212, i1 false)
  %572 = load ptr, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !77
  %573 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !124
  %574 = ptrtoint ptr %572 to i64
  %575 = ptrtoint ptr %573 to i64
  %576 = sub i64 %574, %575
  store i64 %576, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %577 = icmp sgt i64 %576, 0
  br i1 %577, label %578, label %585, !prof !125

578:                                              ; preds = %570
  %579 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %580 = ptrtoint ptr %579 to i64
  %581 = sub i64 %580, %575
  %582 = icmp slt i64 %576, %581
  br i1 %582, label %583, label %585, !prof !125

583:                                              ; preds = %578
  %584 = getelementptr inbounds i8, ptr %573, i64 %576
  store ptr %584, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %584, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %587

585:                                              ; preds = %578, %570
  %586 = getelementptr inbounds i8, ptr %573, i64 %576
  call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %586) #16
  br label %587

587:                                              ; preds = %583, %585
  store ptr null, ptr @modifies_mem_list, align 8, !tbaa !77
  %588 = getelementptr inbounds %struct.basic_block_def, ptr %497, i64 0, i32 7
  %589 = load ptr, ptr %588, align 8, !tbaa !88
  %590 = load ptr, ptr %589, align 8, !tbaa !88
  %591 = icmp eq ptr %590, null
  br i1 %591, label %1376, label %592, !prof !108

592:                                              ; preds = %587, %1372
  %593 = phi ptr [ %1374, %1372 ], [ %590, %587 ]
  %594 = load ptr, ptr %588, align 8, !tbaa !88
  %595 = getelementptr inbounds %struct.rtl_bb_info, ptr %594, i64 0, i32 1
  %596 = load ptr, ptr %595, align 8, !tbaa !109
  %597 = getelementptr inbounds %struct.rtx_def, ptr %596, i64 0, i32 1, i32 0, i32 0, i64 2
  %598 = load ptr, ptr %597, align 8, !tbaa !88
  %599 = icmp eq ptr %593, %598
  br i1 %599, label %1376, label %600, !prof !184

600:                                              ; preds = %592
  %601 = load i32, ptr %593, align 8
  %602 = and i32 %601, 65535
  %603 = icmp eq i32 %602, 8
  br i1 %603, label %604, label %1211, !prof !185

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 1
  %606 = load ptr, ptr %605, align 8, !tbaa !88
  %607 = load i32, ptr %606, align 8
  %608 = and i32 %607, 65535
  %609 = icmp eq i32 %608, 23
  br i1 %609, label %610, label %1211, !prof !186

610:                                              ; preds = %604
  %611 = getelementptr inbounds %struct.rtx_def, ptr %606, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !88
  %613 = load i32, ptr %612, align 8
  %614 = and i32 %613, 65535
  %615 = icmp eq i32 %614, 37
  br i1 %615, label %616, label %1211, !prof !187

616:                                              ; preds = %610
  %617 = getelementptr inbounds %struct.rtx_def, ptr %606, i64 0, i32 1, i32 0, i32 0, i64 1
  %618 = load ptr, ptr %617, align 8, !tbaa !88
  %619 = load i32, ptr %618, align 8
  %620 = and i32 %619, 134283263
  %621 = icmp eq i32 %620, 43
  br i1 %621, label %622, label %1211, !prof !188

622:                                              ; preds = %616
  %623 = lshr i32 %619, 16
  %624 = and i32 %623, 255
  %625 = icmp eq i32 %624, 1
  br i1 %625, label %1211, label %626, !prof !189

626:                                              ; preds = %622
  %627 = call i32 @general_operand(ptr noundef nonnull %618, i32 noundef %624) #16
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %1211, label %629, !prof !189

629:                                              ; preds = %626
  %630 = call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %618, ptr noundef nonnull %593, i8 noundef zeroext 0), !range !152
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %1211, label %632, !prof !190

632:                                              ; preds = %629
  %633 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !92
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %638, label %635, !prof !191

635:                                              ; preds = %632
  %636 = call i32 @may_trap_p(ptr noundef nonnull %618) #16
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %1211

638:                                              ; preds = %635, %632
  %639 = call i32 @side_effects_p(ptr noundef nonnull %618) #16
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %1211, !prof !191

641:                                              ; preds = %638
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #16
  store i32 0, ptr %1, align 4, !tbaa !92
  %642 = load i32, ptr %618, align 8
  %643 = lshr i32 %642, 16
  %644 = and i32 %643, 255
  %645 = call i32 @hash_rtx(ptr noundef nonnull %618, i32 noundef %644, ptr noundef nonnull %1, ptr noundef null, i8 noundef zeroext 0) #16
  %646 = load i32, ptr %1, align 4, !tbaa !92
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %704, !prof !191

648:                                              ; preds = %641
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %649 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %650 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %651 = ptrtoint ptr %649 to i64
  %652 = ptrtoint ptr %650 to i64
  %653 = sub i64 %651, %652
  %654 = icmp slt i64 %653, 24
  br i1 %654, label %655, label %656, !prof !192

655:                                              ; preds = %648
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #16
  br label %656

656:                                              ; preds = %655, %648
  %657 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %658 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %659 = getelementptr inbounds i8, ptr %658, i64 %657
  store ptr %659, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %660 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %661 = icmp eq ptr %659, %660
  br i1 %661, label %662, label %665, !prof !192

662:                                              ; preds = %656
  %663 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %664 = or i8 %663, 2
  store i8 %664, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %665

665:                                              ; preds = %662, %656
  %666 = ptrtoint ptr %660 to i64
  store i64 %666, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %667 = ptrtoint ptr %659 to i64
  %668 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !123
  %669 = sext i32 %668 to i64
  %670 = add nsw i64 %669, %667
  %671 = xor i32 %668, -1
  %672 = sext i32 %671 to i64
  %673 = and i64 %670, %672
  %674 = inttoptr i64 %673 to ptr
  store ptr %674, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %675 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %676 = ptrtoint ptr %675 to i64
  %677 = sub i64 %673, %676
  %678 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %679 = ptrtoint ptr %678 to i64
  %680 = sub i64 %679, %676
  %681 = icmp sgt i64 %677, %680
  %682 = select i1 %681, ptr %678, ptr %674, !prof !192
  store ptr %682, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8
  store ptr %682, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %618, ptr %660, align 8, !tbaa !193
  %683 = getelementptr inbounds %struct.expr, ptr %660, i64 0, i32 1
  store i32 %645, ptr %683, align 8, !tbaa !195
  %684 = getelementptr inbounds %struct.expr, ptr %660, i64 0, i32 2
  store ptr null, ptr %684, align 8, !tbaa !196
  %685 = load ptr, ptr @expr_table, align 8, !tbaa !77
  %686 = call ptr @htab_find_slot_with_hash(ptr noundef %685, ptr noundef nonnull %660, i32 noundef %645, i32 noundef 1) #16
  %687 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %688 = ptrtoint ptr %687 to i64
  %689 = sub i64 %666, %688
  store i64 %689, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %690 = icmp sgt i64 %689, 0
  br i1 %690, label %691, label %698, !prof !191

691:                                              ; preds = %665
  %692 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %693 = ptrtoint ptr %692 to i64
  %694 = sub i64 %693, %688
  %695 = icmp slt i64 %689, %694
  br i1 %695, label %696, label %698, !prof !191

696:                                              ; preds = %691
  %697 = getelementptr inbounds i8, ptr %687, i64 %689
  store ptr %697, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %697, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %700

698:                                              ; preds = %691, %665
  %699 = getelementptr inbounds i8, ptr %687, i64 %689
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %699) #16
  br label %700

700:                                              ; preds = %698, %696
  %701 = icmp eq ptr %686, null
  br i1 %701, label %704, label %702, !prof !192

702:                                              ; preds = %700
  %703 = load ptr, ptr %686, align 8, !tbaa !77
  br label %704

704:                                              ; preds = %702, %700, %641
  %705 = phi ptr [ %703, %702 ], [ null, %641 ], [ null, %700 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #16
  %706 = icmp eq ptr %705, null
  br i1 %706, label %1211, label %707, !prof !197

707:                                              ; preds = %704
  %708 = load ptr, ptr %605, align 8, !tbaa !88
  %709 = getelementptr inbounds %struct.rtx_def, ptr %708, i64 0, i32 1
  %710 = load ptr, ptr %709, align 8, !tbaa !88
  %711 = getelementptr inbounds %struct.rtx_def, ptr %710, i64 0, i32 1
  %712 = load i32, ptr %711, align 8, !tbaa !88
  %713 = load i32, ptr %710, align 8
  %714 = lshr i32 %713, 16
  %715 = and i32 %714, 255
  %716 = zext i32 %712 to i64
  %717 = zext nneg i32 %715 to i64
  %718 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %716, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !88
  %720 = zext i8 %719 to i32
  %721 = add i32 %712, %720
  %722 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  br label %723

723:                                              ; preds = %723, %707
  %724 = phi i32 [ %712, %707 ], [ %729, %723 ]
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds i32, ptr %722, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !92
  %728 = icmp slt i32 %727, 1
  %729 = add i32 %724, 1
  %730 = icmp ult i32 %729, %721
  %731 = select i1 %728, i1 %730, i1 false, !prof !198
  br i1 %731, label %723, label %732, !prof !199, !llvm.loop !200

732:                                              ; preds = %723
  br i1 %728, label %733, label %1211, !prof !198

733:                                              ; preds = %732
  %734 = load ptr, ptr %588, align 8, !tbaa !88
  %735 = load ptr, ptr %734, align 8, !tbaa !201
  %736 = getelementptr inbounds %struct.rtx_def, ptr %735, i64 0, i32 1, i32 0, i32 0, i64 1
  %737 = load ptr, ptr %736, align 8, !tbaa !88
  %738 = call i32 @reg_used_between_p(ptr noundef nonnull %710, ptr noundef %737, ptr noundef nonnull %593) #16
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %740, label %1211, !prof !198

740:                                              ; preds = %733
  %741 = getelementptr inbounds %struct.expr, ptr %705, i64 0, i32 2
  br label %742

742:                                              ; preds = %740, %1048
  %743 = phi i32 [ %1049, %1048 ], [ 0, %740 ]
  %744 = phi ptr [ %1033, %1048 ], [ null, %740 ]
  %745 = phi ptr [ %1034, %1048 ], [ null, %740 ]
  %746 = phi i32 [ %1035, %1048 ], [ 0, %740 ]
  %747 = phi i64 [ %1036, %1048 ], [ 0, %740 ]
  %748 = phi i64 [ %897, %1048 ], [ 0, %740 ]
  %749 = phi i8 [ %1037, %1048 ], [ 0, %740 ]
  %750 = phi i64 [ %1038, %1048 ], [ 0, %740 ]
  %751 = phi ptr [ %1039, %1048 ], [ null, %740 ]
  %752 = load ptr, ptr %497, align 8, !tbaa !77
  %753 = icmp eq ptr %752, null
  br i1 %753, label %756, label %754, !prof !202

754:                                              ; preds = %742
  %755 = load i32, ptr %752, align 8, !tbaa !169
  br label %756

756:                                              ; preds = %754, %742
  %757 = phi i32 [ %755, %754 ], [ 0, %742 ]
  %758 = icmp eq i32 %757, %743
  br i1 %758, label %763, label %759, !prof !203

759:                                              ; preds = %756
  %760 = zext i32 %743 to i64
  %761 = getelementptr inbounds %struct.VEC_edge_base, ptr %752, i64 0, i32 2, i64 %760
  %762 = load ptr, ptr %761, align 8, !tbaa !77
  br label %763

763:                                              ; preds = %759, %756
  %764 = phi ptr [ %762, %759 ], [ null, %756 ]
  br i1 %758, label %1050, label %765, !prof !203

765:                                              ; preds = %763
  %766 = load ptr, ptr %764, align 8, !tbaa !176
  %767 = getelementptr inbounds %struct.basic_block_def, ptr %766, i64 0, i32 7
  %768 = load ptr, ptr %767, align 8, !tbaa !88
  %769 = getelementptr inbounds %struct.rtl_bb_info, ptr %768, i64 0, i32 1
  %770 = load ptr, ptr %769, align 8, !tbaa !109
  %771 = getelementptr inbounds %struct.rtx_def, ptr %770, i64 0, i32 1, i32 0, i32 0, i64 2
  %772 = load ptr, ptr %771, align 8, !tbaa !88
  br label %773

773:                                              ; preds = %777, %765
  %774 = phi ptr [ %741, %765 ], [ %775, %777 ]
  %775 = load ptr, ptr %774, align 8, !tbaa !77
  %776 = icmp eq ptr %775, null
  br i1 %776, label %783, label %777, !prof !204

777:                                              ; preds = %773
  %778 = getelementptr inbounds %struct.occr, ptr %775, i64 0, i32 1
  %779 = load ptr, ptr %778, align 8, !tbaa !205
  %780 = getelementptr inbounds %struct.rtx_def, ptr %779, i64 0, i32 1, i32 0, i32 1
  %781 = load ptr, ptr %780, align 8, !tbaa !88
  %782 = icmp eq ptr %781, %766
  br i1 %782, label %783, label %773, !prof !207, !llvm.loop !208

783:                                              ; preds = %777, %773
  %784 = phi ptr [ null, %773 ], [ %775, %777 ]
  %785 = icmp eq ptr %784, null
  br i1 %785, label %870, label %786, !prof !209

786:                                              ; preds = %783, %867
  %787 = phi ptr [ %868, %867 ], [ %784, %783 ]
  %788 = getelementptr inbounds %struct.occr, ptr %787, i64 0, i32 1
  %789 = load ptr, ptr %788, align 8, !tbaa !205
  %790 = getelementptr inbounds %struct.rtx_def, ptr %789, i64 1
  %791 = load ptr, ptr %790, align 8, !tbaa !88
  %792 = getelementptr inbounds %struct.rtx_def, ptr %791, i64 0, i32 1
  %793 = load ptr, ptr %792, align 8, !tbaa !88
  %794 = load i32, ptr %793, align 8
  %795 = and i32 %794, 65535
  %796 = icmp eq i32 %795, 37
  br i1 %796, label %808, label %797, !prof !210

797:                                              ; preds = %786
  %798 = getelementptr inbounds %struct.rtx_def, ptr %791, i64 0, i32 1, i32 0, i32 0, i64 1
  %799 = load ptr, ptr %798, align 8, !tbaa !88
  %800 = load i32, ptr %799, align 8
  %801 = and i32 %800, 65535
  %802 = icmp eq i32 %801, 37
  br i1 %802, label %804, label %803, !prof !211

803:                                              ; preds = %797
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 906, ptr noundef nonnull @.str.7) #16
  br label %804

804:                                              ; preds = %803, %797
  %805 = load ptr, ptr %790, align 8, !tbaa !88
  %806 = getelementptr inbounds %struct.rtx_def, ptr %805, i64 0, i32 1, i32 0, i32 0, i64 1
  %807 = load ptr, ptr %806, align 8, !tbaa !88
  br label %808

808:                                              ; preds = %786, %804
  %809 = phi ptr [ %807, %804 ], [ %793, %786 ]
  %810 = icmp eq ptr %809, null
  br i1 %810, label %811, label %812, !prof !212

811:                                              ; preds = %808
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1005, ptr noundef nonnull @.str.7) #16
  br label %812

812:                                              ; preds = %811, %808
  %813 = call ptr @copy_rtx(ptr noundef nonnull %710) #16
  %814 = call ptr @copy_rtx(ptr noundef %809) #16
  %815 = call ptr @gen_move_insn(ptr noundef %813, ptr noundef %814) #16
  call void @extract_insn(ptr noundef %815) #16
  %816 = call i32 @constrain_operands(i32 noundef 1) #16
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %856, label %818, !prof !212

818:                                              ; preds = %812
  %819 = getelementptr inbounds %struct.edge_def, ptr %764, i64 0, i32 2
  %820 = load ptr, ptr %819, align 8, !tbaa !88
  %821 = icmp eq ptr %820, null
  br i1 %821, label %822, label %825, !prof !137

822:                                              ; preds = %834, %818
  %823 = load ptr, ptr %819, align 8, !tbaa !88
  %824 = icmp eq ptr %823, null
  br i1 %824, label %853, label %838, !prof !137

825:                                              ; preds = %818, %834
  %826 = phi ptr [ %836, %834 ], [ %820, %818 ]
  %827 = load i32, ptr %826, align 8
  %828 = and i32 %827, 65535
  %829 = add nsw i32 %828, -7
  %830 = icmp ult i32 %829, 4
  br i1 %830, label %831, label %834

831:                                              ; preds = %825
  %832 = call i32 @reg_set_p(ptr noundef %809, ptr noundef nonnull %826) #16
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %856

834:                                              ; preds = %831, %825
  %835 = getelementptr inbounds %struct.rtx_def, ptr %826, i64 0, i32 1, i32 0, i32 0, i64 2
  %836 = load ptr, ptr %835, align 8, !tbaa !88
  %837 = icmp eq ptr %836, null
  br i1 %837, label %822, label %825, !prof !137, !llvm.loop !213

838:                                              ; preds = %822, %849
  %839 = phi ptr [ %851, %849 ], [ %823, %822 ]
  %840 = load i32, ptr %839, align 8
  %841 = and i32 %840, 65535
  %842 = add nsw i32 %841, -7
  %843 = icmp ult i32 %842, 4
  br i1 %843, label %844, label %849

844:                                              ; preds = %838
  %845 = getelementptr inbounds %struct.rtx_def, ptr %839, i64 1
  %846 = load ptr, ptr %845, align 8, !tbaa !88
  %847 = call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %710, ptr noundef %846) #16
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %856

849:                                              ; preds = %844, %838
  %850 = getelementptr inbounds %struct.rtx_def, ptr %839, i64 0, i32 1, i32 0, i32 0, i64 2
  %851 = load ptr, ptr %850, align 8, !tbaa !88
  %852 = icmp eq ptr %851, null
  br i1 %852, label %853, label %838, !prof !137, !llvm.loop !214

853:                                              ; preds = %849, %822
  %854 = call i32 @reg_set_between_p(ptr noundef %809, ptr noundef %789, ptr noundef %772) #16
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %870, label %856, !prof !215

856:                                              ; preds = %831, %844, %853, %812
  br label %857

857:                                              ; preds = %856, %861
  %858 = phi ptr [ %859, %861 ], [ %787, %856 ]
  %859 = load ptr, ptr %858, align 8, !tbaa !216
  %860 = icmp eq ptr %859, null
  br i1 %860, label %867, label %861

861:                                              ; preds = %857
  %862 = getelementptr inbounds %struct.occr, ptr %859, i64 0, i32 1
  %863 = load ptr, ptr %862, align 8, !tbaa !205
  %864 = getelementptr inbounds %struct.rtx_def, ptr %863, i64 0, i32 1, i32 0, i32 1
  %865 = load ptr, ptr %864, align 8, !tbaa !88
  %866 = icmp eq ptr %865, %766
  br i1 %866, label %867, label %857, !llvm.loop !208

867:                                              ; preds = %861, %857
  %868 = phi ptr [ null, %857 ], [ %859, %861 ]
  %869 = icmp eq ptr %868, null
  br i1 %869, label %870, label %786, !prof !215, !llvm.loop !217

870:                                              ; preds = %867, %853, %783
  %871 = phi ptr [ null, %783 ], [ %809, %853 ], [ %809, %867 ]
  %872 = phi ptr [ null, %783 ], [ null, %867 ], [ %789, %853 ]
  %873 = load ptr, ptr %764, align 8, !tbaa !176
  %874 = getelementptr inbounds %struct.basic_block_def, ptr %873, i64 0, i32 1
  %875 = load ptr, ptr %874, align 8, !tbaa !177
  %876 = icmp eq ptr %875, null
  br i1 %876, label %879, label %877, !prof !218

877:                                              ; preds = %870
  %878 = load i32, ptr %875, align 8, !tbaa !169
  br label %879

879:                                              ; preds = %877, %870
  %880 = phi i32 [ %878, %877 ], [ 0, %870 ]
  %881 = icmp ugt i32 %880, 1
  br i1 %881, label %882, label %896, !prof !219

882:                                              ; preds = %879
  %883 = getelementptr inbounds %struct.edge_def, ptr %764, i64 0, i32 1
  %884 = load ptr, ptr %883, align 8, !tbaa !178
  %885 = load ptr, ptr %884, align 8, !tbaa !167
  %886 = icmp eq ptr %885, null
  br i1 %886, label %889, label %887, !prof !220

887:                                              ; preds = %882
  %888 = load i32, ptr %885, align 8, !tbaa !169
  br label %889

889:                                              ; preds = %887, %882
  %890 = phi i32 [ %888, %887 ], [ 0, %882 ]
  %891 = icmp ugt i32 %890, 1
  br i1 %891, label %892, label %896, !prof !221

892:                                              ; preds = %889
  %893 = getelementptr inbounds %struct.edge_def, ptr %764, i64 0, i32 9
  %894 = load i64, ptr %893, align 8, !tbaa !222
  %895 = add nsw i64 %894, %748
  br label %896

896:                                              ; preds = %892, %889, %879
  %897 = phi i64 [ %895, %892 ], [ %748, %889 ], [ %748, %879 ]
  %898 = icmp eq ptr %872, null
  br i1 %898, label %972, label %899, !prof !223

899:                                              ; preds = %896
  %900 = add nsw i32 %746, 1
  %901 = getelementptr inbounds %struct.edge_def, ptr %764, i64 0, i32 9
  %902 = load i64, ptr %901, align 8, !tbaa !222
  %903 = add nsw i64 %902, %747
  %904 = call ptr @copy_rtx(ptr noundef nonnull %710) #16
  %905 = call ptr @copy_rtx(ptr noundef %871) #16
  %906 = call ptr @gen_move_insn(ptr noundef %904, ptr noundef %905) #16
  %907 = getelementptr inbounds %struct.rtx_def, ptr %906, i64 1
  %908 = load ptr, ptr %907, align 8, !tbaa !88
  %909 = call i32 @set_noop_p(ptr noundef %908) #16
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %1032, !prof !212

911:                                              ; preds = %899
  %912 = load ptr, ptr %764, align 8, !tbaa !176
  %913 = getelementptr inbounds %struct.basic_block_def, ptr %912, i64 0, i32 1
  %914 = load ptr, ptr %913, align 8, !tbaa !177
  %915 = icmp eq ptr %914, null
  br i1 %915, label %918, label %916

916:                                              ; preds = %911
  %917 = load i32, ptr %914, align 8, !tbaa !169
  br label %918

918:                                              ; preds = %916, %911
  %919 = phi i32 [ %917, %916 ], [ 0, %911 ]
  %920 = icmp ugt i32 %919, 1
  br i1 %920, label %921, label %932

921:                                              ; preds = %918
  %922 = getelementptr inbounds %struct.edge_def, ptr %764, i64 0, i32 1
  %923 = load ptr, ptr %922, align 8, !tbaa !178
  %924 = load ptr, ptr %923, align 8, !tbaa !167
  %925 = icmp eq ptr %924, null
  br i1 %925, label %928, label %926

926:                                              ; preds = %921
  %927 = load i32, ptr %924, align 8, !tbaa !169
  br label %928

928:                                              ; preds = %926, %921
  %929 = phi i32 [ %927, %926 ], [ 0, %921 ]
  %930 = icmp ugt i32 %929, 1
  %931 = select i1 %930, i8 1, i8 %749
  br label %932

932:                                              ; preds = %928, %918
  %933 = phi i8 [ %749, %918 ], [ %931, %928 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %934 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %935 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %936 = ptrtoint ptr %934 to i64
  %937 = ptrtoint ptr %935 to i64
  %938 = sub i64 %936, %937
  %939 = icmp slt i64 %938, 24
  br i1 %939, label %940, label %941

940:                                              ; preds = %932
  call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #16
  br label %941

941:                                              ; preds = %940, %932
  %942 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %943 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %944 = getelementptr inbounds i8, ptr %943, i64 %942
  store ptr %944, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %945 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %946 = icmp eq ptr %944, %945
  br i1 %946, label %947, label %950

947:                                              ; preds = %941
  %948 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %949 = or i8 %948, 2
  store i8 %949, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %950

950:                                              ; preds = %947, %941
  %951 = ptrtoint ptr %945 to i64
  store i64 %951, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %952 = ptrtoint ptr %944 to i64
  %953 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !123
  %954 = sext i32 %953 to i64
  %955 = add nsw i64 %954, %952
  %956 = xor i32 %953, -1
  %957 = sext i32 %956 to i64
  %958 = and i64 %955, %957
  %959 = inttoptr i64 %958 to ptr
  store ptr %959, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %960 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %961 = ptrtoint ptr %960 to i64
  %962 = sub i64 %958, %961
  %963 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %964 = ptrtoint ptr %963 to i64
  %965 = sub i64 %964, %961
  %966 = icmp sgt i64 %962, %965
  %967 = select i1 %966, ptr %963, ptr %959
  store ptr %967, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8
  store ptr %967, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %968 = getelementptr inbounds %struct.unoccr, ptr %945, i64 0, i32 2
  store ptr %872, ptr %968, align 8, !tbaa !224
  %969 = getelementptr inbounds %struct.unoccr, ptr %945, i64 0, i32 1
  store ptr %764, ptr %969, align 8, !tbaa !226
  store ptr %751, ptr %945, align 8, !tbaa !227
  %970 = icmp eq ptr %745, null
  %971 = select i1 %970, ptr %945, ptr %745
  br label %1032

972:                                              ; preds = %896
  br i1 %876, label %975, label %973, !prof !228

973:                                              ; preds = %972
  %974 = load i32, ptr %875, align 8, !tbaa !169
  br label %975

975:                                              ; preds = %973, %972
  %976 = phi i32 [ %974, %973 ], [ 0, %972 ]
  %977 = icmp ugt i32 %976, 1
  br i1 %977, label %978, label %989, !prof !229

978:                                              ; preds = %975
  %979 = getelementptr inbounds %struct.edge_def, ptr %764, i64 0, i32 1
  %980 = load ptr, ptr %979, align 8, !tbaa !178
  %981 = load ptr, ptr %980, align 8, !tbaa !167
  %982 = icmp eq ptr %981, null
  br i1 %982, label %985, label %983, !prof !230

983:                                              ; preds = %978
  %984 = load i32, ptr %981, align 8, !tbaa !169
  br label %985

985:                                              ; preds = %983, %978
  %986 = phi i32 [ %984, %983 ], [ 0, %978 ]
  %987 = icmp ugt i32 %986, 1
  %988 = select i1 %987, i8 1, i8 %749, !prof !231
  br label %989

989:                                              ; preds = %985, %975
  %990 = phi i8 [ %749, %975 ], [ %988, %985 ]
  %991 = getelementptr inbounds %struct.edge_def, ptr %764, i64 0, i32 9
  %992 = load i64, ptr %991, align 8, !tbaa !222
  %993 = add nsw i64 %992, %750
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %994 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %995 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %996 = ptrtoint ptr %994 to i64
  %997 = ptrtoint ptr %995 to i64
  %998 = sub i64 %996, %997
  %999 = icmp slt i64 %998, 24
  br i1 %999, label %1000, label %1001, !prof !228

1000:                                             ; preds = %989
  call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #16
  br label %1001

1001:                                             ; preds = %1000, %989
  %1002 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1003 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %1004 = getelementptr inbounds i8, ptr %1003, i64 %1002
  store ptr %1004, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %1005 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %1006 = icmp eq ptr %1004, %1005
  br i1 %1006, label %1007, label %1010, !prof !228

1007:                                             ; preds = %1001
  %1008 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %1009 = or i8 %1008, 2
  store i8 %1009, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %1010

1010:                                             ; preds = %1007, %1001
  %1011 = ptrtoint ptr %1005 to i64
  store i64 %1011, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1012 = ptrtoint ptr %1004 to i64
  %1013 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !123
  %1014 = sext i32 %1013 to i64
  %1015 = add nsw i64 %1014, %1012
  %1016 = xor i32 %1013, -1
  %1017 = sext i32 %1016 to i64
  %1018 = and i64 %1015, %1017
  %1019 = inttoptr i64 %1018 to ptr
  store ptr %1019, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %1020 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %1021 = ptrtoint ptr %1020 to i64
  %1022 = sub i64 %1018, %1021
  %1023 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1024 = ptrtoint ptr %1023 to i64
  %1025 = sub i64 %1024, %1021
  %1026 = icmp sgt i64 %1022, %1025
  %1027 = select i1 %1026, ptr %1023, ptr %1019, !prof !228
  store ptr %1027, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8
  store ptr %1027, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %1028 = getelementptr inbounds %struct.unoccr, ptr %1005, i64 0, i32 2
  store ptr null, ptr %1028, align 8, !tbaa !224
  %1029 = getelementptr inbounds %struct.unoccr, ptr %1005, i64 0, i32 1
  store ptr %764, ptr %1029, align 8, !tbaa !226
  store ptr %744, ptr %1005, align 8, !tbaa !227
  %1030 = icmp eq ptr %745, null
  %1031 = select i1 %1030, ptr %1005, ptr %745, !prof !232
  br label %1032

1032:                                             ; preds = %1010, %950, %899
  %1033 = phi ptr [ %744, %899 ], [ %744, %950 ], [ %1005, %1010 ]
  %1034 = phi ptr [ %745, %899 ], [ %971, %950 ], [ %1031, %1010 ]
  %1035 = phi i32 [ %900, %899 ], [ %900, %950 ], [ %746, %1010 ]
  %1036 = phi i64 [ %903, %899 ], [ %903, %950 ], [ %747, %1010 ]
  %1037 = phi i8 [ %749, %899 ], [ %933, %950 ], [ %990, %1010 ]
  %1038 = phi i64 [ %750, %899 ], [ %750, %950 ], [ %993, %1010 ]
  %1039 = phi ptr [ %751, %899 ], [ %945, %950 ], [ %751, %1010 ]
  %1040 = load ptr, ptr %497, align 8, !tbaa !77
  %1041 = icmp eq ptr %1040, null
  br i1 %1041, label %1044, label %1042, !prof !218

1042:                                             ; preds = %1032
  %1043 = load i32, ptr %1040, align 8, !tbaa !169
  br label %1044

1044:                                             ; preds = %1042, %1032
  %1045 = phi i32 [ %1043, %1042 ], [ 0, %1032 ]
  %1046 = icmp ult i32 %743, %1045
  br i1 %1046, label %1048, label %1047, !prof !233

1047:                                             ; preds = %1044
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.7) #16
  br label %1048

1048:                                             ; preds = %1047, %1044
  %1049 = add i32 %743, 1
  br label %742, !llvm.loop !234

1050:                                             ; preds = %763
  %1051 = icmp eq i32 %746, 0
  br i1 %1051, label %1194, label %1052, !prof !235

1052:                                             ; preds = %1050
  %1053 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %497) #16
  %1054 = icmp ne i8 %1053, 0
  %1055 = icmp sgt i32 %746, 1
  %1056 = select i1 %1054, i1 %1055, i1 false, !prof !236
  br i1 %1056, label %1194, label %1057, !prof !236

1057:                                             ; preds = %1052
  %1058 = load ptr, ptr @profile_info, align 8, !tbaa !77
  %1059 = icmp ne ptr %1058, null
  %1060 = load i32, ptr @flag_branch_probabilities, align 4
  %1061 = icmp ne i32 %1060, 0
  %1062 = select i1 %1059, i1 %1061, i1 false, !prof !236
  br i1 %1062, label %1063, label %1069, !prof !236

1063:                                             ; preds = %1057
  %1064 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !237
  %1065 = call zeroext i8 %1064() #16
  %1066 = icmp ne i8 %1065, 0
  %1067 = icmp ne i8 %749, 0
  %1068 = select i1 %1066, i1 %1067, i1 false
  br i1 %1068, label %1194, label %1071

1069:                                             ; preds = %1057
  %1070 = icmp eq i8 %749, 0
  br i1 %1070, label %1071, label %1194, !prof !236

1071:                                             ; preds = %1069, %1063
  %1072 = load ptr, ptr @compiler_params, align 8, !tbaa !77
  %1073 = getelementptr inbounds %struct.param_info, ptr %1072, i64 24, i32 1
  %1074 = load i32, ptr %1073, align 8, !tbaa !249
  %1075 = sext i32 %1074 to i64
  %1076 = mul nsw i64 %750, %1075
  %1077 = icmp slt i64 %747, %1076
  br i1 %1077, label %1194, label %1078

1078:                                             ; preds = %1071
  %1079 = getelementptr inbounds %struct.param_info, ptr %1072, i64 25, i32 1
  %1080 = load i32, ptr %1079, align 8, !tbaa !249
  %1081 = sext i32 %1080 to i64
  %1082 = mul nsw i64 %748, %1081
  %1083 = icmp slt i64 %747, %1082
  br i1 %1083, label %1194, label %1084

1084:                                             ; preds = %1078
  %1085 = icmp eq ptr %751, null
  br i1 %1085, label %1086, label %1088

1086:                                             ; preds = %1117, %1084
  %1087 = icmp eq ptr %744, null
  br i1 %1087, label %1146, label %1120

1088:                                             ; preds = %1084, %1117
  %1089 = phi ptr [ %1118, %1117 ], [ %751, %1084 ]
  %1090 = getelementptr inbounds %struct.unoccr, ptr %1089, i64 0, i32 2
  %1091 = load ptr, ptr %1090, align 8, !tbaa !224
  %1092 = getelementptr inbounds %struct.unoccr, ptr %1089, i64 0, i32 1
  %1093 = load ptr, ptr %1092, align 8, !tbaa !226
  %1094 = call fastcc ptr @get_avail_load_store_reg(ptr noundef %1091)
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1096, label %1097

1096:                                             ; preds = %1088
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1093, ptr noundef nonnull @.str.7) #16
  br label %1097

1097:                                             ; preds = %1096, %1088
  %1098 = call ptr @copy_rtx(ptr noundef nonnull %710) #16
  %1099 = call ptr @copy_rtx(ptr noundef %1094) #16
  %1100 = call ptr @gen_move_insn(ptr noundef %1098, ptr noundef %1099) #16
  call void @insert_insn_on_edge(ptr noundef %1100, ptr noundef %1093) #16
  %1101 = load i32, ptr @stats, align 4, !tbaa !251
  %1102 = add nsw i32 %1101, 1
  store i32 %1102, ptr @stats, align 4, !tbaa !251
  %1103 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1117, label %1105

1105:                                             ; preds = %1097
  %1106 = getelementptr inbounds %struct.rtx_def, ptr %1094, i64 0, i32 1
  %1107 = load i32, ptr %1106, align 8, !tbaa !88
  %1108 = load i32, ptr %711, align 8, !tbaa !88
  %1109 = load ptr, ptr %1093, align 8, !tbaa !176
  %1110 = getelementptr inbounds %struct.basic_block_def, ptr %1109, i64 0, i32 9
  %1111 = load i32, ptr %1110, align 8, !tbaa !253
  %1112 = getelementptr inbounds %struct.edge_def, ptr %1093, i64 0, i32 1
  %1113 = load ptr, ptr %1112, align 8, !tbaa !178
  %1114 = getelementptr inbounds %struct.basic_block_def, ptr %1113, i64 0, i32 9
  %1115 = load i32, ptr %1114, align 8, !tbaa !253
  %1116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1103, ptr noundef nonnull @.str.16, i32 noundef %1107, i32 noundef %1108, i32 noundef %1111, i32 noundef %1115)
  br label %1117

1117:                                             ; preds = %1105, %1097
  %1118 = load ptr, ptr %1089, align 8, !tbaa !227
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1086, label %1088, !llvm.loop !254

1120:                                             ; preds = %1086, %1143
  %1121 = phi ptr [ %1144, %1143 ], [ %744, %1086 ]
  %1122 = getelementptr inbounds %struct.unoccr, ptr %1121, i64 0, i32 1
  %1123 = load ptr, ptr %1122, align 8, !tbaa !226
  %1124 = load ptr, ptr %605, align 8, !tbaa !88
  %1125 = call ptr @copy_insn(ptr noundef %1124) #16
  call void @insert_insn_on_edge(ptr noundef %1125, ptr noundef %1123) #16
  %1126 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !255
  %1127 = add nsw i32 %1126, 1
  store i32 %1127, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !255
  %1128 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1129 = icmp eq ptr %1128, null
  br i1 %1129, label %1143, label %1130

1130:                                             ; preds = %1120
  %1131 = load ptr, ptr %1123, align 8, !tbaa !176
  %1132 = getelementptr inbounds %struct.basic_block_def, ptr %1131, i64 0, i32 9
  %1133 = load i32, ptr %1132, align 8, !tbaa !253
  %1134 = getelementptr inbounds %struct.edge_def, ptr %1123, i64 0, i32 1
  %1135 = load ptr, ptr %1134, align 8, !tbaa !178
  %1136 = getelementptr inbounds %struct.basic_block_def, ptr %1135, i64 0, i32 9
  %1137 = load i32, ptr %1136, align 8, !tbaa !253
  %1138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1128, ptr noundef nonnull @.str.17, i32 noundef %1133, i32 noundef %1137)
  %1139 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1140 = load ptr, ptr %605, align 8, !tbaa !88
  call void @print_rtl(ptr noundef %1139, ptr noundef %1140) #16
  %1141 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1142 = call i32 @fputc(i32 10, ptr %1141)
  br label %1143

1143:                                             ; preds = %1130, %1120
  %1144 = load ptr, ptr %1121, align 8, !tbaa !227
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1146, label %1120, !llvm.loop !256

1146:                                             ; preds = %1143, %1086
  %1147 = getelementptr inbounds %struct.expr, ptr %705, i64 0, i32 2
  br label %1148

1148:                                             ; preds = %1152, %1146
  %1149 = phi ptr [ %1147, %1146 ], [ %1150, %1152 ]
  %1150 = load ptr, ptr %1149, align 8, !tbaa !77
  %1151 = icmp eq ptr %1150, null
  br i1 %1151, label %1158, label %1152

1152:                                             ; preds = %1148
  %1153 = getelementptr inbounds %struct.occr, ptr %1150, i64 0, i32 1
  %1154 = load ptr, ptr %1153, align 8, !tbaa !205
  %1155 = getelementptr inbounds %struct.rtx_def, ptr %1154, i64 0, i32 1, i32 0, i32 1
  %1156 = load ptr, ptr %1155, align 8, !tbaa !88
  %1157 = icmp eq ptr %1156, %497
  br i1 %1157, label %1158, label %1148, !llvm.loop !208

1158:                                             ; preds = %1152, %1148
  %1159 = phi ptr [ null, %1148 ], [ %1150, %1152 ]
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %1179, label %1161

1161:                                             ; preds = %1158, %1176
  %1162 = phi ptr [ %1177, %1176 ], [ %1159, %1158 ]
  %1163 = getelementptr inbounds %struct.occr, ptr %1162, i64 0, i32 1
  %1164 = load ptr, ptr %1163, align 8, !tbaa !205
  %1165 = icmp eq ptr %1164, %593
  br i1 %1165, label %1192, label %1166

1166:                                             ; preds = %1161, %1170
  %1167 = phi ptr [ %1168, %1170 ], [ %1162, %1161 ]
  %1168 = load ptr, ptr %1167, align 8, !tbaa !216
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1176, label %1170

1170:                                             ; preds = %1166
  %1171 = getelementptr inbounds %struct.occr, ptr %1168, i64 0, i32 1
  %1172 = load ptr, ptr %1171, align 8, !tbaa !205
  %1173 = getelementptr inbounds %struct.rtx_def, ptr %1172, i64 0, i32 1, i32 0, i32 1
  %1174 = load ptr, ptr %1173, align 8, !tbaa !88
  %1175 = icmp eq ptr %1174, %497
  br i1 %1175, label %1176, label %1166, !llvm.loop !208

1176:                                             ; preds = %1170, %1166
  %1177 = phi ptr [ null, %1166 ], [ %1168, %1170 ]
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1179, label %1161, !llvm.loop !257

1179:                                             ; preds = %1176, %1158
  %1180 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !258
  %1181 = add nsw i32 %1180, 1
  store i32 %1181, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !258
  %1182 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1183 = icmp eq ptr %1182, null
  br i1 %1183, label %1190, label %1184

1184:                                             ; preds = %1179
  %1185 = call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %1182)
  %1186 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1187 = call i32 @print_rtl_single(ptr noundef %1186, ptr noundef nonnull %593) #16
  %1188 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1189 = call i32 @fputc(i32 10, ptr %1188)
  br label %1190

1190:                                             ; preds = %1184, %1179
  %1191 = call ptr @delete_insn(ptr noundef nonnull %593) #16
  br label %1194

1192:                                             ; preds = %1161
  %1193 = getelementptr inbounds %struct.occr, ptr %1162, i64 0, i32 2
  store i8 1, ptr %1193, align 8, !tbaa !259
  br label %1194

1194:                                             ; preds = %1071, %1192, %1190, %1078, %1069, %1063, %1052, %1050
  %1195 = icmp eq ptr %745, null
  br i1 %1195, label %1211, label %1196, !prof !199

1196:                                             ; preds = %1194
  %1197 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %1198 = ptrtoint ptr %745 to i64
  %1199 = ptrtoint ptr %1197 to i64
  %1200 = sub i64 %1198, %1199
  store i64 %1200, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1201 = icmp sgt i64 %1200, 0
  br i1 %1201, label %1202, label %1209, !prof !198

1202:                                             ; preds = %1196
  %1203 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1204 = ptrtoint ptr %1203 to i64
  %1205 = sub i64 %1204, %1199
  %1206 = icmp slt i64 %1200, %1205
  br i1 %1206, label %1207, label %1209, !prof !198

1207:                                             ; preds = %1202
  %1208 = getelementptr inbounds i8, ptr %1197, i64 %1200
  store ptr %1208, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %1208, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %1211

1209:                                             ; preds = %1202, %1196
  %1210 = getelementptr inbounds i8, ptr %1197, i64 %1200
  call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %1210) #16
  br label %1211

1211:                                             ; preds = %1209, %1207, %1194, %733, %732, %704, %638, %635, %629, %626, %622, %616, %610, %604, %600
  %1212 = load i32, ptr %593, align 8
  %1213 = and i32 %1212, 65535
  %1214 = add nsw i32 %1213, -7
  %1215 = icmp ult i32 %1214, 4
  br i1 %1215, label %1216, label %1372, !prof !260

1216:                                             ; preds = %1211
  %1217 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 1
  %1218 = load ptr, ptr %1217, align 8, !tbaa !88
  call void @note_stores(ptr noundef %1218, ptr noundef nonnull @record_last_set_info, ptr noundef nonnull %593) #16
  %1219 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 1, i32 1, i32 0, i32 0, i64 1
  %1220 = load ptr, ptr %1219, align 8, !tbaa !88
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1259, label %1222, !prof !127

1222:                                             ; preds = %1216
  %1223 = load ptr, ptr @uid_cuid, align 8
  %1224 = load ptr, ptr @reg_avail_info, align 8
  br label %1225

1225:                                             ; preds = %1255, %1222
  %1226 = phi ptr [ %1220, %1222 ], [ %1257, %1255 ]
  %1227 = load i32, ptr %1226, align 8
  %1228 = and i32 %1227, 16711680
  %1229 = icmp eq i32 %1228, 131072
  br i1 %1229, label %1230, label %1255, !prof !128

1230:                                             ; preds = %1225
  %1231 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 0, i32 1
  %1232 = getelementptr inbounds %struct.rtx_def, ptr %1226, i64 0, i32 1
  %1233 = load ptr, ptr %1232, align 8, !tbaa !88
  %1234 = getelementptr inbounds %struct.rtx_def, ptr %1233, i64 0, i32 1
  %1235 = load i32, ptr %1234, align 8, !tbaa !88
  %1236 = load i32, ptr %1233, align 8
  %1237 = lshr i32 %1236, 16
  %1238 = and i32 %1237, 255
  %1239 = zext i32 %1235 to i64
  %1240 = zext nneg i32 %1238 to i64
  %1241 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1239, i64 %1240
  %1242 = load i8, ptr %1241, align 1, !tbaa !88
  %1243 = zext i8 %1242 to i32
  %1244 = add i32 %1235, %1243
  br label %1245

1245:                                             ; preds = %1245, %1230
  %1246 = phi i32 [ %1235, %1230 ], [ %1253, %1245 ]
  %1247 = load i32, ptr %1231, align 8, !tbaa !88
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds i32, ptr %1223, i64 %1248
  %1250 = load i32, ptr %1249, align 4, !tbaa !92
  %1251 = zext i32 %1246 to i64
  %1252 = getelementptr inbounds i32, ptr %1224, i64 %1251
  store i32 %1250, ptr %1252, align 4, !tbaa !92
  %1253 = add i32 %1246, 1
  %1254 = icmp ult i32 %1253, %1244
  br i1 %1254, label %1245, label %1255, !llvm.loop !129

1255:                                             ; preds = %1245, %1225
  %1256 = getelementptr inbounds %struct.rtx_def, ptr %1226, i64 0, i32 1, i32 0, i32 0, i64 1
  %1257 = load ptr, ptr %1256, align 8, !tbaa !88
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1259, label %1225, !prof !130, !llvm.loop !131

1259:                                             ; preds = %1255, %1216
  %1260 = load i32, ptr %593, align 8
  %1261 = and i32 %1260, 65535
  %1262 = icmp eq i32 %1261, 10
  br i1 %1262, label %1263, label %1372, !prof !132

1263:                                             ; preds = %1259
  %1264 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !133
  %1265 = load ptr, ptr @uid_cuid, align 8
  %1266 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 0, i32 1
  %1267 = load ptr, ptr @reg_avail_info, align 8
  br label %1268

1268:                                             ; preds = %1279, %1263
  %1269 = phi i64 [ 0, %1263 ], [ %1280, %1279 ]
  %1270 = shl nuw nsw i64 1, %1269
  %1271 = and i64 %1270, %1264
  %1272 = icmp eq i64 %1271, 0
  br i1 %1272, label %1279, label %1273, !prof !134

1273:                                             ; preds = %1268
  %1274 = load i32, ptr %1266, align 8, !tbaa !88
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds i32, ptr %1265, i64 %1275
  %1277 = load i32, ptr %1276, align 4, !tbaa !92
  %1278 = getelementptr inbounds i32, ptr %1267, i64 %1269
  store i32 %1277, ptr %1278, align 4, !tbaa !92
  br label %1279

1279:                                             ; preds = %1273, %1268
  %1280 = add nuw nsw i64 %1269, 1
  %1281 = icmp eq i64 %1280, 53
  br i1 %1281, label %1282, label %1268, !prof !135, !llvm.loop !136

1282:                                             ; preds = %1279
  %1283 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 1, i32 1, i32 0, i32 0, i64 2
  %1284 = load ptr, ptr %1283, align 8, !tbaa !88
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %1331, label %1286, !prof !137

1286:                                             ; preds = %1282, %1327
  %1287 = phi ptr [ %1329, %1327 ], [ %1284, %1282 ]
  %1288 = getelementptr inbounds %struct.rtx_def, ptr %1287, i64 0, i32 1
  %1289 = load ptr, ptr %1288, align 8, !tbaa !88
  %1290 = load i32, ptr %1289, align 8
  %1291 = and i32 %1290, 65535
  %1292 = icmp eq i32 %1291, 25
  br i1 %1292, label %1293, label %1327

1293:                                             ; preds = %1286
  %1294 = getelementptr inbounds %struct.rtx_def, ptr %1289, i64 0, i32 1
  %1295 = load ptr, ptr %1294, align 8, !tbaa !88
  %1296 = load i32, ptr %1295, align 8
  %1297 = and i32 %1296, 65535
  %1298 = icmp eq i32 %1297, 37
  br i1 %1298, label %1299, label %1327

1299:                                             ; preds = %1293
  %1300 = getelementptr inbounds %struct.rtx_def, ptr %1295, i64 0, i32 1
  %1301 = load i32, ptr %1300, align 8, !tbaa !88
  %1302 = icmp ult i32 %1301, 53
  br i1 %1302, label %1304, label %1303

1303:                                             ; preds = %1299
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 757, ptr noundef nonnull @.str.7) #16
  br label %1304

1304:                                             ; preds = %1303, %1299
  %1305 = load i32, ptr %1300, align 8, !tbaa !88
  %1306 = load i32, ptr %1295, align 8
  %1307 = lshr i32 %1306, 16
  %1308 = and i32 %1307, 255
  %1309 = zext i32 %1305 to i64
  %1310 = zext nneg i32 %1308 to i64
  %1311 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1309, i64 %1310
  %1312 = load i8, ptr %1311, align 1, !tbaa !88
  %1313 = zext i8 %1312 to i32
  %1314 = add i32 %1305, %1313
  %1315 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %1316 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  br label %1317

1317:                                             ; preds = %1317, %1304
  %1318 = phi i32 [ %1305, %1304 ], [ %1325, %1317 ]
  %1319 = load i32, ptr %1266, align 8, !tbaa !88
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds i32, ptr %1315, i64 %1320
  %1322 = load i32, ptr %1321, align 4, !tbaa !92
  %1323 = zext i32 %1318 to i64
  %1324 = getelementptr inbounds i32, ptr %1316, i64 %1323
  store i32 %1322, ptr %1324, align 4, !tbaa !92
  %1325 = add i32 %1318, 1
  %1326 = icmp ult i32 %1325, %1314
  br i1 %1326, label %1317, label %1327, !llvm.loop !129

1327:                                             ; preds = %1317, %1293, %1286
  %1328 = getelementptr inbounds %struct.rtx_def, ptr %1287, i64 0, i32 1, i32 0, i32 0, i64 1
  %1329 = load ptr, ptr %1328, align 8, !tbaa !88
  %1330 = icmp eq ptr %1329, null
  br i1 %1330, label %1331, label %1286, !prof !137, !llvm.loop !138

1331:                                             ; preds = %1327, %1282
  %1332 = load i32, ptr %593, align 8
  %1333 = and i32 %1332, -2080374784
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1335, label %1372, !prof !139

1335:                                             ; preds = %1331
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1336 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1337 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %1338 = ptrtoint ptr %1336 to i64
  %1339 = ptrtoint ptr %1337 to i64
  %1340 = sub i64 %1338, %1339
  %1341 = icmp slt i64 %1340, 16
  br i1 %1341, label %1342, label %1343, !prof !140

1342:                                             ; preds = %1335
  call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #16
  br label %1343

1343:                                             ; preds = %1342, %1335
  %1344 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1345 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %1346 = getelementptr inbounds i8, ptr %1345, i64 %1344
  store ptr %1346, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %1347 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  %1348 = icmp eq ptr %1346, %1347
  br i1 %1348, label %1349, label %1352, !prof !140

1349:                                             ; preds = %1343
  %1350 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %1351 = or i8 %1350, 2
  store i8 %1351, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %1352

1352:                                             ; preds = %1349, %1343
  %1353 = ptrtoint ptr %1347 to i64
  store i64 %1353, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1354 = ptrtoint ptr %1346 to i64
  %1355 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !123
  %1356 = sext i32 %1355 to i64
  %1357 = add nsw i64 %1356, %1354
  %1358 = xor i32 %1355, -1
  %1359 = sext i32 %1358 to i64
  %1360 = and i64 %1357, %1359
  %1361 = inttoptr i64 %1360 to ptr
  store ptr %1361, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %1362 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !124
  %1363 = ptrtoint ptr %1362 to i64
  %1364 = sub i64 %1360, %1363
  %1365 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1366 = ptrtoint ptr %1365 to i64
  %1367 = sub i64 %1366, %1363
  %1368 = icmp sgt i64 %1364, %1367
  %1369 = select i1 %1368, ptr %1365, ptr %1361, !prof !140
  store ptr %1369, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8
  store ptr %1369, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %593, ptr %1347, align 8, !tbaa !141
  %1370 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !77
  %1371 = getelementptr inbounds %struct.modifies_mem, ptr %1347, i64 0, i32 1
  store ptr %1370, ptr %1371, align 8, !tbaa !143
  store ptr %1347, ptr @modifies_mem_list, align 8, !tbaa !77
  br label %1372

1372:                                             ; preds = %1352, %1331, %1259, %1211
  %1373 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 0, i32 1, i32 0, i32 0, i64 2
  %1374 = load ptr, ptr %1373, align 8, !tbaa !88
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1376, label %592, !prof !261, !llvm.loop !262

1376:                                             ; preds = %540, %552, %1372, %592, %587, %567, %500, %496
  %1377 = getelementptr inbounds %struct.basic_block_def, ptr %497, i64 0, i32 6
  %1378 = load ptr, ptr %1377, align 8, !tbaa !105
  %1379 = load ptr, ptr @cfun, align 8, !tbaa !77
  %1380 = getelementptr inbounds %struct.function, ptr %1379, i64 0, i32 1
  %1381 = load ptr, ptr %1380, align 8, !tbaa !100
  %1382 = getelementptr inbounds %struct.control_flow_graph, ptr %1381, i64 0, i32 1
  %1383 = load ptr, ptr %1382, align 8, !tbaa !104
  %1384 = icmp eq ptr %1378, %1383
  br i1 %1384, label %1385, label %496, !prof !263, !llvm.loop !264

1385:                                             ; preds = %1376, %487
  call void @commit_edge_insertions() #16
  br label %1386

1386:                                             ; preds = %1385, %477
  %1387 = load ptr, ptr @expr_table, align 8, !tbaa !77
  call void @htab_traverse(ptr noundef %1387, ptr noundef nonnull @delete_redundant_insns_1, ptr noundef null) #16
  %1388 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1389 = icmp eq ptr %1388, null
  br i1 %1389, label %1392, label %1390, !prof !98

1390:                                             ; preds = %1386
  %1391 = call i32 @fputc(i32 10, ptr nonnull %1388)
  br label %1392

1392:                                             ; preds = %1390, %1386
  %1393 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1394 = icmp eq ptr %1393, null
  br i1 %1394, label %1408, label %1395, !prof !98

1395:                                             ; preds = %1392
  %1396 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr nonnull %1393)
  %1397 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1398 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !255
  %1399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1397, ptr noundef nonnull @.str.2, i32 noundef %1398)
  %1400 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1401 = load i32, ptr @stats, align 4, !tbaa !251
  %1402 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1400, ptr noundef nonnull @.str.3, i32 noundef %1401)
  %1403 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1404 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !258
  %1405 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1403, ptr noundef nonnull @.str.4, i32 noundef %1404)
  %1406 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %1407 = call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %1406)
  br label %1408

1408:                                             ; preds = %1395, %1392, %473
  call void @end_alias_analysis() #16
  %1409 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  call void @free(ptr noundef %1409)
  %1410 = load ptr, ptr @expr_table, align 8, !tbaa !77
  call void @htab_delete(ptr noundef %1410) #16
  %1411 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %1412 = ptrtoint ptr %1411 to i64
  %1413 = sub i64 0, %1412
  store i64 %1413, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1414 = icmp sgt i64 %1413, 0
  br i1 %1414, label %1415, label %1422, !prof !121

1415:                                             ; preds = %1408
  %1416 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1417 = ptrtoint ptr %1416 to i64
  %1418 = sub i64 %1417, %1412
  %1419 = icmp sgt i64 %1418, %1413
  br i1 %1419, label %1420, label %1422

1420:                                             ; preds = %1415
  %1421 = getelementptr inbounds i8, ptr %1411, i64 %1413
  store ptr %1421, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %1421, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %1424

1422:                                             ; preds = %1415, %1408
  %1423 = getelementptr inbounds i8, ptr %1411, i64 %1413
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %1423) #16
  br label %1424

1424:                                             ; preds = %1422, %1420
  %1425 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %1426 = ptrtoint ptr %1425 to i64
  %1427 = sub i64 0, %1426
  store i64 %1427, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1428 = icmp sgt i64 %1427, 0
  br i1 %1428, label %1429, label %1436, !prof !121

1429:                                             ; preds = %1424
  %1430 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1431 = ptrtoint ptr %1430 to i64
  %1432 = sub i64 %1431, %1426
  %1433 = icmp sgt i64 %1432, %1427
  br i1 %1433, label %1434, label %1436

1434:                                             ; preds = %1429
  %1435 = getelementptr inbounds i8, ptr %1425, i64 %1427
  store ptr %1435, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %1435, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %1438

1436:                                             ; preds = %1429, %1424
  %1437 = getelementptr inbounds i8, ptr %1425, i64 %1427
  call void @obstack_free(ptr noundef nonnull @occr_obstack, ptr noundef %1437) #16
  br label %1438

1438:                                             ; preds = %1436, %1434
  %1439 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %1440 = ptrtoint ptr %1439 to i64
  %1441 = sub i64 0, %1440
  store i64 %1441, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1442 = icmp sgt i64 %1441, 0
  br i1 %1442, label %1443, label %1450, !prof !121

1443:                                             ; preds = %1438
  %1444 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1445 = ptrtoint ptr %1444 to i64
  %1446 = sub i64 %1445, %1440
  %1447 = icmp sgt i64 %1446, %1441
  br i1 %1447, label %1448, label %1450

1448:                                             ; preds = %1443
  %1449 = getelementptr inbounds i8, ptr %1439, i64 %1441
  store ptr %1449, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %1449, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %1452

1450:                                             ; preds = %1443, %1438
  %1451 = getelementptr inbounds i8, ptr %1439, i64 %1441
  call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %1451) #16
  br label %1452

1452:                                             ; preds = %1450, %1448
  %1453 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !124
  %1454 = ptrtoint ptr %1453 to i64
  %1455 = sub i64 0, %1454
  store i64 %1455, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %1456 = icmp sgt i64 %1455, 0
  br i1 %1456, label %1457, label %1464, !prof !121

1457:                                             ; preds = %1452
  %1458 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %1459 = ptrtoint ptr %1458 to i64
  %1460 = sub i64 %1459, %1454
  %1461 = icmp sgt i64 %1460, %1455
  br i1 %1461, label %1462, label %1464

1462:                                             ; preds = %1457
  %1463 = getelementptr inbounds i8, ptr %1453, i64 %1455
  store ptr %1463, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %1463, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %1466

1464:                                             ; preds = %1457, %1452
  %1465 = getelementptr inbounds i8, ptr %1453, i64 %1455
  call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %1465) #16
  br label %1466

1466:                                             ; preds = %1462, %1464
  %1467 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  call void @free(ptr noundef %1467)
  %1468 = call ptr @get_insns() #16
  call void @rebuild_jump_labels(ptr noundef %1468) #16
  ret i32 0
}

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @init_alias_analysis() local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @end_alias_analysis() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @get_max_uid() local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @hash_expr_for_htab(ptr nocapture noundef readonly %0) #11 !prof !265 !PGOFuncName !266 {
  %2 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !195
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @expr_equiv_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !267 !PGOFuncName !268 {
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  %4 = load ptr, ptr %1, align 8, !tbaa !193
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7, !prof !269

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !195
  %10 = getelementptr inbounds %struct.expr, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !195
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13, !prof !270

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 314, ptr noundef nonnull @.str.7) #16
  br label %14

14:                                               ; preds = %2, %7, %13
  ret i32 %5
}

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @record_last_set_info(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #13 !prof !271 !PGOFuncName !272 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10, !prof !273

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %89 [
    i16 37, label %14
    i16 43, label %38
  ], !prof !274

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !88
  %17 = lshr i32 %12, 16
  %18 = and i32 %17, 255
  %19 = zext i32 %16 to i64
  %20 = zext nneg i32 %18 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %19, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !88
  %23 = zext i8 %22 to i32
  %24 = add i32 %16, %23
  %25 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %27 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  br label %28

28:                                               ; preds = %28, %14
  %29 = phi i32 [ %16, %14 ], [ %36, %28 ]
  %30 = load i32, ptr %26, align 8, !tbaa !88
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %25, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !92
  %34 = zext i32 %29 to i64
  %35 = getelementptr inbounds i32, ptr %27, i64 %34
  store i32 %33, ptr %35, align 4, !tbaa !92
  %36 = add i32 %29, 1
  %37 = icmp ult i32 %36, %24
  br i1 %37, label %28, label %89, !prof !275, !llvm.loop !129

38:                                               ; preds = %10
  %39 = lshr i32 %12, 16
  %40 = and i32 %39, 255
  %41 = tail call i32 @push_operand(ptr noundef nonnull %11, i32 noundef %40) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %80, !prof !276

43:                                               ; preds = %38
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp slt i64 %48, 16
  br i1 %49, label %50, label %51, !prof !140

50:                                               ; preds = %43
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #16
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %54 = getelementptr inbounds i8, ptr %53, i64 %52
  store ptr %54, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %55 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %60, !prof !140

57:                                               ; preds = %51
  %58 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %59 = or i8 %58, 2
  store i8 %59, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %60

60:                                               ; preds = %51, %57
  %61 = ptrtoint ptr %55 to i64
  store i64 %61, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !117
  %62 = ptrtoint ptr %54 to i64
  %63 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !123
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = xor i32 %63, -1
  %67 = sext i32 %66 to i64
  %68 = and i64 %65, %67
  %69 = inttoptr i64 %68 to ptr
  store ptr %69, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !120
  %70 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !124
  %71 = ptrtoint ptr %70 to i64
  %72 = sub i64 %68, %71
  %73 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !119
  %74 = ptrtoint ptr %73 to i64
  %75 = sub i64 %74, %71
  %76 = icmp sgt i64 %72, %75
  %77 = select i1 %76, ptr %73, ptr %69, !prof !140
  store ptr %77, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8
  store ptr %77, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %2, ptr %55, align 8, !tbaa !141
  %78 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !77
  %79 = getelementptr inbounds %struct.modifies_mem, ptr %55, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !143
  store ptr %55, ptr @modifies_mem_list, align 8, !tbaa !77
  br label %89

80:                                               ; preds = %38
  %81 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !88
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !92
  %87 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  %88 = getelementptr inbounds i32, ptr %87, i64 7
  store i32 %86, ptr %88, align 4, !tbaa !92
  br label %89

89:                                               ; preds = %28, %10, %80, %60
  ret void
}

declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_copy_p(i32 noundef) local_unnamed_addr #3

declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !277 !PGOFuncName !278 {
  br label %4

4:                                                ; preds = %107, %3
  %5 = phi ptr [ %0, %3 ], [ %109, %107 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %153, label %7, !prof !279

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %112 [
    i16 37, label %11
    i16 43, label %66
    i16 36, label %153
    i16 46, label %153
    i16 35, label %153
    i16 30, label %153
    i16 32, label %153
    i16 31, label %153
    i16 33, label %153
    i16 45, label %153
    i16 44, label %153
    i16 20, label %153
    i16 21, label %153
    i16 74, label %110
    i16 75, label %110
    i16 76, label %110
    i16 77, label %110
    i16 78, label %110
    i16 79, label %110
  ], !prof !280

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !88
  %14 = icmp ult i32 %13, 53
  br i1 %14, label %16, label %15, !prof !281

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 510, ptr noundef nonnull @.str.7) #16
  br label %16

16:                                               ; preds = %11, %15
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %45, label %18, !prof !282

18:                                               ; preds = %16
  %19 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !88
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %19, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !92
  %25 = load i32, ptr %12, align 8, !tbaa !88
  %26 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  br label %27

27:                                               ; preds = %33, %18
  %28 = phi i32 [ %25, %18 ], [ %43, %33 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !92
  %32 = icmp slt i32 %31, %24
  br i1 %32, label %33, label %153, !prof !283

33:                                               ; preds = %27
  %34 = load i32, ptr %5, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext i32 %25 to i64
  %38 = zext nneg i32 %36 to i64
  %39 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %37, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !88
  %41 = zext i8 %40 to i32
  %42 = add i32 %25, %41
  %43 = add i32 %28, 1
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %27, label %153, !prof !284, !llvm.loop !200

45:                                               ; preds = %16
  %46 = load i32, ptr %12, align 8, !tbaa !88
  %47 = load ptr, ptr @reg_avail_info, align 8, !tbaa !77
  br label %48

48:                                               ; preds = %54, %45
  %49 = phi i32 [ %46, %45 ], [ %64, %54 ]
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !92
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %153, label %54, !prof !285

54:                                               ; preds = %48
  %55 = load i32, ptr %5, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext i32 %46 to i64
  %59 = zext nneg i32 %57 to i64
  %60 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %58, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !88
  %62 = zext i8 %61 to i32
  %63 = add i32 %46, %62
  %64 = add i32 %49, 1
  %65 = icmp ult i32 %64, %63
  br i1 %65, label %48, label %153, !prof !286, !llvm.loop !200

66:                                               ; preds = %7
  %67 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %68 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !88
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %67, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !92
  %73 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !77
  %74 = icmp eq ptr %73, null
  br i1 %74, label %107, label %75, !prof !157

75:                                               ; preds = %66
  %76 = icmp eq i8 %2, 0
  br label %77

77:                                               ; preds = %105, %75
  %78 = phi ptr [ %73, %75 ], [ %103, %105 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !141
  %80 = load ptr, ptr @uid_cuid, align 8, !tbaa !77
  %81 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !88
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %80, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !92
  br i1 %76, label %88, label %86, !prof !287

86:                                               ; preds = %77
  %87 = icmp slt i32 %85, %72
  br i1 %87, label %98, label %90, !prof !288, !llvm.loop !159

88:                                               ; preds = %77
  %89 = icmp sgt i32 %85, %72
  br i1 %89, label %98, label %90, !prof !289, !llvm.loop !159

90:                                               ; preds = %88, %86
  %91 = load i32, ptr %79, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %102, label %94, !prof !160

94:                                               ; preds = %90
  store i1 false, ptr @mems_conflict_p, align 4
  %95 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !88
  tail call void @note_stores(ptr noundef %96, ptr noundef nonnull @find_mem_conflicts, ptr noundef nonnull %5) #16
  %97 = load i1, ptr @mems_conflict_p, align 4
  br i1 %97, label %102, label %98, !prof !161

98:                                               ; preds = %94, %86, %88
  %99 = phi i32 [ 2, %88 ], [ 2, %86 ], [ 0, %94 ]
  %100 = getelementptr inbounds %struct.modifies_mem, ptr %78, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !143
  br label %102

102:                                              ; preds = %98, %94, %90
  %103 = phi ptr [ %78, %90 ], [ %78, %94 ], [ %101, %98 ]
  %104 = phi i32 [ 1, %90 ], [ 1, %94 ], [ %99, %98 ]
  switch i32 %104, label %153 [
    i32 0, label %105
    i32 2, label %105
  ], !prof !162

105:                                              ; preds = %102, %102
  %106 = icmp eq ptr %103, null
  br i1 %106, label %107, label %77, !prof !163, !llvm.loop !159

107:                                              ; preds = %105, %66
  %108 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !88
  br label %4

110:                                              ; preds = %7, %7, %7, %7, %7, %7
  %111 = icmp eq i8 %2, 0
  br i1 %111, label %112, label %153

112:                                              ; preds = %7, %110
  %113 = zext nneg i32 %9 to i64
  %114 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !88
  %116 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %113
  %117 = load ptr, ptr %116, align 8, !tbaa !77
  %118 = icmp eq i8 %115, 0
  br i1 %118, label %153, label %119, !prof !290

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %121 = zext i8 %115 to i64
  br label %122

122:                                              ; preds = %119, %151
  %123 = phi i64 [ %121, %119 ], [ %124, %151 ]
  %124 = add nsw i64 %123, -1
  %125 = getelementptr inbounds i8, ptr %117, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !88
  switch i8 %126, label %151 [
    i8 101, label %133
    i8 69, label %127
  ], !prof !291

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %129 = getelementptr inbounds [1 x %union.rtunion_def], ptr %128, i64 0, i64 %124
  %130 = load ptr, ptr %129, align 8, !tbaa !88
  %131 = load i32, ptr %130, align 8, !tbaa !292
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %144, label %151

133:                                              ; preds = %122
  %134 = getelementptr inbounds [1 x %union.rtunion_def], ptr %120, i64 0, i64 %124
  %135 = load ptr, ptr %134, align 8, !tbaa !88
  %136 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %135, ptr noundef %1, i8 noundef zeroext %2), !range !152
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %153, label %151, !prof !294

138:                                              ; preds = %144
  %139 = add nuw nsw i64 %145, 1
  %140 = load ptr, ptr %129, align 8, !tbaa !88
  %141 = load i32, ptr %140, align 8, !tbaa !292
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %151, !llvm.loop !295

144:                                              ; preds = %127, %138
  %145 = phi i64 [ %139, %138 ], [ 0, %127 ]
  %146 = phi ptr [ %140, %138 ], [ %130, %127 ]
  %147 = getelementptr inbounds %struct.rtvec_def, ptr %146, i64 0, i32 1, i64 %145
  %148 = load ptr, ptr %147, align 8, !tbaa !77
  %149 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %148, ptr noundef %1, i8 noundef zeroext %2), !range !152
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %153, label %138

151:                                              ; preds = %138, %127, %122, %133
  %152 = icmp sgt i64 %123, 1
  br i1 %152, label %122, label %153, !prof !296, !llvm.loop !297

153:                                              ; preds = %102, %27, %33, %48, %54, %133, %151, %144, %112, %110, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %4
  %154 = phi i8 [ 1, %4 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 0, %110 ], [ 1, %112 ], [ 0, %144 ], [ 1, %151 ], [ 0, %133 ], [ 0, %48 ], [ 1, %54 ], [ 0, %27 ], [ 1, %33 ], [ 0, %102 ]
  ret i8 %154
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_expr_in_table(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !298 !PGOFuncName !299 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !tbaa !92
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #16
  %8 = load i32, ptr %3, align 4, !tbaa !92
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %129, !prof !300

10:                                               ; preds = %2
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp slt i64 %15, 24
  br i1 %16, label %17, label %18, !prof !301

17:                                               ; preds = %10
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #16
  br label %18

18:                                               ; preds = %10, %17
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  store ptr %21, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %22 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %27, !prof !301

24:                                               ; preds = %18
  %25 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %27

27:                                               ; preds = %18, %24
  %28 = ptrtoint ptr %22 to i64
  store i64 %28, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %29 = ptrtoint ptr %21 to i64
  %30 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !123
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = xor i32 %30, -1
  %34 = sext i32 %33 to i64
  %35 = and i64 %32, %34
  %36 = inttoptr i64 %35 to ptr
  store ptr %36, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %35, %38
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %38
  %43 = icmp sgt i64 %39, %42
  %44 = select i1 %43, ptr %40, ptr %36, !prof !301
  store ptr %44, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8
  store ptr %44, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %0, ptr %22, align 8, !tbaa !193
  %45 = getelementptr inbounds %struct.expr, ptr %22, i64 0, i32 1
  store i32 %7, ptr %45, align 8, !tbaa !195
  %46 = getelementptr inbounds %struct.expr, ptr %22, i64 0, i32 2
  store ptr null, ptr %46, align 8, !tbaa !196
  %47 = load ptr, ptr @expr_table, align 8, !tbaa !77
  %48 = call ptr @htab_find_slot_with_hash(ptr noundef %47, ptr noundef nonnull %22, i32 noundef %7, i32 noundef 1) #16
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52, !prof !302

51:                                               ; preds = %27
  store ptr %22, ptr %48, align 8, !tbaa !77
  br label %68

52:                                               ; preds = %27
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %28, %54
  store i64 %55, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %64, !prof !303

57:                                               ; preds = %52
  %58 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %59, %54
  %61 = icmp slt i64 %55, %60
  br i1 %61, label %62, label %64, !prof !303

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %53, i64 %55
  store ptr %63, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !122
  store ptr %63, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !120
  br label %66

64:                                               ; preds = %57, %52
  %65 = getelementptr inbounds i8, ptr %53, i64 %55
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %65) #16
  br label %66

66:                                               ; preds = %64, %62
  %67 = load ptr, ptr %48, align 8, !tbaa !77
  br label %68

68:                                               ; preds = %66, %51
  %69 = phi ptr [ %67, %66 ], [ %22, %51 ]
  %70 = getelementptr inbounds %struct.expr, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73, !prof !304

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !88
  br label %79

76:                                               ; preds = %79
  %77 = load ptr, ptr %80, align 8, !tbaa !77
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79, !prof !305, !llvm.loop !306

79:                                               ; preds = %73, %76
  %80 = phi ptr [ %71, %73 ], [ %77, %76 ]
  %81 = getelementptr inbounds %struct.occr, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !205
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !88
  %85 = icmp eq ptr %84, %75
  br i1 %85, label %86, label %76, !prof !307, !llvm.loop !306

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.occr, ptr %80, i64 0, i32 1
  store ptr %1, ptr %87, align 8, !tbaa !205
  br label %129

88:                                               ; preds = %76, %68
  %89 = phi ptr [ null, %68 ], [ %80, %76 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %90 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %92 = ptrtoint ptr %90 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = icmp slt i64 %94, 24
  br i1 %95, label %96, label %97, !prof !308

96:                                               ; preds = %88
  call void @_obstack_newchunk(ptr noundef nonnull @occr_obstack, i32 noundef 24) #16
  br label %97

97:                                               ; preds = %88, %96
  %98 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %99 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %100 = getelementptr inbounds i8, ptr %99, i64 %98
  store ptr %100, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %101 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %106, !prof !301

103:                                              ; preds = %97
  %104 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  %105 = or i8 %104, 2
  store i8 %105, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  br label %106

106:                                              ; preds = %97, %103
  %107 = ptrtoint ptr %101 to i64
  store i64 %107, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !117
  %108 = ptrtoint ptr %100 to i64
  %109 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 6), align 8, !tbaa !123
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = xor i32 %109, -1
  %113 = sext i32 %112 to i64
  %114 = and i64 %111, %113
  %115 = inttoptr i64 %114 to ptr
  store ptr %115, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !120
  %116 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !124
  %117 = ptrtoint ptr %116 to i64
  %118 = sub i64 %114, %117
  %119 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !119
  %120 = ptrtoint ptr %119 to i64
  %121 = sub i64 %120, %117
  %122 = icmp sgt i64 %118, %121
  %123 = select i1 %122, ptr %119, ptr %115, !prof !301
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !122
  %124 = load ptr, ptr %70, align 8, !tbaa !196
  %125 = icmp eq ptr %124, null
  %126 = select i1 %125, ptr %70, ptr %89, !prof !302
  store ptr %101, ptr %126, align 8, !tbaa !77
  %127 = getelementptr inbounds %struct.occr, ptr %101, i64 0, i32 1
  store ptr %1, ptr %127, align 8, !tbaa !205
  store ptr null, ptr %101, align 8, !tbaa !216
  %128 = getelementptr inbounds %struct.occr, ptr %101, i64 0, i32 2
  store i8 0, ptr %128, align 8, !tbaa !259
  br label %129

129:                                              ; preds = %86, %106, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @find_mem_conflicts(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #9 !prof !309 !PGOFuncName !310 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %17 [
    i16 39, label %8
    i16 120, label %8
    i16 40, label %8
    i16 43, label %11
  ], !prof !311

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  br label %4, !llvm.loop !312

11:                                               ; preds = %4
  %12 = lshr i32 %6, 16
  %13 = and i32 %12, 255
  %14 = tail call i32 @true_dependence(ptr noundef nonnull %5, i32 noundef %13, ptr noundef %2, ptr noundef nonnull @rtx_addr_varies_p) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !313

16:                                               ; preds = %11
  store i1 true, ptr @mems_conflict_p, align 4
  br label %17

17:                                               ; preds = %4, %11, %16
  ret void
}

declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare double @htab_collisions(ptr noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_hash_table_entry(ptr nocapture noundef readonly %0, ptr noundef %1) #14 !prof !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !77
  %4 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 6, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !193
  tail call void @print_rtl(ptr noundef %1, ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !195
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %7)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %1)
  %10 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.occr, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = tail call i32 @print_rtl_single(ptr noundef %1, ptr noundef %16) #16
  %18 = tail call i32 @fputc(i32 10, ptr %1)
  %19 = load ptr, ptr %14, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !314

21:                                               ; preds = %13, %2
  %22 = tail call i32 @fputc(i32 10, ptr %1)
  ret i32 1
}

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare void @commit_edge_insertions() local_unnamed_addr #3

declare i32 @reg_used_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_avail_load_store_reg(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !76 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %20, label %9, !prof !210

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %16, label %15, !prof !211

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 906, ptr noundef nonnull @.str.7) #16
  br label %16

16:                                               ; preds = %9, %15
  %17 = load ptr, ptr %2, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  br label %20

20:                                               ; preds = %1, %16
  %21 = phi ptr [ %19, %16 ], [ %5, %1 ]
  ret ptr %21
}

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare i32 @reg_set_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_insn(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_redundant_insns_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !316 !PGOFuncName !317 {
  %3 = load ptr, ptr %0, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7, !prof !318

7:                                                ; preds = %2, %30
  %8 = phi ptr [ %31, %30 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !259
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12, !prof !300

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @dbg_cnt(i32 noundef 13) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !205
  %18 = tail call ptr @delete_insn(ptr noundef %17) #16
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !258
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !258
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %21)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %26 = load ptr, ptr %16, align 8, !tbaa !205
  %27 = tail call i32 @print_rtl_single(ptr noundef %25, ptr noundef %26) #16
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !77
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  br label %30

30:                                               ; preds = %7, %12, %23, %15
  %31 = load ptr, ptr %8, align 8, !tbaa !77
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !prof !319, !llvm.loop !320

33:                                               ; preds = %30, %2
  ret i32 1
}

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!75}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!35 = !{ptr @gate_handle_gcse2, ptr @optimize_function_for_speed_p, i64 38}
!36 = !{ptr @rest_of_handle_gcse2, ptr @get_insns, i64 76}
!37 = !{ptr @rest_of_handle_gcse2, ptr @get_max_uid, i64 38}
!38 = !{ptr @rest_of_handle_gcse2, ptr @xcalloc, i64 38}
!39 = !{ptr @rest_of_handle_gcse2, ptr @htab_create, i64 38}
!40 = !{ptr @rest_of_handle_gcse2, ptr @_obstack_begin, i64 152}
!41 = !{ptr @rest_of_handle_gcse2, ptr @xmalloc, i64 38}
!42 = !{ptr @rest_of_handle_gcse2, ptr @init_alias_analysis, i64 38}
!43 = !{ptr @rest_of_handle_gcse2, ptr @note_stores, i64 633298}
!44 = !{ptr @rest_of_handle_gcse2, ptr @set_noop_p, i64 113800}
!45 = !{ptr @rest_of_handle_gcse2, ptr @can_copy_p, i64 101082}
!46 = !{ptr @rest_of_handle_gcse2, ptr @general_operand, i64 107886}
!47 = !{ptr @rest_of_handle_gcse2, ptr @oprs_unchanged_p, i64 39209}
!48 = !{ptr @rest_of_handle_gcse2, ptr @insert_expr_in_table, i64 18396}
!49 = !{ptr @rest_of_handle_gcse2, ptr @htab_elements, i64 38}
!50 = !{ptr @rest_of_handle_gcse2, ptr @optimize_bb_for_size_p, i64 155638}
!51 = !{ptr @rest_of_handle_gcse2, ptr @side_effects_p, i64 6136}
!52 = !{ptr @rest_of_handle_gcse2, ptr @hash_rtx, i64 6136}
!53 = !{ptr @rest_of_handle_gcse2, ptr @htab_find_slot_with_hash, i64 6136}
!54 = !{ptr @rest_of_handle_gcse2, ptr @reg_used_between_p, i64 5535}
!55 = !{ptr @rest_of_handle_gcse2, ptr @copy_rtx, i64 100}
!56 = !{ptr @rest_of_handle_gcse2, ptr @gen_move_insn, i64 50}
!57 = !{ptr @rest_of_handle_gcse2, ptr @extract_insn, i64 25}
!58 = !{ptr @rest_of_handle_gcse2, ptr @constrain_operands, i64 25}
!59 = !{ptr @rest_of_handle_gcse2, ptr @reg_set_between_p, i64 25}
!60 = !{ptr @rest_of_handle_gcse2, ptr @commit_edge_insertions, i64 38}
!61 = !{ptr @rest_of_handle_gcse2, ptr @htab_traverse, i64 38}
!62 = !{ptr @rest_of_handle_gcse2, ptr @end_alias_analysis, i64 38}
!63 = !{ptr @rest_of_handle_gcse2, ptr @free, i64 76}
!64 = !{ptr @rest_of_handle_gcse2, ptr @htab_delete, i64 38}
!65 = !{ptr @rest_of_handle_gcse2, ptr @obstack_free, i64 152}
!66 = !{ptr @rest_of_handle_gcse2, ptr @rebuild_jump_labels, i64 38}
!67 = !{ptr @expr_equiv_p, ptr @exp_equiv_p, i64 23121}
!68 = !{ptr @record_last_set_info, ptr @push_operand, i64 88307}
!69 = !{ptr @oprs_unchanged_p, ptr @note_stores, i64 364}
!70 = !{ptr @oprs_unchanged_p, ptr @oprs_unchanged_p, i64 718}
!71 = !{ptr @insert_expr_in_table, ptr @hash_rtx, i64 17725}
!72 = !{ptr @insert_expr_in_table, ptr @htab_find_slot_with_hash, i64 17725}
!73 = !{ptr @insert_expr_in_table, ptr @_obstack_newchunk, i64 132}
!74 = !{ptr @find_mem_conflicts, ptr @true_dependence, i64 798}
!75 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!76 = !{!"function_entry_count", i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"any pointer", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!82, !78, i64 8}
!82 = !{!"_IO_FILE", !83, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96, !78, i64 104, !83, i64 112, !83, i64 116, !84, i64 120, !85, i64 128, !79, i64 130, !79, i64 131, !78, i64 136, !84, i64 144, !78, i64 152, !78, i64 160, !78, i64 168, !78, i64 176, !84, i64 184, !83, i64 192, !79, i64 196}
!83 = !{!"int", !79, i64 0}
!84 = !{!"long", !79, i64 0}
!85 = !{!"short", !79, i64 0}
!86 = !{!82, !78, i64 16}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{!79, !79, i64 0}
!89 = !{!82, !78, i64 40}
!90 = !{!82, !78, i64 48}
!91 = !{!82, !83, i64 0}
!92 = !{!83, !83, i64 0}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!"function_entry_count", i64 38}
!97 = !{!"postreload-gcse.c;gate_handle_gcse2"}
!98 = !{!"branch_weights", i32 38, i32 0}
!99 = !{!"postreload-gcse.c;rest_of_handle_gcse2"}
!100 = !{!101, !78, i64 8}
!101 = !{!"function", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96, !83, i64 104, !83, i64 108, !83, i64 112, !83, i64 116, !83, i64 120, !83, i64 124, !78, i64 128, !83, i64 136, !83, i64 137, !83, i64 138, !83, i64 138, !83, i64 138, !83, i64 138, !83, i64 138, !83, i64 138, !83, i64 138, !83, i64 139, !83, i64 139, !83, i64 139, !83, i64 139, !83, i64 139, !83, i64 139, !83, i64 139}
!102 = !{!103, !78, i64 0}
!103 = !{!"control_flow_graph", !78, i64 0, !78, i64 8, !78, i64 16, !83, i64 24, !83, i64 28, !83, i64 32, !78, i64 40, !83, i64 48, !79, i64 52, !79, i64 60, !83, i64 68, !83, i64 72}
!104 = !{!103, !78, i64 8}
!105 = !{!106, !78, i64 56}
!106 = !{!"basic_block_def", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !79, i64 32, !78, i64 48, !78, i64 56, !79, i64 64, !84, i64 72, !83, i64 80, !83, i64 84, !83, i64 88, !83, i64 92, !83, i64 96}
!107 = !{!"branch_weights", i32 1, i32 151}
!108 = !{!"branch_weights", i32 0, i32 1}
!109 = !{!110, !78, i64 8}
!110 = !{!"rtl_bb_info", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !83, i64 32}
!111 = !{!"branch_weights", i32 155654, i32 827517}
!112 = !{!"branch_weights", i32 0, i32 983171}
!113 = distinct !{!113, !94, !95}
!114 = !{!"branch_weights", i32 151, i32 622465}
!115 = distinct !{!115, !94, !95}
!116 = !{!"branch_weights", i32 32, i32 6}
!117 = !{!118, !84, i64 40}
!118 = !{!"obstack", !84, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !84, i64 40, !83, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !83, i64 80, !83, i64 80, !83, i64 80}
!119 = !{!118, !78, i64 32}
!120 = !{!118, !78, i64 24}
!121 = !{!"branch_weights", i32 0, i32 38}
!122 = !{!118, !78, i64 16}
!123 = !{!118, !83, i64 48}
!124 = !{!118, !78, i64 8}
!125 = !{!"branch_weights", i32 179832, i32 0}
!126 = !{!"branch_weights", i32 557694, i32 269823}
!127 = !{!"branch_weights", i32 378796, i32 253850}
!128 = !{!"branch_weights", i32 0, i32 253850}
!129 = distinct !{!129, !94, !95}
!130 = !{!"branch_weights", i32 253850, i32 0}
!131 = distinct !{!131, !94, !95}
!132 = !{!"branch_weights", i32 73892, i32 558754}
!133 = !{!84, !84, i64 0}
!134 = !{!"branch_weights", i32 517244, i32 3399032}
!135 = !{!"branch_weights", i32 73892, i32 3842384}
!136 = distinct !{!136, !94, !95}
!137 = !{!"branch_weights", i32 1, i32 0}
!138 = distinct !{!138, !94, !95}
!139 = !{!"branch_weights", i32 73892, i32 0}
!140 = !{!"branch_weights", i32 0, i32 162199}
!141 = !{!142, !78, i64 0}
!142 = !{!"modifies_mem", !78, i64 0, !78, i64 8}
!143 = !{!142, !78, i64 8}
!144 = distinct !{!144, !94, !95}
!145 = !{!"branch_weights", i32 547035, i32 10659}
!146 = !{!"branch_weights", i32 31694, i32 515341}
!147 = !{!"branch_weights", i32 -1214082515, i32 583672860}
!148 = !{!"branch_weights", i32 0, i32 113775}
!149 = !{!"branch_weights", i32 113775, i32 0}
!150 = !{!"branch_weights", i32 31694, i32 82081}
!151 = !{!"branch_weights", i32 0, i32 31694}
!152 = !{i8 0, i8 2}
!153 = !{!"branch_weights", i32 14009, i32 17685}
!154 = !{!"branch_weights", i32 69388, i32 12693}
!155 = !{!"branch_weights", i32 0, i32 69388}
!156 = !{!"branch_weights", i32 69388, i32 0}
!157 = !{!"branch_weights", i32 1, i32 23879}
!158 = !{!"branch_weights", i32 83384, i32 2481}
!159 = distinct !{!159, !94, !95}
!160 = !{!"branch_weights", i32 83887, i32 798}
!161 = !{!"branch_weights", i32 119, i32 679}
!162 = !{!"branch_weights", i32 84006, i32 679, i32 2481}
!163 = !{!"branch_weights", i32 23879, i32 63287}
!164 = !{!"branch_weights", i32 0, i32 40}
!165 = distinct !{!165, !94, !95}
!166 = distinct !{!166, !94, !95}
!167 = !{!106, !78, i64 0}
!168 = !{!"branch_weights", i32 0, i32 155616}
!169 = !{!170, !83, i64 0}
!170 = !{!"VEC_edge_base", !83, i64 0, !83, i64 4, !79, i64 8}
!171 = !{!"branch_weights", i32 0, i32 462069}
!172 = !{!"branch_weights", i32 155616, i32 306453}
!173 = !{!174, !83, i64 48}
!174 = !{!"edge_def", !78, i64 0, !78, i64 8, !79, i64 16, !78, i64 24, !78, i64 32, !83, i64 40, !83, i64 44, !83, i64 48, !83, i64 52, !84, i64 56}
!175 = !{!"branch_weights", i32 306453, i32 0}
!176 = !{!174, !78, i64 0}
!177 = !{!106, !78, i64 8}
!178 = !{!174, !78, i64 8}
!179 = !{!"branch_weights", i32 306248, i32 205}
!180 = !{!"branch_weights", i32 0, i32 306248}
!181 = !{!"branch_weights", i32 0, i32 306453}
!182 = distinct !{!182, !94, !95}
!183 = !{!"branch_weights", i32 24178, i32 131438}
!184 = !{!"branch_weights", i32 24178, i32 128514}
!185 = !{!"branch_weights", i32 45986, i32 82528}
!186 = !{!"branch_weights", i32 42761, i32 3225}
!187 = !{!"branch_weights", i32 35540, i32 7221}
!188 = !{!"branch_weights", i32 6804, i32 28736}
!189 = !{!"branch_weights", i32 0, i32 6804}
!190 = !{!"branch_weights", i32 668, i32 6136}
!191 = !{!"branch_weights", i32 6136, i32 0}
!192 = !{!"branch_weights", i32 0, i32 6136}
!193 = !{!194, !78, i64 0}
!194 = !{!"expr", !78, i64 0, !83, i64 8, !78, i64 16}
!195 = !{!194, !83, i64 8}
!196 = !{!194, !78, i64 16}
!197 = !{!"branch_weights", i32 601, i32 5535}
!198 = !{!"branch_weights", i32 5535, i32 0}
!199 = !{!"branch_weights", i32 0, i32 5535}
!200 = distinct !{!200, !94, !95}
!201 = !{!110, !78, i64 0}
!202 = !{!"branch_weights", i32 0, i32 21632}
!203 = !{!"branch_weights", i32 5535, i32 16097}
!204 = !{!"branch_weights", i32 16072, i32 23587169}
!205 = !{!206, !78, i64 8}
!206 = !{!"occr", !78, i64 0, !78, i64 8, !79, i64 16}
!207 = !{!"branch_weights", i32 25, i32 23587144}
!208 = distinct !{!208, !94, !95}
!209 = !{!"branch_weights", i32 16047, i32 25}
!210 = !{!"branch_weights", i32 18, i32 7}
!211 = !{!"branch_weights", i32 7, i32 0}
!212 = !{!"branch_weights", i32 0, i32 25}
!213 = distinct !{!213, !94, !95}
!214 = distinct !{!214, !94, !95}
!215 = !{!"branch_weights", i32 25, i32 0}
!216 = !{!206, !78, i64 0}
!217 = distinct !{!217, !94, !95}
!218 = !{!"branch_weights", i32 0, i32 16097}
!219 = !{!"branch_weights", i32 16060, i32 37}
!220 = !{!"branch_weights", i32 0, i32 16060}
!221 = !{!"branch_weights", i32 15451, i32 609}
!222 = !{!174, !84, i64 56}
!223 = !{!"branch_weights", i32 16072, i32 25}
!224 = !{!225, !78, i64 16}
!225 = !{!"unoccr", !78, i64 0, !78, i64 8, !78, i64 16}
!226 = !{!225, !78, i64 8}
!227 = !{!225, !78, i64 0}
!228 = !{!"branch_weights", i32 0, i32 16072}
!229 = !{!"branch_weights", i32 16042, i32 30}
!230 = !{!"branch_weights", i32 0, i32 16042}
!231 = !{!"branch_weights", i32 15433, i32 609}
!232 = !{!"branch_weights", i32 5535, i32 10537}
!233 = !{!"branch_weights", i32 16097, i32 0}
!234 = distinct !{!234, !94, !95}
!235 = !{!"branch_weights", i32 5513, i32 22}
!236 = !{!"branch_weights", i32 0, i32 22}
!237 = !{!238, !78, i64 976}
!238 = !{!"gcc_target", !239, i64 0, !241, i64 368, !242, i64 664, !83, i64 744, !78, i64 752, !78, i64 760, !78, i64 768, !78, i64 776, !78, i64 784, !78, i64 792, !78, i64 800, !78, i64 808, !78, i64 816, !78, i64 824, !78, i64 832, !78, i64 840, !78, i64 848, !78, i64 856, !78, i64 864, !78, i64 872, !78, i64 880, !78, i64 888, !78, i64 896, !78, i64 904, !78, i64 912, !78, i64 920, !78, i64 928, !78, i64 936, !78, i64 944, !78, i64 952, !78, i64 960, !78, i64 968, !78, i64 976, !78, i64 984, !78, i64 992, !78, i64 1000, !78, i64 1008, !78, i64 1016, !78, i64 1024, !78, i64 1032, !78, i64 1040, !78, i64 1048, !78, i64 1056, !84, i64 1064, !84, i64 1072, !78, i64 1080, !78, i64 1088, !78, i64 1096, !78, i64 1104, !78, i64 1112, !78, i64 1120, !78, i64 1128, !78, i64 1136, !78, i64 1144, !78, i64 1152, !78, i64 1160, !78, i64 1168, !243, i64 1176, !78, i64 1232, !78, i64 1240, !78, i64 1248, !78, i64 1256, !78, i64 1264, !78, i64 1272, !78, i64 1280, !78, i64 1288, !78, i64 1296, !78, i64 1304, !78, i64 1312, !78, i64 1320, !78, i64 1328, !78, i64 1336, !78, i64 1344, !78, i64 1352, !78, i64 1360, !78, i64 1368, !78, i64 1376, !78, i64 1384, !78, i64 1392, !78, i64 1400, !78, i64 1408, !78, i64 1416, !78, i64 1424, !78, i64 1432, !78, i64 1440, !78, i64 1448, !78, i64 1456, !84, i64 1464, !244, i64 1472, !78, i64 1664, !78, i64 1672, !78, i64 1680, !78, i64 1688, !78, i64 1696, !78, i64 1704, !78, i64 1712, !78, i64 1720, !78, i64 1728, !78, i64 1736, !78, i64 1744, !78, i64 1752, !78, i64 1760, !78, i64 1768, !78, i64 1776, !245, i64 1784, !246, i64 1792, !247, i64 1896, !248, i64 1968, !78, i64 2016, !79, i64 2024, !79, i64 2025, !79, i64 2026, !79, i64 2027, !79, i64 2028, !79, i64 2029, !79, i64 2030, !79, i64 2031, !79, i64 2032, !79, i64 2033, !79, i64 2034, !79, i64 2035}
!239 = !{!"asm_out", !78, i64 0, !78, i64 8, !78, i64 16, !240, i64 24, !240, i64 56, !78, i64 88, !78, i64 96, !78, i64 104, !78, i64 112, !78, i64 120, !78, i64 128, !78, i64 136, !78, i64 144, !78, i64 152, !78, i64 160, !78, i64 168, !78, i64 176, !78, i64 184, !78, i64 192, !78, i64 200, !78, i64 208, !78, i64 216, !78, i64 224, !78, i64 232, !78, i64 240, !78, i64 248, !78, i64 256, !78, i64 264, !78, i64 272, !78, i64 280, !78, i64 288, !78, i64 296, !78, i64 304, !78, i64 312, !78, i64 320, !78, i64 328, !78, i64 336, !78, i64 344, !78, i64 352, !78, i64 360}
!240 = !{!"asm_int_op", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24}
!241 = !{!"sched", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96, !78, i64 104, !78, i64 112, !78, i64 120, !78, i64 128, !78, i64 136, !78, i64 144, !78, i64 152, !78, i64 160, !78, i64 168, !78, i64 176, !78, i64 184, !78, i64 192, !78, i64 200, !78, i64 208, !78, i64 216, !78, i64 224, !78, i64 232, !78, i64 240, !78, i64 248, !78, i64 256, !78, i64 264, !78, i64 272, !78, i64 280, !78, i64 288}
!242 = !{!"vectorize", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72}
!243 = !{!"addr_space", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48}
!244 = !{!"calls", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96, !78, i64 104, !78, i64 112, !78, i64 120, !78, i64 128, !78, i64 136, !78, i64 144, !78, i64 152, !78, i64 160, !78, i64 168, !78, i64 176, !78, i64 184}
!245 = !{!"c", !78, i64 0}
!246 = !{!"cxx", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96}
!247 = !{!"emutls", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !79, i64 64, !79, i64 65}
!248 = !{!"target_option_hooks", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40}
!249 = !{!250, !83, i64 8}
!250 = !{!"param_info", !78, i64 0, !83, i64 8, !79, i64 12, !83, i64 16, !83, i64 20, !78, i64 24}
!251 = !{!252, !83, i64 0}
!252 = !{!"", !83, i64 0, !83, i64 4, !83, i64 8}
!253 = !{!106, !83, i64 80}
!254 = distinct !{!254, !94, !95}
!255 = !{!252, !83, i64 4}
!256 = distinct !{!256, !94, !95}
!257 = distinct !{!257, !94, !95}
!258 = !{!252, !83, i64 8}
!259 = !{!206, !79, i64 16}
!260 = !{!"branch_weights", i32 74952, i32 53562}
!261 = !{!"branch_weights", i32 0, i32 152692}
!262 = distinct !{!262, !94, !95}
!263 = !{!"branch_weights", i32 151, i32 622313}
!264 = distinct !{!264, !94, !95}
!265 = !{!"function_entry_count", i64 124}
!266 = !{!"postreload-gcse.c;hash_expr_for_htab"}
!267 = !{!"function_entry_count", i64 23121}
!268 = !{!"postreload-gcse.c;expr_equiv_p"}
!269 = !{!"branch_weights", i32 39, i32 23082}
!270 = !{!"branch_weights", i32 23082, i32 0}
!271 = !{!"function_entry_count", i64 639817}
!272 = !{!"postreload-gcse.c;record_last_set_info"}
!273 = !{!"branch_weights", i32 0, i32 639817}
!274 = !{!"branch_weights", i32 179361, i32 372149, i32 88307}
!275 = !{!"branch_weights", i32 0, i32 372149}
!276 = !{!"branch_weights", i32 88307, i32 0}
!277 = !{!"function_entry_count", i64 63062}
!278 = !{!"postreload-gcse.c;oprs_unchanged_p"}
!279 = !{!"branch_weights", i32 0, i32 63062}
!280 = !{!"branch_weights", i32 342, i32 330, i32 38498, i32 0, i32 0, i32 419, i32 330, i32 0, i32 0, i32 0, i32 23143, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!281 = !{!"branch_weights", i32 330, i32 0}
!282 = !{!"branch_weights", i32 73, i32 257}
!283 = !{!"branch_weights", i32 244, i32 13}
!284 = !{!"branch_weights", i32 0, i32 244}
!285 = !{!"branch_weights", i32 6, i32 67}
!286 = !{!"branch_weights", i32 0, i32 67}
!287 = !{!"branch_weights", i32 1301, i32 85865}
!288 = !{!"branch_weights", i32 2481, i32 83384}
!289 = !{!"branch_weights", i32 0, i32 1301}
!290 = !{!"branch_weights", i32 1, i32 310}
!291 = !{!"branch_weights", i32 0, i32 684, i32 0}
!292 = !{!293, !83, i64 0}
!293 = !{!"rtvec_def", !83, i64 0, !79, i64 8}
!294 = !{!"branch_weights", i32 31, i32 653}
!295 = distinct !{!295, !94, !95}
!296 = !{!"branch_weights", i32 374, i32 310}
!297 = distinct !{!297, !94, !95}
!298 = !{!"function_entry_count", i64 17725}
!299 = !{!"postreload-gcse.c;insert_expr_in_table"}
!300 = !{!"branch_weights", i32 17725, i32 0}
!301 = !{!"branch_weights", i32 0, i32 17725}
!302 = !{!"branch_weights", i32 178, i32 17547}
!303 = !{!"branch_weights", i32 17547, i32 0}
!304 = !{!"branch_weights", i32 1, i32 17724}
!305 = !{!"branch_weights", i32 17724, i32 11028816}
!306 = distinct !{!306, !94, !95}
!307 = !{!"branch_weights", i32 0, i32 11046540}
!308 = !{!"branch_weights", i32 132, i32 17593}
!309 = !{!"function_entry_count", i64 798}
!310 = !{!"postreload-gcse.c;find_mem_conflicts"}
!311 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 798}
!312 = distinct !{!312, !94, !95}
!313 = !{!"branch_weights", i32 679, i32 119}
!314 = distinct !{!314, !94, !95}
!315 = !{!"postreload-gcse.c;get_avail_load_store_reg"}
!316 = !{!"function_entry_count", i64 178}
!317 = !{!"postreload-gcse.c;delete_redundant_insns_1"}
!318 = !{!"branch_weights", i32 1, i32 177}
!319 = !{!"branch_weights", i32 177, i32 17548}
!320 = distinct !{!320, !94, !95}
