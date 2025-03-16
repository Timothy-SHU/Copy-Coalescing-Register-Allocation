; ModuleID = 'src/z22.c'
source_filename = "src/z22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%union.anon.12 = type { ptr }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.anon.13 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }

@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"FlushInners: Up(hd)!\00", align 1
@PrintSym = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"FlushInners: FOLLOWS!\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"FlushInners:\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ExpandRecursives: recs == nilobj!\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ExpandRecursives: index!\00", align 1
@xx_hold = external local_unnamed_addr global ptr, align 8
@xx_res = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"HandleHeader: type(header)!\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"HandleHeader: header parents!\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"no header for %s to remove\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"@EndHeaderComponent\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Promote/END_HEADER!\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"HandleHeader: END_HEADER/gap!\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"HandleHeader: type(gaplink)!\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"HH!\00", align 1
@Promote.first = internal unnamed_addr global i1 false, align 4
@Promote.page_label = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"Promote: hd!\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Promote: stop_link!\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Promote: stop_link == Down(hd)!\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Promote: missing GAP_OBJ!\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"galley %s must have a single column mark\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Promote: nojoin case, can't find VCAT\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"FlushRootGalley: UNATTACHED!\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"FlushRootGalley: unattached HEAD!\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"galley %s deleted (never attached)\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Promote: type(z) != PAGE_LABEL!\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Promote: PAGE_LABEL Down(z) == z!\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"%s symbol ignored (out of place)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"Promote:\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Promote: tmp1 not COL_THR!\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Promote: tmp2 not COL_THR!\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Promote: header under SPLIT!\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"Promote: Down(hd) == stop_link!\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Promote: dims!\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"KillGalley: precondition!\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"KillGalley: UNATTACHED precondition!\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"KillGalley: prnt!\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"KillGalley: RECEPTIVE!\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"KillGalley: UNATTACHED!\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"KillGalley: head\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"FreeGalley: pre!\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"FreeGalley: Up(hd)!\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"FreeGalley: ACAT!\00", align 1
@InputSym = external local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [33 x i8] c"forcing galley after input point\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"FreeGalley/RECEIVING: type(z) != HEAD!\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"SetTarget: type(hd) != HEAD!\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"SetTarget: type(x) != CLOSURE!\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"SetTarget: x has no target!\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"SetTarget: Down(PAR)!\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"SetTarget:  cr == nilobj!\00", align 1
@InitialStyle = external global %struct.STYLE, align 4
@.str.55 = private unnamed_addr constant [38 x i8] c"target of %s is not a cross reference\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"left parameter of %s is not a symbol\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"replacing %s%s? by %s%s%s\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"foll_or_prec\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"replacing %s%s%s by %s%s%s\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"DisposeHeaders: type(headers(hd))!\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"FindSplit: missing galley component\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"FindSplitInGalley failed\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"FindSplitInGalley:\00", align 1
@MakeDead.dead_count = internal unnamed_addr global i32 0, align 4
@MakeDead.dead_store = internal unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @Interpose(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = zext i8 %7 to i32
  store i32 %8, ptr @zz_size, align 4, !tbaa !8
  %9 = zext i8 %7 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %15 = tail call ptr @GetMemory(i32 noundef %8, ptr noundef %14) #7
  br label %18

16:                                               ; preds = %4
  store ptr %11, ptr @zz_hold, align 8, !tbaa !10
  %17 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %17, ptr %10, align 8, !tbaa !10
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi ptr [ %15, %13 ], [ %11, %16 ]
  %20 = trunc i32 %1 to i8
  %21 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  store i8 %20, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1, i32 1
  store ptr %19, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  store ptr %19, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.LIST, ptr %19, i64 0, i32 1
  store ptr %19, ptr %24, align 8, !tbaa !5
  store ptr %19, ptr %19, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 1, i32 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1, i32 0, i32 2
  store i16 %26, ptr %27, align 2, !tbaa !5
  %28 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1048575
  %31 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -1048576
  %34 = or disjoint i32 %33, %30
  store i32 %34, ptr %31, align 4
  %35 = load i32, ptr %28, align 4
  %36 = and i32 %35, -1048576
  %37 = or disjoint i32 %36, %30
  store i32 %37, ptr %31, align 4
  %38 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %42, label %43

42:                                               ; preds = %18
  store ptr null, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %19, ptr @zz_res, align 8, !tbaa !10
  store ptr null, ptr @zz_hold, align 8, !tbaa !10
  br label %51

43:                                               ; preds = %18
  %44 = load ptr, ptr %38, align 8, !tbaa !5
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1
  store ptr %44, ptr %45, align 8, !tbaa !5
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1, i32 1
  store ptr %40, ptr %46, align 8, !tbaa !5
  store ptr %0, ptr %39, align 8, !tbaa !5
  store ptr %0, ptr %38, align 8, !tbaa !5
  store ptr %40, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %19, ptr @zz_res, align 8, !tbaa !10
  store ptr %40, ptr @zz_hold, align 8, !tbaa !10
  %47 = load ptr, ptr %45, align 8, !tbaa !5
  store ptr %47, ptr @zz_tmp, align 8, !tbaa !10
  %48 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %48, ptr %45, align 8, !tbaa !5
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1, i32 1
  store ptr %40, ptr %49, align 8, !tbaa !5
  store ptr %47, ptr %23, align 8, !tbaa !5
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1, i32 1
  store ptr %19, ptr %50, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %42, %43
  %52 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  store i32 %53, ptr @zz_size, align 4, !tbaa !8
  %54 = zext i8 %52 to i64
  %55 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %60 = tail call ptr @GetMemory(i32 noundef %53, ptr noundef %59) #7
  br label %63

61:                                               ; preds = %51
  store ptr %56, ptr @zz_hold, align 8, !tbaa !10
  %62 = load ptr, ptr %56, align 8, !tbaa !5
  store ptr %62, ptr %55, align 8, !tbaa !10
  br label %63

63:                                               ; preds = %58, %61
  %64 = phi ptr [ %60, %58 ], [ %56, %61 ]
  %65 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 1
  store i8 0, ptr %65, align 8, !tbaa !5
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !5
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1
  store ptr %64, ptr %67, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.LIST, ptr %64, i64 0, i32 1
  store ptr %64, ptr %68, align 8, !tbaa !5
  store ptr %64, ptr %64, align 8, !tbaa !5
  store ptr %64, ptr @xx_link, align 8, !tbaa !10
  store ptr %64, ptr @zz_res, align 8, !tbaa !10
  store ptr %19, ptr @zz_hold, align 8, !tbaa !10
  %69 = load ptr, ptr %19, align 8, !tbaa !5
  store ptr %69, ptr @zz_tmp, align 8, !tbaa !10
  %70 = load ptr, ptr %64, align 8, !tbaa !5
  store ptr %70, ptr %19, align 8, !tbaa !5
  %71 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %72 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.LIST, ptr %73, i64 0, i32 1
  store ptr %71, ptr %74, align 8, !tbaa !5
  %75 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %75, ptr %72, align 8, !tbaa !5
  %76 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %77 = getelementptr inbounds %struct.LIST, ptr %75, i64 0, i32 1
  store ptr %76, ptr %77, align 8, !tbaa !5
  %78 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %78, ptr @zz_res, align 8, !tbaa !10
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %63
  %81 = load ptr, ptr %38, align 8, !tbaa !5
  store ptr %81, ptr @zz_tmp, align 8, !tbaa !10
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  store ptr %83, ptr %38, align 8, !tbaa !5
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1, i32 1
  store ptr %0, ptr %84, align 8, !tbaa !5
  store ptr %81, ptr %82, align 8, !tbaa !5
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1, i32 1
  store ptr %78, ptr %85, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %63, %80
  %87 = getelementptr inbounds %struct.word_type, ptr %2, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 3
  store i32 %88, ptr %89, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.word_type, ptr %2, i64 0, i32 3, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 3, i32 1
  store i32 %91, ptr %92, align 8, !tbaa !5
  %93 = getelementptr inbounds i8, ptr %3, i64 52
  %94 = load i32, ptr %93, align 4, !tbaa !5
  %95 = getelementptr inbounds i8, ptr %19, i64 52
  store i32 %94, ptr %95, align 4, !tbaa !5
  %96 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 3, i32 1, i64 4
  %97 = load i32, ptr %96, align 4, !tbaa !5
  %98 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 3, i32 1, i64 4
  store i32 %97, ptr %98, align 4, !tbaa !5
  %99 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 1610612736
  %102 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, -1610612737
  %105 = or disjoint i32 %104, %101
  store i32 %105, ptr %102, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @FlushInners(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.2) #7
  %11 = load ptr, ptr %5, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %6, %4 ], [ %11, %8 ]
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %16, %14 ], [ %13, %12 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.closure_type, ptr %16, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.closure_type, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load ptr, ptr @PrintSym, align 8, !tbaa !10
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call i32 @DisposeObject(ptr noundef %0) #7
  br label %180

29:                                               ; preds = %20, %2
  %30 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %162, label %33

33:                                               ; preds = %29, %159
  %34 = phi ptr [ %160, %159 ], [ %31, %29 ]
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi ptr [ %38, %35 ], [ %34, %33 ]
  %37 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 1
  %40 = load i8, ptr %39, align 8, !tbaa !5
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %35, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 1
  store ptr %34, ptr @xx_link, align 8, !tbaa !10
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, %34
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  store ptr %45, ptr @zz_res, align 8, !tbaa !10
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  store ptr %49, ptr %50, align 8, !tbaa !5
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %49, i64 0, i64 1, i32 1
  store ptr %45, ptr %51, align 8, !tbaa !5
  store ptr %34, ptr %44, align 8, !tbaa !5
  store ptr %34, ptr %48, align 8, !tbaa !5
  br label %52

52:                                               ; preds = %42, %47
  store ptr %34, ptr @zz_hold, align 8, !tbaa !10
  %53 = getelementptr inbounds %struct.LIST, ptr %34, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %54, %34
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  store ptr %54, ptr @zz_res, align 8, !tbaa !10
  %57 = load ptr, ptr %34, align 8, !tbaa !5
  store ptr %57, ptr %54, align 8, !tbaa !5
  %58 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %59 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.LIST, ptr %60, i64 0, i32 1
  store ptr %58, ptr %61, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  store ptr %59, ptr %62, align 8, !tbaa !5
  store ptr %59, ptr %59, align 8, !tbaa !5
  %63 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %64

64:                                               ; preds = %52, %56
  %65 = phi ptr [ %34, %52 ], [ %63, %56 ]
  store ptr %65, ptr @zz_hold, align 8, !tbaa !10
  %66 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 1
  %67 = load i8, ptr %66, align 8, !tbaa !5
  %68 = add i8 %67, -11
  %69 = icmp ult i8 %68, 2
  %70 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 1, i32 0, i32 1
  %71 = zext i8 %67 to i64
  %72 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %71
  %73 = select i1 %69, ptr %70, ptr %72
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i32
  store i32 %75, ptr @zz_size, align 4, !tbaa !8
  %76 = zext i8 %74 to i64
  %77 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !10
  store ptr %78, ptr %65, align 8, !tbaa !5
  %79 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %80 = load i32, ptr @zz_size, align 4, !tbaa !8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %81
  store ptr %79, ptr %82, align 8, !tbaa !10
  %83 = load i8, ptr %43, align 8, !tbaa !5
  switch i8 %83, label %154 [
    i8 119, label %159
    i8 122, label %84
    i8 120, label %84
    i8 124, label %105
    i8 -123, label %159
  ]

84:                                               ; preds = %64, %64
  %85 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, %38
  br i1 %87, label %159, label %88

88:                                               ; preds = %84, %88
  %89 = phi ptr [ %91, %88 ], [ %86, %84 ]
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.word_type, ptr %91, i64 0, i32 1
  %93 = load i8, ptr %92, align 8, !tbaa !5
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %88, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.closure_type, ptr %91, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %97, i64 41
  %101 = load i24, ptr %100, align 1
  %102 = and i24 %101, 2048
  %103 = icmp eq i24 %102, 0
  br i1 %103, label %104, label %159

104:                                              ; preds = %99, %95
  tail call void @FlushGalley(ptr noundef nonnull %91) #7
  br label %159

105:                                              ; preds = %64
  %106 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  br label %108

108:                                              ; preds = %108, %105
  %109 = phi ptr [ %107, %105 ], [ %111, %108 ]
  %110 = getelementptr inbounds [2 x %struct.LIST], ptr %109, i64 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.word_type, ptr %111, i64 0, i32 1
  %113 = load i8, ptr %112, align 8, !tbaa !5
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %108, label %115

115:                                              ; preds = %108
  %116 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = load ptr, ptr %116, align 8, !tbaa !5
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %159, label %121

121:                                              ; preds = %115, %121
  %122 = phi ptr [ %123, %121 ], [ %119, %115 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds %struct.word_type, ptr %123, i64 0, i32 1
  %125 = load i8, ptr %124, align 8, !tbaa !5
  switch i8 %125, label %126 [
    i8 0, label %121
    i8 125, label %129
  ]

126:                                              ; preds = %121
  %127 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %128 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %127, ptr noundef nonnull @.str.4) #7
  br label %129

129:                                              ; preds = %121, %126
  %130 = getelementptr inbounds i8, ptr %123, i64 42
  %131 = load i16, ptr %130, align 2
  %132 = and i16 %131, 32
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %159, label %134

134:                                              ; preds = %129
  %135 = and i16 %131, -33
  store i16 %135, ptr %130, align 2
  %136 = getelementptr inbounds [2 x %struct.LIST], ptr %123, i64 0, i64 1, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  br label %138

138:                                              ; preds = %138, %134
  %139 = phi ptr [ %137, %134 ], [ %140, %138 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.word_type, ptr %140, i64 0, i32 1
  %142 = load i8, ptr %141, align 8, !tbaa !5
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %138, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.closure_type, ptr %140, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !5
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds i8, ptr %146, i64 41
  %150 = load i24, ptr %149, align 1
  %151 = and i24 %150, 2048
  %152 = icmp eq i24 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148, %144
  tail call void @FlushGalley(ptr noundef nonnull %140) #7
  br label %159

154:                                              ; preds = %64
  %155 = zext i8 %83 to i32
  %156 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %157 = tail call ptr @Image(i32 noundef %155) #7
  %158 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %156, ptr noundef nonnull @.str.6, ptr noundef %157) #7
  br label %159

159:                                              ; preds = %115, %148, %153, %129, %84, %104, %99, %154, %64, %64
  %160 = load ptr, ptr %30, align 8, !tbaa !5
  %161 = icmp eq ptr %160, %0
  br i1 %161, label %162, label %33

162:                                              ; preds = %159, %29
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %163 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %164 = load i8, ptr %163, align 8, !tbaa !5
  %165 = add i8 %164, -11
  %166 = icmp ult i8 %165, 2
  %167 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 1
  %168 = zext i8 %164 to i64
  %169 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %168
  %170 = select i1 %166, ptr %167, ptr %169
  %171 = load i8, ptr %170, align 1, !tbaa !5
  %172 = zext i8 %171 to i32
  store i32 %172, ptr @zz_size, align 4, !tbaa !8
  %173 = zext i8 %171 to i64
  %174 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !10
  store ptr %175, ptr %0, align 8, !tbaa !5
  %176 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %177 = load i32, ptr @zz_size, align 4, !tbaa !8
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %178
  store ptr %176, ptr %179, align 8, !tbaa !10
  br label %180

180:                                              ; preds = %162, %27
  ret void
}

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare void @FlushGalley(ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExpandRecursives(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CONSTRAINT, align 4
  %3 = alloca %struct.CONSTRAINT, align 4
  %4 = alloca %struct.CONSTRAINT, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  store i32 8388607, ptr %2, align 4, !tbaa !12
  %9 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 1
  store i32 8388607, ptr %9, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 2
  store i32 8388607, ptr %10, align 4, !tbaa !15
  store ptr null, ptr %5, align 8, !tbaa !10
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %14 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %13, ptr noundef nonnull @.str.7) #7
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %914, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  %21 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  %22 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 2
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  br label %25

25:                                               ; preds = %19, %910
  %26 = phi ptr [ %17, %19 ], [ %912, %910 ]
  %27 = phi ptr [ undef, %19 ], [ %911, %910 ]
  br label %28

28:                                               ; preds = %25, %381
  %29 = phi ptr [ %26, %25 ], [ %400, %381 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi ptr [ %33, %30 ], [ %29, %28 ]
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !5
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %30, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  store ptr %29, ptr @xx_link, align 8, !tbaa !10
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, %29
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  store ptr %40, ptr @zz_res, align 8, !tbaa !10
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1
  store ptr %44, ptr %45, align 8, !tbaa !5
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1, i32 1
  store ptr %40, ptr %46, align 8, !tbaa !5
  store ptr %29, ptr %39, align 8, !tbaa !5
  store ptr %29, ptr %43, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %37, %42
  store ptr %29, ptr @zz_hold, align 8, !tbaa !10
  %48 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, %29
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  store ptr %49, ptr @zz_res, align 8, !tbaa !10
  %52 = load ptr, ptr %29, align 8, !tbaa !5
  store ptr %52, ptr %49, align 8, !tbaa !5
  %53 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %54 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.LIST, ptr %55, i64 0, i32 1
  store ptr %53, ptr %56, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.LIST, ptr %54, i64 0, i32 1
  store ptr %54, ptr %57, align 8, !tbaa !5
  store ptr %54, ptr %54, align 8, !tbaa !5
  %58 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %59

59:                                               ; preds = %47, %51
  %60 = phi ptr [ %29, %47 ], [ %58, %51 ]
  store ptr %60, ptr @zz_hold, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.word_type, ptr %60, i64 0, i32 1
  %62 = load i8, ptr %61, align 8, !tbaa !5
  %63 = add i8 %62, -11
  %64 = icmp ult i8 %63, 2
  %65 = getelementptr inbounds %struct.word_type, ptr %60, i64 0, i32 1, i32 0, i32 1
  %66 = zext i8 %62 to i64
  %67 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %66
  %68 = select i1 %64, ptr %65, ptr %67
  %69 = load i8, ptr %68, align 1, !tbaa !5
  %70 = zext i8 %69 to i32
  store i32 %70, ptr @zz_size, align 4, !tbaa !8
  %71 = zext i8 %69 to i64
  %72 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  store ptr %73, ptr %60, align 8, !tbaa !5
  %74 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %75 = load i32, ptr @zz_size, align 4, !tbaa !8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %76
  store ptr %74, ptr %77, align 8, !tbaa !10
  %78 = load i8, ptr %38, align 8, !tbaa !5
  %79 = icmp eq i8 %78, 123
  br i1 %79, label %83, label %80

80:                                               ; preds = %59
  %81 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %82 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %81, ptr noundef nonnull @.str.8) #7
  br label %83

83:                                               ; preds = %80, %59
  %84 = getelementptr inbounds %struct.closure_type, ptr %33, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !5
  %86 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !5
  %87 = zext i8 %86 to i32
  store i32 %87, ptr @zz_size, align 4, !tbaa !8
  %88 = zext i8 %86 to i64
  %89 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %94 = call ptr @GetMemory(i32 noundef %87, ptr noundef %93) #7
  store ptr %94, ptr @zz_hold, align 8, !tbaa !10
  br label %97

95:                                               ; preds = %83
  store ptr %90, ptr @zz_hold, align 8, !tbaa !10
  %96 = load ptr, ptr %90, align 8, !tbaa !5
  store ptr %96, ptr %89, align 8, !tbaa !10
  br label %97

97:                                               ; preds = %92, %95
  %98 = phi ptr [ %94, %92 ], [ %90, %95 ]
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  store i8 8, ptr %99, align 8, !tbaa !5
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %98, ptr %101, align 8, !tbaa !5
  store ptr %98, ptr %100, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.LIST, ptr %98, i64 0, i32 1
  store ptr %98, ptr %102, align 8, !tbaa !5
  store ptr %98, ptr %98, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.closure_type, ptr %85, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 5
  store ptr %104, ptr %105, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 2
  %107 = getelementptr inbounds i8, ptr %98, i64 42
  %108 = load i16, ptr %107, align 2
  %109 = and i16 %108, -4225
  %110 = or disjoint i16 %109, 128
  store i16 %110, ptr %107, align 2
  %111 = getelementptr inbounds %struct.head_type, ptr %98, i64 0, i32 11
  %112 = getelementptr inbounds %struct.head_type, ptr %98, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %111, i8 0, i64 32, i1 false)
  %113 = load ptr, ptr %103, align 8, !tbaa !5
  %114 = getelementptr inbounds i8, ptr %113, i64 41
  %115 = load i24, ptr %114, align 1
  %116 = lshr i24 %115, 13
  %117 = trunc i24 %116 to i16
  %118 = and i16 %117, 256
  %119 = and i16 %110, -4355
  %120 = or disjoint i16 %118, %119
  %121 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %121, i8 0, i64 16, i1 false)
  store i8 -127, ptr %106, align 8, !tbaa !5
  store i16 %120, ptr %107, align 2
  %122 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 1
  %123 = call ptr @CopyObject(ptr noundef %85, ptr noundef nonnull %122) #7
  %124 = call ptr @DetachEnv(ptr noundef %123) #7
  %125 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %126 = zext i8 %125 to i32
  store i32 %126, ptr @zz_size, align 4, !tbaa !8
  %127 = zext i8 %125 to i64
  %128 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !10
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %97
  %132 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %133 = call ptr @GetMemory(i32 noundef %126, ptr noundef %132) #7
  br label %136

134:                                              ; preds = %97
  store ptr %129, ptr @zz_hold, align 8, !tbaa !10
  %135 = load ptr, ptr %129, align 8, !tbaa !5
  store ptr %135, ptr %128, align 8, !tbaa !10
  br label %136

136:                                              ; preds = %131, %134
  %137 = phi ptr [ %133, %131 ], [ %129, %134 ]
  %138 = getelementptr inbounds %struct.word_type, ptr %137, i64 0, i32 1
  store i8 0, ptr %138, align 8, !tbaa !5
  %139 = getelementptr inbounds [2 x %struct.LIST], ptr %137, i64 0, i64 1, i32 1
  store ptr %137, ptr %139, align 8, !tbaa !5
  %140 = getelementptr inbounds [2 x %struct.LIST], ptr %137, i64 0, i64 1
  store ptr %137, ptr %140, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.LIST, ptr %137, i64 0, i32 1
  store ptr %137, ptr %141, align 8, !tbaa !5
  store ptr %137, ptr %137, align 8, !tbaa !5
  store ptr %137, ptr @xx_link, align 8, !tbaa !10
  store ptr %137, ptr @zz_res, align 8, !tbaa !10
  store ptr %98, ptr @zz_hold, align 8, !tbaa !10
  %142 = load ptr, ptr %98, align 8, !tbaa !5
  store ptr %142, ptr @zz_tmp, align 8, !tbaa !10
  %143 = load ptr, ptr %137, align 8, !tbaa !5
  store ptr %143, ptr %98, align 8, !tbaa !5
  %144 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %145 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %146 = load ptr, ptr %145, align 8, !tbaa !5
  %147 = getelementptr inbounds %struct.LIST, ptr %146, i64 0, i32 1
  store ptr %144, ptr %147, align 8, !tbaa !5
  %148 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %148, ptr %145, align 8, !tbaa !5
  %149 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %150 = getelementptr inbounds %struct.LIST, ptr %148, i64 0, i32 1
  store ptr %149, ptr %150, align 8, !tbaa !5
  %151 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %151, ptr @zz_res, align 8, !tbaa !10
  store ptr %123, ptr @zz_hold, align 8, !tbaa !10
  %152 = icmp eq ptr %123, null
  %153 = icmp eq ptr %151, null
  %154 = select i1 %152, i1 true, i1 %153
  br i1 %154, label %162, label %155

155:                                              ; preds = %136
  %156 = getelementptr inbounds [2 x %struct.LIST], ptr %123, i64 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !5
  store ptr %157, ptr @zz_tmp, align 8, !tbaa !10
  %158 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !5
  store ptr %159, ptr %156, align 8, !tbaa !5
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1, i32 1
  store ptr %123, ptr %160, align 8, !tbaa !5
  store ptr %157, ptr %158, align 8, !tbaa !5
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %157, i64 0, i64 1, i32 1
  store ptr %151, ptr %161, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %136, %155
  %163 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %164 = zext i8 %163 to i32
  store i32 %164, ptr @zz_size, align 4, !tbaa !8
  %165 = zext i8 %163 to i64
  %166 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !10
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %171 = call ptr @GetMemory(i32 noundef %164, ptr noundef %170) #7
  br label %174

172:                                              ; preds = %162
  store ptr %167, ptr @zz_hold, align 8, !tbaa !10
  %173 = load ptr, ptr %167, align 8, !tbaa !5
  store ptr %173, ptr %166, align 8, !tbaa !10
  br label %174

174:                                              ; preds = %169, %172
  %175 = phi ptr [ %171, %169 ], [ %167, %172 ]
  %176 = getelementptr inbounds %struct.word_type, ptr %175, i64 0, i32 1
  store i8 0, ptr %176, align 8, !tbaa !5
  %177 = getelementptr inbounds [2 x %struct.LIST], ptr %175, i64 0, i64 1, i32 1
  store ptr %175, ptr %177, align 8, !tbaa !5
  %178 = getelementptr inbounds [2 x %struct.LIST], ptr %175, i64 0, i64 1
  store ptr %175, ptr %178, align 8, !tbaa !5
  %179 = getelementptr inbounds %struct.LIST, ptr %175, i64 0, i32 1
  store ptr %175, ptr %179, align 8, !tbaa !5
  store ptr %175, ptr %175, align 8, !tbaa !5
  store ptr %175, ptr @xx_link, align 8, !tbaa !10
  store ptr %175, ptr @zz_res, align 8, !tbaa !10
  store ptr %33, ptr @zz_hold, align 8, !tbaa !10
  %180 = load ptr, ptr %33, align 8, !tbaa !5
  store ptr %180, ptr @zz_tmp, align 8, !tbaa !10
  %181 = load ptr, ptr %175, align 8, !tbaa !5
  store ptr %181, ptr %33, align 8, !tbaa !5
  %182 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %183 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %184 = load ptr, ptr %183, align 8, !tbaa !5
  %185 = getelementptr inbounds %struct.LIST, ptr %184, i64 0, i32 1
  store ptr %182, ptr %185, align 8, !tbaa !5
  %186 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %186, ptr %183, align 8, !tbaa !5
  %187 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %188 = getelementptr inbounds %struct.LIST, ptr %186, i64 0, i32 1
  store ptr %187, ptr %188, align 8, !tbaa !5
  %189 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %189, ptr @zz_res, align 8, !tbaa !10
  store ptr %98, ptr @zz_hold, align 8, !tbaa !10
  %190 = icmp eq ptr %189, null
  br i1 %190, label %197, label %191

191:                                              ; preds = %174
  %192 = load ptr, ptr %100, align 8, !tbaa !5
  store ptr %192, ptr @zz_tmp, align 8, !tbaa !10
  %193 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !5
  store ptr %194, ptr %100, align 8, !tbaa !5
  %195 = getelementptr inbounds [2 x %struct.LIST], ptr %194, i64 0, i64 1, i32 1
  store ptr %98, ptr %195, align 8, !tbaa !5
  store ptr %192, ptr %193, align 8, !tbaa !5
  %196 = getelementptr inbounds [2 x %struct.LIST], ptr %192, i64 0, i64 1, i32 1
  store ptr %189, ptr %196, align 8, !tbaa !5
  br label %197

197:                                              ; preds = %174, %191
  %198 = getelementptr inbounds i8, ptr %85, i64 42
  %199 = load i16, ptr %198, align 2
  %200 = lshr i16 %199, 4
  %201 = and i16 %200, 1
  %202 = zext nneg i16 %201 to i32
  %203 = load i16, ptr %107, align 2
  %204 = and i16 %203, 256
  %205 = icmp eq i16 %204, 0
  %206 = lshr i16 %199, 2
  %207 = and i16 %206, 1
  %208 = select i1 %205, i16 0, i16 %207
  %209 = zext nneg i16 %208 to i32
  %210 = getelementptr inbounds %struct.closure_type, ptr %85, i64 0, i32 4
  call void @SizeGalley(ptr noundef nonnull %98, ptr noundef %124, i32 noundef %202, i32 noundef %209, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %210, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #7
  call void @Constrained(ptr noundef nonnull %85, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %8) #7
  %211 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %212 = load i32, ptr %211, align 8, !tbaa !5
  %213 = load i32, ptr %3, align 4, !tbaa !12
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %224, label %215

215:                                              ; preds = %197
  %216 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !5
  %218 = add nsw i32 %217, %212
  %219 = load i32, ptr %20, align 4, !tbaa !14
  %220 = icmp sgt i32 %218, %219
  %221 = load i32, ptr %21, align 4
  %222 = icmp sgt i32 %217, %221
  %223 = select i1 %220, i1 true, i1 %222
  br i1 %223, label %224, label %402

224:                                              ; preds = %215, %197
  %225 = load ptr, ptr %101, align 8, !tbaa !5
  store ptr %225, ptr @xx_link, align 8, !tbaa !10
  %226 = getelementptr inbounds [2 x %struct.LIST], ptr %225, i64 0, i64 1, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = icmp eq ptr %227, %225
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  store ptr %227, ptr @zz_res, align 8, !tbaa !10
  %230 = getelementptr inbounds [2 x %struct.LIST], ptr %225, i64 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !5
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %227, i64 0, i64 1
  store ptr %231, ptr %232, align 8, !tbaa !5
  %233 = getelementptr inbounds [2 x %struct.LIST], ptr %231, i64 0, i64 1, i32 1
  store ptr %227, ptr %233, align 8, !tbaa !5
  store ptr %225, ptr %226, align 8, !tbaa !5
  store ptr %225, ptr %230, align 8, !tbaa !5
  br label %234

234:                                              ; preds = %224, %229
  %235 = phi ptr [ %227, %229 ], [ null, %224 ]
  store ptr %235, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %225, ptr @zz_hold, align 8, !tbaa !10
  %236 = getelementptr inbounds %struct.LIST, ptr %225, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = icmp eq ptr %237, %225
  br i1 %238, label %247, label %239

239:                                              ; preds = %234
  store ptr %237, ptr @zz_res, align 8, !tbaa !10
  %240 = load ptr, ptr %225, align 8, !tbaa !5
  store ptr %240, ptr %237, align 8, !tbaa !5
  %241 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %242 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = getelementptr inbounds %struct.LIST, ptr %243, i64 0, i32 1
  store ptr %241, ptr %244, align 8, !tbaa !5
  %245 = getelementptr inbounds %struct.LIST, ptr %242, i64 0, i32 1
  store ptr %242, ptr %245, align 8, !tbaa !5
  store ptr %242, ptr %242, align 8, !tbaa !5
  %246 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %247

247:                                              ; preds = %234, %239
  %248 = phi ptr [ %225, %234 ], [ %246, %239 ]
  store ptr %248, ptr @zz_hold, align 8, !tbaa !10
  %249 = getelementptr inbounds %struct.word_type, ptr %248, i64 0, i32 1
  %250 = load i8, ptr %249, align 8, !tbaa !5
  %251 = add i8 %250, -11
  %252 = icmp ult i8 %251, 2
  %253 = getelementptr inbounds %struct.word_type, ptr %248, i64 0, i32 1, i32 0, i32 1
  %254 = zext i8 %250 to i64
  %255 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %254
  %256 = select i1 %252, ptr %253, ptr %255
  %257 = load i8, ptr %256, align 1, !tbaa !5
  %258 = zext i8 %257 to i32
  store i32 %258, ptr @zz_size, align 4, !tbaa !8
  %259 = zext i8 %257 to i64
  %260 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !10
  store ptr %261, ptr %248, align 8, !tbaa !5
  %262 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %263 = load i32, ptr @zz_size, align 4, !tbaa !8
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %264
  store ptr %262, ptr %265, align 8, !tbaa !10
  %266 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %267 = getelementptr inbounds [2 x %struct.LIST], ptr %266, i64 0, i64 1, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !5
  %269 = icmp eq ptr %268, %266
  br i1 %269, label %270, label %272

270:                                              ; preds = %247
  %271 = call i32 @DisposeObject(ptr noundef nonnull %266) #7
  br label %272

272:                                              ; preds = %270, %247
  %273 = load ptr, ptr %6, align 8, !tbaa !10
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = call i32 @DisposeObject(ptr noundef nonnull %273) #7
  br label %277

277:                                              ; preds = %275, %272
  %278 = load ptr, ptr %7, align 8, !tbaa !10
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %277
  %281 = call i32 @DisposeObject(ptr noundef nonnull %278) #7
  br label %282

282:                                              ; preds = %280, %277
  store ptr %33, ptr @xx_hold, align 8, !tbaa !10
  %283 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !5
  %285 = icmp eq ptr %284, %33
  br i1 %285, label %286, label %291

286:                                              ; preds = %313, %282
  %287 = phi ptr [ %33, %282 ], [ %332, %313 ]
  %288 = getelementptr inbounds %struct.LIST, ptr %287, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !5
  %290 = icmp eq ptr %289, %287
  br i1 %290, label %381, label %336

291:                                              ; preds = %282, %313
  %292 = phi ptr [ %334, %313 ], [ %284, %282 ]
  store ptr %292, ptr @xx_link, align 8, !tbaa !10
  %293 = getelementptr inbounds [2 x %struct.LIST], ptr %292, i64 0, i64 1, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !5
  %295 = icmp eq ptr %294, %292
  br i1 %295, label %301, label %296

296:                                              ; preds = %291
  store ptr %294, ptr @zz_res, align 8, !tbaa !10
  %297 = getelementptr inbounds [2 x %struct.LIST], ptr %292, i64 0, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !5
  %299 = getelementptr inbounds [2 x %struct.LIST], ptr %294, i64 0, i64 1
  store ptr %298, ptr %299, align 8, !tbaa !5
  %300 = getelementptr inbounds [2 x %struct.LIST], ptr %298, i64 0, i64 1, i32 1
  store ptr %294, ptr %300, align 8, !tbaa !5
  store ptr %292, ptr %293, align 8, !tbaa !5
  store ptr %292, ptr %297, align 8, !tbaa !5
  br label %301

301:                                              ; preds = %291, %296
  store ptr %292, ptr @zz_hold, align 8, !tbaa !10
  %302 = getelementptr inbounds %struct.LIST, ptr %292, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !5
  %304 = icmp eq ptr %303, %292
  br i1 %304, label %313, label %305

305:                                              ; preds = %301
  store ptr %303, ptr @zz_res, align 8, !tbaa !10
  %306 = load ptr, ptr %292, align 8, !tbaa !5
  store ptr %306, ptr %303, align 8, !tbaa !5
  %307 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %308 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %309 = load ptr, ptr %308, align 8, !tbaa !5
  %310 = getelementptr inbounds %struct.LIST, ptr %309, i64 0, i32 1
  store ptr %307, ptr %310, align 8, !tbaa !5
  %311 = getelementptr inbounds %struct.LIST, ptr %308, i64 0, i32 1
  store ptr %308, ptr %311, align 8, !tbaa !5
  store ptr %308, ptr %308, align 8, !tbaa !5
  %312 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %313

313:                                              ; preds = %301, %305
  %314 = phi ptr [ %292, %301 ], [ %312, %305 ]
  store ptr %314, ptr @zz_hold, align 8, !tbaa !10
  %315 = getelementptr inbounds %struct.word_type, ptr %314, i64 0, i32 1
  %316 = load i8, ptr %315, align 8, !tbaa !5
  %317 = add i8 %316, -11
  %318 = icmp ult i8 %317, 2
  %319 = getelementptr inbounds %struct.word_type, ptr %314, i64 0, i32 1, i32 0, i32 1
  %320 = zext i8 %316 to i64
  %321 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %320
  %322 = select i1 %318, ptr %319, ptr %321
  %323 = load i8, ptr %322, align 1, !tbaa !5
  %324 = zext i8 %323 to i32
  store i32 %324, ptr @zz_size, align 4, !tbaa !8
  %325 = zext i8 %323 to i64
  %326 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !10
  store ptr %327, ptr %314, align 8, !tbaa !5
  %328 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %329 = load i32, ptr @zz_size, align 4, !tbaa !8
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %330
  store ptr %328, ptr %331, align 8, !tbaa !10
  %332 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %333 = getelementptr inbounds [2 x %struct.LIST], ptr %332, i64 0, i64 1, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !5
  %335 = icmp eq ptr %334, %332
  br i1 %335, label %286, label %291

336:                                              ; preds = %286, %358
  %337 = phi ptr [ %379, %358 ], [ %289, %286 ]
  store ptr %337, ptr @xx_link, align 8, !tbaa !10
  %338 = getelementptr inbounds [2 x %struct.LIST], ptr %337, i64 0, i64 1, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !5
  %340 = icmp eq ptr %339, %337
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  store ptr %339, ptr @zz_res, align 8, !tbaa !10
  %342 = getelementptr inbounds [2 x %struct.LIST], ptr %337, i64 0, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  %344 = getelementptr inbounds [2 x %struct.LIST], ptr %339, i64 0, i64 1
  store ptr %343, ptr %344, align 8, !tbaa !5
  %345 = getelementptr inbounds [2 x %struct.LIST], ptr %343, i64 0, i64 1, i32 1
  store ptr %339, ptr %345, align 8, !tbaa !5
  store ptr %337, ptr %338, align 8, !tbaa !5
  store ptr %337, ptr %342, align 8, !tbaa !5
  br label %346

346:                                              ; preds = %336, %341
  store ptr %337, ptr @zz_hold, align 8, !tbaa !10
  %347 = getelementptr inbounds %struct.LIST, ptr %337, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !5
  %349 = icmp eq ptr %348, %337
  br i1 %349, label %358, label %350

350:                                              ; preds = %346
  store ptr %348, ptr @zz_res, align 8, !tbaa !10
  %351 = load ptr, ptr %337, align 8, !tbaa !5
  store ptr %351, ptr %348, align 8, !tbaa !5
  %352 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %353 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %354 = load ptr, ptr %353, align 8, !tbaa !5
  %355 = getelementptr inbounds %struct.LIST, ptr %354, i64 0, i32 1
  store ptr %352, ptr %355, align 8, !tbaa !5
  %356 = getelementptr inbounds %struct.LIST, ptr %353, i64 0, i32 1
  store ptr %353, ptr %356, align 8, !tbaa !5
  store ptr %353, ptr %353, align 8, !tbaa !5
  %357 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %358

358:                                              ; preds = %346, %350
  %359 = phi ptr [ %337, %346 ], [ %357, %350 ]
  store ptr %359, ptr @zz_hold, align 8, !tbaa !10
  %360 = getelementptr inbounds %struct.word_type, ptr %359, i64 0, i32 1
  %361 = load i8, ptr %360, align 8, !tbaa !5
  %362 = add i8 %361, -11
  %363 = icmp ult i8 %362, 2
  %364 = getelementptr inbounds %struct.word_type, ptr %359, i64 0, i32 1, i32 0, i32 1
  %365 = zext i8 %361 to i64
  %366 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %365
  %367 = select i1 %363, ptr %364, ptr %366
  %368 = load i8, ptr %367, align 1, !tbaa !5
  %369 = zext i8 %368 to i32
  store i32 %369, ptr @zz_size, align 4, !tbaa !8
  %370 = zext i8 %368 to i64
  %371 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !10
  store ptr %372, ptr %359, align 8, !tbaa !5
  %373 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %374 = load i32, ptr @zz_size, align 4, !tbaa !8
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %375
  store ptr %373, ptr %376, align 8, !tbaa !10
  %377 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %378 = getelementptr inbounds %struct.LIST, ptr %377, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !5
  %380 = icmp eq ptr %379, %377
  br i1 %380, label %381, label %336

381:                                              ; preds = %358, %286
  %382 = phi ptr [ %287, %286 ], [ %377, %358 ]
  store ptr %382, ptr @zz_hold, align 8, !tbaa !10
  %383 = getelementptr inbounds %struct.word_type, ptr %382, i64 0, i32 1
  %384 = load i8, ptr %383, align 8, !tbaa !5
  %385 = add i8 %384, -11
  %386 = icmp ult i8 %385, 2
  %387 = getelementptr inbounds %struct.word_type, ptr %382, i64 0, i32 1, i32 0, i32 1
  %388 = zext i8 %384 to i64
  %389 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %388
  %390 = select i1 %386, ptr %387, ptr %389
  %391 = load i8, ptr %390, align 1, !tbaa !5
  %392 = zext i8 %391 to i32
  store i32 %392, ptr @zz_size, align 4, !tbaa !8
  %393 = zext i8 %391 to i64
  %394 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !10
  store ptr %395, ptr %382, align 8, !tbaa !5
  %396 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %397 = load i32, ptr @zz_size, align 4, !tbaa !8
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %398
  store ptr %396, ptr %399, align 8, !tbaa !10
  %400 = load ptr, ptr %16, align 8, !tbaa !5
  %401 = icmp eq ptr %400, %0
  br i1 %401, label %914, label %28

402:                                              ; preds = %215
  %403 = getelementptr inbounds i8, ptr %85, i64 42
  %404 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %405 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %406 = load i16, ptr %403, align 2
  %407 = and i16 %406, 16
  %408 = icmp eq i16 %407, 0
  br i1 %408, label %409, label %592

409:                                              ; preds = %402
  call void @Constrained(ptr noundef nonnull %85, ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %8) #7
  %410 = load ptr, ptr %98, align 8, !tbaa !5
  br label %411

411:                                              ; preds = %411, %409
  %412 = phi ptr [ %410, %409 ], [ %414, %411 ]
  %413 = getelementptr inbounds [2 x %struct.LIST], ptr %412, i64 0, i64 1
  %414 = load ptr, ptr %413, align 8, !tbaa !5
  %415 = getelementptr inbounds %struct.word_type, ptr %414, i64 0, i32 1
  %416 = load i8, ptr %415, align 8, !tbaa !5
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %411, label %418

418:                                              ; preds = %411
  %419 = getelementptr inbounds i8, ptr %414, i64 52
  %420 = load i32, ptr %419, align 4, !tbaa !5
  %421 = load i32, ptr %4, align 4, !tbaa !12
  %422 = icmp sgt i32 %420, %421
  br i1 %422, label %435, label %423

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.word_type, ptr %414, i64 0, i32 3, i32 1, i64 4
  %425 = load i32, ptr %424, align 4, !tbaa !5
  %426 = add nsw i32 %425, %420
  %427 = load i32, ptr %22, align 4, !tbaa !14
  %428 = icmp sgt i32 %426, %427
  %429 = load i32, ptr %23, align 4
  %430 = icmp sgt i32 %425, %429
  %431 = select i1 %428, i1 true, i1 %430
  br i1 %431, label %435, label %432

432:                                              ; preds = %423
  %433 = load i32, ptr %404, align 8, !tbaa !5
  %434 = load i32, ptr %405, align 8, !tbaa !5
  br label %592

435:                                              ; preds = %423, %418
  %436 = load ptr, ptr %101, align 8, !tbaa !5
  store ptr %436, ptr @xx_link, align 8, !tbaa !10
  %437 = getelementptr inbounds [2 x %struct.LIST], ptr %436, i64 0, i64 1, i32 1
  %438 = load ptr, ptr %437, align 8, !tbaa !5
  %439 = icmp eq ptr %438, %436
  br i1 %439, label %445, label %440

440:                                              ; preds = %435
  store ptr %438, ptr @zz_res, align 8, !tbaa !10
  %441 = getelementptr inbounds [2 x %struct.LIST], ptr %436, i64 0, i64 1
  %442 = load ptr, ptr %441, align 8, !tbaa !5
  %443 = getelementptr inbounds [2 x %struct.LIST], ptr %438, i64 0, i64 1
  store ptr %442, ptr %443, align 8, !tbaa !5
  %444 = getelementptr inbounds [2 x %struct.LIST], ptr %442, i64 0, i64 1, i32 1
  store ptr %438, ptr %444, align 8, !tbaa !5
  store ptr %436, ptr %437, align 8, !tbaa !5
  store ptr %436, ptr %441, align 8, !tbaa !5
  br label %445

445:                                              ; preds = %435, %440
  %446 = phi ptr [ %438, %440 ], [ null, %435 ]
  store ptr %446, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %436, ptr @zz_hold, align 8, !tbaa !10
  %447 = getelementptr inbounds %struct.LIST, ptr %436, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !5
  %449 = icmp eq ptr %448, %436
  br i1 %449, label %458, label %450

450:                                              ; preds = %445
  store ptr %448, ptr @zz_res, align 8, !tbaa !10
  %451 = load ptr, ptr %436, align 8, !tbaa !5
  store ptr %451, ptr %448, align 8, !tbaa !5
  %452 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %453 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %454 = load ptr, ptr %453, align 8, !tbaa !5
  %455 = getelementptr inbounds %struct.LIST, ptr %454, i64 0, i32 1
  store ptr %452, ptr %455, align 8, !tbaa !5
  %456 = getelementptr inbounds %struct.LIST, ptr %453, i64 0, i32 1
  store ptr %453, ptr %456, align 8, !tbaa !5
  store ptr %453, ptr %453, align 8, !tbaa !5
  %457 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %458

458:                                              ; preds = %445, %450
  %459 = phi ptr [ %436, %445 ], [ %457, %450 ]
  store ptr %459, ptr @zz_hold, align 8, !tbaa !10
  %460 = getelementptr inbounds %struct.word_type, ptr %459, i64 0, i32 1
  %461 = load i8, ptr %460, align 8, !tbaa !5
  %462 = add i8 %461, -11
  %463 = icmp ult i8 %462, 2
  %464 = getelementptr inbounds %struct.word_type, ptr %459, i64 0, i32 1, i32 0, i32 1
  %465 = zext i8 %461 to i64
  %466 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %465
  %467 = select i1 %463, ptr %464, ptr %466
  %468 = load i8, ptr %467, align 1, !tbaa !5
  %469 = zext i8 %468 to i32
  store i32 %469, ptr @zz_size, align 4, !tbaa !8
  %470 = zext i8 %468 to i64
  %471 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %470
  %472 = load ptr, ptr %471, align 8, !tbaa !10
  store ptr %472, ptr %459, align 8, !tbaa !5
  %473 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %474 = load i32, ptr @zz_size, align 4, !tbaa !8
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %475
  store ptr %473, ptr %476, align 8, !tbaa !10
  %477 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %478 = getelementptr inbounds [2 x %struct.LIST], ptr %477, i64 0, i64 1, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !5
  %480 = icmp eq ptr %479, %477
  br i1 %480, label %481, label %483

481:                                              ; preds = %458
  %482 = call i32 @DisposeObject(ptr noundef nonnull %477) #7
  br label %483

483:                                              ; preds = %481, %458
  %484 = load ptr, ptr %6, align 8, !tbaa !10
  %485 = icmp eq ptr %484, null
  br i1 %485, label %488, label %486

486:                                              ; preds = %483
  %487 = call i32 @DisposeObject(ptr noundef nonnull %484) #7
  br label %488

488:                                              ; preds = %486, %483
  %489 = load ptr, ptr %7, align 8, !tbaa !10
  %490 = icmp eq ptr %489, null
  br i1 %490, label %493, label %491

491:                                              ; preds = %488
  %492 = call i32 @DisposeObject(ptr noundef nonnull %489) #7
  br label %493

493:                                              ; preds = %491, %488
  store ptr %33, ptr @xx_hold, align 8, !tbaa !10
  %494 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !5
  %496 = icmp eq ptr %495, %33
  br i1 %496, label %497, label %502

497:                                              ; preds = %524, %493
  %498 = phi ptr [ %33, %493 ], [ %543, %524 ]
  %499 = getelementptr inbounds %struct.LIST, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !5
  %501 = icmp eq ptr %500, %498
  br i1 %501, label %890, label %547

502:                                              ; preds = %493, %524
  %503 = phi ptr [ %545, %524 ], [ %495, %493 ]
  store ptr %503, ptr @xx_link, align 8, !tbaa !10
  %504 = getelementptr inbounds [2 x %struct.LIST], ptr %503, i64 0, i64 1, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !5
  %506 = icmp eq ptr %505, %503
  br i1 %506, label %512, label %507

507:                                              ; preds = %502
  store ptr %505, ptr @zz_res, align 8, !tbaa !10
  %508 = getelementptr inbounds [2 x %struct.LIST], ptr %503, i64 0, i64 1
  %509 = load ptr, ptr %508, align 8, !tbaa !5
  %510 = getelementptr inbounds [2 x %struct.LIST], ptr %505, i64 0, i64 1
  store ptr %509, ptr %510, align 8, !tbaa !5
  %511 = getelementptr inbounds [2 x %struct.LIST], ptr %509, i64 0, i64 1, i32 1
  store ptr %505, ptr %511, align 8, !tbaa !5
  store ptr %503, ptr %504, align 8, !tbaa !5
  store ptr %503, ptr %508, align 8, !tbaa !5
  br label %512

512:                                              ; preds = %502, %507
  store ptr %503, ptr @zz_hold, align 8, !tbaa !10
  %513 = getelementptr inbounds %struct.LIST, ptr %503, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !5
  %515 = icmp eq ptr %514, %503
  br i1 %515, label %524, label %516

516:                                              ; preds = %512
  store ptr %514, ptr @zz_res, align 8, !tbaa !10
  %517 = load ptr, ptr %503, align 8, !tbaa !5
  store ptr %517, ptr %514, align 8, !tbaa !5
  %518 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %519 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %520 = load ptr, ptr %519, align 8, !tbaa !5
  %521 = getelementptr inbounds %struct.LIST, ptr %520, i64 0, i32 1
  store ptr %518, ptr %521, align 8, !tbaa !5
  %522 = getelementptr inbounds %struct.LIST, ptr %519, i64 0, i32 1
  store ptr %519, ptr %522, align 8, !tbaa !5
  store ptr %519, ptr %519, align 8, !tbaa !5
  %523 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %524

524:                                              ; preds = %512, %516
  %525 = phi ptr [ %503, %512 ], [ %523, %516 ]
  store ptr %525, ptr @zz_hold, align 8, !tbaa !10
  %526 = getelementptr inbounds %struct.word_type, ptr %525, i64 0, i32 1
  %527 = load i8, ptr %526, align 8, !tbaa !5
  %528 = add i8 %527, -11
  %529 = icmp ult i8 %528, 2
  %530 = getelementptr inbounds %struct.word_type, ptr %525, i64 0, i32 1, i32 0, i32 1
  %531 = zext i8 %527 to i64
  %532 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %531
  %533 = select i1 %529, ptr %530, ptr %532
  %534 = load i8, ptr %533, align 1, !tbaa !5
  %535 = zext i8 %534 to i32
  store i32 %535, ptr @zz_size, align 4, !tbaa !8
  %536 = zext i8 %534 to i64
  %537 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %536
  %538 = load ptr, ptr %537, align 8, !tbaa !10
  store ptr %538, ptr %525, align 8, !tbaa !5
  %539 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %540 = load i32, ptr @zz_size, align 4, !tbaa !8
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %541
  store ptr %539, ptr %542, align 8, !tbaa !10
  %543 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %544 = getelementptr inbounds [2 x %struct.LIST], ptr %543, i64 0, i64 1, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !5
  %546 = icmp eq ptr %545, %543
  br i1 %546, label %497, label %502

547:                                              ; preds = %497, %569
  %548 = phi ptr [ %590, %569 ], [ %500, %497 ]
  store ptr %548, ptr @xx_link, align 8, !tbaa !10
  %549 = getelementptr inbounds [2 x %struct.LIST], ptr %548, i64 0, i64 1, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !5
  %551 = icmp eq ptr %550, %548
  br i1 %551, label %557, label %552

552:                                              ; preds = %547
  store ptr %550, ptr @zz_res, align 8, !tbaa !10
  %553 = getelementptr inbounds [2 x %struct.LIST], ptr %548, i64 0, i64 1
  %554 = load ptr, ptr %553, align 8, !tbaa !5
  %555 = getelementptr inbounds [2 x %struct.LIST], ptr %550, i64 0, i64 1
  store ptr %554, ptr %555, align 8, !tbaa !5
  %556 = getelementptr inbounds [2 x %struct.LIST], ptr %554, i64 0, i64 1, i32 1
  store ptr %550, ptr %556, align 8, !tbaa !5
  store ptr %548, ptr %549, align 8, !tbaa !5
  store ptr %548, ptr %553, align 8, !tbaa !5
  br label %557

557:                                              ; preds = %547, %552
  store ptr %548, ptr @zz_hold, align 8, !tbaa !10
  %558 = getelementptr inbounds %struct.LIST, ptr %548, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !5
  %560 = icmp eq ptr %559, %548
  br i1 %560, label %569, label %561

561:                                              ; preds = %557
  store ptr %559, ptr @zz_res, align 8, !tbaa !10
  %562 = load ptr, ptr %548, align 8, !tbaa !5
  store ptr %562, ptr %559, align 8, !tbaa !5
  %563 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %564 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %565 = load ptr, ptr %564, align 8, !tbaa !5
  %566 = getelementptr inbounds %struct.LIST, ptr %565, i64 0, i32 1
  store ptr %563, ptr %566, align 8, !tbaa !5
  %567 = getelementptr inbounds %struct.LIST, ptr %564, i64 0, i32 1
  store ptr %564, ptr %567, align 8, !tbaa !5
  store ptr %564, ptr %564, align 8, !tbaa !5
  %568 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %569

569:                                              ; preds = %557, %561
  %570 = phi ptr [ %548, %557 ], [ %568, %561 ]
  store ptr %570, ptr @zz_hold, align 8, !tbaa !10
  %571 = getelementptr inbounds %struct.word_type, ptr %570, i64 0, i32 1
  %572 = load i8, ptr %571, align 8, !tbaa !5
  %573 = add i8 %572, -11
  %574 = icmp ult i8 %573, 2
  %575 = getelementptr inbounds %struct.word_type, ptr %570, i64 0, i32 1, i32 0, i32 1
  %576 = zext i8 %572 to i64
  %577 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %576
  %578 = select i1 %574, ptr %575, ptr %577
  %579 = load i8, ptr %578, align 1, !tbaa !5
  %580 = zext i8 %579 to i32
  store i32 %580, ptr @zz_size, align 4, !tbaa !8
  %581 = zext i8 %579 to i64
  %582 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %581
  %583 = load ptr, ptr %582, align 8, !tbaa !10
  store ptr %583, ptr %570, align 8, !tbaa !5
  %584 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %585 = load i32, ptr @zz_size, align 4, !tbaa !8
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %586
  store ptr %584, ptr %587, align 8, !tbaa !10
  %588 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %589 = getelementptr inbounds %struct.LIST, ptr %588, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !5
  %591 = icmp eq ptr %590, %588
  br i1 %591, label %890, label %547

592:                                              ; preds = %432, %402
  %593 = phi i32 [ %217, %402 ], [ %434, %432 ]
  %594 = phi i32 [ %212, %402 ], [ %433, %432 ]
  %595 = phi ptr [ %27, %402 ], [ %414, %432 ]
  call void @AdjustSize(ptr noundef %85, i32 noundef %594, i32 noundef %593, i32 noundef 0) #7
  %596 = load i16, ptr %403, align 2
  %597 = and i16 %596, 16
  %598 = icmp eq i16 %597, 0
  br i1 %598, label %599, label %604

599:                                              ; preds = %592
  %600 = getelementptr inbounds i8, ptr %595, i64 52
  %601 = load i32, ptr %600, align 4, !tbaa !5
  %602 = getelementptr inbounds %struct.word_type, ptr %595, i64 0, i32 3, i32 1, i64 4
  %603 = load i32, ptr %602, align 4, !tbaa !5
  call void @AdjustSize(ptr noundef nonnull %85, i32 noundef %601, i32 noundef %603, i32 noundef 1) #7
  call void @Interpose(ptr noundef nonnull %85, i32 noundef 19, ptr noundef %595, ptr noundef %595)
  br label %604

604:                                              ; preds = %599, %592
  call void @Promote(ptr noundef nonnull %98, ptr noundef nonnull %98, ptr noundef nonnull %33, i32 noundef 1)
  store ptr %98, ptr @xx_hold, align 8, !tbaa !10
  %605 = load ptr, ptr %101, align 8, !tbaa !5
  %606 = icmp eq ptr %605, %98
  br i1 %606, label %607, label %612

607:                                              ; preds = %634, %604
  %608 = phi ptr [ %98, %604 ], [ %653, %634 ]
  %609 = getelementptr inbounds %struct.LIST, ptr %608, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !5
  %611 = icmp eq ptr %610, %608
  br i1 %611, label %702, label %657

612:                                              ; preds = %604, %634
  %613 = phi ptr [ %655, %634 ], [ %605, %604 ]
  store ptr %613, ptr @xx_link, align 8, !tbaa !10
  %614 = getelementptr inbounds [2 x %struct.LIST], ptr %613, i64 0, i64 1, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !5
  %616 = icmp eq ptr %615, %613
  br i1 %616, label %622, label %617

617:                                              ; preds = %612
  store ptr %615, ptr @zz_res, align 8, !tbaa !10
  %618 = getelementptr inbounds [2 x %struct.LIST], ptr %613, i64 0, i64 1
  %619 = load ptr, ptr %618, align 8, !tbaa !5
  %620 = getelementptr inbounds [2 x %struct.LIST], ptr %615, i64 0, i64 1
  store ptr %619, ptr %620, align 8, !tbaa !5
  %621 = getelementptr inbounds [2 x %struct.LIST], ptr %619, i64 0, i64 1, i32 1
  store ptr %615, ptr %621, align 8, !tbaa !5
  store ptr %613, ptr %614, align 8, !tbaa !5
  store ptr %613, ptr %618, align 8, !tbaa !5
  br label %622

622:                                              ; preds = %612, %617
  store ptr %613, ptr @zz_hold, align 8, !tbaa !10
  %623 = getelementptr inbounds %struct.LIST, ptr %613, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !5
  %625 = icmp eq ptr %624, %613
  br i1 %625, label %634, label %626

626:                                              ; preds = %622
  store ptr %624, ptr @zz_res, align 8, !tbaa !10
  %627 = load ptr, ptr %613, align 8, !tbaa !5
  store ptr %627, ptr %624, align 8, !tbaa !5
  %628 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %629 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %630 = load ptr, ptr %629, align 8, !tbaa !5
  %631 = getelementptr inbounds %struct.LIST, ptr %630, i64 0, i32 1
  store ptr %628, ptr %631, align 8, !tbaa !5
  %632 = getelementptr inbounds %struct.LIST, ptr %629, i64 0, i32 1
  store ptr %629, ptr %632, align 8, !tbaa !5
  store ptr %629, ptr %629, align 8, !tbaa !5
  %633 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %634

634:                                              ; preds = %622, %626
  %635 = phi ptr [ %613, %622 ], [ %633, %626 ]
  store ptr %635, ptr @zz_hold, align 8, !tbaa !10
  %636 = getelementptr inbounds %struct.word_type, ptr %635, i64 0, i32 1
  %637 = load i8, ptr %636, align 8, !tbaa !5
  %638 = add i8 %637, -11
  %639 = icmp ult i8 %638, 2
  %640 = getelementptr inbounds %struct.word_type, ptr %635, i64 0, i32 1, i32 0, i32 1
  %641 = zext i8 %637 to i64
  %642 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %641
  %643 = select i1 %639, ptr %640, ptr %642
  %644 = load i8, ptr %643, align 1, !tbaa !5
  %645 = zext i8 %644 to i32
  store i32 %645, ptr @zz_size, align 4, !tbaa !8
  %646 = zext i8 %644 to i64
  %647 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %646
  %648 = load ptr, ptr %647, align 8, !tbaa !10
  store ptr %648, ptr %635, align 8, !tbaa !5
  %649 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %650 = load i32, ptr @zz_size, align 4, !tbaa !8
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %651
  store ptr %649, ptr %652, align 8, !tbaa !10
  %653 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %654 = getelementptr inbounds [2 x %struct.LIST], ptr %653, i64 0, i64 1, i32 1
  %655 = load ptr, ptr %654, align 8, !tbaa !5
  %656 = icmp eq ptr %655, %653
  br i1 %656, label %607, label %612

657:                                              ; preds = %607, %679
  %658 = phi ptr [ %700, %679 ], [ %610, %607 ]
  store ptr %658, ptr @xx_link, align 8, !tbaa !10
  %659 = getelementptr inbounds [2 x %struct.LIST], ptr %658, i64 0, i64 1, i32 1
  %660 = load ptr, ptr %659, align 8, !tbaa !5
  %661 = icmp eq ptr %660, %658
  br i1 %661, label %667, label %662

662:                                              ; preds = %657
  store ptr %660, ptr @zz_res, align 8, !tbaa !10
  %663 = getelementptr inbounds [2 x %struct.LIST], ptr %658, i64 0, i64 1
  %664 = load ptr, ptr %663, align 8, !tbaa !5
  %665 = getelementptr inbounds [2 x %struct.LIST], ptr %660, i64 0, i64 1
  store ptr %664, ptr %665, align 8, !tbaa !5
  %666 = getelementptr inbounds [2 x %struct.LIST], ptr %664, i64 0, i64 1, i32 1
  store ptr %660, ptr %666, align 8, !tbaa !5
  store ptr %658, ptr %659, align 8, !tbaa !5
  store ptr %658, ptr %663, align 8, !tbaa !5
  br label %667

667:                                              ; preds = %657, %662
  store ptr %658, ptr @zz_hold, align 8, !tbaa !10
  %668 = getelementptr inbounds %struct.LIST, ptr %658, i64 0, i32 1
  %669 = load ptr, ptr %668, align 8, !tbaa !5
  %670 = icmp eq ptr %669, %658
  br i1 %670, label %679, label %671

671:                                              ; preds = %667
  store ptr %669, ptr @zz_res, align 8, !tbaa !10
  %672 = load ptr, ptr %658, align 8, !tbaa !5
  store ptr %672, ptr %669, align 8, !tbaa !5
  %673 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %674 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %675 = load ptr, ptr %674, align 8, !tbaa !5
  %676 = getelementptr inbounds %struct.LIST, ptr %675, i64 0, i32 1
  store ptr %673, ptr %676, align 8, !tbaa !5
  %677 = getelementptr inbounds %struct.LIST, ptr %674, i64 0, i32 1
  store ptr %674, ptr %677, align 8, !tbaa !5
  store ptr %674, ptr %674, align 8, !tbaa !5
  %678 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %679

679:                                              ; preds = %667, %671
  %680 = phi ptr [ %658, %667 ], [ %678, %671 ]
  store ptr %680, ptr @zz_hold, align 8, !tbaa !10
  %681 = getelementptr inbounds %struct.word_type, ptr %680, i64 0, i32 1
  %682 = load i8, ptr %681, align 8, !tbaa !5
  %683 = add i8 %682, -11
  %684 = icmp ult i8 %683, 2
  %685 = getelementptr inbounds %struct.word_type, ptr %680, i64 0, i32 1, i32 0, i32 1
  %686 = zext i8 %682 to i64
  %687 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %686
  %688 = select i1 %684, ptr %685, ptr %687
  %689 = load i8, ptr %688, align 1, !tbaa !5
  %690 = zext i8 %689 to i32
  store i32 %690, ptr @zz_size, align 4, !tbaa !8
  %691 = zext i8 %689 to i64
  %692 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %691
  %693 = load ptr, ptr %692, align 8, !tbaa !10
  store ptr %693, ptr %680, align 8, !tbaa !5
  %694 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %695 = load i32, ptr @zz_size, align 4, !tbaa !8
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %696
  store ptr %694, ptr %697, align 8, !tbaa !10
  %698 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %699 = getelementptr inbounds %struct.LIST, ptr %698, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !5
  %701 = icmp eq ptr %700, %698
  br i1 %701, label %702, label %657

702:                                              ; preds = %679, %607
  %703 = phi ptr [ %608, %607 ], [ %698, %679 ]
  store ptr %703, ptr @zz_hold, align 8, !tbaa !10
  %704 = getelementptr inbounds %struct.word_type, ptr %703, i64 0, i32 1
  %705 = load i8, ptr %704, align 8, !tbaa !5
  %706 = add i8 %705, -11
  %707 = icmp ult i8 %706, 2
  %708 = getelementptr inbounds %struct.word_type, ptr %703, i64 0, i32 1, i32 0, i32 1
  %709 = zext i8 %705 to i64
  %710 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %709
  %711 = select i1 %707, ptr %708, ptr %710
  %712 = load i8, ptr %711, align 1, !tbaa !5
  %713 = zext i8 %712 to i32
  store i32 %713, ptr @zz_size, align 4, !tbaa !8
  %714 = zext i8 %712 to i64
  %715 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %714
  %716 = load ptr, ptr %715, align 8, !tbaa !10
  store ptr %716, ptr %703, align 8, !tbaa !5
  %717 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %718 = load i32, ptr @zz_size, align 4, !tbaa !8
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %719
  store ptr %717, ptr %720, align 8, !tbaa !10
  store ptr %33, ptr @xx_hold, align 8, !tbaa !10
  %721 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !5
  %723 = icmp eq ptr %722, %33
  br i1 %723, label %724, label %729

724:                                              ; preds = %751, %702
  %725 = phi ptr [ %33, %702 ], [ %770, %751 ]
  %726 = getelementptr inbounds %struct.LIST, ptr %725, i64 0, i32 1
  %727 = load ptr, ptr %726, align 8, !tbaa !5
  %728 = icmp eq ptr %727, %725
  br i1 %728, label %819, label %774

729:                                              ; preds = %702, %751
  %730 = phi ptr [ %772, %751 ], [ %722, %702 ]
  store ptr %730, ptr @xx_link, align 8, !tbaa !10
  %731 = getelementptr inbounds [2 x %struct.LIST], ptr %730, i64 0, i64 1, i32 1
  %732 = load ptr, ptr %731, align 8, !tbaa !5
  %733 = icmp eq ptr %732, %730
  br i1 %733, label %739, label %734

734:                                              ; preds = %729
  store ptr %732, ptr @zz_res, align 8, !tbaa !10
  %735 = getelementptr inbounds [2 x %struct.LIST], ptr %730, i64 0, i64 1
  %736 = load ptr, ptr %735, align 8, !tbaa !5
  %737 = getelementptr inbounds [2 x %struct.LIST], ptr %732, i64 0, i64 1
  store ptr %736, ptr %737, align 8, !tbaa !5
  %738 = getelementptr inbounds [2 x %struct.LIST], ptr %736, i64 0, i64 1, i32 1
  store ptr %732, ptr %738, align 8, !tbaa !5
  store ptr %730, ptr %731, align 8, !tbaa !5
  store ptr %730, ptr %735, align 8, !tbaa !5
  br label %739

739:                                              ; preds = %729, %734
  store ptr %730, ptr @zz_hold, align 8, !tbaa !10
  %740 = getelementptr inbounds %struct.LIST, ptr %730, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !5
  %742 = icmp eq ptr %741, %730
  br i1 %742, label %751, label %743

743:                                              ; preds = %739
  store ptr %741, ptr @zz_res, align 8, !tbaa !10
  %744 = load ptr, ptr %730, align 8, !tbaa !5
  store ptr %744, ptr %741, align 8, !tbaa !5
  %745 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %746 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %747 = load ptr, ptr %746, align 8, !tbaa !5
  %748 = getelementptr inbounds %struct.LIST, ptr %747, i64 0, i32 1
  store ptr %745, ptr %748, align 8, !tbaa !5
  %749 = getelementptr inbounds %struct.LIST, ptr %746, i64 0, i32 1
  store ptr %746, ptr %749, align 8, !tbaa !5
  store ptr %746, ptr %746, align 8, !tbaa !5
  %750 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %751

751:                                              ; preds = %739, %743
  %752 = phi ptr [ %730, %739 ], [ %750, %743 ]
  store ptr %752, ptr @zz_hold, align 8, !tbaa !10
  %753 = getelementptr inbounds %struct.word_type, ptr %752, i64 0, i32 1
  %754 = load i8, ptr %753, align 8, !tbaa !5
  %755 = add i8 %754, -11
  %756 = icmp ult i8 %755, 2
  %757 = getelementptr inbounds %struct.word_type, ptr %752, i64 0, i32 1, i32 0, i32 1
  %758 = zext i8 %754 to i64
  %759 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %758
  %760 = select i1 %756, ptr %757, ptr %759
  %761 = load i8, ptr %760, align 1, !tbaa !5
  %762 = zext i8 %761 to i32
  store i32 %762, ptr @zz_size, align 4, !tbaa !8
  %763 = zext i8 %761 to i64
  %764 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %763
  %765 = load ptr, ptr %764, align 8, !tbaa !10
  store ptr %765, ptr %752, align 8, !tbaa !5
  %766 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %767 = load i32, ptr @zz_size, align 4, !tbaa !8
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %768
  store ptr %766, ptr %769, align 8, !tbaa !10
  %770 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %771 = getelementptr inbounds [2 x %struct.LIST], ptr %770, i64 0, i64 1, i32 1
  %772 = load ptr, ptr %771, align 8, !tbaa !5
  %773 = icmp eq ptr %772, %770
  br i1 %773, label %724, label %729

774:                                              ; preds = %724, %796
  %775 = phi ptr [ %817, %796 ], [ %727, %724 ]
  store ptr %775, ptr @xx_link, align 8, !tbaa !10
  %776 = getelementptr inbounds [2 x %struct.LIST], ptr %775, i64 0, i64 1, i32 1
  %777 = load ptr, ptr %776, align 8, !tbaa !5
  %778 = icmp eq ptr %777, %775
  br i1 %778, label %784, label %779

779:                                              ; preds = %774
  store ptr %777, ptr @zz_res, align 8, !tbaa !10
  %780 = getelementptr inbounds [2 x %struct.LIST], ptr %775, i64 0, i64 1
  %781 = load ptr, ptr %780, align 8, !tbaa !5
  %782 = getelementptr inbounds [2 x %struct.LIST], ptr %777, i64 0, i64 1
  store ptr %781, ptr %782, align 8, !tbaa !5
  %783 = getelementptr inbounds [2 x %struct.LIST], ptr %781, i64 0, i64 1, i32 1
  store ptr %777, ptr %783, align 8, !tbaa !5
  store ptr %775, ptr %776, align 8, !tbaa !5
  store ptr %775, ptr %780, align 8, !tbaa !5
  br label %784

784:                                              ; preds = %774, %779
  store ptr %775, ptr @zz_hold, align 8, !tbaa !10
  %785 = getelementptr inbounds %struct.LIST, ptr %775, i64 0, i32 1
  %786 = load ptr, ptr %785, align 8, !tbaa !5
  %787 = icmp eq ptr %786, %775
  br i1 %787, label %796, label %788

788:                                              ; preds = %784
  store ptr %786, ptr @zz_res, align 8, !tbaa !10
  %789 = load ptr, ptr %775, align 8, !tbaa !5
  store ptr %789, ptr %786, align 8, !tbaa !5
  %790 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %791 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %792 = load ptr, ptr %791, align 8, !tbaa !5
  %793 = getelementptr inbounds %struct.LIST, ptr %792, i64 0, i32 1
  store ptr %790, ptr %793, align 8, !tbaa !5
  %794 = getelementptr inbounds %struct.LIST, ptr %791, i64 0, i32 1
  store ptr %791, ptr %794, align 8, !tbaa !5
  store ptr %791, ptr %791, align 8, !tbaa !5
  %795 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %796

796:                                              ; preds = %784, %788
  %797 = phi ptr [ %775, %784 ], [ %795, %788 ]
  store ptr %797, ptr @zz_hold, align 8, !tbaa !10
  %798 = getelementptr inbounds %struct.word_type, ptr %797, i64 0, i32 1
  %799 = load i8, ptr %798, align 8, !tbaa !5
  %800 = add i8 %799, -11
  %801 = icmp ult i8 %800, 2
  %802 = getelementptr inbounds %struct.word_type, ptr %797, i64 0, i32 1, i32 0, i32 1
  %803 = zext i8 %799 to i64
  %804 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %803
  %805 = select i1 %801, ptr %802, ptr %804
  %806 = load i8, ptr %805, align 1, !tbaa !5
  %807 = zext i8 %806 to i32
  store i32 %807, ptr @zz_size, align 4, !tbaa !8
  %808 = zext i8 %806 to i64
  %809 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %808
  %810 = load ptr, ptr %809, align 8, !tbaa !10
  store ptr %810, ptr %797, align 8, !tbaa !5
  %811 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %812 = load i32, ptr @zz_size, align 4, !tbaa !8
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %813
  store ptr %811, ptr %814, align 8, !tbaa !10
  %815 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %816 = getelementptr inbounds %struct.LIST, ptr %815, i64 0, i32 1
  %817 = load ptr, ptr %816, align 8, !tbaa !5
  %818 = icmp eq ptr %817, %815
  br i1 %818, label %819, label %774

819:                                              ; preds = %796, %724
  %820 = phi ptr [ %725, %724 ], [ %815, %796 ]
  store ptr %820, ptr @zz_hold, align 8, !tbaa !10
  %821 = getelementptr inbounds %struct.word_type, ptr %820, i64 0, i32 1
  %822 = load i8, ptr %821, align 8, !tbaa !5
  %823 = add i8 %822, -11
  %824 = icmp ult i8 %823, 2
  %825 = getelementptr inbounds %struct.word_type, ptr %820, i64 0, i32 1, i32 0, i32 1
  %826 = zext i8 %822 to i64
  %827 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %826
  %828 = select i1 %824, ptr %825, ptr %827
  %829 = load i8, ptr %828, align 1, !tbaa !5
  %830 = zext i8 %829 to i32
  store i32 %830, ptr @zz_size, align 4, !tbaa !8
  %831 = zext i8 %829 to i64
  %832 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %831
  %833 = load ptr, ptr %832, align 8, !tbaa !10
  store ptr %833, ptr %820, align 8, !tbaa !5
  %834 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %835 = load i32, ptr @zz_size, align 4, !tbaa !8
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %836
  store ptr %834, ptr %837, align 8, !tbaa !10
  %838 = load ptr, ptr %6, align 8, !tbaa !10
  %839 = icmp eq ptr %838, null
  br i1 %839, label %841, label %840

840:                                              ; preds = %819
  call void @FlushInners(ptr noundef nonnull %838, ptr noundef null)
  br label %841

841:                                              ; preds = %840, %819
  %842 = load ptr, ptr %7, align 8, !tbaa !10
  %843 = icmp eq ptr %842, null
  br i1 %843, label %910, label %844

844:                                              ; preds = %841
  store ptr %0, ptr @xx_res, align 8, !tbaa !10
  store ptr %842, ptr @xx_hold, align 8, !tbaa !10
  %845 = getelementptr inbounds [2 x %struct.LIST], ptr %842, i64 0, i64 1, i32 1
  %846 = load ptr, ptr %845, align 8, !tbaa !5
  %847 = icmp eq ptr %846, %842
  br i1 %847, label %848, label %849

848:                                              ; preds = %844
  store ptr null, ptr @xx_tmp, align 8, !tbaa !10
  br label %861

849:                                              ; preds = %844
  %850 = getelementptr inbounds [2 x %struct.LIST], ptr %842, i64 0, i64 1
  %851 = load ptr, ptr %850, align 8, !tbaa !5
  %852 = getelementptr inbounds [2 x %struct.LIST], ptr %846, i64 0, i64 1
  store ptr %851, ptr %852, align 8, !tbaa !5
  %853 = getelementptr inbounds [2 x %struct.LIST], ptr %851, i64 0, i64 1, i32 1
  store ptr %846, ptr %853, align 8, !tbaa !5
  store ptr %842, ptr %845, align 8, !tbaa !5
  store ptr %842, ptr %850, align 8, !tbaa !5
  store ptr %846, ptr @xx_tmp, align 8, !tbaa !10
  %854 = icmp eq ptr %846, null
  %855 = or i1 %11, %854
  br i1 %855, label %861, label %856

856:                                              ; preds = %849
  %857 = load ptr, ptr %852, align 8, !tbaa !5
  store ptr %857, ptr @zz_tmp, align 8, !tbaa !10
  %858 = load ptr, ptr %24, align 8, !tbaa !5
  store ptr %858, ptr %852, align 8, !tbaa !5
  %859 = getelementptr inbounds [2 x %struct.LIST], ptr %858, i64 0, i64 1, i32 1
  store ptr %846, ptr %859, align 8, !tbaa !5
  store ptr %857, ptr %24, align 8, !tbaa !5
  %860 = getelementptr inbounds [2 x %struct.LIST], ptr %857, i64 0, i64 1, i32 1
  store ptr %0, ptr %860, align 8, !tbaa !5
  br label %861

861:                                              ; preds = %848, %849, %856
  store ptr %842, ptr @zz_hold, align 8, !tbaa !10
  %862 = getelementptr inbounds %struct.LIST, ptr %842, i64 0, i32 1
  %863 = load ptr, ptr %862, align 8, !tbaa !5
  %864 = icmp eq ptr %863, %842
  br i1 %864, label %865, label %866

865:                                              ; preds = %861
  store ptr null, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %0, ptr @zz_res, align 8, !tbaa !10
  br label %888

866:                                              ; preds = %861
  store ptr %863, ptr @zz_res, align 8, !tbaa !10
  %867 = load ptr, ptr %842, align 8, !tbaa !5
  store ptr %867, ptr %863, align 8, !tbaa !5
  %868 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %869 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %870 = load ptr, ptr %869, align 8, !tbaa !5
  %871 = getelementptr inbounds %struct.LIST, ptr %870, i64 0, i32 1
  store ptr %868, ptr %871, align 8, !tbaa !5
  %872 = getelementptr inbounds %struct.LIST, ptr %869, i64 0, i32 1
  store ptr %869, ptr %872, align 8, !tbaa !5
  store ptr %869, ptr %869, align 8, !tbaa !5
  %873 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %874 = load ptr, ptr @xx_res, align 8, !tbaa !10
  store ptr %873, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %874, ptr @zz_res, align 8, !tbaa !10
  store ptr %873, ptr @zz_hold, align 8, !tbaa !10
  %875 = icmp eq ptr %873, null
  %876 = icmp eq ptr %874, null
  %877 = select i1 %875, i1 true, i1 %876
  br i1 %877, label %888, label %878

878:                                              ; preds = %866
  %879 = load ptr, ptr %873, align 8, !tbaa !5
  store ptr %879, ptr @zz_tmp, align 8, !tbaa !10
  %880 = load ptr, ptr %874, align 8, !tbaa !5
  store ptr %880, ptr %873, align 8, !tbaa !5
  %881 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %882 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %883 = load ptr, ptr %882, align 8, !tbaa !5
  %884 = getelementptr inbounds %struct.LIST, ptr %883, i64 0, i32 1
  store ptr %881, ptr %884, align 8, !tbaa !5
  %885 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %885, ptr %882, align 8, !tbaa !5
  %886 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %887 = getelementptr inbounds %struct.LIST, ptr %885, i64 0, i32 1
  store ptr %886, ptr %887, align 8, !tbaa !5
  br label %888

888:                                              ; preds = %865, %866, %878
  %889 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  br label %890

890:                                              ; preds = %569, %497, %888
  %891 = phi ptr [ %889, %888 ], [ %498, %497 ], [ %588, %569 ]
  %892 = phi ptr [ %595, %888 ], [ %414, %497 ], [ %414, %569 ]
  store ptr %891, ptr @zz_hold, align 8, !tbaa !10
  %893 = getelementptr inbounds %struct.word_type, ptr %891, i64 0, i32 1
  %894 = load i8, ptr %893, align 8, !tbaa !5
  %895 = add i8 %894, -11
  %896 = icmp ult i8 %895, 2
  %897 = getelementptr inbounds %struct.word_type, ptr %891, i64 0, i32 1, i32 0, i32 1
  %898 = zext i8 %894 to i64
  %899 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %898
  %900 = select i1 %896, ptr %897, ptr %899
  %901 = load i8, ptr %900, align 1, !tbaa !5
  %902 = zext i8 %901 to i32
  store i32 %902, ptr @zz_size, align 4, !tbaa !8
  %903 = zext i8 %901 to i64
  %904 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %903
  %905 = load ptr, ptr %904, align 8, !tbaa !10
  store ptr %905, ptr %891, align 8, !tbaa !5
  %906 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %907 = load i32, ptr @zz_size, align 4, !tbaa !8
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %908
  store ptr %906, ptr %909, align 8, !tbaa !10
  br label %910

910:                                              ; preds = %890, %841
  %911 = phi ptr [ %595, %841 ], [ %892, %890 ]
  %912 = load ptr, ptr %16, align 8, !tbaa !5
  %913 = icmp eq ptr %912, %0
  br i1 %913, label %914, label %25

914:                                              ; preds = %910, %381, %15
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %915 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %916 = load i8, ptr %915, align 8, !tbaa !5
  %917 = add i8 %916, -11
  %918 = icmp ult i8 %917, 2
  %919 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 1
  %920 = zext i8 %916 to i64
  %921 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %920
  %922 = select i1 %918, ptr %919, ptr %921
  %923 = load i8, ptr %922, align 1, !tbaa !5
  %924 = zext i8 %923 to i32
  store i32 %924, ptr @zz_size, align 4, !tbaa !8
  %925 = zext i8 %923 to i64
  %926 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %925
  %927 = load ptr, ptr %926, align 8, !tbaa !10
  store ptr %927, ptr %0, align 8, !tbaa !5
  %928 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %929 = load i32, ptr @zz_size, align 4, !tbaa !8
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %930
  store ptr %928, ptr %931, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DetachEnv(ptr noundef) local_unnamed_addr #2

declare void @SizeGalley(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Constrained(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @AdjustSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Promote(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.CONSTRAINT, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %11 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %15, ptr noundef nonnull @.str.17) #7
  br label %17

17:                                               ; preds = %14, %4
  %18 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !5
  %20 = icmp eq i8 %19, 0
  %21 = icmp eq ptr %1, %0
  %22 = or i1 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %24, ptr noundef nonnull @.str.18) #7
  br label %26

26:                                               ; preds = %23, %17
  %27 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %32 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %31, ptr noundef nonnull @.str.19) #7
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.word_type, ptr %2, i64 0, i32 1
  store i8 122, ptr %34, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.closure_type, ptr %2, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  br i1 %21, label %49, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %1, %33 ]
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !5
  switch i8 %42, label %43 [
    i8 0, label %37
    i8 1, label %46
  ]

43:                                               ; preds = %37
  %44 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %45 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %44, ptr noundef nonnull @.str.20) #7
  br label %46

46:                                               ; preds = %37, %43
  %47 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  br label %125

49:                                               ; preds = %33
  %50 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %51 = zext i8 %50 to i32
  store i32 %51, ptr @zz_size, align 4, !tbaa !8
  %52 = zext i8 %50 to i64
  %53 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %58 = tail call ptr @GetMemory(i32 noundef %51, ptr noundef %57) #7
  store ptr %58, ptr @zz_hold, align 8, !tbaa !10
  br label %61

59:                                               ; preds = %49
  store ptr %54, ptr @zz_hold, align 8, !tbaa !10
  %60 = load ptr, ptr %54, align 8, !tbaa !5
  store ptr %60, ptr %53, align 8, !tbaa !10
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %58, %56 ], [ %54, %59 ]
  %63 = getelementptr inbounds %struct.word_type, ptr %62, i64 0, i32 1
  store i8 1, ptr %63, align 8, !tbaa !5
  %64 = getelementptr inbounds [2 x %struct.LIST], ptr %62, i64 0, i64 1
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %62, i64 0, i64 1, i32 1
  store ptr %62, ptr %65, align 8, !tbaa !5
  store ptr %62, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.LIST, ptr %62, i64 0, i32 1
  store ptr %62, ptr %66, align 8, !tbaa !5
  store ptr %62, ptr %62, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !5
  %69 = getelementptr inbounds %struct.word_type, ptr %62, i64 0, i32 1, i32 0, i32 2
  store i16 %68, ptr %69, align 2, !tbaa !5
  %70 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1048575
  %73 = getelementptr inbounds %struct.word_type, ptr %62, i64 0, i32 1, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -1048576
  %76 = or disjoint i32 %75, %72
  store i32 %76, ptr %73, align 4
  %77 = load i32, ptr %70, align 4
  %78 = and i32 %77, -1048576
  %79 = or disjoint i32 %78, %72
  store i32 %79, ptr %73, align 4
  %80 = getelementptr inbounds i8, ptr %62, i64 41
  store i8 0, ptr %80, align 1, !tbaa !5
  %81 = getelementptr inbounds i8, ptr %62, i64 42
  store i8 1, ptr %81, align 2, !tbaa !5
  %82 = getelementptr inbounds %struct.gapobj_type, ptr %62, i64 0, i32 3
  %83 = load i16, ptr %82, align 4
  %84 = trunc i32 %3 to i16
  %85 = shl i16 %84, 9
  %86 = and i16 %85, 512
  %87 = and i16 %83, 127
  %88 = or disjoint i16 %86, %87
  %89 = or disjoint i16 %88, 1024
  store i16 %89, ptr %82, align 4
  %90 = getelementptr inbounds %struct.gapobj_type, ptr %62, i64 0, i32 3, i32 1
  store i16 0, ptr %90, align 2, !tbaa !5
  %91 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %92 = zext i8 %91 to i32
  store i32 %92, ptr @zz_size, align 4, !tbaa !8
  %93 = zext i8 %91 to i64
  %94 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %61
  %98 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %99 = tail call ptr @GetMemory(i32 noundef %92, ptr noundef %98) #7
  br label %102

100:                                              ; preds = %61
  store ptr %95, ptr @zz_hold, align 8, !tbaa !10
  %101 = load ptr, ptr %95, align 8, !tbaa !5
  store ptr %101, ptr %94, align 8, !tbaa !10
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi ptr [ %95, %100 ], [ %99, %97 ]
  %104 = getelementptr inbounds %struct.word_type, ptr %103, i64 0, i32 1
  store i8 0, ptr %104, align 8, !tbaa !5
  %105 = getelementptr inbounds [2 x %struct.LIST], ptr %103, i64 0, i64 1, i32 1
  store ptr %103, ptr %105, align 8, !tbaa !5
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %103, i64 0, i64 1
  store ptr %103, ptr %106, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.LIST, ptr %103, i64 0, i32 1
  store ptr %103, ptr %107, align 8, !tbaa !5
  store ptr %103, ptr %103, align 8, !tbaa !5
  store ptr %103, ptr @xx_link, align 8, !tbaa !10
  store ptr %103, ptr @zz_res, align 8, !tbaa !10
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %108 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %108, ptr @zz_tmp, align 8, !tbaa !10
  %109 = load ptr, ptr %103, align 8, !tbaa !5
  store ptr %109, ptr %0, align 8, !tbaa !5
  %110 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %111 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.LIST, ptr %112, i64 0, i32 1
  store ptr %110, ptr %113, align 8, !tbaa !5
  %114 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %114, ptr %111, align 8, !tbaa !5
  %115 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %116 = getelementptr inbounds %struct.LIST, ptr %114, i64 0, i32 1
  store ptr %115, ptr %116, align 8, !tbaa !5
  %117 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %117, ptr @zz_res, align 8, !tbaa !10
  store ptr %62, ptr @zz_hold, align 8, !tbaa !10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %102
  %120 = load ptr, ptr %64, align 8, !tbaa !5
  store ptr %120, ptr @zz_tmp, align 8, !tbaa !10
  %121 = getelementptr inbounds [2 x %struct.LIST], ptr %117, i64 0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  store ptr %122, ptr %64, align 8, !tbaa !5
  %123 = getelementptr inbounds [2 x %struct.LIST], ptr %122, i64 0, i64 1, i32 1
  store ptr %62, ptr %123, align 8, !tbaa !5
  store ptr %120, ptr %121, align 8, !tbaa !5
  %124 = getelementptr inbounds [2 x %struct.LIST], ptr %120, i64 0, i64 1, i32 1
  store ptr %117, ptr %124, align 8, !tbaa !5
  br label %125

125:                                              ; preds = %102, %119, %46
  %126 = phi ptr [ %40, %46 ], [ %62, %119 ], [ %62, %102 ]
  %127 = phi ptr [ %48, %46 ], [ %0, %119 ], [ %0, %102 ]
  %128 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 8
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = icmp eq ptr %129, null
  br i1 %130, label %580, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr %129, align 8, !tbaa !5
  %133 = icmp eq ptr %132, %129
  br i1 %133, label %146, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds i8, ptr %0, i64 42
  %136 = load i16, ptr %135, align 2
  %137 = and i16 %136, 1024
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134, %139
  %140 = phi ptr [ %142, %139 ], [ %132, %134 ]
  %141 = getelementptr inbounds [2 x %struct.LIST], ptr %140, i64 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = getelementptr inbounds %struct.word_type, ptr %142, i64 0, i32 1
  %144 = load i8, ptr %143, align 8, !tbaa !5
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %139, label %146

146:                                              ; preds = %139, %131, %134
  %147 = phi ptr [ null, %134 ], [ null, %131 ], [ %142, %139 ]
  %148 = load ptr, ptr %27, align 8, !tbaa !5
  %149 = icmp eq ptr %148, %127
  br i1 %149, label %580, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, ptr %0, i64 42
  br label %152

152:                                              ; preds = %150, %575
  %153 = phi ptr [ %148, %150 ], [ %578, %575 ]
  %154 = phi ptr [ %147, %150 ], [ %576, %575 ]
  br label %155

155:                                              ; preds = %152, %155
  %156 = phi ptr [ %158, %155 ], [ %153, %152 ]
  %157 = getelementptr inbounds [2 x %struct.LIST], ptr %156, i64 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  %159 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1
  %160 = load i8, ptr %159, align 8, !tbaa !5
  switch i8 %160, label %507 [
    i8 0, label %155
    i8 1, label %161
    i8 11, label %416
    i8 12, label %416
  ]

161:                                              ; preds = %155
  %162 = icmp eq ptr %154, null
  br i1 %162, label %575, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1
  %165 = load i8, ptr %164, align 8, !tbaa !5
  %166 = icmp eq i8 %165, 1
  br i1 %166, label %167, label %311

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1, i32 0, i32 2
  %169 = load i16, ptr %168, align 2, !tbaa !5
  %170 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1, i32 0, i32 2
  store i16 %169, ptr %170, align 2, !tbaa !5
  %171 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1, i32 0, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 1048575
  %174 = getelementptr inbounds %struct.word_type, ptr %154, i64 0, i32 1, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = and i32 %175, -1048576
  %177 = or disjoint i32 %176, %173
  store i32 %177, ptr %174, align 4
  %178 = load i32, ptr %171, align 4
  %179 = and i32 %178, -1048576
  %180 = or disjoint i32 %179, %173
  store i32 %180, ptr %174, align 4
  %181 = getelementptr inbounds %struct.gapobj_type, ptr %158, i64 0, i32 3
  %182 = load i16, ptr %181, align 4
  %183 = and i16 %182, 128
  %184 = getelementptr inbounds %struct.gapobj_type, ptr %154, i64 0, i32 3
  %185 = load i16, ptr %184, align 4
  %186 = and i16 %185, -129
  %187 = or disjoint i16 %186, %183
  store i16 %187, ptr %184, align 4
  %188 = load i16, ptr %181, align 4
  %189 = and i16 %188, 256
  %190 = and i16 %187, -257
  %191 = or disjoint i16 %190, %189
  store i16 %191, ptr %184, align 4
  %192 = load i16, ptr %181, align 4
  %193 = and i16 %192, 512
  %194 = and i16 %191, -513
  %195 = or disjoint i16 %194, %193
  store i16 %195, ptr %184, align 4
  %196 = load i16, ptr %181, align 4
  %197 = and i16 %196, 7168
  %198 = and i16 %195, -7169
  %199 = or disjoint i16 %198, %197
  store i16 %199, ptr %184, align 4
  %200 = load i16, ptr %181, align 4
  %201 = and i16 %200, -8192
  %202 = and i16 %199, 8191
  %203 = or disjoint i16 %202, %201
  store i16 %203, ptr %184, align 4
  %204 = getelementptr inbounds %struct.gapobj_type, ptr %158, i64 0, i32 3, i32 1
  %205 = load i16, ptr %204, align 2, !tbaa !5
  %206 = getelementptr inbounds %struct.gapobj_type, ptr %154, i64 0, i32 3, i32 1
  store i16 %205, ptr %206, align 2, !tbaa !5
  %207 = getelementptr inbounds %struct.LIST, ptr %154, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !5
  %209 = icmp eq ptr %208, %154
  br i1 %209, label %257, label %210

210:                                              ; preds = %167
  store ptr %208, ptr @xx_link, align 8, !tbaa !10
  %211 = getelementptr inbounds [2 x %struct.LIST], ptr %208, i64 0, i64 1, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  %213 = icmp eq ptr %212, %208
  br i1 %213, label %219, label %214

214:                                              ; preds = %210
  store ptr %212, ptr @zz_res, align 8, !tbaa !10
  %215 = getelementptr inbounds [2 x %struct.LIST], ptr %208, i64 0, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !5
  %217 = getelementptr inbounds [2 x %struct.LIST], ptr %212, i64 0, i64 1
  store ptr %216, ptr %217, align 8, !tbaa !5
  %218 = getelementptr inbounds [2 x %struct.LIST], ptr %216, i64 0, i64 1, i32 1
  store ptr %212, ptr %218, align 8, !tbaa !5
  store ptr %208, ptr %211, align 8, !tbaa !5
  store ptr %208, ptr %215, align 8, !tbaa !5
  br label %219

219:                                              ; preds = %210, %214
  %220 = phi ptr [ %212, %214 ], [ null, %210 ]
  store ptr %220, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %208, ptr @zz_hold, align 8, !tbaa !10
  %221 = getelementptr inbounds %struct.LIST, ptr %208, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !5
  %223 = icmp eq ptr %222, %208
  br i1 %223, label %232, label %224

224:                                              ; preds = %219
  store ptr %222, ptr @zz_res, align 8, !tbaa !10
  %225 = load ptr, ptr %208, align 8, !tbaa !5
  store ptr %225, ptr %222, align 8, !tbaa !5
  %226 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %227 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %228 = load ptr, ptr %227, align 8, !tbaa !5
  %229 = getelementptr inbounds %struct.LIST, ptr %228, i64 0, i32 1
  store ptr %226, ptr %229, align 8, !tbaa !5
  %230 = getelementptr inbounds %struct.LIST, ptr %227, i64 0, i32 1
  store ptr %227, ptr %230, align 8, !tbaa !5
  store ptr %227, ptr %227, align 8, !tbaa !5
  %231 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %232

232:                                              ; preds = %219, %224
  %233 = phi ptr [ %208, %219 ], [ %231, %224 ]
  store ptr %233, ptr @zz_hold, align 8, !tbaa !10
  %234 = getelementptr inbounds %struct.word_type, ptr %233, i64 0, i32 1
  %235 = load i8, ptr %234, align 8, !tbaa !5
  %236 = add i8 %235, -11
  %237 = icmp ult i8 %236, 2
  %238 = getelementptr inbounds %struct.word_type, ptr %233, i64 0, i32 1, i32 0, i32 1
  %239 = zext i8 %235 to i64
  %240 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %239
  %241 = select i1 %237, ptr %238, ptr %240
  %242 = load i8, ptr %241, align 1, !tbaa !5
  %243 = zext i8 %242 to i32
  store i32 %243, ptr @zz_size, align 4, !tbaa !8
  %244 = zext i8 %242 to i64
  %245 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !10
  store ptr %246, ptr %233, align 8, !tbaa !5
  %247 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %248 = load i32, ptr @zz_size, align 4, !tbaa !8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %249
  store ptr %247, ptr %250, align 8, !tbaa !10
  %251 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %252 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  %254 = icmp eq ptr %253, %251
  br i1 %254, label %255, label %257

255:                                              ; preds = %232
  %256 = tail call i32 @DisposeObject(ptr noundef nonnull %251) #7
  br label %257

257:                                              ; preds = %232, %255, %167
  %258 = getelementptr inbounds %struct.LIST, ptr %158, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !5
  %260 = icmp eq ptr %259, %158
  br i1 %260, label %308, label %261

261:                                              ; preds = %257, %261
  %262 = phi ptr [ %264, %261 ], [ %259, %257 ]
  %263 = getelementptr inbounds [2 x %struct.LIST], ptr %262, i64 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !5
  %265 = getelementptr inbounds %struct.word_type, ptr %264, i64 0, i32 1
  %266 = load i8, ptr %265, align 8, !tbaa !5
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %261, label %268

268:                                              ; preds = %261
  %269 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %270 = tail call ptr @CopyObject(ptr noundef nonnull %264, ptr noundef %269) #7
  %271 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %272 = zext i8 %271 to i32
  store i32 %272, ptr @zz_size, align 4, !tbaa !8
  %273 = zext i8 %271 to i64
  %274 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !10
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %268
  %278 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %279 = tail call ptr @GetMemory(i32 noundef %272, ptr noundef %278) #7
  br label %282

280:                                              ; preds = %268
  store ptr %275, ptr @zz_hold, align 8, !tbaa !10
  %281 = load ptr, ptr %275, align 8, !tbaa !5
  store ptr %281, ptr %274, align 8, !tbaa !10
  br label %282

282:                                              ; preds = %277, %280
  %283 = phi ptr [ %279, %277 ], [ %275, %280 ]
  %284 = getelementptr inbounds %struct.word_type, ptr %283, i64 0, i32 1
  store i8 0, ptr %284, align 8, !tbaa !5
  %285 = getelementptr inbounds [2 x %struct.LIST], ptr %283, i64 0, i64 1, i32 1
  store ptr %283, ptr %285, align 8, !tbaa !5
  %286 = getelementptr inbounds [2 x %struct.LIST], ptr %283, i64 0, i64 1
  store ptr %283, ptr %286, align 8, !tbaa !5
  %287 = getelementptr inbounds %struct.LIST, ptr %283, i64 0, i32 1
  store ptr %283, ptr %287, align 8, !tbaa !5
  store ptr %283, ptr %283, align 8, !tbaa !5
  store ptr %283, ptr @xx_link, align 8, !tbaa !10
  store ptr %283, ptr @zz_res, align 8, !tbaa !10
  store ptr %154, ptr @zz_hold, align 8, !tbaa !10
  %288 = load ptr, ptr %154, align 8, !tbaa !5
  store ptr %288, ptr @zz_tmp, align 8, !tbaa !10
  %289 = load ptr, ptr %283, align 8, !tbaa !5
  store ptr %289, ptr %154, align 8, !tbaa !5
  %290 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %291 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %292 = load ptr, ptr %291, align 8, !tbaa !5
  %293 = getelementptr inbounds %struct.LIST, ptr %292, i64 0, i32 1
  store ptr %290, ptr %293, align 8, !tbaa !5
  %294 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %294, ptr %291, align 8, !tbaa !5
  %295 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %296 = getelementptr inbounds %struct.LIST, ptr %294, i64 0, i32 1
  store ptr %295, ptr %296, align 8, !tbaa !5
  %297 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %297, ptr @zz_res, align 8, !tbaa !10
  store ptr %270, ptr @zz_hold, align 8, !tbaa !10
  %298 = icmp eq ptr %270, null
  %299 = icmp eq ptr %297, null
  %300 = select i1 %298, i1 true, i1 %299
  br i1 %300, label %308, label %301

301:                                              ; preds = %282
  %302 = getelementptr inbounds [2 x %struct.LIST], ptr %270, i64 0, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !5
  store ptr %303, ptr @zz_tmp, align 8, !tbaa !10
  %304 = getelementptr inbounds [2 x %struct.LIST], ptr %297, i64 0, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  store ptr %305, ptr %302, align 8, !tbaa !5
  %306 = getelementptr inbounds [2 x %struct.LIST], ptr %305, i64 0, i64 1, i32 1
  store ptr %270, ptr %306, align 8, !tbaa !5
  store ptr %303, ptr %304, align 8, !tbaa !5
  %307 = getelementptr inbounds [2 x %struct.LIST], ptr %303, i64 0, i64 1, i32 1
  store ptr %297, ptr %307, align 8, !tbaa !5
  br label %308

308:                                              ; preds = %282, %301, %257
  %309 = load i16, ptr %184, align 4
  %310 = or i16 %309, 512
  store i16 %310, ptr %184, align 4
  br label %575

311:                                              ; preds = %163
  %312 = load i16, ptr %151, align 2
  %313 = and i16 %312, -1025
  store i16 %313, ptr %151, align 2
  %314 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %315 = zext i8 %314 to i32
  store i32 %315, ptr @zz_size, align 4, !tbaa !8
  %316 = zext i8 %314 to i64
  %317 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !10
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %311
  %321 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %322 = tail call ptr @GetMemory(i32 noundef %315, ptr noundef %321) #7
  store ptr %322, ptr @zz_hold, align 8, !tbaa !10
  br label %325

323:                                              ; preds = %311
  store ptr %318, ptr @zz_hold, align 8, !tbaa !10
  %324 = load ptr, ptr %318, align 8, !tbaa !5
  store ptr %324, ptr %317, align 8, !tbaa !10
  br label %325

325:                                              ; preds = %320, %323
  %326 = phi ptr [ %322, %320 ], [ %318, %323 ]
  %327 = getelementptr inbounds %struct.word_type, ptr %326, i64 0, i32 1
  store i8 1, ptr %327, align 8, !tbaa !5
  %328 = getelementptr inbounds [2 x %struct.LIST], ptr %326, i64 0, i64 1
  %329 = getelementptr inbounds [2 x %struct.LIST], ptr %326, i64 0, i64 1, i32 1
  store ptr %326, ptr %329, align 8, !tbaa !5
  store ptr %326, ptr %328, align 8, !tbaa !5
  %330 = getelementptr inbounds %struct.LIST, ptr %326, i64 0, i32 1
  store ptr %326, ptr %330, align 8, !tbaa !5
  store ptr %326, ptr %326, align 8, !tbaa !5
  %331 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1, i32 0, i32 2
  %332 = load i16, ptr %331, align 2, !tbaa !5
  %333 = getelementptr inbounds %struct.word_type, ptr %326, i64 0, i32 1, i32 0, i32 2
  store i16 %332, ptr %333, align 2, !tbaa !5
  %334 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1, i32 0, i32 3
  %335 = load i32, ptr %334, align 4
  %336 = and i32 %335, 1048575
  %337 = getelementptr inbounds %struct.word_type, ptr %326, i64 0, i32 1, i32 0, i32 3
  %338 = load i32, ptr %337, align 4
  %339 = and i32 %338, -1048576
  %340 = or disjoint i32 %339, %336
  store i32 %340, ptr %337, align 4
  %341 = load i32, ptr %334, align 4
  %342 = and i32 %341, -1048576
  %343 = or disjoint i32 %342, %336
  store i32 %343, ptr %337, align 4
  %344 = getelementptr inbounds %struct.gapobj_type, ptr %158, i64 0, i32 3
  %345 = load i16, ptr %344, align 4
  %346 = and i16 %345, 128
  %347 = getelementptr inbounds %struct.gapobj_type, ptr %326, i64 0, i32 3
  %348 = load i16, ptr %347, align 4
  %349 = and i16 %348, -129
  %350 = or disjoint i16 %349, %346
  store i16 %350, ptr %347, align 4
  %351 = load i16, ptr %344, align 4
  %352 = and i16 %351, 256
  %353 = and i16 %350, -257
  %354 = or disjoint i16 %353, %352
  store i16 %354, ptr %347, align 4
  %355 = load i16, ptr %344, align 4
  %356 = and i16 %355, 512
  %357 = and i16 %354, -513
  %358 = or disjoint i16 %357, %356
  store i16 %358, ptr %347, align 4
  %359 = load i16, ptr %344, align 4
  %360 = and i16 %359, 7168
  %361 = and i16 %358, -7169
  %362 = or disjoint i16 %361, %360
  store i16 %362, ptr %347, align 4
  %363 = load i16, ptr %344, align 4
  %364 = and i16 %363, -8192
  %365 = and i16 %362, 8191
  %366 = or disjoint i16 %365, %364
  store i16 %366, ptr %347, align 4
  %367 = getelementptr inbounds %struct.gapobj_type, ptr %158, i64 0, i32 3, i32 1
  %368 = load i16, ptr %367, align 2, !tbaa !5
  %369 = getelementptr inbounds %struct.gapobj_type, ptr %326, i64 0, i32 3, i32 1
  store i16 %368, ptr %369, align 2, !tbaa !5
  %370 = or i16 %366, 512
  store i16 %370, ptr %347, align 4
  %371 = getelementptr inbounds i8, ptr %326, i64 41
  store i8 1, ptr %371, align 1, !tbaa !5
  %372 = getelementptr inbounds i8, ptr %326, i64 42
  store i8 0, ptr %372, align 2, !tbaa !5
  %373 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %374 = zext i8 %373 to i32
  store i32 %374, ptr @zz_size, align 4, !tbaa !8
  %375 = zext i8 %373 to i64
  %376 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !10
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %382

379:                                              ; preds = %325
  %380 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %381 = tail call ptr @GetMemory(i32 noundef %374, ptr noundef %380) #7
  br label %384

382:                                              ; preds = %325
  store ptr %377, ptr @zz_hold, align 8, !tbaa !10
  %383 = load ptr, ptr %377, align 8, !tbaa !5
  store ptr %383, ptr %376, align 8, !tbaa !10
  br label %384

384:                                              ; preds = %379, %382
  %385 = phi ptr [ %381, %379 ], [ %377, %382 ]
  %386 = getelementptr inbounds %struct.word_type, ptr %385, i64 0, i32 1
  store i8 0, ptr %386, align 8, !tbaa !5
  %387 = getelementptr inbounds [2 x %struct.LIST], ptr %385, i64 0, i64 1, i32 1
  store ptr %385, ptr %387, align 8, !tbaa !5
  %388 = getelementptr inbounds [2 x %struct.LIST], ptr %385, i64 0, i64 1
  store ptr %385, ptr %388, align 8, !tbaa !5
  %389 = getelementptr inbounds %struct.LIST, ptr %385, i64 0, i32 1
  store ptr %385, ptr %389, align 8, !tbaa !5
  store ptr %385, ptr %385, align 8, !tbaa !5
  store ptr %385, ptr @xx_link, align 8, !tbaa !10
  store ptr %385, ptr @zz_res, align 8, !tbaa !10
  %390 = load ptr, ptr %128, align 8, !tbaa !5
  store ptr %390, ptr @zz_hold, align 8, !tbaa !10
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %393

392:                                              ; preds = %384
  store ptr %326, ptr @zz_hold, align 8, !tbaa !10
  br label %408

393:                                              ; preds = %384
  %394 = load ptr, ptr %390, align 8, !tbaa !5
  store ptr %394, ptr @zz_tmp, align 8, !tbaa !10
  %395 = load ptr, ptr %385, align 8, !tbaa !5
  store ptr %395, ptr %390, align 8, !tbaa !5
  %396 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %397 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %398 = load ptr, ptr %397, align 8, !tbaa !5
  %399 = getelementptr inbounds %struct.LIST, ptr %398, i64 0, i32 1
  store ptr %396, ptr %399, align 8, !tbaa !5
  %400 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %400, ptr %397, align 8, !tbaa !5
  %401 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %402 = getelementptr inbounds %struct.LIST, ptr %400, i64 0, i32 1
  store ptr %401, ptr %402, align 8, !tbaa !5
  %403 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %403, ptr @zz_res, align 8, !tbaa !10
  store ptr %326, ptr @zz_hold, align 8, !tbaa !10
  %404 = icmp eq ptr %403, null
  br i1 %404, label %575, label %405

405:                                              ; preds = %393
  %406 = getelementptr inbounds [2 x %struct.LIST], ptr %403, i64 0, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !5
  br label %408

408:                                              ; preds = %405, %392
  %409 = phi ptr [ %385, %392 ], [ %407, %405 ]
  %410 = phi ptr [ %385, %392 ], [ %403, %405 ]
  %411 = load ptr, ptr %328, align 8, !tbaa !5
  store ptr %411, ptr @zz_tmp, align 8, !tbaa !10
  %412 = getelementptr inbounds [2 x %struct.LIST], ptr %410, i64 0, i64 1
  store ptr %409, ptr %328, align 8, !tbaa !5
  %413 = load ptr, ptr %412, align 8, !tbaa !5
  %414 = getelementptr inbounds [2 x %struct.LIST], ptr %413, i64 0, i64 1, i32 1
  store ptr %326, ptr %414, align 8, !tbaa !5
  store ptr %411, ptr %412, align 8, !tbaa !5
  %415 = getelementptr inbounds [2 x %struct.LIST], ptr %411, i64 0, i64 1, i32 1
  store ptr %410, ptr %415, align 8, !tbaa !5
  br label %575

416:                                              ; preds = %155, %155
  %417 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1
  %418 = load i16, ptr %151, align 2
  %419 = and i16 %418, -1025
  store i16 %419, ptr %151, align 2
  %420 = load i8, ptr %417, align 8, !tbaa !5
  %421 = zext i8 %420 to i32
  %422 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 4
  %423 = tail call ptr @MakeWord(i32 noundef %421, ptr noundef nonnull %422, ptr noundef nonnull %417) #7
  %424 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 3
  %425 = load i16, ptr %151, align 2
  %426 = lshr i16 %425, 8
  %427 = and i16 %426, 1
  %428 = zext nneg i16 %427 to i64
  %429 = getelementptr inbounds [2 x i32], ptr %424, i64 0, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !5
  %431 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 3
  store i32 %430, ptr %431, align 8, !tbaa !5
  %432 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 3, i32 1
  %433 = load i16, ptr %151, align 2
  %434 = lshr i16 %433, 8
  %435 = and i16 %434, 1
  %436 = zext nneg i16 %435 to i64
  %437 = getelementptr inbounds [2 x i32], ptr %432, i64 0, i64 %436
  %438 = load i32, ptr %437, align 4, !tbaa !5
  %439 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 3, i32 1
  store i32 %438, ptr %439, align 8, !tbaa !5
  %440 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 2
  %441 = load i32, ptr %440, align 8
  %442 = and i32 %441, 4095
  %443 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 2
  %444 = load i32, ptr %443, align 8
  %445 = and i32 %444, -4096
  %446 = or disjoint i32 %445, %442
  store i32 %446, ptr %443, align 8
  %447 = load i32, ptr %440, align 8
  %448 = and i32 %447, 4190208
  %449 = and i32 %446, -4190209
  %450 = or disjoint i32 %449, %448
  store i32 %450, ptr %443, align 8
  %451 = load i32, ptr %440, align 8
  %452 = and i32 %451, 4194304
  %453 = and i32 %450, -4194305
  %454 = or disjoint i32 %453, %452
  store i32 %454, ptr %443, align 8
  %455 = load i32, ptr %440, align 8
  %456 = and i32 %455, 528482304
  %457 = and i32 %454, -528482305
  %458 = or disjoint i32 %457, %456
  store i32 %458, ptr %443, align 8
  %459 = load i32, ptr %440, align 8
  %460 = and i32 %459, -2147483648
  %461 = and i32 %458, 2147483647
  %462 = or disjoint i32 %461, %460
  store i32 %462, ptr %443, align 8
  %463 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %464 = zext i8 %463 to i32
  store i32 %464, ptr @zz_size, align 4, !tbaa !8
  %465 = zext i8 %463 to i64
  %466 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !10
  %468 = icmp eq ptr %467, null
  br i1 %468, label %469, label %472

469:                                              ; preds = %416
  %470 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %471 = tail call ptr @GetMemory(i32 noundef %464, ptr noundef %470) #7
  br label %474

472:                                              ; preds = %416
  store ptr %467, ptr @zz_hold, align 8, !tbaa !10
  %473 = load ptr, ptr %467, align 8, !tbaa !5
  store ptr %473, ptr %466, align 8, !tbaa !10
  br label %474

474:                                              ; preds = %469, %472
  %475 = phi ptr [ %471, %469 ], [ %467, %472 ]
  %476 = getelementptr inbounds %struct.word_type, ptr %475, i64 0, i32 1
  store i8 0, ptr %476, align 8, !tbaa !5
  %477 = getelementptr inbounds [2 x %struct.LIST], ptr %475, i64 0, i64 1, i32 1
  store ptr %475, ptr %477, align 8, !tbaa !5
  %478 = getelementptr inbounds [2 x %struct.LIST], ptr %475, i64 0, i64 1
  store ptr %475, ptr %478, align 8, !tbaa !5
  %479 = getelementptr inbounds %struct.LIST, ptr %475, i64 0, i32 1
  store ptr %475, ptr %479, align 8, !tbaa !5
  store ptr %475, ptr %475, align 8, !tbaa !5
  store ptr %475, ptr @xx_link, align 8, !tbaa !10
  store ptr %475, ptr @zz_res, align 8, !tbaa !10
  %480 = load ptr, ptr %128, align 8, !tbaa !5
  store ptr %480, ptr @zz_hold, align 8, !tbaa !10
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %483

482:                                              ; preds = %474
  store ptr %423, ptr @zz_hold, align 8, !tbaa !10
  br label %498

483:                                              ; preds = %474
  %484 = load ptr, ptr %480, align 8, !tbaa !5
  store ptr %484, ptr @zz_tmp, align 8, !tbaa !10
  %485 = load ptr, ptr %475, align 8, !tbaa !5
  store ptr %485, ptr %480, align 8, !tbaa !5
  %486 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %487 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %488 = load ptr, ptr %487, align 8, !tbaa !5
  %489 = getelementptr inbounds %struct.LIST, ptr %488, i64 0, i32 1
  store ptr %486, ptr %489, align 8, !tbaa !5
  %490 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %490, ptr %487, align 8, !tbaa !5
  %491 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %492 = getelementptr inbounds %struct.LIST, ptr %490, i64 0, i32 1
  store ptr %491, ptr %492, align 8, !tbaa !5
  %493 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %493, ptr @zz_res, align 8, !tbaa !10
  store ptr %423, ptr @zz_hold, align 8, !tbaa !10
  %494 = icmp eq ptr %493, null
  br i1 %494, label %575, label %495

495:                                              ; preds = %483
  %496 = getelementptr inbounds [2 x %struct.LIST], ptr %493, i64 0, i64 1
  %497 = load ptr, ptr %496, align 8, !tbaa !5
  br label %498

498:                                              ; preds = %495, %482
  %499 = phi ptr [ %475, %482 ], [ %497, %495 ]
  %500 = phi ptr [ %475, %482 ], [ %493, %495 ]
  %501 = getelementptr inbounds [2 x %struct.LIST], ptr %423, i64 0, i64 1
  %502 = load ptr, ptr %501, align 8, !tbaa !5
  store ptr %502, ptr @zz_tmp, align 8, !tbaa !10
  %503 = getelementptr inbounds [2 x %struct.LIST], ptr %500, i64 0, i64 1
  store ptr %499, ptr %501, align 8, !tbaa !5
  %504 = load ptr, ptr %503, align 8, !tbaa !5
  %505 = getelementptr inbounds [2 x %struct.LIST], ptr %504, i64 0, i64 1, i32 1
  store ptr %423, ptr %505, align 8, !tbaa !5
  store ptr %502, ptr %503, align 8, !tbaa !5
  %506 = getelementptr inbounds [2 x %struct.LIST], ptr %502, i64 0, i64 1, i32 1
  store ptr %500, ptr %506, align 8, !tbaa !5
  br label %575

507:                                              ; preds = %155
  %508 = add i8 %160, -9
  %509 = icmp ult i8 %508, 91
  br i1 %509, label %510, label %575

510:                                              ; preds = %507
  %511 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1
  %512 = load i16, ptr %151, align 2
  %513 = and i16 %512, -1025
  store i16 %513, ptr %151, align 2
  %514 = tail call ptr @MakeWord(i32 noundef 12, ptr noundef nonnull @.str.21, ptr noundef nonnull %511) #7
  %515 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 3
  %516 = load i16, ptr %151, align 2
  %517 = lshr i16 %516, 8
  %518 = and i16 %517, 1
  %519 = zext nneg i16 %518 to i64
  %520 = getelementptr inbounds [2 x i32], ptr %515, i64 0, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !5
  %522 = getelementptr inbounds %struct.word_type, ptr %514, i64 0, i32 3
  store i32 %521, ptr %522, align 8, !tbaa !5
  %523 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 3, i32 1
  %524 = load i16, ptr %151, align 2
  %525 = lshr i16 %524, 8
  %526 = and i16 %525, 1
  %527 = zext nneg i16 %526 to i64
  %528 = getelementptr inbounds [2 x i32], ptr %523, i64 0, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !5
  %530 = getelementptr inbounds %struct.word_type, ptr %514, i64 0, i32 3, i32 1
  store i32 %529, ptr %530, align 8, !tbaa !5
  %531 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %532 = zext i8 %531 to i32
  store i32 %532, ptr @zz_size, align 4, !tbaa !8
  %533 = zext i8 %531 to i64
  %534 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %533
  %535 = load ptr, ptr %534, align 8, !tbaa !10
  %536 = icmp eq ptr %535, null
  br i1 %536, label %537, label %540

537:                                              ; preds = %510
  %538 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %539 = tail call ptr @GetMemory(i32 noundef %532, ptr noundef %538) #7
  br label %542

540:                                              ; preds = %510
  store ptr %535, ptr @zz_hold, align 8, !tbaa !10
  %541 = load ptr, ptr %535, align 8, !tbaa !5
  store ptr %541, ptr %534, align 8, !tbaa !10
  br label %542

542:                                              ; preds = %537, %540
  %543 = phi ptr [ %539, %537 ], [ %535, %540 ]
  %544 = getelementptr inbounds %struct.word_type, ptr %543, i64 0, i32 1
  store i8 0, ptr %544, align 8, !tbaa !5
  %545 = getelementptr inbounds [2 x %struct.LIST], ptr %543, i64 0, i64 1, i32 1
  store ptr %543, ptr %545, align 8, !tbaa !5
  %546 = getelementptr inbounds [2 x %struct.LIST], ptr %543, i64 0, i64 1
  store ptr %543, ptr %546, align 8, !tbaa !5
  %547 = getelementptr inbounds %struct.LIST, ptr %543, i64 0, i32 1
  store ptr %543, ptr %547, align 8, !tbaa !5
  store ptr %543, ptr %543, align 8, !tbaa !5
  store ptr %543, ptr @xx_link, align 8, !tbaa !10
  store ptr %543, ptr @zz_res, align 8, !tbaa !10
  %548 = load ptr, ptr %128, align 8, !tbaa !5
  store ptr %548, ptr @zz_hold, align 8, !tbaa !10
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %551

550:                                              ; preds = %542
  store ptr %514, ptr @zz_hold, align 8, !tbaa !10
  br label %566

551:                                              ; preds = %542
  %552 = load ptr, ptr %548, align 8, !tbaa !5
  store ptr %552, ptr @zz_tmp, align 8, !tbaa !10
  %553 = load ptr, ptr %543, align 8, !tbaa !5
  store ptr %553, ptr %548, align 8, !tbaa !5
  %554 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %555 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %556 = load ptr, ptr %555, align 8, !tbaa !5
  %557 = getelementptr inbounds %struct.LIST, ptr %556, i64 0, i32 1
  store ptr %554, ptr %557, align 8, !tbaa !5
  %558 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %558, ptr %555, align 8, !tbaa !5
  %559 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %560 = getelementptr inbounds %struct.LIST, ptr %558, i64 0, i32 1
  store ptr %559, ptr %560, align 8, !tbaa !5
  %561 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %561, ptr @zz_res, align 8, !tbaa !10
  store ptr %514, ptr @zz_hold, align 8, !tbaa !10
  %562 = icmp eq ptr %561, null
  br i1 %562, label %575, label %563

563:                                              ; preds = %551
  %564 = getelementptr inbounds [2 x %struct.LIST], ptr %561, i64 0, i64 1
  %565 = load ptr, ptr %564, align 8, !tbaa !5
  br label %566

566:                                              ; preds = %563, %550
  %567 = phi ptr [ %543, %550 ], [ %565, %563 ]
  %568 = phi ptr [ %543, %550 ], [ %561, %563 ]
  %569 = getelementptr inbounds [2 x %struct.LIST], ptr %514, i64 0, i64 1
  %570 = load ptr, ptr %569, align 8, !tbaa !5
  store ptr %570, ptr @zz_tmp, align 8, !tbaa !10
  %571 = getelementptr inbounds [2 x %struct.LIST], ptr %568, i64 0, i64 1
  store ptr %567, ptr %569, align 8, !tbaa !5
  %572 = load ptr, ptr %571, align 8, !tbaa !5
  %573 = getelementptr inbounds [2 x %struct.LIST], ptr %572, i64 0, i64 1, i32 1
  store ptr %514, ptr %573, align 8, !tbaa !5
  store ptr %570, ptr %571, align 8, !tbaa !5
  %574 = getelementptr inbounds [2 x %struct.LIST], ptr %570, i64 0, i64 1, i32 1
  store ptr %568, ptr %574, align 8, !tbaa !5
  br label %575

575:                                              ; preds = %551, %483, %393, %308, %408, %161, %507, %566, %498
  %576 = phi ptr [ null, %161 ], [ %154, %308 ], [ %326, %408 ], [ %423, %498 ], [ %154, %507 ], [ %514, %566 ], [ %326, %393 ], [ %423, %483 ], [ %514, %551 ]
  %577 = getelementptr inbounds %struct.LIST, ptr %153, i64 0, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !5
  %579 = icmp eq ptr %578, %127
  br i1 %579, label %580, label %152

580:                                              ; preds = %575, %146, %125
  %581 = phi ptr [ %126, %125 ], [ %126, %146 ], [ %158, %575 ]
  %582 = getelementptr inbounds i8, ptr %0, i64 42
  %583 = load i16, ptr %582, align 2
  %584 = and i16 %583, 288
  %585 = icmp eq i16 %584, 288
  br i1 %585, label %586, label %597

586:                                              ; preds = %580
  %587 = getelementptr inbounds i8, ptr %36, i64 42
  %588 = load i16, ptr %587, align 2
  %589 = and i16 %588, 4
  %590 = icmp eq i16 %589, 0
  br i1 %590, label %597, label %591

591:                                              ; preds = %586
  %592 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %593 = load ptr, ptr %592, align 8, !tbaa !5
  %594 = tail call ptr @SymName(ptr noundef %593) #7
  %595 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %11, ptr noundef %594) #7
  %596 = load i16, ptr %582, align 2
  br label %597

597:                                              ; preds = %591, %586, %580
  %598 = phi i16 [ %596, %591 ], [ %583, %586 ], [ %583, %580 ]
  %599 = and i16 %598, 256
  %600 = icmp eq i16 %599, 0
  br i1 %600, label %752, label %601

601:                                              ; preds = %597
  %602 = getelementptr inbounds i8, ptr %36, i64 42
  %603 = load i16, ptr %602, align 2
  %604 = and i16 %603, 16
  %605 = icmp ne i16 %604, 0
  %606 = and i16 %598, 32
  %607 = icmp eq i16 %606, 0
  %608 = or i1 %607, %605
  br i1 %608, label %752, label %609

609:                                              ; preds = %601
  %610 = getelementptr inbounds %struct.gapobj_type, ptr %581, i64 0, i32 3
  %611 = load i16, ptr %610, align 4
  %612 = and i16 %611, 512
  %613 = icmp eq i16 %612, 0
  br i1 %613, label %752, label %614

614:                                              ; preds = %609
  %615 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1, i32 1
  %616 = load ptr, ptr %615, align 8, !tbaa !5
  br label %617

617:                                              ; preds = %617, %614
  %618 = phi ptr [ %616, %614 ], [ %619, %617 ]
  %619 = load ptr, ptr %618, align 8, !tbaa !5
  %620 = getelementptr inbounds %struct.word_type, ptr %619, i64 0, i32 1
  %621 = load i8, ptr %620, align 8, !tbaa !5
  switch i8 %621, label %622 [
    i8 0, label %617
    i8 19, label %625
  ]

622:                                              ; preds = %617
  %623 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %624 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %623, ptr noundef nonnull @.str.23) #7
  br label %625

625:                                              ; preds = %617, %622
  %626 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 5), align 1, !tbaa !5
  %627 = zext i8 %626 to i32
  store i32 %627, ptr @zz_size, align 4, !tbaa !8
  %628 = zext i8 %626 to i64
  %629 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %628
  %630 = load ptr, ptr %629, align 8, !tbaa !10
  %631 = icmp eq ptr %630, null
  br i1 %631, label %632, label %635

632:                                              ; preds = %625
  %633 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %634 = tail call ptr @GetMemory(i32 noundef %627, ptr noundef %633) #7
  store ptr %634, ptr @zz_hold, align 8, !tbaa !10
  br label %637

635:                                              ; preds = %625
  store ptr %630, ptr @zz_hold, align 8, !tbaa !10
  %636 = load ptr, ptr %630, align 8, !tbaa !5
  store ptr %636, ptr %629, align 8, !tbaa !10
  br label %637

637:                                              ; preds = %632, %635
  %638 = phi ptr [ %634, %632 ], [ %630, %635 ]
  %639 = getelementptr inbounds %struct.word_type, ptr %638, i64 0, i32 1
  store i8 5, ptr %639, align 8, !tbaa !5
  %640 = getelementptr inbounds [2 x %struct.LIST], ptr %638, i64 0, i64 1
  %641 = getelementptr inbounds [2 x %struct.LIST], ptr %638, i64 0, i64 1, i32 1
  store ptr %638, ptr %641, align 8, !tbaa !5
  store ptr %638, ptr %640, align 8, !tbaa !5
  %642 = getelementptr inbounds %struct.LIST, ptr %638, i64 0, i32 1
  store ptr %638, ptr %642, align 8, !tbaa !5
  store ptr %638, ptr %638, align 8, !tbaa !5
  %643 = getelementptr inbounds %struct.word_type, ptr %638, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %643, i8 0, i64 16, i1 false)
  %644 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %645 = zext i8 %644 to i32
  store i32 %645, ptr @zz_size, align 4, !tbaa !8
  %646 = zext i8 %644 to i64
  %647 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %646
  %648 = load ptr, ptr %647, align 8, !tbaa !10
  %649 = icmp eq ptr %648, null
  br i1 %649, label %650, label %653

650:                                              ; preds = %637
  %651 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %652 = tail call ptr @GetMemory(i32 noundef %645, ptr noundef %651) #7
  store ptr %652, ptr @zz_hold, align 8, !tbaa !10
  br label %655

653:                                              ; preds = %637
  store ptr %648, ptr @zz_hold, align 8, !tbaa !10
  %654 = load ptr, ptr %648, align 8, !tbaa !5
  store ptr %654, ptr %647, align 8, !tbaa !10
  br label %655

655:                                              ; preds = %650, %653
  %656 = phi ptr [ %652, %650 ], [ %648, %653 ]
  %657 = getelementptr inbounds %struct.word_type, ptr %656, i64 0, i32 1
  store i8 1, ptr %657, align 8, !tbaa !5
  %658 = getelementptr inbounds [2 x %struct.LIST], ptr %656, i64 0, i64 1
  %659 = getelementptr inbounds [2 x %struct.LIST], ptr %656, i64 0, i64 1, i32 1
  store ptr %656, ptr %659, align 8, !tbaa !5
  store ptr %656, ptr %658, align 8, !tbaa !5
  %660 = getelementptr inbounds %struct.LIST, ptr %656, i64 0, i32 1
  store ptr %656, ptr %660, align 8, !tbaa !5
  store ptr %656, ptr %656, align 8, !tbaa !5
  %661 = getelementptr inbounds i8, ptr %656, i64 42
  store i8 0, ptr %661, align 2, !tbaa !5
  %662 = getelementptr inbounds i8, ptr %656, i64 41
  store i8 0, ptr %662, align 1, !tbaa !5
  %663 = getelementptr inbounds %struct.gapobj_type, ptr %656, i64 0, i32 3
  %664 = load i16, ptr %663, align 4
  %665 = and i16 %664, 127
  %666 = or disjoint i16 %665, 9216
  store i16 %666, ptr %663, align 4
  %667 = getelementptr inbounds %struct.gapobj_type, ptr %656, i64 0, i32 3, i32 1
  store i16 0, ptr %667, align 2, !tbaa !5
  %668 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %669 = zext i8 %668 to i32
  store i32 %669, ptr @zz_size, align 4, !tbaa !8
  %670 = zext i8 %668 to i64
  %671 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %670
  %672 = load ptr, ptr %671, align 8, !tbaa !10
  %673 = icmp eq ptr %672, null
  br i1 %673, label %674, label %677

674:                                              ; preds = %655
  %675 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %676 = tail call ptr @GetMemory(i32 noundef %669, ptr noundef %675) #7
  br label %679

677:                                              ; preds = %655
  store ptr %672, ptr @zz_hold, align 8, !tbaa !10
  %678 = load ptr, ptr %672, align 8, !tbaa !5
  store ptr %678, ptr %671, align 8, !tbaa !10
  br label %679

679:                                              ; preds = %674, %677
  %680 = phi ptr [ %676, %674 ], [ %672, %677 ]
  %681 = getelementptr inbounds %struct.word_type, ptr %680, i64 0, i32 1
  store i8 0, ptr %681, align 8, !tbaa !5
  %682 = getelementptr inbounds [2 x %struct.LIST], ptr %680, i64 0, i64 1, i32 1
  store ptr %680, ptr %682, align 8, !tbaa !5
  %683 = getelementptr inbounds [2 x %struct.LIST], ptr %680, i64 0, i64 1
  store ptr %680, ptr %683, align 8, !tbaa !5
  %684 = getelementptr inbounds %struct.LIST, ptr %680, i64 0, i32 1
  store ptr %680, ptr %684, align 8, !tbaa !5
  store ptr %680, ptr %680, align 8, !tbaa !5
  store ptr %680, ptr @xx_link, align 8, !tbaa !10
  store ptr %680, ptr @zz_res, align 8, !tbaa !10
  %685 = getelementptr inbounds %struct.LIST, ptr %619, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !5
  store ptr %686, ptr @zz_hold, align 8, !tbaa !10
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %689

688:                                              ; preds = %679
  store ptr %656, ptr @zz_hold, align 8, !tbaa !10
  br label %701

689:                                              ; preds = %679
  %690 = load ptr, ptr %686, align 8, !tbaa !5
  store ptr %690, ptr @zz_tmp, align 8, !tbaa !10
  %691 = load ptr, ptr %680, align 8, !tbaa !5
  store ptr %691, ptr %686, align 8, !tbaa !5
  %692 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %693 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %694 = load ptr, ptr %693, align 8, !tbaa !5
  %695 = getelementptr inbounds %struct.LIST, ptr %694, i64 0, i32 1
  store ptr %692, ptr %695, align 8, !tbaa !5
  %696 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %696, ptr %693, align 8, !tbaa !5
  %697 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %698 = getelementptr inbounds %struct.LIST, ptr %696, i64 0, i32 1
  store ptr %697, ptr %698, align 8, !tbaa !5
  %699 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %699, ptr @zz_res, align 8, !tbaa !10
  store ptr %656, ptr @zz_hold, align 8, !tbaa !10
  %700 = icmp eq ptr %699, null
  br i1 %700, label %708, label %701

701:                                              ; preds = %688, %689
  %702 = phi ptr [ %680, %688 ], [ %699, %689 ]
  %703 = load ptr, ptr %658, align 8, !tbaa !5
  store ptr %703, ptr @zz_tmp, align 8, !tbaa !10
  %704 = getelementptr inbounds [2 x %struct.LIST], ptr %702, i64 0, i64 1
  %705 = load ptr, ptr %704, align 8, !tbaa !5
  store ptr %705, ptr %658, align 8, !tbaa !5
  %706 = getelementptr inbounds [2 x %struct.LIST], ptr %705, i64 0, i64 1, i32 1
  store ptr %656, ptr %706, align 8, !tbaa !5
  store ptr %703, ptr %704, align 8, !tbaa !5
  %707 = getelementptr inbounds [2 x %struct.LIST], ptr %703, i64 0, i64 1, i32 1
  store ptr %702, ptr %707, align 8, !tbaa !5
  br label %708

708:                                              ; preds = %689, %701
  %709 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %710 = zext i8 %709 to i32
  store i32 %710, ptr @zz_size, align 4, !tbaa !8
  %711 = zext i8 %709 to i64
  %712 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %711
  %713 = load ptr, ptr %712, align 8, !tbaa !10
  %714 = icmp eq ptr %713, null
  br i1 %714, label %715, label %718

715:                                              ; preds = %708
  %716 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %717 = tail call ptr @GetMemory(i32 noundef %710, ptr noundef %716) #7
  br label %720

718:                                              ; preds = %708
  store ptr %713, ptr @zz_hold, align 8, !tbaa !10
  %719 = load ptr, ptr %713, align 8, !tbaa !5
  store ptr %719, ptr %712, align 8, !tbaa !10
  br label %720

720:                                              ; preds = %715, %718
  %721 = phi ptr [ %717, %715 ], [ %713, %718 ]
  %722 = getelementptr inbounds %struct.word_type, ptr %721, i64 0, i32 1
  store i8 0, ptr %722, align 8, !tbaa !5
  %723 = getelementptr inbounds [2 x %struct.LIST], ptr %721, i64 0, i64 1, i32 1
  store ptr %721, ptr %723, align 8, !tbaa !5
  %724 = getelementptr inbounds [2 x %struct.LIST], ptr %721, i64 0, i64 1
  store ptr %721, ptr %724, align 8, !tbaa !5
  %725 = getelementptr inbounds %struct.LIST, ptr %721, i64 0, i32 1
  store ptr %721, ptr %725, align 8, !tbaa !5
  store ptr %721, ptr %721, align 8, !tbaa !5
  store ptr %721, ptr @xx_link, align 8, !tbaa !10
  store ptr %721, ptr @zz_res, align 8, !tbaa !10
  %726 = load ptr, ptr %685, align 8, !tbaa !5
  store ptr %726, ptr @zz_hold, align 8, !tbaa !10
  %727 = icmp eq ptr %726, null
  br i1 %727, label %728, label %729

728:                                              ; preds = %720
  store ptr %638, ptr @zz_hold, align 8, !tbaa !10
  br label %744

729:                                              ; preds = %720
  %730 = load ptr, ptr %726, align 8, !tbaa !5
  store ptr %730, ptr @zz_tmp, align 8, !tbaa !10
  %731 = load ptr, ptr %721, align 8, !tbaa !5
  store ptr %731, ptr %726, align 8, !tbaa !5
  %732 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %733 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %734 = load ptr, ptr %733, align 8, !tbaa !5
  %735 = getelementptr inbounds %struct.LIST, ptr %734, i64 0, i32 1
  store ptr %732, ptr %735, align 8, !tbaa !5
  %736 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %736, ptr %733, align 8, !tbaa !5
  %737 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %738 = getelementptr inbounds %struct.LIST, ptr %736, i64 0, i32 1
  store ptr %737, ptr %738, align 8, !tbaa !5
  %739 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %739, ptr @zz_res, align 8, !tbaa !10
  store ptr %638, ptr @zz_hold, align 8, !tbaa !10
  %740 = icmp eq ptr %739, null
  br i1 %740, label %752, label %741

741:                                              ; preds = %729
  %742 = getelementptr inbounds [2 x %struct.LIST], ptr %739, i64 0, i64 1
  %743 = load ptr, ptr %742, align 8, !tbaa !5
  br label %744

744:                                              ; preds = %741, %728
  %745 = phi ptr [ %721, %728 ], [ %743, %741 ]
  %746 = phi ptr [ %721, %728 ], [ %739, %741 ]
  %747 = load ptr, ptr %640, align 8, !tbaa !5
  store ptr %747, ptr @zz_tmp, align 8, !tbaa !10
  %748 = getelementptr inbounds [2 x %struct.LIST], ptr %746, i64 0, i64 1
  store ptr %745, ptr %640, align 8, !tbaa !5
  %749 = load ptr, ptr %748, align 8, !tbaa !5
  %750 = getelementptr inbounds [2 x %struct.LIST], ptr %749, i64 0, i64 1, i32 1
  store ptr %638, ptr %750, align 8, !tbaa !5
  store ptr %747, ptr %748, align 8, !tbaa !5
  %751 = getelementptr inbounds [2 x %struct.LIST], ptr %747, i64 0, i64 1, i32 1
  store ptr %746, ptr %751, align 8, !tbaa !5
  br label %752

752:                                              ; preds = %744, %729, %609, %601, %597
  %753 = getelementptr inbounds %struct.closure_type, ptr %36, i64 0, i32 5
  %754 = load ptr, ptr %753, align 8, !tbaa !5
  %755 = load ptr, ptr @PrintSym, align 8, !tbaa !10
  %756 = icmp eq ptr %754, %755
  br i1 %756, label %757, label %1440

757:                                              ; preds = %752
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %758 = load ptr, ptr %27, align 8, !tbaa !5
  %759 = icmp eq ptr %758, %127
  br i1 %759, label %1439, label %760

760:                                              ; preds = %757
  %761 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %762 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %763 = getelementptr inbounds %struct.CONSTRAINT, ptr %8, i64 0, i32 1
  %764 = getelementptr inbounds %struct.CONSTRAINT, ptr %8, i64 0, i32 2
  br label %765

765:                                              ; preds = %760, %1434
  %766 = phi ptr [ %758, %760 ], [ %1437, %1434 ]
  %767 = phi ptr [ %27, %760 ], [ %1436, %1434 ]
  %768 = phi ptr [ %0, %760 ], [ %1435, %1434 ]
  br label %769

769:                                              ; preds = %765, %769
  %770 = phi ptr [ %772, %769 ], [ %766, %765 ]
  %771 = getelementptr inbounds [2 x %struct.LIST], ptr %770, i64 0, i64 1
  %772 = load ptr, ptr %771, align 8, !tbaa !5
  %773 = getelementptr inbounds %struct.word_type, ptr %772, i64 0, i32 1
  %774 = load i8, ptr %773, align 8, !tbaa !5
  switch i8 %774, label %784 [
    i8 0, label %769
    i8 9, label %775
  ]

775:                                              ; preds = %769
  %776 = load ptr, ptr %772, align 8, !tbaa !5
  br label %777

777:                                              ; preds = %777, %775
  %778 = phi ptr [ %776, %775 ], [ %780, %777 ]
  %779 = getelementptr inbounds [2 x %struct.LIST], ptr %778, i64 0, i64 1
  %780 = load ptr, ptr %779, align 8, !tbaa !5
  %781 = getelementptr inbounds %struct.word_type, ptr %780, i64 0, i32 1
  %782 = load i8, ptr %781, align 8, !tbaa !5
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %777, label %784

784:                                              ; preds = %769, %777
  %785 = phi i8 [ %782, %777 ], [ %774, %769 ]
  %786 = phi ptr [ %780, %777 ], [ %772, %769 ]
  %787 = getelementptr inbounds %struct.word_type, ptr %786, i64 0, i32 1
  switch i8 %785, label %1429 [
    i8 -120, label %788
    i8 -119, label %788
    i8 124, label %788
    i8 120, label %835
    i8 -118, label %983
    i8 -121, label %1058
    i8 -122, label %1181
    i8 127, label %1181
    i8 -128, label %1181
    i8 -125, label %1181
    i8 -123, label %1181
    i8 -127, label %1181
    i8 -126, label %1181
    i8 -124, label %1181
    i8 20, label %1231
    i8 21, label %1231
    i8 22, label %1231
    i8 23, label %1231
    i8 11, label %1282
    i8 12, label %1282
    i8 24, label %1282
    i8 25, label %1282
    i8 26, label %1282
    i8 27, label %1282
    i8 28, label %1282
    i8 29, label %1282
    i8 30, label %1282
    i8 31, label %1282
    i8 32, label %1282
    i8 33, label %1282
    i8 36, label %1282
    i8 37, label %1282
    i8 38, label %1282
    i8 39, label %1282
    i8 40, label %1282
    i8 41, label %1282
    i8 44, label %1282
    i8 42, label %1282
    i8 43, label %1282
    i8 45, label %1282
    i8 46, label %1282
    i8 50, label %1282
    i8 51, label %1282
    i8 34, label %1282
    i8 35, label %1282
    i8 94, label %1282
    i8 95, label %1282
    i8 96, label %1282
    i8 97, label %1282
    i8 98, label %1282
    i8 99, label %1282
    i8 17, label %1282
    i8 18, label %1282
    i8 15, label %1282
    i8 2, label %1282
    i8 5, label %1282
    i8 4, label %1282
    i8 6, label %1282
    i8 7, label %1282
    i8 1, label %1382
  ]

788:                                              ; preds = %784, %784, %784
  store ptr %766, ptr @xx_link, align 8, !tbaa !10
  %789 = getelementptr inbounds [2 x %struct.LIST], ptr %766, i64 0, i64 1, i32 1
  %790 = load ptr, ptr %789, align 8, !tbaa !5
  %791 = icmp eq ptr %790, %766
  br i1 %791, label %797, label %792

792:                                              ; preds = %788
  store ptr %790, ptr @zz_res, align 8, !tbaa !10
  %793 = getelementptr inbounds [2 x %struct.LIST], ptr %766, i64 0, i64 1
  %794 = load ptr, ptr %793, align 8, !tbaa !5
  %795 = getelementptr inbounds [2 x %struct.LIST], ptr %790, i64 0, i64 1
  store ptr %794, ptr %795, align 8, !tbaa !5
  %796 = getelementptr inbounds [2 x %struct.LIST], ptr %794, i64 0, i64 1, i32 1
  store ptr %790, ptr %796, align 8, !tbaa !5
  store ptr %766, ptr %789, align 8, !tbaa !5
  store ptr %766, ptr %793, align 8, !tbaa !5
  br label %797

797:                                              ; preds = %788, %792
  %798 = phi ptr [ %790, %792 ], [ null, %788 ]
  store ptr %798, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %766, ptr @zz_hold, align 8, !tbaa !10
  %799 = getelementptr inbounds %struct.LIST, ptr %766, i64 0, i32 1
  %800 = load ptr, ptr %799, align 8, !tbaa !5
  %801 = icmp eq ptr %800, %766
  br i1 %801, label %810, label %802

802:                                              ; preds = %797
  store ptr %800, ptr @zz_res, align 8, !tbaa !10
  %803 = load ptr, ptr %766, align 8, !tbaa !5
  store ptr %803, ptr %800, align 8, !tbaa !5
  %804 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %805 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %806 = load ptr, ptr %805, align 8, !tbaa !5
  %807 = getelementptr inbounds %struct.LIST, ptr %806, i64 0, i32 1
  store ptr %804, ptr %807, align 8, !tbaa !5
  %808 = getelementptr inbounds %struct.LIST, ptr %805, i64 0, i32 1
  store ptr %805, ptr %808, align 8, !tbaa !5
  store ptr %805, ptr %805, align 8, !tbaa !5
  %809 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %810

810:                                              ; preds = %797, %802
  %811 = phi ptr [ %766, %797 ], [ %809, %802 ]
  store ptr %811, ptr @zz_hold, align 8, !tbaa !10
  %812 = getelementptr inbounds %struct.word_type, ptr %811, i64 0, i32 1
  %813 = load i8, ptr %812, align 8, !tbaa !5
  %814 = add i8 %813, -11
  %815 = icmp ult i8 %814, 2
  %816 = getelementptr inbounds %struct.word_type, ptr %811, i64 0, i32 1, i32 0, i32 1
  %817 = zext i8 %813 to i64
  %818 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %817
  %819 = select i1 %815, ptr %816, ptr %818
  %820 = load i8, ptr %819, align 1, !tbaa !5
  %821 = zext i8 %820 to i32
  store i32 %821, ptr @zz_size, align 4, !tbaa !8
  %822 = zext i8 %820 to i64
  %823 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %822
  %824 = load ptr, ptr %823, align 8, !tbaa !10
  store ptr %824, ptr %811, align 8, !tbaa !5
  %825 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %826 = load i32, ptr @zz_size, align 4, !tbaa !8
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %827
  store ptr %825, ptr %828, align 8, !tbaa !10
  %829 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %830 = getelementptr inbounds [2 x %struct.LIST], ptr %829, i64 0, i64 1, i32 1
  %831 = load ptr, ptr %830, align 8, !tbaa !5
  %832 = icmp eq ptr %831, %829
  br i1 %832, label %833, label %1434

833:                                              ; preds = %810
  %834 = call i32 @DisposeObject(ptr noundef nonnull %829) #7
  br label %1434

835:                                              ; preds = %784
  %836 = getelementptr inbounds %struct.LIST, ptr %786, i64 0, i32 1
  %837 = load ptr, ptr %836, align 8, !tbaa !5
  %838 = icmp eq ptr %837, %786
  br i1 %838, label %839, label %843

839:                                              ; preds = %835
  %840 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %841 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %840, ptr noundef nonnull @.str.24) #7
  %842 = load ptr, ptr %836, align 8, !tbaa !5
  br label %843

843:                                              ; preds = %839, %835
  %844 = phi ptr [ %837, %835 ], [ %842, %839 ]
  br label %845

845:                                              ; preds = %843, %845
  %846 = phi ptr [ %848, %845 ], [ %844, %843 ]
  %847 = getelementptr inbounds [2 x %struct.LIST], ptr %846, i64 0, i64 1
  %848 = load ptr, ptr %847, align 8, !tbaa !5
  %849 = getelementptr inbounds %struct.word_type, ptr %848, i64 0, i32 1
  %850 = load i8, ptr %849, align 8, !tbaa !5
  switch i8 %850, label %851 [
    i8 0, label %845
    i8 8, label %854
  ]

851:                                              ; preds = %845
  %852 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %853 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %852, ptr noundef nonnull @.str.25) #7
  br label %854

854:                                              ; preds = %845, %851
  %855 = getelementptr inbounds %struct.word_type, ptr %848, i64 0, i32 1
  %856 = getelementptr inbounds i8, ptr %848, i64 42
  %857 = load i16, ptr %856, align 2
  %858 = and i16 %857, 2
  %859 = icmp eq i16 %858, 0
  br i1 %859, label %862, label %860

860:                                              ; preds = %854
  %861 = load ptr, ptr %767, align 8, !tbaa !5
  br label %1434

862:                                              ; preds = %854
  %863 = getelementptr inbounds %struct.word_type, ptr %848, i64 0, i32 2
  %864 = load i8, ptr %863, align 8, !tbaa !5
  switch i8 %864, label %978 [
    i8 -123, label %865
    i8 -126, label %865
  ]

865:                                              ; preds = %862, %862
  store i8 %864, ptr %787, align 8, !tbaa !5
  %866 = getelementptr inbounds %struct.closure_type, ptr %786, i64 0, i32 6
  store ptr null, ptr %866, align 8, !tbaa !5
  %867 = getelementptr inbounds %struct.LIST, ptr %848, i64 0, i32 1
  %868 = load ptr, ptr %867, align 8, !tbaa !5
  br label %869

869:                                              ; preds = %869, %865
  %870 = phi ptr [ %868, %865 ], [ %872, %869 ]
  %871 = getelementptr inbounds [2 x %struct.LIST], ptr %870, i64 0, i64 1
  %872 = load ptr, ptr %871, align 8, !tbaa !5
  %873 = getelementptr inbounds %struct.word_type, ptr %872, i64 0, i32 1
  %874 = load i8, ptr %873, align 8, !tbaa !5
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %869, label %876

876:                                              ; preds = %869
  %877 = getelementptr inbounds %struct.closure_type, ptr %848, i64 0, i32 6
  %878 = load ptr, ptr %877, align 8, !tbaa !5
  %879 = zext i8 %864 to i32
  %880 = call ptr @CrossMake(ptr noundef %878, ptr noundef nonnull %872, i32 noundef %879) #7
  %881 = getelementptr inbounds %struct.closure_type, ptr %786, i64 0, i32 5
  store ptr %880, ptr %881, align 8, !tbaa !5
  %882 = load ptr, ptr %836, align 8, !tbaa !5
  store ptr %882, ptr @xx_link, align 8, !tbaa !10
  %883 = getelementptr inbounds [2 x %struct.LIST], ptr %882, i64 0, i64 1, i32 1
  %884 = load ptr, ptr %883, align 8, !tbaa !5
  %885 = icmp eq ptr %884, %882
  br i1 %885, label %891, label %886

886:                                              ; preds = %876
  store ptr %884, ptr @zz_res, align 8, !tbaa !10
  %887 = getelementptr inbounds [2 x %struct.LIST], ptr %882, i64 0, i64 1
  %888 = load ptr, ptr %887, align 8, !tbaa !5
  %889 = getelementptr inbounds [2 x %struct.LIST], ptr %884, i64 0, i64 1
  store ptr %888, ptr %889, align 8, !tbaa !5
  %890 = getelementptr inbounds [2 x %struct.LIST], ptr %888, i64 0, i64 1, i32 1
  store ptr %884, ptr %890, align 8, !tbaa !5
  store ptr %882, ptr %883, align 8, !tbaa !5
  store ptr %882, ptr %887, align 8, !tbaa !5
  br label %891

891:                                              ; preds = %876, %886
  %892 = phi ptr [ %884, %886 ], [ null, %876 ]
  store ptr %892, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %882, ptr @zz_hold, align 8, !tbaa !10
  %893 = getelementptr inbounds %struct.LIST, ptr %882, i64 0, i32 1
  %894 = load ptr, ptr %893, align 8, !tbaa !5
  %895 = icmp eq ptr %894, %882
  br i1 %895, label %904, label %896

896:                                              ; preds = %891
  store ptr %894, ptr @zz_res, align 8, !tbaa !10
  %897 = load ptr, ptr %882, align 8, !tbaa !5
  store ptr %897, ptr %894, align 8, !tbaa !5
  %898 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %899 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %900 = load ptr, ptr %899, align 8, !tbaa !5
  %901 = getelementptr inbounds %struct.LIST, ptr %900, i64 0, i32 1
  store ptr %898, ptr %901, align 8, !tbaa !5
  %902 = getelementptr inbounds %struct.LIST, ptr %899, i64 0, i32 1
  store ptr %899, ptr %902, align 8, !tbaa !5
  store ptr %899, ptr %899, align 8, !tbaa !5
  %903 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %904

904:                                              ; preds = %891, %896
  %905 = phi ptr [ %882, %891 ], [ %903, %896 ]
  store ptr %905, ptr @zz_hold, align 8, !tbaa !10
  %906 = getelementptr inbounds %struct.word_type, ptr %905, i64 0, i32 1
  %907 = load i8, ptr %906, align 8, !tbaa !5
  %908 = add i8 %907, -11
  %909 = icmp ult i8 %908, 2
  %910 = getelementptr inbounds %struct.word_type, ptr %905, i64 0, i32 1, i32 0, i32 1
  %911 = zext i8 %907 to i64
  %912 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %911
  %913 = select i1 %909, ptr %910, ptr %912
  %914 = load i8, ptr %913, align 1, !tbaa !5
  %915 = zext i8 %914 to i32
  store i32 %915, ptr @zz_size, align 4, !tbaa !8
  %916 = zext i8 %914 to i64
  %917 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %916
  %918 = load ptr, ptr %917, align 8, !tbaa !10
  store ptr %918, ptr %905, align 8, !tbaa !5
  %919 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %920 = load i32, ptr @zz_size, align 4, !tbaa !8
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %921
  store ptr %919, ptr %922, align 8, !tbaa !10
  %923 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %924 = getelementptr inbounds [2 x %struct.LIST], ptr %923, i64 0, i64 1, i32 1
  %925 = load ptr, ptr %924, align 8, !tbaa !5
  %926 = icmp eq ptr %925, %923
  br i1 %926, label %927, label %929

927:                                              ; preds = %904
  %928 = call i32 @DisposeObject(ptr noundef nonnull %923) #7
  br label %929

929:                                              ; preds = %927, %904
  %930 = load ptr, ptr %881, align 8, !tbaa !5
  call void @CrossSequence(ptr noundef %930) #7
  %931 = load ptr, ptr %767, align 8, !tbaa !5
  store ptr %931, ptr @xx_link, align 8, !tbaa !10
  %932 = getelementptr inbounds [2 x %struct.LIST], ptr %931, i64 0, i64 1, i32 1
  %933 = load ptr, ptr %932, align 8, !tbaa !5
  %934 = icmp eq ptr %933, %931
  br i1 %934, label %940, label %935

935:                                              ; preds = %929
  store ptr %933, ptr @zz_res, align 8, !tbaa !10
  %936 = getelementptr inbounds [2 x %struct.LIST], ptr %931, i64 0, i64 1
  %937 = load ptr, ptr %936, align 8, !tbaa !5
  %938 = getelementptr inbounds [2 x %struct.LIST], ptr %933, i64 0, i64 1
  store ptr %937, ptr %938, align 8, !tbaa !5
  %939 = getelementptr inbounds [2 x %struct.LIST], ptr %937, i64 0, i64 1, i32 1
  store ptr %933, ptr %939, align 8, !tbaa !5
  store ptr %931, ptr %932, align 8, !tbaa !5
  store ptr %931, ptr %936, align 8, !tbaa !5
  br label %940

940:                                              ; preds = %929, %935
  %941 = phi ptr [ %933, %935 ], [ null, %929 ]
  store ptr %941, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %931, ptr @zz_hold, align 8, !tbaa !10
  %942 = getelementptr inbounds %struct.LIST, ptr %931, i64 0, i32 1
  %943 = load ptr, ptr %942, align 8, !tbaa !5
  %944 = icmp eq ptr %943, %931
  br i1 %944, label %953, label %945

945:                                              ; preds = %940
  store ptr %943, ptr @zz_res, align 8, !tbaa !10
  %946 = load ptr, ptr %931, align 8, !tbaa !5
  store ptr %946, ptr %943, align 8, !tbaa !5
  %947 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %948 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %949 = load ptr, ptr %948, align 8, !tbaa !5
  %950 = getelementptr inbounds %struct.LIST, ptr %949, i64 0, i32 1
  store ptr %947, ptr %950, align 8, !tbaa !5
  %951 = getelementptr inbounds %struct.LIST, ptr %948, i64 0, i32 1
  store ptr %948, ptr %951, align 8, !tbaa !5
  store ptr %948, ptr %948, align 8, !tbaa !5
  %952 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %953

953:                                              ; preds = %940, %945
  %954 = phi ptr [ %931, %940 ], [ %952, %945 ]
  store ptr %954, ptr @zz_hold, align 8, !tbaa !10
  %955 = getelementptr inbounds %struct.word_type, ptr %954, i64 0, i32 1
  %956 = load i8, ptr %955, align 8, !tbaa !5
  %957 = add i8 %956, -11
  %958 = icmp ult i8 %957, 2
  %959 = getelementptr inbounds %struct.word_type, ptr %954, i64 0, i32 1, i32 0, i32 1
  %960 = zext i8 %956 to i64
  %961 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %960
  %962 = select i1 %958, ptr %959, ptr %961
  %963 = load i8, ptr %962, align 1, !tbaa !5
  %964 = zext i8 %963 to i32
  store i32 %964, ptr @zz_size, align 4, !tbaa !8
  %965 = zext i8 %963 to i64
  %966 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %965
  %967 = load ptr, ptr %966, align 8, !tbaa !10
  store ptr %967, ptr %954, align 8, !tbaa !5
  %968 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %969 = load i32, ptr @zz_size, align 4, !tbaa !8
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %970
  store ptr %968, ptr %971, align 8, !tbaa !10
  %972 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %973 = getelementptr inbounds [2 x %struct.LIST], ptr %972, i64 0, i64 1, i32 1
  %974 = load ptr, ptr %973, align 8, !tbaa !5
  %975 = icmp eq ptr %974, %972
  br i1 %975, label %976, label %1434

976:                                              ; preds = %953
  %977 = call i32 @DisposeObject(ptr noundef nonnull %972) #7
  br label %1434

978:                                              ; preds = %862
  %979 = getelementptr inbounds %struct.closure_type, ptr %848, i64 0, i32 5
  %980 = load ptr, ptr %979, align 8, !tbaa !5
  %981 = call ptr @SymName(ptr noundef %980) #7
  %982 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef 2, ptr noundef nonnull %855, ptr noundef %981) #7
  call void @KillGalley(ptr noundef nonnull %848, i32 noundef 0)
  br label %1434

983:                                              ; preds = %784
  %984 = getelementptr inbounds %struct.closure_type, ptr %786, i64 0, i32 5
  %985 = load ptr, ptr %984, align 8, !tbaa !5
  %986 = getelementptr inbounds %struct.word_type, ptr %985, i64 0, i32 1
  %987 = load i8, ptr %986, align 8, !tbaa !5
  %988 = icmp ne i8 %987, 40
  %989 = zext i1 %988 to i32
  call void @Constrained(ptr noundef %985, ptr noundef nonnull %8, i32 noundef %989, ptr noundef nonnull %5) #7
  %990 = load i32, ptr %8, align 4, !tbaa !12
  %991 = icmp ne i32 %990, 8388607
  %992 = load i32, ptr %763, align 4
  %993 = icmp ne i32 %992, 8388607
  %994 = select i1 %991, i1 true, i1 %993
  %995 = load i32, ptr %764, align 4
  %996 = icmp ne i32 %995, 8388607
  %997 = select i1 %994, i1 true, i1 %996
  br i1 %997, label %998, label %1010

998:                                              ; preds = %983
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %999 = load ptr, ptr %984, align 8, !tbaa !5
  %1000 = getelementptr inbounds %struct.word_type, ptr %999, i64 0, i32 3
  %1001 = zext i1 %988 to i64
  %1002 = getelementptr inbounds [2 x i32], ptr %1000, i64 0, i64 %1001
  %1003 = load i32, ptr %1002, align 4, !tbaa !5
  store i32 %1003, ptr %9, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %1004 = getelementptr inbounds %struct.word_type, ptr %999, i64 0, i32 3, i32 1
  %1005 = getelementptr inbounds [2 x i32], ptr %1004, i64 0, i64 %1001
  %1006 = load i32, ptr %1005, align 4, !tbaa !5
  store i32 %1006, ptr %10, align 4, !tbaa !8
  call void @EnlargeToConstraint(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8) #7
  %1007 = load ptr, ptr %984, align 8, !tbaa !5
  %1008 = load i32, ptr %9, align 4, !tbaa !8
  %1009 = load i32, ptr %10, align 4, !tbaa !8
  call void @AdjustSize(ptr noundef %1007, i32 noundef %1008, i32 noundef %1009, i32 noundef %989) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  br label %1010

1010:                                             ; preds = %983, %998
  %1011 = load ptr, ptr %767, align 8, !tbaa !5
  store ptr %1011, ptr @xx_link, align 8, !tbaa !10
  %1012 = getelementptr inbounds [2 x %struct.LIST], ptr %1011, i64 0, i64 1, i32 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !5
  %1014 = icmp eq ptr %1013, %1011
  br i1 %1014, label %1020, label %1015

1015:                                             ; preds = %1010
  store ptr %1013, ptr @zz_res, align 8, !tbaa !10
  %1016 = getelementptr inbounds [2 x %struct.LIST], ptr %1011, i64 0, i64 1
  %1017 = load ptr, ptr %1016, align 8, !tbaa !5
  %1018 = getelementptr inbounds [2 x %struct.LIST], ptr %1013, i64 0, i64 1
  store ptr %1017, ptr %1018, align 8, !tbaa !5
  %1019 = getelementptr inbounds [2 x %struct.LIST], ptr %1017, i64 0, i64 1, i32 1
  store ptr %1013, ptr %1019, align 8, !tbaa !5
  store ptr %1011, ptr %1012, align 8, !tbaa !5
  store ptr %1011, ptr %1016, align 8, !tbaa !5
  br label %1020

1020:                                             ; preds = %1010, %1015
  %1021 = phi ptr [ %1013, %1015 ], [ null, %1010 ]
  store ptr %1021, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1011, ptr @zz_hold, align 8, !tbaa !10
  %1022 = getelementptr inbounds %struct.LIST, ptr %1011, i64 0, i32 1
  %1023 = load ptr, ptr %1022, align 8, !tbaa !5
  %1024 = icmp eq ptr %1023, %1011
  br i1 %1024, label %1033, label %1025

1025:                                             ; preds = %1020
  store ptr %1023, ptr @zz_res, align 8, !tbaa !10
  %1026 = load ptr, ptr %1011, align 8, !tbaa !5
  store ptr %1026, ptr %1023, align 8, !tbaa !5
  %1027 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1028 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1029 = load ptr, ptr %1028, align 8, !tbaa !5
  %1030 = getelementptr inbounds %struct.LIST, ptr %1029, i64 0, i32 1
  store ptr %1027, ptr %1030, align 8, !tbaa !5
  %1031 = getelementptr inbounds %struct.LIST, ptr %1028, i64 0, i32 1
  store ptr %1028, ptr %1031, align 8, !tbaa !5
  store ptr %1028, ptr %1028, align 8, !tbaa !5
  %1032 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1033

1033:                                             ; preds = %1020, %1025
  %1034 = phi ptr [ %1011, %1020 ], [ %1032, %1025 ]
  store ptr %1034, ptr @zz_hold, align 8, !tbaa !10
  %1035 = getelementptr inbounds %struct.word_type, ptr %1034, i64 0, i32 1
  %1036 = load i8, ptr %1035, align 8, !tbaa !5
  %1037 = add i8 %1036, -11
  %1038 = icmp ult i8 %1037, 2
  %1039 = getelementptr inbounds %struct.word_type, ptr %1034, i64 0, i32 1, i32 0, i32 1
  %1040 = zext i8 %1036 to i64
  %1041 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1040
  %1042 = select i1 %1038, ptr %1039, ptr %1041
  %1043 = load i8, ptr %1042, align 1, !tbaa !5
  %1044 = zext i8 %1043 to i32
  store i32 %1044, ptr @zz_size, align 4, !tbaa !8
  %1045 = zext i8 %1043 to i64
  %1046 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1045
  %1047 = load ptr, ptr %1046, align 8, !tbaa !10
  store ptr %1047, ptr %1034, align 8, !tbaa !5
  %1048 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1049 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1050
  store ptr %1048, ptr %1051, align 8, !tbaa !10
  %1052 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %1053 = getelementptr inbounds [2 x %struct.LIST], ptr %1052, i64 0, i64 1, i32 1
  %1054 = load ptr, ptr %1053, align 8, !tbaa !5
  %1055 = icmp eq ptr %1054, %1052
  br i1 %1055, label %1056, label %1434

1056:                                             ; preds = %1033
  %1057 = call i32 @DisposeObject(ptr noundef nonnull %1052) #7
  br label %1434

1058:                                             ; preds = %784
  %1059 = load ptr, ptr @Promote.page_label, align 8, !tbaa !10
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1063, label %1061

1061:                                             ; preds = %1058
  %1062 = call i32 @DisposeObject(ptr noundef nonnull %1059) #7
  store ptr null, ptr @Promote.page_label, align 8, !tbaa !10
  br label %1063

1063:                                             ; preds = %1061, %1058
  %1064 = getelementptr inbounds %struct.LIST, ptr %786, i64 0, i32 1
  %1065 = load ptr, ptr %1064, align 8, !tbaa !5
  br label %1066

1066:                                             ; preds = %1066, %1063
  %1067 = phi ptr [ %1065, %1063 ], [ %1069, %1066 ]
  %1068 = getelementptr inbounds [2 x %struct.LIST], ptr %1067, i64 0, i64 1
  %1069 = load ptr, ptr %1068, align 8, !tbaa !5
  %1070 = getelementptr inbounds %struct.word_type, ptr %1069, i64 0, i32 1
  %1071 = load i8, ptr %1070, align 8, !tbaa !5
  switch i8 %1071, label %1072 [
    i8 0, label %1066
    i8 4, label %1075
  ]

1072:                                             ; preds = %1066
  %1073 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1074 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1073, ptr noundef nonnull @.str.27) #7
  br label %1075

1075:                                             ; preds = %1066, %1072
  %1076 = getelementptr inbounds %struct.LIST, ptr %1069, i64 0, i32 1
  %1077 = load ptr, ptr %1076, align 8, !tbaa !5
  %1078 = icmp eq ptr %1077, %1069
  br i1 %1078, label %1079, label %1083

1079:                                             ; preds = %1075
  %1080 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1081 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1080, ptr noundef nonnull @.str.28) #7
  %1082 = load ptr, ptr %1076, align 8, !tbaa !5
  br label %1083

1083:                                             ; preds = %1079, %1075
  %1084 = phi ptr [ %1077, %1075 ], [ %1082, %1079 ]
  br label %1085

1085:                                             ; preds = %1083, %1085
  %1086 = phi ptr [ %1088, %1085 ], [ %1084, %1083 ]
  %1087 = getelementptr inbounds [2 x %struct.LIST], ptr %1086, i64 0, i64 1
  %1088 = load ptr, ptr %1087, align 8, !tbaa !5
  %1089 = getelementptr inbounds %struct.word_type, ptr %1088, i64 0, i32 1
  %1090 = load i8, ptr %1089, align 8, !tbaa !5
  %1091 = icmp eq i8 %1090, 0
  br i1 %1091, label %1085, label %1092

1092:                                             ; preds = %1085
  store ptr %1088, ptr @Promote.page_label, align 8, !tbaa !10
  %1093 = getelementptr inbounds [2 x %struct.LIST], ptr %1088, i64 0, i64 1, i32 1
  %1094 = load ptr, ptr %1093, align 8, !tbaa !5
  store ptr %1094, ptr @xx_link, align 8, !tbaa !10
  %1095 = getelementptr inbounds [2 x %struct.LIST], ptr %1094, i64 0, i64 1, i32 1
  %1096 = load ptr, ptr %1095, align 8, !tbaa !5
  %1097 = icmp eq ptr %1096, %1094
  br i1 %1097, label %1103, label %1098

1098:                                             ; preds = %1092
  store ptr %1096, ptr @zz_res, align 8, !tbaa !10
  %1099 = getelementptr inbounds [2 x %struct.LIST], ptr %1094, i64 0, i64 1
  %1100 = load ptr, ptr %1099, align 8, !tbaa !5
  %1101 = getelementptr inbounds [2 x %struct.LIST], ptr %1096, i64 0, i64 1
  store ptr %1100, ptr %1101, align 8, !tbaa !5
  %1102 = getelementptr inbounds [2 x %struct.LIST], ptr %1100, i64 0, i64 1, i32 1
  store ptr %1096, ptr %1102, align 8, !tbaa !5
  store ptr %1094, ptr %1095, align 8, !tbaa !5
  store ptr %1094, ptr %1099, align 8, !tbaa !5
  br label %1103

1103:                                             ; preds = %1092, %1098
  store ptr %1094, ptr @zz_hold, align 8, !tbaa !10
  %1104 = getelementptr inbounds %struct.LIST, ptr %1094, i64 0, i32 1
  %1105 = load ptr, ptr %1104, align 8, !tbaa !5
  %1106 = icmp eq ptr %1105, %1094
  br i1 %1106, label %1115, label %1107

1107:                                             ; preds = %1103
  store ptr %1105, ptr @zz_res, align 8, !tbaa !10
  %1108 = load ptr, ptr %1094, align 8, !tbaa !5
  store ptr %1108, ptr %1105, align 8, !tbaa !5
  %1109 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1110 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1111 = load ptr, ptr %1110, align 8, !tbaa !5
  %1112 = getelementptr inbounds %struct.LIST, ptr %1111, i64 0, i32 1
  store ptr %1109, ptr %1112, align 8, !tbaa !5
  %1113 = getelementptr inbounds %struct.LIST, ptr %1110, i64 0, i32 1
  store ptr %1110, ptr %1113, align 8, !tbaa !5
  store ptr %1110, ptr %1110, align 8, !tbaa !5
  %1114 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1115

1115:                                             ; preds = %1103, %1107
  %1116 = phi ptr [ %1094, %1103 ], [ %1114, %1107 ]
  store ptr %1116, ptr @zz_hold, align 8, !tbaa !10
  %1117 = getelementptr inbounds %struct.word_type, ptr %1116, i64 0, i32 1
  %1118 = load i8, ptr %1117, align 8, !tbaa !5
  %1119 = add i8 %1118, -11
  %1120 = icmp ult i8 %1119, 2
  %1121 = getelementptr inbounds %struct.word_type, ptr %1116, i64 0, i32 1, i32 0, i32 1
  %1122 = zext i8 %1118 to i64
  %1123 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1122
  %1124 = select i1 %1120, ptr %1121, ptr %1123
  %1125 = load i8, ptr %1124, align 1, !tbaa !5
  %1126 = zext i8 %1125 to i32
  store i32 %1126, ptr @zz_size, align 4, !tbaa !8
  %1127 = zext i8 %1125 to i64
  %1128 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1127
  %1129 = load ptr, ptr %1128, align 8, !tbaa !10
  store ptr %1129, ptr %1116, align 8, !tbaa !5
  %1130 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1131 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1132
  store ptr %1130, ptr %1133, align 8, !tbaa !10
  %1134 = load ptr, ptr %767, align 8, !tbaa !5
  store ptr %1134, ptr @xx_link, align 8, !tbaa !10
  %1135 = getelementptr inbounds [2 x %struct.LIST], ptr %1134, i64 0, i64 1, i32 1
  %1136 = load ptr, ptr %1135, align 8, !tbaa !5
  %1137 = icmp eq ptr %1136, %1134
  br i1 %1137, label %1143, label %1138

1138:                                             ; preds = %1115
  store ptr %1136, ptr @zz_res, align 8, !tbaa !10
  %1139 = getelementptr inbounds [2 x %struct.LIST], ptr %1134, i64 0, i64 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !5
  %1141 = getelementptr inbounds [2 x %struct.LIST], ptr %1136, i64 0, i64 1
  store ptr %1140, ptr %1141, align 8, !tbaa !5
  %1142 = getelementptr inbounds [2 x %struct.LIST], ptr %1140, i64 0, i64 1, i32 1
  store ptr %1136, ptr %1142, align 8, !tbaa !5
  store ptr %1134, ptr %1135, align 8, !tbaa !5
  store ptr %1134, ptr %1139, align 8, !tbaa !5
  br label %1143

1143:                                             ; preds = %1115, %1138
  %1144 = phi ptr [ %1136, %1138 ], [ null, %1115 ]
  store ptr %1144, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1134, ptr @zz_hold, align 8, !tbaa !10
  %1145 = getelementptr inbounds %struct.LIST, ptr %1134, i64 0, i32 1
  %1146 = load ptr, ptr %1145, align 8, !tbaa !5
  %1147 = icmp eq ptr %1146, %1134
  br i1 %1147, label %1156, label %1148

1148:                                             ; preds = %1143
  store ptr %1146, ptr @zz_res, align 8, !tbaa !10
  %1149 = load ptr, ptr %1134, align 8, !tbaa !5
  store ptr %1149, ptr %1146, align 8, !tbaa !5
  %1150 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1151 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1152 = load ptr, ptr %1151, align 8, !tbaa !5
  %1153 = getelementptr inbounds %struct.LIST, ptr %1152, i64 0, i32 1
  store ptr %1150, ptr %1153, align 8, !tbaa !5
  %1154 = getelementptr inbounds %struct.LIST, ptr %1151, i64 0, i32 1
  store ptr %1151, ptr %1154, align 8, !tbaa !5
  store ptr %1151, ptr %1151, align 8, !tbaa !5
  %1155 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1156

1156:                                             ; preds = %1143, %1148
  %1157 = phi ptr [ %1134, %1143 ], [ %1155, %1148 ]
  store ptr %1157, ptr @zz_hold, align 8, !tbaa !10
  %1158 = getelementptr inbounds %struct.word_type, ptr %1157, i64 0, i32 1
  %1159 = load i8, ptr %1158, align 8, !tbaa !5
  %1160 = add i8 %1159, -11
  %1161 = icmp ult i8 %1160, 2
  %1162 = getelementptr inbounds %struct.word_type, ptr %1157, i64 0, i32 1, i32 0, i32 1
  %1163 = zext i8 %1159 to i64
  %1164 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1163
  %1165 = select i1 %1161, ptr %1162, ptr %1164
  %1166 = load i8, ptr %1165, align 1, !tbaa !5
  %1167 = zext i8 %1166 to i32
  store i32 %1167, ptr @zz_size, align 4, !tbaa !8
  %1168 = zext i8 %1166 to i64
  %1169 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1168
  %1170 = load ptr, ptr %1169, align 8, !tbaa !10
  store ptr %1170, ptr %1157, align 8, !tbaa !5
  %1171 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1172 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1173
  store ptr %1171, ptr %1174, align 8, !tbaa !10
  %1175 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %1176 = getelementptr inbounds [2 x %struct.LIST], ptr %1175, i64 0, i64 1, i32 1
  %1177 = load ptr, ptr %1176, align 8, !tbaa !5
  %1178 = icmp eq ptr %1177, %1175
  br i1 %1178, label %1179, label %1434

1179:                                             ; preds = %1156
  %1180 = call i32 @DisposeObject(ptr noundef nonnull %1175) #7
  br label %1434

1181:                                             ; preds = %784, %784, %784, %784, %784, %784, %784, %784
  %1182 = getelementptr inbounds %struct.closure_type, ptr %786, i64 0, i32 5
  %1183 = load ptr, ptr %1182, align 8, !tbaa !5
  call void @CrossSequence(ptr noundef %1183) #7
  %1184 = load ptr, ptr %767, align 8, !tbaa !5
  store ptr %1184, ptr @xx_link, align 8, !tbaa !10
  %1185 = getelementptr inbounds [2 x %struct.LIST], ptr %1184, i64 0, i64 1, i32 1
  %1186 = load ptr, ptr %1185, align 8, !tbaa !5
  %1187 = icmp eq ptr %1186, %1184
  br i1 %1187, label %1193, label %1188

1188:                                             ; preds = %1181
  store ptr %1186, ptr @zz_res, align 8, !tbaa !10
  %1189 = getelementptr inbounds [2 x %struct.LIST], ptr %1184, i64 0, i64 1
  %1190 = load ptr, ptr %1189, align 8, !tbaa !5
  %1191 = getelementptr inbounds [2 x %struct.LIST], ptr %1186, i64 0, i64 1
  store ptr %1190, ptr %1191, align 8, !tbaa !5
  %1192 = getelementptr inbounds [2 x %struct.LIST], ptr %1190, i64 0, i64 1, i32 1
  store ptr %1186, ptr %1192, align 8, !tbaa !5
  store ptr %1184, ptr %1185, align 8, !tbaa !5
  store ptr %1184, ptr %1189, align 8, !tbaa !5
  br label %1193

1193:                                             ; preds = %1181, %1188
  %1194 = phi ptr [ %1186, %1188 ], [ null, %1181 ]
  store ptr %1194, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1184, ptr @zz_hold, align 8, !tbaa !10
  %1195 = getelementptr inbounds %struct.LIST, ptr %1184, i64 0, i32 1
  %1196 = load ptr, ptr %1195, align 8, !tbaa !5
  %1197 = icmp eq ptr %1196, %1184
  br i1 %1197, label %1206, label %1198

1198:                                             ; preds = %1193
  store ptr %1196, ptr @zz_res, align 8, !tbaa !10
  %1199 = load ptr, ptr %1184, align 8, !tbaa !5
  store ptr %1199, ptr %1196, align 8, !tbaa !5
  %1200 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1201 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1202 = load ptr, ptr %1201, align 8, !tbaa !5
  %1203 = getelementptr inbounds %struct.LIST, ptr %1202, i64 0, i32 1
  store ptr %1200, ptr %1203, align 8, !tbaa !5
  %1204 = getelementptr inbounds %struct.LIST, ptr %1201, i64 0, i32 1
  store ptr %1201, ptr %1204, align 8, !tbaa !5
  store ptr %1201, ptr %1201, align 8, !tbaa !5
  %1205 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1206

1206:                                             ; preds = %1193, %1198
  %1207 = phi ptr [ %1184, %1193 ], [ %1205, %1198 ]
  store ptr %1207, ptr @zz_hold, align 8, !tbaa !10
  %1208 = getelementptr inbounds %struct.word_type, ptr %1207, i64 0, i32 1
  %1209 = load i8, ptr %1208, align 8, !tbaa !5
  %1210 = add i8 %1209, -11
  %1211 = icmp ult i8 %1210, 2
  %1212 = getelementptr inbounds %struct.word_type, ptr %1207, i64 0, i32 1, i32 0, i32 1
  %1213 = zext i8 %1209 to i64
  %1214 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1213
  %1215 = select i1 %1211, ptr %1212, ptr %1214
  %1216 = load i8, ptr %1215, align 1, !tbaa !5
  %1217 = zext i8 %1216 to i32
  store i32 %1217, ptr @zz_size, align 4, !tbaa !8
  %1218 = zext i8 %1216 to i64
  %1219 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1218
  %1220 = load ptr, ptr %1219, align 8, !tbaa !10
  store ptr %1220, ptr %1207, align 8, !tbaa !5
  %1221 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1222 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1223 = sext i32 %1222 to i64
  %1224 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1223
  store ptr %1221, ptr %1224, align 8, !tbaa !10
  %1225 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %1226 = getelementptr inbounds [2 x %struct.LIST], ptr %1225, i64 0, i64 1, i32 1
  %1227 = load ptr, ptr %1226, align 8, !tbaa !5
  %1228 = icmp eq ptr %1227, %1225
  br i1 %1228, label %1229, label %1434

1229:                                             ; preds = %1206
  %1230 = call i32 @DisposeObject(ptr noundef nonnull %1225) #7
  br label %1434

1231:                                             ; preds = %784, %784, %784, %784
  %1232 = zext nneg i8 %785 to i32
  %1233 = call ptr @Image(i32 noundef %1232) #7
  %1234 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 10, ptr noundef nonnull @.str.29, i32 noundef 2, ptr noundef nonnull %787, ptr noundef %1233) #7
  %1235 = load ptr, ptr %767, align 8, !tbaa !5
  store ptr %1235, ptr @xx_link, align 8, !tbaa !10
  %1236 = getelementptr inbounds [2 x %struct.LIST], ptr %1235, i64 0, i64 1, i32 1
  %1237 = load ptr, ptr %1236, align 8, !tbaa !5
  %1238 = icmp eq ptr %1237, %1235
  br i1 %1238, label %1244, label %1239

1239:                                             ; preds = %1231
  store ptr %1237, ptr @zz_res, align 8, !tbaa !10
  %1240 = getelementptr inbounds [2 x %struct.LIST], ptr %1235, i64 0, i64 1
  %1241 = load ptr, ptr %1240, align 8, !tbaa !5
  %1242 = getelementptr inbounds [2 x %struct.LIST], ptr %1237, i64 0, i64 1
  store ptr %1241, ptr %1242, align 8, !tbaa !5
  %1243 = getelementptr inbounds [2 x %struct.LIST], ptr %1241, i64 0, i64 1, i32 1
  store ptr %1237, ptr %1243, align 8, !tbaa !5
  store ptr %1235, ptr %1236, align 8, !tbaa !5
  store ptr %1235, ptr %1240, align 8, !tbaa !5
  br label %1244

1244:                                             ; preds = %1231, %1239
  %1245 = phi ptr [ %1237, %1239 ], [ null, %1231 ]
  store ptr %1245, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1235, ptr @zz_hold, align 8, !tbaa !10
  %1246 = getelementptr inbounds %struct.LIST, ptr %1235, i64 0, i32 1
  %1247 = load ptr, ptr %1246, align 8, !tbaa !5
  %1248 = icmp eq ptr %1247, %1235
  br i1 %1248, label %1257, label %1249

1249:                                             ; preds = %1244
  store ptr %1247, ptr @zz_res, align 8, !tbaa !10
  %1250 = load ptr, ptr %1235, align 8, !tbaa !5
  store ptr %1250, ptr %1247, align 8, !tbaa !5
  %1251 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1252 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1253 = load ptr, ptr %1252, align 8, !tbaa !5
  %1254 = getelementptr inbounds %struct.LIST, ptr %1253, i64 0, i32 1
  store ptr %1251, ptr %1254, align 8, !tbaa !5
  %1255 = getelementptr inbounds %struct.LIST, ptr %1252, i64 0, i32 1
  store ptr %1252, ptr %1255, align 8, !tbaa !5
  store ptr %1252, ptr %1252, align 8, !tbaa !5
  %1256 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1257

1257:                                             ; preds = %1244, %1249
  %1258 = phi ptr [ %1235, %1244 ], [ %1256, %1249 ]
  store ptr %1258, ptr @zz_hold, align 8, !tbaa !10
  %1259 = getelementptr inbounds %struct.word_type, ptr %1258, i64 0, i32 1
  %1260 = load i8, ptr %1259, align 8, !tbaa !5
  %1261 = add i8 %1260, -11
  %1262 = icmp ult i8 %1261, 2
  %1263 = getelementptr inbounds %struct.word_type, ptr %1258, i64 0, i32 1, i32 0, i32 1
  %1264 = zext i8 %1260 to i64
  %1265 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1264
  %1266 = select i1 %1262, ptr %1263, ptr %1265
  %1267 = load i8, ptr %1266, align 1, !tbaa !5
  %1268 = zext i8 %1267 to i32
  store i32 %1268, ptr @zz_size, align 4, !tbaa !8
  %1269 = zext i8 %1267 to i64
  %1270 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1269
  %1271 = load ptr, ptr %1270, align 8, !tbaa !10
  store ptr %1271, ptr %1258, align 8, !tbaa !5
  %1272 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1273 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1274
  store ptr %1272, ptr %1275, align 8, !tbaa !10
  %1276 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %1277 = getelementptr inbounds [2 x %struct.LIST], ptr %1276, i64 0, i64 1, i32 1
  %1278 = load ptr, ptr %1277, align 8, !tbaa !5
  %1279 = icmp eq ptr %1278, %1276
  br i1 %1279, label %1280, label %1434

1280:                                             ; preds = %1257
  %1281 = call i32 @DisposeObject(ptr noundef nonnull %1276) #7
  br label %1434

1282:                                             ; preds = %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784, %784
  %1283 = icmp ult i8 %785, 9
  br i1 %1283, label %1333, label %1284

1284:                                             ; preds = %1282
  %1285 = getelementptr inbounds i8, ptr %786, i64 52
  %1286 = load i32, ptr %1285, align 4, !tbaa !5
  %1287 = getelementptr inbounds %struct.word_type, ptr %786, i64 0, i32 3, i32 1, i64 4
  %1288 = load i32, ptr %1287, align 4, !tbaa !5
  %1289 = sub i32 0, %1288
  %1290 = icmp eq i32 %1286, %1289
  br i1 %1290, label %1333, label %1291

1291:                                             ; preds = %1284
  %1292 = getelementptr inbounds %struct.word_type, ptr %786, i64 0, i32 3, i32 1
  %1293 = getelementptr inbounds %struct.word_type, ptr %786, i64 0, i32 3
  call void @SetLengthDim(i32 noundef 0) #7
  %1294 = load i32, ptr %1293, align 8, !tbaa !5
  %1295 = load i32, ptr %1292, align 8, !tbaa !5
  %1296 = call ptr @FixAndPrintObject(ptr noundef nonnull %786, i32 noundef %1294, i32 noundef %1294, i32 noundef %1295, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %1297 = load ptr, ptr @Promote.page_label, align 8, !tbaa !10
  %1298 = icmp eq ptr %1297, null
  br i1 %1298, label %1306, label %1299

1299:                                             ; preds = %1291
  %1300 = getelementptr inbounds %struct.word_type, ptr %1297, i64 0, i32 1
  %1301 = load i8, ptr %1300, align 8, !tbaa !5
  %1302 = add i8 %1301, -11
  %1303 = icmp ult i8 %1302, 2
  %1304 = getelementptr inbounds %struct.word_type, ptr %1297, i64 0, i32 4
  %1305 = select i1 %1303, ptr %1304, ptr @.str.30
  br label %1306

1306:                                             ; preds = %1299, %1291
  %1307 = phi ptr [ @.str.30, %1291 ], [ %1305, %1299 ]
  %1308 = load i1, ptr @Promote.first, align 4
  %1309 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %1310 = load i32, ptr %761, align 8, !tbaa !5
  %1311 = load i32, ptr %762, align 8, !tbaa !5
  %1312 = add nsw i32 %1311, %1310
  %1313 = load i32, ptr %1285, align 4, !tbaa !5
  %1314 = load i32, ptr %1287, align 4, !tbaa !5
  %1315 = add nsw i32 %1314, %1313
  br i1 %1308, label %1319, label %1316

1316:                                             ; preds = %1306
  %1317 = getelementptr inbounds %struct.back_end_rec, ptr %1309, i64 0, i32 15
  %1318 = load ptr, ptr %1317, align 8, !tbaa !16
  call void %1318(i32 noundef %1312, i32 noundef %1315, ptr noundef nonnull %1307) #7
  store i1 true, ptr @Promote.first, align 4
  br label %1322

1319:                                             ; preds = %1306
  %1320 = getelementptr inbounds %struct.back_end_rec, ptr %1309, i64 0, i32 16
  %1321 = load ptr, ptr %1320, align 8, !tbaa !18
  call void %1321(i32 noundef %1312, i32 noundef %1315, ptr noundef nonnull %1307) #7
  br label %1322

1322:                                             ; preds = %1319, %1316
  %1323 = load ptr, ptr @Promote.page_label, align 8, !tbaa !10
  %1324 = icmp eq ptr %1323, null
  br i1 %1324, label %1327, label %1325

1325:                                             ; preds = %1322
  %1326 = call i32 @DisposeObject(ptr noundef nonnull %1323) #7
  store ptr null, ptr @Promote.page_label, align 8, !tbaa !10
  br label %1327

1327:                                             ; preds = %1325, %1322
  call void @SetLengthDim(i32 noundef 1) #7
  %1328 = load i32, ptr %1285, align 4, !tbaa !5
  %1329 = load i32, ptr %1287, align 4, !tbaa !5
  %1330 = add nsw i32 %1329, %1328
  %1331 = call ptr @FixAndPrintObject(ptr noundef nonnull %786, i32 noundef %1328, i32 noundef %1328, i32 noundef %1329, i32 noundef 1, i32 noundef 0, i32 noundef %1330, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %1332 = load ptr, ptr %767, align 8, !tbaa !5
  br label %1333

1333:                                             ; preds = %1282, %1327, %1284
  %1334 = phi ptr [ %766, %1282 ], [ %1332, %1327 ], [ %766, %1284 ]
  store ptr %1334, ptr @xx_link, align 8, !tbaa !10
  %1335 = getelementptr inbounds [2 x %struct.LIST], ptr %1334, i64 0, i64 1, i32 1
  %1336 = load ptr, ptr %1335, align 8, !tbaa !5
  %1337 = icmp eq ptr %1336, %1334
  br i1 %1337, label %1343, label %1338

1338:                                             ; preds = %1333
  store ptr %1336, ptr @zz_res, align 8, !tbaa !10
  %1339 = getelementptr inbounds [2 x %struct.LIST], ptr %1334, i64 0, i64 1
  %1340 = load ptr, ptr %1339, align 8, !tbaa !5
  %1341 = getelementptr inbounds [2 x %struct.LIST], ptr %1336, i64 0, i64 1
  store ptr %1340, ptr %1341, align 8, !tbaa !5
  %1342 = getelementptr inbounds [2 x %struct.LIST], ptr %1340, i64 0, i64 1, i32 1
  store ptr %1336, ptr %1342, align 8, !tbaa !5
  store ptr %1334, ptr %1335, align 8, !tbaa !5
  store ptr %1334, ptr %1339, align 8, !tbaa !5
  br label %1343

1343:                                             ; preds = %1333, %1338
  %1344 = phi ptr [ %1336, %1338 ], [ null, %1333 ]
  store ptr %1344, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1334, ptr @zz_hold, align 8, !tbaa !10
  %1345 = getelementptr inbounds %struct.LIST, ptr %1334, i64 0, i32 1
  %1346 = load ptr, ptr %1345, align 8, !tbaa !5
  %1347 = icmp eq ptr %1346, %1334
  br i1 %1347, label %1356, label %1348

1348:                                             ; preds = %1343
  store ptr %1346, ptr @zz_res, align 8, !tbaa !10
  %1349 = load ptr, ptr %1334, align 8, !tbaa !5
  store ptr %1349, ptr %1346, align 8, !tbaa !5
  %1350 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1351 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1352 = load ptr, ptr %1351, align 8, !tbaa !5
  %1353 = getelementptr inbounds %struct.LIST, ptr %1352, i64 0, i32 1
  store ptr %1350, ptr %1353, align 8, !tbaa !5
  %1354 = getelementptr inbounds %struct.LIST, ptr %1351, i64 0, i32 1
  store ptr %1351, ptr %1354, align 8, !tbaa !5
  store ptr %1351, ptr %1351, align 8, !tbaa !5
  %1355 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1356

1356:                                             ; preds = %1343, %1348
  %1357 = phi ptr [ %1334, %1343 ], [ %1355, %1348 ]
  store ptr %1357, ptr @zz_hold, align 8, !tbaa !10
  %1358 = getelementptr inbounds %struct.word_type, ptr %1357, i64 0, i32 1
  %1359 = load i8, ptr %1358, align 8, !tbaa !5
  %1360 = add i8 %1359, -11
  %1361 = icmp ult i8 %1360, 2
  %1362 = getelementptr inbounds %struct.word_type, ptr %1357, i64 0, i32 1, i32 0, i32 1
  %1363 = zext i8 %1359 to i64
  %1364 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1363
  %1365 = select i1 %1361, ptr %1362, ptr %1364
  %1366 = load i8, ptr %1365, align 1, !tbaa !5
  %1367 = zext i8 %1366 to i32
  store i32 %1367, ptr @zz_size, align 4, !tbaa !8
  %1368 = zext i8 %1366 to i64
  %1369 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1368
  %1370 = load ptr, ptr %1369, align 8, !tbaa !10
  store ptr %1370, ptr %1357, align 8, !tbaa !5
  %1371 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1372 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1373 = sext i32 %1372 to i64
  %1374 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1373
  store ptr %1371, ptr %1374, align 8, !tbaa !10
  %1375 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %1376 = getelementptr inbounds [2 x %struct.LIST], ptr %1375, i64 0, i64 1, i32 1
  %1377 = load ptr, ptr %1376, align 8, !tbaa !5
  %1378 = icmp eq ptr %1377, %1375
  br i1 %1378, label %1379, label %1381

1379:                                             ; preds = %1356
  %1380 = call i32 @DisposeObject(ptr noundef nonnull %1375) #7
  br label %1381

1381:                                             ; preds = %1379, %1356
  call void @FilterScavenge(i32 noundef 0) #7
  br label %1434

1382:                                             ; preds = %784
  store ptr %766, ptr @xx_link, align 8, !tbaa !10
  %1383 = getelementptr inbounds [2 x %struct.LIST], ptr %766, i64 0, i64 1, i32 1
  %1384 = load ptr, ptr %1383, align 8, !tbaa !5
  %1385 = icmp eq ptr %1384, %766
  br i1 %1385, label %1391, label %1386

1386:                                             ; preds = %1382
  store ptr %1384, ptr @zz_res, align 8, !tbaa !10
  %1387 = getelementptr inbounds [2 x %struct.LIST], ptr %766, i64 0, i64 1
  %1388 = load ptr, ptr %1387, align 8, !tbaa !5
  %1389 = getelementptr inbounds [2 x %struct.LIST], ptr %1384, i64 0, i64 1
  store ptr %1388, ptr %1389, align 8, !tbaa !5
  %1390 = getelementptr inbounds [2 x %struct.LIST], ptr %1388, i64 0, i64 1, i32 1
  store ptr %1384, ptr %1390, align 8, !tbaa !5
  store ptr %766, ptr %1383, align 8, !tbaa !5
  store ptr %766, ptr %1387, align 8, !tbaa !5
  br label %1391

1391:                                             ; preds = %1382, %1386
  %1392 = phi ptr [ %1384, %1386 ], [ null, %1382 ]
  store ptr %1392, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %766, ptr @zz_hold, align 8, !tbaa !10
  %1393 = getelementptr inbounds %struct.LIST, ptr %766, i64 0, i32 1
  %1394 = load ptr, ptr %1393, align 8, !tbaa !5
  %1395 = icmp eq ptr %1394, %766
  br i1 %1395, label %1404, label %1396

1396:                                             ; preds = %1391
  store ptr %1394, ptr @zz_res, align 8, !tbaa !10
  %1397 = load ptr, ptr %766, align 8, !tbaa !5
  store ptr %1397, ptr %1394, align 8, !tbaa !5
  %1398 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1399 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1400 = load ptr, ptr %1399, align 8, !tbaa !5
  %1401 = getelementptr inbounds %struct.LIST, ptr %1400, i64 0, i32 1
  store ptr %1398, ptr %1401, align 8, !tbaa !5
  %1402 = getelementptr inbounds %struct.LIST, ptr %1399, i64 0, i32 1
  store ptr %1399, ptr %1402, align 8, !tbaa !5
  store ptr %1399, ptr %1399, align 8, !tbaa !5
  %1403 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1404

1404:                                             ; preds = %1391, %1396
  %1405 = phi ptr [ %766, %1391 ], [ %1403, %1396 ]
  store ptr %1405, ptr @zz_hold, align 8, !tbaa !10
  %1406 = getelementptr inbounds %struct.word_type, ptr %1405, i64 0, i32 1
  %1407 = load i8, ptr %1406, align 8, !tbaa !5
  %1408 = add i8 %1407, -11
  %1409 = icmp ult i8 %1408, 2
  %1410 = getelementptr inbounds %struct.word_type, ptr %1405, i64 0, i32 1, i32 0, i32 1
  %1411 = zext i8 %1407 to i64
  %1412 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1411
  %1413 = select i1 %1409, ptr %1410, ptr %1412
  %1414 = load i8, ptr %1413, align 1, !tbaa !5
  %1415 = zext i8 %1414 to i32
  store i32 %1415, ptr @zz_size, align 4, !tbaa !8
  %1416 = zext i8 %1414 to i64
  %1417 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1416
  %1418 = load ptr, ptr %1417, align 8, !tbaa !10
  store ptr %1418, ptr %1405, align 8, !tbaa !5
  %1419 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1420 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1421 = sext i32 %1420 to i64
  %1422 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1421
  store ptr %1419, ptr %1422, align 8, !tbaa !10
  %1423 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %1424 = getelementptr inbounds [2 x %struct.LIST], ptr %1423, i64 0, i64 1, i32 1
  %1425 = load ptr, ptr %1424, align 8, !tbaa !5
  %1426 = icmp eq ptr %1425, %1423
  br i1 %1426, label %1427, label %1434

1427:                                             ; preds = %1404
  %1428 = call i32 @DisposeObject(ptr noundef nonnull %1423) #7
  br label %1434

1429:                                             ; preds = %784
  %1430 = zext i8 %785 to i32
  %1431 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1432 = call ptr @Image(i32 noundef %1430) #7
  %1433 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %1431, ptr noundef nonnull @.str.31, ptr noundef %1432) #7
  br label %1434

1434:                                             ; preds = %953, %976, %1404, %1427, %1257, %1280, %1206, %1229, %1156, %1179, %1033, %1056, %860, %978, %810, %833, %1429, %1381
  %1435 = phi ptr [ %768, %1429 ], [ %768, %1427 ], [ %768, %1404 ], [ %768, %1381 ], [ %768, %1280 ], [ %768, %1257 ], [ %768, %1229 ], [ %768, %1206 ], [ %768, %1179 ], [ %768, %1156 ], [ %768, %1056 ], [ %768, %1033 ], [ %861, %860 ], [ %768, %978 ], [ %768, %833 ], [ %768, %810 ], [ %768, %976 ], [ %768, %953 ]
  %1436 = getelementptr inbounds %struct.LIST, ptr %1435, i64 0, i32 1
  %1437 = load ptr, ptr %1436, align 8, !tbaa !5
  %1438 = icmp eq ptr %1437, %127
  br i1 %1438, label %1439, label %765

1439:                                             ; preds = %1434, %757
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %1746

1440:                                             ; preds = %752
  %1441 = getelementptr inbounds i8, ptr %36, i64 42
  %1442 = load i16, ptr %1441, align 2
  %1443 = and i16 %1442, 16
  %1444 = icmp eq i16 %1443, 0
  br i1 %1444, label %1609, label %1445

1445:                                             ; preds = %1440
  %1446 = load i16, ptr %582, align 2
  %1447 = and i16 %1446, 256
  %1448 = icmp eq i16 %1447, 0
  br i1 %1448, label %1609, label %1449

1449:                                             ; preds = %1445
  %1450 = and i16 %1442, 4
  %1451 = icmp eq i16 %1450, 0
  br i1 %1451, label %1607, label %1452

1452:                                             ; preds = %1449
  %1453 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1, i32 1
  %1454 = load ptr, ptr %1453, align 8, !tbaa !5
  br label %1455

1455:                                             ; preds = %1455, %1452
  %1456 = phi ptr [ %1454, %1452 ], [ %1457, %1455 ]
  %1457 = load ptr, ptr %1456, align 8, !tbaa !5
  %1458 = getelementptr inbounds %struct.word_type, ptr %1457, i64 0, i32 1
  %1459 = load i8, ptr %1458, align 8, !tbaa !5
  switch i8 %1459, label %1460 [
    i8 0, label %1455
    i8 16, label %1463
  ]

1460:                                             ; preds = %1455
  %1461 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1462 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1461, ptr noundef nonnull @.str.32) #7
  br label %1463

1463:                                             ; preds = %1455, %1460
  %1464 = load ptr, ptr %27, align 8, !tbaa !5
  %1465 = icmp eq ptr %1464, %0
  br i1 %1465, label %1482, label %1470

1466:                                             ; preds = %1479
  %1467 = getelementptr inbounds %struct.LIST, ptr %1471, i64 0, i32 1
  %1468 = load ptr, ptr %1467, align 8, !tbaa !5
  %1469 = icmp eq ptr %1468, %0
  br i1 %1469, label %1482, label %1470

1470:                                             ; preds = %1463, %1466
  %1471 = phi ptr [ %1468, %1466 ], [ %1464, %1463 ]
  br label %1472

1472:                                             ; preds = %1472, %1470
  %1473 = phi ptr [ %1475, %1472 ], [ %1471, %1470 ]
  %1474 = getelementptr inbounds [2 x %struct.LIST], ptr %1473, i64 0, i64 1
  %1475 = load ptr, ptr %1474, align 8, !tbaa !5
  %1476 = getelementptr inbounds %struct.word_type, ptr %1475, i64 0, i32 1
  %1477 = load i8, ptr %1476, align 8, !tbaa !5
  %1478 = icmp eq i8 %1477, 0
  br i1 %1478, label %1472, label %1479

1479:                                             ; preds = %1472
  %1480 = add i8 %1477, -9
  %1481 = icmp ult i8 %1480, 91
  br i1 %1481, label %1485, label %1466

1482:                                             ; preds = %1466, %1463
  %1483 = phi ptr [ undef, %1463 ], [ %1475, %1466 ]
  %1484 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef nonnull %11) #7
  br label %1485

1485:                                             ; preds = %1479, %1482
  %1486 = phi ptr [ %1483, %1482 ], [ %1475, %1479 ]
  br label %1489

1487:                                             ; preds = %1507, %1498
  %1488 = phi ptr [ %1501, %1498 ], [ %1510, %1507 ]
  br label %1489

1489:                                             ; preds = %1487, %1485
  %1490 = phi ptr [ %1486, %1485 ], [ %1488, %1487 ]
  %1491 = getelementptr inbounds %struct.word_type, ptr %1490, i64 0, i32 1
  br label %1492

1492:                                             ; preds = %1521, %1489
  %1493 = load i8, ptr %1491, align 8, !tbaa !5
  %1494 = zext i8 %1493 to i32
  switch i8 %1493, label %1517 [
    i8 9, label %1522
    i8 19, label %1495
    i8 25, label %1495
    i8 26, label %1495
    i8 27, label %1495
    i8 28, label %1495
    i8 29, label %1495
    i8 37, label %1495
    i8 39, label %1495
    i8 41, label %1495
    i8 20, label %1505
    i8 22, label %1505
    i8 2, label %1514
    i8 5, label %1514
    i8 21, label %1514
    i8 23, label %1514
    i8 4, label %1514
    i8 18, label %1514
    i8 11, label %1514
    i8 12, label %1514
    i8 17, label %1514
    i8 15, label %1514
    i8 16, label %1514
    i8 24, label %1514
    i8 34, label %1514
    i8 35, label %1514
    i8 30, label %1514
    i8 31, label %1514
    i8 32, label %1514
    i8 33, label %1514
    i8 36, label %1514
    i8 38, label %1514
    i8 40, label %1514
    i8 44, label %1514
    i8 42, label %1514
    i8 43, label %1514
    i8 45, label %1514
    i8 46, label %1514
    i8 50, label %1514
    i8 51, label %1514
    i8 94, label %1514
    i8 95, label %1514
    i8 96, label %1514
    i8 97, label %1514
    i8 98, label %1514
    i8 99, label %1514
  ]

1495:                                             ; preds = %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492
  %1496 = getelementptr inbounds %struct.LIST, ptr %1490, i64 0, i32 1
  %1497 = load ptr, ptr %1496, align 8, !tbaa !5
  br label %1498

1498:                                             ; preds = %1498, %1495
  %1499 = phi ptr [ %1497, %1495 ], [ %1501, %1498 ]
  %1500 = getelementptr inbounds [2 x %struct.LIST], ptr %1499, i64 0, i64 1
  %1501 = load ptr, ptr %1500, align 8, !tbaa !5
  %1502 = getelementptr inbounds %struct.word_type, ptr %1501, i64 0, i32 1
  %1503 = load i8, ptr %1502, align 8, !tbaa !5
  %1504 = icmp eq i8 %1503, 0
  br i1 %1504, label %1498, label %1487

1505:                                             ; preds = %1492, %1492
  %1506 = load ptr, ptr %1490, align 8, !tbaa !5
  br label %1507

1507:                                             ; preds = %1507, %1505
  %1508 = phi ptr [ %1506, %1505 ], [ %1510, %1507 ]
  %1509 = getelementptr inbounds [2 x %struct.LIST], ptr %1508, i64 0, i64 1
  %1510 = load ptr, ptr %1509, align 8, !tbaa !5
  %1511 = getelementptr inbounds %struct.word_type, ptr %1510, i64 0, i32 1
  %1512 = load i8, ptr %1511, align 8, !tbaa !5
  %1513 = icmp eq i8 %1512, 0
  br i1 %1513, label %1507, label %1487

1514:                                             ; preds = %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492, %1492
  %1515 = tail call ptr @Image(i32 noundef %1494) #7
  %1516 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef nonnull %1491, ptr noundef %1515) #7
  br label %1521

1517:                                             ; preds = %1492
  %1518 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1519 = tail call ptr @Image(i32 noundef %1494) #7
  %1520 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %1518, ptr noundef nonnull @.str.66, ptr noundef %1519) #7
  br label %1521

1521:                                             ; preds = %1517, %1514
  br label %1492

1522:                                             ; preds = %1492
  %1523 = getelementptr inbounds %struct.LIST, ptr %1490, i64 0, i32 1
  %1524 = load ptr, ptr %1523, align 8, !tbaa !5
  br label %1525

1525:                                             ; preds = %1525, %1522
  %1526 = phi ptr [ %1524, %1522 ], [ %1528, %1525 ]
  %1527 = getelementptr inbounds [2 x %struct.LIST], ptr %1526, i64 0, i64 1
  %1528 = load ptr, ptr %1527, align 8, !tbaa !5
  %1529 = getelementptr inbounds %struct.word_type, ptr %1528, i64 0, i32 1
  %1530 = load i8, ptr %1529, align 8, !tbaa !5
  switch i8 %1530, label %1531 [
    i8 0, label %1525
    i8 16, label %1534
  ]

1531:                                             ; preds = %1525
  %1532 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1533 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1532, ptr noundef nonnull @.str.34) #7
  br label %1534

1534:                                             ; preds = %1525, %1531
  %1535 = icmp eq ptr %1457, %1528
  br i1 %1535, label %1607, label %1536

1536:                                             ; preds = %1534
  %1537 = getelementptr inbounds %struct.word_type, ptr %1457, i64 0, i32 3
  %1538 = load i32, ptr %1537, align 8, !tbaa !5
  %1539 = getelementptr inbounds %struct.word_type, ptr %1528, i64 0, i32 3
  %1540 = load i32, ptr %1539, align 8, !tbaa !5
  %1541 = tail call i32 @llvm.smax.i32(i32 %1538, i32 %1540)
  %1542 = getelementptr inbounds %struct.word_type, ptr %1457, i64 0, i32 3, i32 1
  %1543 = load i32, ptr %1542, align 8, !tbaa !5
  %1544 = getelementptr inbounds %struct.word_type, ptr %1528, i64 0, i32 3, i32 1
  %1545 = load i32, ptr %1544, align 8, !tbaa !5
  %1546 = tail call i32 @llvm.smax.i32(i32 %1543, i32 %1545)
  tail call void @AdjustSize(ptr noundef %1457, i32 noundef %1541, i32 noundef %1546, i32 noundef 0) #7
  tail call void @AdjustSize(ptr noundef nonnull %1528, i32 noundef %1541, i32 noundef %1546, i32 noundef 0) #7
  store ptr %1457, ptr @xx_res, align 8, !tbaa !10
  store ptr %1528, ptr @xx_hold, align 8, !tbaa !10
  %1547 = getelementptr inbounds [2 x %struct.LIST], ptr %1528, i64 0, i64 1, i32 1
  %1548 = load ptr, ptr %1547, align 8, !tbaa !5
  %1549 = icmp eq ptr %1548, %1528
  br i1 %1549, label %1560, label %1550

1550:                                             ; preds = %1536
  %1551 = getelementptr inbounds [2 x %struct.LIST], ptr %1528, i64 0, i64 1
  %1552 = load ptr, ptr %1551, align 8, !tbaa !5
  %1553 = getelementptr inbounds [2 x %struct.LIST], ptr %1548, i64 0, i64 1
  store ptr %1552, ptr %1553, align 8, !tbaa !5
  %1554 = getelementptr inbounds [2 x %struct.LIST], ptr %1552, i64 0, i64 1, i32 1
  store ptr %1548, ptr %1554, align 8, !tbaa !5
  store ptr %1528, ptr %1547, align 8, !tbaa !5
  store ptr %1528, ptr %1551, align 8, !tbaa !5
  %1555 = load ptr, ptr %1553, align 8, !tbaa !5
  store ptr %1555, ptr @zz_tmp, align 8, !tbaa !10
  %1556 = getelementptr inbounds [2 x %struct.LIST], ptr %1457, i64 0, i64 1
  %1557 = load ptr, ptr %1556, align 8, !tbaa !5
  store ptr %1557, ptr %1553, align 8, !tbaa !5
  %1558 = getelementptr inbounds [2 x %struct.LIST], ptr %1557, i64 0, i64 1, i32 1
  store ptr %1548, ptr %1558, align 8, !tbaa !5
  store ptr %1555, ptr %1556, align 8, !tbaa !5
  %1559 = getelementptr inbounds [2 x %struct.LIST], ptr %1555, i64 0, i64 1, i32 1
  store ptr %1457, ptr %1559, align 8, !tbaa !5
  br label %1560

1560:                                             ; preds = %1536, %1550
  %1561 = phi ptr [ %1548, %1550 ], [ null, %1536 ]
  store ptr %1561, ptr @xx_tmp, align 8
  store ptr %1528, ptr @zz_hold, align 8, !tbaa !10
  %1562 = getelementptr inbounds %struct.LIST, ptr %1528, i64 0, i32 1
  %1563 = load ptr, ptr %1562, align 8, !tbaa !5
  %1564 = icmp eq ptr %1563, %1528
  br i1 %1564, label %1565, label %1566

1565:                                             ; preds = %1560
  store ptr null, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1457, ptr @zz_res, align 8, !tbaa !10
  br label %1588

1566:                                             ; preds = %1560
  store ptr %1563, ptr @zz_res, align 8, !tbaa !10
  %1567 = load ptr, ptr %1528, align 8, !tbaa !5
  store ptr %1567, ptr %1563, align 8, !tbaa !5
  %1568 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1569 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1570 = load ptr, ptr %1569, align 8, !tbaa !5
  %1571 = getelementptr inbounds %struct.LIST, ptr %1570, i64 0, i32 1
  store ptr %1568, ptr %1571, align 8, !tbaa !5
  %1572 = getelementptr inbounds %struct.LIST, ptr %1569, i64 0, i32 1
  store ptr %1569, ptr %1572, align 8, !tbaa !5
  store ptr %1569, ptr %1569, align 8, !tbaa !5
  %1573 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1574 = load ptr, ptr @xx_res, align 8, !tbaa !10
  store ptr %1573, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %1574, ptr @zz_res, align 8, !tbaa !10
  store ptr %1573, ptr @zz_hold, align 8, !tbaa !10
  %1575 = icmp eq ptr %1573, null
  %1576 = icmp eq ptr %1574, null
  %1577 = select i1 %1575, i1 true, i1 %1576
  br i1 %1577, label %1588, label %1578

1578:                                             ; preds = %1566
  %1579 = load ptr, ptr %1573, align 8, !tbaa !5
  store ptr %1579, ptr @zz_tmp, align 8, !tbaa !10
  %1580 = load ptr, ptr %1574, align 8, !tbaa !5
  store ptr %1580, ptr %1573, align 8, !tbaa !5
  %1581 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1582 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1583 = load ptr, ptr %1582, align 8, !tbaa !5
  %1584 = getelementptr inbounds %struct.LIST, ptr %1583, i64 0, i32 1
  store ptr %1581, ptr %1584, align 8, !tbaa !5
  %1585 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %1585, ptr %1582, align 8, !tbaa !5
  %1586 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1587 = getelementptr inbounds %struct.LIST, ptr %1585, i64 0, i32 1
  store ptr %1586, ptr %1587, align 8, !tbaa !5
  br label %1588

1588:                                             ; preds = %1565, %1566, %1578
  %1589 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  store ptr %1589, ptr @zz_hold, align 8, !tbaa !10
  %1590 = getelementptr inbounds %struct.word_type, ptr %1589, i64 0, i32 1
  %1591 = load i8, ptr %1590, align 8, !tbaa !5
  %1592 = add i8 %1591, -11
  %1593 = icmp ult i8 %1592, 2
  %1594 = getelementptr inbounds %struct.word_type, ptr %1589, i64 0, i32 1, i32 0, i32 1
  %1595 = zext i8 %1591 to i64
  %1596 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1595
  %1597 = select i1 %1593, ptr %1594, ptr %1596
  %1598 = load i8, ptr %1597, align 1, !tbaa !5
  %1599 = zext i8 %1598 to i32
  store i32 %1599, ptr @zz_size, align 4, !tbaa !8
  %1600 = zext i8 %1598 to i64
  %1601 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1600
  %1602 = load ptr, ptr %1601, align 8, !tbaa !10
  store ptr %1602, ptr %1589, align 8, !tbaa !5
  %1603 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1604 = load i32, ptr @zz_size, align 4, !tbaa !8
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1605
  store ptr %1603, ptr %1606, align 8, !tbaa !10
  br label %1607

1607:                                             ; preds = %1534, %1588, %1449
  %1608 = getelementptr inbounds [2 x %struct.LIST], ptr %2, i64 0, i64 1, i32 1
  br label %1708

1609:                                             ; preds = %1445, %1440
  %1610 = and i16 %1442, 8
  %1611 = icmp eq i16 %1610, 0
  br i1 %1611, label %1618, label %1612

1612:                                             ; preds = %1609
  %1613 = load i16, ptr %582, align 2
  %1614 = and i16 %1613, 256
  %1615 = icmp eq i16 %1614, 0
  br i1 %1615, label %1616, label %1618

1616:                                             ; preds = %1612
  %1617 = getelementptr inbounds [2 x %struct.LIST], ptr %2, i64 0, i64 1, i32 1
  br label %1708

1618:                                             ; preds = %1612, %1609
  %1619 = load ptr, ptr %27, align 8, !tbaa !5
  %1620 = icmp eq ptr %1619, %127
  br i1 %1620, label %1696, label %1621

1621:                                             ; preds = %1618
  %1622 = load i16, ptr %582, align 2
  %1623 = and i16 %1622, 256
  %1624 = icmp eq i16 %1623, 0
  %1625 = getelementptr inbounds [2 x %struct.LIST], ptr %2, i64 0, i64 1, i32 1
  br label %1626

1626:                                             ; preds = %1621, %1688
  %1627 = phi ptr [ %1619, %1621 ], [ %1691, %1688 ]
  %1628 = phi ptr [ %0, %1621 ], [ %1689, %1688 ]
  br label %1629

1629:                                             ; preds = %1626, %1629
  %1630 = phi ptr [ %1632, %1629 ], [ %1627, %1626 ]
  %1631 = getelementptr inbounds [2 x %struct.LIST], ptr %1630, i64 0, i64 1
  %1632 = load ptr, ptr %1631, align 8, !tbaa !5
  %1633 = getelementptr inbounds %struct.word_type, ptr %1632, i64 0, i32 1
  %1634 = load i8, ptr %1633, align 8, !tbaa !5
  switch i8 %1634, label %1646 [
    i8 0, label %1629
    i8 9, label %1635
  ]

1635:                                             ; preds = %1629
  %1636 = getelementptr inbounds %struct.LIST, ptr %1632, i64 0, i32 1
  %1637 = select i1 %1624, ptr %1636, ptr %1632
  %1638 = load ptr, ptr %1637, align 8, !tbaa !5
  br label %1639

1639:                                             ; preds = %1639, %1635
  %1640 = phi ptr [ %1638, %1635 ], [ %1642, %1639 ]
  %1641 = getelementptr inbounds [2 x %struct.LIST], ptr %1640, i64 0, i64 1
  %1642 = load ptr, ptr %1641, align 8, !tbaa !5
  %1643 = getelementptr inbounds %struct.word_type, ptr %1642, i64 0, i32 1
  %1644 = load i8, ptr %1643, align 8, !tbaa !5
  %1645 = icmp eq i8 %1644, 0
  br i1 %1645, label %1639, label %1646

1646:                                             ; preds = %1629, %1639
  %1647 = phi i8 [ %1644, %1639 ], [ %1634, %1629 ]
  %1648 = phi ptr [ %1642, %1639 ], [ %1632, %1629 ]
  %1649 = and i8 %1647, -4
  %1650 = icmp eq i8 %1649, 20
  br i1 %1650, label %1651, label %1657

1651:                                             ; preds = %1646
  %1652 = icmp eq ptr %1632, %1648
  br i1 %1652, label %1656, label %1653

1653:                                             ; preds = %1651
  %1654 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1655 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1654, ptr noundef nonnull @.str.35) #7
  br label %1656

1656:                                             ; preds = %1653, %1651
  tail call void @HandleHeader(ptr noundef %0, ptr noundef nonnull %1648)
  br label %1688

1657:                                             ; preds = %1646
  %1658 = add i8 %1647, -119
  %1659 = icmp ult i8 %1658, 20
  br i1 %1659, label %1660, label %1688

1660:                                             ; preds = %1657
  store ptr %1627, ptr @xx_link, align 8, !tbaa !10
  store ptr %1627, ptr @zz_hold, align 8, !tbaa !10
  %1661 = getelementptr inbounds %struct.LIST, ptr %1627, i64 0, i32 1
  %1662 = load ptr, ptr %1661, align 8, !tbaa !5
  %1663 = icmp eq ptr %1662, %1627
  br i1 %1663, label %1672, label %1664

1664:                                             ; preds = %1660
  store ptr %1662, ptr @zz_res, align 8, !tbaa !10
  %1665 = load ptr, ptr %1627, align 8, !tbaa !5
  store ptr %1665, ptr %1662, align 8, !tbaa !5
  %1666 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1667 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1668 = load ptr, ptr %1667, align 8, !tbaa !5
  %1669 = getelementptr inbounds %struct.LIST, ptr %1668, i64 0, i32 1
  store ptr %1666, ptr %1669, align 8, !tbaa !5
  %1670 = getelementptr inbounds %struct.LIST, ptr %1667, i64 0, i32 1
  store ptr %1667, ptr %1670, align 8, !tbaa !5
  store ptr %1667, ptr %1667, align 8, !tbaa !5
  %1671 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %1672

1672:                                             ; preds = %1660, %1664
  %1673 = phi ptr [ %1627, %1660 ], [ %1671, %1664 ]
  store ptr %1673, ptr @zz_res, align 8, !tbaa !10
  %1674 = load ptr, ptr %1625, align 8, !tbaa !5
  store ptr %1674, ptr @zz_hold, align 8, !tbaa !10
  %1675 = icmp eq ptr %1674, null
  %1676 = icmp eq ptr %1673, null
  %1677 = select i1 %1675, i1 true, i1 %1676
  br i1 %1677, label %1688, label %1678

1678:                                             ; preds = %1672
  %1679 = load ptr, ptr %1674, align 8, !tbaa !5
  store ptr %1679, ptr @zz_tmp, align 8, !tbaa !10
  %1680 = load ptr, ptr %1673, align 8, !tbaa !5
  store ptr %1680, ptr %1674, align 8, !tbaa !5
  %1681 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1682 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1683 = load ptr, ptr %1682, align 8, !tbaa !5
  %1684 = getelementptr inbounds %struct.LIST, ptr %1683, i64 0, i32 1
  store ptr %1681, ptr %1684, align 8, !tbaa !5
  %1685 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %1685, ptr %1682, align 8, !tbaa !5
  %1686 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1687 = getelementptr inbounds %struct.LIST, ptr %1685, i64 0, i32 1
  store ptr %1686, ptr %1687, align 8, !tbaa !5
  br label %1688

1688:                                             ; preds = %1657, %1672, %1678, %1656
  %1689 = phi ptr [ %1628, %1656 ], [ %1628, %1678 ], [ %1628, %1672 ], [ %1627, %1657 ]
  %1690 = getelementptr inbounds %struct.LIST, ptr %1689, i64 0, i32 1
  %1691 = load ptr, ptr %1690, align 8, !tbaa !5
  %1692 = icmp eq ptr %1691, %127
  br i1 %1692, label %1693, label %1626

1693:                                             ; preds = %1688
  %1694 = load ptr, ptr %27, align 8, !tbaa !5
  %1695 = icmp eq ptr %1694, %127
  br i1 %1695, label %1696, label %1699

1696:                                             ; preds = %1618, %1693
  %1697 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1698 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1697, ptr noundef nonnull @.str.36) #7
  br label %1699

1699:                                             ; preds = %1696, %1693
  %1700 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1
  %1701 = load ptr, ptr %1700, align 8, !tbaa !5
  %1702 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1, i32 1
  %1703 = load ptr, ptr %1702, align 8, !tbaa !5
  %1704 = icmp eq ptr %1701, %1703
  br i1 %1704, label %1711, label %1705

1705:                                             ; preds = %1699
  %1706 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1707 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1706, ptr noundef nonnull @.str.37) #7
  br label %1708

1708:                                             ; preds = %1607, %1616, %1705
  %1709 = phi ptr [ %1702, %1705 ], [ %1617, %1616 ], [ %1608, %1607 ]
  %1710 = load ptr, ptr %1709, align 8, !tbaa !5
  br label %1711

1711:                                             ; preds = %1708, %1699
  %1712 = phi ptr [ %1710, %1708 ], [ %1703, %1699 ]
  %1713 = load ptr, ptr %27, align 8, !tbaa !5
  %1714 = icmp eq ptr %1713, %127
  br i1 %1714, label %1746, label %1715

1715:                                             ; preds = %1711
  %1716 = getelementptr inbounds %struct.word_type, ptr %1713, i64 0, i32 1
  %1717 = load i8, ptr %1716, align 8, !tbaa !5
  %1718 = icmp eq i8 %1717, 0
  br i1 %1718, label %1722, label %1719

1719:                                             ; preds = %1715
  %1720 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1721 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %1720, ptr noundef nonnull @.str.38) #7
  br label %1722

1722:                                             ; preds = %1719, %1715
  store ptr %1713, ptr @zz_res, align 8, !tbaa !10
  store ptr %127, ptr @zz_hold, align 8, !tbaa !10
  %1723 = icmp eq ptr %127, null
  br i1 %1723, label %1734, label %1724

1724:                                             ; preds = %1722
  %1725 = load ptr, ptr %127, align 8, !tbaa !5
  store ptr %1725, ptr @zz_tmp, align 8, !tbaa !10
  %1726 = load ptr, ptr %1713, align 8, !tbaa !5
  store ptr %1726, ptr %127, align 8, !tbaa !5
  %1727 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1728 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1729 = load ptr, ptr %1728, align 8, !tbaa !5
  %1730 = getelementptr inbounds %struct.LIST, ptr %1729, i64 0, i32 1
  store ptr %1727, ptr %1730, align 8, !tbaa !5
  %1731 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %1731, ptr %1728, align 8, !tbaa !5
  %1732 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1733 = getelementptr inbounds %struct.LIST, ptr %1731, i64 0, i32 1
  store ptr %1732, ptr %1733, align 8, !tbaa !5
  br label %1734

1734:                                             ; preds = %1722, %1724
  store ptr %1713, ptr @zz_res, align 8, !tbaa !10
  store ptr %1712, ptr @zz_hold, align 8, !tbaa !10
  %1735 = icmp eq ptr %1712, null
  br i1 %1735, label %1746, label %1736

1736:                                             ; preds = %1734
  %1737 = load ptr, ptr %1712, align 8, !tbaa !5
  store ptr %1737, ptr @zz_tmp, align 8, !tbaa !10
  %1738 = load ptr, ptr %1713, align 8, !tbaa !5
  store ptr %1738, ptr %1712, align 8, !tbaa !5
  %1739 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1740 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1741 = load ptr, ptr %1740, align 8, !tbaa !5
  %1742 = getelementptr inbounds %struct.LIST, ptr %1741, i64 0, i32 1
  store ptr %1739, ptr %1742, align 8, !tbaa !5
  %1743 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %1743, ptr %1740, align 8, !tbaa !5
  %1744 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1745 = getelementptr inbounds %struct.LIST, ptr %1743, i64 0, i32 1
  store ptr %1744, ptr %1745, align 8, !tbaa !5
  br label %1746

1746:                                             ; preds = %1711, %1736, %1734, %1439
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @HandleHeader(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = and i8 %4, -4
  %6 = icmp eq i8 %5, 20
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.9) #7
  br label %10

10:                                               ; preds = %2, %7
  %11 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load ptr, ptr %11, align 8, !tbaa !5
  %15 = icmp ne ptr %13, %14
  %16 = icmp eq ptr %13, %1
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.10) #7
  br label %21

21:                                               ; preds = %10, %18
  %22 = load i8, ptr %3, align 8, !tbaa !5
  switch i8 %22, label %353 [
    i8 23, label %23
    i8 22, label %24
    i8 20, label %25
    i8 21, label %213
  ]

23:                                               ; preds = %21
  tail call fastcc void @DisposeHeaders(ptr noundef %0)
  br label %353

24:                                               ; preds = %21
  tail call fastcc void @DisposeHeaders(ptr noundef %0)
  br label %25

25:                                               ; preds = %21, %24
  %26 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %0, i64 42
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 256
  %33 = icmp eq i16 %32, 0
  %34 = select i1 %33, i64 17, i64 19
  %35 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i32
  store i32 %37, ptr @zz_size, align 4, !tbaa !8
  %38 = zext i8 %36 to i64
  %39 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %44 = tail call ptr @GetMemory(i32 noundef %37, ptr noundef %43) #7
  store ptr %44, ptr @zz_hold, align 8, !tbaa !10
  br label %47

45:                                               ; preds = %29
  store ptr %40, ptr @zz_hold, align 8, !tbaa !10
  %46 = load ptr, ptr %40, align 8, !tbaa !5
  store ptr %46, ptr %39, align 8, !tbaa !10
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi ptr [ %44, %42 ], [ %40, %45 ]
  %49 = load i16, ptr %30, align 2
  %50 = and i16 %49, 256
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, i8 17, i8 19
  %53 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  store i8 %52, ptr %53, align 8, !tbaa !5
  %54 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1, i32 1
  store ptr %48, ptr %54, align 8, !tbaa !5
  %55 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1
  store ptr %48, ptr %55, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  store ptr %48, ptr %56, align 8, !tbaa !5
  store ptr %48, ptr %48, align 8, !tbaa !5
  store ptr %48, ptr %26, align 8, !tbaa !5
  br label %57

57:                                               ; preds = %47, %25
  %58 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %59 = zext i8 %58 to i32
  store i32 %59, ptr @zz_size, align 4, !tbaa !8
  %60 = zext i8 %58 to i64
  %61 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %66 = tail call ptr @GetMemory(i32 noundef %59, ptr noundef %65) #7
  br label %69

67:                                               ; preds = %57
  store ptr %62, ptr @zz_hold, align 8, !tbaa !10
  %68 = load ptr, ptr %62, align 8, !tbaa !5
  store ptr %68, ptr %61, align 8, !tbaa !10
  br label %69

69:                                               ; preds = %64, %67
  %70 = phi ptr [ %66, %64 ], [ %62, %67 ]
  %71 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  store i8 1, ptr %71, align 8, !tbaa !5
  %72 = getelementptr inbounds [2 x %struct.LIST], ptr %70, i64 0, i64 1
  %73 = getelementptr inbounds [2 x %struct.LIST], ptr %70, i64 0, i64 1, i32 1
  store ptr %70, ptr %73, align 8, !tbaa !5
  store ptr %70, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.LIST, ptr %70, i64 0, i32 1
  store ptr %70, ptr %74, align 8, !tbaa !5
  store ptr %70, ptr %70, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, -1610612737
  store i32 %77, ptr %75, align 8
  %78 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  store ptr %79, ptr @xx_link, align 8, !tbaa !10
  store ptr %79, ptr @zz_hold, align 8, !tbaa !10
  %80 = getelementptr inbounds %struct.LIST, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = icmp eq ptr %81, %79
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  store ptr %79, ptr @zz_res, align 8, !tbaa !10
  store ptr %70, ptr @zz_hold, align 8, !tbaa !10
  br label %93

84:                                               ; preds = %69
  store ptr %81, ptr @zz_res, align 8, !tbaa !10
  %85 = load ptr, ptr %79, align 8, !tbaa !5
  store ptr %85, ptr %81, align 8, !tbaa !5
  %86 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %87 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.LIST, ptr %88, i64 0, i32 1
  store ptr %86, ptr %89, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.LIST, ptr %87, i64 0, i32 1
  store ptr %87, ptr %90, align 8, !tbaa !5
  store ptr %87, ptr %87, align 8, !tbaa !5
  %91 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %91, ptr @zz_res, align 8, !tbaa !10
  store ptr %70, ptr @zz_hold, align 8, !tbaa !10
  %92 = icmp eq ptr %91, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %83, %84
  %94 = phi ptr [ %79, %83 ], [ %91, %84 ]
  %95 = load ptr, ptr %70, align 8, !tbaa !5
  store ptr %95, ptr @zz_tmp, align 8, !tbaa !10
  %96 = load ptr, ptr %94, align 8, !tbaa !5
  store ptr %96, ptr %70, align 8, !tbaa !5
  %97 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %98 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.LIST, ptr %99, i64 0, i32 1
  store ptr %97, ptr %100, align 8, !tbaa !5
  %101 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %101, ptr %98, align 8, !tbaa !5
  %102 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %103 = getelementptr inbounds %struct.LIST, ptr %101, i64 0, i32 1
  store ptr %102, ptr %103, align 8, !tbaa !5
  br label %104

104:                                              ; preds = %84, %93
  %105 = load ptr, ptr %74, align 8, !tbaa !5
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi ptr [ %105, %104 ], [ %109, %106 ]
  %108 = getelementptr inbounds [2 x %struct.LIST], ptr %107, i64 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.word_type, ptr %109, i64 0, i32 1
  %111 = load i8, ptr %110, align 8, !tbaa !5
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %106, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.closure_type, ptr %1, i64 0, i32 4
  %115 = load i16, ptr %114, align 8
  %116 = and i16 %115, 128
  %117 = getelementptr inbounds %struct.gapobj_type, ptr %70, i64 0, i32 3
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, -129
  %120 = or disjoint i16 %119, %116
  store i16 %120, ptr %117, align 4
  %121 = load i16, ptr %114, align 8
  %122 = and i16 %121, 256
  %123 = and i16 %120, -257
  %124 = or disjoint i16 %123, %122
  store i16 %124, ptr %117, align 4
  %125 = load i16, ptr %114, align 8
  %126 = and i16 %125, 512
  %127 = and i16 %124, -513
  %128 = or disjoint i16 %127, %126
  store i16 %128, ptr %117, align 4
  %129 = load i16, ptr %114, align 8
  %130 = and i16 %129, 7168
  %131 = and i16 %128, -7169
  %132 = or disjoint i16 %131, %130
  store i16 %132, ptr %117, align 4
  %133 = load i16, ptr %114, align 8
  %134 = and i16 %133, -8192
  %135 = and i16 %132, 8191
  %136 = or disjoint i16 %135, %134
  store i16 %136, ptr %117, align 4
  %137 = getelementptr inbounds %struct.closure_type, ptr %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %138 = load i16, ptr %137, align 2, !tbaa !5
  %139 = getelementptr inbounds %struct.gapobj_type, ptr %70, i64 0, i32 3, i32 1
  store i16 %138, ptr %139, align 2, !tbaa !5
  %140 = and i16 %136, -769
  store i16 %140, ptr %117, align 4
  %141 = load ptr, ptr %1, align 8, !tbaa !5
  store ptr %141, ptr @xx_link, align 8, !tbaa !10
  store ptr %141, ptr @zz_hold, align 8, !tbaa !10
  %142 = getelementptr inbounds %struct.LIST, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  %144 = icmp eq ptr %143, %141
  br i1 %144, label %153, label %145

145:                                              ; preds = %113
  store ptr %143, ptr @zz_res, align 8, !tbaa !10
  %146 = load ptr, ptr %141, align 8, !tbaa !5
  store ptr %146, ptr %143, align 8, !tbaa !5
  %147 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %148 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  store ptr %147, ptr %150, align 8, !tbaa !5
  %151 = getelementptr inbounds %struct.LIST, ptr %148, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !5
  store ptr %148, ptr %148, align 8, !tbaa !5
  %152 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %153

153:                                              ; preds = %113, %145
  %154 = phi ptr [ %141, %113 ], [ %152, %145 ]
  store ptr %154, ptr @zz_res, align 8, !tbaa !10
  %155 = load ptr, ptr %26, align 8, !tbaa !5
  store ptr %155, ptr @zz_hold, align 8, !tbaa !10
  %156 = icmp eq ptr %155, null
  %157 = icmp eq ptr %154, null
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %169, label %159

159:                                              ; preds = %153
  %160 = load ptr, ptr %155, align 8, !tbaa !5
  store ptr %160, ptr @zz_tmp, align 8, !tbaa !10
  %161 = load ptr, ptr %154, align 8, !tbaa !5
  store ptr %161, ptr %155, align 8, !tbaa !5
  %162 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %163 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  %165 = getelementptr inbounds %struct.LIST, ptr %164, i64 0, i32 1
  store ptr %162, ptr %165, align 8, !tbaa !5
  %166 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %166, ptr %163, align 8, !tbaa !5
  %167 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %168 = getelementptr inbounds %struct.LIST, ptr %166, i64 0, i32 1
  store ptr %167, ptr %168, align 8, !tbaa !5
  br label %169

169:                                              ; preds = %153, %159
  %170 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %171 = zext i8 %170 to i32
  store i32 %171, ptr @zz_size, align 4, !tbaa !8
  %172 = zext i8 %170 to i64
  %173 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !10
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %178 = tail call ptr @GetMemory(i32 noundef %171, ptr noundef %177) #7
  br label %181

179:                                              ; preds = %169
  store ptr %174, ptr @zz_hold, align 8, !tbaa !10
  %180 = load ptr, ptr %174, align 8, !tbaa !5
  store ptr %180, ptr %173, align 8, !tbaa !10
  br label %181

181:                                              ; preds = %176, %179
  %182 = phi ptr [ %178, %176 ], [ %174, %179 ]
  %183 = getelementptr inbounds %struct.word_type, ptr %182, i64 0, i32 1
  store i8 0, ptr %183, align 8, !tbaa !5
  %184 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1, i32 1
  store ptr %182, ptr %184, align 8, !tbaa !5
  %185 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1
  store ptr %182, ptr %185, align 8, !tbaa !5
  %186 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  store ptr %182, ptr %186, align 8, !tbaa !5
  store ptr %182, ptr %182, align 8, !tbaa !5
  store ptr %182, ptr @xx_link, align 8, !tbaa !10
  store ptr %182, ptr @zz_res, align 8, !tbaa !10
  %187 = load ptr, ptr %26, align 8, !tbaa !5
  store ptr %187, ptr @zz_hold, align 8, !tbaa !10
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  store ptr %70, ptr @zz_hold, align 8, !tbaa !10
  br label %205

190:                                              ; preds = %181
  %191 = load ptr, ptr %187, align 8, !tbaa !5
  store ptr %191, ptr @zz_tmp, align 8, !tbaa !10
  %192 = load ptr, ptr %182, align 8, !tbaa !5
  store ptr %192, ptr %187, align 8, !tbaa !5
  %193 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %194 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %195 = load ptr, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %193, ptr %196, align 8, !tbaa !5
  %197 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %197, ptr %194, align 8, !tbaa !5
  %198 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %199 = getelementptr inbounds %struct.LIST, ptr %197, i64 0, i32 1
  store ptr %198, ptr %199, align 8, !tbaa !5
  %200 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %200, ptr @zz_res, align 8, !tbaa !10
  store ptr %70, ptr @zz_hold, align 8, !tbaa !10
  %201 = icmp eq ptr %200, null
  br i1 %201, label %353, label %202

202:                                              ; preds = %190
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  br label %205

205:                                              ; preds = %202, %189
  %206 = phi ptr [ %182, %189 ], [ %204, %202 ]
  %207 = phi ptr [ %182, %189 ], [ %200, %202 ]
  %208 = load ptr, ptr %72, align 8, !tbaa !5
  store ptr %208, ptr @zz_tmp, align 8, !tbaa !10
  %209 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1
  store ptr %206, ptr %72, align 8, !tbaa !5
  %210 = load ptr, ptr %209, align 8, !tbaa !5
  %211 = getelementptr inbounds [2 x %struct.LIST], ptr %210, i64 0, i64 1, i32 1
  store ptr %70, ptr %211, align 8, !tbaa !5
  store ptr %208, ptr %209, align 8, !tbaa !5
  %212 = getelementptr inbounds [2 x %struct.LIST], ptr %208, i64 0, i64 1, i32 1
  store ptr %207, ptr %212, align 8, !tbaa !5
  br label %353

213:                                              ; preds = %21
  %214 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 13
  %215 = load ptr, ptr %214, align 8, !tbaa !5
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %219 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 11, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %218, ptr noundef nonnull @.str.12) #7
  br label %353

220:                                              ; preds = %213
  %221 = load ptr, ptr %215, align 8, !tbaa !5
  %222 = icmp eq ptr %221, %215
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %225 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %224, ptr noundef nonnull @.str.13) #7
  %226 = load ptr, ptr %214, align 8, !tbaa !5
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  br label %228

228:                                              ; preds = %223, %220
  %229 = phi ptr [ %227, %223 ], [ %221, %220 ]
  br label %230

230:                                              ; preds = %230, %228
  %231 = phi ptr [ %229, %228 ], [ %233, %230 ]
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %231, i64 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !5
  %234 = getelementptr inbounds %struct.word_type, ptr %233, i64 0, i32 1
  %235 = load i8, ptr %234, align 8, !tbaa !5
  switch i8 %235, label %236 [
    i8 0, label %230
    i8 1, label %241
  ]

236:                                              ; preds = %230
  %237 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %238 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %237, ptr noundef nonnull @.str.14) #7
  %239 = load ptr, ptr %214, align 8, !tbaa !5
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  br label %241

241:                                              ; preds = %230, %236
  %242 = phi ptr [ %240, %236 ], [ %229, %230 ]
  store ptr %242, ptr @xx_link, align 8, !tbaa !10
  %243 = getelementptr inbounds [2 x %struct.LIST], ptr %242, i64 0, i64 1, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  %245 = icmp eq ptr %244, %242
  br i1 %245, label %251, label %246

246:                                              ; preds = %241
  store ptr %244, ptr @zz_res, align 8, !tbaa !10
  %247 = getelementptr inbounds [2 x %struct.LIST], ptr %242, i64 0, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !5
  %249 = getelementptr inbounds [2 x %struct.LIST], ptr %244, i64 0, i64 1
  store ptr %248, ptr %249, align 8, !tbaa !5
  %250 = getelementptr inbounds [2 x %struct.LIST], ptr %248, i64 0, i64 1, i32 1
  store ptr %244, ptr %250, align 8, !tbaa !5
  store ptr %242, ptr %243, align 8, !tbaa !5
  store ptr %242, ptr %247, align 8, !tbaa !5
  br label %251

251:                                              ; preds = %241, %246
  %252 = phi ptr [ %244, %246 ], [ null, %241 ]
  store ptr %252, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %242, ptr @zz_hold, align 8, !tbaa !10
  %253 = getelementptr inbounds %struct.LIST, ptr %242, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  %255 = icmp eq ptr %254, %242
  br i1 %255, label %264, label %256

256:                                              ; preds = %251
  store ptr %254, ptr @zz_res, align 8, !tbaa !10
  %257 = load ptr, ptr %242, align 8, !tbaa !5
  store ptr %257, ptr %254, align 8, !tbaa !5
  %258 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %259 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %260 = load ptr, ptr %259, align 8, !tbaa !5
  %261 = getelementptr inbounds %struct.LIST, ptr %260, i64 0, i32 1
  store ptr %258, ptr %261, align 8, !tbaa !5
  %262 = getelementptr inbounds %struct.LIST, ptr %259, i64 0, i32 1
  store ptr %259, ptr %262, align 8, !tbaa !5
  store ptr %259, ptr %259, align 8, !tbaa !5
  %263 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %264

264:                                              ; preds = %251, %256
  %265 = phi ptr [ %242, %251 ], [ %263, %256 ]
  store ptr %265, ptr @zz_hold, align 8, !tbaa !10
  %266 = getelementptr inbounds %struct.word_type, ptr %265, i64 0, i32 1
  %267 = load i8, ptr %266, align 8, !tbaa !5
  %268 = add i8 %267, -11
  %269 = icmp ult i8 %268, 2
  %270 = getelementptr inbounds %struct.word_type, ptr %265, i64 0, i32 1, i32 0, i32 1
  %271 = zext i8 %267 to i64
  %272 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %271
  %273 = select i1 %269, ptr %270, ptr %272
  %274 = load i8, ptr %273, align 1, !tbaa !5
  %275 = zext i8 %274 to i32
  store i32 %275, ptr @zz_size, align 4, !tbaa !8
  %276 = zext i8 %274 to i64
  %277 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !10
  store ptr %278, ptr %265, align 8, !tbaa !5
  %279 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %280 = load i32, ptr @zz_size, align 4, !tbaa !8
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %281
  store ptr %279, ptr %282, align 8, !tbaa !10
  %283 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %284 = getelementptr inbounds [2 x %struct.LIST], ptr %283, i64 0, i64 1, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !5
  %286 = icmp eq ptr %285, %283
  br i1 %286, label %287, label %289

287:                                              ; preds = %264
  %288 = tail call i32 @DisposeObject(ptr noundef nonnull %283) #7
  br label %289

289:                                              ; preds = %287, %264
  %290 = load ptr, ptr %214, align 8, !tbaa !5
  %291 = load ptr, ptr %290, align 8, !tbaa !5
  %292 = icmp eq ptr %291, %290
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %295 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %294, ptr noundef nonnull @.str.13) #7
  %296 = load ptr, ptr %214, align 8, !tbaa !5
  %297 = load ptr, ptr %296, align 8, !tbaa !5
  br label %298

298:                                              ; preds = %293, %289
  %299 = phi ptr [ %297, %293 ], [ %291, %289 ]
  store ptr %299, ptr @xx_link, align 8, !tbaa !10
  %300 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = icmp eq ptr %301, %299
  br i1 %302, label %308, label %303

303:                                              ; preds = %298
  store ptr %301, ptr @zz_res, align 8, !tbaa !10
  %304 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  %306 = getelementptr inbounds [2 x %struct.LIST], ptr %301, i64 0, i64 1
  store ptr %305, ptr %306, align 8, !tbaa !5
  %307 = getelementptr inbounds [2 x %struct.LIST], ptr %305, i64 0, i64 1, i32 1
  store ptr %301, ptr %307, align 8, !tbaa !5
  store ptr %299, ptr %300, align 8, !tbaa !5
  store ptr %299, ptr %304, align 8, !tbaa !5
  br label %308

308:                                              ; preds = %298, %303
  %309 = phi ptr [ %301, %303 ], [ null, %298 ]
  store ptr %309, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %299, ptr @zz_hold, align 8, !tbaa !10
  %310 = getelementptr inbounds %struct.LIST, ptr %299, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = icmp eq ptr %311, %299
  br i1 %312, label %321, label %313

313:                                              ; preds = %308
  store ptr %311, ptr @zz_res, align 8, !tbaa !10
  %314 = load ptr, ptr %299, align 8, !tbaa !5
  store ptr %314, ptr %311, align 8, !tbaa !5
  %315 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %316 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %317 = load ptr, ptr %316, align 8, !tbaa !5
  %318 = getelementptr inbounds %struct.LIST, ptr %317, i64 0, i32 1
  store ptr %315, ptr %318, align 8, !tbaa !5
  %319 = getelementptr inbounds %struct.LIST, ptr %316, i64 0, i32 1
  store ptr %316, ptr %319, align 8, !tbaa !5
  store ptr %316, ptr %316, align 8, !tbaa !5
  %320 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %321

321:                                              ; preds = %308, %313
  %322 = phi ptr [ %299, %308 ], [ %320, %313 ]
  store ptr %322, ptr @zz_hold, align 8, !tbaa !10
  %323 = getelementptr inbounds %struct.word_type, ptr %322, i64 0, i32 1
  %324 = load i8, ptr %323, align 8, !tbaa !5
  %325 = add i8 %324, -11
  %326 = icmp ult i8 %325, 2
  %327 = getelementptr inbounds %struct.word_type, ptr %322, i64 0, i32 1, i32 0, i32 1
  %328 = zext i8 %324 to i64
  %329 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %328
  %330 = select i1 %326, ptr %327, ptr %329
  %331 = load i8, ptr %330, align 1, !tbaa !5
  %332 = zext i8 %331 to i32
  store i32 %332, ptr @zz_size, align 4, !tbaa !8
  %333 = zext i8 %331 to i64
  %334 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !10
  store ptr %335, ptr %322, align 8, !tbaa !5
  %336 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %337 = load i32, ptr @zz_size, align 4, !tbaa !8
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %338
  store ptr %336, ptr %339, align 8, !tbaa !10
  %340 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %341 = getelementptr inbounds [2 x %struct.LIST], ptr %340, i64 0, i64 1, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !5
  %343 = icmp eq ptr %342, %340
  br i1 %343, label %344, label %346

344:                                              ; preds = %321
  %345 = tail call i32 @DisposeObject(ptr noundef nonnull %340) #7
  br label %346

346:                                              ; preds = %344, %321
  %347 = load ptr, ptr %214, align 8, !tbaa !5
  %348 = getelementptr inbounds %struct.LIST, ptr %347, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !5
  %350 = icmp eq ptr %349, %347
  br i1 %350, label %351, label %353

351:                                              ; preds = %346
  %352 = tail call i32 @DisposeObject(ptr noundef nonnull %347) #7
  store ptr null, ptr %214, align 8, !tbaa !5
  br label %353

353:                                              ; preds = %190, %217, %351, %346, %205, %21, %23
  %354 = load ptr, ptr %12, align 8, !tbaa !5
  %355 = getelementptr inbounds %struct.LIST, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !5
  %357 = getelementptr inbounds %struct.word_type, ptr %356, i64 0, i32 1
  %358 = load i8, ptr %357, align 8, !tbaa !5
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %353
  %361 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %362 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %361, ptr noundef nonnull @.str.15) #7
  br label %363

363:                                              ; preds = %360, %353
  %364 = load i8, ptr %3, align 8, !tbaa !5
  switch i8 %364, label %424 [
    i8 23, label %365
    i8 21, label %365
  ]

365:                                              ; preds = %363, %363
  %366 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !5
  %368 = icmp eq ptr %367, %1
  br i1 %368, label %372, label %369

369:                                              ; preds = %365
  %370 = load ptr, ptr %1, align 8, !tbaa !5
  %371 = icmp eq ptr %367, %370
  br i1 %371, label %376, label %372

372:                                              ; preds = %369, %365
  %373 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %374 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %373, ptr noundef nonnull @.str.16) #7
  %375 = load ptr, ptr %366, align 8, !tbaa !5
  br label %376

376:                                              ; preds = %372, %369
  %377 = phi ptr [ %375, %372 ], [ %367, %369 ]
  store ptr %377, ptr @xx_link, align 8, !tbaa !10
  %378 = getelementptr inbounds [2 x %struct.LIST], ptr %377, i64 0, i64 1, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !5
  %380 = icmp eq ptr %379, %377
  br i1 %380, label %386, label %381

381:                                              ; preds = %376
  store ptr %379, ptr @zz_res, align 8, !tbaa !10
  %382 = getelementptr inbounds [2 x %struct.LIST], ptr %377, i64 0, i64 1
  %383 = load ptr, ptr %382, align 8, !tbaa !5
  %384 = getelementptr inbounds [2 x %struct.LIST], ptr %379, i64 0, i64 1
  store ptr %383, ptr %384, align 8, !tbaa !5
  %385 = getelementptr inbounds [2 x %struct.LIST], ptr %383, i64 0, i64 1, i32 1
  store ptr %379, ptr %385, align 8, !tbaa !5
  store ptr %377, ptr %378, align 8, !tbaa !5
  store ptr %377, ptr %382, align 8, !tbaa !5
  br label %386

386:                                              ; preds = %376, %381
  %387 = phi ptr [ %379, %381 ], [ null, %376 ]
  store ptr %387, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %377, ptr @zz_hold, align 8, !tbaa !10
  %388 = getelementptr inbounds %struct.LIST, ptr %377, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !5
  %390 = icmp eq ptr %389, %377
  br i1 %390, label %399, label %391

391:                                              ; preds = %386
  store ptr %389, ptr @zz_res, align 8, !tbaa !10
  %392 = load ptr, ptr %377, align 8, !tbaa !5
  store ptr %392, ptr %389, align 8, !tbaa !5
  %393 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %394 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %395 = load ptr, ptr %394, align 8, !tbaa !5
  %396 = getelementptr inbounds %struct.LIST, ptr %395, i64 0, i32 1
  store ptr %393, ptr %396, align 8, !tbaa !5
  %397 = getelementptr inbounds %struct.LIST, ptr %394, i64 0, i32 1
  store ptr %394, ptr %397, align 8, !tbaa !5
  store ptr %394, ptr %394, align 8, !tbaa !5
  %398 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %399

399:                                              ; preds = %386, %391
  %400 = phi ptr [ %377, %386 ], [ %398, %391 ]
  store ptr %400, ptr @zz_hold, align 8, !tbaa !10
  %401 = getelementptr inbounds %struct.word_type, ptr %400, i64 0, i32 1
  %402 = load i8, ptr %401, align 8, !tbaa !5
  %403 = add i8 %402, -11
  %404 = icmp ult i8 %403, 2
  %405 = getelementptr inbounds %struct.word_type, ptr %400, i64 0, i32 1, i32 0, i32 1
  %406 = zext i8 %402 to i64
  %407 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %406
  %408 = select i1 %404, ptr %405, ptr %407
  %409 = load i8, ptr %408, align 1, !tbaa !5
  %410 = zext i8 %409 to i32
  store i32 %410, ptr @zz_size, align 4, !tbaa !8
  %411 = zext i8 %409 to i64
  %412 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %411
  %413 = load ptr, ptr %412, align 8, !tbaa !10
  store ptr %413, ptr %400, align 8, !tbaa !5
  %414 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %415 = load i32, ptr @zz_size, align 4, !tbaa !8
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %416
  store ptr %414, ptr %417, align 8, !tbaa !10
  %418 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %419 = getelementptr inbounds [2 x %struct.LIST], ptr %418, i64 0, i64 1, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !5
  %421 = icmp eq ptr %420, %418
  br i1 %421, label %422, label %424

422:                                              ; preds = %399
  %423 = tail call i32 @DisposeObject(ptr noundef nonnull %418) #7
  br label %424

424:                                              ; preds = %363, %399, %422
  %425 = load ptr, ptr %12, align 8, !tbaa !5
  store ptr %425, ptr @xx_link, align 8, !tbaa !10
  %426 = getelementptr inbounds [2 x %struct.LIST], ptr %425, i64 0, i64 1, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !5
  %428 = icmp eq ptr %427, %425
  br i1 %428, label %434, label %429

429:                                              ; preds = %424
  store ptr %427, ptr @zz_res, align 8, !tbaa !10
  %430 = getelementptr inbounds [2 x %struct.LIST], ptr %425, i64 0, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !5
  %432 = getelementptr inbounds [2 x %struct.LIST], ptr %427, i64 0, i64 1
  store ptr %431, ptr %432, align 8, !tbaa !5
  %433 = getelementptr inbounds [2 x %struct.LIST], ptr %431, i64 0, i64 1, i32 1
  store ptr %427, ptr %433, align 8, !tbaa !5
  store ptr %425, ptr %426, align 8, !tbaa !5
  store ptr %425, ptr %430, align 8, !tbaa !5
  br label %434

434:                                              ; preds = %424, %429
  %435 = phi ptr [ %427, %429 ], [ null, %424 ]
  store ptr %435, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %425, ptr @zz_hold, align 8, !tbaa !10
  %436 = getelementptr inbounds %struct.LIST, ptr %425, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !5
  %438 = icmp eq ptr %437, %425
  br i1 %438, label %447, label %439

439:                                              ; preds = %434
  store ptr %437, ptr @zz_res, align 8, !tbaa !10
  %440 = load ptr, ptr %425, align 8, !tbaa !5
  store ptr %440, ptr %437, align 8, !tbaa !5
  %441 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %442 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %443 = load ptr, ptr %442, align 8, !tbaa !5
  %444 = getelementptr inbounds %struct.LIST, ptr %443, i64 0, i32 1
  store ptr %441, ptr %444, align 8, !tbaa !5
  %445 = getelementptr inbounds %struct.LIST, ptr %442, i64 0, i32 1
  store ptr %442, ptr %445, align 8, !tbaa !5
  store ptr %442, ptr %442, align 8, !tbaa !5
  %446 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %447

447:                                              ; preds = %434, %439
  %448 = phi ptr [ %425, %434 ], [ %446, %439 ]
  store ptr %448, ptr @zz_hold, align 8, !tbaa !10
  %449 = getelementptr inbounds %struct.word_type, ptr %448, i64 0, i32 1
  %450 = load i8, ptr %449, align 8, !tbaa !5
  %451 = add i8 %450, -11
  %452 = icmp ult i8 %451, 2
  %453 = getelementptr inbounds %struct.word_type, ptr %448, i64 0, i32 1, i32 0, i32 1
  %454 = zext i8 %450 to i64
  %455 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %454
  %456 = select i1 %452, ptr %453, ptr %455
  %457 = load i8, ptr %456, align 1, !tbaa !5
  %458 = zext i8 %457 to i32
  store i32 %458, ptr @zz_size, align 4, !tbaa !8
  %459 = zext i8 %457 to i64
  %460 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !10
  store ptr %461, ptr %448, align 8, !tbaa !5
  %462 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %463 = load i32, ptr @zz_size, align 4, !tbaa !8
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %464
  store ptr %462, ptr %465, align 8, !tbaa !10
  %466 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %467 = getelementptr inbounds [2 x %struct.LIST], ptr %466, i64 0, i64 1, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !5
  %469 = icmp eq ptr %468, %466
  br i1 %469, label %470, label %472

470:                                              ; preds = %447
  %471 = tail call i32 @DisposeObject(ptr noundef nonnull %466) #7
  br label %472

472:                                              ; preds = %470, %447
  store ptr %356, ptr @xx_link, align 8, !tbaa !10
  %473 = getelementptr inbounds [2 x %struct.LIST], ptr %356, i64 0, i64 1, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !5
  %475 = icmp eq ptr %474, %356
  br i1 %475, label %481, label %476

476:                                              ; preds = %472
  store ptr %474, ptr @zz_res, align 8, !tbaa !10
  %477 = getelementptr inbounds [2 x %struct.LIST], ptr %356, i64 0, i64 1
  %478 = load ptr, ptr %477, align 8, !tbaa !5
  %479 = getelementptr inbounds [2 x %struct.LIST], ptr %474, i64 0, i64 1
  store ptr %478, ptr %479, align 8, !tbaa !5
  %480 = getelementptr inbounds [2 x %struct.LIST], ptr %478, i64 0, i64 1, i32 1
  store ptr %474, ptr %480, align 8, !tbaa !5
  store ptr %356, ptr %473, align 8, !tbaa !5
  store ptr %356, ptr %477, align 8, !tbaa !5
  br label %481

481:                                              ; preds = %472, %476
  %482 = phi ptr [ %474, %476 ], [ null, %472 ]
  store ptr %482, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %356, ptr @zz_hold, align 8, !tbaa !10
  %483 = getelementptr inbounds %struct.LIST, ptr %356, i64 0, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !5
  %485 = icmp eq ptr %484, %356
  br i1 %485, label %494, label %486

486:                                              ; preds = %481
  store ptr %484, ptr @zz_res, align 8, !tbaa !10
  %487 = load ptr, ptr %356, align 8, !tbaa !5
  store ptr %487, ptr %484, align 8, !tbaa !5
  %488 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %489 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %490 = load ptr, ptr %489, align 8, !tbaa !5
  %491 = getelementptr inbounds %struct.LIST, ptr %490, i64 0, i32 1
  store ptr %488, ptr %491, align 8, !tbaa !5
  %492 = getelementptr inbounds %struct.LIST, ptr %489, i64 0, i32 1
  store ptr %489, ptr %492, align 8, !tbaa !5
  store ptr %489, ptr %489, align 8, !tbaa !5
  %493 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %494

494:                                              ; preds = %481, %486
  %495 = phi ptr [ %356, %481 ], [ %493, %486 ]
  store ptr %495, ptr @zz_hold, align 8, !tbaa !10
  %496 = getelementptr inbounds %struct.word_type, ptr %495, i64 0, i32 1
  %497 = load i8, ptr %496, align 8, !tbaa !5
  %498 = add i8 %497, -11
  %499 = icmp ult i8 %498, 2
  %500 = getelementptr inbounds %struct.word_type, ptr %495, i64 0, i32 1, i32 0, i32 1
  %501 = zext i8 %497 to i64
  %502 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %501
  %503 = select i1 %499, ptr %500, ptr %502
  %504 = load i8, ptr %503, align 1, !tbaa !5
  %505 = zext i8 %504 to i32
  store i32 %505, ptr @zz_size, align 4, !tbaa !8
  %506 = zext i8 %504 to i64
  %507 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !10
  store ptr %508, ptr %495, align 8, !tbaa !5
  %509 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %510 = load i32, ptr @zz_size, align 4, !tbaa !8
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %511
  store ptr %509, ptr %512, align 8, !tbaa !10
  %513 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %514 = getelementptr inbounds [2 x %struct.LIST], ptr %513, i64 0, i64 1, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !5
  %516 = icmp eq ptr %515, %513
  br i1 %516, label %517, label %519

517:                                              ; preds = %494
  %518 = tail call i32 @DisposeObject(ptr noundef nonnull %513) #7
  br label %519

519:                                              ; preds = %517, %494
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DisposeHeaders(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !5
  switch i8 %7, label %8 [
    i8 17, label %12
    i8 19, label %12
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.63) #7
  %11 = load ptr, ptr %2, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %5, %5, %8
  %13 = phi ptr [ %3, %5 ], [ %3, %5 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %70, label %17

17:                                               ; preds = %12, %65
  %18 = phi ptr [ %68, %65 ], [ %15, %12 ]
  store ptr %18, ptr @xx_link, align 8, !tbaa !10
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %18, i64 0, i64 1, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, %18
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  store ptr %20, ptr @zz_res, align 8, !tbaa !10
  %23 = getelementptr inbounds [2 x %struct.LIST], ptr %18, i64 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !5
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %24, i64 0, i64 1, i32 1
  store ptr %20, ptr %26, align 8, !tbaa !5
  store ptr %18, ptr %19, align 8, !tbaa !5
  store ptr %18, ptr %23, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %17, %22
  %28 = phi ptr [ %20, %22 ], [ null, %17 ]
  store ptr %28, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %18, ptr @zz_hold, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.LIST, ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, %18
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  store ptr %30, ptr @zz_res, align 8, !tbaa !10
  %33 = load ptr, ptr %18, align 8, !tbaa !5
  store ptr %33, ptr %30, align 8, !tbaa !5
  %34 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %35 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.LIST, ptr %36, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.LIST, ptr %35, i64 0, i32 1
  store ptr %35, ptr %38, align 8, !tbaa !5
  store ptr %35, ptr %35, align 8, !tbaa !5
  %39 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %40

40:                                               ; preds = %27, %32
  %41 = phi ptr [ %18, %27 ], [ %39, %32 ]
  store ptr %41, ptr @zz_hold, align 8, !tbaa !10
  %42 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1
  %43 = load i8, ptr %42, align 8, !tbaa !5
  %44 = add i8 %43, -11
  %45 = icmp ult i8 %44, 2
  %46 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1, i32 0, i32 1
  %47 = zext i8 %43 to i64
  %48 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %47
  %49 = select i1 %45, ptr %46, ptr %48
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i32
  store i32 %51, ptr @zz_size, align 4, !tbaa !8
  %52 = zext i8 %50 to i64
  %53 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  store ptr %54, ptr %41, align 8, !tbaa !5
  %55 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %56 = load i32, ptr @zz_size, align 4, !tbaa !8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %57
  store ptr %55, ptr %58, align 8, !tbaa !10
  %59 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %59, i64 0, i64 1, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = icmp eq ptr %61, %59
  br i1 %62, label %63, label %65

63:                                               ; preds = %40
  %64 = tail call i32 @DisposeObject(ptr noundef nonnull %59) #7
  br label %65

65:                                               ; preds = %63, %40
  %66 = load ptr, ptr %2, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.LIST, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %68, %66
  br i1 %69, label %70, label %17

70:                                               ; preds = %65, %12
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %70, %1
  ret void
}

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare ptr @CrossMake(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CrossSequence(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @KillGalley(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %11, ptr noundef nonnull @.str.39) #7
  %13 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi ptr [ %8, %6 ], [ %14, %10 ]
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %19, %17 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !5
  switch i8 %21, label %22 [
    i8 0, label %17
    i8 120, label %25
  ]

22:                                               ; preds = %17
  %23 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %24 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %23, ptr noundef nonnull @.str.40) #7
  br label %25

25:                                               ; preds = %17, %22
  %26 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %27 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, %19
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %32 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %31, ptr noundef nonnull @.str.41) #7
  br label %33

33:                                               ; preds = %30, %25
  %34 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @DisposeObject(ptr noundef nonnull %35) #7
  store ptr null, ptr %34, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %380, label %43

43:                                               ; preds = %39, %377
  %44 = phi ptr [ %378, %377 ], [ %41, %39 ]
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %48, %45 ], [ %44, %43 ]
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !5
  switch i8 %50, label %330 [
    i8 0, label %45
    i8 122, label %51
    i8 121, label %184
    i8 120, label %309
    i8 8, label %327
  ]

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = icmp eq ptr %53, %48
  br i1 %54, label %67, label %55

55:                                               ; preds = %51, %62
  %56 = phi ptr [ %63, %62 ], [ %53, %51 ]
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.word_type, ptr %58, i64 0, i32 1
  %60 = load i8, ptr %59, align 8, !tbaa !5
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55, %64
  %63 = phi ptr [ %58, %55 ], [ %65, %64 ]
  br label %55

64:                                               ; preds = %55
  tail call void @DetachGalley(ptr noundef nonnull %58) #7
  %65 = load ptr, ptr %52, align 8, !tbaa !5
  %66 = icmp eq ptr %65, %48
  br i1 %66, label %67, label %62

67:                                               ; preds = %64, %51
  store ptr %48, ptr @xx_hold, align 8, !tbaa !10
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %165, label %75

71:                                               ; preds = %97
  %72 = getelementptr inbounds %struct.LIST, ptr %116, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = icmp eq ptr %73, %116
  br i1 %74, label %165, label %120

75:                                               ; preds = %67, %97
  %76 = phi ptr [ %118, %97 ], [ %69, %67 ]
  store ptr %76, ptr @xx_link, align 8, !tbaa !10
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %76, i64 0, i64 1, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, %76
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  store ptr %78, ptr @zz_res, align 8, !tbaa !10
  %81 = getelementptr inbounds [2 x %struct.LIST], ptr %76, i64 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1
  store ptr %82, ptr %83, align 8, !tbaa !5
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %82, i64 0, i64 1, i32 1
  store ptr %78, ptr %84, align 8, !tbaa !5
  store ptr %76, ptr %77, align 8, !tbaa !5
  store ptr %76, ptr %81, align 8, !tbaa !5
  br label %85

85:                                               ; preds = %75, %80
  store ptr %76, ptr @zz_hold, align 8, !tbaa !10
  %86 = getelementptr inbounds %struct.LIST, ptr %76, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = icmp eq ptr %87, %76
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  store ptr %87, ptr @zz_res, align 8, !tbaa !10
  %90 = load ptr, ptr %76, align 8, !tbaa !5
  store ptr %90, ptr %87, align 8, !tbaa !5
  %91 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %92 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.LIST, ptr %93, i64 0, i32 1
  store ptr %91, ptr %94, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.LIST, ptr %92, i64 0, i32 1
  store ptr %92, ptr %95, align 8, !tbaa !5
  store ptr %92, ptr %92, align 8, !tbaa !5
  %96 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %97

97:                                               ; preds = %85, %89
  %98 = phi ptr [ %76, %85 ], [ %96, %89 ]
  store ptr %98, ptr @zz_hold, align 8, !tbaa !10
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %100 = load i8, ptr %99, align 8, !tbaa !5
  %101 = add i8 %100, -11
  %102 = icmp ult i8 %101, 2
  %103 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1, i32 0, i32 1
  %104 = zext i8 %100 to i64
  %105 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %104
  %106 = select i1 %102, ptr %103, ptr %105
  %107 = load i8, ptr %106, align 1, !tbaa !5
  %108 = zext i8 %107 to i32
  store i32 %108, ptr @zz_size, align 4, !tbaa !8
  %109 = zext i8 %107 to i64
  %110 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !10
  store ptr %111, ptr %98, align 8, !tbaa !5
  %112 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %113 = load i32, ptr @zz_size, align 4, !tbaa !8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %114
  store ptr %112, ptr %115, align 8, !tbaa !10
  %116 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %116, i64 0, i64 1, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = icmp eq ptr %118, %116
  br i1 %119, label %71, label %75

120:                                              ; preds = %71, %142
  %121 = phi ptr [ %163, %142 ], [ %73, %71 ]
  store ptr %121, ptr @xx_link, align 8, !tbaa !10
  %122 = getelementptr inbounds [2 x %struct.LIST], ptr %121, i64 0, i64 1, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = icmp eq ptr %123, %121
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  store ptr %123, ptr @zz_res, align 8, !tbaa !10
  %126 = getelementptr inbounds [2 x %struct.LIST], ptr %121, i64 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !5
  %128 = getelementptr inbounds [2 x %struct.LIST], ptr %123, i64 0, i64 1
  store ptr %127, ptr %128, align 8, !tbaa !5
  %129 = getelementptr inbounds [2 x %struct.LIST], ptr %127, i64 0, i64 1, i32 1
  store ptr %123, ptr %129, align 8, !tbaa !5
  store ptr %121, ptr %122, align 8, !tbaa !5
  store ptr %121, ptr %126, align 8, !tbaa !5
  br label %130

130:                                              ; preds = %120, %125
  store ptr %121, ptr @zz_hold, align 8, !tbaa !10
  %131 = getelementptr inbounds %struct.LIST, ptr %121, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = icmp eq ptr %132, %121
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  store ptr %132, ptr @zz_res, align 8, !tbaa !10
  %135 = load ptr, ptr %121, align 8, !tbaa !5
  store ptr %135, ptr %132, align 8, !tbaa !5
  %136 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %137 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds %struct.LIST, ptr %138, i64 0, i32 1
  store ptr %136, ptr %139, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.LIST, ptr %137, i64 0, i32 1
  store ptr %137, ptr %140, align 8, !tbaa !5
  store ptr %137, ptr %137, align 8, !tbaa !5
  %141 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %142

142:                                              ; preds = %130, %134
  %143 = phi ptr [ %121, %130 ], [ %141, %134 ]
  store ptr %143, ptr @zz_hold, align 8, !tbaa !10
  %144 = getelementptr inbounds %struct.word_type, ptr %143, i64 0, i32 1
  %145 = load i8, ptr %144, align 8, !tbaa !5
  %146 = add i8 %145, -11
  %147 = icmp ult i8 %146, 2
  %148 = getelementptr inbounds %struct.word_type, ptr %143, i64 0, i32 1, i32 0, i32 1
  %149 = zext i8 %145 to i64
  %150 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %149
  %151 = select i1 %147, ptr %148, ptr %150
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = zext i8 %152 to i32
  store i32 %153, ptr @zz_size, align 4, !tbaa !8
  %154 = zext i8 %152 to i64
  %155 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !10
  store ptr %156, ptr %143, align 8, !tbaa !5
  %157 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %158 = load i32, ptr @zz_size, align 4, !tbaa !8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %159
  store ptr %157, ptr %160, align 8, !tbaa !10
  %161 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %162 = getelementptr inbounds %struct.LIST, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = icmp eq ptr %163, %161
  br i1 %164, label %165, label %120

165:                                              ; preds = %142, %67, %71
  %166 = phi ptr [ %73, %71 ], [ %48, %67 ], [ %161, %142 ]
  store ptr %166, ptr @zz_hold, align 8, !tbaa !10
  %167 = getelementptr inbounds %struct.word_type, ptr %166, i64 0, i32 1
  %168 = load i8, ptr %167, align 8, !tbaa !5
  %169 = add i8 %168, -11
  %170 = icmp ult i8 %169, 2
  %171 = getelementptr inbounds %struct.word_type, ptr %166, i64 0, i32 1, i32 0, i32 1
  %172 = zext i8 %168 to i64
  %173 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %172
  %174 = select i1 %170, ptr %171, ptr %173
  %175 = load i8, ptr %174, align 1, !tbaa !5
  %176 = zext i8 %175 to i32
  store i32 %176, ptr @zz_size, align 4, !tbaa !8
  %177 = zext i8 %175 to i64
  %178 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !10
  store ptr %179, ptr %166, align 8, !tbaa !5
  %180 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %181 = load i32, ptr @zz_size, align 4, !tbaa !8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %182
  store ptr %180, ptr %183, align 8, !tbaa !10
  br label %377

184:                                              ; preds = %45
  %185 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  %187 = icmp eq ptr %186, %48
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %190 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %189, ptr noundef nonnull @.str.42) #7
  br label %191

191:                                              ; preds = %188, %184
  store ptr %48, ptr @xx_hold, align 8, !tbaa !10
  %192 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = icmp eq ptr %193, %48
  br i1 %194, label %195, label %200

195:                                              ; preds = %222, %191
  %196 = phi ptr [ %48, %191 ], [ %241, %222 ]
  %197 = getelementptr inbounds %struct.LIST, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !5
  %199 = icmp eq ptr %198, %196
  br i1 %199, label %290, label %245

200:                                              ; preds = %191, %222
  %201 = phi ptr [ %243, %222 ], [ %193, %191 ]
  store ptr %201, ptr @xx_link, align 8, !tbaa !10
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  %204 = icmp eq ptr %203, %201
  br i1 %204, label %210, label %205

205:                                              ; preds = %200
  store ptr %203, ptr @zz_res, align 8, !tbaa !10
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %203, i64 0, i64 1
  store ptr %207, ptr %208, align 8, !tbaa !5
  %209 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1, i32 1
  store ptr %203, ptr %209, align 8, !tbaa !5
  store ptr %201, ptr %202, align 8, !tbaa !5
  store ptr %201, ptr %206, align 8, !tbaa !5
  br label %210

210:                                              ; preds = %200, %205
  store ptr %201, ptr @zz_hold, align 8, !tbaa !10
  %211 = getelementptr inbounds %struct.LIST, ptr %201, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  %213 = icmp eq ptr %212, %201
  br i1 %213, label %222, label %214

214:                                              ; preds = %210
  store ptr %212, ptr @zz_res, align 8, !tbaa !10
  %215 = load ptr, ptr %201, align 8, !tbaa !5
  store ptr %215, ptr %212, align 8, !tbaa !5
  %216 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %217 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %218 = load ptr, ptr %217, align 8, !tbaa !5
  %219 = getelementptr inbounds %struct.LIST, ptr %218, i64 0, i32 1
  store ptr %216, ptr %219, align 8, !tbaa !5
  %220 = getelementptr inbounds %struct.LIST, ptr %217, i64 0, i32 1
  store ptr %217, ptr %220, align 8, !tbaa !5
  store ptr %217, ptr %217, align 8, !tbaa !5
  %221 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %222

222:                                              ; preds = %210, %214
  %223 = phi ptr [ %201, %210 ], [ %221, %214 ]
  store ptr %223, ptr @zz_hold, align 8, !tbaa !10
  %224 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1
  %225 = load i8, ptr %224, align 8, !tbaa !5
  %226 = add i8 %225, -11
  %227 = icmp ult i8 %226, 2
  %228 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1, i32 0, i32 1
  %229 = zext i8 %225 to i64
  %230 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %229
  %231 = select i1 %227, ptr %228, ptr %230
  %232 = load i8, ptr %231, align 1, !tbaa !5
  %233 = zext i8 %232 to i32
  store i32 %233, ptr @zz_size, align 4, !tbaa !8
  %234 = zext i8 %232 to i64
  %235 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !10
  store ptr %236, ptr %223, align 8, !tbaa !5
  %237 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %238 = load i32, ptr @zz_size, align 4, !tbaa !8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %239
  store ptr %237, ptr %240, align 8, !tbaa !10
  %241 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %242 = getelementptr inbounds [2 x %struct.LIST], ptr %241, i64 0, i64 1, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = icmp eq ptr %243, %241
  br i1 %244, label %195, label %200

245:                                              ; preds = %195, %267
  %246 = phi ptr [ %288, %267 ], [ %198, %195 ]
  store ptr %246, ptr @xx_link, align 8, !tbaa !10
  %247 = getelementptr inbounds [2 x %struct.LIST], ptr %246, i64 0, i64 1, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !5
  %249 = icmp eq ptr %248, %246
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  store ptr %248, ptr @zz_res, align 8, !tbaa !10
  %251 = getelementptr inbounds [2 x %struct.LIST], ptr %246, i64 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %248, i64 0, i64 1
  store ptr %252, ptr %253, align 8, !tbaa !5
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %252, i64 0, i64 1, i32 1
  store ptr %248, ptr %254, align 8, !tbaa !5
  store ptr %246, ptr %247, align 8, !tbaa !5
  store ptr %246, ptr %251, align 8, !tbaa !5
  br label %255

255:                                              ; preds = %245, %250
  store ptr %246, ptr @zz_hold, align 8, !tbaa !10
  %256 = getelementptr inbounds %struct.LIST, ptr %246, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !5
  %258 = icmp eq ptr %257, %246
  br i1 %258, label %267, label %259

259:                                              ; preds = %255
  store ptr %257, ptr @zz_res, align 8, !tbaa !10
  %260 = load ptr, ptr %246, align 8, !tbaa !5
  store ptr %260, ptr %257, align 8, !tbaa !5
  %261 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %262 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %263 = load ptr, ptr %262, align 8, !tbaa !5
  %264 = getelementptr inbounds %struct.LIST, ptr %263, i64 0, i32 1
  store ptr %261, ptr %264, align 8, !tbaa !5
  %265 = getelementptr inbounds %struct.LIST, ptr %262, i64 0, i32 1
  store ptr %262, ptr %265, align 8, !tbaa !5
  store ptr %262, ptr %262, align 8, !tbaa !5
  %266 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %267

267:                                              ; preds = %255, %259
  %268 = phi ptr [ %246, %255 ], [ %266, %259 ]
  store ptr %268, ptr @zz_hold, align 8, !tbaa !10
  %269 = getelementptr inbounds %struct.word_type, ptr %268, i64 0, i32 1
  %270 = load i8, ptr %269, align 8, !tbaa !5
  %271 = add i8 %270, -11
  %272 = icmp ult i8 %271, 2
  %273 = getelementptr inbounds %struct.word_type, ptr %268, i64 0, i32 1, i32 0, i32 1
  %274 = zext i8 %270 to i64
  %275 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %274
  %276 = select i1 %272, ptr %273, ptr %275
  %277 = load i8, ptr %276, align 1, !tbaa !5
  %278 = zext i8 %277 to i32
  store i32 %278, ptr @zz_size, align 4, !tbaa !8
  %279 = zext i8 %277 to i64
  %280 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !10
  store ptr %281, ptr %268, align 8, !tbaa !5
  %282 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %283 = load i32, ptr @zz_size, align 4, !tbaa !8
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %284
  store ptr %282, ptr %285, align 8, !tbaa !10
  %286 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  %287 = getelementptr inbounds %struct.LIST, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !5
  %289 = icmp eq ptr %288, %286
  br i1 %289, label %290, label %245

290:                                              ; preds = %267, %195
  %291 = phi ptr [ %196, %195 ], [ %286, %267 ]
  store ptr %291, ptr @zz_hold, align 8, !tbaa !10
  %292 = getelementptr inbounds %struct.word_type, ptr %291, i64 0, i32 1
  %293 = load i8, ptr %292, align 8, !tbaa !5
  %294 = add i8 %293, -11
  %295 = icmp ult i8 %294, 2
  %296 = getelementptr inbounds %struct.word_type, ptr %291, i64 0, i32 1, i32 0, i32 1
  %297 = zext i8 %293 to i64
  %298 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %297
  %299 = select i1 %295, ptr %296, ptr %298
  %300 = load i8, ptr %299, align 1, !tbaa !5
  %301 = zext i8 %300 to i32
  store i32 %301, ptr @zz_size, align 4, !tbaa !8
  %302 = zext i8 %300 to i64
  %303 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !10
  store ptr %304, ptr %291, align 8, !tbaa !5
  %305 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %306 = load i32, ptr @zz_size, align 4, !tbaa !8
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %307
  store ptr %305, ptr %308, align 8, !tbaa !10
  br label %377

309:                                              ; preds = %45
  %310 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = icmp eq ptr %311, %48
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %315 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %314, ptr noundef nonnull @.str.43) #7
  %316 = load ptr, ptr %310, align 8, !tbaa !5
  br label %317

317:                                              ; preds = %313, %309
  %318 = phi ptr [ %311, %309 ], [ %316, %313 ]
  br label %319

319:                                              ; preds = %317, %319
  %320 = phi ptr [ %322, %319 ], [ %318, %317 ]
  %321 = getelementptr inbounds [2 x %struct.LIST], ptr %320, i64 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !5
  %323 = getelementptr inbounds %struct.word_type, ptr %322, i64 0, i32 1
  %324 = load i8, ptr %323, align 8, !tbaa !5
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %319, label %326

326:                                              ; preds = %319
  tail call void @KillGalley(ptr noundef nonnull %322, i32 noundef 0)
  br label %377

327:                                              ; preds = %45
  %328 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %329 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %328, ptr noundef nonnull @.str.44) #7
  br label %377

330:                                              ; preds = %45
  store ptr %44, ptr @xx_link, align 8, !tbaa !10
  %331 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !5
  %333 = icmp eq ptr %332, %44
  br i1 %333, label %339, label %334

334:                                              ; preds = %330
  store ptr %332, ptr @zz_res, align 8, !tbaa !10
  %335 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = getelementptr inbounds [2 x %struct.LIST], ptr %332, i64 0, i64 1
  store ptr %336, ptr %337, align 8, !tbaa !5
  %338 = getelementptr inbounds [2 x %struct.LIST], ptr %336, i64 0, i64 1, i32 1
  store ptr %332, ptr %338, align 8, !tbaa !5
  store ptr %44, ptr %331, align 8, !tbaa !5
  store ptr %44, ptr %335, align 8, !tbaa !5
  br label %339

339:                                              ; preds = %330, %334
  %340 = phi ptr [ %332, %334 ], [ null, %330 ]
  store ptr %340, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %44, ptr @zz_hold, align 8, !tbaa !10
  %341 = getelementptr inbounds %struct.LIST, ptr %44, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !5
  %343 = icmp eq ptr %342, %44
  br i1 %343, label %352, label %344

344:                                              ; preds = %339
  store ptr %342, ptr @zz_res, align 8, !tbaa !10
  %345 = load ptr, ptr %44, align 8, !tbaa !5
  store ptr %345, ptr %342, align 8, !tbaa !5
  %346 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %347 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %348 = load ptr, ptr %347, align 8, !tbaa !5
  %349 = getelementptr inbounds %struct.LIST, ptr %348, i64 0, i32 1
  store ptr %346, ptr %349, align 8, !tbaa !5
  %350 = getelementptr inbounds %struct.LIST, ptr %347, i64 0, i32 1
  store ptr %347, ptr %350, align 8, !tbaa !5
  store ptr %347, ptr %347, align 8, !tbaa !5
  %351 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %352

352:                                              ; preds = %339, %344
  %353 = phi ptr [ %44, %339 ], [ %351, %344 ]
  store ptr %353, ptr @zz_hold, align 8, !tbaa !10
  %354 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 1
  %355 = load i8, ptr %354, align 8, !tbaa !5
  %356 = add i8 %355, -11
  %357 = icmp ult i8 %356, 2
  %358 = getelementptr inbounds %struct.word_type, ptr %353, i64 0, i32 1, i32 0, i32 1
  %359 = zext i8 %355 to i64
  %360 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %359
  %361 = select i1 %357, ptr %358, ptr %360
  %362 = load i8, ptr %361, align 1, !tbaa !5
  %363 = zext i8 %362 to i32
  store i32 %363, ptr @zz_size, align 4, !tbaa !8
  %364 = zext i8 %362 to i64
  %365 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !10
  store ptr %366, ptr %353, align 8, !tbaa !5
  %367 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %368 = load i32, ptr @zz_size, align 4, !tbaa !8
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %369
  store ptr %367, ptr %370, align 8, !tbaa !10
  %371 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %372 = getelementptr inbounds [2 x %struct.LIST], ptr %371, i64 0, i64 1, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !5
  %374 = icmp eq ptr %373, %371
  br i1 %374, label %375, label %377

375:                                              ; preds = %352
  %376 = tail call i32 @DisposeObject(ptr noundef nonnull %371) #7
  br label %377

377:                                              ; preds = %352, %375, %327, %326, %290, %165
  %378 = load ptr, ptr %40, align 8, !tbaa !5
  %379 = icmp eq ptr %378, %0
  br i1 %379, label %380, label %43

380:                                              ; preds = %377, %39
  %381 = icmp eq i32 %1, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 8
  %384 = load ptr, ptr %383, align 8, !tbaa !5
  %385 = icmp eq ptr %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  tail call void @CalculateOptimize(ptr noundef nonnull %0) #7
  br label %387

387:                                              ; preds = %386, %382, %380
  %388 = load ptr, ptr @MakeDead.dead_store, align 8, !tbaa !10
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %408

390:                                              ; preds = %387
  %391 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %392 = zext i8 %391 to i32
  store i32 %392, ptr @zz_size, align 4, !tbaa !8
  %393 = zext i8 %391 to i64
  %394 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !10
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %400

397:                                              ; preds = %390
  %398 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %399 = tail call ptr @GetMemory(i32 noundef %392, ptr noundef %398) #7
  br label %402

400:                                              ; preds = %390
  store ptr %395, ptr @zz_hold, align 8, !tbaa !10
  %401 = load ptr, ptr %395, align 8, !tbaa !5
  store ptr %401, ptr %394, align 8, !tbaa !10
  br label %402

402:                                              ; preds = %400, %397
  %403 = phi ptr [ %399, %397 ], [ %395, %400 ]
  %404 = getelementptr inbounds %struct.word_type, ptr %403, i64 0, i32 1
  store i8 17, ptr %404, align 8, !tbaa !5
  %405 = getelementptr inbounds [2 x %struct.LIST], ptr %403, i64 0, i64 1, i32 1
  store ptr %403, ptr %405, align 8, !tbaa !5
  %406 = getelementptr inbounds [2 x %struct.LIST], ptr %403, i64 0, i64 1
  store ptr %403, ptr %406, align 8, !tbaa !5
  %407 = getelementptr inbounds %struct.LIST, ptr %403, i64 0, i32 1
  store ptr %403, ptr %407, align 8, !tbaa !5
  store ptr %403, ptr %403, align 8, !tbaa !5
  store ptr %403, ptr @MakeDead.dead_store, align 8, !tbaa !10
  br label %408

408:                                              ; preds = %402, %387
  %409 = phi ptr [ %403, %402 ], [ %388, %387 ]
  store i8 119, ptr %26, align 8, !tbaa !5
  %410 = load ptr, ptr %27, align 8, !tbaa !5
  store ptr %410, ptr @xx_link, align 8, !tbaa !10
  store ptr %410, ptr @zz_hold, align 8, !tbaa !10
  %411 = getelementptr inbounds %struct.LIST, ptr %410, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  %413 = icmp eq ptr %412, %410
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  store ptr %410, ptr @zz_res, align 8, !tbaa !10
  store ptr %409, ptr @zz_hold, align 8, !tbaa !10
  br label %424

415:                                              ; preds = %408
  store ptr %412, ptr @zz_res, align 8, !tbaa !10
  %416 = load ptr, ptr %410, align 8, !tbaa !5
  store ptr %416, ptr %412, align 8, !tbaa !5
  %417 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %418 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %419 = load ptr, ptr %418, align 8, !tbaa !5
  %420 = getelementptr inbounds %struct.LIST, ptr %419, i64 0, i32 1
  store ptr %417, ptr %420, align 8, !tbaa !5
  %421 = getelementptr inbounds %struct.LIST, ptr %418, i64 0, i32 1
  store ptr %418, ptr %421, align 8, !tbaa !5
  store ptr %418, ptr %418, align 8, !tbaa !5
  %422 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %422, ptr @zz_res, align 8, !tbaa !10
  store ptr %409, ptr @zz_hold, align 8, !tbaa !10
  %423 = icmp eq ptr %422, null
  br i1 %423, label %435, label %424

424:                                              ; preds = %415, %414
  %425 = phi ptr [ %410, %414 ], [ %422, %415 ]
  %426 = load ptr, ptr %409, align 8, !tbaa !5
  store ptr %426, ptr @zz_tmp, align 8, !tbaa !10
  %427 = load ptr, ptr %425, align 8, !tbaa !5
  store ptr %427, ptr %409, align 8, !tbaa !5
  %428 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %429 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %430 = load ptr, ptr %429, align 8, !tbaa !5
  %431 = getelementptr inbounds %struct.LIST, ptr %430, i64 0, i32 1
  store ptr %428, ptr %431, align 8, !tbaa !5
  %432 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %432, ptr %429, align 8, !tbaa !5
  %433 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %434 = getelementptr inbounds %struct.LIST, ptr %432, i64 0, i32 1
  store ptr %433, ptr %434, align 8, !tbaa !5
  br label %435

435:                                              ; preds = %424, %415
  %436 = load i32, ptr @MakeDead.dead_count, align 4, !tbaa !8
  %437 = icmp sgt i32 %436, 149
  br i1 %437, label %438, label %487

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.LIST, ptr %409, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !5
  store ptr %440, ptr @xx_link, align 8, !tbaa !10
  %441 = getelementptr inbounds [2 x %struct.LIST], ptr %440, i64 0, i64 1, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !5
  %443 = icmp eq ptr %442, %440
  br i1 %443, label %449, label %444

444:                                              ; preds = %438
  store ptr %442, ptr @zz_res, align 8, !tbaa !10
  %445 = getelementptr inbounds [2 x %struct.LIST], ptr %440, i64 0, i64 1
  %446 = load ptr, ptr %445, align 8, !tbaa !5
  %447 = getelementptr inbounds [2 x %struct.LIST], ptr %442, i64 0, i64 1
  store ptr %446, ptr %447, align 8, !tbaa !5
  %448 = getelementptr inbounds [2 x %struct.LIST], ptr %446, i64 0, i64 1, i32 1
  store ptr %442, ptr %448, align 8, !tbaa !5
  store ptr %440, ptr %441, align 8, !tbaa !5
  store ptr %440, ptr %445, align 8, !tbaa !5
  br label %449

449:                                              ; preds = %444, %438
  %450 = phi ptr [ %442, %444 ], [ null, %438 ]
  store ptr %450, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %440, ptr @zz_hold, align 8, !tbaa !10
  %451 = getelementptr inbounds %struct.LIST, ptr %440, i64 0, i32 1
  %452 = load ptr, ptr %451, align 8, !tbaa !5
  %453 = icmp eq ptr %452, %440
  br i1 %453, label %462, label %454

454:                                              ; preds = %449
  store ptr %452, ptr @zz_res, align 8, !tbaa !10
  %455 = load ptr, ptr %440, align 8, !tbaa !5
  store ptr %455, ptr %452, align 8, !tbaa !5
  %456 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %457 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %458 = load ptr, ptr %457, align 8, !tbaa !5
  %459 = getelementptr inbounds %struct.LIST, ptr %458, i64 0, i32 1
  store ptr %456, ptr %459, align 8, !tbaa !5
  %460 = getelementptr inbounds %struct.LIST, ptr %457, i64 0, i32 1
  store ptr %457, ptr %460, align 8, !tbaa !5
  store ptr %457, ptr %457, align 8, !tbaa !5
  %461 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %462

462:                                              ; preds = %454, %449
  %463 = phi ptr [ %440, %449 ], [ %461, %454 ]
  store ptr %463, ptr @zz_hold, align 8, !tbaa !10
  %464 = getelementptr inbounds %struct.word_type, ptr %463, i64 0, i32 1
  %465 = load i8, ptr %464, align 8, !tbaa !5
  %466 = add i8 %465, -11
  %467 = icmp ult i8 %466, 2
  %468 = getelementptr inbounds %struct.word_type, ptr %463, i64 0, i32 1, i32 0, i32 1
  %469 = zext i8 %465 to i64
  %470 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %469
  %471 = select i1 %467, ptr %468, ptr %470
  %472 = load i8, ptr %471, align 1, !tbaa !5
  %473 = zext i8 %472 to i32
  store i32 %473, ptr @zz_size, align 4, !tbaa !8
  %474 = zext i8 %472 to i64
  %475 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !10
  store ptr %476, ptr %463, align 8, !tbaa !5
  %477 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %478 = load i32, ptr @zz_size, align 4, !tbaa !8
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %479
  store ptr %477, ptr %480, align 8, !tbaa !10
  %481 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %482 = getelementptr inbounds [2 x %struct.LIST], ptr %481, i64 0, i64 1, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !5
  %484 = icmp eq ptr %483, %481
  br i1 %484, label %485, label %489

485:                                              ; preds = %462
  %486 = tail call i32 @DisposeObject(ptr noundef nonnull %481) #7
  br label %489

487:                                              ; preds = %435
  %488 = add nsw i32 %436, 1
  store i32 %488, ptr @MakeDead.dead_count, align 4, !tbaa !8
  br label %489

489:                                              ; preds = %462, %485, %487
  ret void
}

declare void @EnlargeToConstraint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SetLengthDim(i32 noundef) local_unnamed_addr #2

declare ptr @FixAndPrintObject(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FilterScavenge(i32 noundef) local_unnamed_addr #2

declare void @DetachGalley(ptr noundef) local_unnamed_addr #2

declare void @CalculateOptimize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FreeGalley(ptr noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %0, i64 42
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %5
  %15 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %15, ptr noundef nonnull @.str.45) #7
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %23 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %22, ptr noundef nonnull @.str.46) #7
  br label %24

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr %2, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !5
  %30 = icmp eq i8 %29, 17
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %33 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %32, ptr noundef nonnull @.str.47) #7
  br label %34

34:                                               ; preds = %31, %27, %24
  %35 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %209, label %38

38:                                               ; preds = %34
  %39 = icmp eq ptr %3, null
  br label %40

40:                                               ; preds = %38, %205
  %41 = phi ptr [ %36, %38 ], [ %207, %205 ]
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %45, %42 ], [ %41, %40 ]
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !5
  switch i8 %47, label %205 [
    i8 0, label %42
    i8 122, label %48
    i8 121, label %201
  ]

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.closure_type, ptr %45, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.closure_type, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = load ptr, ptr @InputSym, align 8, !tbaa !10
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 1
  %57 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 5, ptr noundef nonnull @.str.48, i32 noundef 2, ptr noundef nonnull %56) #7
  br label %205

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.LIST, ptr %45, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, %45
  br i1 %61, label %197, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  br label %64

64:                                               ; preds = %62, %195
  %65 = phi ptr [ %60, %62 ], [ %75, %195 ]
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %69, %66 ], [ %65, %64 ]
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %67, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !5
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %66, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = icmp eq i8 %71, 8
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %79 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %78, ptr noundef nonnull @.str.49) #7
  br label %80

80:                                               ; preds = %77, %73
  br i1 %39, label %134, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.closure_type, ptr %69, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, %4
  br i1 %84, label %134, label %85

85:                                               ; preds = %81
  %86 = tail call ptr @SearchGalley(ptr noundef nonnull %3, ptr noundef %83, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %134, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.head_type, ptr %69, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %49, align 8, !tbaa !5
  tail call void @GazumpOptimize(ptr noundef nonnull %69, ptr noundef %93) #7
  br label %94

94:                                               ; preds = %92, %88
  tail call void @DetachGalley(ptr noundef nonnull %69) #7
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %69, i64 0, i64 1, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  br label %97

97:                                               ; preds = %97, %94
  %98 = phi ptr [ %96, %94 ], [ %99, %97 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.word_type, ptr %99, i64 0, i32 1
  %101 = load i8, ptr %100, align 8, !tbaa !5
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %97, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds [2 x %struct.LIST], ptr %99, i64 0, i64 1, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  store ptr %105, ptr @xx_link, align 8, !tbaa !10
  store ptr %105, ptr @zz_hold, align 8, !tbaa !10
  %106 = getelementptr inbounds %struct.LIST, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = icmp eq ptr %107, %105
  br i1 %108, label %117, label %109

109:                                              ; preds = %103
  store ptr %107, ptr @zz_res, align 8, !tbaa !10
  %110 = load ptr, ptr %105, align 8, !tbaa !5
  store ptr %110, ptr %107, align 8, !tbaa !5
  %111 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %112 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = getelementptr inbounds %struct.LIST, ptr %113, i64 0, i32 1
  store ptr %111, ptr %114, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.LIST, ptr %112, i64 0, i32 1
  store ptr %112, ptr %115, align 8, !tbaa !5
  store ptr %112, ptr %112, align 8, !tbaa !5
  %116 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %117

117:                                              ; preds = %103, %109
  %118 = phi ptr [ %105, %103 ], [ %116, %109 ]
  store ptr %118, ptr @zz_res, align 8, !tbaa !10
  %119 = getelementptr inbounds [2 x %struct.LIST], ptr %86, i64 0, i64 1, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !5
  store ptr %120, ptr @zz_hold, align 8, !tbaa !10
  %121 = icmp eq ptr %120, null
  %122 = icmp eq ptr %118, null
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %195, label %124

124:                                              ; preds = %117
  %125 = load ptr, ptr %120, align 8, !tbaa !5
  store ptr %125, ptr @zz_tmp, align 8, !tbaa !10
  %126 = load ptr, ptr %118, align 8, !tbaa !5
  store ptr %126, ptr %120, align 8, !tbaa !5
  %127 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %128 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.LIST, ptr %129, i64 0, i32 1
  store ptr %127, ptr %130, align 8, !tbaa !5
  %131 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %131, ptr %128, align 8, !tbaa !5
  %132 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %133 = getelementptr inbounds %struct.LIST, ptr %131, i64 0, i32 1
  store ptr %132, ptr %133, align 8, !tbaa !5
  br label %195

134:                                              ; preds = %85, %81, %80
  tail call void @FreeGalley(ptr noundef nonnull %69, ptr noundef nonnull %69, ptr noundef nonnull %2, ptr noundef null, ptr noundef %4)
  %135 = load ptr, ptr %2, align 8, !tbaa !10
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %139 = zext i8 %138 to i32
  store i32 %139, ptr @zz_size, align 4, !tbaa !8
  %140 = zext i8 %138 to i64
  %141 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !10
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %146 = tail call ptr @GetMemory(i32 noundef %139, ptr noundef %145) #7
  store ptr %146, ptr @zz_hold, align 8, !tbaa !10
  br label %149

147:                                              ; preds = %137
  store ptr %142, ptr @zz_hold, align 8, !tbaa !10
  %148 = load ptr, ptr %142, align 8, !tbaa !5
  store ptr %148, ptr %141, align 8, !tbaa !10
  br label %149

149:                                              ; preds = %144, %147
  %150 = phi ptr [ %146, %144 ], [ %142, %147 ]
  %151 = getelementptr inbounds %struct.word_type, ptr %150, i64 0, i32 1
  store i8 17, ptr %151, align 8, !tbaa !5
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %150, i64 0, i64 1, i32 1
  store ptr %150, ptr %152, align 8, !tbaa !5
  %153 = getelementptr inbounds [2 x %struct.LIST], ptr %150, i64 0, i64 1
  store ptr %150, ptr %153, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.LIST, ptr %150, i64 0, i32 1
  store ptr %150, ptr %154, align 8, !tbaa !5
  store ptr %150, ptr %150, align 8, !tbaa !5
  store ptr %150, ptr %2, align 8, !tbaa !10
  br label %155

155:                                              ; preds = %149, %134
  %156 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %157 = zext i8 %156 to i32
  store i32 %157, ptr @zz_size, align 4, !tbaa !8
  %158 = zext i8 %156 to i64
  %159 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !10
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %164 = tail call ptr @GetMemory(i32 noundef %157, ptr noundef %163) #7
  store ptr %164, ptr @zz_hold, align 8, !tbaa !10
  br label %167

165:                                              ; preds = %155
  store ptr %160, ptr @zz_hold, align 8, !tbaa !10
  %166 = load ptr, ptr %160, align 8, !tbaa !5
  store ptr %166, ptr %159, align 8, !tbaa !10
  br label %167

167:                                              ; preds = %162, %165
  %168 = phi ptr [ %164, %162 ], [ %160, %165 ]
  %169 = getelementptr inbounds %struct.word_type, ptr %168, i64 0, i32 1
  store i8 0, ptr %169, align 8, !tbaa !5
  %170 = getelementptr inbounds [2 x %struct.LIST], ptr %168, i64 0, i64 1, i32 1
  store ptr %168, ptr %170, align 8, !tbaa !5
  %171 = getelementptr inbounds [2 x %struct.LIST], ptr %168, i64 0, i64 1
  store ptr %168, ptr %171, align 8, !tbaa !5
  %172 = getelementptr inbounds %struct.LIST, ptr %168, i64 0, i32 1
  store ptr %168, ptr %172, align 8, !tbaa !5
  store ptr %168, ptr %168, align 8, !tbaa !5
  store ptr %168, ptr @xx_link, align 8, !tbaa !10
  store ptr %168, ptr @zz_res, align 8, !tbaa !10
  %173 = load ptr, ptr %2, align 8, !tbaa !10
  store ptr %173, ptr @zz_hold, align 8, !tbaa !10
  %174 = icmp eq ptr %173, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %167
  %176 = load ptr, ptr %173, align 8, !tbaa !5
  store ptr %176, ptr @zz_tmp, align 8, !tbaa !10
  %177 = load ptr, ptr %168, align 8, !tbaa !5
  store ptr %177, ptr %173, align 8, !tbaa !5
  %178 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %179 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = getelementptr inbounds %struct.LIST, ptr %180, i64 0, i32 1
  store ptr %178, ptr %181, align 8, !tbaa !5
  %182 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %182, ptr %179, align 8, !tbaa !5
  %183 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %184 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  store ptr %183, ptr %184, align 8, !tbaa !5
  %185 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %186

186:                                              ; preds = %167, %175
  %187 = phi ptr [ %168, %167 ], [ %185, %175 ]
  store ptr %187, ptr @zz_res, align 8, !tbaa !10
  store ptr %45, ptr @zz_hold, align 8, !tbaa !10
  %188 = icmp eq ptr %187, null
  br i1 %188, label %195, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %63, align 8, !tbaa !5
  store ptr %190, ptr @zz_tmp, align 8, !tbaa !10
  %191 = getelementptr inbounds [2 x %struct.LIST], ptr %187, i64 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  store ptr %192, ptr %63, align 8, !tbaa !5
  %193 = getelementptr inbounds [2 x %struct.LIST], ptr %192, i64 0, i64 1, i32 1
  store ptr %45, ptr %193, align 8, !tbaa !5
  store ptr %190, ptr %191, align 8, !tbaa !5
  %194 = getelementptr inbounds [2 x %struct.LIST], ptr %190, i64 0, i64 1, i32 1
  store ptr %187, ptr %194, align 8, !tbaa !5
  br label %195

195:                                              ; preds = %186, %117, %189, %124
  %196 = icmp eq ptr %75, %45
  br i1 %196, label %197, label %64

197:                                              ; preds = %195, %58
  %198 = getelementptr inbounds i8, ptr %45, i64 42
  %199 = load i16, ptr %198, align 2
  %200 = or i16 %199, 1
  store i16 %200, ptr %198, align 2
  br label %205

201:                                              ; preds = %42
  %202 = getelementptr inbounds i8, ptr %45, i64 42
  %203 = load i16, ptr %202, align 2
  %204 = or i16 %203, 1
  store i16 %204, ptr %202, align 2
  br label %205

205:                                              ; preds = %42, %55, %201, %197
  %206 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = icmp eq ptr %207, %1
  br i1 %208, label %209, label %40

209:                                              ; preds = %205, %34
  ret void
}

declare ptr @SearchGalley(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @GazumpOptimize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SetTarget(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x ptr], align 16
  %3 = alloca [2 x ptr], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %11, ptr noundef nonnull @.str.50) #7
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %15, %13 ], [ %19, %16 ]
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %17, i64 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !5
  switch i8 %21, label %22 [
    i8 0, label %16
    i8 2, label %25
  ]

22:                                               ; preds = %16
  %23 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %24 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %23, ptr noundef nonnull @.str.51) #7
  br label %25

25:                                               ; preds = %16, %22
  %26 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %27 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds i8, ptr %28, i64 41
  %30 = load i24, ptr %29, align 1
  %31 = and i24 %30, 64
  %32 = icmp eq i24 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %35 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %34, ptr noundef nonnull @.str.52) #7
  br label %36

36:                                               ; preds = %33, %25
  %37 = getelementptr inbounds %struct.LIST, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, %19
  br i1 %39, label %76, label %40

40:                                               ; preds = %36, %72
  %41 = phi ptr [ %74, %72 ], [ %38, %36 ]
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %45, %42 ], [ %41, %40 ]
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !5
  switch i8 %47, label %72 [
    i8 0, label %42
    i8 10, label %48
  ]

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.closure_type, ptr %45, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = getelementptr inbounds i8, ptr %50, i64 41
  %52 = load i24, ptr %51, align 1
  %53 = and i24 %52, 32
  %54 = icmp eq i24 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.LIST, ptr %45, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = icmp eq ptr %57, %45
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %61 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %60, ptr noundef nonnull @.str.53) #7
  %62 = load ptr, ptr %56, align 8, !tbaa !5
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi ptr [ %57, %55 ], [ %62, %59 ]
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi ptr [ %68, %65 ], [ %64, %63 ]
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %66, i64 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.word_type, ptr %68, i64 0, i32 1
  %70 = load i8, ptr %69, align 8, !tbaa !5
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %65, label %102

72:                                               ; preds = %42, %48
  %73 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = icmp eq ptr %74, %19
  br i1 %75, label %76, label %40

76:                                               ; preds = %72, %36
  %77 = load ptr, ptr %27, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %90, %76
  %79 = phi ptr [ %77, %76 ], [ %81, %90 ]
  %80 = getelementptr inbounds %struct.LIST, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = icmp eq ptr %81, %77
  br i1 %82, label %99, label %83

83:                                               ; preds = %78, %83
  %84 = phi ptr [ %86, %83 ], [ %81, %78 ]
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.word_type, ptr %86, i64 0, i32 1
  %88 = load i8, ptr %87, align 8, !tbaa !5
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %83, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds i8, ptr %86, i64 41
  %92 = load i24, ptr %91, align 1
  %93 = and i24 %92, 32
  %94 = icmp eq i24 %93, 0
  br i1 %94, label %78, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.symbol_type, ptr %86, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %78, %95
  %100 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %101 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %100, ptr noundef nonnull @.str.54) #7
  br label %102

102:                                              ; preds = %65, %99, %95
  %103 = phi ptr [ null, %99 ], [ %97, %95 ], [ %68, %65 ]
  %104 = getelementptr inbounds %struct.word_type, ptr %103, i64 0, i32 1
  %105 = load i8, ptr %104, align 8, !tbaa !5
  %106 = and i8 %105, -2
  %107 = icmp eq i8 %106, 6
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.word_type, ptr %103, i64 0, i32 1
  br label %125

110:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %111 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr null, ptr %111, align 8, !tbaa !10
  %112 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 1
  store ptr null, ptr %112, align 8, !tbaa !10
  store ptr null, ptr %3, align 16, !tbaa !10
  store ptr null, ptr %2, align 16, !tbaa !10
  store ptr null, ptr %6, align 8, !tbaa !10
  store ptr null, ptr %5, align 8, !tbaa !10
  store ptr null, ptr %4, align 8, !tbaa !10
  %113 = tail call ptr @CopyObject(ptr noundef nonnull %103, ptr noundef nonnull %26) #7
  %114 = tail call ptr @GetEnv(ptr noundef %19) #7
  %115 = call ptr @Manifest(ptr noundef %113, ptr noundef %114, ptr noundef nonnull @InitialStyle, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  %116 = getelementptr inbounds %struct.word_type, ptr %115, i64 0, i32 1
  %117 = load i8, ptr %116, align 8, !tbaa !5
  %118 = and i8 %117, -2
  %119 = icmp eq i8 %118, 6
  %120 = getelementptr inbounds %struct.word_type, ptr %115, i64 0, i32 1
  br i1 %119, label %125, label %121

121:                                              ; preds = %110
  %122 = load ptr, ptr %27, align 8, !tbaa !5
  %123 = call ptr @SymName(ptr noundef %122) #7
  %124 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 6, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef nonnull %120, ptr noundef %123) #7
  br label %125

125:                                              ; preds = %108, %110, %121
  %126 = phi ptr [ %109, %108 ], [ %120, %110 ], [ %120, %121 ]
  %127 = phi ptr [ %103, %108 ], [ %115, %110 ], [ %115, %121 ]
  %128 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  br label %130

130:                                              ; preds = %130, %125
  %131 = phi ptr [ %129, %125 ], [ %133, %130 ]
  %132 = getelementptr inbounds [2 x %struct.LIST], ptr %131, i64 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !5
  %134 = getelementptr inbounds %struct.word_type, ptr %133, i64 0, i32 1
  %135 = load i8, ptr %134, align 8, !tbaa !5
  switch i8 %135, label %136 [
    i8 0, label %130
    i8 2, label %139
  ]

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.word_type, ptr %133, i64 0, i32 1
  %138 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 7, ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef nonnull %137, ptr noundef nonnull @.str.57) #7
  br label %139

139:                                              ; preds = %130, %136
  %140 = getelementptr inbounds %struct.closure_type, ptr %133, i64 0, i32 5
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  store ptr %141, ptr %142, align 8, !tbaa !5
  %143 = load ptr, ptr %128, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.LIST, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  br label %146

146:                                              ; preds = %146, %139
  %147 = phi ptr [ %145, %139 ], [ %149, %146 ]
  %148 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1
  %151 = load i8, ptr %150, align 8, !tbaa !5
  switch i8 %151, label %152 [
    i8 0, label %146
    i8 11, label %158
    i8 12, label %158
  ]

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1
  %154 = call ptr @SymName(ptr noundef %141) #7
  %155 = load ptr, ptr %140, align 8, !tbaa !5
  %156 = call ptr @SymName(ptr noundef %155) #7
  %157 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 8, ptr noundef nonnull @.str.58, i32 noundef 2, ptr noundef nonnull %153, ptr noundef %154, ptr noundef nonnull @.str.57, ptr noundef %156, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59) #7
  br label %174

158:                                              ; preds = %146, %146
  %159 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1
  %160 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 4
  %161 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(10) @.str.60) #8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %158
  %164 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(10) @.str.59) #8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(13) @.str.61) #8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = call ptr @SymName(ptr noundef %141) #7
  %171 = load ptr, ptr %140, align 8, !tbaa !5
  %172 = call ptr @SymName(ptr noundef %171) #7
  %173 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 22, i32 noundef 9, ptr noundef nonnull @.str.62, i32 noundef 2, ptr noundef nonnull %159, ptr noundef %170, ptr noundef nonnull @.str.57, ptr noundef nonnull %160, ptr noundef %172, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59) #7
  br label %174

174:                                              ; preds = %166, %163, %158, %169, %152
  %175 = phi i8 [ -127, %169 ], [ -127, %152 ], [ -123, %158 ], [ -127, %163 ], [ -126, %166 ]
  %176 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  store i8 %175, ptr %176, align 8, !tbaa !5
  %177 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !5
  %179 = getelementptr inbounds i8, ptr %178, i64 41
  %180 = load i24, ptr %179, align 1
  %181 = and i24 %180, 128
  %182 = icmp eq i24 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load i8, ptr %126, align 8, !tbaa !5
  %185 = icmp eq i8 %184, 7
  %186 = select i1 %185, i16 4096, i16 0
  br label %187

187:                                              ; preds = %183, %174
  %188 = phi i16 [ 4096, %174 ], [ %186, %183 ]
  %189 = getelementptr inbounds i8, ptr %0, i64 42
  %190 = load i16, ptr %189, align 2
  %191 = and i16 %190, -4097
  %192 = or disjoint i16 %191, %188
  store i16 %192, ptr %189, align 2
  br i1 %107, label %195, label %193

193:                                              ; preds = %187
  %194 = call i32 @DisposeObject(ptr noundef %127) #7
  br label %195

195:                                              ; preds = %193, %187
  ret void
}

declare ptr @GetEnv(ptr noundef) local_unnamed_addr #2

declare ptr @Manifest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @CheckComponentOrder(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %5, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi ptr [ %13, %11 ], [ %16, %14 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %14
  %21 = icmp eq ptr %7, %16
  br i1 %21, label %22, label %28

22:                                               ; preds = %20, %26
  %23 = phi ptr [ %24, %26 ], [ %12, %20 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  %27 = icmp eq ptr %24, %4
  br i1 %27, label %50, label %22

28:                                               ; preds = %20, %48
  %29 = phi ptr [ %44, %48 ], [ %7, %20 ]
  %30 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, %29
  br i1 %32, label %50, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %33, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds [2 x %struct.LIST], ptr %35, i64 0, i64 1, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %41, %39 ], [ %44, %42 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %42, label %48

48:                                               ; preds = %42
  %49 = icmp eq ptr %44, %16
  br i1 %49, label %50, label %28

50:                                               ; preds = %48, %28, %26, %22
  %51 = phi i32 [ 157, %26 ], [ 155, %22 ], [ 156, %48 ], [ 154, %28 ]
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !9, i64 0}
!13 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!14 = !{!13, !9, i64 4}
!15 = !{!13, !9, i64 8}
!16 = !{!17, !11, i64 88}
!17 = !{!"back_end_rec", !9, i64 0, !11, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224}
!18 = !{!17, !11, i64 96}
