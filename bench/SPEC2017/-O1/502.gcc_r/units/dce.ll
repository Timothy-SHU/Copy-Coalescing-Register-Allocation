; ModuleID = 'dce.c'
source_filename = "dce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_link = type { ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.df_byte_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"ud dce\00", align 1
@pass_ud_rtl_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_ud_dce, ptr @rest_of_handle_ud_dce, ptr null, ptr null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@flag_dce = external local_unnamed_addr global i32, align 4
@df_in_progress = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rtl dce\00", align 1
@pass_fast_rtl_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_fast_dce, ptr @rest_of_handle_fast_dce, ptr null, ptr null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"byte-dce\00", align 1
@pass_fast_rtl_byte_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_fast_dce, ptr @rest_of_handle_fast_byte_dce, ptr null, ptr null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@worklist = internal unnamed_addr global ptr null, align 8
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dce_blocks_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@dce_tmp_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@marked = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Finding needed instructions:\0A\00", align 1
@target_flags = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Finished finding needed instructions:\0A\00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dce.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.7 = private unnamed_addr constant [30 x i8] c"  Adding insn %d to worklist\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Processing use of \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" in insn %d:\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"DCE: Deleting insn %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"processing block %d live out = \00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"finished processing insn %d live out = \00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"processing block %d lr out = \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !98 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !99
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !98 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !99
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !98 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !109

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !103
  %11 = load i8, ptr %3, align 1, !tbaa !110
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !98 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !109

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !103
  %11 = load i8, ptr %3, align 1, !tbaa !110
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !98 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !99
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !109

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !103
  %11 = load i8, ptr %3, align 1, !tbaa !110
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !98 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !99
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !98 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !109

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !111
  store i8 %12, ptr %4, align 1, !tbaa !110
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !98 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !109

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !111
  store i8 %12, ptr %4, align 1, !tbaa !110
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !98 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !99
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !109

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !111
  store i8 %12, ptr %4, align 1, !tbaa !110
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !98 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !98 {
  %2 = load i32, ptr %0, align 8, !tbaa !113
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !98 {
  %2 = load i32, ptr %0, align 8, !tbaa !113
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !98 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !114
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !98 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !114
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !98 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !98 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !98 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !98 {
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
  br i1 %23, label %7, label %24, !llvm.loop !115

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !98 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_ud_dce() #9 !prof !118 !PGOFuncName !119 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !114
  %2 = icmp sgt i32 %1, 1
  %3 = load i32, ptr @flag_dce, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !120
  br i1 %5, label %6, label %10, !prof !120

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 7) #16
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_ud_dce() #9 !prof !118 !PGOFuncName !121 {
  %1 = load i1, ptr @df_in_progress, align 1
  br i1 %1, label %3, label %2, !prof !122

2:                                                ; preds = %0
  tail call void @df_chain_add_problem(i32 noundef 2) #16
  tail call void @df_analyze() #16
  br label %3

3:                                                ; preds = %2, %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !123

6:                                                ; preds = %3
  tail call void @df_dump(ptr noundef nonnull %4) #16
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call i32 @get_max_uid() #16
  %9 = add nsw i32 %8, 1
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #16
  store ptr %10, ptr @marked, align 8, !tbaa !99
  tail call void @sbitmap_zero(ptr noundef %10) #16
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 0)
  %11 = load ptr, ptr @cfun, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %63, label %16, !prof !126

16:                                               ; preds = %7, %59
  %17 = phi ptr [ %61, %59 ], [ %14, %7 ]
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !127
  %20 = load ptr, ptr @df, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !129
  %25 = icmp ugt i32 %24, %19
  tail call void @llvm.assume(i1 %25)
  %26 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = zext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !99
  %31 = getelementptr inbounds %struct.df_scan_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !132
  %33 = load ptr, ptr %32, align 8, !tbaa !99
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35, !prof !134

35:                                               ; preds = %16, %55
  %36 = phi ptr [ %57, %55 ], [ %33, %16 ]
  %37 = phi ptr [ %56, %55 ], [ %32, %16 ]
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !110
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41, !prof !135

41:                                               ; preds = %35, %51
  %42 = phi ptr [ %53, %51 ], [ %39, %35 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !136
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %51, label %47, !prof !138

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  %50 = load ptr, ptr %49, align 8, !tbaa !139
  tail call fastcc void @mark_insn(ptr noundef %50, i8 noundef zeroext 0)
  br label %51

51:                                               ; preds = %47, %41
  %52 = getelementptr inbounds %struct.df_link, ptr %42, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !110
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %41, !prof !141, !llvm.loop !142

55:                                               ; preds = %51, %35
  %56 = getelementptr inbounds ptr, ptr %37, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !99
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %35, !prof !143, !llvm.loop !144

59:                                               ; preds = %55, %16
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !99
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %16, !prof !145, !llvm.loop !146

63:                                               ; preds = %59, %7
  br label %64

64:                                               ; preds = %63, %206
  %65 = load ptr, ptr @worklist, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !147

67:                                               ; preds = %64
  %68 = load i32, ptr %65, align 8, !tbaa !148
  br label %69

69:                                               ; preds = %64, %67
  %70 = phi i32 [ %68, %67 ], [ 0, %64 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %207, label %72, !prof !150

72:                                               ; preds = %69
  %73 = load i32, ptr %65, align 8, !tbaa !148
  %74 = add i32 %73, -1
  store i32 %74, ptr %65, align 8, !tbaa !148
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_rtx_base, ptr %65, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !99
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %206, label %81, !prof !151

81:                                               ; preds = %72
  %82 = load ptr, ptr @df, align 8, !tbaa !99
  %83 = getelementptr inbounds %struct.df, ptr %82, i64 0, i32 10
  %84 = load ptr, ptr %83, align 8, !tbaa !152
  %85 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !110
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %84, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !99
  %90 = getelementptr inbounds %struct.df_insn_info, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !155
  %92 = load ptr, ptr %91, align 8, !tbaa !99
  %93 = icmp eq ptr %92, null
  br i1 %93, label %206, label %94, !prof !156

94:                                               ; preds = %81, %202
  %95 = phi ptr [ %204, %202 ], [ %92, %81 ]
  %96 = phi ptr [ %203, %202 ], [ %91, %81 ]
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99, !prof !157

99:                                               ; preds = %94
  %100 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr nonnull %97)
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %102 = getelementptr inbounds %struct.df_base_ref, ptr %95, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !110
  tail call void @print_simple_rtl(ptr noundef %101, ptr noundef %103) #16
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %105 = load i32, ptr %85, align 8, !tbaa !110
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.9, i32 noundef %105)
  br label %107

107:                                              ; preds = %99, %94
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %95, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !110
  %110 = icmp eq ptr %109, null
  br i1 %110, label %202, label %111, !prof !158

111:                                              ; preds = %107, %198
  %112 = phi ptr [ %200, %198 ], [ %109, %107 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !136
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 255
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %198, label %117, !prof !159

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.df_base_ref, ptr %113, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !110
  %120 = load ptr, ptr %119, align 8, !tbaa !139
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123, !prof !160

122:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 159, ptr noundef nonnull @.str.6) #16
  br label %123

123:                                              ; preds = %122, %117
  %124 = load ptr, ptr @marked, align 8, !tbaa !99
  %125 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %126 = load i32, ptr %125, align 8, !tbaa !110
  %127 = lshr i32 %126, 6
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds %struct.simple_bitmap_def, ptr %124, i64 0, i32 3, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !161
  %131 = and i32 %126, 63
  %132 = zext nneg i32 %131 to i64
  %133 = shl nuw i64 1, %132
  %134 = and i64 %133, %130
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %198, !prof !162

136:                                              ; preds = %123
  %137 = load ptr, ptr @worklist, align 8, !tbaa !99
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139, !prof !163

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.VEC_rtx_base, ptr %137, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !164
  %142 = load i32, ptr %137, align 8, !tbaa !148
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146, !prof !165

144:                                              ; preds = %139, %136
  %145 = tail call ptr @vec_heap_p_reserve(ptr noundef %137, i32 noundef 1) #16
  store ptr %145, ptr @worklist, align 8, !tbaa !99
  br label %146

146:                                              ; preds = %144, %139
  %147 = load ptr, ptr @worklist, align 8, !tbaa !99
  %148 = load i32, ptr %147, align 8, !tbaa !148
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 8, !tbaa !148
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds %struct.VEC_rtx_base, ptr %147, i64 0, i32 2, i64 %150
  store ptr %120, ptr %151, align 8, !tbaa !99
  %152 = load ptr, ptr @marked, align 8, !tbaa !99
  %153 = load i32, ptr %125, align 8, !tbaa !110
  %154 = load ptr, ptr %152, align 8, !tbaa !166
  %155 = icmp eq ptr %154, null
  br i1 %155, label %170, label %156, !prof !168

156:                                              ; preds = %146
  %157 = lshr i32 %153, 6
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds %struct.simple_bitmap_def, ptr %152, i64 0, i32 3, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !161
  %161 = and i32 %153, 63
  %162 = zext nneg i32 %161 to i64
  %163 = shl nuw i64 1, %162
  %164 = and i64 %160, %163
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %156
  %167 = getelementptr inbounds i8, ptr %154, i64 %158
  %168 = load i8, ptr %167, align 1, !tbaa !110
  %169 = add i8 %168, 1
  store i8 %169, ptr %167, align 1, !tbaa !110
  br label %170

170:                                              ; preds = %166, %156, %146
  %171 = and i32 %153, 63
  %172 = zext nneg i32 %171 to i64
  %173 = shl nuw i64 1, %172
  %174 = lshr i32 %153, 6
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds %struct.simple_bitmap_def, ptr %152, i64 0, i32 3, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !161
  %178 = or i64 %177, %173
  store i64 %178, ptr %176, align 8, !tbaa !161
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181, !prof !168

181:                                              ; preds = %170
  %182 = load i32, ptr %125, align 8, !tbaa !110
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %179, ptr noundef nonnull @.str.7, i32 noundef %182)
  br label %184

184:                                              ; preds = %181, %170
  %185 = load i32, ptr %120, align 8
  %186 = load i1, ptr @df_in_progress, align 1
  %187 = and i32 %185, 16842751
  %188 = icmp ne i32 %187, 10
  %189 = select i1 %188, i1 true, i1 %186, !prof !169
  br i1 %189, label %198, label %190, !prof !170

190:                                              ; preds = %184
  %191 = and i32 %185, -2080374784
  %192 = icmp ne i32 %191, 0
  %193 = and i32 %185, 33554432
  %194 = icmp eq i32 %193, 0
  %195 = and i1 %192, %194
  br i1 %195, label %196, label %198, !prof !171

196:                                              ; preds = %190
  %197 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %120, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #17
  br label %198

198:                                              ; preds = %196, %190, %184, %123, %111
  %199 = getelementptr inbounds %struct.df_link, ptr %112, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !110
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %111, !prof !172, !llvm.loop !173

202:                                              ; preds = %198, %107
  %203 = getelementptr inbounds ptr, ptr %96, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !99
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %94, !prof !157, !llvm.loop !174

206:                                              ; preds = %202, %81, %72
  br label %64, !llvm.loop !175

207:                                              ; preds = %69
  br i1 %66, label %209, label %208, !prof !176

208:                                              ; preds = %207
  tail call void @free(ptr noundef %65)
  br label %209

209:                                              ; preds = %207, %208
  store ptr null, ptr @worklist, align 8, !tbaa !99
  %210 = load ptr, ptr @df, align 8, !tbaa !99
  %211 = getelementptr inbounds %struct.df, ptr %210, i64 0, i32 1, i64 4
  %212 = load ptr, ptr %211, align 8, !tbaa !99
  tail call void @df_remove_problem(ptr noundef %212) #16
  tail call fastcc void @delete_unmarked_insns()
  %213 = load ptr, ptr @marked, align 8, !tbaa !99
  %214 = load ptr, ptr %213, align 8, !tbaa !166
  tail call void @free(ptr noundef %214)
  tail call void @free(ptr noundef %213)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @run_fast_df_dce() local_unnamed_addr #9 !prof !177 {
  %1 = load i32, ptr @flag_dce, align 4, !tbaa !114
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3, !prof !178

3:                                                ; preds = %0
  %4 = tail call i32 @df_clear_flags(i32 noundef 48) #16
  store i1 true, ptr @df_in_progress, align 1
  tail call fastcc void @init_dce(i8 noundef zeroext 1)
  tail call fastcc void @fast_dce(i8 noundef zeroext 0)
  %5 = load ptr, ptr @marked, align 8, !tbaa !99
  %6 = load ptr, ptr %5, align 8, !tbaa !166
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %5)
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_tmp_bitmap_obstack) #16
  store i1 false, ptr @df_in_progress, align 1
  %7 = tail call i32 @df_set_flags(i32 noundef %4) #16
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_fast_dce() #9 !prof !118 !PGOFuncName !179 {
  tail call fastcc void @init_dce(i8 noundef zeroext 1)
  tail call fastcc void @fast_dce(i8 noundef zeroext 0)
  %1 = load ptr, ptr @marked, align 8, !tbaa !99
  %2 = load ptr, ptr %1, align 8, !tbaa !166
  tail call void @free(ptr noundef %2)
  tail call void @free(ptr noundef %1)
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_tmp_bitmap_obstack) #16
  ret i32 0
}

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @run_fast_dce() local_unnamed_addr #9 !prof !180 {
  %1 = load i32, ptr @flag_dce, align 4, !tbaa !114
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3, !prof !181

3:                                                ; preds = %0
  tail call fastcc void @init_dce(i8 noundef zeroext 1)
  tail call fastcc void @fast_dce(i8 noundef zeroext 0)
  %4 = load ptr, ptr @marked, align 8, !tbaa !99
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %4)
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_tmp_bitmap_obstack) #16
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_fast_dce() #9 !prof !118 !PGOFuncName !182 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !114
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dce, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !120
  br i1 %5, label %6, label %10, !prof !120

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 6) #16
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_fast_byte_dce() #10 !prof !98 {
  tail call void @df_byte_lr_add_problem() #16
  tail call fastcc void @init_dce(i8 noundef zeroext 1)
  tail call fastcc void @fast_dce(i8 noundef zeroext 1)
  tail call fastcc void @fini_dce(i8 noundef zeroext 1)
  ret i32 0
}

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_dce(i8 noundef zeroext %0) unnamed_addr #9 !prof !183 !PGOFuncName !184 {
  %2 = load i1, ptr @df_in_progress, align 1
  br i1 %2, label %7, label %3, !prof !122

3:                                                ; preds = %1
  %4 = icmp eq i8 %0, 0
  br i1 %4, label %5, label %6, !prof !185

5:                                                ; preds = %3
  tail call void @df_chain_add_problem(i32 noundef 2) #16
  br label %6

6:                                                ; preds = %5, %3
  tail call void @df_analyze() #16
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !123

10:                                               ; preds = %7
  tail call void @df_dump(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %7
  %12 = icmp eq i8 %0, 0
  br i1 %12, label %14, label %13, !prof !186

13:                                               ; preds = %11
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @dce_tmp_bitmap_obstack) #16
  br label %14

14:                                               ; preds = %13, %11
  %15 = tail call i32 @get_max_uid() #16
  %16 = add nsw i32 %15, 1
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %16) #16
  store ptr %17, ptr @marked, align 8, !tbaa !99
  tail call void @sbitmap_zero(ptr noundef %17) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @prescan_insns_for_dce(i8 noundef zeroext %0) unnamed_addr #9 !prof !187 !PGOFuncName !188 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !123

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %1
  %7 = load i1, ptr @df_in_progress, align 1
  br i1 %7, label %17, label %8, !prof !122

8:                                                ; preds = %6
  %9 = load i32, ptr @target_flags, align 4, !tbaa !114
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !prof !189

12:                                               ; preds = %8
  %13 = tail call i32 @ix86_cfun_abi() #16
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %8
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  br label %17

17:                                               ; preds = %15, %12, %6
  %18 = phi ptr [ null, %6 ], [ %16, %15 ], [ null, %12 ]
  %19 = load ptr, ptr @cfun, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !192
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !193
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %238, label %28, !prof !194

28:                                               ; preds = %17
  %29 = icmp eq ptr %18, null
  %30 = icmp eq i8 %0, 0
  %31 = icmp eq i8 %0, 0
  %32 = icmp eq ptr %18, null
  br label %33

33:                                               ; preds = %28, %229
  %34 = phi ptr [ %24, %28 ], [ %231, %229 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !110
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !195
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !197

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !110
  br label %43

43:                                               ; preds = %33, %40
  %44 = phi ptr [ %42, %40 ], [ null, %33 ]
  %45 = icmp eq ptr %38, null
  br i1 %45, label %227, label %46, !prof !198

46:                                               ; preds = %43, %224
  %47 = phi ptr [ %225, %224 ], [ %44, %43 ]
  %48 = phi ptr [ %47, %224 ], [ %38, %43 ]
  %49 = load ptr, ptr %35, align 8, !tbaa !110
  %50 = load ptr, ptr %49, align 8, !tbaa !199
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !110
  %53 = icmp eq ptr %48, %52
  br i1 %53, label %227, label %54, !prof !200

54:                                               ; preds = %46
  %55 = load i32, ptr %48, align 8
  %56 = and i32 %55, 65535
  %57 = add nsw i32 %56, -7
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %59, label %219, !prof !201

59:                                               ; preds = %54
  br i1 %29, label %65, label %60, !prof !202

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !110
  %63 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %18, i32 noundef %62) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %219, !prof !203

65:                                               ; preds = %60, %59
  %66 = load i32, ptr %48, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %134, !prof !204

69:                                               ; preds = %65
  %70 = tail call zeroext i8 @insn_nothrow_p(ptr noundef nonnull %48) #16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %134, label %72, !prof !205

72:                                               ; preds = %69
  %73 = load i32, ptr %48, align 8
  %74 = load i1, ptr @df_in_progress, align 1
  %75 = and i32 %73, 16842751
  %76 = icmp ne i32 %75, 10
  %77 = select i1 %76, i1 true, i1 %74, !prof !206
  br i1 %77, label %86, label %78, !prof !206

78:                                               ; preds = %72
  %79 = and i32 %73, -2080374784
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %73, 33554432
  %82 = icmp eq i32 %81, 0
  %83 = and i1 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %48, i8 noundef zeroext 0, i8 noundef zeroext %0, ptr noundef %18) #17
  br label %134

86:                                               ; preds = %78, %72
  %87 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !110
  %89 = load i32, ptr %88, align 8
  %90 = trunc i32 %89 to i16
  switch i16 %90, label %130 [
    i16 24, label %134
    i16 138, label %134
    i16 25, label %91
    i16 15, label %107
    i16 22, label %134
    i16 29, label %134
    i16 18, label %134
  ], !prof !207

91:                                               ; preds = %86
  %92 = icmp eq i8 %0, 0
  br i1 %92, label %134, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !110
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %134

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !110
  %102 = icmp ugt i32 %101, 52
  %103 = load i32, ptr @reload_completed, align 4
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  %106 = zext i1 %105 to i8
  br label %134

107:                                              ; preds = %86
  %108 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !110
  %110 = load i32, ptr %109, align 8, !tbaa !208
  %111 = zext i32 %110 to i64
  br label %112

112:                                              ; preds = %127, %107
  %113 = phi i64 [ %114, %127 ], [ %111, %107 ]
  %114 = add nsw i64 %113, -1
  %115 = trunc i64 %113 to i32
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %134, !prof !210

117:                                              ; preds = %112
  %118 = load ptr, ptr %108, align 8, !tbaa !110
  %119 = getelementptr inbounds %struct.rtvec_def, ptr %118, i64 0, i32 1, i64 %114
  %120 = load ptr, ptr %119, align 8, !tbaa !99
  %121 = load i32, ptr %120, align 8
  %122 = trunc i32 %121 to i16
  switch i16 %122, label %123 [
    i16 22, label %127
    i16 29, label %127
    i16 18, label %127
  ], !prof !211

123:                                              ; preds = %117
  %124 = tail call i32 @volatile_refs_p(ptr noundef nonnull %120) #16
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i8
  br label %127

127:                                              ; preds = %123, %117, %117, %117
  %128 = phi i8 [ %126, %123 ], [ 0, %117 ], [ 0, %117 ], [ 0, %117 ]
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %134, label %112, !prof !212, !llvm.loop !213

130:                                              ; preds = %86
  %131 = tail call i32 @volatile_refs_p(ptr noundef nonnull %88) #16
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i8
  br label %134

134:                                              ; preds = %112, %127, %65, %69, %84, %86, %86, %86, %86, %86, %91, %93, %99, %130
  %135 = phi i8 [ %85, %84 ], [ 0, %65 ], [ 0, %69 ], [ 0, %93 ], [ %106, %99 ], [ 0, %91 ], [ %133, %130 ], [ 0, %86 ], [ 0, %86 ], [ 0, %86 ], [ 0, %86 ], [ 0, %86 ], [ 1, %112 ], [ 0, %127 ]
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %142, label %137, !prof !214

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !110
  br i1 %30, label %141, label %140, !prof !215

140:                                              ; preds = %137
  tail call void @note_stores(ptr noundef %139, ptr noundef nonnull @mark_nonreg_stores_1, ptr noundef nonnull %48) #16
  br label %219

141:                                              ; preds = %137
  tail call void @note_stores(ptr noundef %139, ptr noundef nonnull @mark_nonreg_stores_2, ptr noundef nonnull %48) #16
  br label %219

142:                                              ; preds = %134
  %143 = load ptr, ptr @marked, align 8, !tbaa !99
  %144 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !110
  %146 = lshr i32 %145, 6
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds %struct.simple_bitmap_def, ptr %143, i64 0, i32 3, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !161
  %150 = and i32 %145, 63
  %151 = zext nneg i32 %150 to i64
  %152 = shl nuw i64 1, %151
  %153 = and i64 %152, %149
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %219, !prof !162

155:                                              ; preds = %142
  br i1 %31, label %156, label %172, !prof !216

156:                                              ; preds = %155
  %157 = load ptr, ptr @worklist, align 8, !tbaa !99
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159, !prof !163

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.VEC_rtx_base, ptr %157, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !164
  %162 = load i32, ptr %157, align 8, !tbaa !148
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166, !prof !165

164:                                              ; preds = %159, %156
  %165 = tail call ptr @vec_heap_p_reserve(ptr noundef %157, i32 noundef 1) #16
  store ptr %165, ptr @worklist, align 8, !tbaa !99
  br label %166

166:                                              ; preds = %164, %159
  %167 = load ptr, ptr @worklist, align 8, !tbaa !99
  %168 = load i32, ptr %167, align 8, !tbaa !148
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 8, !tbaa !148
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds %struct.VEC_rtx_base, ptr %167, i64 0, i32 2, i64 %170
  store ptr %48, ptr %171, align 8, !tbaa !99
  br label %172

172:                                              ; preds = %166, %155
  %173 = load ptr, ptr @marked, align 8, !tbaa !99
  %174 = load i32, ptr %144, align 8, !tbaa !110
  %175 = load ptr, ptr %173, align 8, !tbaa !166
  %176 = icmp eq ptr %175, null
  br i1 %176, label %191, label %177, !prof !168

177:                                              ; preds = %172
  %178 = lshr i32 %174, 6
  %179 = zext nneg i32 %178 to i64
  %180 = getelementptr inbounds %struct.simple_bitmap_def, ptr %173, i64 0, i32 3, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !161
  %182 = and i32 %174, 63
  %183 = zext nneg i32 %182 to i64
  %184 = shl nuw i64 1, %183
  %185 = and i64 %181, %184
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %177
  %188 = getelementptr inbounds i8, ptr %175, i64 %179
  %189 = load i8, ptr %188, align 1, !tbaa !110
  %190 = add i8 %189, 1
  store i8 %190, ptr %188, align 1, !tbaa !110
  br label %191

191:                                              ; preds = %187, %177, %172
  %192 = and i32 %174, 63
  %193 = zext nneg i32 %192 to i64
  %194 = shl nuw i64 1, %193
  %195 = lshr i32 %174, 6
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds %struct.simple_bitmap_def, ptr %173, i64 0, i32 3, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !161
  %199 = or i64 %198, %194
  store i64 %199, ptr %197, align 8, !tbaa !161
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202, !prof !168

202:                                              ; preds = %191
  %203 = load i32, ptr %144, align 8, !tbaa !110
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %200, ptr noundef nonnull @.str.7, i32 noundef %203)
  br label %205

205:                                              ; preds = %202, %191
  %206 = load i32, ptr %48, align 8
  %207 = load i1, ptr @df_in_progress, align 1
  %208 = and i32 %206, 16842751
  %209 = icmp ne i32 %208, 10
  %210 = select i1 %209, i1 true, i1 %207, !prof !169
  br i1 %210, label %219, label %211, !prof !170

211:                                              ; preds = %205
  %212 = and i32 %206, -2080374784
  %213 = icmp ne i32 %212, 0
  %214 = and i32 %206, 33554432
  %215 = icmp eq i32 %214, 0
  %216 = and i1 %213, %215
  br i1 %216, label %217, label %219, !prof !171

217:                                              ; preds = %211
  %218 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %48, i8 noundef zeroext 1, i8 noundef zeroext %0, ptr noundef null) #17
  br label %219

219:                                              ; preds = %217, %211, %205, %142, %141, %140, %54, %60
  %220 = icmp eq ptr %47, null
  br i1 %220, label %224, label %221, !prof !217

221:                                              ; preds = %219
  %222 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !110
  br label %224

224:                                              ; preds = %219, %221
  %225 = phi ptr [ %223, %221 ], [ null, %219 ]
  %226 = icmp eq ptr %47, null
  br i1 %226, label %227, label %46, !prof !218, !llvm.loop !219

227:                                              ; preds = %46, %224, %43
  br i1 %32, label %229, label %228, !prof !220

228:                                              ; preds = %227
  tail call void @bitmap_clear(ptr noundef nonnull %18) #16
  br label %229

229:                                              ; preds = %227, %228
  %230 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %231 = load ptr, ptr %230, align 8, !tbaa !192
  %232 = load ptr, ptr @cfun, align 8, !tbaa !99
  %233 = getelementptr inbounds %struct.function, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !124
  %235 = getelementptr inbounds %struct.control_flow_graph, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !193
  %237 = icmp eq ptr %231, %236
  br i1 %237, label %238, label %33, !prof !221, !llvm.loop !222

238:                                              ; preds = %229, %17
  %239 = icmp eq ptr %18, null
  br i1 %239, label %241, label %240, !prof !122

240:                                              ; preds = %238
  tail call void @bitmap_obstack_free(ptr noundef nonnull %18) #16
  br label %241

241:                                              ; preds = %240, %238
  %242 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %243 = icmp eq ptr %242, null
  br i1 %243, label %246, label %244, !prof !123

244:                                              ; preds = %241
  %245 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 38, i64 1, ptr nonnull %242)
  br label %246

246:                                              ; preds = %244, %241
  ret void
}

declare void @df_remove_problem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_unmarked_insns() unnamed_addr #9 !prof !187 !PGOFuncName !223 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !99
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !224
  %8 = load ptr, ptr @cfun, align 8, !tbaa !99
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %146, label %13, !prof !194

13:                                               ; preds = %0, %133
  %14 = phi ptr [ %136, %133 ], [ %7, %0 ]
  %15 = phi i8 [ %134, %133 ], [ 0, %0 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !195
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !197

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi ptr [ %23, %21 ], [ null, %13 ]
  %26 = icmp eq ptr %19, null
  br i1 %26, label %133, label %27, !prof !198

27:                                               ; preds = %24, %130
  %28 = phi i8 [ %125, %130 ], [ %15, %24 ]
  %29 = phi ptr [ %131, %130 ], [ %25, %24 ]
  %30 = phi ptr [ %29, %130 ], [ %19, %24 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !110
  %32 = load ptr, ptr %31, align 8, !tbaa !199
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %133, label %36, !prof !200

36:                                               ; preds = %27
  %37 = load i32, ptr %30, align 8
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -7
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %124, !prof !201

41:                                               ; preds = %36
  %42 = tail call i32 @noop_move_p(ptr noundef nonnull %30) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57, !prof !225

44:                                               ; preds = %41
  %45 = load ptr, ptr @marked, align 8, !tbaa !99
  %46 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !110
  %48 = lshr i32 %47, 6
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 3, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !161
  %52 = and i32 %47, 63
  %53 = zext nneg i32 %52 to i64
  %54 = shl nuw i64 1, %53
  %55 = and i64 %54, %51
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %124, !prof !226

57:                                               ; preds = %44, %41
  %58 = tail call zeroext i8 @dbg_cnt(i32 noundef 5) #16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %124, label %60, !prof !227

60:                                               ; preds = %57
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63, !prof !228

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !110
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %61, ptr noundef nonnull @.str.10, i32 noundef %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load ptr, ptr @df, align 8, !tbaa !99
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !152
  %71 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !110
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %70, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !99
  %76 = getelementptr inbounds %struct.df_insn_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !229
  %78 = load ptr, ptr %77, align 8, !tbaa !99
  %79 = icmp eq ptr %78, null
  br i1 %79, label %118, label %80, !prof !230

80:                                               ; preds = %67, %114
  %81 = phi ptr [ %116, %114 ], [ %78, %67 ]
  %82 = phi ptr [ %115, %114 ], [ %77, %67 ]
  %83 = getelementptr inbounds %struct.df_base_ref, ptr %81, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !110
  %85 = zext i32 %84 to i64
  %86 = load ptr, ptr @df, align 8, !tbaa !99
  %87 = getelementptr inbounds %struct.df, ptr %86, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !231
  %89 = getelementptr inbounds ptr, ptr %88, i64 %85
  %90 = load ptr, ptr %89, align 8, !tbaa !99
  %91 = load ptr, ptr %90, align 8, !tbaa !232
  %92 = icmp eq ptr %91, null
  br i1 %92, label %114, label %93, !prof !234

93:                                               ; preds = %80, %106
  %94 = phi ptr [ %112, %106 ], [ %91, %80 ]
  %95 = getelementptr inbounds %struct.df_base_ref, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !110
  %97 = load ptr, ptr %96, align 8, !tbaa !139
  %98 = tail call ptr @find_reg_note(ptr noundef %97, i32 noundef 4, ptr noundef null) #16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = tail call ptr @find_reg_note(ptr noundef %97, i32 noundef 3, ptr noundef null) #16
  br label %102

102:                                              ; preds = %100, %93
  %103 = phi ptr [ %98, %93 ], [ %101, %100 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 494, ptr noundef nonnull @.str.6) #16
  br label %106

106:                                              ; preds = %105, %102
  tail call void @remove_note(ptr noundef %97, ptr noundef %103) #16
  %107 = load ptr, ptr @df, align 8, !tbaa !99
  %108 = getelementptr inbounds %struct.df, ptr %107, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !231
  %110 = getelementptr inbounds ptr, ptr %109, i64 %85
  %111 = load ptr, ptr %110, align 8, !tbaa !99
  %112 = load ptr, ptr %111, align 8, !tbaa !232
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %93, !prof !234, !llvm.loop !235

114:                                              ; preds = %106, %80
  %115 = getelementptr inbounds ptr, ptr %82, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !99
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %80, !prof !236, !llvm.loop !237

118:                                              ; preds = %114, %67
  %119 = load i32, ptr %30, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 10
  %122 = select i1 %121, i8 1, i8 %28, !prof !227
  %123 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %30) #16
  br label %124

124:                                              ; preds = %36, %118, %57, %44
  %125 = phi i8 [ %122, %118 ], [ %28, %57 ], [ %28, %44 ], [ %28, %36 ]
  %126 = icmp eq ptr %29, null
  br i1 %126, label %130, label %127, !prof !217

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !110
  br label %130

130:                                              ; preds = %124, %127
  %131 = phi ptr [ %129, %127 ], [ null, %124 ]
  %132 = icmp eq ptr %29, null
  br i1 %132, label %133, label %27, !prof !218, !llvm.loop !238

133:                                              ; preds = %130, %27, %24
  %134 = phi i8 [ %15, %24 ], [ %125, %130 ], [ %28, %27 ]
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !224
  %137 = load ptr, ptr @cfun, align 8, !tbaa !99
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !124
  %140 = load ptr, ptr %139, align 8, !tbaa !190
  %141 = icmp eq ptr %136, %140
  br i1 %141, label %142, label %13, !prof !221, !llvm.loop !239

142:                                              ; preds = %133
  %143 = icmp eq i8 %134, 0
  br i1 %143, label %146, label %144, !prof !123

144:                                              ; preds = %142
  %145 = tail call zeroext i8 @delete_unreachable_blocks() #16
  br label %146

146:                                              ; preds = %0, %144, %142
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fini_dce(i8 noundef zeroext %0) unnamed_addr #9 !prof !98 !PGOFuncName !240 {
  %2 = load ptr, ptr @marked, align 8, !tbaa !99
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %2)
  %4 = icmp eq i8 %0, 0
  br i1 %4, label %6, label %5, !prof !241

5:                                                ; preds = %1
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_tmp_bitmap_obstack) #16
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare void @df_dump(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare i32 @get_max_uid() local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @ix86_cfun_abi() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @deletable_insn_p(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #11 !prof !242 !PGOFuncName !243 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %73, !prof !204

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @insn_nothrow_p(ptr noundef nonnull %0) #16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %73, label %10, !prof !205

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 8
  %12 = load i1, ptr @df_in_progress, align 1
  %13 = and i32 %11, 16842751
  %14 = icmp ne i32 %13, 10
  %15 = select i1 %14, i1 true, i1 %12, !prof !206
  br i1 %15, label %24, label %16, !prof !206

16:                                               ; preds = %10
  %17 = and i32 %11, -2080374784
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %11, 33554432
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %1, ptr noundef %2)
  br label %73

24:                                               ; preds = %16, %10
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %69 [
    i16 24, label %73
    i16 138, label %73
    i16 25, label %29
    i16 15, label %45
    i16 22, label %73
    i16 29, label %73
    i16 18, label %73
  ], !prof !207

29:                                               ; preds = %24
  %30 = icmp eq i8 %1, 0
  br i1 %30, label %73, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %73

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !110
  %40 = icmp ugt i32 %39, 52
  %41 = load i32, ptr @reload_completed, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  %44 = zext i1 %43 to i8
  br label %73

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !110
  %48 = load i32, ptr %47, align 8, !tbaa !208
  %49 = zext i32 %48 to i64
  br label %50

50:                                               ; preds = %66, %45
  %51 = phi i64 [ %52, %66 ], [ %49, %45 ]
  %52 = add nsw i64 %51, -1
  %53 = trunc i64 %51 to i32
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %73, !prof !210

55:                                               ; preds = %50
  %56 = add nsw i64 %51, -1
  %57 = load ptr, ptr %46, align 8, !tbaa !110
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  switch i16 %61, label %62 [
    i16 22, label %66
    i16 29, label %66
    i16 18, label %66
  ], !prof !211

62:                                               ; preds = %55
  %63 = tail call i32 @volatile_refs_p(ptr noundef nonnull %59) #16
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %55, %55, %55, %62
  %67 = phi i8 [ %65, %62 ], [ 0, %55 ], [ 0, %55 ], [ 0, %55 ]
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %50, !prof !212, !llvm.loop !213

69:                                               ; preds = %24
  %70 = tail call i32 @volatile_refs_p(ptr noundef nonnull %26) #16
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %66, %50, %24, %24, %24, %24, %69, %24, %29, %31, %37, %7, %3, %22
  %74 = phi i8 [ %23, %22 ], [ 0, %3 ], [ 0, %7 ], [ 0, %31 ], [ %44, %37 ], [ 0, %29 ], [ %72, %69 ], [ 0, %24 ], [ 0, %24 ], [ 0, %24 ], [ 0, %24 ], [ 0, %24 ], [ 1, %50 ], [ 0, %66 ]
  ret i8 %74
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_insn(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #11 !prof !244 !PGOFuncName !245 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !160

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 159, ptr noundef nonnull @.str.6) #16
  br label %5

5:                                                ; preds = %2, %4
  %6 = load ptr, ptr @marked, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !110
  %9 = lshr i32 %8, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !161
  %13 = and i32 %8, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %12
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %83, !prof !162

18:                                               ; preds = %5
  %19 = icmp eq i8 %1, 0
  br i1 %19, label %20, label %36, !prof !216

20:                                               ; preds = %18
  %21 = load ptr, ptr @worklist, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !163

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.VEC_rtx_base, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !164
  %26 = load i32, ptr %21, align 8, !tbaa !148
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30, !prof !165

28:                                               ; preds = %20, %23
  %29 = tail call ptr @vec_heap_p_reserve(ptr noundef %21, i32 noundef 1) #16
  store ptr %29, ptr @worklist, align 8, !tbaa !99
  br label %30

30:                                               ; preds = %23, %28
  %31 = load ptr, ptr @worklist, align 8, !tbaa !99
  %32 = load i32, ptr %31, align 8, !tbaa !148
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !148
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_rtx_base, ptr %31, i64 0, i32 2, i64 %34
  store ptr %0, ptr %35, align 8, !tbaa !99
  br label %36

36:                                               ; preds = %30, %18
  %37 = load ptr, ptr @marked, align 8, !tbaa !99
  %38 = load i32, ptr %7, align 8, !tbaa !110
  %39 = load ptr, ptr %37, align 8, !tbaa !166
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41, !prof !168

41:                                               ; preds = %36
  %42 = lshr i32 %38, 6
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !161
  %46 = and i32 %38, 63
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %45, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = getelementptr inbounds i8, ptr %39, i64 %43
  %53 = load i8, ptr %52, align 1, !tbaa !110
  %54 = add i8 %53, 1
  store i8 %54, ptr %52, align 1, !tbaa !110
  br label %55

55:                                               ; preds = %36, %41, %51
  %56 = and i32 %38, 63
  %57 = zext nneg i32 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = lshr i32 %38, 6
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !161
  %63 = or i64 %62, %58
  store i64 %63, ptr %61, align 8, !tbaa !161
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66, !prof !168

66:                                               ; preds = %55
  %67 = load i32, ptr %7, align 8, !tbaa !110
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.7, i32 noundef %67)
  br label %69

69:                                               ; preds = %66, %55
  %70 = load i32, ptr %0, align 8
  %71 = load i1, ptr @df_in_progress, align 1
  %72 = and i32 %70, 16842751
  %73 = icmp ne i32 %72, 10
  %74 = select i1 %73, i1 true, i1 %71, !prof !169
  br i1 %74, label %83, label %75, !prof !170

75:                                               ; preds = %69
  %76 = and i32 %70, -2080374784
  %77 = icmp ne i32 %76, 0
  %78 = and i32 %70, 33554432
  %79 = icmp eq i32 %78, 0
  %80 = and i1 %77, %79
  br i1 %80, label %81, label %83, !prof !171

81:                                               ; preds = %75
  %82 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext %1, ptr noundef null)
  br label %83

83:                                               ; preds = %75, %69, %81, %5
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @insn_nothrow_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @find_call_stack_args(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #10 !prof !98 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 237, ptr noundef nonnull @.str.6) #16
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @target_flags, align 4, !tbaa !114
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @ix86_cfun_abi() #16
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %571

16:                                               ; preds = %13, %9
  %17 = icmp eq i8 %1, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = icmp eq ptr %3, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 243, ptr noundef nonnull @.str.6) #16
  br label %21

21:                                               ; preds = %18, %20
  tail call void @bitmap_clear(ptr noundef %3) #16
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  %26 = icmp eq ptr %25, null
  br i1 %26, label %196, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8 %2, 0
  br label %29

29:                                               ; preds = %27, %190
  %30 = phi ptr [ %25, %27 ], [ %194, %190 ]
  %31 = phi i64 [ 9223372036854775807, %27 ], [ %192, %190 ]
  %32 = phi i64 [ 0, %27 ], [ %191, %190 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 24
  br i1 %37, label %38, label %190

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !110
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %44, label %190

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !110
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mem_attrs, ptr %47, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !246
  br label %62

52:                                               ; preds = %44
  %53 = lshr i32 %41, 16
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = zext nneg i32 %54 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !110
  %60 = zext i8 %59 to i64
  %61 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %60) #16
  br label %62

62:                                               ; preds = %56, %52, %49
  %63 = phi ptr [ %51, %49 ], [ %61, %56 ], [ null, %52 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %186, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %45, align 8, !tbaa !110
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 49
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !110
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !110
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 30
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !110
  br label %85

85:                                               ; preds = %82, %76, %70, %65
  %86 = phi ptr [ %72, %82 ], [ %66, %76 ], [ %66, %70 ], [ %66, %65 ]
  %87 = phi i64 [ %84, %82 ], [ 0, %76 ], [ 0, %70 ], [ 0, %65 ]
  %88 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !99
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %179, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %86, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  %94 = and i1 %28, %93
  br i1 %94, label %95, label %186

95:                                               ; preds = %90
  %96 = load ptr, ptr @df, align 8, !tbaa !99
  %97 = getelementptr inbounds %struct.df, ptr %96, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !152
  %99 = load i32, ptr %23, align 8, !tbaa !110
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !99
  %103 = getelementptr inbounds %struct.df_insn_info, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !155
  %105 = load ptr, ptr %104, align 8, !tbaa !99
  %106 = icmp eq ptr %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %95, %114
  %108 = phi ptr [ %116, %114 ], [ %105, %95 ]
  %109 = phi ptr [ %115, %114 ], [ %104, %95 ]
  %110 = getelementptr inbounds %struct.df_base_ref, ptr %108, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !110
  %112 = tail call i32 @rtx_equal_p(ptr noundef nonnull %86, ptr noundef %111) #16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = getelementptr inbounds ptr, ptr %109, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !99
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %107, !llvm.loop !248

118:                                              ; preds = %114, %107, %95
  %119 = phi ptr [ %104, %95 ], [ %115, %114 ], [ %109, %107 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !99
  %121 = icmp eq ptr %120, null
  br i1 %121, label %176, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.df_base_ref, ptr %120, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !110
  %125 = icmp eq ptr %124, null
  br i1 %125, label %176, label %130

126:                                              ; preds = %130
  %127 = getelementptr inbounds %struct.df_link, ptr %131, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !110
  %129 = icmp eq ptr %128, null
  br i1 %129, label %176, label %130, !llvm.loop !249

130:                                              ; preds = %122, %126
  %131 = phi ptr [ %128, %126 ], [ %124, %122 ]
  %132 = load ptr, ptr %131, align 8, !tbaa !136
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 255
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %126, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.df_base_ref, ptr %132, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !110
  %139 = load ptr, ptr %138, align 8, !tbaa !139
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = add nsw i32 %141, -7
  %143 = icmp ult i32 %142, 4
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !110
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 23
  br i1 %149, label %152, label %150

150:                                              ; preds = %144
  %151 = tail call ptr @single_set_2(ptr noundef nonnull %139, ptr noundef nonnull %146) #16
  br label %152

152:                                              ; preds = %136, %144, %150
  %153 = phi ptr [ %151, %150 ], [ null, %136 ], [ %146, %144 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %176, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !110
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 49
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !110
  %164 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !99
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !110
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 30
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %174 = load i64, ptr %173, align 8, !tbaa !110
  %175 = add nsw i64 %174, %87
  br label %176

176:                                              ; preds = %126, %122, %155, %161, %166, %152, %118, %172
  %177 = phi i1 [ true, %172 ], [ false, %118 ], [ false, %152 ], [ false, %166 ], [ false, %161 ], [ false, %155 ], [ false, %122 ], [ false, %126 ]
  %178 = phi i64 [ %175, %172 ], [ %87, %118 ], [ %87, %152 ], [ %87, %166 ], [ %87, %161 ], [ %87, %155 ], [ %87, %122 ], [ %87, %126 ]
  br i1 %177, label %179, label %186

179:                                              ; preds = %176, %85
  %180 = phi i64 [ %178, %176 ], [ %87, %85 ]
  %181 = tail call i64 @llvm.smin.i64(i64 %31, i64 %180)
  %182 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !110
  %184 = add nsw i64 %183, %180
  %185 = tail call i64 @llvm.smax.i64(i64 %32, i64 %184)
  br label %186

186:                                              ; preds = %90, %62, %176, %179
  %187 = phi i1 [ true, %179 ], [ false, %176 ], [ false, %62 ], [ false, %90 ]
  %188 = phi i64 [ %185, %179 ], [ %32, %176 ], [ %32, %62 ], [ %32, %90 ]
  %189 = phi i64 [ %181, %179 ], [ %31, %176 ], [ %31, %62 ], [ %31, %90 ]
  br i1 %187, label %190, label %571

190:                                              ; preds = %29, %38, %186
  %191 = phi i64 [ %188, %186 ], [ %32, %38 ], [ %32, %29 ]
  %192 = phi i64 [ %189, %186 ], [ %31, %38 ], [ %31, %29 ]
  %193 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !110
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %29, !llvm.loop !250

196:                                              ; preds = %190, %22
  %197 = phi i64 [ 0, %22 ], [ %191, %190 ]
  %198 = phi i64 [ 9223372036854775807, %22 ], [ %192, %190 ]
  %199 = icmp slt i64 %198, %197
  br i1 %199, label %200, label %571

200:                                              ; preds = %196
  %201 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %202 = load ptr, ptr %24, align 8, !tbaa !110
  %203 = icmp eq ptr %202, null
  br i1 %203, label %342, label %204

204:                                              ; preds = %200, %338
  %205 = phi ptr [ %340, %338 ], [ %202, %200 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !110
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 24
  br i1 %210, label %211, label %338

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !110
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 43
  br i1 %216, label %217, label %338

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !110
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 49
  br i1 %222, label %223, label %238

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !110
  %226 = load i32, ptr %225, align 8
  %227 = and i32 %226, 65535
  %228 = icmp eq i32 %227, 37
  br i1 %228, label %229, label %238

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1, i32 0, i32 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !110
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 30
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %237 = load i64, ptr %236, align 8, !tbaa !110
  br label %238

238:                                              ; preds = %235, %229, %223, %217
  %239 = phi ptr [ %225, %235 ], [ %219, %229 ], [ %219, %223 ], [ %219, %217 ]
  %240 = phi i64 [ %237, %235 ], [ 0, %229 ], [ 0, %223 ], [ 0, %217 ]
  %241 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !99
  %242 = icmp eq ptr %239, %241
  br i1 %242, label %304, label %243

243:                                              ; preds = %238
  %244 = load ptr, ptr @df, align 8, !tbaa !99
  %245 = getelementptr inbounds %struct.df, ptr %244, i64 0, i32 10
  %246 = load ptr, ptr %245, align 8, !tbaa !152
  %247 = load i32, ptr %23, align 8, !tbaa !110
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds ptr, ptr %246, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !99
  %251 = getelementptr inbounds %struct.df_insn_info, ptr %250, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !155
  %253 = load ptr, ptr %252, align 8, !tbaa !99
  %254 = icmp eq ptr %253, null
  br i1 %254, label %266, label %255

255:                                              ; preds = %243, %262
  %256 = phi ptr [ %264, %262 ], [ %253, %243 ]
  %257 = phi ptr [ %263, %262 ], [ %252, %243 ]
  %258 = getelementptr inbounds %struct.df_base_ref, ptr %256, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !110
  %260 = tail call i32 @rtx_equal_p(ptr noundef nonnull %239, ptr noundef %259) #16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = getelementptr inbounds ptr, ptr %257, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !99
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %255, !llvm.loop !251

266:                                              ; preds = %262, %255, %243
  %267 = phi ptr [ %252, %243 ], [ %263, %262 ], [ %257, %255 ]
  %268 = load ptr, ptr %267, align 8, !tbaa !99
  %269 = getelementptr inbounds %struct.df_base_ref, ptr %268, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !110
  %271 = icmp eq ptr %270, null
  br i1 %271, label %282, label %272

272:                                              ; preds = %266, %278
  %273 = phi ptr [ %280, %278 ], [ %270, %266 ]
  %274 = load ptr, ptr %273, align 8, !tbaa !136
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 255
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %282

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.df_link, ptr %273, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !110
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %272, !llvm.loop !252

282:                                              ; preds = %272, %278, %266
  %283 = phi ptr [ %270, %266 ], [ %273, %272 ], [ %280, %278 ]
  %284 = load ptr, ptr %283, align 8, !tbaa !136
  %285 = getelementptr inbounds %struct.df_base_ref, ptr %284, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !110
  %287 = load ptr, ptr %286, align 8, !tbaa !139
  %288 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !110
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 23
  br i1 %292, label %295, label %293

293:                                              ; preds = %282
  %294 = tail call ptr @single_set_2(ptr noundef %287, ptr noundef nonnull %289) #16
  br label %295

295:                                              ; preds = %282, %293
  %296 = phi ptr [ %294, %293 ], [ %289, %282 ]
  %297 = getelementptr inbounds %struct.rtx_def, ptr %296, i64 0, i32 1, i32 0, i32 0, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !110
  %299 = getelementptr inbounds %struct.rtx_def, ptr %298, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !110
  %301 = getelementptr inbounds %struct.rtx_def, ptr %300, i64 0, i32 1
  %302 = load i64, ptr %301, align 8, !tbaa !110
  %303 = add nsw i64 %302, %240
  br label %304

304:                                              ; preds = %295, %238
  %305 = phi i64 [ %303, %295 ], [ %240, %238 ]
  %306 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %307

307:                                              ; preds = %336, %304
  %308 = phi i64 [ %305, %304 ], [ %337, %336 ]
  %309 = load ptr, ptr %306, align 8, !tbaa !110
  %310 = icmp eq ptr %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.mem_attrs, ptr %309, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !246
  br label %324

314:                                              ; preds = %307
  %315 = load i32, ptr %213, align 8
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  %318 = icmp ne i32 %317, 1
  tail call void @llvm.assume(i1 %318)
  %319 = zext nneg i32 %317 to i64
  %320 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !110
  %322 = zext i8 %321 to i64
  %323 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %322) #16
  br label %324

324:                                              ; preds = %314, %311
  %325 = phi ptr [ %313, %311 ], [ %323, %314 ]
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !110
  %328 = add nsw i64 %327, %305
  %329 = icmp slt i64 %308, %328
  br i1 %329, label %330, label %338

330:                                              ; preds = %324
  %331 = sub nsw i64 %308, %198
  %332 = trunc i64 %331 to i32
  %333 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %201, i32 noundef %332) #16
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 354, ptr noundef nonnull @.str.6) #16
  br label %336

336:                                              ; preds = %330, %335
  %337 = add nsw i64 %308, 1
  br label %307, !llvm.loop !253

338:                                              ; preds = %324, %204, %211
  %339 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1, i32 0, i32 0, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !110
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %204, !llvm.loop !254

342:                                              ; preds = %338, %200
  %343 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !110
  %345 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  br label %346

346:                                              ; preds = %561, %342
  %347 = phi i8 [ 0, %342 ], [ %563, %561 ]
  %348 = phi ptr [ %344, %342 ], [ %360, %561 ]
  %349 = icmp eq ptr %348, null
  br i1 %349, label %565, label %350

350:                                              ; preds = %346
  %351 = load ptr, ptr %345, align 8, !tbaa !110
  %352 = getelementptr inbounds %struct.basic_block_def, ptr %351, i64 0, i32 7
  %353 = load ptr, ptr %352, align 8, !tbaa !110
  %354 = load ptr, ptr %353, align 8, !tbaa !199
  %355 = icmp eq ptr %348, %354
  br i1 %355, label %359, label %356

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1, i32 0, i32 0, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !110
  br label %359

359:                                              ; preds = %350, %356
  %360 = phi ptr [ %358, %356 ], [ null, %350 ]
  %361 = load i32, ptr %348, align 8
  %362 = trunc i32 %361 to i16
  switch i16 %362, label %363 [
    i16 10, label %561
    i16 8, label %364
    i16 7, label %364
    i16 9, label %364
  ]

363:                                              ; preds = %359
  br label %561

364:                                              ; preds = %359, %359, %359
  %365 = and i32 %361, 65535
  %366 = add nsw i32 %365, -7
  %367 = icmp ult i32 %366, 4
  br i1 %367, label %368, label %376

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !110
  %371 = load i32, ptr %370, align 8
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 23
  br i1 %373, label %376, label %374

374:                                              ; preds = %368
  %375 = tail call ptr @single_set_2(ptr noundef nonnull %348, ptr noundef nonnull %370) #16
  br label %376

376:                                              ; preds = %364, %368, %374
  %377 = phi ptr [ %375, %374 ], [ null, %364 ], [ %370, %368 ]
  %378 = icmp eq ptr %377, null
  br i1 %378, label %561, label %379

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !110
  %382 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !99
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %561, label %384

384:                                              ; preds = %379
  %385 = load i32, ptr %381, align 8
  %386 = and i32 %385, 65535
  %387 = icmp eq i32 %386, 43
  br i1 %387, label %388, label %561

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.rtx_def, ptr %381, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !110
  %391 = load i32, ptr %390, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 49
  br i1 %393, label %394, label %409

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.rtx_def, ptr %390, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !110
  %397 = load i32, ptr %396, align 8
  %398 = and i32 %397, 65535
  %399 = icmp eq i32 %398, 37
  br i1 %399, label %400, label %409

400:                                              ; preds = %394
  %401 = getelementptr inbounds %struct.rtx_def, ptr %390, i64 0, i32 1, i32 0, i32 0, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !110
  %403 = load i32, ptr %402, align 8
  %404 = and i32 %403, 65535
  %405 = icmp eq i32 %404, 30
  br i1 %405, label %406, label %409

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.rtx_def, ptr %402, i64 0, i32 1
  %408 = load i64, ptr %407, align 8, !tbaa !110
  br label %409

409:                                              ; preds = %406, %400, %394, %388
  %410 = phi ptr [ %396, %406 ], [ %390, %400 ], [ %390, %394 ], [ %390, %388 ]
  %411 = phi i64 [ %408, %406 ], [ 0, %400 ], [ 0, %394 ], [ 0, %388 ]
  %412 = icmp eq ptr %410, %382
  br i1 %412, label %505, label %413

413:                                              ; preds = %409
  %414 = icmp eq i8 %2, 0
  %415 = load i32, ptr %410, align 8
  %416 = and i32 %415, 65535
  %417 = icmp eq i32 %416, 37
  %418 = and i1 %414, %417
  br i1 %418, label %419, label %561

419:                                              ; preds = %413
  %420 = load ptr, ptr @df, align 8, !tbaa !99
  %421 = getelementptr inbounds %struct.df, ptr %420, i64 0, i32 10
  %422 = load ptr, ptr %421, align 8, !tbaa !152
  %423 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1
  %424 = load i32, ptr %423, align 8, !tbaa !110
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds ptr, ptr %422, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !99
  %428 = getelementptr inbounds %struct.df_insn_info, ptr %427, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !155
  %430 = load ptr, ptr %429, align 8, !tbaa !99
  %431 = icmp eq ptr %430, null
  br i1 %431, label %443, label %432

432:                                              ; preds = %419, %439
  %433 = phi ptr [ %441, %439 ], [ %430, %419 ]
  %434 = phi ptr [ %440, %439 ], [ %429, %419 ]
  %435 = getelementptr inbounds %struct.df_base_ref, ptr %433, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !110
  %437 = tail call i32 @rtx_equal_p(ptr noundef nonnull %410, ptr noundef %436) #16
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %432
  %440 = getelementptr inbounds ptr, ptr %434, i64 1
  %441 = load ptr, ptr %440, align 8, !tbaa !99
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %432, !llvm.loop !255

443:                                              ; preds = %439, %432, %419
  %444 = phi ptr [ %429, %419 ], [ %440, %439 ], [ %434, %432 ]
  %445 = load ptr, ptr %444, align 8, !tbaa !99
  %446 = icmp eq ptr %445, null
  br i1 %446, label %501, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.df_base_ref, ptr %445, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !110
  %450 = icmp eq ptr %449, null
  br i1 %450, label %501, label %455

451:                                              ; preds = %455
  %452 = getelementptr inbounds %struct.df_link, ptr %456, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !110
  %454 = icmp eq ptr %453, null
  br i1 %454, label %501, label %455, !llvm.loop !256

455:                                              ; preds = %447, %451
  %456 = phi ptr [ %453, %451 ], [ %449, %447 ]
  %457 = load ptr, ptr %456, align 8, !tbaa !136
  %458 = load i32, ptr %457, align 8
  %459 = and i32 %458, 255
  %460 = icmp eq i32 %459, 1
  br i1 %460, label %451, label %461

461:                                              ; preds = %455
  %462 = getelementptr inbounds %struct.df_base_ref, ptr %457, i64 0, i32 3
  %463 = load ptr, ptr %462, align 8, !tbaa !110
  %464 = load ptr, ptr %463, align 8, !tbaa !139
  %465 = load i32, ptr %464, align 8
  %466 = and i32 %465, 65535
  %467 = add nsw i32 %466, -7
  %468 = icmp ult i32 %467, 4
  br i1 %468, label %469, label %477

469:                                              ; preds = %461
  %470 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 1
  %471 = load ptr, ptr %470, align 8, !tbaa !110
  %472 = load i32, ptr %471, align 8
  %473 = and i32 %472, 65535
  %474 = icmp eq i32 %473, 23
  br i1 %474, label %477, label %475

475:                                              ; preds = %469
  %476 = tail call ptr @single_set_2(ptr noundef nonnull %464, ptr noundef nonnull %471) #16
  br label %477

477:                                              ; preds = %461, %469, %475
  %478 = phi ptr [ %476, %475 ], [ null, %461 ], [ %471, %469 ]
  %479 = icmp eq ptr %478, null
  br i1 %479, label %501, label %480

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.rtx_def, ptr %478, i64 0, i32 1, i32 0, i32 0, i64 1
  %482 = load ptr, ptr %481, align 8, !tbaa !110
  %483 = load i32, ptr %482, align 8
  %484 = and i32 %483, 65535
  %485 = icmp eq i32 %484, 49
  br i1 %485, label %486, label %501

486:                                              ; preds = %480
  %487 = getelementptr inbounds %struct.rtx_def, ptr %482, i64 0, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !110
  %489 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !99
  %490 = icmp eq ptr %488, %489
  br i1 %490, label %491, label %501

491:                                              ; preds = %486
  %492 = getelementptr inbounds %struct.rtx_def, ptr %482, i64 0, i32 1, i32 0, i32 0, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !110
  %494 = load i32, ptr %493, align 8
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 30
  br i1 %496, label %497, label %501

497:                                              ; preds = %491
  %498 = getelementptr inbounds %struct.rtx_def, ptr %493, i64 0, i32 1
  %499 = load i64, ptr %498, align 8, !tbaa !110
  %500 = add nsw i64 %499, %411
  br label %501

501:                                              ; preds = %451, %447, %480, %486, %491, %477, %443, %497
  %502 = phi i1 [ true, %497 ], [ false, %443 ], [ false, %477 ], [ false, %491 ], [ false, %486 ], [ false, %480 ], [ false, %447 ], [ false, %451 ]
  %503 = phi i32 [ 0, %497 ], [ 23, %443 ], [ 23, %477 ], [ 23, %491 ], [ 23, %486 ], [ 23, %480 ], [ 23, %447 ], [ 23, %451 ]
  %504 = phi i64 [ %500, %497 ], [ %411, %443 ], [ %411, %477 ], [ %411, %491 ], [ %411, %486 ], [ %411, %480 ], [ %411, %447 ], [ %411, %451 ]
  br i1 %502, label %505, label %561

505:                                              ; preds = %501, %409
  %506 = phi i64 [ %504, %501 ], [ %411, %409 ]
  %507 = load i32, ptr %381, align 8
  %508 = lshr i32 %507, 16
  %509 = and i32 %508, 255
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !110
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %561, label %514

514:                                              ; preds = %505
  %515 = load i32, ptr %381, align 8
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 255
  %518 = zext nneg i32 %517 to i64
  %519 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %518
  %520 = load i8, ptr %519, align 1, !tbaa !110
  %521 = icmp ne i8 %520, 0
  %522 = icmp sge i64 %506, %198
  %523 = select i1 %521, i1 %522, i1 false
  %524 = icmp slt i64 %506, %197
  %525 = select i1 %523, i1 %524, i1 false
  br i1 %525, label %541, label %547

526:                                              ; preds = %541
  %527 = add nsw i64 %542, 1
  %528 = load i32, ptr %381, align 8
  %529 = lshr i32 %528, 16
  %530 = and i32 %529, 255
  %531 = zext nneg i32 %530 to i64
  %532 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !110
  %534 = zext i8 %533 to i64
  %535 = add nsw i64 %506, %534
  %536 = icmp slt i64 %527, %535
  %537 = icmp sge i64 %527, %198
  %538 = and i1 %536, %537
  %539 = icmp slt i64 %527, %197
  %540 = and i1 %538, %539
  br i1 %540, label %541, label %547, !llvm.loop !257

541:                                              ; preds = %514, %526
  %542 = phi i64 [ %527, %526 ], [ %506, %514 ]
  %543 = sub nsw i64 %542, %198
  %544 = trunc i64 %543 to i32
  %545 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %201, i32 noundef %544) #16
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %547, label %526

547:                                              ; preds = %526, %541, %514
  %548 = tail call fastcc zeroext i8 @deletable_insn_p(ptr noundef nonnull %348, i8 noundef zeroext %2, ptr noundef null)
  %549 = icmp eq i8 %548, 0
  br i1 %549, label %561, label %550

550:                                              ; preds = %547
  br i1 %17, label %552, label %551

551:                                              ; preds = %550
  tail call fastcc void @mark_insn(ptr noundef nonnull %348, i8 noundef zeroext %2)
  br label %556

552:                                              ; preds = %550
  %553 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1
  %554 = load i32, ptr %553, align 8, !tbaa !110
  %555 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %554) #16
  br label %556

556:                                              ; preds = %552, %551
  %557 = load ptr, ptr %201, align 8, !tbaa !258
  %558 = icmp eq ptr %557, null
  %559 = select i1 %558, i32 23, i32 0
  %560 = select i1 %558, i8 1, i8 %347
  br label %561

561:                                              ; preds = %547, %501, %359, %556, %505, %413, %384, %376, %379, %363
  %562 = phi i32 [ 25, %363 ], [ 23, %379 ], [ 23, %376 ], [ 25, %384 ], [ 23, %413 ], [ 23, %505 ], [ %559, %556 ], [ 23, %359 ], [ %503, %501 ], [ 23, %547 ]
  %563 = phi i8 [ %347, %363 ], [ %347, %379 ], [ %347, %376 ], [ %347, %384 ], [ %347, %413 ], [ %347, %505 ], [ %560, %556 ], [ %347, %359 ], [ %347, %501 ], [ %347, %547 ]
  %564 = icmp eq i32 %562, 23
  br i1 %564, label %565, label %346, !llvm.loop !260

565:                                              ; preds = %561, %346
  %566 = phi i8 [ %347, %346 ], [ %563, %561 ]
  tail call void @bitmap_obstack_free(ptr noundef %201) #16
  %567 = icmp eq i8 %566, 0
  %568 = icmp ne ptr %3, null
  %569 = and i1 %568, %567
  br i1 %569, label %570, label %571

570:                                              ; preds = %565
  tail call void @bitmap_clear(ptr noundef nonnull %3) #16
  br label %571

571:                                              ; preds = %186, %565, %570, %196, %13
  %572 = phi i8 [ 1, %13 ], [ 1, %196 ], [ %566, %570 ], [ %566, %565 ], [ 0, %186 ]
  ret i8 %572
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @volatile_refs_p(ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @mark_nonreg_stores_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #11 !prof !261 !PGOFuncName !262 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %56, label %7, !prof !263

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %56, label %11, !prof !264

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %14, !prof !160

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 159, ptr noundef nonnull @.str.6) #16
  br label %14

14:                                               ; preds = %13, %11
  %15 = load ptr, ptr @marked, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !110
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !161
  %22 = and i32 %17, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %56, !prof !162

27:                                               ; preds = %14
  %28 = load ptr, ptr %15, align 8, !tbaa !166
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !168

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %28, i64 %19
  %32 = load i8, ptr %31, align 1, !tbaa !110
  %33 = add i8 %32, 1
  store i8 %33, ptr %31, align 1, !tbaa !110
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i64, ptr %20, align 8, !tbaa !161
  %36 = or i64 %35, %24
  store i64 %36, ptr %20, align 8, !tbaa !161
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !168

39:                                               ; preds = %34
  %40 = load i32, ptr %16, align 8, !tbaa !110
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.7, i32 noundef %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, ptr %2, align 8
  %44 = load i1, ptr @df_in_progress, align 1
  %45 = and i32 %43, 16842751
  %46 = icmp ne i32 %45, 10
  %47 = select i1 %46, i1 true, i1 %44, !prof !169
  br i1 %47, label %56, label %48, !prof !170

48:                                               ; preds = %42
  %49 = and i32 %43, -2080374784
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %43, 33554432
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %50, %52
  br i1 %53, label %54, label %56, !prof !171

54:                                               ; preds = %48
  %55 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %2, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #17
  br label %56

56:                                               ; preds = %54, %48, %42, %14, %7, %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mark_nonreg_stores_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #11 !prof !265 !PGOFuncName !266 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %12, label %7, !prof !267

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %12, label %11, !prof !268

11:                                               ; preds = %7
  tail call fastcc void @mark_insn(ptr noundef %2, i8 noundef zeroext 0)
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_simple_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare i32 @noop_move_p(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @fast_dce(i8 noundef zeroext %0) unnamed_addr #9 !prof !183 !PGOFuncName !269 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @df_get_postorder(i32 noundef 2) #16
  %5 = tail call i32 @df_get_n_blocks(i32 noundef 2) #16
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #16
  %9 = load ptr, ptr @df, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !270
  %12 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !271
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 1)
  %14 = icmp sgt i32 %5, 0
  br i1 %14, label %15, label %17, !prof !272

15:                                               ; preds = %1
  %16 = zext nneg i32 %5 to i64
  br label %19

17:                                               ; preds = %19, %1
  %18 = icmp sgt i32 %5, 0
  br label %26

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %24, %19 ]
  %21 = getelementptr inbounds i32, ptr %4, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !114
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %22) #16
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %16
  br i1 %25, label %17, label %19, !prof !273, !llvm.loop !274

26:                                               ; preds = %617, %17
  br i1 %18, label %27, label %601, !prof !272

27:                                               ; preds = %26
  %28 = icmp eq i8 %0, 0
  %29 = zext nneg i32 %5 to i64
  br label %30

30:                                               ; preds = %27, %597
  %31 = phi i64 [ 0, %27 ], [ %599, %597 ]
  %32 = phi i8 [ 0, %27 ], [ %598, %597 ]
  %33 = getelementptr inbounds i32, ptr %4, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !114
  %35 = load ptr, ptr @cfun, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !124
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !275
  %40 = zext i32 %34 to i64
  %41 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %39, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !99
  %43 = icmp slt i32 %34, 2
  br i1 %43, label %44, label %46, !prof !276

44:                                               ; preds = %30
  %45 = call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %34) #16
  br label %597

46:                                               ; preds = %30
  %47 = call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %34) #16
  %48 = icmp eq ptr %42, null
  br i1 %28, label %289, label %49, !prof !277

49:                                               ; preds = %46, %78
  %50 = phi i32 [ %79, %78 ], [ 0, %46 ]
  br i1 %48, label %51, label %52

51:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.6) #16
  br label %52

52:                                               ; preds = %51, %49
  %53 = load ptr, ptr %42, align 8, !tbaa !99
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %53, align 8, !tbaa !278
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i32 [ %56, %55 ], [ 0, %52 ]
  %59 = icmp eq i32 %58, %50
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = zext i32 %50 to i64
  %62 = getelementptr inbounds %struct.VEC_edge_base, ptr %53, i64 0, i32 2, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !99
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi ptr [ %63, %60 ], [ null, %57 ]
  br i1 %59, label %80, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !280
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  br i1 %54, label %74, label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %53, align 8, !tbaa !278
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ %73, %72 ], [ 0, %71 ]
  %76 = icmp ult i32 %50, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.6) #16
  br label %78

78:                                               ; preds = %77, %74
  %79 = add i32 %50, 1
  br label %49, !llvm.loop !282

80:                                               ; preds = %64, %66
  %81 = phi ptr [ %13, %66 ], [ %11, %64 ]
  %82 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_tmp_bitmap_obstack) #16
  %83 = and i32 %47, 255
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %131, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr @df, align 8, !tbaa !99
  %87 = getelementptr inbounds %struct.df, ptr %86, i64 0, i32 1, i64 5
  %88 = load ptr, ptr %87, align 8, !tbaa !99
  %89 = load ptr, ptr %88, align 8, !tbaa !283
  %90 = getelementptr inbounds %struct.df_problem, ptr %89, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !284
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !127
  %94 = getelementptr inbounds %struct.dataflow, ptr %88, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !129
  %96 = icmp ugt i32 %95, %93
  call void @llvm.assume(i1 %96)
  %97 = getelementptr inbounds %struct.dataflow, ptr %88, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !131
  %99 = zext i32 %93 to i64
  %100 = getelementptr inbounds ptr, ptr %98, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !99
  %102 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !286
  call void @bitmap_clear(ptr noundef %103) #16
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 1
  br label %105

105:                                              ; preds = %129, %85
  %106 = phi i32 [ 0, %85 ], [ %130, %129 ]
  %107 = load ptr, ptr %104, align 8, !tbaa !99
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %107, align 8, !tbaa !278
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi i32 [ %110, %109 ], [ 0, %105 ]
  %113 = icmp eq i32 %112, %106
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = zext i32 %106 to i64
  %116 = getelementptr inbounds %struct.VEC_edge_base, ptr %107, i64 0, i32 2, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !99
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi ptr [ %117, %114 ], [ null, %111 ]
  br i1 %113, label %131, label %120

120:                                              ; preds = %118
  call void %91(ptr noundef %119) #16
  %121 = load ptr, ptr %104, align 8, !tbaa !99
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %121, align 8, !tbaa !278
  br label %125

125:                                              ; preds = %123, %120
  %126 = phi i32 [ %124, %123 ], [ 0, %120 ]
  %127 = icmp ult i32 %106, %126
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.6) #16
  br label %129

129:                                              ; preds = %128, %125
  %130 = add i32 %106, 1
  br label %105, !llvm.loop !288

131:                                              ; preds = %118, %80
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %133 = icmp eq ptr %132, null
  br i1 %133, label %153, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %136 = load i32, ptr %135, align 8, !tbaa !127
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %132, ptr noundef nonnull @.str.11, i32 noundef %136)
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %139 = load i32, ptr %135, align 8, !tbaa !127
  %140 = load ptr, ptr @df, align 8, !tbaa !99
  %141 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 1, i64 5
  %142 = load ptr, ptr %141, align 8, !tbaa !99
  %143 = getelementptr inbounds %struct.dataflow, ptr %142, i64 0, i32 2
  %144 = load i32, ptr %143, align 8, !tbaa !129
  %145 = icmp ugt i32 %144, %139
  call void @llvm.assume(i1 %145)
  %146 = getelementptr inbounds %struct.dataflow, ptr %142, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !131
  %148 = zext i32 %139 to i64
  %149 = getelementptr inbounds ptr, ptr %147, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !99
  %151 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !286
  call void @df_print_byte_regset(ptr noundef %138, ptr noundef %152) #16
  br label %153

153:                                              ; preds = %134, %131
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %155 = load i32, ptr %154, align 8, !tbaa !127
  %156 = load ptr, ptr @df, align 8, !tbaa !99
  %157 = getelementptr inbounds %struct.df, ptr %156, i64 0, i32 1, i64 5
  %158 = load ptr, ptr %157, align 8, !tbaa !99
  %159 = getelementptr inbounds %struct.dataflow, ptr %158, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !129
  %161 = icmp ugt i32 %160, %155
  call void @llvm.assume(i1 %161)
  %162 = getelementptr inbounds %struct.dataflow, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !131
  %164 = zext i32 %155 to i64
  %165 = getelementptr inbounds ptr, ptr %163, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !99
  %167 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !286
  call void @bitmap_copy(ptr noundef %82, ptr noundef %168) #16
  call void @df_byte_lr_simulate_artificial_refs_at_end(ptr noundef nonnull %42, ptr noundef %82) #16
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 7
  %170 = load ptr, ptr %169, align 8, !tbaa !110
  %171 = getelementptr inbounds %struct.rtl_bb_info, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !110
  %173 = icmp eq ptr %172, null
  br i1 %173, label %257, label %174

174:                                              ; preds = %153, %253
  %175 = phi ptr [ %255, %253 ], [ %172, %153 ]
  %176 = load ptr, ptr %169, align 8, !tbaa !110
  %177 = load ptr, ptr %176, align 8, !tbaa !199
  %178 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1, i32 0, i32 0, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !110
  %180 = icmp eq ptr %175, %179
  br i1 %180, label %257, label %181

181:                                              ; preds = %174
  %182 = load i32, ptr %175, align 8
  %183 = and i32 %182, 65535
  %184 = add nsw i32 %183, -7
  %185 = icmp ult i32 %184, 4
  br i1 %185, label %186, label %253

186:                                              ; preds = %181
  %187 = load ptr, ptr @df, align 8, !tbaa !99
  %188 = getelementptr inbounds %struct.df, ptr %187, i64 0, i32 10
  %189 = load ptr, ptr %188, align 8, !tbaa !152
  %190 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !110
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %189, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !99
  %195 = getelementptr inbounds %struct.df_insn_info, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !229
  %197 = load ptr, ptr %196, align 8, !tbaa !99
  %198 = icmp eq ptr %197, null
  br i1 %198, label %233, label %199

199:                                              ; preds = %186, %229
  %200 = phi ptr [ %231, %229 ], [ %197, %186 ]
  %201 = phi ptr [ %230, %229 ], [ %196, %186 ]
  %202 = getelementptr inbounds %struct.df_base_ref, ptr %200, i64 0, i32 6
  %203 = load i32, ptr %202, align 8, !tbaa !110
  %204 = call i32 @df_byte_lr_get_regno_start(i32 noundef %203) #16
  %205 = call i32 @df_byte_lr_get_regno_len(i32 noundef %203) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %206 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %200, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %207 = load i32, ptr %2, align 4
  %208 = load i32, ptr %3, align 4
  %209 = call i32 @bitmap_bit_p(ptr noundef %81, i32 noundef %203) #16
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %199
  %212 = icmp eq i8 %206, 0
  %213 = sub i32 %208, %207
  %214 = select i1 %212, i32 %213, i32 %205
  %215 = select i1 %212, i32 %207, i32 0
  %216 = add i32 %215, %204
  %217 = add i32 %214, %216
  %218 = call i32 @llvm.umax.i32(i32 %217, i32 %216)
  br label %219

219:                                              ; preds = %222, %211
  %220 = phi i32 [ %216, %211 ], [ %223, %222 ]
  %221 = icmp eq i32 %220, %218
  br i1 %221, label %227, label %222

222:                                              ; preds = %219
  %223 = add i32 %220, 1
  %224 = call i32 @bitmap_bit_p(ptr noundef %82, i32 noundef %220) #16
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %219, label %226, !llvm.loop !289

226:                                              ; preds = %222, %199
  call fastcc void @mark_insn(ptr noundef nonnull %175, i8 noundef zeroext 1)
  br label %227

227:                                              ; preds = %219, %226
  %228 = phi i32 [ 11, %226 ], [ 0, %219 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  switch i32 %228, label %550 [
    i32 0, label %229
    i32 11, label %233
  ]

229:                                              ; preds = %227
  %230 = getelementptr inbounds ptr, ptr %201, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !99
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %199, !llvm.loop !290

233:                                              ; preds = %229, %227, %186
  call void @df_byte_lr_simulate_defs(ptr noundef nonnull %175, ptr noundef %82) #16
  %234 = load ptr, ptr @marked, align 8, !tbaa !99
  %235 = load i32, ptr %190, align 8, !tbaa !110
  %236 = lshr i32 %235, 6
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds %struct.simple_bitmap_def, ptr %234, i64 0, i32 3, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !161
  %240 = and i32 %235, 63
  %241 = zext nneg i32 %240 to i64
  %242 = shl nuw i64 1, %241
  %243 = and i64 %242, %239
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %233
  call void @df_byte_lr_simulate_uses(ptr noundef nonnull %175, ptr noundef %82) #16
  br label %246

246:                                              ; preds = %245, %233
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = load i32, ptr %190, align 8, !tbaa !110
  %251 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %247, ptr noundef nonnull @.str.12, i32 noundef %250)
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !99
  call void @df_print_byte_regset(ptr noundef %252, ptr noundef %82) #16
  br label %253

253:                                              ; preds = %249, %246, %181
  %254 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1, i32 0, i32 0, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !110
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %174, !llvm.loop !291

257:                                              ; preds = %253, %174, %153
  call void @df_byte_lr_simulate_artificial_refs_at_top(ptr noundef nonnull %42, ptr noundef %82) #16
  %258 = load i32, ptr %154, align 8, !tbaa !127
  %259 = load ptr, ptr @df, align 8, !tbaa !99
  %260 = getelementptr inbounds %struct.df, ptr %259, i64 0, i32 1, i64 5
  %261 = load ptr, ptr %260, align 8, !tbaa !99
  %262 = getelementptr inbounds %struct.dataflow, ptr %261, i64 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !129
  %264 = icmp ugt i32 %263, %258
  call void @llvm.assume(i1 %264)
  %265 = getelementptr inbounds %struct.dataflow, ptr %261, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !131
  %267 = zext i32 %258 to i64
  %268 = getelementptr inbounds ptr, ptr %266, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !99
  %270 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %269, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !292
  %272 = call zeroext i8 @bitmap_equal_p(ptr noundef %82, ptr noundef %271) #16
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %546

274:                                              ; preds = %257
  %275 = load i32, ptr %154, align 8, !tbaa !127
  %276 = load ptr, ptr @df, align 8, !tbaa !99
  %277 = getelementptr inbounds %struct.df, ptr %276, i64 0, i32 1, i64 5
  %278 = load ptr, ptr %277, align 8, !tbaa !99
  %279 = getelementptr inbounds %struct.dataflow, ptr %278, i64 0, i32 2
  %280 = load i32, ptr %279, align 8, !tbaa !129
  %281 = icmp ugt i32 %280, %275
  call void @llvm.assume(i1 %281)
  %282 = getelementptr inbounds %struct.dataflow, ptr %278, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !131
  %284 = zext i32 %275 to i64
  %285 = getelementptr inbounds ptr, ptr %283, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !99
  %287 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %286, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !292
  call void @bitmap_copy(ptr noundef %288, ptr noundef %82) #16
  br label %546

289:                                              ; preds = %46, %318
  %290 = phi i32 [ %319, %318 ], [ 0, %46 ]
  br i1 %48, label %291, label %292, !prof !293

291:                                              ; preds = %289
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.6) #16
  br label %292

292:                                              ; preds = %291, %289
  %293 = load ptr, ptr %42, align 8, !tbaa !99
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295, !prof !293

295:                                              ; preds = %292
  %296 = load i32, ptr %293, align 8, !tbaa !278
  br label %297

297:                                              ; preds = %295, %292
  %298 = phi i32 [ %296, %295 ], [ 0, %292 ]
  %299 = icmp eq i32 %298, %290
  br i1 %299, label %304, label %300, !prof !294

300:                                              ; preds = %297
  %301 = zext i32 %290 to i64
  %302 = getelementptr inbounds %struct.VEC_edge_base, ptr %293, i64 0, i32 2, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !99
  br label %304

304:                                              ; preds = %300, %297
  %305 = phi ptr [ %303, %300 ], [ null, %297 ]
  br i1 %299, label %320, label %306, !prof !294

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct.edge_def, ptr %305, i64 0, i32 7
  %308 = load i32, ptr %307, align 8, !tbaa !280
  %309 = and i32 %308, 8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %320, !prof !295

311:                                              ; preds = %306
  br i1 %294, label %314, label %312, !prof !296

312:                                              ; preds = %311
  %313 = load i32, ptr %293, align 8, !tbaa !278
  br label %314

314:                                              ; preds = %312, %311
  %315 = phi i32 [ %313, %312 ], [ 0, %311 ]
  %316 = icmp ult i32 %290, %315
  br i1 %316, label %318, label %317, !prof !295

317:                                              ; preds = %314
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.6) #16
  br label %318

318:                                              ; preds = %317, %314
  %319 = add i32 %290, 1
  br label %289, !llvm.loop !282

320:                                              ; preds = %304, %306
  %321 = phi ptr [ %13, %306 ], [ %11, %304 ]
  %322 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_tmp_bitmap_obstack) #16
  %323 = and i32 %47, 255
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %371, label %325, !prof !277

325:                                              ; preds = %320
  %326 = load ptr, ptr @df, align 8, !tbaa !99
  %327 = getelementptr inbounds %struct.df, ptr %326, i64 0, i32 1, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !99
  %329 = load ptr, ptr %328, align 8, !tbaa !283
  %330 = getelementptr inbounds %struct.df_problem, ptr %329, i64 0, i32 9
  %331 = load ptr, ptr %330, align 8, !tbaa !284
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %333 = load i32, ptr %332, align 8, !tbaa !127
  %334 = getelementptr inbounds %struct.dataflow, ptr %328, i64 0, i32 2
  %335 = load i32, ptr %334, align 8, !tbaa !129
  %336 = icmp ugt i32 %335, %333
  call void @llvm.assume(i1 %336)
  %337 = getelementptr inbounds %struct.dataflow, ptr %328, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !131
  %339 = zext i32 %333 to i64
  %340 = getelementptr inbounds ptr, ptr %338, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !99
  %342 = getelementptr inbounds %struct.df_lr_bb_info, ptr %341, i64 0, i32 3
  %343 = load ptr, ptr %342, align 8, !tbaa !297
  call void @bitmap_clear(ptr noundef %343) #16
  %344 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 1
  br label %345

345:                                              ; preds = %369, %325
  %346 = phi i32 [ 0, %325 ], [ %370, %369 ]
  %347 = load ptr, ptr %344, align 8, !tbaa !99
  %348 = icmp eq ptr %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = load i32, ptr %347, align 8, !tbaa !278
  br label %351

351:                                              ; preds = %349, %345
  %352 = phi i32 [ %350, %349 ], [ 0, %345 ]
  %353 = icmp eq i32 %352, %346
  br i1 %353, label %358, label %354

354:                                              ; preds = %351
  %355 = zext i32 %346 to i64
  %356 = getelementptr inbounds %struct.VEC_edge_base, ptr %347, i64 0, i32 2, i64 %355
  %357 = load ptr, ptr %356, align 8, !tbaa !99
  br label %358

358:                                              ; preds = %354, %351
  %359 = phi ptr [ %357, %354 ], [ null, %351 ]
  br i1 %353, label %371, label %360

360:                                              ; preds = %358
  call void %331(ptr noundef %359) #16
  %361 = load ptr, ptr %344, align 8, !tbaa !99
  %362 = icmp eq ptr %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %360
  %364 = load i32, ptr %361, align 8, !tbaa !278
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi i32 [ %364, %363 ], [ 0, %360 ]
  %367 = icmp ult i32 %346, %366
  br i1 %367, label %369, label %368

368:                                              ; preds = %365
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.6) #16
  br label %369

369:                                              ; preds = %368, %365
  %370 = add i32 %346, 1
  br label %345, !llvm.loop !299

371:                                              ; preds = %358, %320
  %372 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %373 = icmp eq ptr %372, null
  br i1 %373, label %393, label %374, !prof !277

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %376 = load i32, ptr %375, align 8, !tbaa !127
  %377 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %372, ptr noundef nonnull @.str.13, i32 noundef %376)
  %378 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %379 = load i32, ptr %375, align 8, !tbaa !127
  %380 = load ptr, ptr @df, align 8, !tbaa !99
  %381 = getelementptr inbounds %struct.df, ptr %380, i64 0, i32 1, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !99
  %383 = getelementptr inbounds %struct.dataflow, ptr %382, i64 0, i32 2
  %384 = load i32, ptr %383, align 8, !tbaa !129
  %385 = icmp ugt i32 %384, %379
  call void @llvm.assume(i1 %385)
  %386 = getelementptr inbounds %struct.dataflow, ptr %382, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !131
  %388 = zext i32 %379 to i64
  %389 = getelementptr inbounds ptr, ptr %387, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !99
  %391 = getelementptr inbounds %struct.df_lr_bb_info, ptr %390, i64 0, i32 3
  %392 = load ptr, ptr %391, align 8, !tbaa !297
  call void @df_print_regset(ptr noundef %378, ptr noundef %392) #16
  br label %393

393:                                              ; preds = %374, %371
  %394 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %395 = load i32, ptr %394, align 8, !tbaa !127
  %396 = load ptr, ptr @df, align 8, !tbaa !99
  %397 = getelementptr inbounds %struct.df, ptr %396, i64 0, i32 1, i64 1
  %398 = load ptr, ptr %397, align 8, !tbaa !99
  %399 = getelementptr inbounds %struct.dataflow, ptr %398, i64 0, i32 2
  %400 = load i32, ptr %399, align 8, !tbaa !129
  %401 = icmp ugt i32 %400, %395
  call void @llvm.assume(i1 %401)
  %402 = getelementptr inbounds %struct.dataflow, ptr %398, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !131
  %404 = zext i32 %395 to i64
  %405 = getelementptr inbounds ptr, ptr %403, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !99
  %407 = getelementptr inbounds %struct.df_lr_bb_info, ptr %406, i64 0, i32 3
  %408 = load ptr, ptr %407, align 8, !tbaa !297
  call void @bitmap_copy(ptr noundef %322, ptr noundef %408) #16
  call void @df_simulate_initialize_backwards(ptr noundef nonnull %42, ptr noundef %322) #16
  %409 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 7
  %410 = load ptr, ptr %409, align 8, !tbaa !110
  %411 = getelementptr inbounds %struct.rtl_bb_info, ptr %410, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !110
  %413 = icmp eq ptr %412, null
  br i1 %413, label %514, label %414, !prof !300

414:                                              ; preds = %393, %510
  %415 = phi ptr [ %512, %510 ], [ %412, %393 ]
  %416 = load ptr, ptr %409, align 8, !tbaa !110
  %417 = load ptr, ptr %416, align 8, !tbaa !199
  %418 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1, i32 0, i32 0, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !110
  %420 = icmp eq ptr %415, %419
  br i1 %420, label %514, label %421, !prof !301

421:                                              ; preds = %414
  %422 = load i32, ptr %415, align 8
  %423 = and i32 %422, 65535
  %424 = add nsw i32 %423, -7
  %425 = icmp ult i32 %424, 4
  br i1 %425, label %426, label %510, !prof !302

426:                                              ; preds = %421
  %427 = load ptr, ptr @df, align 8, !tbaa !99
  %428 = getelementptr inbounds %struct.df, ptr %427, i64 0, i32 10
  %429 = load ptr, ptr %428, align 8, !tbaa !152
  %430 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %431 = load i32, ptr %430, align 8, !tbaa !110
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds ptr, ptr %429, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !99
  %435 = getelementptr inbounds %struct.df_insn_info, ptr %434, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !229
  %437 = load ptr, ptr %436, align 8, !tbaa !99
  %438 = icmp eq ptr %437, null
  br i1 %438, label %497, label %443, !prof !303

439:                                              ; preds = %450
  %440 = getelementptr inbounds ptr, ptr %445, i64 1
  %441 = load ptr, ptr %440, align 8, !tbaa !99
  %442 = icmp eq ptr %441, null
  br i1 %442, label %497, label %443, !prof !304, !llvm.loop !305

443:                                              ; preds = %426, %439
  %444 = phi ptr [ %441, %439 ], [ %437, %426 ]
  %445 = phi ptr [ %440, %439 ], [ %436, %426 ]
  %446 = getelementptr inbounds %struct.df_base_ref, ptr %444, i64 0, i32 6
  %447 = load i32, ptr %446, align 8, !tbaa !110
  %448 = call i32 @bitmap_bit_p(ptr noundef %322, i32 noundef %447) #16
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %456, !prof !306

450:                                              ; preds = %443
  %451 = load ptr, ptr %445, align 8, !tbaa !99
  %452 = getelementptr inbounds %struct.df_base_ref, ptr %451, i64 0, i32 6
  %453 = load i32, ptr %452, align 8, !tbaa !110
  %454 = call i32 @bitmap_bit_p(ptr noundef %321, i32 noundef %453) #16
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %439, label %456, !prof !307

456:                                              ; preds = %443, %450
  %457 = load ptr, ptr @marked, align 8, !tbaa !99
  %458 = load i32, ptr %430, align 8, !tbaa !110
  %459 = lshr i32 %458, 6
  %460 = zext nneg i32 %459 to i64
  %461 = getelementptr inbounds %struct.simple_bitmap_def, ptr %457, i64 0, i32 3, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !161
  %463 = and i32 %458, 63
  %464 = zext nneg i32 %463 to i64
  %465 = shl nuw i64 1, %464
  %466 = and i64 %465, %462
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %497, !prof !162

468:                                              ; preds = %456
  %469 = load ptr, ptr %457, align 8, !tbaa !166
  %470 = icmp eq ptr %469, null
  br i1 %470, label %475, label %471, !prof !168

471:                                              ; preds = %468
  %472 = getelementptr inbounds i8, ptr %469, i64 %460
  %473 = load i8, ptr %472, align 1, !tbaa !110
  %474 = add i8 %473, 1
  store i8 %474, ptr %472, align 1, !tbaa !110
  br label %475

475:                                              ; preds = %471, %468
  %476 = load i64, ptr %461, align 8, !tbaa !161
  %477 = or i64 %476, %465
  store i64 %477, ptr %461, align 8, !tbaa !161
  %478 = load ptr, ptr @dump_file, align 8, !tbaa !99
  %479 = icmp eq ptr %478, null
  br i1 %479, label %483, label %480, !prof !168

480:                                              ; preds = %475
  %481 = load i32, ptr %430, align 8, !tbaa !110
  %482 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %478, ptr noundef nonnull @.str.7, i32 noundef %481)
  br label %483

483:                                              ; preds = %480, %475
  %484 = load i32, ptr %415, align 8
  %485 = load i1, ptr @df_in_progress, align 1
  %486 = and i32 %484, 16842751
  %487 = icmp ne i32 %486, 10
  %488 = select i1 %487, i1 true, i1 %485, !prof !169
  br i1 %488, label %497, label %489, !prof !170

489:                                              ; preds = %483
  %490 = and i32 %484, -2080374784
  %491 = icmp ne i32 %490, 0
  %492 = and i32 %484, 33554432
  %493 = icmp eq i32 %492, 0
  %494 = and i1 %491, %493
  br i1 %494, label %495, label %497, !prof !171

495:                                              ; preds = %489
  %496 = call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %415, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #17
  br label %497

497:                                              ; preds = %439, %426, %495, %489, %483, %456
  call void @df_simulate_defs(ptr noundef nonnull %415, ptr noundef %322) #16
  %498 = load ptr, ptr @marked, align 8, !tbaa !99
  %499 = load i32, ptr %430, align 8, !tbaa !110
  %500 = lshr i32 %499, 6
  %501 = zext nneg i32 %500 to i64
  %502 = getelementptr inbounds %struct.simple_bitmap_def, ptr %498, i64 0, i32 3, i64 %501
  %503 = load i64, ptr %502, align 8, !tbaa !161
  %504 = and i32 %499, 63
  %505 = zext nneg i32 %504 to i64
  %506 = shl nuw i64 1, %505
  %507 = and i64 %506, %503
  %508 = icmp eq i64 %507, 0
  br i1 %508, label %510, label %509, !prof !308

509:                                              ; preds = %497
  call void @df_simulate_uses(ptr noundef nonnull %415, ptr noundef %322) #16
  br label %510

510:                                              ; preds = %509, %497, %421
  %511 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1, i32 0, i32 0, i64 1
  %512 = load ptr, ptr %511, align 8, !tbaa !110
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %414, !prof !309, !llvm.loop !310

514:                                              ; preds = %510, %414, %393
  call void @df_simulate_finalize_backwards(ptr noundef nonnull %42, ptr noundef %322) #16
  %515 = load i32, ptr %394, align 8, !tbaa !127
  %516 = load ptr, ptr @df, align 8, !tbaa !99
  %517 = getelementptr inbounds %struct.df, ptr %516, i64 0, i32 1, i64 1
  %518 = load ptr, ptr %517, align 8, !tbaa !99
  %519 = getelementptr inbounds %struct.dataflow, ptr %518, i64 0, i32 2
  %520 = load i32, ptr %519, align 8, !tbaa !129
  %521 = icmp ugt i32 %520, %515
  call void @llvm.assume(i1 %521)
  %522 = getelementptr inbounds %struct.dataflow, ptr %518, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !131
  %524 = zext i32 %515 to i64
  %525 = getelementptr inbounds ptr, ptr %523, i64 %524
  %526 = load ptr, ptr %525, align 8, !tbaa !99
  %527 = getelementptr inbounds %struct.df_lr_bb_info, ptr %526, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !311
  %529 = call zeroext i8 @bitmap_equal_p(ptr noundef %322, ptr noundef %528) #16
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %531, label %546, !prof !312

531:                                              ; preds = %514
  %532 = load i32, ptr %394, align 8, !tbaa !127
  %533 = load ptr, ptr @df, align 8, !tbaa !99
  %534 = getelementptr inbounds %struct.df, ptr %533, i64 0, i32 1, i64 1
  %535 = load ptr, ptr %534, align 8, !tbaa !99
  %536 = getelementptr inbounds %struct.dataflow, ptr %535, i64 0, i32 2
  %537 = load i32, ptr %536, align 8, !tbaa !129
  %538 = icmp ugt i32 %537, %532
  call void @llvm.assume(i1 %538)
  %539 = getelementptr inbounds %struct.dataflow, ptr %535, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !131
  %541 = zext i32 %532 to i64
  %542 = getelementptr inbounds ptr, ptr %540, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !99
  %544 = getelementptr inbounds %struct.df_lr_bb_info, ptr %543, i64 0, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !311
  call void @bitmap_copy(ptr noundef %545, ptr noundef %322) #16
  br label %546

546:                                              ; preds = %531, %514, %257, %274
  %547 = phi ptr [ %82, %274 ], [ %82, %257 ], [ %322, %514 ], [ %322, %531 ]
  %548 = phi i1 [ %273, %274 ], [ %273, %257 ], [ %530, %514 ], [ %530, %531 ]
  %549 = zext i1 %548 to i8
  call void @bitmap_obstack_free(ptr noundef %547) #16
  br label %550

550:                                              ; preds = %227, %546
  %551 = phi i8 [ %549, %546 ], [ undef, %227 ]
  %552 = call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %34) #16
  %553 = icmp eq i8 %551, 0
  br i1 %553, label %597, label %554, !prof !277

554:                                              ; preds = %550
  %555 = icmp eq ptr %42, null
  br label %556

556:                                              ; preds = %554, %595
  %557 = phi i32 [ %596, %595 ], [ 0, %554 ]
  %558 = phi i8 [ %586, %595 ], [ %32, %554 ]
  br i1 %555, label %559, label %560

559:                                              ; preds = %556
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.6) #16
  br label %560

560:                                              ; preds = %559, %556
  %561 = load ptr, ptr %42, align 8, !tbaa !99
  %562 = icmp eq ptr %561, null
  br i1 %562, label %565, label %563

563:                                              ; preds = %560
  %564 = load i32, ptr %561, align 8, !tbaa !278
  br label %565

565:                                              ; preds = %563, %560
  %566 = phi i32 [ %564, %563 ], [ 0, %560 ]
  %567 = icmp eq i32 %566, %557
  br i1 %567, label %572, label %568

568:                                              ; preds = %565
  %569 = zext i32 %557 to i64
  %570 = getelementptr inbounds %struct.VEC_edge_base, ptr %561, i64 0, i32 2, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !99
  br label %572

572:                                              ; preds = %565, %568
  %573 = phi ptr [ %571, %568 ], [ null, %565 ]
  br i1 %567, label %597, label %574

574:                                              ; preds = %572
  %575 = load ptr, ptr %573, align 8, !tbaa !313
  %576 = getelementptr inbounds %struct.basic_block_def, ptr %575, i64 0, i32 9
  %577 = load i32, ptr %576, align 8, !tbaa !127
  %578 = call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %577) #16
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %585

580:                                              ; preds = %574
  %581 = load ptr, ptr %573, align 8, !tbaa !313
  %582 = getelementptr inbounds %struct.basic_block_def, ptr %581, i64 0, i32 9
  %583 = load i32, ptr %582, align 8, !tbaa !127
  %584 = call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %583) #16
  br label %585

585:                                              ; preds = %580, %574
  %586 = phi i8 [ %558, %580 ], [ 1, %574 ]
  %587 = load ptr, ptr %42, align 8, !tbaa !99
  %588 = icmp eq ptr %587, null
  br i1 %588, label %591, label %589

589:                                              ; preds = %585
  %590 = load i32, ptr %587, align 8, !tbaa !278
  br label %591

591:                                              ; preds = %589, %585
  %592 = phi i32 [ %590, %589 ], [ 0, %585 ]
  %593 = icmp ult i32 %557, %592
  br i1 %593, label %595, label %594

594:                                              ; preds = %591
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.6) #16
  br label %595

595:                                              ; preds = %591, %594
  %596 = add i32 %557, 1
  br label %556, !llvm.loop !314

597:                                              ; preds = %572, %550, %44
  %598 = phi i8 [ %32, %44 ], [ %32, %550 ], [ %558, %572 ]
  %599 = add nuw nsw i64 %31, 1
  %600 = icmp eq i64 %599, %29
  br i1 %600, label %601, label %30, !prof !273, !llvm.loop !315

601:                                              ; preds = %597, %26
  %602 = phi i8 [ 0, %26 ], [ %598, %597 ]
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %618, label %604, !prof !316

604:                                              ; preds = %601
  %605 = icmp eq i8 %0, 0
  %606 = call i32 @df_clear_flags(i32 noundef 1) #16
  call fastcc void @delete_unmarked_insns()
  %607 = load ptr, ptr @marked, align 8, !tbaa !99
  call void @sbitmap_zero(ptr noundef %607) #16
  call void @bitmap_clear(ptr noundef %6) #16
  call void @bitmap_clear(ptr noundef %7) #16
  %608 = load ptr, ptr @df, align 8, !tbaa !99
  %609 = getelementptr inbounds %struct.df, ptr %608, i64 0, i32 1, i64 1
  %610 = getelementptr inbounds %struct.df, ptr %608, i64 0, i32 1, i64 5
  %611 = select i1 %605, ptr %609, ptr %610
  %612 = load ptr, ptr %611, align 8, !tbaa !99
  call void @df_analyze_problem(ptr noundef %612, ptr noundef %8, ptr noundef %4, i32 noundef %5) #16
  %613 = and i32 %606, 1
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %617, label %615

615:                                              ; preds = %604
  %616 = call i32 @df_set_flags(i32 noundef 1) #16
  br label %617

617:                                              ; preds = %615, %604
  call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 1)
  br label %26

618:                                              ; preds = %601
  call fastcc void @delete_unmarked_insns()
  call void @bitmap_obstack_free(ptr noundef %6) #16
  call void @bitmap_obstack_free(ptr noundef %7) #16
  call void @bitmap_obstack_free(ptr noundef %8) #16
  ret void
}

declare ptr @df_get_postorder(i32 noundef) local_unnamed_addr #3

declare i32 @df_get_n_blocks(i32 noundef) local_unnamed_addr #3

declare void @df_analyze_problem(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @df_print_byte_regset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_byte_lr_simulate_artificial_refs_at_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @df_byte_lr_get_regno_start(i32 noundef) local_unnamed_addr #3

declare i32 @df_byte_lr_get_regno_len(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @df_compute_accessed_bytes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_byte_lr_simulate_defs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_byte_lr_simulate_uses(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_byte_lr_simulate_artificial_refs_at_top(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_initialize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_defs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_uses(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_finalize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_byte_lr_add_problem() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

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
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!97}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!35 = !{ptr @gate_ud_dce, ptr @dbg_cnt, i64 38}
!36 = !{ptr @rest_of_handle_ud_dce, ptr @df_chain_add_problem, i64 12}
!37 = !{ptr @rest_of_handle_ud_dce, ptr @df_analyze, i64 12}
!38 = !{ptr @rest_of_handle_ud_dce, ptr @get_max_uid, i64 38}
!39 = !{ptr @rest_of_handle_ud_dce, ptr @sbitmap_alloc, i64 38}
!40 = !{ptr @rest_of_handle_ud_dce, ptr @sbitmap_zero, i64 38}
!41 = !{ptr @rest_of_handle_ud_dce, ptr @prescan_insns_for_dce, i64 38}
!42 = !{ptr @rest_of_handle_ud_dce, ptr @mark_insn, i64 57}
!43 = !{ptr @rest_of_handle_ud_dce, ptr @vec_heap_p_reserve, i64 319}
!44 = !{ptr @rest_of_handle_ud_dce, ptr @free, i64 114}
!45 = !{ptr @rest_of_handle_ud_dce, ptr @df_remove_problem, i64 38}
!46 = !{ptr @rest_of_handle_ud_dce, ptr @delete_unmarked_insns, i64 38}
!47 = !{ptr @run_fast_df_dce, ptr @df_clear_flags, i64 240}
!48 = !{ptr @run_fast_df_dce, ptr @init_dce, i64 240}
!49 = !{ptr @run_fast_df_dce, ptr @fast_dce, i64 240}
!50 = !{ptr @run_fast_df_dce, ptr @free, i64 480}
!51 = !{ptr @run_fast_df_dce, ptr @bitmap_obstack_release, i64 480}
!52 = !{ptr @run_fast_df_dce, ptr @df_set_flags, i64 240}
!53 = !{ptr @rest_of_handle_fast_dce, ptr @init_dce, i64 38}
!54 = !{ptr @rest_of_handle_fast_dce, ptr @fast_dce, i64 38}
!55 = !{ptr @rest_of_handle_fast_dce, ptr @free, i64 76}
!56 = !{ptr @rest_of_handle_fast_dce, ptr @bitmap_obstack_release, i64 76}
!57 = !{ptr @run_fast_dce, ptr @init_dce, i64 29}
!58 = !{ptr @run_fast_dce, ptr @fast_dce, i64 29}
!59 = !{ptr @run_fast_dce, ptr @free, i64 58}
!60 = !{ptr @run_fast_dce, ptr @bitmap_obstack_release, i64 58}
!61 = !{ptr @gate_fast_dce, ptr @dbg_cnt, i64 38}
!62 = !{ptr @init_dce, ptr @df_chain_add_problem, i64 34}
!63 = !{ptr @init_dce, ptr @df_analyze, i64 93}
!64 = !{ptr @init_dce, ptr @bitmap_obstack_initialize, i64 546}
!65 = !{ptr @init_dce, ptr @get_max_uid, i64 307}
!66 = !{ptr @init_dce, ptr @sbitmap_alloc, i64 307}
!67 = !{ptr @init_dce, ptr @sbitmap_zero, i64 307}
!68 = !{ptr @prescan_insns_for_dce, ptr @bitmap_obstack_alloc_stat, i64 105}
!69 = !{ptr @prescan_insns_for_dce, ptr @bitmap_bit_p, i64 1771270}
!70 = !{ptr @prescan_insns_for_dce, ptr @insn_nothrow_p, i64 3569634}
!71 = !{ptr @prescan_insns_for_dce, ptr @volatile_refs_p, i64 3749384}
!72 = !{ptr @prescan_insns_for_dce, ptr @note_stores, i64 3569262}
!73 = !{ptr @prescan_insns_for_dce, ptr @vec_heap_p_reserve, i64 147}
!74 = !{ptr @prescan_insns_for_dce, ptr @bitmap_clear, i64 463190}
!75 = !{ptr @prescan_insns_for_dce, ptr @bitmap_obstack_free, i64 105}
!76 = !{ptr @delete_unmarked_insns, ptr @noop_move_p, i64 5578353}
!77 = !{ptr @delete_unmarked_insns, ptr @dbg_cnt, i64 1907}
!78 = !{ptr @delete_unmarked_insns, ptr @delete_insn_and_edges, i64 1907}
!79 = !{ptr @deletable_insn_p, ptr @insn_nothrow_p, i64 2}
!80 = !{ptr @deletable_insn_p, ptr @volatile_refs_p, i64 2}
!81 = !{ptr @mark_insn, ptr @vec_heap_p_reserve, i64 6}
!82 = !{ptr @mark_nonreg_stores_2, ptr @mark_insn, i64 81708}
!83 = !{ptr @fast_dce, ptr @df_get_postorder, i64 307}
!84 = !{ptr @fast_dce, ptr @df_get_n_blocks, i64 307}
!85 = !{ptr @fast_dce, ptr @bitmap_obstack_alloc_stat, i64 1399766}
!86 = !{ptr @fast_dce, ptr @prescan_insns_for_dce, i64 307}
!87 = !{ptr @fast_dce, ptr @bitmap_set_bit, i64 2798918}
!88 = !{ptr @fast_dce, ptr @bitmap_bit_p, i64 56323663}
!89 = !{ptr @fast_dce, ptr @bitmap_copy, i64 1398845}
!90 = !{ptr @fast_dce, ptr @df_simulate_initialize_backwards, i64 1398845}
!91 = !{ptr @fast_dce, ptr @df_simulate_defs, i64 4902943}
!92 = !{ptr @fast_dce, ptr @df_simulate_uses, i64 4902872}
!93 = !{ptr @fast_dce, ptr @df_simulate_finalize_backwards, i64 1398845}
!94 = !{ptr @fast_dce, ptr @bitmap_equal_p, i64 1398845}
!95 = !{ptr @fast_dce, ptr @bitmap_obstack_free, i64 1399766}
!96 = !{ptr @fast_dce, ptr @delete_unmarked_insns, i64 307}
!97 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!98 = !{!"function_entry_count", i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"any pointer", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !100, i64 8}
!104 = !{!"_IO_FILE", !105, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !100, i64 104, !105, i64 112, !105, i64 116, !106, i64 120, !107, i64 128, !101, i64 130, !101, i64 131, !100, i64 136, !106, i64 144, !100, i64 152, !100, i64 160, !100, i64 168, !100, i64 176, !106, i64 184, !105, i64 192, !101, i64 196}
!105 = !{!"int", !101, i64 0}
!106 = !{!"long", !101, i64 0}
!107 = !{!"short", !101, i64 0}
!108 = !{!104, !100, i64 16}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{!101, !101, i64 0}
!111 = !{!104, !100, i64 40}
!112 = !{!104, !100, i64 48}
!113 = !{!104, !105, i64 0}
!114 = !{!105, !105, i64 0}
!115 = distinct !{!115, !116, !117}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!"function_entry_count", i64 38}
!119 = !{!"dce.c;gate_ud_dce"}
!120 = !{!"branch_weights", i32 38, i32 0}
!121 = !{!"dce.c;rest_of_handle_ud_dce"}
!122 = !{!"branch_weights", i32 240, i32 105}
!123 = !{!"branch_weights", i32 345, i32 0}
!124 = !{!125, !100, i64 8}
!125 = !{!"function", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !105, i64 104, !105, i64 108, !105, i64 112, !105, i64 116, !105, i64 120, !105, i64 124, !100, i64 128, !105, i64 136, !105, i64 137, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139}
!126 = !{!"branch_weights", i32 1, i32 151}
!127 = !{!128, !105, i64 80}
!128 = !{!"basic_block_def", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !101, i64 32, !100, i64 48, !100, i64 56, !101, i64 64, !106, i64 72, !105, i64 80, !105, i64 84, !105, i64 88, !105, i64 92, !105, i64 96}
!129 = !{!130, !105, i64 16}
!130 = !{!"dataflow", !100, i64 0, !100, i64 8, !105, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !105, i64 48, !101, i64 52, !101, i64 53, !101, i64 54}
!131 = !{!130, !100, i64 8}
!132 = !{!133, !100, i64 8}
!133 = !{!"df_scan_bb_info", !100, i64 0, !100, i64 8}
!134 = !{!"branch_weights", i32 1, i32 153686}
!135 = !{!"branch_weights", i32 1, i32 614595}
!136 = !{!137, !100, i64 0}
!137 = !{!"df_link", !100, i64 0, !100, i64 8}
!138 = !{!"branch_weights", i32 614558, i32 57}
!139 = !{!140, !100, i64 0}
!140 = !{!"df_insn_info", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !105, i64 40}
!141 = !{!"branch_weights", i32 614595, i32 20}
!142 = distinct !{!142, !116, !117}
!143 = !{!"branch_weights", i32 153686, i32 460910}
!144 = distinct !{!144, !116, !117}
!145 = !{!"branch_weights", i32 151, i32 614597}
!146 = distinct !{!146, !116, !117}
!147 = !{!"branch_weights", i32 0, i32 671256}
!148 = !{!149, !105, i64 0}
!149 = !{!"VEC_rtx_base", !105, i64 0, !105, i64 4, !101, i64 8}
!150 = !{!"branch_weights", i32 38, i32 671218}
!151 = !{!"branch_weights", i32 0, i32 671218}
!152 = !{!153, !100, i64 248}
!153 = !{!"df", !101, i64 0, !101, i64 64, !100, i64 128, !154, i64 136, !154, i64 176, !100, i64 216, !100, i64 224, !100, i64 232, !105, i64 240, !105, i64 244, !100, i64 248, !105, i64 256, !105, i64 260, !100, i64 264, !100, i64 272, !100, i64 280, !100, i64 288, !100, i64 296, !100, i64 304, !100, i64 312, !100, i64 320, !100, i64 328, !100, i64 336, !105, i64 344, !105, i64 348, !100, i64 352, !105, i64 360, !105, i64 364, !101, i64 365, !101, i64 366}
!154 = !{!"df_ref_info", !100, i64 0, !100, i64 8, !100, i64 16, !105, i64 24, !105, i64 28, !105, i64 32, !105, i64 36}
!155 = !{!140, !100, i64 16}
!156 = !{!"branch_weights", i32 57677, i32 613541}
!157 = !{!"branch_weights", i32 613541, i32 0}
!158 = !{!"branch_weights", i32 1, i32 613540}
!159 = !{!"branch_weights", i32 150664, i32 520198}
!160 = !{!"branch_weights", i32 0, i32 6285635}
!161 = !{!106, !106, i64 0}
!162 = !{!"branch_weights", i32 5604075, i32 681560}
!163 = !{!"branch_weights", i32 38, i32 671180}
!164 = !{!149, !105, i64 4}
!165 = !{!"branch_weights", i32 423, i32 670757}
!166 = !{!167, !100, i64 0}
!167 = !{!"simple_bitmap_def", !100, i64 0, !105, i64 8, !105, i64 12, !101, i64 16}
!168 = !{!"branch_weights", i32 5604075, i32 0}
!169 = !{!"branch_weights", i32 4983622, i32 620453}
!170 = !{!"branch_weights", i32 5399383, i32 204692}
!171 = !{!"branch_weights", i32 0, i32 204692}
!172 = !{!"branch_weights", i32 613540, i32 57322}
!173 = distinct !{!173, !116, !117}
!174 = distinct !{!174, !116, !117}
!175 = distinct !{!175, !116, !117}
!176 = !{!"branch_weights", i32 0, i32 38}
!177 = !{!"function_entry_count", i64 240}
!178 = !{!"branch_weights", i32 0, i32 240}
!179 = !{!"dce.c;rest_of_handle_fast_dce"}
!180 = !{!"function_entry_count", i64 29}
!181 = !{!"branch_weights", i32 0, i32 29}
!182 = !{!"dce.c;gate_fast_dce"}
!183 = !{!"function_entry_count", i64 307}
!184 = !{!"dce.c;init_dce"}
!185 = !{!"branch_weights", i32 38, i32 67}
!186 = !{!"branch_weights", i32 38, i32 307}
!187 = !{!"function_entry_count", i64 345}
!188 = !{!"dce.c;prescan_insns_for_dce"}
!189 = !{!"branch_weights", i32 0, i32 105}
!190 = !{!191, !100, i64 0}
!191 = !{!"control_flow_graph", !100, i64 0, !100, i64 8, !100, i64 16, !105, i64 24, !105, i64 28, !105, i64 32, !100, i64 40, !105, i64 48, !101, i64 52, !101, i64 60, !105, i64 68, !105, i64 72}
!192 = !{!128, !100, i64 56}
!193 = !{!191, !100, i64 8}
!194 = !{!"branch_weights", i32 1, i32 344}
!195 = !{!196, !100, i64 8}
!196 = !{!"rtl_bb_info", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !105, i64 32}
!197 = !{!"branch_weights", i32 0, i32 1552457}
!198 = !{!"branch_weights", i32 1, i32 201}
!199 = !{!196, !100, i64 0}
!200 = !{!"branch_weights", i32 1552255, i32 8092486}
!201 = !{!"branch_weights", i32 5605991, i32 2486495}
!202 = !{!"branch_weights", i32 3825945, i32 1780046}
!203 = !{!"branch_weights", i32 1780046, i32 0}
!204 = !{!"branch_weights", i32 3587320, i32 2018671}
!205 = !{!"branch_weights", i32 0, i32 3587320}
!206 = !{!"branch_weights", i32 3587320, i32 0}
!207 = !{!"branch_weights", i32 3406255, i32 374, i32 0, i32 0, i32 180691, i32 0, i32 0, i32 0}
!208 = !{!209, !105, i64 0}
!209 = !{!"rtvec_def", !105, i64 0, !101, i64 8}
!210 = !{!"branch_weights", i32 361705, i32 180691}
!211 = !{!"branch_weights", i32 361705, i32 0, i32 0, i32 0}
!212 = !{!"branch_weights", i32 0, i32 361705}
!213 = distinct !{!213, !116, !117}
!214 = !{!"branch_weights", i32 2019045, i32 3586946}
!215 = !{!"branch_weights", i32 455864, i32 3131082}
!216 = !{!"branch_weights", i32 671218, i32 4932857}
!217 = !{!"branch_weights", i32 202, i32 8092284}
!218 = !{!"branch_weights", i32 201, i32 9644540}
!219 = distinct !{!219, !116, !117}
!220 = !{!"branch_weights", i32 1089267, i32 463190}
!221 = !{!"branch_weights", i32 344, i32 1552113}
!222 = distinct !{!222, !116, !117}
!223 = !{!"dce.c;delete_unmarked_insns"}
!224 = !{!128, !100, i64 48}
!225 = !{!"branch_weights", i32 5605991, i32 0}
!226 = !{!"branch_weights", i32 1916, i32 5604075}
!227 = !{!"branch_weights", i32 0, i32 1916}
!228 = !{!"branch_weights", i32 1916, i32 0}
!229 = !{!140, !100, i64 8}
!230 = !{!"branch_weights", i32 1, i32 1915}
!231 = !{!153, !100, i64 232}
!232 = !{!233, !100, i64 0}
!233 = !{!"df_reg_info", !100, i64 0, !105, i64 8}
!234 = !{!"branch_weights", i32 1, i32 0}
!235 = distinct !{!235, !116, !117}
!236 = !{!"branch_weights", i32 1915, i32 1}
!237 = distinct !{!237, !116, !117}
!238 = distinct !{!238, !116, !117}
!239 = distinct !{!239, !116, !117}
!240 = !{!"dce.c;fini_dce"}
!241 = !{!"branch_weights", i32 0, i32 307}
!242 = !{!"function_entry_count", i64 3}
!243 = !{!"dce.c;deletable_insn_p"}
!244 = !{!"function_entry_count", i64 81768}
!245 = !{!"dce.c;mark_insn"}
!246 = !{!247, !100, i64 16}
!247 = !{!"mem_attrs", !100, i64 0, !100, i64 8, !100, i64 16, !105, i64 24, !105, i64 28, !101, i64 32}
!248 = distinct !{!248, !116, !117}
!249 = distinct !{!249, !116, !117}
!250 = distinct !{!250, !116, !117}
!251 = distinct !{!251, !116, !117}
!252 = distinct !{!252, !116, !117}
!253 = distinct !{!253, !116, !117}
!254 = distinct !{!254, !116, !117}
!255 = distinct !{!255, !116, !117}
!256 = distinct !{!256, !116, !117}
!257 = distinct !{!257, !116, !117}
!258 = !{!259, !100, i64 0}
!259 = !{!"bitmap_head_def", !100, i64 0, !100, i64 8, !105, i64 16, !100, i64 24}
!260 = distinct !{!260, !116, !117}
!261 = !{!"function_entry_count", i64 3287352}
!262 = !{!"dce.c;mark_nonreg_stores_1"}
!263 = !{!"branch_weights", i32 155089, i32 3132263}
!264 = !{!"branch_weights", i32 2477795, i32 654468}
!265 = !{!"function_entry_count", i64 480608}
!266 = !{!"dce.c;mark_nonreg_stores_2"}
!267 = !{!"branch_weights", i32 24744, i32 455864}
!268 = !{!"branch_weights", i32 374156, i32 81708}
!269 = !{!"dce.c;fast_dce"}
!270 = !{!153, !100, i64 272}
!271 = !{!153, !100, i64 280}
!272 = !{!"branch_weights", i32 306, i32 1}
!273 = !{!"branch_weights", i32 306, i32 1399154}
!274 = distinct !{!274, !116, !117}
!275 = !{!191, !100, i64 16}
!276 = !{!"branch_weights", i32 614, i32 1398846}
!277 = !{!"branch_weights", i32 1398846, i32 0}
!278 = !{!279, !105, i64 0}
!279 = !{!"VEC_edge_base", !105, i64 0, !105, i64 4, !101, i64 8}
!280 = !{!281, !105, i64 48}
!281 = !{!"edge_def", !100, i64 0, !100, i64 8, !101, i64 16, !100, i64 24, !100, i64 32, !105, i64 40, !105, i64 44, !105, i64 48, !105, i64 52, !106, i64 56}
!282 = distinct !{!282, !116, !117}
!283 = !{!130, !100, i64 0}
!284 = !{!285, !100, i64 64}
!285 = !{!"df_problem", !105, i64 0, !105, i64 4, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !100, i64 104, !100, i64 112, !100, i64 120, !100, i64 128, !100, i64 136, !100, i64 144, !105, i64 152, !101, i64 156}
!286 = !{!287, !100, i64 24}
!287 = !{!"df_byte_lr_bb_info", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24}
!288 = distinct !{!288, !116, !117}
!289 = distinct !{!289, !116, !117}
!290 = distinct !{!290, !116, !117}
!291 = distinct !{!291, !116, !117}
!292 = !{!287, !100, i64 16}
!293 = !{!"branch_weights", i32 0, i32 4009785}
!294 = !{!"branch_weights", i32 1398846, i32 2610939}
!295 = !{!"branch_weights", i32 2610939, i32 0}
!296 = !{!"branch_weights", i32 0, i32 2610939}
!297 = !{!298, !100, i64 24}
!298 = !{!"df_lr_bb_info", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24}
!299 = distinct !{!299, !116, !117}
!300 = !{!"branch_weights", i32 1, i32 163}
!301 = !{!"branch_weights", i32 1398682, i32 7213223}
!302 = !{!"branch_weights", i32 4932929, i32 2280294}
!303 = !{!"branch_weights", i32 1, i32 1922769}
!304 = !{!"branch_weights", i32 1922769, i32 26053901}
!305 = distinct !{!305, !116, !117}
!306 = !{!"branch_weights", i32 24966511, i32 3010159}
!307 = !{!"branch_weights", i32 24966511, i32 0}
!308 = !{!"branch_weights", i32 72, i32 4932857}
!309 = !{!"branch_weights", i32 163, i32 8611742}
!310 = distinct !{!310, !116, !117}
!311 = !{!298, !100, i64 16}
!312 = !{!"branch_weights", i32 0, i32 1398846}
!313 = !{!281, !100, i64 0}
!314 = distinct !{!314, !116, !117}
!315 = distinct !{!315, !116, !117}
!316 = !{!"branch_weights", i32 307, i32 0}
