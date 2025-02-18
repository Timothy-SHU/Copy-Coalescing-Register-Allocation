; ModuleID = 'store-motion.c'
source_filename = "store-motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.st_expr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_list = type { i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"store_motion\00", align 1
@pass_rtl_store_motion = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_rtl_store_motion, ptr @execute_rtl_store_motion, ptr null, ptr null, i32 0, i32 133, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_gcse_sm = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_rerun_cse_after_global_opts = external local_unnamed_addr global i32, align 4
@num_stores = internal unnamed_addr global i32 0, align 4
@store_motion_mems_table = internal unnamed_addr global ptr null, align 8
@st_transp = internal unnamed_addr global ptr null, align 8
@st_avloc = internal unnamed_addr global ptr null, align 8
@st_antloc = internal unnamed_addr global ptr null, align 8
@st_kill = internal unnamed_addr global ptr null, align 8
@st_insert_map = internal global ptr null, align 8
@st_delete_map = internal global ptr null, align 8
@edge_list = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Can't replace store %d: abnormal edge from %d to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"STORE_MOTION of %s, %d basic blocks, \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d insns deleted, %d insns created\0A\00", align 1
@store_motion_mems = internal unnamed_addr global ptr null, align 8
@df = external local_unnamed_addr global ptr, align 8
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@.str.4 = private unnamed_addr constant [44 x i8] c"STORE_MOTION list of MEM exprs considered:\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  Pattern (%3d): \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\0A\09 ANTIC stores : \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\0A\09 AVAIL stores : \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Removing redundant store:\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"st_antloc\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"st_kill\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"st_transp\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"st_avloc\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"STORE_MOTION  delete insn in BB %d:\0A      \00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\0ASTORE_MOTION  replaced with insn:\0A      \00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"STORE_MOTION  drop REG_EQUAL note at insn %d:\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"store-motion.c\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"STORE_MOTION  insert insn on edge (%d, %d):\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"STORE_MOTION  insert store at start of BB %d:\0A\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_store_motion() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !50
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse_sm, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !56
  br i1 %5, label %6, label %19, !prof !57

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 35) #15
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_rtl_store_motion() #10 !prof !34 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.st_expr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call zeroext i8 @delete_unreachable_blocks() #15
  tail call void @df_analyze() #15
  tail call void @init_alias_analysis() #15
  %6 = tail call i32 @max_reg_num() #15
  store ptr null, ptr @store_motion_mems, align 8, !tbaa !35
  %7 = tail call ptr @htab_create(i64 noundef 13, ptr noundef nonnull @pre_st_expr_hash, ptr noundef nonnull @pre_st_expr_eq, ptr noundef null) #15
  store ptr %7, ptr @store_motion_mems_table, align 8, !tbaa !35
  %8 = zext i32 %6 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #15
  %10 = shl nuw nsw i64 %8, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #15
  %12 = load ptr, ptr @cfun, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %30, label %33

21:                                               ; preds = %323, %307
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = load ptr, ptr @cfun, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %33, !llvm.loop !65

30:                                               ; preds = %21, %0
  %31 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %327, label %330

33:                                               ; preds = %0, %21
  %34 = phi ptr [ %23, %21 ], [ %17, %0 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %81, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr @df, align 8
  %41 = getelementptr inbounds %struct.df, ptr %40, i64 0, i32 10
  br label %42

42:                                               ; preds = %39, %77
  %43 = phi ptr [ %37, %39 ], [ %79, %77 ]
  %44 = load ptr, ptr %35, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %81, label %50

50:                                               ; preds = %42
  %51 = load i32, ptr %43, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -11
  %54 = icmp ult i32 %53, -3
  br i1 %54, label %77, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %41, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !46
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.df_insn_info, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !71
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %55, %66
  %67 = phi ptr [ %75, %66 ], [ %64, %55 ]
  %68 = phi ptr [ %74, %66 ], [ %63, %55 ]
  %69 = load i32, ptr %57, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.df_base_ref, ptr %67, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %9, i64 %72
  store i32 %69, ptr %73, align 4, !tbaa !50
  %74 = getelementptr inbounds ptr, ptr %68, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !35
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %66, !llvm.loop !73

77:                                               ; preds = %66, %55, %50
  %78 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %42, !llvm.loop !74

81:                                               ; preds = %77, %42, %33
  call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %10, i1 false)
  %82 = load ptr, ptr %35, align 8, !tbaa !46
  %83 = load ptr, ptr %82, align 8, !tbaa !46
  %84 = icmp eq ptr %83, null
  br i1 %84, label %307, label %85

85:                                               ; preds = %81, %303
  %86 = phi ptr [ %305, %303 ], [ %83, %81 ]
  %87 = load ptr, ptr %35, align 8, !tbaa !46
  %88 = getelementptr inbounds %struct.rtl_bb_info, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !66
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = icmp eq ptr %86, %91
  br i1 %92, label %307, label %93

93:                                               ; preds = %85
  %94 = load i32, ptr %86, align 8
  %95 = and i32 %94, 65535
  %96 = add nsw i32 %95, -11
  %97 = icmp ult i32 %96, -3
  br i1 %97, label %303, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr @df, align 8, !tbaa !35
  %100 = getelementptr inbounds %struct.df, ptr %99, i64 0, i32 10
  %101 = load ptr, ptr %100, align 8, !tbaa !68
  %102 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !46
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %101, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !35
  %107 = getelementptr inbounds %struct.df_insn_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !71
  %109 = load ptr, ptr %108, align 8, !tbaa !35
  %110 = icmp eq ptr %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %98, %111
  %112 = phi ptr [ %120, %111 ], [ %109, %98 ]
  %113 = phi ptr [ %119, %111 ], [ %108, %98 ]
  %114 = load i32, ptr %102, align 8, !tbaa !46
  %115 = getelementptr inbounds %struct.df_base_ref, ptr %112, i64 0, i32 6
  %116 = load i32, ptr %115, align 8, !tbaa !46
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %11, i64 %117
  store i32 %114, ptr %118, align 4, !tbaa !50
  %119 = getelementptr inbounds ptr, ptr %113, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !35
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %111, !llvm.loop !75

122:                                              ; preds = %111, %98
  %123 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !46
  %125 = load i32, ptr %86, align 8
  %126 = and i32 %125, 65535
  %127 = add nsw i32 %126, -7
  %128 = icmp ult i32 %127, 4
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 23
  br i1 %134, label %137, label %135

135:                                              ; preds = %129
  %136 = call ptr @single_set_2(ptr noundef nonnull %86, ptr noundef nonnull %131) #15
  br label %137

137:                                              ; preds = %135, %129, %122
  %138 = phi ptr [ %136, %135 ], [ null, %122 ], [ %131, %129 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %276, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !46
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 134283263
  %145 = icmp ne i32 %144, 43
  %146 = and i32 %143, 16711680
  %147 = icmp eq i32 %146, 65536
  %148 = or i1 %145, %147
  br i1 %148, label %276, label %149

149:                                              ; preds = %140
  %150 = call i32 @side_effects_p(ptr noundef nonnull %142) #15
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %276

152:                                              ; preds = %149
  %153 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !50
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = call i32 @may_trap_p(ptr noundef nonnull %142) #15
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %276

158:                                              ; preds = %155, %152
  %159 = call ptr @find_reg_note(ptr noundef nonnull %86, i32 noundef 25, ptr noundef null) #15
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %276

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !46
  %164 = call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef %163) #15
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %276, label %166

166:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  store i32 0, ptr %1, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  %167 = load i32, ptr %142, align 8
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = call i32 @hash_rtx(ptr noundef nonnull %142, i32 noundef %169, ptr noundef nonnull %1, ptr noundef null, i8 noundef zeroext 0) #15
  store ptr %142, ptr %2, align 8, !tbaa !76
  %171 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !35
  %172 = call ptr @htab_find_slot_with_hash(ptr noundef %171, ptr noundef nonnull %2, i32 noundef %170, i32 noundef 1) #15
  %173 = load ptr, ptr %172, align 8, !tbaa !35
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %166
  %176 = call ptr @xmalloc(i64 noundef 56) #15
  %177 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %178 = getelementptr inbounds %struct.st_expr, ptr %176, i64 0, i32 4
  store ptr %177, ptr %178, align 8, !tbaa !78
  store ptr %142, ptr %176, align 8, !tbaa !76
  %179 = getelementptr inbounds %struct.st_expr, ptr %176, i64 0, i32 1
  %180 = getelementptr inbounds %struct.st_expr, ptr %176, i64 0, i32 7
  store ptr null, ptr %180, align 8, !tbaa !79
  %181 = getelementptr inbounds %struct.st_expr, ptr %176, i64 0, i32 5
  store i32 0, ptr %181, align 8, !tbaa !80
  %182 = getelementptr inbounds %struct.st_expr, ptr %176, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %179, i8 0, i64 24, i1 false)
  store i32 %170, ptr %182, align 4, !tbaa !81
  store ptr %176, ptr @store_motion_mems, align 8, !tbaa !35
  store ptr %176, ptr %172, align 8, !tbaa !35
  br label %183

183:                                              ; preds = %175, %166
  %184 = phi ptr [ %176, %175 ], [ %173, %166 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  %185 = getelementptr inbounds %struct.st_expr, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !82
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %142, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !35
  %189 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @extract_mentioned_regs_1, ptr noundef nonnull %4) #15
  %190 = load ptr, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  store ptr %190, ptr %185, align 8, !tbaa !82
  br label %191

191:                                              ; preds = %188, %183
  %192 = getelementptr inbounds %struct.st_expr, ptr %184, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !83
  %194 = icmp eq ptr %193, null
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !46
  %198 = icmp eq ptr %197, null
  br i1 %198, label %240, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1, i32 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  %202 = icmp eq ptr %201, %124
  br i1 %202, label %240, label %203

203:                                              ; preds = %199, %191
  %204 = load ptr, ptr %185, align 8, !tbaa !82
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 7
  %206 = load ptr, ptr %205, align 8, !tbaa !46
  %207 = load ptr, ptr %206, align 8, !tbaa !84
  %208 = icmp eq ptr %204, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %223, %203
  %210 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !46
  %212 = icmp eq ptr %86, %211
  br i1 %212, label %236, label %227

213:                                              ; preds = %203, %223
  %214 = phi ptr [ %225, %223 ], [ %204, %203 ]
  %215 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  %217 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !46
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, ptr %11, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !50
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %213
  %224 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !46
  %226 = icmp eq ptr %225, null
  br i1 %226, label %209, label %213, !llvm.loop !85

227:                                              ; preds = %209, %231
  %228 = phi ptr [ %233, %231 ], [ %86, %209 ]
  %229 = call fastcc zeroext i8 @store_killed_in_insn(ptr noundef nonnull %142, ptr noundef %204, ptr noundef %228, i32 noundef 1), !range !86
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  %234 = load ptr, ptr %210, align 8, !tbaa !46
  %235 = icmp eq ptr %233, %234
  br i1 %235, label %236, label %227, !llvm.loop !87

236:                                              ; preds = %213, %231, %227, %209
  %237 = phi ptr [ %86, %209 ], [ null, %227 ], [ %86, %231 ], [ null, %213 ]
  %238 = load ptr, ptr %192, align 8, !tbaa !83
  %239 = call ptr @alloc_INSN_LIST(ptr noundef %237, ptr noundef %238) #15
  store ptr %239, ptr %192, align 8, !tbaa !83
  br label %240

240:                                              ; preds = %236, %199, %195
  %241 = getelementptr inbounds %struct.st_expr, ptr %184, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !88
  %243 = icmp eq ptr %242, null
  br i1 %243, label %250, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = getelementptr inbounds %struct.rtx_def, ptr %246, i64 0, i32 1, i32 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !46
  %249 = icmp eq ptr %248, %124
  br i1 %249, label %273, label %250

250:                                              ; preds = %244, %240
  %251 = getelementptr inbounds %struct.st_expr, ptr %184, i64 0, i32 7
  %252 = load ptr, ptr %251, align 8, !tbaa !79
  %253 = icmp eq ptr %252, null
  br i1 %253, label %267, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 7
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = getelementptr inbounds %struct.rtl_bb_info, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !46
  %259 = icmp eq ptr %258, %86
  br i1 %259, label %271, label %264

260:                                              ; preds = %264
  %261 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1, i32 0, i32 0, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = icmp eq ptr %262, %86
  br i1 %263, label %271, label %264, !llvm.loop !89

264:                                              ; preds = %254, %260
  %265 = phi ptr [ %262, %260 ], [ %258, %254 ]
  %266 = icmp eq ptr %265, %252
  br i1 %266, label %276, label %260

267:                                              ; preds = %250
  %268 = load ptr, ptr %185, align 8, !tbaa !82
  %269 = call fastcc zeroext i8 @store_killed_after(ptr noundef nonnull %142, ptr noundef %268, ptr noundef nonnull %86, ptr noundef %124, ptr noundef %9, ptr noundef nonnull %251), !range !86
  %270 = icmp eq i8 %269, 0
  br label %271

271:                                              ; preds = %260, %254, %267
  %272 = phi i1 [ %270, %267 ], [ %259, %254 ], [ %263, %260 ]
  br i1 %272, label %273, label %276

273:                                              ; preds = %271, %244
  %274 = load ptr, ptr %241, align 8, !tbaa !88
  %275 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %86, ptr noundef %274) #15
  store ptr %275, ptr %241, align 8, !tbaa !88
  br label %276

276:                                              ; preds = %264, %273, %271, %161, %158, %155, %149, %140, %137
  %277 = load ptr, ptr @df, align 8, !tbaa !35
  %278 = getelementptr inbounds %struct.df, ptr %277, i64 0, i32 10
  %279 = load ptr, ptr %278, align 8, !tbaa !68
  %280 = load i32, ptr %102, align 8, !tbaa !46
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds ptr, ptr %279, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !35
  %284 = getelementptr inbounds %struct.df_insn_info, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !71
  %286 = load ptr, ptr %285, align 8, !tbaa !35
  %287 = icmp eq ptr %286, null
  br i1 %287, label %303, label %288

288:                                              ; preds = %276, %299
  %289 = phi ptr [ %301, %299 ], [ %286, %276 ]
  %290 = phi ptr [ %300, %299 ], [ %285, %276 ]
  %291 = getelementptr inbounds %struct.df_base_ref, ptr %289, i64 0, i32 6
  %292 = load i32, ptr %291, align 8, !tbaa !46
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds i32, ptr %9, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !50
  %296 = load i32, ptr %102, align 8, !tbaa !46
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %288
  store i32 0, ptr %294, align 4, !tbaa !50
  br label %299

299:                                              ; preds = %298, %288
  %300 = getelementptr inbounds ptr, ptr %290, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !35
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %288, !llvm.loop !90

303:                                              ; preds = %299, %276, %93
  %304 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 2
  %305 = load ptr, ptr %304, align 8, !tbaa !46
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %85, !llvm.loop !91

307:                                              ; preds = %303, %85, %81
  %308 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %309 = icmp eq ptr %308, null
  br i1 %309, label %21, label %310

310:                                              ; preds = %307, %323
  %311 = phi ptr [ %325, %323 ], [ %308, %307 ]
  %312 = getelementptr inbounds %struct.st_expr, ptr %311, i64 0, i32 7
  store ptr null, ptr %312, align 8, !tbaa !79
  %313 = getelementptr inbounds %struct.st_expr, ptr %311, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !83
  %315 = icmp eq ptr %314, null
  br i1 %315, label %323, label %316

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.rtx_def, ptr %314, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !46
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.rtx_def, ptr %314, i64 0, i32 1, i32 0, i32 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !46
  store ptr %322, ptr %313, align 8, !tbaa !83
  br label %323

323:                                              ; preds = %320, %316, %310
  %324 = getelementptr inbounds %struct.st_expr, ptr %311, i64 0, i32 4
  %325 = load ptr, ptr %324, align 8, !tbaa !35
  %326 = icmp eq ptr %325, null
  br i1 %326, label %21, label %310, !llvm.loop !92

327:                                              ; preds = %343, %30
  %328 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %329 = icmp eq ptr %328, null
  br i1 %329, label %355, label %347

330:                                              ; preds = %30, %343
  %331 = phi ptr [ %345, %343 ], [ %31, %30 ]
  %332 = phi ptr [ %344, %343 ], [ @store_motion_mems, %30 ]
  %333 = getelementptr inbounds %struct.st_expr, ptr %331, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !88
  %335 = icmp eq ptr %334, null
  %336 = getelementptr inbounds %struct.st_expr, ptr %331, i64 0, i32 4
  br i1 %335, label %337, label %343

337:                                              ; preds = %330
  %338 = load ptr, ptr %336, align 8, !tbaa !78
  store ptr %338, ptr %332, align 8, !tbaa !35
  %339 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !35
  %340 = getelementptr inbounds %struct.st_expr, ptr %331, i64 0, i32 6
  %341 = load i32, ptr %340, align 4, !tbaa !81
  call void @htab_remove_elt_with_hash(ptr noundef %339, ptr noundef nonnull %331, i32 noundef %341) #15
  %342 = getelementptr inbounds %struct.st_expr, ptr %331, i64 0, i32 2
  call void @free_INSN_LIST_list(ptr noundef nonnull %342) #15
  call void @free_INSN_LIST_list(ptr noundef nonnull %333) #15
  call void @free(ptr noundef %331)
  br label %343

343:                                              ; preds = %330, %337
  %344 = phi ptr [ %332, %337 ], [ %336, %330 ]
  %345 = load ptr, ptr %344, align 8, !tbaa !35
  %346 = icmp eq ptr %345, null
  br i1 %346, label %327, label %330, !llvm.loop !93

347:                                              ; preds = %327, %347
  %348 = phi ptr [ %353, %347 ], [ %328, %327 ]
  %349 = phi i32 [ %350, %347 ], [ 0, %327 ]
  %350 = add nuw nsw i32 %349, 1
  %351 = getelementptr inbounds %struct.st_expr, ptr %348, i64 0, i32 5
  store i32 %349, ptr %351, align 8, !tbaa !80
  %352 = getelementptr inbounds %struct.st_expr, ptr %348, i64 0, i32 4
  %353 = load ptr, ptr %352, align 8, !tbaa !35
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %347, !llvm.loop !94

355:                                              ; preds = %347, %327
  %356 = phi i32 [ 0, %327 ], [ %350, %347 ]
  %357 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %358 = icmp eq ptr %357, null
  br i1 %358, label %391, label %359

359:                                              ; preds = %355
  %360 = call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr nonnull %357)
  %361 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %362 = icmp eq ptr %361, null
  br i1 %362, label %389, label %363

363:                                              ; preds = %359, %384
  %364 = phi ptr [ %387, %384 ], [ %361, %359 ]
  %365 = getelementptr inbounds %struct.st_expr, ptr %364, i64 0, i32 5
  %366 = load i32, ptr %365, align 8, !tbaa !80
  %367 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %357, ptr noundef nonnull @.str.5, i32 noundef %366)
  %368 = load ptr, ptr %364, align 8, !tbaa !76
  call void @print_rtl(ptr noundef nonnull %357, ptr noundef %368) #15
  %369 = call i64 @fwrite(ptr nonnull @.str.6, i64 18, i64 1, ptr nonnull %357)
  %370 = getelementptr inbounds %struct.st_expr, ptr %364, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !83
  %372 = icmp eq ptr %371, null
  br i1 %372, label %374, label %373

373:                                              ; preds = %363
  call void @print_rtl(ptr noundef nonnull %357, ptr noundef nonnull %371) #15
  br label %376

374:                                              ; preds = %363
  %375 = call i64 @fwrite(ptr nonnull @.str.7, i64 5, i64 1, ptr nonnull %357)
  br label %376

376:                                              ; preds = %374, %373
  %377 = call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr nonnull %357)
  %378 = getelementptr inbounds %struct.st_expr, ptr %364, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !88
  %380 = icmp eq ptr %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %376
  call void @print_rtl(ptr noundef nonnull %357, ptr noundef nonnull %379) #15
  br label %384

382:                                              ; preds = %376
  %383 = call i64 @fwrite(ptr nonnull @.str.7, i64 5, i64 1, ptr nonnull %357)
  br label %384

384:                                              ; preds = %382, %381
  %385 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr nonnull %357)
  %386 = getelementptr inbounds %struct.st_expr, ptr %364, i64 0, i32 4
  %387 = load ptr, ptr %386, align 8, !tbaa !35
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %363, !llvm.loop !95

389:                                              ; preds = %384, %359
  %390 = call i32 @fputc(i32 10, ptr nonnull %357)
  br label %391

391:                                              ; preds = %389, %355
  call void @free(ptr noundef %9)
  call void @free(ptr noundef %11)
  store i32 %356, ptr @num_stores, align 4, !tbaa !50
  %392 = icmp eq i32 %356, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %391
  %394 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !35
  call void @htab_delete(ptr noundef %394) #15
  store ptr null, ptr @store_motion_mems_table, align 8, !tbaa !35
  call void @end_alias_analysis() #15
  br label %1194

395:                                              ; preds = %391
  %396 = call i32 @max_reg_num() #15
  %397 = load ptr, ptr @cfun, align 8, !tbaa !35
  %398 = getelementptr inbounds %struct.function, ptr %397, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !58
  %400 = getelementptr inbounds %struct.control_flow_graph, ptr %399, i64 0, i32 5
  %401 = load i32, ptr %400, align 8, !tbaa !96
  %402 = load i32, ptr @num_stores, align 4, !tbaa !50
  %403 = call ptr @sbitmap_vector_alloc(i32 noundef %401, i32 noundef %402) #15
  store ptr %403, ptr @st_avloc, align 8, !tbaa !35
  %404 = load ptr, ptr @cfun, align 8, !tbaa !35
  %405 = getelementptr inbounds %struct.function, ptr %404, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !58
  %407 = getelementptr inbounds %struct.control_flow_graph, ptr %406, i64 0, i32 5
  %408 = load i32, ptr %407, align 8, !tbaa !96
  call void @sbitmap_vector_zero(ptr noundef %403, i32 noundef %408) #15
  %409 = load ptr, ptr @cfun, align 8, !tbaa !35
  %410 = getelementptr inbounds %struct.function, ptr %409, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !58
  %412 = getelementptr inbounds %struct.control_flow_graph, ptr %411, i64 0, i32 5
  %413 = load i32, ptr %412, align 8, !tbaa !96
  %414 = load i32, ptr @num_stores, align 4, !tbaa !50
  %415 = call ptr @sbitmap_vector_alloc(i32 noundef %413, i32 noundef %414) #15
  store ptr %415, ptr @st_antloc, align 8, !tbaa !35
  %416 = load ptr, ptr @cfun, align 8, !tbaa !35
  %417 = getelementptr inbounds %struct.function, ptr %416, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !58
  %419 = getelementptr inbounds %struct.control_flow_graph, ptr %418, i64 0, i32 5
  %420 = load i32, ptr %419, align 8, !tbaa !96
  call void @sbitmap_vector_zero(ptr noundef %415, i32 noundef %420) #15
  %421 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %422 = icmp eq ptr %421, null
  br i1 %422, label %526, label %423

423:                                              ; preds = %395, %522
  %424 = phi ptr [ %524, %522 ], [ %421, %395 ]
  %425 = getelementptr inbounds %struct.st_expr, ptr %424, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !46
  %427 = icmp eq ptr %426, null
  br i1 %427, label %475, label %428

428:                                              ; preds = %423
  %429 = getelementptr inbounds %struct.st_expr, ptr %424, i64 0, i32 5
  br label %430

430:                                              ; preds = %428, %471
  %431 = phi ptr [ %426, %428 ], [ %473, %471 ]
  %432 = getelementptr inbounds %struct.rtx_def, ptr %431, i64 0, i32 1
  %433 = load ptr, ptr %432, align 8, !tbaa !46
  %434 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1, i32 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !46
  %436 = load ptr, ptr @st_avloc, align 8, !tbaa !35
  %437 = getelementptr inbounds %struct.basic_block_def, ptr %435, i64 0, i32 9
  %438 = load i32, ptr %437, align 8, !tbaa !97
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds ptr, ptr %436, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !35
  %442 = load i32, ptr %429, align 8, !tbaa !80
  %443 = lshr i32 %442, 6
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds %struct.simple_bitmap_def, ptr %441, i64 0, i32 3, i64 %444
  %446 = load i64, ptr %445, align 8, !tbaa !98
  %447 = and i32 %442, 63
  %448 = zext nneg i32 %447 to i64
  %449 = shl nuw i64 1, %448
  %450 = and i64 %449, %446
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %461, label %452

452:                                              ; preds = %430
  %453 = load ptr, ptr %424, align 8, !tbaa !76
  %454 = call ptr @gen_reg_rtx_and_attrs(ptr noundef %453) #15
  %455 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %452
  %458 = call i64 @fwrite(ptr nonnull @.str.11, i64 26, i64 1, ptr nonnull %455)
  br label %459

459:                                              ; preds = %457, %452
  %460 = load ptr, ptr %432, align 8, !tbaa !46
  call fastcc void @replace_store_insn(ptr noundef %454, ptr noundef %460, ptr noundef %435, ptr noundef nonnull %424)
  br label %471

461:                                              ; preds = %430
  %462 = load ptr, ptr %441, align 8, !tbaa !99
  %463 = icmp eq ptr %462, null
  br i1 %463, label %468, label %464

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %462, i64 %444
  %466 = load i8, ptr %465, align 1, !tbaa !46
  %467 = add i8 %466, 1
  store i8 %467, ptr %465, align 1, !tbaa !46
  br label %468

468:                                              ; preds = %464, %461
  %469 = load i64, ptr %445, align 8, !tbaa !98
  %470 = or i64 %469, %449
  store i64 %470, ptr %445, align 8, !tbaa !98
  br label %471

471:                                              ; preds = %468, %459
  %472 = getelementptr inbounds %struct.rtx_def, ptr %431, i64 0, i32 1, i32 0, i32 0, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !46
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %430, !llvm.loop !101

475:                                              ; preds = %471, %423
  %476 = getelementptr inbounds %struct.st_expr, ptr %424, i64 0, i32 2
  %477 = load ptr, ptr %476, align 8, !tbaa !46
  %478 = icmp eq ptr %477, null
  br i1 %478, label %522, label %479

479:                                              ; preds = %475
  %480 = load ptr, ptr @st_antloc, align 8, !tbaa !35
  %481 = getelementptr inbounds %struct.st_expr, ptr %424, i64 0, i32 5
  br label %482

482:                                              ; preds = %479, %510
  %483 = phi ptr [ %477, %479 ], [ %520, %510 ]
  %484 = getelementptr inbounds %struct.rtx_def, ptr %483, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !46
  %486 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 0, i32 1, i32 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !46
  %488 = getelementptr inbounds %struct.basic_block_def, ptr %487, i64 0, i32 9
  %489 = load i32, ptr %488, align 8, !tbaa !97
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds ptr, ptr %480, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !35
  %493 = load i32, ptr %481, align 8, !tbaa !80
  %494 = load ptr, ptr %492, align 8, !tbaa !99
  %495 = icmp eq ptr %494, null
  br i1 %495, label %510, label %496

496:                                              ; preds = %482
  %497 = lshr i32 %493, 6
  %498 = zext nneg i32 %497 to i64
  %499 = getelementptr inbounds %struct.simple_bitmap_def, ptr %492, i64 0, i32 3, i64 %498
  %500 = load i64, ptr %499, align 8, !tbaa !98
  %501 = and i32 %493, 63
  %502 = zext nneg i32 %501 to i64
  %503 = shl nuw i64 1, %502
  %504 = and i64 %500, %503
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %496
  %507 = getelementptr inbounds i8, ptr %494, i64 %498
  %508 = load i8, ptr %507, align 1, !tbaa !46
  %509 = add i8 %508, 1
  store i8 %509, ptr %507, align 1, !tbaa !46
  br label %510

510:                                              ; preds = %506, %496, %482
  %511 = and i32 %493, 63
  %512 = zext nneg i32 %511 to i64
  %513 = shl nuw i64 1, %512
  %514 = lshr i32 %493, 6
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds %struct.simple_bitmap_def, ptr %492, i64 0, i32 3, i64 %515
  %517 = load i64, ptr %516, align 8, !tbaa !98
  %518 = or i64 %517, %513
  store i64 %518, ptr %516, align 8, !tbaa !98
  %519 = getelementptr inbounds %struct.rtx_def, ptr %483, i64 0, i32 1, i32 0, i32 0, i64 1
  %520 = load ptr, ptr %519, align 8, !tbaa !46
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %482, !llvm.loop !102

522:                                              ; preds = %510, %475
  %523 = getelementptr inbounds %struct.st_expr, ptr %424, i64 0, i32 4
  %524 = load ptr, ptr %523, align 8, !tbaa !35
  %525 = icmp eq ptr %524, null
  br i1 %525, label %526, label %423, !llvm.loop !103

526:                                              ; preds = %522, %395
  %527 = load ptr, ptr @cfun, align 8, !tbaa !35
  %528 = getelementptr inbounds %struct.function, ptr %527, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !58
  %530 = getelementptr inbounds %struct.control_flow_graph, ptr %529, i64 0, i32 5
  %531 = load i32, ptr %530, align 8, !tbaa !96
  %532 = load i32, ptr @num_stores, align 4, !tbaa !50
  %533 = call ptr @sbitmap_vector_alloc(i32 noundef %531, i32 noundef %532) #15
  store ptr %533, ptr @st_kill, align 8, !tbaa !35
  %534 = load ptr, ptr @cfun, align 8, !tbaa !35
  %535 = getelementptr inbounds %struct.function, ptr %534, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !58
  %537 = getelementptr inbounds %struct.control_flow_graph, ptr %536, i64 0, i32 5
  %538 = load i32, ptr %537, align 8, !tbaa !96
  call void @sbitmap_vector_zero(ptr noundef %533, i32 noundef %538) #15
  %539 = load ptr, ptr @cfun, align 8, !tbaa !35
  %540 = getelementptr inbounds %struct.function, ptr %539, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !58
  %542 = getelementptr inbounds %struct.control_flow_graph, ptr %541, i64 0, i32 5
  %543 = load i32, ptr %542, align 8, !tbaa !96
  %544 = load i32, ptr @num_stores, align 4, !tbaa !50
  %545 = call ptr @sbitmap_vector_alloc(i32 noundef %543, i32 noundef %544) #15
  store ptr %545, ptr @st_transp, align 8, !tbaa !35
  %546 = load ptr, ptr @cfun, align 8, !tbaa !35
  %547 = getelementptr inbounds %struct.function, ptr %546, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !58
  %549 = getelementptr inbounds %struct.control_flow_graph, ptr %548, i64 0, i32 5
  %550 = load i32, ptr %549, align 8, !tbaa !96
  call void @sbitmap_vector_zero(ptr noundef %545, i32 noundef %550) #15
  %551 = zext i32 %396 to i64
  %552 = shl nuw nsw i64 %551, 2
  %553 = call ptr @xmalloc(i64 noundef %552) #15
  %554 = load ptr, ptr @cfun, align 8, !tbaa !35
  %555 = getelementptr inbounds %struct.function, ptr %554, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !58
  %557 = load ptr, ptr %556, align 8, !tbaa !60
  %558 = getelementptr inbounds %struct.basic_block_def, ptr %557, i64 0, i32 6
  %559 = load ptr, ptr %558, align 8, !tbaa !62
  %560 = getelementptr inbounds %struct.control_flow_graph, ptr %556, i64 0, i32 1
  %561 = load ptr, ptr %560, align 8, !tbaa !64
  %562 = icmp eq ptr %559, %561
  br i1 %562, label %717, label %572

563:                                              ; preds = %713, %622
  %564 = getelementptr inbounds %struct.basic_block_def, ptr %573, i64 0, i32 6
  %565 = load ptr, ptr %564, align 8, !tbaa !62
  %566 = load ptr, ptr @cfun, align 8, !tbaa !35
  %567 = getelementptr inbounds %struct.function, ptr %566, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !58
  %569 = getelementptr inbounds %struct.control_flow_graph, ptr %568, i64 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !64
  %571 = icmp eq ptr %565, %570
  br i1 %571, label %717, label %572, !llvm.loop !104

572:                                              ; preds = %526, %563
  %573 = phi ptr [ %565, %563 ], [ %559, %526 ]
  call void @llvm.memset.p0.i64(ptr align 4 %553, i8 0, i64 %552, i1 false)
  %574 = getelementptr inbounds %struct.basic_block_def, ptr %573, i64 0, i32 7
  %575 = load ptr, ptr %574, align 8, !tbaa !46
  %576 = load ptr, ptr %575, align 8, !tbaa !46
  %577 = icmp eq ptr %576, null
  br i1 %577, label %622, label %578

578:                                              ; preds = %572
  %579 = load ptr, ptr @df, align 8
  %580 = getelementptr inbounds %struct.df, ptr %579, i64 0, i32 10
  br label %581

581:                                              ; preds = %578, %618
  %582 = phi ptr [ %576, %578 ], [ %620, %618 ]
  %583 = load ptr, ptr %574, align 8, !tbaa !46
  %584 = getelementptr inbounds %struct.rtl_bb_info, ptr %583, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !66
  %586 = getelementptr inbounds %struct.rtx_def, ptr %585, i64 0, i32 1, i32 0, i32 0, i64 2
  %587 = load ptr, ptr %586, align 8, !tbaa !46
  %588 = icmp eq ptr %582, %587
  br i1 %588, label %622, label %589

589:                                              ; preds = %581
  %590 = load i32, ptr %582, align 8
  %591 = and i32 %590, 65535
  %592 = add nsw i32 %591, -11
  %593 = icmp ult i32 %592, -3
  br i1 %593, label %618, label %594

594:                                              ; preds = %589
  %595 = load ptr, ptr %580, align 8, !tbaa !68
  %596 = getelementptr inbounds %struct.rtx_def, ptr %582, i64 0, i32 1
  %597 = load i32, ptr %596, align 8, !tbaa !46
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds ptr, ptr %595, i64 %598
  %600 = load ptr, ptr %599, align 8, !tbaa !35
  %601 = getelementptr inbounds %struct.df_insn_info, ptr %600, i64 0, i32 1
  %602 = load ptr, ptr %601, align 8, !tbaa !71
  %603 = load ptr, ptr %602, align 8, !tbaa !35
  %604 = icmp eq ptr %603, null
  br i1 %604, label %618, label %605

605:                                              ; preds = %594, %614
  %606 = phi ptr [ %616, %614 ], [ %603, %594 ]
  %607 = phi ptr [ %615, %614 ], [ %602, %594 ]
  %608 = getelementptr inbounds %struct.df_base_ref, ptr %606, i64 0, i32 6
  %609 = load i32, ptr %608, align 8, !tbaa !46
  %610 = icmp ult i32 %609, %396
  br i1 %610, label %611, label %614

611:                                              ; preds = %605
  %612 = zext i32 %609 to i64
  %613 = getelementptr inbounds i32, ptr %553, i64 %612
  store i32 1, ptr %613, align 4, !tbaa !50
  br label %614

614:                                              ; preds = %611, %605
  %615 = getelementptr inbounds ptr, ptr %607, i64 1
  %616 = load ptr, ptr %615, align 8, !tbaa !35
  %617 = icmp eq ptr %616, null
  br i1 %617, label %618, label %605, !llvm.loop !105

618:                                              ; preds = %614, %594, %589
  %619 = getelementptr inbounds %struct.rtx_def, ptr %582, i64 0, i32 1, i32 0, i32 0, i64 2
  %620 = load ptr, ptr %619, align 8, !tbaa !46
  %621 = icmp eq ptr %620, null
  br i1 %621, label %622, label %581, !llvm.loop !106

622:                                              ; preds = %618, %581, %572
  %623 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %624 = icmp eq ptr %623, null
  br i1 %624, label %563, label %625

625:                                              ; preds = %622
  %626 = getelementptr inbounds %struct.basic_block_def, ptr %573, i64 0, i32 9
  %627 = getelementptr inbounds %struct.basic_block_def, ptr %573, i64 0, i32 9
  br label %628

628:                                              ; preds = %625, %713
  %629 = phi ptr [ %623, %625 ], [ %715, %713 ]
  %630 = load ptr, ptr %629, align 8, !tbaa !76
  %631 = getelementptr inbounds %struct.st_expr, ptr %629, i64 0, i32 1
  %632 = load ptr, ptr %631, align 8, !tbaa !82
  %633 = load ptr, ptr %574, align 8, !tbaa !46
  %634 = load ptr, ptr %633, align 8, !tbaa !84
  %635 = call fastcc zeroext i8 @store_killed_after(ptr noundef %630, ptr noundef %632, ptr noundef %634, ptr noundef %573, ptr noundef %553, ptr noundef null), !range !86
  %636 = icmp eq i8 %635, 0
  %637 = getelementptr inbounds %struct.st_expr, ptr %629, i64 0, i32 5
  %638 = load i32, ptr %637, align 8, !tbaa !80
  br i1 %636, label %679, label %639

639:                                              ; preds = %628
  %640 = load ptr, ptr @st_antloc, align 8, !tbaa !35
  %641 = load i32, ptr %626, align 8, !tbaa !97
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds ptr, ptr %640, i64 %642
  %644 = load ptr, ptr %643, align 8, !tbaa !35
  %645 = lshr i32 %638, 6
  %646 = zext nneg i32 %645 to i64
  %647 = getelementptr inbounds %struct.simple_bitmap_def, ptr %644, i64 0, i32 3, i64 %646
  %648 = load i64, ptr %647, align 8, !tbaa !98
  %649 = and i32 %638, 63
  %650 = zext nneg i32 %649 to i64
  %651 = shl nuw i64 1, %650
  %652 = and i64 %651, %648
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %662, label %654

654:                                              ; preds = %639
  %655 = load ptr, ptr @st_avloc, align 8, !tbaa !35
  %656 = getelementptr inbounds ptr, ptr %655, i64 %642
  %657 = load ptr, ptr %656, align 8, !tbaa !35
  %658 = getelementptr inbounds %struct.simple_bitmap_def, ptr %657, i64 0, i32 3, i64 %646
  %659 = load i64, ptr %658, align 8, !tbaa !98
  %660 = and i64 %659, %651
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %662, label %713

662:                                              ; preds = %654, %639
  %663 = load ptr, ptr @st_kill, align 8, !tbaa !35
  %664 = getelementptr inbounds ptr, ptr %663, i64 %642
  %665 = load ptr, ptr %664, align 8, !tbaa !35
  %666 = load ptr, ptr %665, align 8, !tbaa !99
  %667 = icmp eq ptr %666, null
  br i1 %667, label %677, label %668

668:                                              ; preds = %662
  %669 = getelementptr inbounds %struct.simple_bitmap_def, ptr %665, i64 0, i32 3, i64 %646
  %670 = load i64, ptr %669, align 8, !tbaa !98
  %671 = and i64 %670, %651
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %673, label %677

673:                                              ; preds = %668
  %674 = getelementptr inbounds i8, ptr %666, i64 %646
  %675 = load i8, ptr %674, align 1, !tbaa !46
  %676 = add i8 %675, 1
  store i8 %676, ptr %674, align 1, !tbaa !46
  br label %677

677:                                              ; preds = %673, %668, %662
  %678 = getelementptr inbounds %struct.simple_bitmap_def, ptr %665, i64 0, i32 3, i64 %646
  br label %708

679:                                              ; preds = %628
  %680 = load ptr, ptr @st_transp, align 8, !tbaa !35
  %681 = load i32, ptr %627, align 8, !tbaa !97
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds ptr, ptr %680, i64 %682
  %684 = load ptr, ptr %683, align 8, !tbaa !35
  %685 = load ptr, ptr %684, align 8, !tbaa !99
  %686 = icmp eq ptr %685, null
  br i1 %686, label %701, label %687

687:                                              ; preds = %679
  %688 = lshr i32 %638, 6
  %689 = zext nneg i32 %688 to i64
  %690 = getelementptr inbounds %struct.simple_bitmap_def, ptr %684, i64 0, i32 3, i64 %689
  %691 = load i64, ptr %690, align 8, !tbaa !98
  %692 = and i32 %638, 63
  %693 = zext nneg i32 %692 to i64
  %694 = shl nuw i64 1, %693
  %695 = and i64 %691, %694
  %696 = icmp eq i64 %695, 0
  br i1 %696, label %697, label %701

697:                                              ; preds = %687
  %698 = getelementptr inbounds i8, ptr %685, i64 %689
  %699 = load i8, ptr %698, align 1, !tbaa !46
  %700 = add i8 %699, 1
  store i8 %700, ptr %698, align 1, !tbaa !46
  br label %701

701:                                              ; preds = %697, %687, %679
  %702 = and i32 %638, 63
  %703 = zext nneg i32 %702 to i64
  %704 = shl nuw i64 1, %703
  %705 = lshr i32 %638, 6
  %706 = zext nneg i32 %705 to i64
  %707 = getelementptr inbounds %struct.simple_bitmap_def, ptr %684, i64 0, i32 3, i64 %706
  br label %708

708:                                              ; preds = %677, %701
  %709 = phi ptr [ %707, %701 ], [ %678, %677 ]
  %710 = phi i64 [ %704, %701 ], [ %651, %677 ]
  %711 = load i64, ptr %709, align 8, !tbaa !98
  %712 = or i64 %711, %710
  store i64 %712, ptr %709, align 8, !tbaa !98
  br label %713

713:                                              ; preds = %708, %654
  %714 = getelementptr inbounds %struct.st_expr, ptr %629, i64 0, i32 4
  %715 = load ptr, ptr %714, align 8, !tbaa !35
  %716 = icmp eq ptr %715, null
  br i1 %716, label %563, label %628, !llvm.loop !107

717:                                              ; preds = %563, %526
  call void @free(ptr noundef %553)
  %718 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %719 = icmp eq ptr %718, null
  br i1 %719, label %748, label %720

720:                                              ; preds = %717
  %721 = load ptr, ptr @st_antloc, align 8, !tbaa !35
  %722 = load ptr, ptr @cfun, align 8, !tbaa !35
  %723 = getelementptr inbounds %struct.function, ptr %722, i64 0, i32 1
  %724 = load ptr, ptr %723, align 8, !tbaa !58
  %725 = getelementptr inbounds %struct.control_flow_graph, ptr %724, i64 0, i32 5
  %726 = load i32, ptr %725, align 8, !tbaa !96
  call void @dump_sbitmap_vector(ptr noundef nonnull %718, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %721, i32 noundef %726) #15
  %727 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %728 = load ptr, ptr @st_kill, align 8, !tbaa !35
  %729 = load ptr, ptr @cfun, align 8, !tbaa !35
  %730 = getelementptr inbounds %struct.function, ptr %729, i64 0, i32 1
  %731 = load ptr, ptr %730, align 8, !tbaa !58
  %732 = getelementptr inbounds %struct.control_flow_graph, ptr %731, i64 0, i32 5
  %733 = load i32, ptr %732, align 8, !tbaa !96
  call void @dump_sbitmap_vector(ptr noundef %727, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %728, i32 noundef %733) #15
  %734 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %735 = load ptr, ptr @st_transp, align 8, !tbaa !35
  %736 = load ptr, ptr @cfun, align 8, !tbaa !35
  %737 = getelementptr inbounds %struct.function, ptr %736, i64 0, i32 1
  %738 = load ptr, ptr %737, align 8, !tbaa !58
  %739 = getelementptr inbounds %struct.control_flow_graph, ptr %738, i64 0, i32 5
  %740 = load i32, ptr %739, align 8, !tbaa !96
  call void @dump_sbitmap_vector(ptr noundef %734, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef %735, i32 noundef %740) #15
  %741 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %742 = load ptr, ptr @st_avloc, align 8, !tbaa !35
  %743 = load ptr, ptr @cfun, align 8, !tbaa !35
  %744 = getelementptr inbounds %struct.function, ptr %743, i64 0, i32 1
  %745 = load ptr, ptr %744, align 8, !tbaa !58
  %746 = getelementptr inbounds %struct.control_flow_graph, ptr %745, i64 0, i32 5
  %747 = load i32, ptr %746, align 8, !tbaa !96
  call void @dump_sbitmap_vector(ptr noundef %741, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, ptr noundef %742, i32 noundef %747) #15
  br label %748

748:                                              ; preds = %720, %717
  call void @add_noreturn_fake_exit_edges() #15
  call void @connect_infinite_loops_to_exit() #15
  %749 = load i32, ptr @num_stores, align 4, !tbaa !50
  %750 = load ptr, ptr @st_transp, align 8, !tbaa !35
  %751 = load ptr, ptr @st_avloc, align 8, !tbaa !35
  %752 = load ptr, ptr @st_antloc, align 8, !tbaa !35
  %753 = load ptr, ptr @st_kill, align 8, !tbaa !35
  %754 = call ptr @pre_edge_rev_lcm(i32 noundef %749, ptr noundef %750, ptr noundef %751, ptr noundef %752, ptr noundef %753, ptr noundef nonnull @st_insert_map, ptr noundef nonnull @st_delete_map) #15
  store ptr %754, ptr @edge_list, align 8, !tbaa !35
  %755 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %756 = icmp eq ptr %755, null
  br i1 %756, label %1131, label %757

757:                                              ; preds = %748, %1122
  %758 = phi ptr [ %1127, %1122 ], [ %755, %748 ]
  %759 = phi i32 [ %1125, %1122 ], [ 0, %748 ]
  %760 = phi i32 [ %1124, %1122 ], [ 0, %748 ]
  %761 = phi i32 [ %1123, %1122 ], [ 0, %748 ]
  %762 = load ptr, ptr @edge_list, align 8, !tbaa !35
  %763 = getelementptr inbounds %struct.edge_list, ptr %762, i64 0, i32 1
  %764 = load i32, ptr %763, align 4, !tbaa !108
  %765 = icmp sgt i32 %764, 0
  br i1 %765, label %766, label %808

766:                                              ; preds = %757
  %767 = load ptr, ptr @st_insert_map, align 8, !tbaa !35
  %768 = getelementptr inbounds %struct.st_expr, ptr %758, i64 0, i32 5
  %769 = load i32, ptr %768, align 8, !tbaa !80
  %770 = lshr i32 %769, 6
  %771 = zext nneg i32 %770 to i64
  %772 = and i32 %769, 63
  %773 = zext nneg i32 %772 to i64
  %774 = shl nuw i64 1, %773
  %775 = getelementptr inbounds %struct.edge_list, ptr %762, i64 0, i32 2
  %776 = zext nneg i32 %764 to i64
  br label %777

777:                                              ; preds = %766, %794
  %778 = phi i64 [ %776, %766 ], [ %779, %794 ]
  %779 = add nsw i64 %778, -1
  %780 = getelementptr inbounds ptr, ptr %767, i64 %779
  %781 = load ptr, ptr %780, align 8, !tbaa !35
  %782 = getelementptr inbounds %struct.simple_bitmap_def, ptr %781, i64 0, i32 3, i64 %771
  %783 = load i64, ptr %782, align 8, !tbaa !98
  %784 = and i64 %774, %783
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %794, label %786

786:                                              ; preds = %777
  %787 = load ptr, ptr %775, align 8, !tbaa !110
  %788 = getelementptr inbounds ptr, ptr %787, i64 %779
  %789 = load ptr, ptr %788, align 8, !tbaa !35
  %790 = getelementptr inbounds %struct.edge_def, ptr %789, i64 0, i32 7
  %791 = load i32, ptr %790, align 8, !tbaa !111
  %792 = and i32 %791, 2
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %796

794:                                              ; preds = %786, %777
  %795 = icmp sgt i64 %778, 1
  br i1 %795, label %777, label %808, !llvm.loop !113

796:                                              ; preds = %786
  %797 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %798 = icmp eq ptr %797, null
  br i1 %798, label %1122, label %799

799:                                              ; preds = %796
  %800 = load ptr, ptr %789, align 8, !tbaa !114
  %801 = getelementptr inbounds %struct.basic_block_def, ptr %800, i64 0, i32 9
  %802 = load i32, ptr %801, align 8, !tbaa !97
  %803 = getelementptr inbounds %struct.edge_def, ptr %789, i64 0, i32 1
  %804 = load ptr, ptr %803, align 8, !tbaa !115
  %805 = getelementptr inbounds %struct.basic_block_def, ptr %804, i64 0, i32 9
  %806 = load i32, ptr %805, align 8, !tbaa !97
  %807 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %797, ptr noundef nonnull @.str.1, i32 noundef %769, i32 noundef %802, i32 noundef %806)
  br label %1122

808:                                              ; preds = %794, %757
  %809 = load ptr, ptr @cfun, align 8, !tbaa !35
  %810 = getelementptr inbounds %struct.function, ptr %809, i64 0, i32 1
  %811 = load ptr, ptr %810, align 8, !tbaa !58
  %812 = load ptr, ptr %811, align 8, !tbaa !60
  %813 = getelementptr inbounds %struct.basic_block_def, ptr %812, i64 0, i32 6
  %814 = load ptr, ptr %813, align 8, !tbaa !62
  %815 = getelementptr inbounds %struct.control_flow_graph, ptr %811, i64 0, i32 1
  %816 = load ptr, ptr %815, align 8, !tbaa !64
  %817 = icmp eq ptr %814, %816
  br i1 %817, label %822, label %818

818:                                              ; preds = %808
  %819 = getelementptr inbounds %struct.st_expr, ptr %758, i64 0, i32 5
  %820 = getelementptr inbounds %struct.st_expr, ptr %758, i64 0, i32 7
  %821 = getelementptr inbounds %struct.st_expr, ptr %758, i64 0, i32 3
  br label %831

822:                                              ; preds = %874, %808
  %823 = phi i32 [ %760, %808 ], [ %875, %874 ]
  %824 = load ptr, ptr @edge_list, align 8, !tbaa !35
  %825 = getelementptr inbounds %struct.edge_list, ptr %824, i64 0, i32 1
  %826 = load i32, ptr %825, align 4, !tbaa !108
  %827 = icmp sgt i32 %826, 0
  br i1 %827, label %828, label %1122

828:                                              ; preds = %822
  %829 = getelementptr inbounds %struct.st_expr, ptr %758, i64 0, i32 5
  %830 = getelementptr inbounds %struct.st_expr, ptr %758, i64 0, i32 7
  br label %884

831:                                              ; preds = %818, %874
  %832 = phi ptr [ %814, %818 ], [ %877, %874 ]
  %833 = phi i32 [ %760, %818 ], [ %875, %874 ]
  %834 = load ptr, ptr @st_delete_map, align 8, !tbaa !35
  %835 = getelementptr inbounds %struct.basic_block_def, ptr %832, i64 0, i32 9
  %836 = load i32, ptr %835, align 8, !tbaa !97
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds ptr, ptr %834, i64 %837
  %839 = load ptr, ptr %838, align 8, !tbaa !35
  %840 = load i32, ptr %819, align 8, !tbaa !80
  %841 = lshr i32 %840, 6
  %842 = zext nneg i32 %841 to i64
  %843 = getelementptr inbounds %struct.simple_bitmap_def, ptr %839, i64 0, i32 3, i64 %842
  %844 = load i64, ptr %843, align 8, !tbaa !98
  %845 = and i32 %840, 63
  %846 = zext nneg i32 %845 to i64
  %847 = shl nuw i64 1, %846
  %848 = and i64 %847, %844
  %849 = icmp eq i64 %848, 0
  br i1 %849, label %874, label %850

850:                                              ; preds = %831
  %851 = load ptr, ptr %820, align 8, !tbaa !79
  %852 = icmp eq ptr %851, null
  br i1 %852, label %853, label %856

853:                                              ; preds = %850
  %854 = load ptr, ptr %758, align 8, !tbaa !76
  %855 = call ptr @gen_reg_rtx_and_attrs(ptr noundef %854) #15
  store ptr %855, ptr %820, align 8, !tbaa !79
  br label %856

856:                                              ; preds = %853, %850
  %857 = load ptr, ptr %820, align 8, !tbaa !79
  %858 = load ptr, ptr %821, align 8, !tbaa !46
  %859 = icmp eq ptr %858, null
  br i1 %859, label %872, label %864

860:                                              ; preds = %864
  %861 = getelementptr inbounds %struct.rtx_def, ptr %865, i64 0, i32 1, i32 0, i32 0, i64 1
  %862 = load ptr, ptr %861, align 8, !tbaa !46
  %863 = icmp eq ptr %862, null
  br i1 %863, label %872, label %864, !llvm.loop !116

864:                                              ; preds = %856, %860
  %865 = phi ptr [ %862, %860 ], [ %858, %856 ]
  %866 = getelementptr inbounds %struct.rtx_def, ptr %865, i64 0, i32 1
  %867 = load ptr, ptr %866, align 8, !tbaa !46
  %868 = getelementptr inbounds %struct.rtx_def, ptr %867, i64 0, i32 1, i32 0, i32 1
  %869 = load ptr, ptr %868, align 8, !tbaa !46
  %870 = icmp eq ptr %869, %832
  br i1 %870, label %871, label %860

871:                                              ; preds = %864
  call fastcc void @replace_store_insn(ptr noundef %857, ptr noundef %867, ptr noundef %832, ptr noundef nonnull %758)
  br label %872

872:                                              ; preds = %860, %856, %871
  %873 = add nsw i32 %833, 1
  br label %874

874:                                              ; preds = %872, %831
  %875 = phi i32 [ %873, %872 ], [ %833, %831 ]
  %876 = getelementptr inbounds %struct.basic_block_def, ptr %832, i64 0, i32 6
  %877 = load ptr, ptr %876, align 8, !tbaa !62
  %878 = load ptr, ptr @cfun, align 8, !tbaa !35
  %879 = getelementptr inbounds %struct.function, ptr %878, i64 0, i32 1
  %880 = load ptr, ptr %879, align 8, !tbaa !58
  %881 = getelementptr inbounds %struct.control_flow_graph, ptr %880, i64 0, i32 1
  %882 = load ptr, ptr %881, align 8, !tbaa !64
  %883 = icmp eq ptr %877, %882
  br i1 %883, label %822, label %831, !llvm.loop !117

884:                                              ; preds = %828, %1113
  %885 = phi i64 [ 0, %828 ], [ %1116, %1113 ]
  %886 = phi ptr [ %824, %828 ], [ %1117, %1113 ]
  %887 = phi i32 [ %759, %828 ], [ %1115, %1113 ]
  %888 = phi i32 [ %761, %828 ], [ %1114, %1113 ]
  %889 = load ptr, ptr @st_insert_map, align 8, !tbaa !35
  %890 = getelementptr inbounds ptr, ptr %889, i64 %885
  %891 = load ptr, ptr %890, align 8, !tbaa !35
  %892 = load i32, ptr %829, align 8, !tbaa !80
  %893 = lshr i32 %892, 6
  %894 = zext nneg i32 %893 to i64
  %895 = getelementptr inbounds %struct.simple_bitmap_def, ptr %891, i64 0, i32 3, i64 %894
  %896 = load i64, ptr %895, align 8, !tbaa !98
  %897 = and i32 %892, 63
  %898 = zext nneg i32 %897 to i64
  %899 = shl nuw i64 1, %898
  %900 = and i64 %899, %896
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %1113, label %902

902:                                              ; preds = %884
  %903 = getelementptr inbounds %struct.edge_list, ptr %886, i64 0, i32 2
  %904 = load ptr, ptr %903, align 8, !tbaa !110
  %905 = getelementptr inbounds ptr, ptr %904, i64 %885
  %906 = load ptr, ptr %905, align 8, !tbaa !35
  %907 = load ptr, ptr %830, align 8, !tbaa !79
  %908 = icmp eq ptr %907, null
  br i1 %908, label %1109, label %909

909:                                              ; preds = %902
  %910 = getelementptr inbounds %struct.edge_def, ptr %906, i64 0, i32 7
  %911 = load i32, ptr %910, align 8, !tbaa !111
  %912 = and i32 %911, 16
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %914, label %1109

914:                                              ; preds = %909
  %915 = load ptr, ptr %758, align 8, !tbaa !76
  %916 = call ptr @copy_rtx(ptr noundef %915) #15
  %917 = call ptr @gen_move_insn(ptr noundef %916, ptr noundef nonnull %907) #15
  %918 = getelementptr inbounds %struct.edge_def, ptr %906, i64 0, i32 1
  %919 = load ptr, ptr %918, align 8, !tbaa !115
  %920 = icmp eq ptr %919, null
  br label %921

921:                                              ; preds = %975, %914
  %922 = phi i32 [ 0, %914 ], [ %976, %975 ]
  br i1 %920, label %923, label %924

923:                                              ; preds = %921
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 687, ptr noundef nonnull @.str.21) #15
  br label %924

924:                                              ; preds = %923, %921
  %925 = load ptr, ptr %919, align 8, !tbaa !35
  %926 = icmp eq ptr %925, null
  br i1 %926, label %929, label %927

927:                                              ; preds = %924
  %928 = load i32, ptr %925, align 8, !tbaa !118
  br label %929

929:                                              ; preds = %927, %924
  %930 = phi i32 [ %928, %927 ], [ 0, %924 ]
  %931 = icmp eq i32 %930, %922
  br i1 %931, label %936, label %932

932:                                              ; preds = %929
  %933 = zext i32 %922 to i64
  %934 = getelementptr inbounds %struct.VEC_edge_base, ptr %925, i64 0, i32 2, i64 %933
  %935 = load ptr, ptr %934, align 8, !tbaa !35
  br label %936

936:                                              ; preds = %932, %929
  %937 = phi ptr [ %935, %932 ], [ null, %929 ]
  br i1 %931, label %977, label %938

938:                                              ; preds = %936
  %939 = getelementptr inbounds %struct.edge_def, ptr %937, i64 0, i32 7
  %940 = load i32, ptr %939, align 8, !tbaa !111
  %941 = and i32 %940, 16
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %943, label %966

943:                                              ; preds = %938
  %944 = load ptr, ptr @edge_list, align 8, !tbaa !35
  %945 = load ptr, ptr %937, align 8, !tbaa !114
  %946 = getelementptr inbounds %struct.edge_def, ptr %937, i64 0, i32 1
  %947 = load ptr, ptr %946, align 8, !tbaa !115
  %948 = call i32 @find_edge_index(ptr noundef %944, ptr noundef %945, ptr noundef %947) #15
  %949 = icmp eq i32 %948, -1
  br i1 %949, label %950, label %951

950:                                              ; preds = %943
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 807, ptr noundef nonnull @.str.21) #15
  br label %951

951:                                              ; preds = %950, %943
  %952 = load ptr, ptr @st_insert_map, align 8, !tbaa !35
  %953 = sext i32 %948 to i64
  %954 = getelementptr inbounds ptr, ptr %952, i64 %953
  %955 = load ptr, ptr %954, align 8, !tbaa !35
  %956 = load i32, ptr %829, align 8, !tbaa !80
  %957 = lshr i32 %956, 6
  %958 = zext nneg i32 %957 to i64
  %959 = getelementptr inbounds %struct.simple_bitmap_def, ptr %955, i64 0, i32 3, i64 %958
  %960 = load i64, ptr %959, align 8, !tbaa !98
  %961 = and i32 %956, 63
  %962 = zext nneg i32 %961 to i64
  %963 = shl nuw i64 1, %962
  %964 = and i64 %963, %960
  %965 = icmp eq i64 %964, 0
  br i1 %965, label %977, label %966

966:                                              ; preds = %951, %938
  %967 = load ptr, ptr %919, align 8, !tbaa !35
  %968 = icmp eq ptr %967, null
  br i1 %968, label %971, label %969

969:                                              ; preds = %966
  %970 = load i32, ptr %967, align 8, !tbaa !118
  br label %971

971:                                              ; preds = %969, %966
  %972 = phi i32 [ %970, %969 ], [ 0, %966 ]
  %973 = icmp ult i32 %922, %972
  br i1 %973, label %975, label %974

974:                                              ; preds = %971
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.21) #15
  br label %975

975:                                              ; preds = %974, %971
  %976 = add i32 %922, 1
  br label %921, !llvm.loop !120

977:                                              ; preds = %951, %936
  %978 = icmp eq ptr %937, null
  br i1 %978, label %979, label %1087

979:                                              ; preds = %977
  %980 = load ptr, ptr @cfun, align 8, !tbaa !35
  %981 = getelementptr inbounds %struct.function, ptr %980, i64 0, i32 1
  %982 = load ptr, ptr %981, align 8, !tbaa !58
  %983 = getelementptr inbounds %struct.control_flow_graph, ptr %982, i64 0, i32 1
  %984 = load ptr, ptr %983, align 8, !tbaa !64
  %985 = icmp eq ptr %919, %984
  br i1 %985, label %1087, label %986

986:                                              ; preds = %979
  %987 = load ptr, ptr %918, align 8, !tbaa !115
  %988 = icmp eq ptr %987, null
  br label %989

989:                                              ; preds = %1051, %986
  %990 = phi i32 [ 0, %986 ], [ %1052, %1051 ]
  br i1 %988, label %991, label %992

991:                                              ; preds = %989
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 687, ptr noundef nonnull @.str.21) #15
  br label %992

992:                                              ; preds = %991, %989
  %993 = load ptr, ptr %987, align 8, !tbaa !35
  %994 = icmp eq ptr %993, null
  br i1 %994, label %997, label %995

995:                                              ; preds = %992
  %996 = load i32, ptr %993, align 8, !tbaa !118
  br label %997

997:                                              ; preds = %995, %992
  %998 = phi i32 [ %996, %995 ], [ 0, %992 ]
  %999 = icmp eq i32 %998, %990
  br i1 %999, label %1004, label %1000

1000:                                             ; preds = %997
  %1001 = zext i32 %990 to i64
  %1002 = getelementptr inbounds %struct.VEC_edge_base, ptr %993, i64 0, i32 2, i64 %1001
  %1003 = load ptr, ptr %1002, align 8, !tbaa !35
  br label %1004

1004:                                             ; preds = %1000, %997
  %1005 = phi ptr [ %1003, %1000 ], [ null, %997 ]
  br i1 %999, label %1053, label %1006

1006:                                             ; preds = %1004
  %1007 = load ptr, ptr @edge_list, align 8, !tbaa !35
  %1008 = load ptr, ptr %1005, align 8, !tbaa !114
  %1009 = getelementptr inbounds %struct.edge_def, ptr %1005, i64 0, i32 1
  %1010 = load ptr, ptr %1009, align 8, !tbaa !115
  %1011 = call i32 @find_edge_index(ptr noundef %1007, ptr noundef %1008, ptr noundef %1010) #15
  %1012 = load ptr, ptr @st_insert_map, align 8, !tbaa !35
  %1013 = sext i32 %1011 to i64
  %1014 = getelementptr inbounds ptr, ptr %1012, i64 %1013
  %1015 = load ptr, ptr %1014, align 8, !tbaa !35
  %1016 = load i32, ptr %829, align 8, !tbaa !80
  %1017 = load ptr, ptr %1015, align 8, !tbaa !99
  %1018 = icmp eq ptr %1017, null
  br i1 %1018, label %1033, label %1019

1019:                                             ; preds = %1006
  %1020 = lshr i32 %1016, 6
  %1021 = zext nneg i32 %1020 to i64
  %1022 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1015, i64 0, i32 3, i64 %1021
  %1023 = load i64, ptr %1022, align 8, !tbaa !98
  %1024 = and i32 %1016, 63
  %1025 = zext nneg i32 %1024 to i64
  %1026 = shl nuw i64 1, %1025
  %1027 = and i64 %1023, %1026
  %1028 = icmp eq i64 %1027, 0
  br i1 %1028, label %1033, label %1029

1029:                                             ; preds = %1019
  %1030 = getelementptr inbounds i8, ptr %1017, i64 %1021
  %1031 = load i8, ptr %1030, align 1, !tbaa !46
  %1032 = add i8 %1031, -1
  store i8 %1032, ptr %1030, align 1, !tbaa !46
  br label %1033

1033:                                             ; preds = %1029, %1019, %1006
  %1034 = and i32 %1016, 63
  %1035 = zext nneg i32 %1034 to i64
  %1036 = shl nuw i64 1, %1035
  %1037 = xor i64 %1036, -1
  %1038 = lshr i32 %1016, 6
  %1039 = zext nneg i32 %1038 to i64
  %1040 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1015, i64 0, i32 3, i64 %1039
  %1041 = load i64, ptr %1040, align 8, !tbaa !98
  %1042 = and i64 %1041, %1037
  store i64 %1042, ptr %1040, align 8, !tbaa !98
  %1043 = load ptr, ptr %987, align 8, !tbaa !35
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1047, label %1045

1045:                                             ; preds = %1033
  %1046 = load i32, ptr %1043, align 8, !tbaa !118
  br label %1047

1047:                                             ; preds = %1045, %1033
  %1048 = phi i32 [ %1046, %1045 ], [ 0, %1033 ]
  %1049 = icmp ult i32 %990, %1048
  br i1 %1049, label %1051, label %1050

1050:                                             ; preds = %1047
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.21) #15
  br label %1051

1051:                                             ; preds = %1050, %1047
  %1052 = add i32 %990, 1
  br label %989, !llvm.loop !121

1053:                                             ; preds = %1004
  %1054 = getelementptr inbounds %struct.basic_block_def, ptr %919, i64 0, i32 7
  %1055 = load ptr, ptr %1054, align 8, !tbaa !46
  %1056 = load ptr, ptr %1055, align 8, !tbaa !84
  %1057 = getelementptr inbounds %struct.rtx_def, ptr %1056, i64 0, i32 1, i32 0, i32 0, i64 1
  %1058 = load ptr, ptr %1057, align 8, !tbaa !46
  %1059 = icmp eq ptr %1056, null
  br i1 %1059, label %1078, label %1060

1060:                                             ; preds = %1053
  %1061 = getelementptr inbounds %struct.rtl_bb_info, ptr %1055, i64 0, i32 1
  br label %1062

1062:                                             ; preds = %1060, %1074
  %1063 = phi ptr [ %1056, %1060 ], [ %1076, %1074 ]
  %1064 = phi ptr [ %1058, %1060 ], [ %1063, %1074 ]
  %1065 = load i32, ptr %1063, align 8
  %1066 = trunc i32 %1065 to i16
  switch i16 %1066, label %1078 [
    i16 12, label %1071
    i16 13, label %1067
  ]

1067:                                             ; preds = %1062
  %1068 = getelementptr inbounds %struct.rtx_def, ptr %1063, i64 1
  %1069 = load i32, ptr %1068, align 8, !tbaa !46
  %1070 = icmp eq i32 %1069, 10
  br i1 %1070, label %1071, label %1078

1071:                                             ; preds = %1067, %1062
  %1072 = load ptr, ptr %1061, align 8, !tbaa !66
  %1073 = icmp eq ptr %1063, %1072
  br i1 %1073, label %1078, label %1074

1074:                                             ; preds = %1071
  %1075 = getelementptr inbounds %struct.rtx_def, ptr %1063, i64 0, i32 1, i32 0, i32 0, i64 2
  %1076 = load ptr, ptr %1075, align 8, !tbaa !46
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1078, label %1062, !llvm.loop !122

1078:                                             ; preds = %1074, %1071, %1062, %1067, %1053
  %1079 = phi ptr [ %1058, %1053 ], [ %1063, %1074 ], [ %1063, %1071 ], [ %1064, %1062 ], [ %1064, %1067 ]
  %1080 = call ptr @emit_insn_after_noloc(ptr noundef %917, ptr noundef %1079, ptr noundef nonnull %919) #15
  %1081 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1082 = icmp eq ptr %1081, null
  br i1 %1082, label %1109, label %1083

1083:                                             ; preds = %1078
  %1084 = getelementptr inbounds %struct.basic_block_def, ptr %919, i64 0, i32 9
  %1085 = load i32, ptr %1084, align 8, !tbaa !97
  %1086 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1081, ptr noundef nonnull @.str.24, i32 noundef %1085)
  br label %1103

1087:                                             ; preds = %979, %977
  %1088 = load i32, ptr %910, align 8, !tbaa !111
  %1089 = and i32 %1088, 2
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1092, label %1091

1091:                                             ; preds = %1087
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 827, ptr noundef nonnull @.str.21) #15
  br label %1092

1092:                                             ; preds = %1091, %1087
  call void @insert_insn_on_edge(ptr noundef %917, ptr noundef %906) #15
  %1093 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1094 = icmp eq ptr %1093, null
  br i1 %1094, label %1109, label %1095

1095:                                             ; preds = %1092
  %1096 = load ptr, ptr %906, align 8, !tbaa !114
  %1097 = getelementptr inbounds %struct.basic_block_def, ptr %1096, i64 0, i32 9
  %1098 = load i32, ptr %1097, align 8, !tbaa !97
  %1099 = load ptr, ptr %918, align 8, !tbaa !115
  %1100 = getelementptr inbounds %struct.basic_block_def, ptr %1099, i64 0, i32 9
  %1101 = load i32, ptr %1100, align 8, !tbaa !97
  %1102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1093, ptr noundef nonnull @.str.23, i32 noundef %1098, i32 noundef %1101)
  br label %1103

1103:                                             ; preds = %1083, %1095
  %1104 = phi ptr [ %917, %1095 ], [ %1080, %1083 ]
  %1105 = phi i32 [ 1, %1095 ], [ 0, %1083 ]
  %1106 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_inline_rtx(ptr noundef %1106, ptr noundef %1104, i32 noundef 6) #15
  %1107 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1108 = call i32 @fputc(i32 10, ptr %1107)
  br label %1109

1109:                                             ; preds = %1103, %1092, %1078, %909, %902
  %1110 = phi i32 [ 0, %902 ], [ 0, %909 ], [ 1, %1092 ], [ 0, %1078 ], [ %1105, %1103 ]
  %1111 = or i32 %1110, %888
  %1112 = add nsw i32 %887, 1
  br label %1113

1113:                                             ; preds = %1109, %884
  %1114 = phi i32 [ %1111, %1109 ], [ %888, %884 ]
  %1115 = phi i32 [ %1112, %1109 ], [ %887, %884 ]
  %1116 = add nuw nsw i64 %885, 1
  %1117 = load ptr, ptr @edge_list, align 8, !tbaa !35
  %1118 = getelementptr inbounds %struct.edge_list, ptr %1117, i64 0, i32 1
  %1119 = load i32, ptr %1118, align 4, !tbaa !108
  %1120 = sext i32 %1119 to i64
  %1121 = icmp slt i64 %1116, %1120
  br i1 %1121, label %884, label %1122, !llvm.loop !123

1122:                                             ; preds = %1113, %822, %799, %796
  %1123 = phi i32 [ %761, %799 ], [ %761, %796 ], [ %761, %822 ], [ %1114, %1113 ]
  %1124 = phi i32 [ %760, %799 ], [ %760, %796 ], [ %823, %822 ], [ %823, %1113 ]
  %1125 = phi i32 [ %759, %799 ], [ %759, %796 ], [ %759, %822 ], [ %1115, %1113 ]
  %1126 = getelementptr inbounds %struct.st_expr, ptr %758, i64 0, i32 4
  %1127 = load ptr, ptr %1126, align 8, !tbaa !35
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1129, label %757, !llvm.loop !124

1129:                                             ; preds = %1122
  %1130 = icmp eq i32 %1123, 0
  br label %1131

1131:                                             ; preds = %1129, %748
  %1132 = phi i1 [ true, %748 ], [ %1130, %1129 ]
  %1133 = phi i32 [ 0, %748 ], [ %1124, %1129 ]
  %1134 = phi i32 [ 0, %748 ], [ %1125, %1129 ]
  br i1 %1132, label %1136, label %1135

1135:                                             ; preds = %1131
  call void @commit_edge_insertions() #15
  br label %1136

1136:                                             ; preds = %1135, %1131
  %1137 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !35
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1140, label %1139

1139:                                             ; preds = %1136
  call void @htab_delete(ptr noundef nonnull %1137) #15
  br label %1140

1140:                                             ; preds = %1139, %1136
  store ptr null, ptr @store_motion_mems_table, align 8, !tbaa !35
  %1141 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1151, label %1143

1143:                                             ; preds = %1140, %1143
  %1144 = phi ptr [ %1149, %1143 ], [ %1141, %1140 ]
  %1145 = getelementptr inbounds %struct.st_expr, ptr %1144, i64 0, i32 4
  %1146 = load ptr, ptr %1145, align 8, !tbaa !78
  store ptr %1146, ptr @store_motion_mems, align 8, !tbaa !35
  %1147 = getelementptr inbounds %struct.st_expr, ptr %1144, i64 0, i32 2
  call void @free_INSN_LIST_list(ptr noundef nonnull %1147) #15
  %1148 = getelementptr inbounds %struct.st_expr, ptr %1144, i64 0, i32 3
  call void @free_INSN_LIST_list(ptr noundef nonnull %1148) #15
  call void @free(ptr noundef %1144)
  %1149 = load ptr, ptr @store_motion_mems, align 8, !tbaa !35
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1151, label %1143, !llvm.loop !125

1151:                                             ; preds = %1143, %1140
  store ptr null, ptr @store_motion_mems, align 8, !tbaa !35
  %1152 = load ptr, ptr @st_avloc, align 8, !tbaa !35
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1155, label %1154

1154:                                             ; preds = %1151
  call void @free(ptr noundef %1152)
  br label %1155

1155:                                             ; preds = %1154, %1151
  %1156 = load ptr, ptr @st_kill, align 8, !tbaa !35
  %1157 = icmp eq ptr %1156, null
  br i1 %1157, label %1159, label %1158

1158:                                             ; preds = %1155
  call void @free(ptr noundef %1156)
  br label %1159

1159:                                             ; preds = %1158, %1155
  %1160 = load ptr, ptr @st_transp, align 8, !tbaa !35
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1163, label %1162

1162:                                             ; preds = %1159
  call void @free(ptr noundef %1160)
  br label %1163

1163:                                             ; preds = %1162, %1159
  %1164 = load ptr, ptr @st_antloc, align 8, !tbaa !35
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1167, label %1166

1166:                                             ; preds = %1163
  call void @free(ptr noundef %1164)
  br label %1167

1167:                                             ; preds = %1166, %1163
  %1168 = load ptr, ptr @st_insert_map, align 8, !tbaa !35
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1171, label %1170

1170:                                             ; preds = %1167
  call void @free(ptr noundef %1168)
  br label %1171

1171:                                             ; preds = %1170, %1167
  %1172 = load ptr, ptr @st_delete_map, align 8, !tbaa !35
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1175, label %1174

1174:                                             ; preds = %1171
  call void @free(ptr noundef %1172)
  br label %1175

1175:                                             ; preds = %1174, %1171
  store ptr null, ptr @st_antloc, align 8, !tbaa !35
  store ptr null, ptr @st_transp, align 8, !tbaa !35
  store ptr null, ptr @st_kill, align 8, !tbaa !35
  store ptr null, ptr @st_avloc, align 8, !tbaa !35
  store ptr null, ptr @st_delete_map, align 8, !tbaa !35
  store ptr null, ptr @st_insert_map, align 8, !tbaa !35
  %1176 = load ptr, ptr @edge_list, align 8, !tbaa !35
  call void @free_edge_list(ptr noundef %1176) #15
  call void @remove_fake_exit_edges() #15
  call void @end_alias_analysis() #15
  %1177 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1189, label %1179

1179:                                             ; preds = %1175
  %1180 = call ptr @current_function_name() #15
  %1181 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1182 = getelementptr inbounds %struct.function, ptr %1181, i64 0, i32 1
  %1183 = load ptr, ptr %1182, align 8, !tbaa !58
  %1184 = getelementptr inbounds %struct.control_flow_graph, ptr %1183, i64 0, i32 3
  %1185 = load i32, ptr %1184, align 8, !tbaa !126
  %1186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1177, ptr noundef nonnull @.str.2, ptr noundef %1180, i32 noundef %1185)
  %1187 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1187, ptr noundef nonnull @.str.3, i32 noundef %1133, i32 noundef %1134)
  br label %1189

1189:                                             ; preds = %1179, %1175
  %1190 = icmp sgt i32 %1133, 0
  %1191 = icmp sgt i32 %1134, 0
  %1192 = select i1 %1190, i1 true, i1 %1191
  %1193 = zext i1 %1192 to i32
  br label %1194

1194:                                             ; preds = %393, %1189
  %1195 = phi i32 [ 0, %393 ], [ %1193, %1189 ]
  %1196 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !50
  %1197 = or i32 %1196, %1195
  store i32 %1197, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !50
  ret i32 0
}

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare void @init_alias_analysis() local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @end_alias_analysis() local_unnamed_addr #3

declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #3

declare void @connect_infinite_loops_to_exit() local_unnamed_addr #3

declare ptr @pre_edge_rev_lcm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @commit_edge_insertions() local_unnamed_addr #3

declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

declare void @remove_fake_exit_edges() local_unnamed_addr #3

declare ptr @current_function_name() local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @pre_st_expr_hash(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !tbaa !50
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %3, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %7
}

; Function Attrs: cold nounwind uwtable
define internal i32 @pre_st_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #15
  ret i32 %5
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef) local_unnamed_addr #3

declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @store_killed_after(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef writeonly %5) unnamed_addr #10 !prof !34 {
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = icmp eq ptr %1, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %4, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %39

21:                                               ; preds = %34, %6, %39
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %10, %23
  br i1 %24, label %56, label %43

25:                                               ; preds = %34
  %26 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %4, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !50
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39, !llvm.loop !85

34:                                               ; preds = %12, %25
  %35 = phi ptr [ %37, %25 ], [ %1, %12 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %21, label %25, !llvm.loop !85

39:                                               ; preds = %25, %12
  %40 = phi i1 [ %11, %12 ], [ %38, %25 ]
  br i1 %40, label %21, label %41

41:                                               ; preds = %39
  %42 = icmp eq ptr %5, null
  br i1 %42, label %56, label %54

43:                                               ; preds = %21, %49
  %44 = phi ptr [ %51, %49 ], [ %10, %21 ]
  %45 = tail call fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef %1, ptr noundef %44, i32 noundef 0), !range !86
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = icmp eq ptr %5, null
  br i1 %48, label %56, label %54

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = load ptr, ptr %22, align 8, !tbaa !46
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %56, label %43, !llvm.loop !127

54:                                               ; preds = %47, %41
  %55 = phi ptr [ null, %41 ], [ %44, %47 ]
  store ptr %55, ptr %5, align 8, !tbaa !35
  br label %56

56:                                               ; preds = %49, %54, %21, %47, %41
  %57 = phi i8 [ 1, %41 ], [ 1, %47 ], [ 0, %21 ], [ 1, %54 ], [ 0, %49 ]
  ret i8 %57
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @extract_mentioned_regs_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %3, ptr noundef %8) #15
  store ptr %9, ptr %1, align 8, !tbaa !35
  br label %10

10:                                               ; preds = %7, %2
  ret i32 0
}

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %130

9:                                                ; preds = %4
  switch i32 %6, label %34 [
    i32 7, label %130
    i32 10, label %10
  ]

10:                                               ; preds = %9
  %11 = and i32 %5, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %130, label %13

13:                                               ; preds = %10
  %14 = icmp eq ptr %1, null
  br i1 %14, label %130, label %15

15:                                               ; preds = %13, %30
  %16 = phi ptr [ %32, %30 ], [ %1, %13 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = tail call ptr @find_base_term(ptr noundef %18) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %130, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 16777215
  %24 = icmp eq i32 %23, 1048582
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !35
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %130, label %30

30:                                               ; preds = %21, %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %130, label %15, !llvm.loop !128

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %117 [
    i16 23, label %46
    i16 15, label %39
  ]

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = load i32, ptr %41, align 8, !tbaa !129
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %120

44:                                               ; preds = %39
  %45 = icmp eq i32 %3, 0
  br label %80

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 120
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi ptr [ %54, %52 ], [ %48, %46 ]
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 43
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = tail call i32 @exp_equiv_p(ptr noundef nonnull %56, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = icmp eq i32 %3, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = tail call i32 @output_dependence(ptr noundef nonnull %56, ptr noundef %0) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %130

68:                                               ; preds = %63
  %69 = tail call i32 @output_dependence(ptr noundef %0, ptr noundef nonnull %56) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %130

71:                                               ; preds = %68, %65, %60, %55
  %72 = tail call fastcc zeroext i8 @find_loads(ptr noundef nonnull %36, ptr noundef %0, i32 noundef %3), !range !86
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %120, label %130

74:                                               ; preds = %114
  %75 = add nuw nsw i64 %81, 1
  %76 = load ptr, ptr %40, align 8, !tbaa !46
  %77 = load i32, ptr %76, align 8, !tbaa !129
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %120, !llvm.loop !131

80:                                               ; preds = %44, %74
  %81 = phi i64 [ 0, %44 ], [ %75, %74 ]
  %82 = phi ptr [ %41, %44 ], [ %76, %74 ]
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 23
  br i1 %87, label %88, label %112

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 120
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi ptr [ %96, %94 ], [ %90, %88 ]
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 43
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = tail call i32 @exp_equiv_p(ptr noundef nonnull %98, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  br i1 %45, label %109, label %106

106:                                              ; preds = %105
  %107 = tail call i32 @output_dependence(ptr noundef nonnull %98, ptr noundef %0) #15
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %114

109:                                              ; preds = %105
  %110 = tail call i32 @output_dependence(ptr noundef %0, ptr noundef nonnull %98) #15
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %97, %102, %106, %80
  %113 = tail call fastcc zeroext i8 @find_loads(ptr noundef nonnull %84, ptr noundef %0, i32 noundef %3), !range !86
  br label %114

114:                                              ; preds = %106, %109, %112
  %115 = phi i8 [ %113, %112 ], [ 1, %109 ], [ 1, %106 ]
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %74, label %130

117:                                              ; preds = %34
  %118 = tail call fastcc zeroext i8 @find_loads(ptr noundef nonnull %36, ptr noundef %0, i32 noundef %3), !range !86
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %74, %39, %117, %71
  %121 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %2) #15
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = tail call i32 @exp_equiv_p(ptr noundef %125, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #15
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = tail call fastcc zeroext i8 @find_loads(ptr noundef %125, ptr noundef %0, i32 noundef %3), !range !86
  br label %130

130:                                              ; preds = %25, %15, %30, %114, %13, %68, %65, %71, %4, %123, %120, %117, %10, %9, %128
  %131 = phi i8 [ %129, %128 ], [ 0, %4 ], [ 0, %9 ], [ 1, %10 ], [ 1, %117 ], [ 0, %120 ], [ 0, %123 ], [ 1, %71 ], [ 1, %65 ], [ 1, %68 ], [ 0, %13 ], [ 1, %114 ], [ 0, %30 ], [ 1, %15 ], [ 1, %25 ]
  ret i8 %131
}

declare ptr @find_base_term(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @find_loads(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %0, %5 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = tail call i32 @anti_dependence(ptr noundef nonnull %13, ptr noundef %1) #15
  br label %26

21:                                               ; preds = %17
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = tail call i32 @true_dependence(ptr noundef nonnull %1, i32 noundef %24, ptr noundef nonnull %13, ptr noundef nonnull @rtx_addr_varies_p) #15
  br label %26

26:                                               ; preds = %19, %21
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %26, %12
  %31 = load i32, ptr %13, align 8
  %32 = and i32 %31, 65535
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %33
  %37 = load i8, ptr %36, align 1, !tbaa !46
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %41 = zext i8 %37 to i64
  br label %42

42:                                               ; preds = %39, %73
  %43 = phi i64 [ %41, %39 ], [ %45, %73 ]
  %44 = phi i32 [ 0, %39 ], [ %74, %73 ]
  %45 = add nsw i64 %43, -1
  %46 = getelementptr inbounds i8, ptr %35, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !46
  switch i8 %47, label %73 [
    i8 101, label %48
    i8 69, label %55
  ]

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %49, i64 0, i64 %45
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = tail call fastcc zeroext i8 @find_loads(ptr noundef %51, ptr noundef %1, i32 noundef %2), !range !86
  %53 = zext nneg i8 %52 to i32
  %54 = or i32 %44, %53
  br label %73

55:                                               ; preds = %42
  %56 = getelementptr inbounds [1 x %union.rtunion_def], ptr %40, i64 0, i64 %45
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = load i32, ptr %57, align 8, !tbaa !129
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ %61, %60 ], [ %65, %62 ]
  %64 = phi i32 [ %44, %60 ], [ %71, %62 ]
  %65 = add nsw i64 %63, -1
  %66 = load ptr, ptr %56, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = tail call fastcc zeroext i8 @find_loads(ptr noundef %68, ptr noundef %1, i32 noundef %2), !range !86
  %70 = zext nneg i8 %69 to i32
  %71 = or i32 %64, %70
  %72 = icmp sgt i64 %63, 1
  br i1 %72, label %62, label %73, !llvm.loop !132

73:                                               ; preds = %62, %55, %42, %48
  %74 = phi i32 [ %54, %48 ], [ %44, %42 ], [ %44, %55 ], [ %71, %62 ]
  %75 = icmp sgt i64 %43, 1
  %76 = icmp eq i32 %74, 0
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %42, label %78, !llvm.loop !133

78:                                               ; preds = %73
  %79 = trunc i32 %74 to i8
  br label %80

80:                                               ; preds = %30, %78, %26, %3
  %81 = phi i8 [ 0, %3 ], [ 1, %26 ], [ 0, %30 ], [ %79, %78 ]
  ret i8 %81
}

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare i32 @output_dependence(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @anti_dependence(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #3

declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #3

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx_and_attrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @replace_store_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !prof !34 {
  %5 = load ptr, ptr %3, align 8, !tbaa !76
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %7, 10
  tail call void @llvm.assume(i1 %11)
  br label %12

12:                                               ; preds = %4, %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %14) #15
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi ptr [ %19, %18 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = tail call ptr @gen_move_insn(ptr noundef %0, ptr noundef %23) #15
  %25 = getelementptr inbounds %struct.st_expr, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %20, %35
  %29 = phi ptr [ %37, %35 ], [ %26, %20 ]
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  store ptr %24, ptr %34, align 8, !tbaa !46
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %28, !llvm.loop !134

39:                                               ; preds = %35, %20, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !46
  %43 = tail call ptr @emit_insn_after(ptr noundef %24, ptr noundef nonnull %1) #15
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !97
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.17, i32 noundef %48)
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_inline_rtx(ptr noundef %50, ptr noundef nonnull %1, i32 noundef 6) #15
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %52 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 41, i64 1, ptr %51)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_inline_rtx(ptr noundef %53, ptr noundef %43, i32 noundef 6) #15
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %55 = tail call i32 @fputc(i32 10, ptr %54)
  br label %56

56:                                               ; preds = %46, %39
  %57 = tail call ptr @delete_insn(ptr noundef nonnull %1) #15
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !66
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = icmp eq ptr %43, %63
  br i1 %64, label %113, label %65

65:                                               ; preds = %56, %104
  %66 = phi ptr [ %106, %104 ], [ %43, %56 ]
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %104

71:                                               ; preds = %65
  switch i32 %68, label %80 [
    i32 7, label %104
    i32 8, label %72
    i32 9, label %72
    i32 10, label %72
  ]

72:                                               ; preds = %71, %71, %71
  %73 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 23
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = tail call ptr @single_set_2(ptr noundef nonnull %66, ptr noundef nonnull %74) #15
  br label %80

80:                                               ; preds = %71, %72, %78
  %81 = phi ptr [ %79, %78 ], [ %74, %72 ], [ null, %71 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = tail call i32 @exp_equiv_p(ptr noundef %85, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1) #15
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %364

88:                                               ; preds = %83
  %89 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %66) #15
  %90 = icmp eq ptr %89, null
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = tail call i32 @exp_equiv_p(ptr noundef %93, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1) #15
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !46
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %97, ptr noundef nonnull @.str.19, i32 noundef %101)
  br label %103

103:                                              ; preds = %99, %96
  tail call void @remove_note(ptr noundef nonnull %66, ptr noundef nonnull %89) #15
  br label %104

104:                                              ; preds = %71, %65, %103, %88, %91, %80
  %105 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  %107 = load ptr, ptr %58, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.rtl_bb_info, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !66
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 2
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  %112 = icmp eq ptr %106, %111
  br i1 %112, label %113, label %65, !llvm.loop !135

113:                                              ; preds = %104, %56
  %114 = load ptr, ptr @cfun, align 8, !tbaa !35
  %115 = getelementptr inbounds %struct.function, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !58
  %117 = getelementptr inbounds %struct.control_flow_graph, ptr %116, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !96
  %119 = tail call ptr @sbitmap_alloc(i32 noundef %118) #15
  %120 = load ptr, ptr %3, align 8, !tbaa !76
  %121 = load ptr, ptr @cfun, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !58
  %124 = getelementptr inbounds %struct.control_flow_graph, ptr %123, i64 0, i32 3
  %125 = load i32, ptr %124, align 8, !tbaa !126
  %126 = sext i32 %125 to i64
  %127 = shl nsw i64 %126, 4
  %128 = tail call ptr @xmalloc(i64 noundef %127) #15
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  tail call void @sbitmap_zero(ptr noundef %119) #15
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %113
  %133 = load i32, ptr %130, align 8, !tbaa !118
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.VEC_edge_base, ptr %130, i64 0, i32 2, i64 0
  %137 = load ptr, ptr %136, align 8, !tbaa !35
  br label %138

138:                                              ; preds = %113, %135, %132
  %139 = phi ptr [ %137, %135 ], [ null, %132 ], [ null, %113 ]
  %140 = getelementptr inbounds %struct.st_expr, ptr %3, i64 0, i32 5
  br label %141

141:                                              ; preds = %357, %138
  %142 = phi ptr [ %129, %138 ], [ %341, %357 ]
  %143 = phi ptr [ %139, %138 ], [ %358, %357 ]
  %144 = phi i32 [ 0, %138 ], [ %349, %357 ]
  br label %145

145:                                              ; preds = %141, %337
  %146 = phi i32 [ %318, %337 ], [ 0, %141 ]
  %147 = phi ptr [ %331, %337 ], [ %143, %141 ]
  %148 = phi i32 [ %172, %337 ], [ %144, %141 ]
  br label %149

149:                                              ; preds = %223, %145
  %150 = phi i32 [ %146, %145 ], [ %211, %223 ]
  %151 = phi ptr [ %147, %145 ], [ %224, %223 ]
  %152 = phi i32 [ %148, %145 ], [ %172, %223 ]
  %153 = icmp eq ptr %151, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = icmp eq i32 %152, 0
  br i1 %155, label %362, label %156

156:                                              ; preds = %154
  %157 = add nsw i32 %152, -1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.edge_iterator, ptr %128, i64 %158
  %160 = load i32, ptr %159, align 8
  %161 = getelementptr inbounds { i32, ptr }, ptr %159, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 687, ptr noundef nonnull @.str.21) #15
  br label %165

165:                                              ; preds = %164, %156
  %166 = load ptr, ptr %162, align 8, !tbaa !35, !nonnull !136, !noundef !136
  %167 = zext i32 %160 to i64
  %168 = getelementptr inbounds %struct.VEC_edge_base, ptr %166, i64 0, i32 2, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !35
  br label %170

170:                                              ; preds = %165, %149
  %171 = phi ptr [ %151, %149 ], [ %169, %165 ]
  %172 = phi i32 [ %152, %149 ], [ %157, %165 ]
  %173 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !115
  %175 = load ptr, ptr @cfun, align 8, !tbaa !35
  %176 = getelementptr inbounds %struct.function, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !58
  %178 = getelementptr inbounds %struct.control_flow_graph, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !64
  %180 = icmp eq ptr %174, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 9
  %183 = load i32, ptr %182, align 8, !tbaa !97
  %184 = lshr i32 %183, 6
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds %struct.simple_bitmap_def, ptr %119, i64 0, i32 3, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !98
  %188 = and i32 %183, 63
  %189 = zext nneg i32 %188 to i64
  %190 = shl nuw i64 1, %189
  %191 = and i64 %190, %187
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %225, label %193

193:                                              ; preds = %181, %170
  %194 = load ptr, ptr %142, align 8, !tbaa !35
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = load i32, ptr %194, align 8, !tbaa !118
  br label %198

198:                                              ; preds = %196, %193
  %199 = phi i32 [ %197, %196 ], [ 0, %193 ]
  %200 = icmp eq i32 %199, %150
  br i1 %200, label %210, label %201

201:                                              ; preds = %198
  br i1 %195, label %204, label %202

202:                                              ; preds = %201
  %203 = load i32, ptr %194, align 8, !tbaa !118
  br label %204

204:                                              ; preds = %202, %201
  %205 = phi i32 [ %203, %202 ], [ 0, %201 ]
  %206 = icmp ult i32 %150, %205
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.21) #15
  br label %208

208:                                              ; preds = %207, %204
  %209 = add i32 %150, 1
  br label %210

210:                                              ; preds = %208, %198
  %211 = phi i32 [ %209, %208 ], [ %150, %198 ]
  %212 = load ptr, ptr %142, align 8, !tbaa !35
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  %215 = load i32, ptr %212, align 8, !tbaa !118
  br label %216

216:                                              ; preds = %214, %210
  %217 = phi i32 [ %215, %214 ], [ 0, %210 ]
  %218 = icmp eq i32 %217, %211
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  %220 = zext i32 %211 to i64
  %221 = getelementptr inbounds %struct.VEC_edge_base, ptr %212, i64 0, i32 2, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !35
  br label %223

223:                                              ; preds = %219, %216
  %224 = phi ptr [ %222, %219 ], [ null, %216 ]
  br label %149, !llvm.loop !137

225:                                              ; preds = %181
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 9
  %227 = getelementptr inbounds %struct.simple_bitmap_def, ptr %119, i64 0, i32 3, i64 %185
  %228 = load ptr, ptr %119, align 8, !tbaa !99
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds i8, ptr %228, i64 %185
  %232 = load i8, ptr %231, align 1, !tbaa !46
  %233 = add i8 %232, 1
  store i8 %233, ptr %231, align 1, !tbaa !46
  br label %234

234:                                              ; preds = %230, %225
  %235 = load i64, ptr %227, align 8, !tbaa !98
  %236 = or i64 %235, %190
  store i64 %236, ptr %227, align 8, !tbaa !98
  %237 = load ptr, ptr @st_antloc, align 8, !tbaa !35
  %238 = load i32, ptr %226, align 8, !tbaa !97
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds ptr, ptr %237, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !35
  %242 = load i32, ptr %140, align 8, !tbaa !80
  %243 = lshr i32 %242, 6
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds %struct.simple_bitmap_def, ptr %241, i64 0, i32 3, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !98
  %247 = and i32 %242, 63
  %248 = zext nneg i32 %247 to i64
  %249 = shl nuw i64 1, %248
  %250 = and i64 %249, %246
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %261, label %252

252:                                              ; preds = %234, %252
  %253 = phi ptr [ %260, %252 ], [ %25, %234 ]
  %254 = load ptr, ptr %253, align 8, !tbaa !46
  %255 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !46
  %259 = icmp eq ptr %258, %174
  %260 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %259, label %268, label %252, !llvm.loop !138

261:                                              ; preds = %234
  %262 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 7
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = getelementptr inbounds %struct.rtl_bb_info, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !66
  %266 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1, i32 0, i32 0, i64 2
  %267 = load ptr, ptr %266, align 8, !tbaa !46
  br label %268

268:                                              ; preds = %252, %261
  %269 = phi ptr [ %267, %261 ], [ %256, %252 ]
  %270 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !46
  %272 = load ptr, ptr %271, align 8, !tbaa !46
  %273 = icmp eq ptr %272, %269
  br i1 %273, label %300, label %274

274:                                              ; preds = %268, %296
  %275 = phi ptr [ %298, %296 ], [ %272, %268 ]
  %276 = load i32, ptr %275, align 8
  %277 = and i32 %276, 65535
  %278 = add nsw i32 %277, -11
  %279 = icmp ult i32 %278, -3
  br i1 %279, label %296, label %280

280:                                              ; preds = %274
  %281 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %275) #15
  %282 = icmp eq ptr %281, null
  br i1 %282, label %296, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !46
  %286 = tail call i32 @exp_equiv_p(ptr noundef %285, ptr noundef %120, i32 noundef 0, i8 noundef zeroext 1) #15
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %296, label %288

288:                                              ; preds = %283
  %289 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1
  %293 = load i32, ptr %292, align 8, !tbaa !46
  %294 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %289, ptr noundef nonnull @.str.19, i32 noundef %293)
  br label %295

295:                                              ; preds = %291, %288
  tail call void @remove_note(ptr noundef nonnull %275, ptr noundef nonnull %281) #15
  br label %296

296:                                              ; preds = %295, %283, %280, %274
  %297 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1, i32 0, i32 0, i64 2
  %298 = load ptr, ptr %297, align 8, !tbaa !46
  %299 = icmp eq ptr %298, %269
  br i1 %299, label %300, label %274, !llvm.loop !139

300:                                              ; preds = %296, %268
  %301 = load ptr, ptr %142, align 8, !tbaa !35
  %302 = icmp eq ptr %301, null
  br i1 %302, label %305, label %303

303:                                              ; preds = %300
  %304 = load i32, ptr %301, align 8, !tbaa !118
  br label %305

305:                                              ; preds = %303, %300
  %306 = phi i32 [ %304, %303 ], [ 0, %300 ]
  %307 = icmp eq i32 %306, %150
  br i1 %307, label %317, label %308

308:                                              ; preds = %305
  br i1 %302, label %311, label %309

309:                                              ; preds = %308
  %310 = load i32, ptr %301, align 8, !tbaa !118
  br label %311

311:                                              ; preds = %309, %308
  %312 = phi i32 [ %310, %309 ], [ 0, %308 ]
  %313 = icmp ult i32 %150, %312
  br i1 %313, label %315, label %314

314:                                              ; preds = %311
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.21) #15
  br label %315

315:                                              ; preds = %314, %311
  %316 = add i32 %150, 1
  br label %317

317:                                              ; preds = %315, %305
  %318 = phi i32 [ %316, %315 ], [ %150, %305 ]
  %319 = load ptr, ptr %142, align 8, !tbaa !35
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %317
  %322 = load i32, ptr %319, align 8, !tbaa !118
  br label %323

323:                                              ; preds = %321, %317
  %324 = phi i32 [ %322, %321 ], [ 0, %317 ]
  %325 = icmp eq i32 %324, %318
  br i1 %325, label %330, label %326

326:                                              ; preds = %323
  %327 = zext i32 %318 to i64
  %328 = getelementptr inbounds %struct.VEC_edge_base, ptr %319, i64 0, i32 2, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !35
  br label %330

330:                                              ; preds = %326, %323
  %331 = phi ptr [ %329, %326 ], [ null, %323 ]
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !140
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %330
  %336 = load i32, ptr %333, align 8, !tbaa !118
  br label %337

337:                                              ; preds = %335, %330
  %338 = phi i32 [ %336, %335 ], [ 0, %330 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %145, label %340, !llvm.loop !137

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 1
  %342 = icmp eq ptr %331, null
  br i1 %342, label %348, label %343

343:                                              ; preds = %340
  %344 = add nsw i32 %172, 1
  %345 = sext i32 %172 to i64
  %346 = getelementptr inbounds %struct.edge_iterator, ptr %128, i64 %345
  store i32 %318, ptr %346, align 8, !tbaa.struct !141
  %347 = getelementptr inbounds i8, ptr %346, i64 8
  store ptr %142, ptr %347, align 8, !tbaa.struct !142
  br label %348

348:                                              ; preds = %343, %340
  %349 = phi i32 [ %344, %343 ], [ %172, %340 ]
  %350 = load ptr, ptr %341, align 8, !tbaa !35
  %351 = icmp eq ptr %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %348
  %353 = load i32, ptr %350, align 8, !tbaa !118
  br label %354

354:                                              ; preds = %352, %348
  %355 = phi i32 [ %353, %352 ], [ 0, %348 ]
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %354, %359
  %358 = phi ptr [ %361, %359 ], [ null, %354 ]
  br label %141, !llvm.loop !137

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.VEC_edge_base, ptr %350, i64 0, i32 2, i64 0
  %361 = load ptr, ptr %360, align 8, !tbaa !35
  br label %357

362:                                              ; preds = %154
  tail call void @free(ptr noundef %128)
  %363 = load ptr, ptr %119, align 8, !tbaa !99
  tail call void @free(ptr noundef %363)
  tail call void @free(ptr noundef %119)
  br label %364

364:                                              ; preds = %83, %362
  ret void
}

declare void @dump_sbitmap_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @find_edge_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

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
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }

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
!55 = !{!"store-motion.c;gate_rtl_store_motion"}
!56 = !{!"branch_weights", i32 38, i32 0}
!57 = !{!"branch_weights", i32 0, i32 38}
!58 = !{!59, !36, i64 8}
!59 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!60 = !{!61, !36, i64 0}
!61 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!62 = !{!63, !36, i64 56}
!63 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!64 = !{!61, !36, i64 8}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !36, i64 8}
!67 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!68 = !{!69, !36, i64 248}
!69 = !{!"df", !37, i64 0, !37, i64 64, !36, i64 128, !70, i64 136, !70, i64 176, !36, i64 216, !36, i64 224, !36, i64 232, !41, i64 240, !41, i64 244, !36, i64 248, !41, i64 256, !41, i64 260, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !41, i64 344, !41, i64 348, !36, i64 352, !41, i64 360, !41, i64 364, !37, i64 365, !37, i64 366}
!70 = !{!"df_ref_info", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!71 = !{!72, !36, i64 8}
!72 = !{!"df_insn_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}
!76 = !{!77, !36, i64 0}
!77 = !{!"st_expr", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !36, i64 48}
!78 = !{!77, !36, i64 32}
!79 = !{!77, !36, i64 48}
!80 = !{!77, !41, i64 40}
!81 = !{!77, !41, i64 44}
!82 = !{!77, !36, i64 8}
!83 = !{!77, !36, i64 16}
!84 = !{!67, !36, i64 0}
!85 = distinct !{!85, !52, !53}
!86 = !{i8 0, i8 2}
!87 = distinct !{!87, !52, !53}
!88 = !{!77, !36, i64 24}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = !{!61, !41, i64 32}
!97 = !{!63, !41, i64 80}
!98 = !{!42, !42, i64 0}
!99 = !{!100, !36, i64 0}
!100 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = !{!109, !41, i64 4}
!109 = !{!"edge_list", !41, i64 0, !41, i64 4, !36, i64 8}
!110 = !{!109, !36, i64 8}
!111 = !{!112, !41, i64 48}
!112 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!113 = distinct !{!113, !52, !53}
!114 = !{!112, !36, i64 0}
!115 = !{!112, !36, i64 8}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = !{!119, !41, i64 0}
!119 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = !{!61, !41, i64 24}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = !{!130, !41, i64 0}
!130 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = !{}
!137 = distinct !{!137, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = !{!63, !36, i64 8}
!141 = !{i64 0, i64 4, !50, i64 8, i64 8, !35}
!142 = !{i64 0, i64 8, !35}
