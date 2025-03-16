; ModuleID = 'src/z19.c'
source_filename = "src/z19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.anon.13 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DetachGalley: precondition!\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"DetachGalley: parent!\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"SearchGalley: start!\00", align 1
@InputSym = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"AttachGalley: no index!\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"AttachGalley: not UNATTACHED!\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"galley %s deleted from here (no target)\00", align 1
@xx_hold = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"AttachGalley: target_index!\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"AttachGalley: target!\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"receptive symbol %s has unconstrained width\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"AttachGalley: dest unconstrained!\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"too little horizontal space for galley %s at %s\00", align 1
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"Attach: PRECEDES!\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.1fc\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"%s object too high for %s space; %s inserted\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%s object too wide for %s space; %s inserted\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"%s object too high for %s space; will try elsewhere\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"%s object too wide for %s space; will try elsewhere\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"AttachGalley: is_index(z)!\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"AttachGalley: z size!\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"AttachGalley: z size (perpendicular)!\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"AttachGalley:\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"AttachGalley: type(hd_index)!\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"AttachGalley: type(junk) != ACAT!\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"AttachGalley: target_ind\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @DetachGalley(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i8 %3, 8
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.1) #5
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %13, %9 ], [ %7, %5 ]
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %15, %14 ], [ %19, %17 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %17, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %29 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %28, ptr noundef nonnull @.str.2) #5
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 120), align 1, !tbaa !5
  %32 = zext i8 %31 to i32
  store i32 %32, ptr @zz_size, align 4, !tbaa !10
  %33 = zext i8 %31 to i64
  %34 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %39 = tail call ptr @GetMemory(i32 noundef %32, ptr noundef %38) #5
  br label %42

40:                                               ; preds = %30
  store ptr %35, ptr @zz_hold, align 8, !tbaa !8
  %41 = load ptr, ptr %35, align 8, !tbaa !5
  store ptr %41, ptr %34, align 8, !tbaa !8
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi ptr [ %39, %37 ], [ %35, %40 ]
  %44 = getelementptr inbounds %struct.word_type, ptr %43, i64 0, i32 1
  store i8 120, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1, i32 1
  store ptr %43, ptr %46, align 8, !tbaa !5
  store ptr %43, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.LIST, ptr %43, i64 0, i32 1
  store ptr %43, ptr %47, align 8, !tbaa !5
  store ptr %43, ptr %43, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.closure_type, ptr %43, i64 0, i32 6
  store ptr null, ptr %48, align 8, !tbaa !5
  %49 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %49, ptr @xx_link, align 8, !tbaa !8
  store ptr %49, ptr @zz_hold, align 8, !tbaa !8
  %50 = getelementptr inbounds %struct.LIST, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, %49
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store ptr %49, ptr @zz_res, align 8, !tbaa !8
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  br label %63

54:                                               ; preds = %42
  store ptr %51, ptr @zz_res, align 8, !tbaa !8
  %55 = load ptr, ptr %49, align 8, !tbaa !5
  store ptr %55, ptr %51, align 8, !tbaa !5
  %56 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %57 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.LIST, ptr %58, i64 0, i32 1
  store ptr %56, ptr %59, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.LIST, ptr %57, i64 0, i32 1
  store ptr %57, ptr %60, align 8, !tbaa !5
  store ptr %57, ptr %57, align 8, !tbaa !5
  %61 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %61, ptr @zz_res, align 8, !tbaa !8
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %53, %54
  %64 = phi ptr [ %49, %53 ], [ %61, %54 ]
  %65 = load ptr, ptr %43, align 8, !tbaa !5
  store ptr %65, ptr @zz_tmp, align 8, !tbaa !8
  %66 = load ptr, ptr %64, align 8, !tbaa !5
  store ptr %66, ptr %43, align 8, !tbaa !5
  %67 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %68 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.LIST, ptr %69, i64 0, i32 1
  store ptr %67, ptr %70, align 8, !tbaa !5
  %71 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %71, ptr %68, align 8, !tbaa !5
  %72 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %73 = getelementptr inbounds %struct.LIST, ptr %71, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !5
  br label %74

74:                                               ; preds = %54, %63
  %75 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %76 = zext i8 %75 to i32
  store i32 %76, ptr @zz_size, align 4, !tbaa !10
  %77 = zext i8 %75 to i64
  %78 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %83 = tail call ptr @GetMemory(i32 noundef %76, ptr noundef %82) #5
  br label %86

84:                                               ; preds = %74
  store ptr %79, ptr @zz_hold, align 8, !tbaa !8
  %85 = load ptr, ptr %79, align 8, !tbaa !5
  store ptr %85, ptr %78, align 8, !tbaa !8
  br label %86

86:                                               ; preds = %81, %84
  %87 = phi ptr [ %83, %81 ], [ %79, %84 ]
  %88 = getelementptr inbounds %struct.word_type, ptr %87, i64 0, i32 1
  store i8 0, ptr %88, align 8, !tbaa !5
  %89 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1, i32 1
  store ptr %87, ptr %89, align 8, !tbaa !5
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %87, i64 0, i64 1
  store ptr %87, ptr %90, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.LIST, ptr %87, i64 0, i32 1
  store ptr %87, ptr %91, align 8, !tbaa !5
  store ptr %87, ptr %87, align 8, !tbaa !5
  store ptr %87, ptr @xx_link, align 8, !tbaa !8
  store ptr %87, ptr @zz_res, align 8, !tbaa !8
  %92 = load ptr, ptr %24, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.LIST, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  store ptr %94, ptr @zz_hold, align 8, !tbaa !8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  br label %109

97:                                               ; preds = %86
  %98 = load ptr, ptr %94, align 8, !tbaa !5
  store ptr %98, ptr @zz_tmp, align 8, !tbaa !8
  %99 = load ptr, ptr %87, align 8, !tbaa !5
  store ptr %99, ptr %94, align 8, !tbaa !5
  %100 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %101 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.LIST, ptr %102, i64 0, i32 1
  store ptr %100, ptr %103, align 8, !tbaa !5
  %104 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %104, ptr %101, align 8, !tbaa !5
  %105 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %106 = getelementptr inbounds %struct.LIST, ptr %104, i64 0, i32 1
  store ptr %105, ptr %106, align 8, !tbaa !5
  %107 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %107, ptr @zz_res, align 8, !tbaa !8
  store ptr %43, ptr @zz_hold, align 8, !tbaa !8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %96, %97
  %110 = phi ptr [ %87, %96 ], [ %107, %97 ]
  %111 = load ptr, ptr %45, align 8, !tbaa !5
  store ptr %111, ptr @zz_tmp, align 8, !tbaa !8
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %110, i64 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  store ptr %113, ptr %45, align 8, !tbaa !5
  %114 = getelementptr inbounds [2 x %struct.LIST], ptr %113, i64 0, i64 1, i32 1
  store ptr %43, ptr %114, align 8, !tbaa !5
  store ptr %111, ptr %112, align 8, !tbaa !5
  %115 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1, i32 1
  store ptr %110, ptr %115, align 8, !tbaa !5
  br label %116

116:                                              ; preds = %97, %109
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @SearchGalley(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !5
  switch i8 %8, label %9 [
    i8 0, label %12
    i8 8, label %12
  ]

9:                                                ; preds = %6
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.4) #5
  br label %12

12:                                               ; preds = %6, %6, %9
  %13 = icmp eq i32 %2, 0
  %14 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %15 = select i1 %13, ptr %0, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq i32 %4, 0
  %18 = icmp eq i32 %5, 0
  %19 = icmp eq i32 %3, 0
  %20 = icmp ne i32 %5, 0
  %21 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !5
  %23 = icmp eq i8 %22, 8
  br i1 %19, label %24, label %151

24:                                               ; preds = %12
  br i1 %23, label %227, label %25

25:                                               ; preds = %24
  br i1 %17, label %26, label %59

26:                                               ; preds = %25
  %27 = load ptr, ptr @InputSym, align 8
  br label %28

28:                                               ; preds = %52, %26
  %29 = phi ptr [ %16, %26 ], [ %55, %52 ]
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %33, %30 ], [ %29, %28 ]
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !5
  switch i8 %35, label %52 [
    i8 0, label %30
    i8 120, label %43
    i8 122, label %43
    i8 121, label %36
  ]

36:                                               ; preds = %30
  br i1 %18, label %52, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.closure_type, ptr %33, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.closure_type, ptr %39, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, %27
  br i1 %42, label %227, label %52

43:                                               ; preds = %30, %30
  %44 = icmp eq i8 %35, 122
  %45 = and i1 %20, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.closure_type, ptr %33, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.closure_type, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, %27
  br i1 %51, label %227, label %52

52:                                               ; preds = %30, %36, %43, %46, %37
  %53 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %54 = select i1 %13, ptr %29, ptr %53
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 1
  %57 = load i8, ptr %56, align 8, !tbaa !5
  %58 = icmp eq i8 %57, 8
  br i1 %58, label %227, label %28

59:                                               ; preds = %25
  br i1 %20, label %60, label %101

60:                                               ; preds = %59, %94
  %61 = phi ptr [ %97, %94 ], [ %16, %59 ]
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi ptr [ %65, %62 ], [ %61, %60 ]
  %64 = getelementptr inbounds [2 x %struct.LIST], ptr %63, i64 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 1
  %67 = load i8, ptr %66, align 8, !tbaa !5
  switch i8 %67, label %94 [
    i8 0, label %62
    i8 121, label %68
    i8 122, label %87
  ]

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.closure_type, ptr %65, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !5
  %73 = icmp eq i8 %72, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.closure_type, ptr %70, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = tail call i32 @SearchUses(ptr noundef %76, ptr noundef %1) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %227

79:                                               ; preds = %74
  %80 = load ptr, ptr %69, align 8, !tbaa !5
  br label %81

81:                                               ; preds = %68, %79
  %82 = phi ptr [ %80, %79 ], [ %70, %68 ]
  %83 = getelementptr inbounds %struct.closure_type, ptr %82, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = load ptr, ptr @InputSym, align 8, !tbaa !8
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %227, label %94

87:                                               ; preds = %62
  %88 = getelementptr inbounds %struct.closure_type, ptr %65, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.closure_type, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = load ptr, ptr @InputSym, align 8, !tbaa !8
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %227, label %94

94:                                               ; preds = %62, %81, %87
  %95 = getelementptr inbounds %struct.LIST, ptr %61, i64 0, i32 1
  %96 = select i1 %13, ptr %61, ptr %95
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.word_type, ptr %97, i64 0, i32 1
  %99 = load i8, ptr %98, align 8, !tbaa !5
  %100 = icmp eq i8 %99, 8
  br i1 %100, label %227, label %60

101:                                              ; preds = %59
  br i1 %13, label %102, label %126

102:                                              ; preds = %101, %121
  %103 = phi ptr [ %122, %121 ], [ %16, %101 ]
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi ptr [ %107, %104 ], [ %103, %102 ]
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %105, i64 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %109 = load i8, ptr %108, align 8, !tbaa !5
  switch i8 %109, label %121 [
    i8 0, label %104
    i8 121, label %110
  ]

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.closure_type, ptr %107, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.word_type, ptr %112, i64 0, i32 1
  %114 = load i8, ptr %113, align 8, !tbaa !5
  %115 = icmp eq i8 %114, 2
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.closure_type, ptr %112, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = tail call i32 @SearchUses(ptr noundef %118, ptr noundef %1) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %227

121:                                              ; preds = %104, %110, %116
  %122 = load ptr, ptr %103, align 8, !tbaa !5
  %123 = getelementptr inbounds %struct.word_type, ptr %122, i64 0, i32 1
  %124 = load i8, ptr %123, align 8, !tbaa !5
  %125 = icmp eq i8 %124, 8
  br i1 %125, label %227, label %102

126:                                              ; preds = %101, %145
  %127 = phi ptr [ %147, %145 ], [ %16, %101 ]
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi ptr [ %131, %128 ], [ %127, %126 ]
  %130 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds %struct.word_type, ptr %131, i64 0, i32 1
  %133 = load i8, ptr %132, align 8, !tbaa !5
  switch i8 %133, label %145 [
    i8 0, label %128
    i8 121, label %134
  ]

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.closure_type, ptr %131, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = getelementptr inbounds %struct.word_type, ptr %136, i64 0, i32 1
  %138 = load i8, ptr %137, align 8, !tbaa !5
  %139 = icmp eq i8 %138, 2
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.closure_type, ptr %136, i64 0, i32 5
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = tail call i32 @SearchUses(ptr noundef %142, ptr noundef %1) #5
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %227

145:                                              ; preds = %128, %134, %140
  %146 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !5
  %148 = getelementptr inbounds %struct.word_type, ptr %147, i64 0, i32 1
  %149 = load i8, ptr %148, align 8, !tbaa !5
  %150 = icmp eq i8 %149, 8
  br i1 %150, label %227, label %126

151:                                              ; preds = %12
  br i1 %23, label %227, label %159

152:                                              ; preds = %161, %217, %195, %192, %216, %224
  %153 = getelementptr inbounds %struct.LIST, ptr %160, i64 0, i32 1
  %154 = select i1 %13, ptr %160, ptr %153
  %155 = load ptr, ptr %154, align 8, !tbaa !5
  %156 = getelementptr inbounds %struct.word_type, ptr %155, i64 0, i32 1
  %157 = load i8, ptr %156, align 8, !tbaa !5
  %158 = icmp eq i8 %157, 8
  br i1 %158, label %227, label %159

159:                                              ; preds = %151, %152
  %160 = phi ptr [ %155, %152 ], [ %16, %151 ]
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi ptr [ %164, %161 ], [ %160, %159 ]
  %163 = getelementptr inbounds [2 x %struct.LIST], ptr %162, i64 0, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  %165 = getelementptr inbounds %struct.word_type, ptr %164, i64 0, i32 1
  %166 = load i8, ptr %165, align 8, !tbaa !5
  switch i8 %166, label %152 [
    i8 0, label %161
    i8 120, label %167
    i8 122, label %167
    i8 121, label %202
  ]

167:                                              ; preds = %161, %161
  %168 = getelementptr inbounds %struct.word_type, ptr %164, i64 0, i32 1
  %169 = getelementptr inbounds %struct.LIST, ptr %164, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !5
  %171 = icmp eq ptr %170, %164
  br i1 %171, label %188, label %172

172:                                              ; preds = %167, %181
  %173 = phi ptr [ %184, %181 ], [ %170, %167 ]
  br label %174

174:                                              ; preds = %172, %174
  %175 = phi ptr [ %177, %174 ], [ %173, %172 ]
  %176 = getelementptr inbounds [2 x %struct.LIST], ptr %175, i64 0, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !5
  %178 = getelementptr inbounds %struct.word_type, ptr %177, i64 0, i32 1
  %179 = load i8, ptr %178, align 8, !tbaa !5
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %174, label %181

181:                                              ; preds = %174
  %182 = tail call ptr @SearchGalley(ptr noundef nonnull %177, ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %5)
  %183 = getelementptr inbounds %struct.LIST, ptr %173, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !5
  %185 = icmp ne ptr %184, %164
  %186 = icmp eq ptr %182, null
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %187, label %172, label %188

188:                                              ; preds = %181, %167
  %189 = phi ptr [ null, %167 ], [ %182, %181 ]
  %190 = icmp eq ptr %189, null
  %191 = and i1 %20, %190
  br i1 %191, label %192, label %224

192:                                              ; preds = %188
  %193 = load i8, ptr %168, align 8, !tbaa !5
  %194 = icmp eq i8 %193, 122
  br i1 %194, label %195, label %152

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.closure_type, ptr %164, i64 0, i32 5
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = getelementptr inbounds %struct.closure_type, ptr %197, i64 0, i32 5
  %199 = load ptr, ptr %198, align 8, !tbaa !5
  %200 = load ptr, ptr @InputSym, align 8, !tbaa !8
  %201 = icmp eq ptr %199, %200
  br i1 %201, label %227, label %152

202:                                              ; preds = %161
  br i1 %17, label %216, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.closure_type, ptr %164, i64 0, i32 5
  %205 = load ptr, ptr %204, align 8, !tbaa !5
  %206 = getelementptr inbounds %struct.word_type, ptr %205, i64 0, i32 1
  %207 = load i8, ptr %206, align 8, !tbaa !5
  %208 = icmp eq i8 %207, 2
  br i1 %208, label %209, label %216

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.closure_type, ptr %205, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !5
  %212 = tail call i32 @SearchUses(ptr noundef %211, ptr noundef %1) #5
  %213 = icmp ne i32 %212, 0
  %214 = or i1 %213, %18
  %215 = select i1 %213, ptr %164, ptr null
  br i1 %214, label %224, label %217

216:                                              ; preds = %203, %202
  br i1 %18, label %152, label %217

217:                                              ; preds = %209, %216
  %218 = getelementptr inbounds %struct.closure_type, ptr %164, i64 0, i32 5
  %219 = load ptr, ptr %218, align 8, !tbaa !5
  %220 = getelementptr inbounds %struct.closure_type, ptr %219, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !5
  %222 = load ptr, ptr @InputSym, align 8, !tbaa !8
  %223 = icmp eq ptr %221, %222
  br i1 %223, label %227, label %152

224:                                              ; preds = %209, %188
  %225 = phi ptr [ %189, %188 ], [ %215, %209 ]
  %226 = icmp eq ptr %225, null
  br i1 %226, label %152, label %227

227:                                              ; preds = %217, %195, %224, %152, %145, %140, %121, %116, %81, %87, %94, %74, %37, %46, %52, %151, %24
  %228 = phi ptr [ null, %24 ], [ null, %151 ], [ %33, %37 ], [ %33, %46 ], [ null, %52 ], [ %65, %81 ], [ %65, %87 ], [ null, %94 ], [ %65, %74 ], [ %107, %116 ], [ null, %121 ], [ %131, %140 ], [ null, %145 ], [ %164, %217 ], [ %164, %195 ], [ %225, %224 ], [ null, %152 ]
  ret ptr %228
}

declare i32 @SearchUses(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AttachGalley(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.CONSTRAINT, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca [20 x i8], align 16
  %14 = alloca [20 x i8], align 16
  %15 = alloca [20 x i8], align 16
  %16 = alloca [20 x i8], align 16
  %17 = alloca [20 x i8], align 16
  %18 = alloca [20 x i8], align 16
  %19 = alloca [20 x i8], align 16
  %20 = alloca [20 x i8], align 16
  %21 = alloca [20 x i8], align 16
  %22 = alloca [20 x i8], align 16
  %23 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %30 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %29, ptr noundef nonnull @.str.5) #5
  %31 = load ptr, ptr %25, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %28, %3
  %33 = phi ptr [ %26, %3 ], [ %31, %28 ]
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi ptr [ %36, %34 ], [ %33, %32 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !5
  switch i8 %38, label %39 [
    i8 0, label %34
    i8 120, label %42
  ]

39:                                               ; preds = %34
  %40 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %41 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %40, ptr noundef nonnull @.str.6) #5
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !8
  store ptr null, ptr %4, align 8, !tbaa !8
  %44 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %45 = getelementptr inbounds i8, ptr %0, i64 42
  %46 = load i16, ptr %45, align 2
  %47 = lshr i16 %46, 8
  %48 = and i16 %47, 1
  %49 = zext nneg i16 %48 to i32
  %50 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1, i32 1
  %52 = icmp eq i16 %48, 0
  %53 = getelementptr inbounds %struct.CONSTRAINT, ptr %8, i64 0, i32 1
  %54 = getelementptr inbounds %struct.CONSTRAINT, ptr %8, i64 0, i32 2
  %55 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 12
  %56 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %57 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %58 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %59 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %60 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %61 = and i16 %46, 2
  %62 = icmp eq i16 %61, 0
  %63 = zext nneg i16 %48 to i64
  %64 = xor i32 %49, 1
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 11
  %67 = zext nneg i32 %64 to i64
  br label %68

68:                                               ; preds = %2104, %42
  %69 = phi i16 [ %46, %42 ], [ %2105, %2104 ]
  %70 = phi i32 [ undef, %42 ], [ %301, %2104 ]
  %71 = load ptr, ptr %50, align 8, !tbaa !5
  %72 = and i16 %69, 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %284, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %51, align 8, !tbaa !5
  %76 = call ptr @SearchGalley(ptr noundef %75, ptr noundef %71, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %121

78:                                               ; preds = %74, %100
  %79 = phi ptr [ %81, %100 ], [ %0, %74 ]
  %80 = getelementptr inbounds %struct.LIST, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %110, label %83

83:                                               ; preds = %78, %83
  %84 = phi ptr [ %86, %83 ], [ %81, %78 ]
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.word_type, ptr %86, i64 0, i32 1
  %88 = load i8, ptr %87, align 8, !tbaa !5
  switch i8 %88, label %100 [
    i8 0, label %83
    i8 9, label %89
  ]

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.LIST, ptr %86, i64 0, i32 1
  %91 = select i1 %52, ptr %90, ptr %86
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  br label %93

93:                                               ; preds = %93, %89
  %94 = phi ptr [ %92, %89 ], [ %96, %93 ]
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %94, i64 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.word_type, ptr %96, i64 0, i32 1
  %98 = load i8, ptr %97, align 8, !tbaa !5
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %93, label %100

100:                                              ; preds = %83, %93
  %101 = phi i8 [ %98, %93 ], [ %88, %83 ]
  %102 = phi ptr [ %96, %93 ], [ %86, %83 ]
  %103 = add i8 %101, -9
  %104 = icmp ult i8 %103, 91
  br i1 %104, label %105, label %78

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.word_type, ptr %102, i64 0, i32 1
  %107 = load ptr, ptr %60, align 8, !tbaa !5
  %108 = call ptr @SymName(ptr noundef %107) #5
  %109 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 2, ptr noundef nonnull %106, ptr noundef %108) #5
  br label %110

110:                                              ; preds = %78, %105
  %111 = load ptr, ptr %4, align 8, !tbaa !8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = call i32 @DisposeObject(ptr noundef nonnull %111) #5
  store ptr null, ptr %4, align 8, !tbaa !8
  br label %115

115:                                              ; preds = %113, %110
  %116 = load ptr, ptr %6, align 8, !tbaa !8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i32 @DisposeObject(ptr noundef nonnull %116) #5
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %120

120:                                              ; preds = %118, %115
  call void @KillGalley(ptr noundef %0, i32 noundef 0) #5
  store ptr null, ptr %1, align 8, !tbaa !8
  br label %2881

121:                                              ; preds = %74
  %122 = getelementptr inbounds %struct.closure_type, ptr %76, i64 0, i32 5
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds %struct.closure_type, ptr %123, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = load ptr, ptr @InputSym, align 8, !tbaa !8
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %300

128:                                              ; preds = %121
  store ptr %36, ptr @xx_hold, align 8, !tbaa !8
  %129 = load ptr, ptr %51, align 8, !tbaa !5
  %130 = icmp eq ptr %129, %36
  br i1 %130, label %131, label %136

131:                                              ; preds = %158, %128
  %132 = phi ptr [ %36, %128 ], [ %177, %158 ]
  %133 = getelementptr inbounds %struct.LIST, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = icmp eq ptr %134, %132
  br i1 %135, label %226, label %181

136:                                              ; preds = %128, %158
  %137 = phi ptr [ %179, %158 ], [ %129, %128 ]
  store ptr %137, ptr @xx_link, align 8, !tbaa !8
  %138 = getelementptr inbounds [2 x %struct.LIST], ptr %137, i64 0, i64 1, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = icmp eq ptr %139, %137
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  store ptr %139, ptr @zz_res, align 8, !tbaa !8
  %142 = getelementptr inbounds [2 x %struct.LIST], ptr %137, i64 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  %144 = getelementptr inbounds [2 x %struct.LIST], ptr %139, i64 0, i64 1
  store ptr %143, ptr %144, align 8, !tbaa !5
  %145 = getelementptr inbounds [2 x %struct.LIST], ptr %143, i64 0, i64 1, i32 1
  store ptr %139, ptr %145, align 8, !tbaa !5
  store ptr %137, ptr %138, align 8, !tbaa !5
  store ptr %137, ptr %142, align 8, !tbaa !5
  br label %146

146:                                              ; preds = %136, %141
  store ptr %137, ptr @zz_hold, align 8, !tbaa !8
  %147 = getelementptr inbounds %struct.LIST, ptr %137, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !5
  %149 = icmp eq ptr %148, %137
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  store ptr %148, ptr @zz_res, align 8, !tbaa !8
  %151 = load ptr, ptr %137, align 8, !tbaa !5
  store ptr %151, ptr %148, align 8, !tbaa !5
  %152 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %153 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %154 = load ptr, ptr %153, align 8, !tbaa !5
  %155 = getelementptr inbounds %struct.LIST, ptr %154, i64 0, i32 1
  store ptr %152, ptr %155, align 8, !tbaa !5
  %156 = getelementptr inbounds %struct.LIST, ptr %153, i64 0, i32 1
  store ptr %153, ptr %156, align 8, !tbaa !5
  store ptr %153, ptr %153, align 8, !tbaa !5
  %157 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %158

158:                                              ; preds = %146, %150
  %159 = phi ptr [ %137, %146 ], [ %157, %150 ]
  store ptr %159, ptr @zz_hold, align 8, !tbaa !8
  %160 = getelementptr inbounds %struct.word_type, ptr %159, i64 0, i32 1
  %161 = load i8, ptr %160, align 8, !tbaa !5
  %162 = add i8 %161, -11
  %163 = icmp ult i8 %162, 2
  %164 = getelementptr inbounds %struct.word_type, ptr %159, i64 0, i32 1, i32 0, i32 1
  %165 = zext i8 %161 to i64
  %166 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %165
  %167 = select i1 %163, ptr %164, ptr %166
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = zext i8 %168 to i32
  store i32 %169, ptr @zz_size, align 4, !tbaa !10
  %170 = zext i8 %168 to i64
  %171 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !8
  store ptr %172, ptr %159, align 8, !tbaa !5
  %173 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %174 = load i32, ptr @zz_size, align 4, !tbaa !10
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %175
  store ptr %173, ptr %176, align 8, !tbaa !8
  %177 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %178 = getelementptr inbounds [2 x %struct.LIST], ptr %177, i64 0, i64 1, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !5
  %180 = icmp eq ptr %179, %177
  br i1 %180, label %131, label %136

181:                                              ; preds = %131, %203
  %182 = phi ptr [ %224, %203 ], [ %134, %131 ]
  store ptr %182, ptr @xx_link, align 8, !tbaa !8
  %183 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !5
  %185 = icmp eq ptr %184, %182
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  store ptr %184, ptr @zz_res, align 8, !tbaa !8
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !5
  %189 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1
  store ptr %188, ptr %189, align 8, !tbaa !5
  %190 = getelementptr inbounds [2 x %struct.LIST], ptr %188, i64 0, i64 1, i32 1
  store ptr %184, ptr %190, align 8, !tbaa !5
  store ptr %182, ptr %183, align 8, !tbaa !5
  store ptr %182, ptr %187, align 8, !tbaa !5
  br label %191

191:                                              ; preds = %181, %186
  store ptr %182, ptr @zz_hold, align 8, !tbaa !8
  %192 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  store ptr %193, ptr @zz_res, align 8, !tbaa !8
  %196 = load ptr, ptr %182, align 8, !tbaa !5
  store ptr %196, ptr %193, align 8, !tbaa !5
  %197 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %198 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %199 = load ptr, ptr %198, align 8, !tbaa !5
  %200 = getelementptr inbounds %struct.LIST, ptr %199, i64 0, i32 1
  store ptr %197, ptr %200, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.LIST, ptr %198, i64 0, i32 1
  store ptr %198, ptr %201, align 8, !tbaa !5
  store ptr %198, ptr %198, align 8, !tbaa !5
  %202 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %203

203:                                              ; preds = %191, %195
  %204 = phi ptr [ %182, %191 ], [ %202, %195 ]
  store ptr %204, ptr @zz_hold, align 8, !tbaa !8
  %205 = getelementptr inbounds %struct.word_type, ptr %204, i64 0, i32 1
  %206 = load i8, ptr %205, align 8, !tbaa !5
  %207 = add i8 %206, -11
  %208 = icmp ult i8 %207, 2
  %209 = getelementptr inbounds %struct.word_type, ptr %204, i64 0, i32 1, i32 0, i32 1
  %210 = zext i8 %206 to i64
  %211 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %210
  %212 = select i1 %208, ptr %209, ptr %211
  %213 = load i8, ptr %212, align 1, !tbaa !5
  %214 = zext i8 %213 to i32
  store i32 %214, ptr @zz_size, align 4, !tbaa !10
  %215 = zext i8 %213 to i64
  %216 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !8
  store ptr %217, ptr %204, align 8, !tbaa !5
  %218 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %219 = load i32, ptr @zz_size, align 4, !tbaa !10
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %220
  store ptr %218, ptr %221, align 8, !tbaa !8
  %222 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %223 = getelementptr inbounds %struct.LIST, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !5
  %225 = icmp eq ptr %224, %222
  br i1 %225, label %226, label %181

226:                                              ; preds = %203, %131
  %227 = phi ptr [ %132, %131 ], [ %222, %203 ]
  store ptr %227, ptr @zz_hold, align 8, !tbaa !8
  %228 = getelementptr inbounds %struct.word_type, ptr %227, i64 0, i32 1
  %229 = load i8, ptr %228, align 8, !tbaa !5
  %230 = add i8 %229, -11
  %231 = icmp ult i8 %230, 2
  %232 = getelementptr inbounds %struct.word_type, ptr %227, i64 0, i32 1, i32 0, i32 1
  %233 = zext i8 %229 to i64
  %234 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %233
  %235 = select i1 %231, ptr %232, ptr %234
  %236 = load i8, ptr %235, align 1, !tbaa !5
  %237 = zext i8 %236 to i32
  store i32 %237, ptr @zz_size, align 4, !tbaa !10
  %238 = zext i8 %236 to i64
  %239 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !8
  store ptr %240, ptr %227, align 8, !tbaa !5
  %241 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %242 = load i32, ptr @zz_size, align 4, !tbaa !10
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %243
  store ptr %241, ptr %244, align 8, !tbaa !8
  %245 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %246 = zext i8 %245 to i32
  store i32 %246, ptr @zz_size, align 4, !tbaa !10
  %247 = zext i8 %245 to i64
  %248 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %226
  %252 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %253 = call ptr @GetMemory(i32 noundef %246, ptr noundef %252) #5
  br label %258

254:                                              ; preds = %226
  store ptr %249, ptr @zz_hold, align 8, !tbaa !8
  %255 = load ptr, ptr %249, align 8, !tbaa !5
  %256 = zext i8 %245 to i64
  %257 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %256
  store ptr %255, ptr %257, align 8, !tbaa !8
  br label %258

258:                                              ; preds = %251, %254
  %259 = phi ptr [ %253, %251 ], [ %249, %254 ]
  %260 = getelementptr inbounds %struct.word_type, ptr %259, i64 0, i32 1
  store i8 0, ptr %260, align 8, !tbaa !5
  %261 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1, i32 1
  store ptr %259, ptr %261, align 8, !tbaa !5
  %262 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1
  store ptr %259, ptr %262, align 8, !tbaa !5
  %263 = getelementptr inbounds %struct.LIST, ptr %259, i64 0, i32 1
  store ptr %259, ptr %263, align 8, !tbaa !5
  store ptr %259, ptr %259, align 8, !tbaa !5
  store ptr %259, ptr @xx_link, align 8, !tbaa !8
  store ptr %259, ptr @zz_res, align 8, !tbaa !8
  store ptr %76, ptr @zz_hold, align 8, !tbaa !8
  %264 = load ptr, ptr %76, align 8, !tbaa !5
  store ptr %264, ptr @zz_tmp, align 8, !tbaa !8
  %265 = load ptr, ptr %259, align 8, !tbaa !5
  store ptr %265, ptr %76, align 8, !tbaa !5
  %266 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %267 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %268 = load ptr, ptr %267, align 8, !tbaa !5
  %269 = getelementptr inbounds %struct.LIST, ptr %268, i64 0, i32 1
  store ptr %266, ptr %269, align 8, !tbaa !5
  %270 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %270, ptr %267, align 8, !tbaa !5
  %271 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %272 = getelementptr inbounds %struct.LIST, ptr %270, i64 0, i32 1
  store ptr %271, ptr %272, align 8, !tbaa !5
  %273 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %273, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %274 = icmp eq ptr %0, null
  %275 = icmp eq ptr %273, null
  %276 = select i1 %274, i1 true, i1 %275
  br i1 %276, label %283, label %277

277:                                              ; preds = %258
  %278 = load ptr, ptr %24, align 8, !tbaa !5
  store ptr %278, ptr @zz_tmp, align 8, !tbaa !8
  %279 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1
  %280 = load ptr, ptr %279, align 8, !tbaa !5
  store ptr %280, ptr %24, align 8, !tbaa !5
  %281 = getelementptr inbounds [2 x %struct.LIST], ptr %280, i64 0, i64 1, i32 1
  store ptr %0, ptr %281, align 8, !tbaa !5
  store ptr %278, ptr %279, align 8, !tbaa !5
  %282 = getelementptr inbounds [2 x %struct.LIST], ptr %278, i64 0, i64 1, i32 1
  store ptr %273, ptr %282, align 8, !tbaa !5
  br label %283

283:                                              ; preds = %258, %277
  store ptr null, ptr %1, align 8, !tbaa !8
  br label %2881

284:                                              ; preds = %68
  %285 = load i8, ptr %44, align 8, !tbaa !5
  %286 = icmp eq i8 %285, -123
  %287 = load ptr, ptr %51, align 8, !tbaa !5
  br i1 %286, label %288, label %290

288:                                              ; preds = %284
  %289 = call ptr @SearchGalley(ptr noundef %287, ptr noundef %71, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %296

290:                                              ; preds = %284
  %291 = call ptr @SearchGalley(ptr noundef %287, ptr noundef %71, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %300

293:                                              ; preds = %290
  %294 = load ptr, ptr %51, align 8, !tbaa !5
  %295 = call ptr @SearchGalley(ptr noundef %294, ptr noundef %71, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %296

296:                                              ; preds = %293, %288
  %297 = phi ptr [ %289, %288 ], [ %295, %293 ]
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store ptr null, ptr %1, align 8, !tbaa !8
  br label %2881

300:                                              ; preds = %290, %296, %121
  %301 = phi i32 [ %70, %121 ], [ 0, %296 ], [ 1, %290 ]
  %302 = phi ptr [ %76, %121 ], [ %297, %296 ], [ %291, %290 ]
  %303 = getelementptr inbounds %struct.word_type, ptr %302, i64 0, i32 1
  %304 = load i8, ptr %303, align 8, !tbaa !5
  %305 = icmp eq i8 %304, 121
  br i1 %305, label %309, label %306

306:                                              ; preds = %300
  %307 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %308 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %307, ptr noundef nonnull @.str.8) #5
  br label %309

309:                                              ; preds = %306, %300
  %310 = getelementptr inbounds %struct.closure_type, ptr %302, i64 0, i32 5
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = getelementptr inbounds %struct.word_type, ptr %311, i64 0, i32 1
  %313 = load i8, ptr %312, align 8, !tbaa !5
  %314 = icmp eq i8 %313, 2
  br i1 %314, label %318, label %315

315:                                              ; preds = %309
  %316 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %317 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %316, ptr noundef nonnull @.str.9) #5
  br label %318

318:                                              ; preds = %315, %309
  call void @EnterErrorBlock(i32 noundef 0) #5
  %319 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !5
  %320 = zext i8 %319 to i32
  store i32 %320, ptr @zz_size, align 4, !tbaa !10
  %321 = zext i8 %319 to i64
  %322 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %318
  %326 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %327 = call ptr @GetMemory(i32 noundef %320, ptr noundef %326) #5
  store ptr %327, ptr @zz_hold, align 8, !tbaa !8
  br label %332

328:                                              ; preds = %318
  store ptr %323, ptr @zz_hold, align 8, !tbaa !8
  %329 = load ptr, ptr %323, align 8, !tbaa !5
  %330 = zext i8 %319 to i64
  %331 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %330
  store ptr %329, ptr %331, align 8, !tbaa !8
  br label %332

332:                                              ; preds = %325, %328
  %333 = phi ptr [ %327, %325 ], [ %323, %328 ]
  %334 = getelementptr inbounds %struct.word_type, ptr %333, i64 0, i32 1
  store i8 8, ptr %334, align 8, !tbaa !5
  %335 = getelementptr inbounds [2 x %struct.LIST], ptr %333, i64 0, i64 1, i32 1
  store ptr %333, ptr %335, align 8, !tbaa !5
  %336 = getelementptr inbounds [2 x %struct.LIST], ptr %333, i64 0, i64 1
  store ptr %333, ptr %336, align 8, !tbaa !5
  %337 = getelementptr inbounds %struct.LIST, ptr %333, i64 0, i32 1
  store ptr %333, ptr %337, align 8, !tbaa !5
  store ptr %333, ptr %333, align 8, !tbaa !5
  %338 = getelementptr inbounds %struct.word_type, ptr %333, i64 0, i32 2
  %339 = getelementptr inbounds i8, ptr %333, i64 42
  %340 = load i16, ptr %339, align 2
  %341 = and i16 %340, -4097
  store i16 %341, ptr %339, align 2
  %342 = getelementptr inbounds %struct.head_type, ptr %333, i64 0, i32 11
  %343 = getelementptr inbounds %struct.head_type, ptr %333, i64 0, i32 8
  %344 = getelementptr inbounds i8, ptr %311, i64 42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %343, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %342, i8 0, i64 32, i1 false)
  %345 = load i16, ptr %344, align 2
  %346 = shl i16 %345, 5
  %347 = and i16 %346, 256
  %348 = and i16 %340, -4353
  %349 = or disjoint i16 %347, %348
  %350 = xor i16 %349, 256
  store i16 %350, ptr %339, align 2
  %351 = getelementptr inbounds %struct.word_type, ptr %311, i64 0, i32 1, i32 0, i32 2
  %352 = load i16, ptr %351, align 2, !tbaa !5
  %353 = getelementptr inbounds %struct.word_type, ptr %333, i64 0, i32 1, i32 0, i32 2
  store i16 %352, ptr %353, align 2, !tbaa !5
  %354 = getelementptr inbounds %struct.word_type, ptr %311, i64 0, i32 1, i32 0, i32 3
  %355 = load i32, ptr %354, align 4
  %356 = and i32 %355, 1048575
  %357 = getelementptr inbounds %struct.word_type, ptr %333, i64 0, i32 1, i32 0, i32 3
  %358 = load i32, ptr %357, align 4
  %359 = and i32 %358, -1048576
  %360 = or disjoint i32 %359, %356
  store i32 %360, ptr %357, align 4
  %361 = load i32, ptr %354, align 4
  %362 = and i32 %361, -1048576
  %363 = or disjoint i32 %362, %356
  store i32 %363, ptr %357, align 4
  %364 = getelementptr inbounds %struct.closure_type, ptr %311, i64 0, i32 5
  %365 = load ptr, ptr %364, align 8, !tbaa !5
  %366 = getelementptr inbounds %struct.closure_type, ptr %333, i64 0, i32 5
  store ptr %365, ptr %366, align 8, !tbaa !5
  %367 = getelementptr inbounds %struct.closure_type, ptr %333, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %367, i8 0, i64 16, i1 false)
  store i8 -127, ptr %338, align 8, !tbaa !5
  %368 = and i16 %350, -4227
  store i16 %368, ptr %339, align 2
  br i1 %52, label %394, label %369

369:                                              ; preds = %332
  call void @Constrained(ptr noundef nonnull %311, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %11) #5
  %370 = load i32, ptr %8, align 4, !tbaa !12
  %371 = icmp ne i32 %370, 8388607
  %372 = load i32, ptr %53, align 4
  %373 = icmp ne i32 %372, 8388607
  %374 = select i1 %371, i1 true, i1 %373
  %375 = load i32, ptr %54, align 4
  %376 = icmp ne i32 %375, 8388607
  %377 = select i1 %374, i1 true, i1 %376
  br i1 %377, label %385, label %378

378:                                              ; preds = %369
  %379 = load ptr, ptr %364, align 8, !tbaa !5
  %380 = call ptr @SymName(ptr noundef %379) #5
  %381 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef nonnull %312, ptr noundef %380) #5
  %382 = load i32, ptr %8, align 4, !tbaa !12
  %383 = load i32, ptr %53, align 4
  %384 = load i32, ptr %54, align 4
  br label %385

385:                                              ; preds = %378, %369
  %386 = phi i32 [ %384, %378 ], [ %375, %369 ]
  %387 = phi i32 [ %383, %378 ], [ %372, %369 ]
  %388 = phi i32 [ %382, %378 ], [ %370, %369 ]
  %389 = icmp sgt i32 %388, -1
  %390 = icmp sgt i32 %387, -1
  %391 = select i1 %389, i1 %390, i1 false
  %392 = icmp sgt i32 %386, -1
  %393 = select i1 %391, i1 %392, i1 false
  br i1 %393, label %395, label %2029

394:                                              ; preds = %332
  store i32 8388607, ptr %8, align 4, !tbaa !12
  store i32 8388607, ptr %53, align 4, !tbaa !14
  store i32 8388607, ptr %54, align 4, !tbaa !15
  br label %395

395:                                              ; preds = %385, %394
  %396 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %397 = call ptr @CopyObject(ptr noundef nonnull %311, ptr noundef %396) #5
  %398 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %399 = zext i8 %398 to i32
  store i32 %399, ptr @zz_size, align 4, !tbaa !10
  %400 = zext i8 %398 to i64
  %401 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !8
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %407

404:                                              ; preds = %395
  %405 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %406 = call ptr @GetMemory(i32 noundef %399, ptr noundef %405) #5
  br label %411

407:                                              ; preds = %395
  store ptr %402, ptr @zz_hold, align 8, !tbaa !8
  %408 = load ptr, ptr %402, align 8, !tbaa !5
  %409 = zext i8 %398 to i64
  %410 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %409
  store ptr %408, ptr %410, align 8, !tbaa !8
  br label %411

411:                                              ; preds = %404, %407
  %412 = phi ptr [ %406, %404 ], [ %402, %407 ]
  %413 = getelementptr inbounds %struct.word_type, ptr %412, i64 0, i32 1
  store i8 0, ptr %413, align 8, !tbaa !5
  %414 = getelementptr inbounds [2 x %struct.LIST], ptr %412, i64 0, i64 1, i32 1
  store ptr %412, ptr %414, align 8, !tbaa !5
  %415 = getelementptr inbounds [2 x %struct.LIST], ptr %412, i64 0, i64 1
  store ptr %412, ptr %415, align 8, !tbaa !5
  %416 = getelementptr inbounds %struct.LIST, ptr %412, i64 0, i32 1
  store ptr %412, ptr %416, align 8, !tbaa !5
  store ptr %412, ptr %412, align 8, !tbaa !5
  store ptr %412, ptr @xx_link, align 8, !tbaa !8
  store ptr %412, ptr @zz_res, align 8, !tbaa !8
  store ptr %333, ptr @zz_hold, align 8, !tbaa !8
  %417 = load ptr, ptr %333, align 8, !tbaa !5
  store ptr %417, ptr @zz_tmp, align 8, !tbaa !8
  %418 = load ptr, ptr %412, align 8, !tbaa !5
  store ptr %418, ptr %333, align 8, !tbaa !5
  %419 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %420 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %421 = load ptr, ptr %420, align 8, !tbaa !5
  %422 = getelementptr inbounds %struct.LIST, ptr %421, i64 0, i32 1
  store ptr %419, ptr %422, align 8, !tbaa !5
  %423 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %423, ptr %420, align 8, !tbaa !5
  %424 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %425 = getelementptr inbounds %struct.LIST, ptr %423, i64 0, i32 1
  store ptr %424, ptr %425, align 8, !tbaa !5
  %426 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %426, ptr @zz_res, align 8, !tbaa !8
  store ptr %397, ptr @zz_hold, align 8, !tbaa !8
  %427 = icmp eq ptr %397, null
  %428 = icmp eq ptr %426, null
  %429 = select i1 %427, i1 true, i1 %428
  br i1 %429, label %437, label %430

430:                                              ; preds = %411
  %431 = getelementptr inbounds [2 x %struct.LIST], ptr %397, i64 0, i64 1
  %432 = load ptr, ptr %431, align 8, !tbaa !5
  store ptr %432, ptr @zz_tmp, align 8, !tbaa !8
  %433 = getelementptr inbounds [2 x %struct.LIST], ptr %426, i64 0, i64 1
  %434 = load ptr, ptr %433, align 8, !tbaa !5
  store ptr %434, ptr %431, align 8, !tbaa !5
  %435 = getelementptr inbounds [2 x %struct.LIST], ptr %434, i64 0, i64 1, i32 1
  store ptr %397, ptr %435, align 8, !tbaa !5
  store ptr %432, ptr %433, align 8, !tbaa !5
  %436 = getelementptr inbounds [2 x %struct.LIST], ptr %432, i64 0, i64 1, i32 1
  store ptr %426, ptr %436, align 8, !tbaa !5
  br label %437

437:                                              ; preds = %411, %430
  %438 = call ptr @DetachEnv(ptr noundef %397) #5
  %439 = load i16, ptr %344, align 2
  %440 = and i16 %439, 24
  %441 = icmp ne i16 %440, 0
  %442 = zext i1 %441 to i32
  %443 = lshr i16 %439, 2
  %444 = and i16 %443, 1
  %445 = zext nneg i16 %444 to i32
  %446 = getelementptr inbounds i8, ptr %302, i64 42
  %447 = load i16, ptr %446, align 2
  %448 = and i16 %447, 1
  %449 = zext nneg i16 %448 to i32
  %450 = lshr i16 %447, 6
  %451 = and i16 %450, 1
  %452 = zext nneg i16 %451 to i32
  %453 = getelementptr inbounds %struct.closure_type, ptr %311, i64 0, i32 4
  %454 = load ptr, ptr %50, align 8, !tbaa !5
  %455 = load ptr, ptr %55, align 8, !tbaa !5
  %456 = icmp eq ptr %455, null
  br i1 %456, label %460, label %457

457:                                              ; preds = %437
  %458 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %459 = call ptr @CopyObject(ptr noundef nonnull %455, ptr noundef %458) #5
  br label %460

460:                                              ; preds = %437, %457
  %461 = phi ptr [ %459, %457 ], [ null, %437 ]
  call void @SizeGalley(ptr noundef nonnull %333, ptr noundef %438, i32 noundef %442, i32 noundef %445, i32 noundef %449, i32 noundef %452, ptr noundef nonnull %453, ptr noundef nonnull %8, ptr noundef %454, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %461) #5
  %462 = load ptr, ptr %7, align 8, !tbaa !8
  %463 = icmp eq ptr %462, null
  br i1 %463, label %465, label %464

464:                                              ; preds = %460
  call void @ExpandRecursives(ptr noundef nonnull %462) #5
  br label %465

465:                                              ; preds = %464, %460
  %466 = load ptr, ptr %5, align 8, !tbaa !8
  %467 = getelementptr inbounds %struct.closure_type, ptr %466, i64 0, i32 5
  %468 = load ptr, ptr %467, align 8, !tbaa !5
  %469 = getelementptr inbounds %struct.word_type, ptr %468, i64 0, i32 2
  %470 = load i32, ptr %469, align 8
  %471 = and i32 %470, 1610612736
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %465
  %474 = or disjoint i32 %470, 536870912
  store i32 %474, ptr %469, align 8
  br label %475

475:                                              ; preds = %473, %465
  br i1 %52, label %500, label %476

476:                                              ; preds = %475
  call void @Constrained(ptr noundef nonnull %468, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %11) #5
  %477 = load i32, ptr %8, align 4, !tbaa !12
  %478 = icmp ne i32 %477, 8388607
  %479 = load i32, ptr %53, align 4
  %480 = icmp ne i32 %479, 8388607
  %481 = select i1 %478, i1 true, i1 %480
  %482 = load i32, ptr %54, align 4
  %483 = icmp ne i32 %482, 8388607
  %484 = select i1 %481, i1 true, i1 %483
  br i1 %484, label %491, label %485

485:                                              ; preds = %476
  %486 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %487 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %486, ptr noundef nonnull @.str.11) #5
  %488 = load i32, ptr %8, align 4, !tbaa !12
  %489 = load i32, ptr %53, align 4
  %490 = load i32, ptr %54, align 4
  br label %491

491:                                              ; preds = %485, %476
  %492 = phi i32 [ %490, %485 ], [ %482, %476 ]
  %493 = phi i32 [ %489, %485 ], [ %479, %476 ]
  %494 = phi i32 [ %488, %485 ], [ %477, %476 ]
  %495 = icmp sgt i32 %494, -1
  %496 = icmp sgt i32 %493, -1
  %497 = select i1 %495, i1 %496, i1 false
  %498 = icmp sgt i32 %492, -1
  %499 = select i1 %497, i1 %498, i1 false
  br i1 %499, label %500, label %2029

500:                                              ; preds = %491, %475
  %501 = load i16, ptr %45, align 2
  %502 = and i16 %501, 2
  %503 = icmp eq i16 %502, 0
  br i1 %503, label %504, label %731

504:                                              ; preds = %500
  call void @EnterErrorBlock(i32 noundef 1) #5
  store ptr null, ptr %9, align 8, !tbaa !8
  %505 = load ptr, ptr %56, align 8, !tbaa !5
  br label %506

506:                                              ; preds = %506, %504
  %507 = phi ptr [ %505, %504 ], [ %509, %506 ]
  %508 = getelementptr inbounds [2 x %struct.LIST], ptr %507, i64 0, i64 1
  %509 = load ptr, ptr %508, align 8, !tbaa !5
  %510 = getelementptr inbounds %struct.word_type, ptr %509, i64 0, i32 1
  %511 = load i8, ptr %510, align 8, !tbaa !5
  %512 = icmp eq i8 %511, 0
  br i1 %512, label %506, label %513

513:                                              ; preds = %506
  %514 = call ptr @DetachEnv(ptr noundef nonnull %509) #5
  br i1 %52, label %521, label %515

515:                                              ; preds = %513
  %516 = getelementptr inbounds i8, ptr %468, i64 42
  %517 = load i16, ptr %516, align 2
  %518 = lshr i16 %517, 2
  %519 = and i16 %518, 1
  %520 = zext nneg i16 %519 to i32
  br label %521

521:                                              ; preds = %513, %515
  %522 = phi i32 [ %520, %515 ], [ 0, %513 ]
  %523 = load i16, ptr %446, align 2
  %524 = and i16 %523, 1
  %525 = zext nneg i16 %524 to i32
  %526 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4
  call void @SizeGalley(ptr noundef %0, ptr noundef %514, i32 noundef 1, i32 noundef %522, i32 noundef %525, i32 noundef 1, ptr noundef nonnull %526, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef null) #5
  %527 = load ptr, ptr %7, align 8, !tbaa !8
  %528 = icmp eq ptr %527, null
  br i1 %528, label %530, label %529

529:                                              ; preds = %521
  call void @ExpandRecursives(ptr noundef nonnull %527) #5
  br label %530

530:                                              ; preds = %529, %521
  %531 = icmp eq i32 %301, 0
  br i1 %531, label %730, label %532

532:                                              ; preds = %530
  %533 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 124), align 1, !tbaa !5
  %534 = zext i8 %533 to i32
  store i32 %534, ptr @zz_size, align 4, !tbaa !10
  %535 = zext i8 %533 to i64
  %536 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !8
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %542

539:                                              ; preds = %532
  %540 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %541 = call ptr @GetMemory(i32 noundef %534, ptr noundef %540) #5
  store ptr %541, ptr @zz_hold, align 8, !tbaa !8
  br label %544

542:                                              ; preds = %532
  store ptr %537, ptr @zz_hold, align 8, !tbaa !8
  %543 = load ptr, ptr %537, align 8, !tbaa !5
  store ptr %543, ptr %536, align 8, !tbaa !8
  br label %544

544:                                              ; preds = %539, %542
  %545 = phi ptr [ %541, %539 ], [ %537, %542 ]
  %546 = getelementptr inbounds %struct.word_type, ptr %545, i64 0, i32 1
  store i8 124, ptr %546, align 8, !tbaa !5
  %547 = getelementptr inbounds [2 x %struct.LIST], ptr %545, i64 0, i64 1
  %548 = getelementptr inbounds [2 x %struct.LIST], ptr %545, i64 0, i64 1, i32 1
  store ptr %545, ptr %548, align 8, !tbaa !5
  store ptr %545, ptr %547, align 8, !tbaa !5
  %549 = getelementptr inbounds %struct.LIST, ptr %545, i64 0, i32 1
  store ptr %545, ptr %549, align 8, !tbaa !5
  store ptr %545, ptr %545, align 8, !tbaa !5
  %550 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 125), align 1, !tbaa !5
  %551 = zext i8 %550 to i32
  store i32 %551, ptr @zz_size, align 4, !tbaa !10
  %552 = zext i8 %550 to i64
  %553 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !8
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %559

556:                                              ; preds = %544
  %557 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %558 = call ptr @GetMemory(i32 noundef %551, ptr noundef %557) #5
  store ptr %558, ptr @zz_hold, align 8, !tbaa !8
  br label %561

559:                                              ; preds = %544
  store ptr %554, ptr @zz_hold, align 8, !tbaa !8
  %560 = load ptr, ptr %554, align 8, !tbaa !5
  store ptr %560, ptr %553, align 8, !tbaa !8
  br label %561

561:                                              ; preds = %556, %559
  %562 = phi ptr [ %558, %556 ], [ %554, %559 ]
  %563 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 1
  store i8 125, ptr %563, align 8, !tbaa !5
  %564 = getelementptr inbounds [2 x %struct.LIST], ptr %562, i64 0, i64 1
  %565 = getelementptr inbounds [2 x %struct.LIST], ptr %562, i64 0, i64 1, i32 1
  store ptr %562, ptr %565, align 8, !tbaa !5
  store ptr %562, ptr %564, align 8, !tbaa !5
  %566 = getelementptr inbounds %struct.LIST, ptr %562, i64 0, i32 1
  store ptr %562, ptr %566, align 8, !tbaa !5
  store ptr %562, ptr %562, align 8, !tbaa !5
  %567 = getelementptr inbounds i8, ptr %562, i64 42
  %568 = load i16, ptr %567, align 2
  %569 = and i16 %568, -33
  store i16 %569, ptr %567, align 2
  %570 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %571 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.12, ptr noundef %570) #5
  %572 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %573 = zext i8 %572 to i32
  store i32 %573, ptr @zz_size, align 4, !tbaa !10
  %574 = zext i8 %572 to i64
  %575 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %574
  %576 = load ptr, ptr %575, align 8, !tbaa !8
  %577 = icmp eq ptr %576, null
  br i1 %577, label %578, label %581

578:                                              ; preds = %561
  %579 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %580 = call ptr @GetMemory(i32 noundef %573, ptr noundef %579) #5
  br label %583

581:                                              ; preds = %561
  store ptr %576, ptr @zz_hold, align 8, !tbaa !8
  %582 = load ptr, ptr %576, align 8, !tbaa !5
  store ptr %582, ptr %575, align 8, !tbaa !8
  br label %583

583:                                              ; preds = %578, %581
  %584 = phi ptr [ %580, %578 ], [ %576, %581 ]
  %585 = getelementptr inbounds %struct.word_type, ptr %584, i64 0, i32 1
  store i8 0, ptr %585, align 8, !tbaa !5
  %586 = getelementptr inbounds [2 x %struct.LIST], ptr %584, i64 0, i64 1, i32 1
  store ptr %584, ptr %586, align 8, !tbaa !5
  %587 = getelementptr inbounds [2 x %struct.LIST], ptr %584, i64 0, i64 1
  store ptr %584, ptr %587, align 8, !tbaa !5
  %588 = getelementptr inbounds %struct.LIST, ptr %584, i64 0, i32 1
  store ptr %584, ptr %588, align 8, !tbaa !5
  store ptr %584, ptr %584, align 8, !tbaa !5
  store ptr %584, ptr @xx_link, align 8, !tbaa !8
  store ptr %584, ptr @zz_res, align 8, !tbaa !8
  store ptr %545, ptr @zz_hold, align 8, !tbaa !8
  %589 = load ptr, ptr %545, align 8, !tbaa !5
  store ptr %589, ptr @zz_tmp, align 8, !tbaa !8
  %590 = load ptr, ptr %584, align 8, !tbaa !5
  store ptr %590, ptr %545, align 8, !tbaa !5
  %591 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %592 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %593 = load ptr, ptr %592, align 8, !tbaa !5
  %594 = getelementptr inbounds %struct.LIST, ptr %593, i64 0, i32 1
  store ptr %591, ptr %594, align 8, !tbaa !5
  %595 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %595, ptr %592, align 8, !tbaa !5
  %596 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %597 = getelementptr inbounds %struct.LIST, ptr %595, i64 0, i32 1
  store ptr %596, ptr %597, align 8, !tbaa !5
  %598 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %598, ptr @zz_res, align 8, !tbaa !8
  store ptr %571, ptr @zz_hold, align 8, !tbaa !8
  %599 = icmp eq ptr %571, null
  %600 = icmp eq ptr %598, null
  %601 = select i1 %599, i1 true, i1 %600
  br i1 %601, label %609, label %602

602:                                              ; preds = %583
  %603 = getelementptr inbounds [2 x %struct.LIST], ptr %571, i64 0, i64 1
  %604 = load ptr, ptr %603, align 8, !tbaa !5
  store ptr %604, ptr @zz_tmp, align 8, !tbaa !8
  %605 = getelementptr inbounds [2 x %struct.LIST], ptr %598, i64 0, i64 1
  %606 = load ptr, ptr %605, align 8, !tbaa !5
  store ptr %606, ptr %603, align 8, !tbaa !5
  %607 = getelementptr inbounds [2 x %struct.LIST], ptr %606, i64 0, i64 1, i32 1
  store ptr %571, ptr %607, align 8, !tbaa !5
  store ptr %604, ptr %605, align 8, !tbaa !5
  %608 = getelementptr inbounds [2 x %struct.LIST], ptr %604, i64 0, i64 1, i32 1
  store ptr %598, ptr %608, align 8, !tbaa !5
  br label %609

609:                                              ; preds = %583, %602
  %610 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %611 = zext i8 %610 to i32
  store i32 %611, ptr @zz_size, align 4, !tbaa !10
  %612 = zext i8 %610 to i64
  %613 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %612
  %614 = load ptr, ptr %613, align 8, !tbaa !8
  %615 = icmp eq ptr %614, null
  br i1 %615, label %616, label %619

616:                                              ; preds = %609
  %617 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %618 = call ptr @GetMemory(i32 noundef %611, ptr noundef %617) #5
  br label %621

619:                                              ; preds = %609
  store ptr %614, ptr @zz_hold, align 8, !tbaa !8
  %620 = load ptr, ptr %614, align 8, !tbaa !5
  store ptr %620, ptr %613, align 8, !tbaa !8
  br label %621

621:                                              ; preds = %616, %619
  %622 = phi ptr [ %618, %616 ], [ %614, %619 ]
  %623 = getelementptr inbounds %struct.word_type, ptr %622, i64 0, i32 1
  store i8 0, ptr %623, align 8, !tbaa !5
  %624 = getelementptr inbounds [2 x %struct.LIST], ptr %622, i64 0, i64 1, i32 1
  store ptr %622, ptr %624, align 8, !tbaa !5
  %625 = getelementptr inbounds [2 x %struct.LIST], ptr %622, i64 0, i64 1
  store ptr %622, ptr %625, align 8, !tbaa !5
  %626 = getelementptr inbounds %struct.LIST, ptr %622, i64 0, i32 1
  store ptr %622, ptr %626, align 8, !tbaa !5
  store ptr %622, ptr %622, align 8, !tbaa !5
  store ptr %622, ptr @xx_link, align 8, !tbaa !8
  store ptr %622, ptr @zz_res, align 8, !tbaa !8
  store ptr %562, ptr @zz_hold, align 8, !tbaa !8
  %627 = load ptr, ptr %562, align 8, !tbaa !5
  store ptr %627, ptr @zz_tmp, align 8, !tbaa !8
  %628 = load ptr, ptr %622, align 8, !tbaa !5
  store ptr %628, ptr %562, align 8, !tbaa !5
  %629 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %630 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %631 = load ptr, ptr %630, align 8, !tbaa !5
  %632 = getelementptr inbounds %struct.LIST, ptr %631, i64 0, i32 1
  store ptr %629, ptr %632, align 8, !tbaa !5
  %633 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %633, ptr %630, align 8, !tbaa !5
  %634 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %635 = getelementptr inbounds %struct.LIST, ptr %633, i64 0, i32 1
  store ptr %634, ptr %635, align 8, !tbaa !5
  %636 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %636, ptr @zz_res, align 8, !tbaa !8
  store ptr %571, ptr @zz_hold, align 8, !tbaa !8
  %637 = icmp eq ptr %636, null
  %638 = select i1 %599, i1 true, i1 %637
  br i1 %638, label %646, label %639

639:                                              ; preds = %621
  %640 = getelementptr inbounds [2 x %struct.LIST], ptr %571, i64 0, i64 1
  %641 = load ptr, ptr %640, align 8, !tbaa !5
  store ptr %641, ptr @zz_tmp, align 8, !tbaa !8
  %642 = getelementptr inbounds [2 x %struct.LIST], ptr %636, i64 0, i64 1
  %643 = load ptr, ptr %642, align 8, !tbaa !5
  store ptr %643, ptr %640, align 8, !tbaa !5
  %644 = getelementptr inbounds [2 x %struct.LIST], ptr %643, i64 0, i64 1, i32 1
  store ptr %571, ptr %644, align 8, !tbaa !5
  store ptr %641, ptr %642, align 8, !tbaa !5
  %645 = getelementptr inbounds [2 x %struct.LIST], ptr %641, i64 0, i64 1, i32 1
  store ptr %636, ptr %645, align 8, !tbaa !5
  br label %646

646:                                              ; preds = %621, %639
  %647 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %648 = zext i8 %647 to i32
  store i32 %648, ptr @zz_size, align 4, !tbaa !10
  %649 = zext i8 %647 to i64
  %650 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %649
  %651 = load ptr, ptr %650, align 8, !tbaa !8
  %652 = icmp eq ptr %651, null
  br i1 %652, label %653, label %656

653:                                              ; preds = %646
  %654 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %655 = call ptr @GetMemory(i32 noundef %648, ptr noundef %654) #5
  br label %658

656:                                              ; preds = %646
  store ptr %651, ptr @zz_hold, align 8, !tbaa !8
  %657 = load ptr, ptr %651, align 8, !tbaa !5
  store ptr %657, ptr %650, align 8, !tbaa !8
  br label %658

658:                                              ; preds = %653, %656
  %659 = phi ptr [ %655, %653 ], [ %651, %656 ]
  %660 = getelementptr inbounds %struct.word_type, ptr %659, i64 0, i32 1
  store i8 0, ptr %660, align 8, !tbaa !5
  %661 = getelementptr inbounds [2 x %struct.LIST], ptr %659, i64 0, i64 1, i32 1
  store ptr %659, ptr %661, align 8, !tbaa !5
  %662 = getelementptr inbounds [2 x %struct.LIST], ptr %659, i64 0, i64 1
  store ptr %659, ptr %662, align 8, !tbaa !5
  %663 = getelementptr inbounds %struct.LIST, ptr %659, i64 0, i32 1
  store ptr %659, ptr %663, align 8, !tbaa !5
  store ptr %659, ptr %659, align 8, !tbaa !5
  store ptr %659, ptr @xx_link, align 8, !tbaa !8
  store ptr %659, ptr @zz_res, align 8, !tbaa !8
  %664 = load ptr, ptr %51, align 8, !tbaa !5
  store ptr %664, ptr @zz_hold, align 8, !tbaa !8
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %667

666:                                              ; preds = %658
  store ptr %545, ptr @zz_hold, align 8, !tbaa !8
  br label %679

667:                                              ; preds = %658
  %668 = load ptr, ptr %664, align 8, !tbaa !5
  store ptr %668, ptr @zz_tmp, align 8, !tbaa !8
  %669 = load ptr, ptr %659, align 8, !tbaa !5
  store ptr %669, ptr %664, align 8, !tbaa !5
  %670 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %671 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %672 = load ptr, ptr %671, align 8, !tbaa !5
  %673 = getelementptr inbounds %struct.LIST, ptr %672, i64 0, i32 1
  store ptr %670, ptr %673, align 8, !tbaa !5
  %674 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %674, ptr %671, align 8, !tbaa !5
  %675 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %676 = getelementptr inbounds %struct.LIST, ptr %674, i64 0, i32 1
  store ptr %675, ptr %676, align 8, !tbaa !5
  %677 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %677, ptr @zz_res, align 8, !tbaa !8
  store ptr %545, ptr @zz_hold, align 8, !tbaa !8
  %678 = icmp eq ptr %677, null
  br i1 %678, label %686, label %679

679:                                              ; preds = %666, %667
  %680 = phi ptr [ %659, %666 ], [ %677, %667 ]
  %681 = load ptr, ptr %547, align 8, !tbaa !5
  store ptr %681, ptr @zz_tmp, align 8, !tbaa !8
  %682 = getelementptr inbounds [2 x %struct.LIST], ptr %680, i64 0, i64 1
  %683 = load ptr, ptr %682, align 8, !tbaa !5
  store ptr %683, ptr %547, align 8, !tbaa !5
  %684 = getelementptr inbounds [2 x %struct.LIST], ptr %683, i64 0, i64 1, i32 1
  store ptr %545, ptr %684, align 8, !tbaa !5
  store ptr %681, ptr %682, align 8, !tbaa !5
  %685 = getelementptr inbounds [2 x %struct.LIST], ptr %681, i64 0, i64 1, i32 1
  store ptr %680, ptr %685, align 8, !tbaa !5
  br label %686

686:                                              ; preds = %667, %679
  %687 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %688 = zext i8 %687 to i32
  store i32 %688, ptr @zz_size, align 4, !tbaa !10
  %689 = zext i8 %687 to i64
  %690 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %689
  %691 = load ptr, ptr %690, align 8, !tbaa !8
  %692 = icmp eq ptr %691, null
  br i1 %692, label %693, label %696

693:                                              ; preds = %686
  %694 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %695 = call ptr @GetMemory(i32 noundef %688, ptr noundef %694) #5
  br label %698

696:                                              ; preds = %686
  store ptr %691, ptr @zz_hold, align 8, !tbaa !8
  %697 = load ptr, ptr %691, align 8, !tbaa !5
  store ptr %697, ptr %690, align 8, !tbaa !8
  br label %698

698:                                              ; preds = %693, %696
  %699 = phi ptr [ %695, %693 ], [ %691, %696 ]
  %700 = getelementptr inbounds %struct.word_type, ptr %699, i64 0, i32 1
  store i8 0, ptr %700, align 8, !tbaa !5
  %701 = getelementptr inbounds [2 x %struct.LIST], ptr %699, i64 0, i64 1, i32 1
  store ptr %699, ptr %701, align 8, !tbaa !5
  %702 = getelementptr inbounds [2 x %struct.LIST], ptr %699, i64 0, i64 1
  store ptr %699, ptr %702, align 8, !tbaa !5
  %703 = getelementptr inbounds %struct.LIST, ptr %699, i64 0, i32 1
  store ptr %699, ptr %703, align 8, !tbaa !5
  store ptr %699, ptr %699, align 8, !tbaa !5
  store ptr %699, ptr @xx_link, align 8, !tbaa !8
  store ptr %699, ptr @zz_res, align 8, !tbaa !8
  %704 = load ptr, ptr %56, align 8, !tbaa !5
  store ptr %704, ptr @zz_hold, align 8, !tbaa !8
  %705 = icmp eq ptr %704, null
  br i1 %705, label %706, label %707

706:                                              ; preds = %698
  store ptr %562, ptr @zz_hold, align 8, !tbaa !8
  br label %722

707:                                              ; preds = %698
  %708 = load ptr, ptr %704, align 8, !tbaa !5
  store ptr %708, ptr @zz_tmp, align 8, !tbaa !8
  %709 = load ptr, ptr %699, align 8, !tbaa !5
  store ptr %709, ptr %704, align 8, !tbaa !5
  %710 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %711 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %712 = load ptr, ptr %711, align 8, !tbaa !5
  %713 = getelementptr inbounds %struct.LIST, ptr %712, i64 0, i32 1
  store ptr %710, ptr %713, align 8, !tbaa !5
  %714 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %714, ptr %711, align 8, !tbaa !5
  %715 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %716 = getelementptr inbounds %struct.LIST, ptr %714, i64 0, i32 1
  store ptr %715, ptr %716, align 8, !tbaa !5
  %717 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %717, ptr @zz_res, align 8, !tbaa !8
  store ptr %562, ptr @zz_hold, align 8, !tbaa !8
  %718 = icmp eq ptr %717, null
  br i1 %718, label %730, label %719

719:                                              ; preds = %707
  %720 = getelementptr inbounds [2 x %struct.LIST], ptr %717, i64 0, i64 1
  %721 = load ptr, ptr %720, align 8, !tbaa !5
  br label %722

722:                                              ; preds = %719, %706
  %723 = phi ptr [ %699, %706 ], [ %721, %719 ]
  %724 = phi ptr [ %699, %706 ], [ %717, %719 ]
  %725 = load ptr, ptr %564, align 8, !tbaa !5
  store ptr %725, ptr @zz_tmp, align 8, !tbaa !8
  %726 = getelementptr inbounds [2 x %struct.LIST], ptr %724, i64 0, i64 1
  store ptr %723, ptr %564, align 8, !tbaa !5
  %727 = load ptr, ptr %726, align 8, !tbaa !5
  %728 = getelementptr inbounds [2 x %struct.LIST], ptr %727, i64 0, i64 1, i32 1
  store ptr %562, ptr %728, align 8, !tbaa !5
  store ptr %725, ptr %726, align 8, !tbaa !5
  %729 = getelementptr inbounds [2 x %struct.LIST], ptr %725, i64 0, i64 1, i32 1
  store ptr %724, ptr %729, align 8, !tbaa !5
  br label %730

730:                                              ; preds = %722, %707, %530
  call void @LeaveErrorBlock(i32 noundef 1) #5
  br label %731

731:                                              ; preds = %730, %500
  br i1 %52, label %751, label %732

732:                                              ; preds = %731
  %733 = load i32, ptr %57, align 4, !tbaa !5
  %734 = load i32, ptr %8, align 4, !tbaa !12
  %735 = icmp sgt i32 %733, %734
  br i1 %735, label %744, label %736

736:                                              ; preds = %732
  %737 = load i32, ptr %58, align 4, !tbaa !5
  %738 = add nsw i32 %737, %733
  %739 = load i32, ptr %53, align 4, !tbaa !14
  %740 = icmp sgt i32 %738, %739
  %741 = load i32, ptr %54, align 4
  %742 = icmp sgt i32 %737, %741
  %743 = select i1 %740, i1 true, i1 %742
  br i1 %743, label %744, label %751

744:                                              ; preds = %736, %732
  %745 = load ptr, ptr %60, align 8, !tbaa !5
  %746 = call ptr @SymName(ptr noundef %745) #5
  %747 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 5
  %748 = load ptr, ptr %747, align 8, !tbaa !5
  %749 = call ptr @SymName(ptr noundef %748) #5
  %750 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef 2, ptr noundef nonnull %59, ptr noundef %746, ptr noundef %749) #5
  br label %2029

751:                                              ; preds = %736, %731
  %752 = load ptr, ptr %56, align 8, !tbaa !5
  %753 = icmp eq ptr %752, %0
  br i1 %753, label %1774, label %754

754:                                              ; preds = %751, %1769
  %755 = phi ptr [ %1772, %1769 ], [ %752, %751 ]
  br label %756

756:                                              ; preds = %754, %756
  %757 = phi ptr [ %759, %756 ], [ %755, %754 ]
  %758 = getelementptr inbounds [2 x %struct.LIST], ptr %757, i64 0, i64 1
  %759 = load ptr, ptr %758, align 8, !tbaa !5
  %760 = getelementptr inbounds %struct.word_type, ptr %759, i64 0, i32 1
  %761 = load i8, ptr %760, align 8, !tbaa !5
  switch i8 %761, label %773 [
    i8 0, label %756
    i8 9, label %762
  ]

762:                                              ; preds = %756
  %763 = getelementptr inbounds %struct.LIST, ptr %759, i64 0, i32 1
  %764 = select i1 %52, ptr %763, ptr %759
  %765 = load ptr, ptr %764, align 8, !tbaa !5
  br label %766

766:                                              ; preds = %766, %762
  %767 = phi ptr [ %765, %762 ], [ %769, %766 ]
  %768 = getelementptr inbounds [2 x %struct.LIST], ptr %767, i64 0, i64 1
  %769 = load ptr, ptr %768, align 8, !tbaa !5
  %770 = getelementptr inbounds %struct.word_type, ptr %769, i64 0, i32 1
  %771 = load i8, ptr %770, align 8, !tbaa !5
  %772 = icmp eq i8 %771, 0
  br i1 %772, label %766, label %773

773:                                              ; preds = %756, %766
  %774 = phi i8 [ %771, %766 ], [ %761, %756 ]
  %775 = phi ptr [ %769, %766 ], [ %759, %756 ]
  switch i8 %774, label %1764 [
    i8 -118, label %1769
    i8 -120, label %1769
    i8 -119, label %1769
    i8 -123, label %1769
    i8 -127, label %1769
    i8 -126, label %1769
    i8 -124, label %1769
    i8 -122, label %1769
    i8 127, label %1769
    i8 -128, label %1769
    i8 -125, label %1769
    i8 -121, label %1769
    i8 124, label %776
    i8 120, label %776
    i8 121, label %2106
    i8 122, label %2106
    i8 125, label %839
    i8 1, label %1082
    i8 20, label %1096
    i8 21, label %1096
    i8 22, label %1096
    i8 23, label %1096
    i8 2, label %1103
    i8 6, label %1103
    i8 7, label %1103
    i8 5, label %1103
    i8 4, label %1103
    i8 11, label %1110
    i8 12, label %1110
    i8 24, label %1110
    i8 25, label %1110
    i8 26, label %1110
    i8 27, label %1110
    i8 28, label %1110
    i8 29, label %1110
    i8 30, label %1110
    i8 31, label %1110
    i8 32, label %1110
    i8 33, label %1110
    i8 36, label %1110
    i8 37, label %1110
    i8 38, label %1110
    i8 39, label %1110
    i8 40, label %1110
    i8 41, label %1110
    i8 44, label %1110
    i8 42, label %1110
    i8 43, label %1110
    i8 45, label %1110
    i8 46, label %1110
    i8 50, label %1110
    i8 51, label %1110
    i8 34, label %1110
    i8 35, label %1110
    i8 94, label %1110
    i8 95, label %1110
    i8 96, label %1110
    i8 97, label %1110
    i8 98, label %1110
    i8 99, label %1110
    i8 17, label %1110
    i8 18, label %1110
    i8 19, label %1110
    i8 15, label %1110
    i8 16, label %1110
  ]

776:                                              ; preds = %773, %773
  br i1 %62, label %1769, label %777

777:                                              ; preds = %776
  %778 = load ptr, ptr %4, align 8, !tbaa !8
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %798

780:                                              ; preds = %777
  %781 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %782 = zext i8 %781 to i32
  store i32 %782, ptr @zz_size, align 4, !tbaa !10
  %783 = zext i8 %781 to i64
  %784 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %783
  %785 = load ptr, ptr %784, align 8, !tbaa !8
  %786 = icmp eq ptr %785, null
  br i1 %786, label %787, label %790

787:                                              ; preds = %780
  %788 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %789 = call ptr @GetMemory(i32 noundef %782, ptr noundef %788) #5
  store ptr %789, ptr @zz_hold, align 8, !tbaa !8
  br label %792

790:                                              ; preds = %780
  store ptr %785, ptr @zz_hold, align 8, !tbaa !8
  %791 = load ptr, ptr %785, align 8, !tbaa !5
  store ptr %791, ptr %784, align 8, !tbaa !8
  br label %792

792:                                              ; preds = %787, %790
  %793 = phi ptr [ %789, %787 ], [ %785, %790 ]
  %794 = getelementptr inbounds %struct.word_type, ptr %793, i64 0, i32 1
  store i8 17, ptr %794, align 8, !tbaa !5
  %795 = getelementptr inbounds [2 x %struct.LIST], ptr %793, i64 0, i64 1, i32 1
  store ptr %793, ptr %795, align 8, !tbaa !5
  %796 = getelementptr inbounds [2 x %struct.LIST], ptr %793, i64 0, i64 1
  store ptr %793, ptr %796, align 8, !tbaa !5
  %797 = getelementptr inbounds %struct.LIST, ptr %793, i64 0, i32 1
  store ptr %793, ptr %797, align 8, !tbaa !5
  store ptr %793, ptr %793, align 8, !tbaa !5
  store ptr %793, ptr %4, align 8, !tbaa !8
  br label %798

798:                                              ; preds = %792, %777
  %799 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %800 = zext i8 %799 to i32
  store i32 %800, ptr @zz_size, align 4, !tbaa !10
  %801 = zext i8 %799 to i64
  %802 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %801
  %803 = load ptr, ptr %802, align 8, !tbaa !8
  %804 = icmp eq ptr %803, null
  br i1 %804, label %805, label %808

805:                                              ; preds = %798
  %806 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %807 = call ptr @GetMemory(i32 noundef %800, ptr noundef %806) #5
  br label %810

808:                                              ; preds = %798
  store ptr %803, ptr @zz_hold, align 8, !tbaa !8
  %809 = load ptr, ptr %803, align 8, !tbaa !5
  store ptr %809, ptr %802, align 8, !tbaa !8
  br label %810

810:                                              ; preds = %805, %808
  %811 = phi ptr [ %807, %805 ], [ %803, %808 ]
  %812 = getelementptr inbounds %struct.word_type, ptr %811, i64 0, i32 1
  store i8 0, ptr %812, align 8, !tbaa !5
  %813 = getelementptr inbounds [2 x %struct.LIST], ptr %811, i64 0, i64 1, i32 1
  store ptr %811, ptr %813, align 8, !tbaa !5
  %814 = getelementptr inbounds [2 x %struct.LIST], ptr %811, i64 0, i64 1
  store ptr %811, ptr %814, align 8, !tbaa !5
  %815 = getelementptr inbounds %struct.LIST, ptr %811, i64 0, i32 1
  store ptr %811, ptr %815, align 8, !tbaa !5
  store ptr %811, ptr %811, align 8, !tbaa !5
  store ptr %811, ptr @xx_link, align 8, !tbaa !8
  store ptr %811, ptr @zz_res, align 8, !tbaa !8
  %816 = load ptr, ptr %4, align 8, !tbaa !8
  store ptr %816, ptr @zz_hold, align 8, !tbaa !8
  %817 = icmp eq ptr %816, null
  br i1 %817, label %818, label %819

818:                                              ; preds = %810
  store ptr %775, ptr @zz_hold, align 8, !tbaa !8
  br label %831

819:                                              ; preds = %810
  %820 = load ptr, ptr %816, align 8, !tbaa !5
  store ptr %820, ptr @zz_tmp, align 8, !tbaa !8
  %821 = load ptr, ptr %811, align 8, !tbaa !5
  store ptr %821, ptr %816, align 8, !tbaa !5
  %822 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %823 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %824 = load ptr, ptr %823, align 8, !tbaa !5
  %825 = getelementptr inbounds %struct.LIST, ptr %824, i64 0, i32 1
  store ptr %822, ptr %825, align 8, !tbaa !5
  %826 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %826, ptr %823, align 8, !tbaa !5
  %827 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %828 = getelementptr inbounds %struct.LIST, ptr %826, i64 0, i32 1
  store ptr %827, ptr %828, align 8, !tbaa !5
  %829 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %829, ptr @zz_res, align 8, !tbaa !8
  store ptr %775, ptr @zz_hold, align 8, !tbaa !8
  %830 = icmp eq ptr %829, null
  br i1 %830, label %1769, label %831

831:                                              ; preds = %818, %819
  %832 = phi ptr [ %811, %818 ], [ %829, %819 ]
  %833 = getelementptr inbounds [2 x %struct.LIST], ptr %775, i64 0, i64 1
  %834 = load ptr, ptr %833, align 8, !tbaa !5
  store ptr %834, ptr @zz_tmp, align 8, !tbaa !8
  %835 = getelementptr inbounds [2 x %struct.LIST], ptr %832, i64 0, i64 1
  %836 = load ptr, ptr %835, align 8, !tbaa !5
  store ptr %836, ptr %833, align 8, !tbaa !5
  %837 = getelementptr inbounds [2 x %struct.LIST], ptr %836, i64 0, i64 1, i32 1
  store ptr %775, ptr %837, align 8, !tbaa !5
  store ptr %834, ptr %835, align 8, !tbaa !5
  %838 = getelementptr inbounds [2 x %struct.LIST], ptr %834, i64 0, i64 1, i32 1
  store ptr %832, ptr %838, align 8, !tbaa !5
  br label %1769

839:                                              ; preds = %773
  %840 = getelementptr inbounds %struct.LIST, ptr %775, i64 0, i32 1
  %841 = load ptr, ptr %840, align 8, !tbaa !5
  br label %842

842:                                              ; preds = %842, %839
  %843 = phi ptr [ %841, %839 ], [ %845, %842 ]
  %844 = getelementptr inbounds [2 x %struct.LIST], ptr %843, i64 0, i64 1
  %845 = load ptr, ptr %844, align 8, !tbaa !5
  %846 = getelementptr inbounds %struct.word_type, ptr %845, i64 0, i32 1
  %847 = load i8, ptr %846, align 8, !tbaa !5
  %848 = icmp eq i8 %847, 0
  br i1 %848, label %842, label %849

849:                                              ; preds = %842
  %850 = getelementptr inbounds [2 x %struct.LIST], ptr %845, i64 0, i64 1
  %851 = getelementptr inbounds [2 x %struct.LIST], ptr %845, i64 0, i64 1, i32 1
  %852 = load ptr, ptr %851, align 8, !tbaa !5
  %853 = load ptr, ptr %850, align 8, !tbaa !5
  %854 = icmp eq ptr %852, %853
  br i1 %854, label %855, label %905

855:                                              ; preds = %849
  %856 = load ptr, ptr %755, align 8, !tbaa !5
  %857 = getelementptr inbounds %struct.LIST, ptr %856, i64 0, i32 1
  %858 = load ptr, ptr %857, align 8, !tbaa !5
  store ptr %858, ptr @xx_link, align 8, !tbaa !8
  %859 = getelementptr inbounds [2 x %struct.LIST], ptr %858, i64 0, i64 1, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !5
  %861 = icmp eq ptr %860, %858
  br i1 %861, label %867, label %862

862:                                              ; preds = %855
  store ptr %860, ptr @zz_res, align 8, !tbaa !8
  %863 = getelementptr inbounds [2 x %struct.LIST], ptr %858, i64 0, i64 1
  %864 = load ptr, ptr %863, align 8, !tbaa !5
  %865 = getelementptr inbounds [2 x %struct.LIST], ptr %860, i64 0, i64 1
  store ptr %864, ptr %865, align 8, !tbaa !5
  %866 = getelementptr inbounds [2 x %struct.LIST], ptr %864, i64 0, i64 1, i32 1
  store ptr %860, ptr %866, align 8, !tbaa !5
  store ptr %858, ptr %859, align 8, !tbaa !5
  store ptr %858, ptr %863, align 8, !tbaa !5
  br label %867

867:                                              ; preds = %855, %862
  %868 = phi ptr [ %860, %862 ], [ null, %855 ]
  store ptr %868, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %858, ptr @zz_hold, align 8, !tbaa !8
  %869 = getelementptr inbounds %struct.LIST, ptr %858, i64 0, i32 1
  %870 = load ptr, ptr %869, align 8, !tbaa !5
  %871 = icmp eq ptr %870, %858
  br i1 %871, label %880, label %872

872:                                              ; preds = %867
  store ptr %870, ptr @zz_res, align 8, !tbaa !8
  %873 = load ptr, ptr %858, align 8, !tbaa !5
  store ptr %873, ptr %870, align 8, !tbaa !5
  %874 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %875 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %876 = load ptr, ptr %875, align 8, !tbaa !5
  %877 = getelementptr inbounds %struct.LIST, ptr %876, i64 0, i32 1
  store ptr %874, ptr %877, align 8, !tbaa !5
  %878 = getelementptr inbounds %struct.LIST, ptr %875, i64 0, i32 1
  store ptr %875, ptr %878, align 8, !tbaa !5
  store ptr %875, ptr %875, align 8, !tbaa !5
  %879 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %880

880:                                              ; preds = %867, %872
  %881 = phi ptr [ %858, %867 ], [ %879, %872 ]
  store ptr %881, ptr @zz_hold, align 8, !tbaa !8
  %882 = getelementptr inbounds %struct.word_type, ptr %881, i64 0, i32 1
  %883 = load i8, ptr %882, align 8, !tbaa !5
  %884 = add i8 %883, -11
  %885 = icmp ult i8 %884, 2
  %886 = getelementptr inbounds %struct.word_type, ptr %881, i64 0, i32 1, i32 0, i32 1
  %887 = zext i8 %883 to i64
  %888 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %887
  %889 = select i1 %885, ptr %886, ptr %888
  %890 = load i8, ptr %889, align 1, !tbaa !5
  %891 = zext i8 %890 to i32
  store i32 %891, ptr @zz_size, align 4, !tbaa !10
  %892 = zext i8 %890 to i64
  %893 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %892
  %894 = load ptr, ptr %893, align 8, !tbaa !8
  store ptr %894, ptr %881, align 8, !tbaa !5
  %895 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %896 = load i32, ptr @zz_size, align 4, !tbaa !10
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %897
  store ptr %895, ptr %898, align 8, !tbaa !8
  %899 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %900 = getelementptr inbounds [2 x %struct.LIST], ptr %899, i64 0, i64 1, i32 1
  %901 = load ptr, ptr %900, align 8, !tbaa !5
  %902 = icmp eq ptr %901, %899
  br i1 %902, label %903, label %1769

903:                                              ; preds = %880
  %904 = call i32 @DisposeObject(ptr noundef nonnull %899) #5
  br label %1769

905:                                              ; preds = %849, %905
  %906 = phi ptr [ %907, %905 ], [ %852, %849 ]
  %907 = load ptr, ptr %906, align 8, !tbaa !5
  %908 = getelementptr inbounds %struct.word_type, ptr %907, i64 0, i32 1
  %909 = load i8, ptr %908, align 8, !tbaa !5
  switch i8 %909, label %910 [
    i8 0, label %905
    i8 124, label %913
  ]

910:                                              ; preds = %905
  %911 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %912 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %911, ptr noundef nonnull @.str.14) #5
  br label %913

913:                                              ; preds = %905, %910
  %914 = call i32 @CheckComponentOrder(ptr noundef nonnull %907, ptr noundef nonnull %302) #5
  switch i32 %914, label %1769 [
    i32 157, label %915
    i32 155, label %2029
    i32 156, label %2106
  ]

915:                                              ; preds = %913
  store ptr %907, ptr @xx_hold, align 8, !tbaa !8
  %916 = getelementptr inbounds [2 x %struct.LIST], ptr %907, i64 0, i64 1, i32 1
  %917 = load ptr, ptr %916, align 8, !tbaa !5
  %918 = icmp eq ptr %917, %907
  br i1 %918, label %919, label %924

919:                                              ; preds = %946, %915
  %920 = phi ptr [ %907, %915 ], [ %965, %946 ]
  %921 = getelementptr inbounds %struct.LIST, ptr %920, i64 0, i32 1
  %922 = load ptr, ptr %921, align 8, !tbaa !5
  %923 = icmp eq ptr %922, %920
  br i1 %923, label %1014, label %969

924:                                              ; preds = %915, %946
  %925 = phi ptr [ %967, %946 ], [ %917, %915 ]
  store ptr %925, ptr @xx_link, align 8, !tbaa !8
  %926 = getelementptr inbounds [2 x %struct.LIST], ptr %925, i64 0, i64 1, i32 1
  %927 = load ptr, ptr %926, align 8, !tbaa !5
  %928 = icmp eq ptr %927, %925
  br i1 %928, label %934, label %929

929:                                              ; preds = %924
  store ptr %927, ptr @zz_res, align 8, !tbaa !8
  %930 = getelementptr inbounds [2 x %struct.LIST], ptr %925, i64 0, i64 1
  %931 = load ptr, ptr %930, align 8, !tbaa !5
  %932 = getelementptr inbounds [2 x %struct.LIST], ptr %927, i64 0, i64 1
  store ptr %931, ptr %932, align 8, !tbaa !5
  %933 = getelementptr inbounds [2 x %struct.LIST], ptr %931, i64 0, i64 1, i32 1
  store ptr %927, ptr %933, align 8, !tbaa !5
  store ptr %925, ptr %926, align 8, !tbaa !5
  store ptr %925, ptr %930, align 8, !tbaa !5
  br label %934

934:                                              ; preds = %924, %929
  store ptr %925, ptr @zz_hold, align 8, !tbaa !8
  %935 = getelementptr inbounds %struct.LIST, ptr %925, i64 0, i32 1
  %936 = load ptr, ptr %935, align 8, !tbaa !5
  %937 = icmp eq ptr %936, %925
  br i1 %937, label %946, label %938

938:                                              ; preds = %934
  store ptr %936, ptr @zz_res, align 8, !tbaa !8
  %939 = load ptr, ptr %925, align 8, !tbaa !5
  store ptr %939, ptr %936, align 8, !tbaa !5
  %940 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %941 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %942 = load ptr, ptr %941, align 8, !tbaa !5
  %943 = getelementptr inbounds %struct.LIST, ptr %942, i64 0, i32 1
  store ptr %940, ptr %943, align 8, !tbaa !5
  %944 = getelementptr inbounds %struct.LIST, ptr %941, i64 0, i32 1
  store ptr %941, ptr %944, align 8, !tbaa !5
  store ptr %941, ptr %941, align 8, !tbaa !5
  %945 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %946

946:                                              ; preds = %934, %938
  %947 = phi ptr [ %925, %934 ], [ %945, %938 ]
  store ptr %947, ptr @zz_hold, align 8, !tbaa !8
  %948 = getelementptr inbounds %struct.word_type, ptr %947, i64 0, i32 1
  %949 = load i8, ptr %948, align 8, !tbaa !5
  %950 = add i8 %949, -11
  %951 = icmp ult i8 %950, 2
  %952 = getelementptr inbounds %struct.word_type, ptr %947, i64 0, i32 1, i32 0, i32 1
  %953 = zext i8 %949 to i64
  %954 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %953
  %955 = select i1 %951, ptr %952, ptr %954
  %956 = load i8, ptr %955, align 1, !tbaa !5
  %957 = zext i8 %956 to i32
  store i32 %957, ptr @zz_size, align 4, !tbaa !10
  %958 = zext i8 %956 to i64
  %959 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %958
  %960 = load ptr, ptr %959, align 8, !tbaa !8
  store ptr %960, ptr %947, align 8, !tbaa !5
  %961 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %962 = load i32, ptr @zz_size, align 4, !tbaa !10
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %963
  store ptr %961, ptr %964, align 8, !tbaa !8
  %965 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %966 = getelementptr inbounds [2 x %struct.LIST], ptr %965, i64 0, i64 1, i32 1
  %967 = load ptr, ptr %966, align 8, !tbaa !5
  %968 = icmp eq ptr %967, %965
  br i1 %968, label %919, label %924

969:                                              ; preds = %919, %991
  %970 = phi ptr [ %1012, %991 ], [ %922, %919 ]
  store ptr %970, ptr @xx_link, align 8, !tbaa !8
  %971 = getelementptr inbounds [2 x %struct.LIST], ptr %970, i64 0, i64 1, i32 1
  %972 = load ptr, ptr %971, align 8, !tbaa !5
  %973 = icmp eq ptr %972, %970
  br i1 %973, label %979, label %974

974:                                              ; preds = %969
  store ptr %972, ptr @zz_res, align 8, !tbaa !8
  %975 = getelementptr inbounds [2 x %struct.LIST], ptr %970, i64 0, i64 1
  %976 = load ptr, ptr %975, align 8, !tbaa !5
  %977 = getelementptr inbounds [2 x %struct.LIST], ptr %972, i64 0, i64 1
  store ptr %976, ptr %977, align 8, !tbaa !5
  %978 = getelementptr inbounds [2 x %struct.LIST], ptr %976, i64 0, i64 1, i32 1
  store ptr %972, ptr %978, align 8, !tbaa !5
  store ptr %970, ptr %971, align 8, !tbaa !5
  store ptr %970, ptr %975, align 8, !tbaa !5
  br label %979

979:                                              ; preds = %969, %974
  store ptr %970, ptr @zz_hold, align 8, !tbaa !8
  %980 = getelementptr inbounds %struct.LIST, ptr %970, i64 0, i32 1
  %981 = load ptr, ptr %980, align 8, !tbaa !5
  %982 = icmp eq ptr %981, %970
  br i1 %982, label %991, label %983

983:                                              ; preds = %979
  store ptr %981, ptr @zz_res, align 8, !tbaa !8
  %984 = load ptr, ptr %970, align 8, !tbaa !5
  store ptr %984, ptr %981, align 8, !tbaa !5
  %985 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %986 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %987 = load ptr, ptr %986, align 8, !tbaa !5
  %988 = getelementptr inbounds %struct.LIST, ptr %987, i64 0, i32 1
  store ptr %985, ptr %988, align 8, !tbaa !5
  %989 = getelementptr inbounds %struct.LIST, ptr %986, i64 0, i32 1
  store ptr %986, ptr %989, align 8, !tbaa !5
  store ptr %986, ptr %986, align 8, !tbaa !5
  %990 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %991

991:                                              ; preds = %979, %983
  %992 = phi ptr [ %970, %979 ], [ %990, %983 ]
  store ptr %992, ptr @zz_hold, align 8, !tbaa !8
  %993 = getelementptr inbounds %struct.word_type, ptr %992, i64 0, i32 1
  %994 = load i8, ptr %993, align 8, !tbaa !5
  %995 = add i8 %994, -11
  %996 = icmp ult i8 %995, 2
  %997 = getelementptr inbounds %struct.word_type, ptr %992, i64 0, i32 1, i32 0, i32 1
  %998 = zext i8 %994 to i64
  %999 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %998
  %1000 = select i1 %996, ptr %997, ptr %999
  %1001 = load i8, ptr %1000, align 1, !tbaa !5
  %1002 = zext i8 %1001 to i32
  store i32 %1002, ptr @zz_size, align 4, !tbaa !10
  %1003 = zext i8 %1001 to i64
  %1004 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1003
  %1005 = load ptr, ptr %1004, align 8, !tbaa !8
  store ptr %1005, ptr %992, align 8, !tbaa !5
  %1006 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1007 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1008
  store ptr %1006, ptr %1009, align 8, !tbaa !8
  %1010 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1011 = getelementptr inbounds %struct.LIST, ptr %1010, i64 0, i32 1
  %1012 = load ptr, ptr %1011, align 8, !tbaa !5
  %1013 = icmp eq ptr %1012, %1010
  br i1 %1013, label %1014, label %969

1014:                                             ; preds = %991, %919
  %1015 = phi ptr [ %920, %919 ], [ %1010, %991 ]
  store ptr %1015, ptr @zz_hold, align 8, !tbaa !8
  %1016 = getelementptr inbounds %struct.word_type, ptr %1015, i64 0, i32 1
  %1017 = load i8, ptr %1016, align 8, !tbaa !5
  %1018 = add i8 %1017, -11
  %1019 = icmp ult i8 %1018, 2
  %1020 = getelementptr inbounds %struct.word_type, ptr %1015, i64 0, i32 1, i32 0, i32 1
  %1021 = zext i8 %1017 to i64
  %1022 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1021
  %1023 = select i1 %1019, ptr %1020, ptr %1022
  %1024 = load i8, ptr %1023, align 1, !tbaa !5
  %1025 = zext i8 %1024 to i32
  store i32 %1025, ptr @zz_size, align 4, !tbaa !10
  %1026 = zext i8 %1024 to i64
  %1027 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1026
  %1028 = load ptr, ptr %1027, align 8, !tbaa !8
  store ptr %1028, ptr %1015, align 8, !tbaa !5
  %1029 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1030 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1031
  store ptr %1029, ptr %1032, align 8, !tbaa !8
  %1033 = load ptr, ptr %755, align 8, !tbaa !5
  %1034 = getelementptr inbounds %struct.LIST, ptr %1033, i64 0, i32 1
  %1035 = load ptr, ptr %1034, align 8, !tbaa !5
  store ptr %1035, ptr @xx_link, align 8, !tbaa !8
  %1036 = getelementptr inbounds [2 x %struct.LIST], ptr %1035, i64 0, i64 1, i32 1
  %1037 = load ptr, ptr %1036, align 8, !tbaa !5
  %1038 = icmp eq ptr %1037, %1035
  br i1 %1038, label %1044, label %1039

1039:                                             ; preds = %1014
  store ptr %1037, ptr @zz_res, align 8, !tbaa !8
  %1040 = getelementptr inbounds [2 x %struct.LIST], ptr %1035, i64 0, i64 1
  %1041 = load ptr, ptr %1040, align 8, !tbaa !5
  %1042 = getelementptr inbounds [2 x %struct.LIST], ptr %1037, i64 0, i64 1
  store ptr %1041, ptr %1042, align 8, !tbaa !5
  %1043 = getelementptr inbounds [2 x %struct.LIST], ptr %1041, i64 0, i64 1, i32 1
  store ptr %1037, ptr %1043, align 8, !tbaa !5
  store ptr %1035, ptr %1036, align 8, !tbaa !5
  store ptr %1035, ptr %1040, align 8, !tbaa !5
  br label %1044

1044:                                             ; preds = %1014, %1039
  %1045 = phi ptr [ %1037, %1039 ], [ null, %1014 ]
  store ptr %1045, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1035, ptr @zz_hold, align 8, !tbaa !8
  %1046 = getelementptr inbounds %struct.LIST, ptr %1035, i64 0, i32 1
  %1047 = load ptr, ptr %1046, align 8, !tbaa !5
  %1048 = icmp eq ptr %1047, %1035
  br i1 %1048, label %1057, label %1049

1049:                                             ; preds = %1044
  store ptr %1047, ptr @zz_res, align 8, !tbaa !8
  %1050 = load ptr, ptr %1035, align 8, !tbaa !5
  store ptr %1050, ptr %1047, align 8, !tbaa !5
  %1051 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1052 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1053 = load ptr, ptr %1052, align 8, !tbaa !5
  %1054 = getelementptr inbounds %struct.LIST, ptr %1053, i64 0, i32 1
  store ptr %1051, ptr %1054, align 8, !tbaa !5
  %1055 = getelementptr inbounds %struct.LIST, ptr %1052, i64 0, i32 1
  store ptr %1052, ptr %1055, align 8, !tbaa !5
  store ptr %1052, ptr %1052, align 8, !tbaa !5
  %1056 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1057

1057:                                             ; preds = %1044, %1049
  %1058 = phi ptr [ %1035, %1044 ], [ %1056, %1049 ]
  store ptr %1058, ptr @zz_hold, align 8, !tbaa !8
  %1059 = getelementptr inbounds %struct.word_type, ptr %1058, i64 0, i32 1
  %1060 = load i8, ptr %1059, align 8, !tbaa !5
  %1061 = add i8 %1060, -11
  %1062 = icmp ult i8 %1061, 2
  %1063 = getelementptr inbounds %struct.word_type, ptr %1058, i64 0, i32 1, i32 0, i32 1
  %1064 = zext i8 %1060 to i64
  %1065 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1064
  %1066 = select i1 %1062, ptr %1063, ptr %1065
  %1067 = load i8, ptr %1066, align 1, !tbaa !5
  %1068 = zext i8 %1067 to i32
  store i32 %1068, ptr @zz_size, align 4, !tbaa !10
  %1069 = zext i8 %1067 to i64
  %1070 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1069
  %1071 = load ptr, ptr %1070, align 8, !tbaa !8
  store ptr %1071, ptr %1058, align 8, !tbaa !5
  %1072 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1073 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1074
  store ptr %1072, ptr %1075, align 8, !tbaa !8
  %1076 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %1077 = getelementptr inbounds [2 x %struct.LIST], ptr %1076, i64 0, i64 1, i32 1
  %1078 = load ptr, ptr %1077, align 8, !tbaa !5
  %1079 = icmp eq ptr %1078, %1076
  br i1 %1079, label %1080, label %1769

1080:                                             ; preds = %1057
  %1081 = call i32 @DisposeObject(ptr noundef nonnull %1076) #5
  br label %1769

1082:                                             ; preds = %773
  %1083 = load i32, ptr %469, align 8
  %1084 = and i32 %1083, 1610612736
  %1085 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 2
  %1086 = load i32, ptr %1085, align 8
  %1087 = and i32 %1086, -1610612737
  %1088 = or disjoint i32 %1087, %1084
  store i32 %1088, ptr %1085, align 8
  %1089 = getelementptr inbounds %struct.gapobj_type, ptr %775, i64 0, i32 3
  %1090 = load i16, ptr %1089, align 4
  %1091 = and i16 %1090, 512
  %1092 = icmp eq i16 %1091, 0
  br i1 %1092, label %1093, label %1769

1093:                                             ; preds = %1082
  %1094 = load i16, ptr %45, align 2
  %1095 = or i16 %1094, 32
  store i16 %1095, ptr %45, align 2
  br label %1769

1096:                                             ; preds = %773, %773, %773, %773
  %1097 = load i32, ptr %469, align 8
  %1098 = and i32 %1097, 1610612736
  %1099 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 2
  %1100 = load i32, ptr %1099, align 8
  %1101 = and i32 %1100, -1610612737
  %1102 = or disjoint i32 %1101, %1098
  store i32 %1102, ptr %1099, align 8
  br label %1769

1103:                                             ; preds = %773, %773, %773, %773, %773
  %1104 = load i32, ptr %469, align 8
  %1105 = and i32 %1104, 1610612736
  %1106 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 2
  %1107 = load i32, ptr %1106, align 8
  %1108 = and i32 %1107, -1610612737
  %1109 = or disjoint i32 %1108, %1105
  store i32 %1109, ptr %1106, align 8
  br label %1769

1110:                                             ; preds = %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773
  %1111 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 1
  %1112 = load i32, ptr %469, align 8
  %1113 = and i32 %1112, 1610612736
  %1114 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 2
  %1115 = load i32, ptr %1114, align 8
  %1116 = and i32 %1115, -1610612737
  %1117 = or disjoint i32 %1116, %1113
  store i32 %1117, ptr %1114, align 8
  br i1 %52, label %1420, label %1118

1118:                                             ; preds = %1110
  %1119 = getelementptr inbounds %struct.LIST, ptr %755, i64 0, i32 1
  %1120 = load ptr, ptr %1119, align 8, !tbaa !5
  %1121 = icmp eq ptr %1120, %0
  br i1 %1121, label %1415, label %1122

1122:                                             ; preds = %1118
  %1123 = getelementptr inbounds %struct.LIST, ptr %775, i64 0, i32 1
  br label %1124

1124:                                             ; preds = %1122, %1408
  %1125 = phi ptr [ %1120, %1122 ], [ %1411, %1408 ]
  br label %1126

1126:                                             ; preds = %1124, %1126
  %1127 = phi ptr [ %1129, %1126 ], [ %1125, %1124 ]
  %1128 = getelementptr inbounds [2 x %struct.LIST], ptr %1127, i64 0, i64 1
  %1129 = load ptr, ptr %1128, align 8, !tbaa !5
  %1130 = getelementptr inbounds %struct.word_type, ptr %1129, i64 0, i32 1
  %1131 = load i8, ptr %1130, align 8, !tbaa !5
  switch i8 %1131, label %1408 [
    i8 0, label %1126
    i8 121, label %1132
    i8 122, label %1256
    i8 1, label %1401
  ]

1132:                                             ; preds = %1126
  %1133 = getelementptr inbounds i8, ptr %1129, i64 42
  %1134 = load i16, ptr %1133, align 2
  %1135 = and i16 %1134, 1
  %1136 = icmp eq i16 %1135, 0
  br i1 %1136, label %2106, label %1137

1137:                                             ; preds = %1132
  %1138 = load ptr, ptr %1125, align 8, !tbaa !5
  store ptr %1129, ptr @xx_hold, align 8, !tbaa !8
  %1139 = getelementptr inbounds [2 x %struct.LIST], ptr %1129, i64 0, i64 1, i32 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !5
  %1141 = icmp eq ptr %1140, %1129
  br i1 %1141, label %1142, label %1147

1142:                                             ; preds = %1169, %1137
  %1143 = phi ptr [ %1129, %1137 ], [ %1188, %1169 ]
  %1144 = getelementptr inbounds %struct.LIST, ptr %1143, i64 0, i32 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !5
  %1146 = icmp eq ptr %1145, %1143
  br i1 %1146, label %1237, label %1192

1147:                                             ; preds = %1137, %1169
  %1148 = phi ptr [ %1190, %1169 ], [ %1140, %1137 ]
  store ptr %1148, ptr @xx_link, align 8, !tbaa !8
  %1149 = getelementptr inbounds [2 x %struct.LIST], ptr %1148, i64 0, i64 1, i32 1
  %1150 = load ptr, ptr %1149, align 8, !tbaa !5
  %1151 = icmp eq ptr %1150, %1148
  br i1 %1151, label %1157, label %1152

1152:                                             ; preds = %1147
  store ptr %1150, ptr @zz_res, align 8, !tbaa !8
  %1153 = getelementptr inbounds [2 x %struct.LIST], ptr %1148, i64 0, i64 1
  %1154 = load ptr, ptr %1153, align 8, !tbaa !5
  %1155 = getelementptr inbounds [2 x %struct.LIST], ptr %1150, i64 0, i64 1
  store ptr %1154, ptr %1155, align 8, !tbaa !5
  %1156 = getelementptr inbounds [2 x %struct.LIST], ptr %1154, i64 0, i64 1, i32 1
  store ptr %1150, ptr %1156, align 8, !tbaa !5
  store ptr %1148, ptr %1149, align 8, !tbaa !5
  store ptr %1148, ptr %1153, align 8, !tbaa !5
  br label %1157

1157:                                             ; preds = %1147, %1152
  store ptr %1148, ptr @zz_hold, align 8, !tbaa !8
  %1158 = getelementptr inbounds %struct.LIST, ptr %1148, i64 0, i32 1
  %1159 = load ptr, ptr %1158, align 8, !tbaa !5
  %1160 = icmp eq ptr %1159, %1148
  br i1 %1160, label %1169, label %1161

1161:                                             ; preds = %1157
  store ptr %1159, ptr @zz_res, align 8, !tbaa !8
  %1162 = load ptr, ptr %1148, align 8, !tbaa !5
  store ptr %1162, ptr %1159, align 8, !tbaa !5
  %1163 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1164 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1165 = load ptr, ptr %1164, align 8, !tbaa !5
  %1166 = getelementptr inbounds %struct.LIST, ptr %1165, i64 0, i32 1
  store ptr %1163, ptr %1166, align 8, !tbaa !5
  %1167 = getelementptr inbounds %struct.LIST, ptr %1164, i64 0, i32 1
  store ptr %1164, ptr %1167, align 8, !tbaa !5
  store ptr %1164, ptr %1164, align 8, !tbaa !5
  %1168 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1169

1169:                                             ; preds = %1157, %1161
  %1170 = phi ptr [ %1148, %1157 ], [ %1168, %1161 ]
  store ptr %1170, ptr @zz_hold, align 8, !tbaa !8
  %1171 = getelementptr inbounds %struct.word_type, ptr %1170, i64 0, i32 1
  %1172 = load i8, ptr %1171, align 8, !tbaa !5
  %1173 = add i8 %1172, -11
  %1174 = icmp ult i8 %1173, 2
  %1175 = getelementptr inbounds %struct.word_type, ptr %1170, i64 0, i32 1, i32 0, i32 1
  %1176 = zext i8 %1172 to i64
  %1177 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1176
  %1178 = select i1 %1174, ptr %1175, ptr %1177
  %1179 = load i8, ptr %1178, align 1, !tbaa !5
  %1180 = zext i8 %1179 to i32
  store i32 %1180, ptr @zz_size, align 4, !tbaa !10
  %1181 = zext i8 %1179 to i64
  %1182 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1181
  %1183 = load ptr, ptr %1182, align 8, !tbaa !8
  store ptr %1183, ptr %1170, align 8, !tbaa !5
  %1184 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1185 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1186
  store ptr %1184, ptr %1187, align 8, !tbaa !8
  %1188 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1189 = getelementptr inbounds [2 x %struct.LIST], ptr %1188, i64 0, i64 1, i32 1
  %1190 = load ptr, ptr %1189, align 8, !tbaa !5
  %1191 = icmp eq ptr %1190, %1188
  br i1 %1191, label %1142, label %1147

1192:                                             ; preds = %1142, %1214
  %1193 = phi ptr [ %1235, %1214 ], [ %1145, %1142 ]
  store ptr %1193, ptr @xx_link, align 8, !tbaa !8
  %1194 = getelementptr inbounds [2 x %struct.LIST], ptr %1193, i64 0, i64 1, i32 1
  %1195 = load ptr, ptr %1194, align 8, !tbaa !5
  %1196 = icmp eq ptr %1195, %1193
  br i1 %1196, label %1202, label %1197

1197:                                             ; preds = %1192
  store ptr %1195, ptr @zz_res, align 8, !tbaa !8
  %1198 = getelementptr inbounds [2 x %struct.LIST], ptr %1193, i64 0, i64 1
  %1199 = load ptr, ptr %1198, align 8, !tbaa !5
  %1200 = getelementptr inbounds [2 x %struct.LIST], ptr %1195, i64 0, i64 1
  store ptr %1199, ptr %1200, align 8, !tbaa !5
  %1201 = getelementptr inbounds [2 x %struct.LIST], ptr %1199, i64 0, i64 1, i32 1
  store ptr %1195, ptr %1201, align 8, !tbaa !5
  store ptr %1193, ptr %1194, align 8, !tbaa !5
  store ptr %1193, ptr %1198, align 8, !tbaa !5
  br label %1202

1202:                                             ; preds = %1192, %1197
  store ptr %1193, ptr @zz_hold, align 8, !tbaa !8
  %1203 = getelementptr inbounds %struct.LIST, ptr %1193, i64 0, i32 1
  %1204 = load ptr, ptr %1203, align 8, !tbaa !5
  %1205 = icmp eq ptr %1204, %1193
  br i1 %1205, label %1214, label %1206

1206:                                             ; preds = %1202
  store ptr %1204, ptr @zz_res, align 8, !tbaa !8
  %1207 = load ptr, ptr %1193, align 8, !tbaa !5
  store ptr %1207, ptr %1204, align 8, !tbaa !5
  %1208 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1209 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1210 = load ptr, ptr %1209, align 8, !tbaa !5
  %1211 = getelementptr inbounds %struct.LIST, ptr %1210, i64 0, i32 1
  store ptr %1208, ptr %1211, align 8, !tbaa !5
  %1212 = getelementptr inbounds %struct.LIST, ptr %1209, i64 0, i32 1
  store ptr %1209, ptr %1212, align 8, !tbaa !5
  store ptr %1209, ptr %1209, align 8, !tbaa !5
  %1213 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1214

1214:                                             ; preds = %1202, %1206
  %1215 = phi ptr [ %1193, %1202 ], [ %1213, %1206 ]
  store ptr %1215, ptr @zz_hold, align 8, !tbaa !8
  %1216 = getelementptr inbounds %struct.word_type, ptr %1215, i64 0, i32 1
  %1217 = load i8, ptr %1216, align 8, !tbaa !5
  %1218 = add i8 %1217, -11
  %1219 = icmp ult i8 %1218, 2
  %1220 = getelementptr inbounds %struct.word_type, ptr %1215, i64 0, i32 1, i32 0, i32 1
  %1221 = zext i8 %1217 to i64
  %1222 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1221
  %1223 = select i1 %1219, ptr %1220, ptr %1222
  %1224 = load i8, ptr %1223, align 1, !tbaa !5
  %1225 = zext i8 %1224 to i32
  store i32 %1225, ptr @zz_size, align 4, !tbaa !10
  %1226 = zext i8 %1224 to i64
  %1227 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1226
  %1228 = load ptr, ptr %1227, align 8, !tbaa !8
  store ptr %1228, ptr %1215, align 8, !tbaa !5
  %1229 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1230 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1231
  store ptr %1229, ptr %1232, align 8, !tbaa !8
  %1233 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1234 = getelementptr inbounds %struct.LIST, ptr %1233, i64 0, i32 1
  %1235 = load ptr, ptr %1234, align 8, !tbaa !5
  %1236 = icmp eq ptr %1235, %1233
  br i1 %1236, label %1237, label %1192

1237:                                             ; preds = %1214, %1142
  %1238 = phi ptr [ %1143, %1142 ], [ %1233, %1214 ]
  store ptr %1238, ptr @zz_hold, align 8, !tbaa !8
  %1239 = getelementptr inbounds %struct.word_type, ptr %1238, i64 0, i32 1
  %1240 = load i8, ptr %1239, align 8, !tbaa !5
  %1241 = add i8 %1240, -11
  %1242 = icmp ult i8 %1241, 2
  %1243 = getelementptr inbounds %struct.word_type, ptr %1238, i64 0, i32 1, i32 0, i32 1
  %1244 = zext i8 %1240 to i64
  %1245 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1244
  %1246 = select i1 %1242, ptr %1243, ptr %1245
  %1247 = load i8, ptr %1246, align 1, !tbaa !5
  %1248 = zext i8 %1247 to i32
  store i32 %1248, ptr @zz_size, align 4, !tbaa !10
  %1249 = zext i8 %1247 to i64
  %1250 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1249
  %1251 = load ptr, ptr %1250, align 8, !tbaa !8
  store ptr %1251, ptr %1238, align 8, !tbaa !5
  %1252 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1253 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1254
  store ptr %1252, ptr %1255, align 8, !tbaa !8
  br label %1408

1256:                                             ; preds = %1126
  %1257 = getelementptr inbounds i8, ptr %1129, i64 42
  %1258 = load i16, ptr %1257, align 2
  %1259 = and i16 %1258, 1
  %1260 = icmp eq i16 %1259, 0
  br i1 %1260, label %2106, label %1261

1261:                                             ; preds = %1256
  %1262 = load ptr, ptr %1125, align 8, !tbaa !5
  %1263 = getelementptr inbounds %struct.LIST, ptr %1129, i64 0, i32 1
  %1264 = load ptr, ptr %1263, align 8, !tbaa !5
  %1265 = icmp eq ptr %1264, %1129
  br i1 %1265, label %1284, label %1266

1266:                                             ; preds = %1261, %1281
  %1267 = load ptr, ptr %1123, align 8, !tbaa !5
  br label %1268

1268:                                             ; preds = %1268, %1266
  %1269 = phi ptr [ %1267, %1266 ], [ %1271, %1268 ]
  %1270 = getelementptr inbounds [2 x %struct.LIST], ptr %1269, i64 0, i64 1
  %1271 = load ptr, ptr %1270, align 8, !tbaa !5
  %1272 = getelementptr inbounds %struct.word_type, ptr %1271, i64 0, i32 1
  %1273 = load i8, ptr %1272, align 8, !tbaa !5
  %1274 = icmp eq i8 %1273, 0
  br i1 %1274, label %1268, label %1275

1275:                                             ; preds = %1268
  %1276 = getelementptr inbounds %struct.head_type, ptr %1271, i64 0, i32 8
  %1277 = load ptr, ptr %1276, align 8, !tbaa !5
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1281, label %1279

1279:                                             ; preds = %1275
  %1280 = call i32 @DisposeObject(ptr noundef nonnull %1277) #5
  store ptr null, ptr %1276, align 8, !tbaa !5
  br label %1281

1281:                                             ; preds = %1279, %1275
  call void @DetachGalley(ptr noundef nonnull %1271)
  call void @KillGalley(ptr noundef nonnull %1271, i32 noundef 0) #5
  %1282 = load ptr, ptr %1263, align 8, !tbaa !5
  %1283 = icmp eq ptr %1282, %1129
  br i1 %1283, label %1284, label %1266

1284:                                             ; preds = %1281, %1261
  store ptr %1129, ptr @xx_hold, align 8, !tbaa !8
  %1285 = getelementptr inbounds [2 x %struct.LIST], ptr %1129, i64 0, i64 1, i32 1
  %1286 = load ptr, ptr %1285, align 8, !tbaa !5
  %1287 = icmp eq ptr %1286, %1129
  br i1 %1287, label %1382, label %1292

1288:                                             ; preds = %1314
  %1289 = getelementptr inbounds %struct.LIST, ptr %1333, i64 0, i32 1
  %1290 = load ptr, ptr %1289, align 8, !tbaa !5
  %1291 = icmp eq ptr %1290, %1333
  br i1 %1291, label %1382, label %1337

1292:                                             ; preds = %1284, %1314
  %1293 = phi ptr [ %1335, %1314 ], [ %1286, %1284 ]
  store ptr %1293, ptr @xx_link, align 8, !tbaa !8
  %1294 = getelementptr inbounds [2 x %struct.LIST], ptr %1293, i64 0, i64 1, i32 1
  %1295 = load ptr, ptr %1294, align 8, !tbaa !5
  %1296 = icmp eq ptr %1295, %1293
  br i1 %1296, label %1302, label %1297

1297:                                             ; preds = %1292
  store ptr %1295, ptr @zz_res, align 8, !tbaa !8
  %1298 = getelementptr inbounds [2 x %struct.LIST], ptr %1293, i64 0, i64 1
  %1299 = load ptr, ptr %1298, align 8, !tbaa !5
  %1300 = getelementptr inbounds [2 x %struct.LIST], ptr %1295, i64 0, i64 1
  store ptr %1299, ptr %1300, align 8, !tbaa !5
  %1301 = getelementptr inbounds [2 x %struct.LIST], ptr %1299, i64 0, i64 1, i32 1
  store ptr %1295, ptr %1301, align 8, !tbaa !5
  store ptr %1293, ptr %1294, align 8, !tbaa !5
  store ptr %1293, ptr %1298, align 8, !tbaa !5
  br label %1302

1302:                                             ; preds = %1292, %1297
  store ptr %1293, ptr @zz_hold, align 8, !tbaa !8
  %1303 = getelementptr inbounds %struct.LIST, ptr %1293, i64 0, i32 1
  %1304 = load ptr, ptr %1303, align 8, !tbaa !5
  %1305 = icmp eq ptr %1304, %1293
  br i1 %1305, label %1314, label %1306

1306:                                             ; preds = %1302
  store ptr %1304, ptr @zz_res, align 8, !tbaa !8
  %1307 = load ptr, ptr %1293, align 8, !tbaa !5
  store ptr %1307, ptr %1304, align 8, !tbaa !5
  %1308 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1309 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1310 = load ptr, ptr %1309, align 8, !tbaa !5
  %1311 = getelementptr inbounds %struct.LIST, ptr %1310, i64 0, i32 1
  store ptr %1308, ptr %1311, align 8, !tbaa !5
  %1312 = getelementptr inbounds %struct.LIST, ptr %1309, i64 0, i32 1
  store ptr %1309, ptr %1312, align 8, !tbaa !5
  store ptr %1309, ptr %1309, align 8, !tbaa !5
  %1313 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1314

1314:                                             ; preds = %1302, %1306
  %1315 = phi ptr [ %1293, %1302 ], [ %1313, %1306 ]
  store ptr %1315, ptr @zz_hold, align 8, !tbaa !8
  %1316 = getelementptr inbounds %struct.word_type, ptr %1315, i64 0, i32 1
  %1317 = load i8, ptr %1316, align 8, !tbaa !5
  %1318 = add i8 %1317, -11
  %1319 = icmp ult i8 %1318, 2
  %1320 = getelementptr inbounds %struct.word_type, ptr %1315, i64 0, i32 1, i32 0, i32 1
  %1321 = zext i8 %1317 to i64
  %1322 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1321
  %1323 = select i1 %1319, ptr %1320, ptr %1322
  %1324 = load i8, ptr %1323, align 1, !tbaa !5
  %1325 = zext i8 %1324 to i32
  store i32 %1325, ptr @zz_size, align 4, !tbaa !10
  %1326 = zext i8 %1324 to i64
  %1327 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1326
  %1328 = load ptr, ptr %1327, align 8, !tbaa !8
  store ptr %1328, ptr %1315, align 8, !tbaa !5
  %1329 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1330 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1331
  store ptr %1329, ptr %1332, align 8, !tbaa !8
  %1333 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1334 = getelementptr inbounds [2 x %struct.LIST], ptr %1333, i64 0, i64 1, i32 1
  %1335 = load ptr, ptr %1334, align 8, !tbaa !5
  %1336 = icmp eq ptr %1335, %1333
  br i1 %1336, label %1288, label %1292

1337:                                             ; preds = %1288, %1359
  %1338 = phi ptr [ %1380, %1359 ], [ %1290, %1288 ]
  store ptr %1338, ptr @xx_link, align 8, !tbaa !8
  %1339 = getelementptr inbounds [2 x %struct.LIST], ptr %1338, i64 0, i64 1, i32 1
  %1340 = load ptr, ptr %1339, align 8, !tbaa !5
  %1341 = icmp eq ptr %1340, %1338
  br i1 %1341, label %1347, label %1342

1342:                                             ; preds = %1337
  store ptr %1340, ptr @zz_res, align 8, !tbaa !8
  %1343 = getelementptr inbounds [2 x %struct.LIST], ptr %1338, i64 0, i64 1
  %1344 = load ptr, ptr %1343, align 8, !tbaa !5
  %1345 = getelementptr inbounds [2 x %struct.LIST], ptr %1340, i64 0, i64 1
  store ptr %1344, ptr %1345, align 8, !tbaa !5
  %1346 = getelementptr inbounds [2 x %struct.LIST], ptr %1344, i64 0, i64 1, i32 1
  store ptr %1340, ptr %1346, align 8, !tbaa !5
  store ptr %1338, ptr %1339, align 8, !tbaa !5
  store ptr %1338, ptr %1343, align 8, !tbaa !5
  br label %1347

1347:                                             ; preds = %1337, %1342
  store ptr %1338, ptr @zz_hold, align 8, !tbaa !8
  %1348 = getelementptr inbounds %struct.LIST, ptr %1338, i64 0, i32 1
  %1349 = load ptr, ptr %1348, align 8, !tbaa !5
  %1350 = icmp eq ptr %1349, %1338
  br i1 %1350, label %1359, label %1351

1351:                                             ; preds = %1347
  store ptr %1349, ptr @zz_res, align 8, !tbaa !8
  %1352 = load ptr, ptr %1338, align 8, !tbaa !5
  store ptr %1352, ptr %1349, align 8, !tbaa !5
  %1353 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1354 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1355 = load ptr, ptr %1354, align 8, !tbaa !5
  %1356 = getelementptr inbounds %struct.LIST, ptr %1355, i64 0, i32 1
  store ptr %1353, ptr %1356, align 8, !tbaa !5
  %1357 = getelementptr inbounds %struct.LIST, ptr %1354, i64 0, i32 1
  store ptr %1354, ptr %1357, align 8, !tbaa !5
  store ptr %1354, ptr %1354, align 8, !tbaa !5
  %1358 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1359

1359:                                             ; preds = %1347, %1351
  %1360 = phi ptr [ %1338, %1347 ], [ %1358, %1351 ]
  store ptr %1360, ptr @zz_hold, align 8, !tbaa !8
  %1361 = getelementptr inbounds %struct.word_type, ptr %1360, i64 0, i32 1
  %1362 = load i8, ptr %1361, align 8, !tbaa !5
  %1363 = add i8 %1362, -11
  %1364 = icmp ult i8 %1363, 2
  %1365 = getelementptr inbounds %struct.word_type, ptr %1360, i64 0, i32 1, i32 0, i32 1
  %1366 = zext i8 %1362 to i64
  %1367 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1366
  %1368 = select i1 %1364, ptr %1365, ptr %1367
  %1369 = load i8, ptr %1368, align 1, !tbaa !5
  %1370 = zext i8 %1369 to i32
  store i32 %1370, ptr @zz_size, align 4, !tbaa !10
  %1371 = zext i8 %1369 to i64
  %1372 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1371
  %1373 = load ptr, ptr %1372, align 8, !tbaa !8
  store ptr %1373, ptr %1360, align 8, !tbaa !5
  %1374 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1375 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1376
  store ptr %1374, ptr %1377, align 8, !tbaa !8
  %1378 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1379 = getelementptr inbounds %struct.LIST, ptr %1378, i64 0, i32 1
  %1380 = load ptr, ptr %1379, align 8, !tbaa !5
  %1381 = icmp eq ptr %1380, %1378
  br i1 %1381, label %1382, label %1337

1382:                                             ; preds = %1359, %1284, %1288
  %1383 = phi ptr [ %1290, %1288 ], [ %1129, %1284 ], [ %1378, %1359 ]
  store ptr %1383, ptr @zz_hold, align 8, !tbaa !8
  %1384 = getelementptr inbounds %struct.word_type, ptr %1383, i64 0, i32 1
  %1385 = load i8, ptr %1384, align 8, !tbaa !5
  %1386 = add i8 %1385, -11
  %1387 = icmp ult i8 %1386, 2
  %1388 = getelementptr inbounds %struct.word_type, ptr %1383, i64 0, i32 1, i32 0, i32 1
  %1389 = zext i8 %1385 to i64
  %1390 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1389
  %1391 = select i1 %1387, ptr %1388, ptr %1390
  %1392 = load i8, ptr %1391, align 1, !tbaa !5
  %1393 = zext i8 %1392 to i32
  store i32 %1393, ptr @zz_size, align 4, !tbaa !10
  %1394 = zext i8 %1392 to i64
  %1395 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1394
  %1396 = load ptr, ptr %1395, align 8, !tbaa !8
  store ptr %1396, ptr %1383, align 8, !tbaa !5
  %1397 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1398 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1399 = sext i32 %1398 to i64
  %1400 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1399
  store ptr %1397, ptr %1400, align 8, !tbaa !8
  br label %1408

1401:                                             ; preds = %1126
  %1402 = getelementptr inbounds %struct.gapobj_type, ptr %1129, i64 0, i32 3
  %1403 = load i16, ptr %1402, align 4
  %1404 = and i16 %1403, 512
  %1405 = icmp eq i16 %1404, 0
  br i1 %1405, label %1406, label %1408

1406:                                             ; preds = %1401
  %1407 = load ptr, ptr %0, align 8, !tbaa !5
  br label %1408

1408:                                             ; preds = %1126, %1237, %1382, %1406, %1401
  %1409 = phi ptr [ %1125, %1401 ], [ %1407, %1406 ], [ %1262, %1382 ], [ %1138, %1237 ], [ %1125, %1126 ]
  %1410 = getelementptr inbounds %struct.LIST, ptr %1409, i64 0, i32 1
  %1411 = load ptr, ptr %1410, align 8, !tbaa !5
  %1412 = icmp eq ptr %1411, %0
  br i1 %1412, label %1413, label %1124

1413:                                             ; preds = %1408
  %1414 = load i8, ptr %1111, align 8, !tbaa !5
  br label %1415

1415:                                             ; preds = %1413, %1118
  %1416 = phi i8 [ %1414, %1413 ], [ %774, %1118 ]
  %1417 = icmp eq i8 %1416, 18
  br i1 %1417, label %1418, label %1420

1418:                                             ; preds = %1415
  %1419 = call i32 @VerticalHyphenate(ptr noundef nonnull %775) #5
  br label %1420

1420:                                             ; preds = %1415, %1418, %1110
  store ptr null, ptr %10, align 8, !tbaa !8
  call void @Constrained(ptr noundef %468, ptr noundef nonnull %8, i32 noundef %49, ptr noundef nonnull %10) #5
  %1421 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 3
  %1422 = getelementptr inbounds [2 x i32], ptr %1421, i64 0, i64 %63
  %1423 = load i32, ptr %1422, align 4, !tbaa !5
  %1424 = load i32, ptr %8, align 4, !tbaa !12
  %1425 = icmp sgt i32 %1423, %1424
  br i1 %1425, label %1436, label %1426

1426:                                             ; preds = %1420
  %1427 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 3, i32 1
  %1428 = getelementptr inbounds [2 x i32], ptr %1427, i64 0, i64 %63
  %1429 = load i32, ptr %1428, align 4, !tbaa !5
  %1430 = add nsw i32 %1429, %1423
  %1431 = load i32, ptr %53, align 4, !tbaa !14
  %1432 = icmp sgt i32 %1430, %1431
  %1433 = load i32, ptr %54, align 4
  %1434 = icmp sgt i32 %1429, %1433
  %1435 = select i1 %1432, i1 true, i1 %1434
  br i1 %1435, label %1436, label %1491

1436:                                             ; preds = %1426, %1420
  %1437 = load i16, ptr %45, align 2
  %1438 = and i16 %1437, 4096
  %1439 = icmp eq i16 %1438, 0
  br i1 %1439, label %1469, label %1440

1440:                                             ; preds = %1436
  %1441 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 3, i32 1
  %1442 = getelementptr inbounds [2 x i32], ptr %1441, i64 0, i64 %63
  %1443 = load i32, ptr %1442, align 4, !tbaa !5
  %1444 = add nsw i32 %1443, %1423
  %1445 = icmp sgt i32 %1444, 0
  br i1 %1445, label %1446, label %1469

1446:                                             ; preds = %1440
  %1447 = call i32 @ScaleToConstraint(i32 noundef %1423, i32 noundef %1443, ptr noundef nonnull %8) #5
  %1448 = icmp sgt i32 %1447, 64
  %1449 = load i32, ptr %1422, align 4, !tbaa !5
  br i1 %1448, label %1450, label %1469

1450:                                             ; preds = %1446
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #5
  %1451 = load i32, ptr %1442, align 4, !tbaa !5
  %1452 = add nsw i32 %1451, %1449
  %1453 = sitofp i32 %1452 to float
  %1454 = fdiv float %1453, 5.670000e+02
  %1455 = fpext float %1454 to double
  %1456 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1455) #5
  %1457 = load i32, ptr %53, align 4, !tbaa !14
  %1458 = sitofp i32 %1457 to float
  %1459 = fdiv float %1458, 5.670000e+02
  %1460 = fpext float %1459 to double
  %1461 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1460) #5
  br i1 %52, label %1464, label %1462

1462:                                             ; preds = %1450
  %1463 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %1111, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @.str.17) #5
  br label %1466

1464:                                             ; preds = %1450
  %1465 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 5, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %1111, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @.str.17) #5
  br label %1466

1466:                                             ; preds = %1464, %1462
  %1467 = phi i32 [ 0, %1464 ], [ 1, %1462 ]
  %1468 = call fastcc ptr @InterposeScale(ptr noundef nonnull %775, i32 noundef %1447, i32 noundef %1467)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #5
  br label %1491

1469:                                             ; preds = %1440, %1436, %1446
  %1470 = phi i32 [ %1423, %1440 ], [ %1423, %1436 ], [ %1449, %1446 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %15) #5
  %1471 = getelementptr inbounds %struct.word_type, ptr %775, i64 0, i32 3, i32 1
  %1472 = getelementptr inbounds [2 x i32], ptr %1471, i64 0, i64 %63
  %1473 = load i32, ptr %1472, align 4, !tbaa !5
  %1474 = add nsw i32 %1473, %1470
  %1475 = icmp sgt i32 %1474, 0
  br i1 %1475, label %1476, label %1490

1476:                                             ; preds = %1469
  %1477 = sitofp i32 %1474 to float
  %1478 = fdiv float %1477, 5.670000e+02
  %1479 = fpext float %1478 to double
  %1480 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1479) #5
  %1481 = load i32, ptr %53, align 4, !tbaa !14
  %1482 = sitofp i32 %1481 to float
  %1483 = fdiv float %1482, 5.670000e+02
  %1484 = fpext float %1483 to double
  %1485 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1484) #5
  br i1 %52, label %1488, label %1486

1486:                                             ; preds = %1476
  %1487 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 12, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %1111, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  br label %1490

1488:                                             ; preds = %1476
  %1489 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 13, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %1111, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  br label %1490

1490:                                             ; preds = %1469, %1488, %1486
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #5
  br label %2029

1491:                                             ; preds = %1466, %1426
  %1492 = phi ptr [ %775, %1426 ], [ %1468, %1466 ]
  %1493 = getelementptr inbounds i8, ptr %1492, i64 52
  %1494 = getelementptr inbounds %struct.word_type, ptr %1492, i64 0, i32 3, i32 1, i64 4
  %1495 = select i1 %52, ptr %1494, ptr %58
  %1496 = select i1 %52, ptr %1493, ptr %57
  %1497 = load i32, ptr %1496, align 4, !tbaa !5
  %1498 = load i32, ptr %1495, align 4, !tbaa !5
  call void @Constrained(ptr noundef %468, ptr noundef nonnull %8, i32 noundef %64, ptr noundef nonnull %11) #5
  %1499 = load i32, ptr %8, align 4, !tbaa !12
  %1500 = icmp sgt i32 %1497, %1499
  br i1 %1500, label %1508, label %1501

1501:                                             ; preds = %1491
  %1502 = add nsw i32 %1498, %1497
  %1503 = load i32, ptr %53, align 4, !tbaa !14
  %1504 = icmp sgt i32 %1502, %1503
  %1505 = load i32, ptr %54, align 4
  %1506 = icmp sgt i32 %1498, %1505
  %1507 = select i1 %1504, i1 true, i1 %1506
  br i1 %1507, label %1508, label %1536

1508:                                             ; preds = %1501, %1491
  %1509 = load i16, ptr %45, align 2
  %1510 = and i16 %1509, 4096
  %1511 = icmp eq i16 %1510, 0
  br i1 %1511, label %2029, label %1512

1512:                                             ; preds = %1508
  %1513 = add nsw i32 %1498, %1497
  %1514 = icmp sgt i32 %1513, 0
  br i1 %1514, label %1515, label %2029

1515:                                             ; preds = %1512
  %1516 = call i32 @ScaleToConstraint(i32 noundef %1497, i32 noundef %1498, ptr noundef nonnull %8) #5
  %1517 = icmp sgt i32 %1516, 64
  br i1 %1517, label %1518, label %2029

1518:                                             ; preds = %1515
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %17) #5
  %1519 = sitofp i32 %1513 to float
  %1520 = fdiv float %1519, 5.670000e+02
  %1521 = fpext float %1520 to double
  %1522 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1521) #5
  %1523 = load i32, ptr %53, align 4, !tbaa !14
  %1524 = sitofp i32 %1523 to float
  %1525 = fdiv float %1524, 5.670000e+02
  %1526 = fpext float %1525 to double
  %1527 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1526) #5
  %1528 = getelementptr inbounds %struct.word_type, ptr %1492, i64 0, i32 1
  br i1 %65, label %1531, label %1529

1529:                                             ; preds = %1518
  %1530 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 6, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %1528, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull @.str.17) #5
  br label %1533

1531:                                             ; preds = %1518
  %1532 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 7, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %1528, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull @.str.17) #5
  br label %1533

1533:                                             ; preds = %1529, %1531
  %1534 = phi i32 [ 1, %1529 ], [ 0, %1531 ]
  %1535 = call fastcc ptr @InterposeScale(ptr noundef %1492, i32 noundef %1516, i32 noundef %1534)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16) #5
  br label %1536

1536:                                             ; preds = %1533, %1501
  %1537 = phi ptr [ %1535, %1533 ], [ %1492, %1501 ]
  %1538 = getelementptr inbounds %struct.word_type, ptr %1537, i64 0, i32 3
  %1539 = getelementptr inbounds [2 x i32], ptr %1538, i64 0, i64 %63
  %1540 = load i32, ptr %1539, align 4, !tbaa !5
  %1541 = getelementptr inbounds %struct.word_type, ptr %1537, i64 0, i32 3, i32 1
  %1542 = getelementptr inbounds [2 x i32], ptr %1541, i64 0, i64 %63
  %1543 = load i32, ptr %1542, align 4, !tbaa !5
  call void @AdjustSize(ptr noundef %468, i32 noundef %1540, i32 noundef %1543, i32 noundef %49) #5
  call void @AdjustSize(ptr noundef %468, i32 noundef %1497, i32 noundef %1498, i32 noundef %64) #5
  call void @Constrained(ptr noundef %311, ptr noundef nonnull %8, i32 noundef %49, ptr noundef nonnull %10) #5
  %1544 = load ptr, ptr %333, align 8, !tbaa !5
  br label %1545

1545:                                             ; preds = %1545, %1536
  %1546 = phi ptr [ %1544, %1536 ], [ %1548, %1545 ]
  %1547 = getelementptr inbounds [2 x %struct.LIST], ptr %1546, i64 0, i64 1
  %1548 = load ptr, ptr %1547, align 8, !tbaa !5
  %1549 = getelementptr inbounds %struct.word_type, ptr %1548, i64 0, i32 1
  %1550 = load i8, ptr %1549, align 8, !tbaa !5
  %1551 = icmp eq i8 %1550, 0
  br i1 %1551, label %1545, label %1552

1552:                                             ; preds = %1545
  %1553 = add i8 %1550, -119
  %1554 = icmp ult i8 %1553, 20
  br i1 %1554, label %1555, label %1558

1555:                                             ; preds = %1552
  %1556 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1557 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1556, ptr noundef nonnull @.str.21) #5
  br label %1558

1558:                                             ; preds = %1555, %1552
  %1559 = getelementptr inbounds %struct.word_type, ptr %1548, i64 0, i32 3
  %1560 = getelementptr inbounds [2 x i32], ptr %1559, i64 0, i64 %63
  %1561 = load i32, ptr %1560, align 4, !tbaa !5
  %1562 = icmp sgt i32 %1561, -1
  br i1 %1562, label %1563, label %1568

1563:                                             ; preds = %1558
  %1564 = getelementptr inbounds %struct.word_type, ptr %1548, i64 0, i32 3, i32 1
  %1565 = getelementptr inbounds [2 x i32], ptr %1564, i64 0, i64 %63
  %1566 = load i32, ptr %1565, align 4, !tbaa !5
  %1567 = icmp sgt i32 %1566, -1
  br i1 %1567, label %1572, label %1568

1568:                                             ; preds = %1563, %1558
  %1569 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1570 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1569, ptr noundef nonnull @.str.22) #5
  %1571 = load i32, ptr %1560, align 4, !tbaa !5
  br label %1572

1572:                                             ; preds = %1568, %1563
  %1573 = phi i32 [ %1571, %1568 ], [ %1561, %1563 ]
  %1574 = load i32, ptr %8, align 4, !tbaa !12
  %1575 = icmp sgt i32 %1573, %1574
  br i1 %1575, label %1586, label %1576

1576:                                             ; preds = %1572
  %1577 = getelementptr inbounds %struct.word_type, ptr %1548, i64 0, i32 3, i32 1
  %1578 = getelementptr inbounds [2 x i32], ptr %1577, i64 0, i64 %63
  %1579 = load i32, ptr %1578, align 4, !tbaa !5
  %1580 = add nsw i32 %1579, %1573
  %1581 = load i32, ptr %53, align 4, !tbaa !14
  %1582 = icmp sgt i32 %1580, %1581
  %1583 = load i32, ptr %54, align 4
  %1584 = icmp sgt i32 %1579, %1583
  %1585 = select i1 %1582, i1 true, i1 %1584
  br i1 %1585, label %1586, label %1649

1586:                                             ; preds = %1576, %1572
  %1587 = load i16, ptr %45, align 2
  %1588 = and i16 %1587, 4096
  %1589 = icmp eq i16 %1588, 0
  br i1 %1589, label %1625, label %1590

1590:                                             ; preds = %1586
  %1591 = getelementptr inbounds %struct.word_type, ptr %1548, i64 0, i32 3, i32 1
  %1592 = getelementptr inbounds [2 x i32], ptr %1591, i64 0, i64 %63
  %1593 = load i32, ptr %1592, align 4, !tbaa !5
  %1594 = add nsw i32 %1593, %1573
  %1595 = icmp sgt i32 %1594, 0
  br i1 %1595, label %1596, label %1625

1596:                                             ; preds = %1590
  %1597 = load ptr, ptr %66, align 8, !tbaa !5
  %1598 = load ptr, ptr %10, align 8, !tbaa !8
  %1599 = icmp eq ptr %1597, %1598
  br i1 %1599, label %1625, label %1600

1600:                                             ; preds = %1596
  %1601 = call i32 @ScaleToConstraint(i32 noundef %1573, i32 noundef %1593, ptr noundef nonnull %8) #5
  %1602 = icmp sgt i32 %1601, 64
  br i1 %1602, label %1603, label %1625

1603:                                             ; preds = %1600
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %19) #5
  %1604 = load i32, ptr %1560, align 4, !tbaa !5
  %1605 = load i32, ptr %1592, align 4, !tbaa !5
  %1606 = add nsw i32 %1605, %1604
  %1607 = sitofp i32 %1606 to float
  %1608 = fdiv float %1607, 5.670000e+02
  %1609 = fpext float %1608 to double
  %1610 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1609) #5
  %1611 = load i32, ptr %53, align 4, !tbaa !14
  %1612 = sitofp i32 %1611 to float
  %1613 = fdiv float %1612, 5.670000e+02
  %1614 = fpext float %1613 to double
  %1615 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1614) #5
  %1616 = getelementptr inbounds %struct.word_type, ptr %1537, i64 0, i32 1
  br i1 %52, label %1619, label %1617

1617:                                             ; preds = %1603
  %1618 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 8, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %1616, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull @.str.17) #5
  br label %1621

1619:                                             ; preds = %1603
  %1620 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %1616, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull @.str.17) #5
  br label %1621

1621:                                             ; preds = %1619, %1617
  %1622 = phi i32 [ 0, %1619 ], [ 1, %1617 ]
  %1623 = call fastcc ptr @InterposeWideOrHigh(ptr noundef nonnull %1548, i32 noundef %1622)
  %1624 = call fastcc ptr @InterposeScale(ptr noundef %1623, i32 noundef %1601, i32 noundef %1622)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %18) #5
  br label %1649

1625:                                             ; preds = %1596, %1590, %1586, %1600
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %20) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %21) #5
  %1626 = load ptr, ptr %10, align 8, !tbaa !8
  store ptr %1626, ptr %66, align 8, !tbaa !5
  %1627 = load i32, ptr %1560, align 4, !tbaa !5
  %1628 = getelementptr inbounds %struct.word_type, ptr %1548, i64 0, i32 3, i32 1
  %1629 = getelementptr inbounds [2 x i32], ptr %1628, i64 0, i64 %63
  %1630 = load i32, ptr %1629, align 4, !tbaa !5
  %1631 = add nsw i32 %1630, %1627
  %1632 = icmp sgt i32 %1631, 0
  br i1 %1632, label %1633, label %1648

1633:                                             ; preds = %1625
  %1634 = sitofp i32 %1631 to float
  %1635 = fdiv float %1634, 5.670000e+02
  %1636 = fpext float %1635 to double
  %1637 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1636) #5
  %1638 = load i32, ptr %53, align 4, !tbaa !14
  %1639 = sitofp i32 %1638 to float
  %1640 = fdiv float %1639, 5.670000e+02
  %1641 = fpext float %1640 to double
  %1642 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1641) #5
  %1643 = getelementptr inbounds %struct.word_type, ptr %1537, i64 0, i32 1
  br i1 %52, label %1646, label %1644

1644:                                             ; preds = %1633
  %1645 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 14, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %1643, ptr noundef nonnull %20, ptr noundef nonnull %21) #5
  br label %1648

1646:                                             ; preds = %1633
  %1647 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 15, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %1643, ptr noundef nonnull %20, ptr noundef nonnull %21) #5
  br label %1648

1648:                                             ; preds = %1625, %1646, %1644
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %21) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %20) #5
  br label %2029

1649:                                             ; preds = %1621, %1576
  %1650 = load ptr, ptr %10, align 8, !tbaa !8
  store ptr %1650, ptr %66, align 8, !tbaa !5
  call void @Constrained(ptr noundef %311, ptr noundef nonnull %8, i32 noundef %64, ptr noundef nonnull %11) #5
  %1651 = load ptr, ptr %333, align 8, !tbaa !5
  br label %1652

1652:                                             ; preds = %1652, %1649
  %1653 = phi ptr [ %1651, %1649 ], [ %1655, %1652 ]
  %1654 = getelementptr inbounds [2 x %struct.LIST], ptr %1653, i64 0, i64 1
  %1655 = load ptr, ptr %1654, align 8, !tbaa !5
  %1656 = getelementptr inbounds %struct.word_type, ptr %1655, i64 0, i32 1
  %1657 = load i8, ptr %1656, align 8, !tbaa !5
  %1658 = icmp eq i8 %1657, 0
  br i1 %1658, label %1652, label %1659

1659:                                             ; preds = %1652
  %1660 = add i8 %1657, -119
  %1661 = icmp ult i8 %1660, 20
  br i1 %1661, label %1662, label %1665

1662:                                             ; preds = %1659
  %1663 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1664 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1663, ptr noundef nonnull @.str.21) #5
  br label %1665

1665:                                             ; preds = %1662, %1659
  %1666 = getelementptr inbounds %struct.word_type, ptr %1655, i64 0, i32 3
  %1667 = getelementptr inbounds [2 x i32], ptr %1666, i64 0, i64 %67
  %1668 = load i32, ptr %1667, align 4, !tbaa !5
  %1669 = icmp sgt i32 %1668, -1
  br i1 %1669, label %1670, label %1675

1670:                                             ; preds = %1665
  %1671 = getelementptr inbounds %struct.word_type, ptr %1655, i64 0, i32 3, i32 1
  %1672 = getelementptr inbounds [2 x i32], ptr %1671, i64 0, i64 %67
  %1673 = load i32, ptr %1672, align 4, !tbaa !5
  %1674 = icmp sgt i32 %1673, -1
  br i1 %1674, label %1679, label %1675

1675:                                             ; preds = %1670, %1665
  %1676 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1677 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1676, ptr noundef nonnull @.str.23) #5
  %1678 = load i32, ptr %1667, align 4, !tbaa !5
  br label %1679

1679:                                             ; preds = %1675, %1670
  %1680 = phi i32 [ %1678, %1675 ], [ %1668, %1670 ]
  %1681 = load i32, ptr %8, align 4, !tbaa !12
  %1682 = icmp sgt i32 %1680, %1681
  br i1 %1682, label %1693, label %1683

1683:                                             ; preds = %1679
  %1684 = getelementptr inbounds %struct.word_type, ptr %1655, i64 0, i32 3, i32 1
  %1685 = getelementptr inbounds [2 x i32], ptr %1684, i64 0, i64 %67
  %1686 = load i32, ptr %1685, align 4, !tbaa !5
  %1687 = add nsw i32 %1686, %1680
  %1688 = load i32, ptr %53, align 4, !tbaa !14
  %1689 = icmp sgt i32 %1687, %1688
  %1690 = load i32, ptr %54, align 4
  %1691 = icmp sgt i32 %1686, %1690
  %1692 = select i1 %1689, i1 true, i1 %1691
  br i1 %1692, label %1693, label %1729

1693:                                             ; preds = %1683, %1679
  %1694 = load i16, ptr %45, align 2
  %1695 = and i16 %1694, 4096
  %1696 = icmp eq i16 %1695, 0
  br i1 %1696, label %2029, label %1697

1697:                                             ; preds = %1693
  %1698 = getelementptr inbounds %struct.word_type, ptr %1655, i64 0, i32 3, i32 1
  %1699 = getelementptr inbounds [2 x i32], ptr %1698, i64 0, i64 %67
  %1700 = load i32, ptr %1699, align 4, !tbaa !5
  %1701 = add nsw i32 %1700, %1680
  %1702 = icmp sgt i32 %1701, 0
  br i1 %1702, label %1703, label %2029

1703:                                             ; preds = %1697
  %1704 = call i32 @ScaleToConstraint(i32 noundef %1680, i32 noundef %1700, ptr noundef nonnull %8) #5
  %1705 = icmp sgt i32 %1704, 64
  br i1 %1705, label %1706, label %2029

1706:                                             ; preds = %1703
  %1707 = getelementptr inbounds [2 x i32], ptr %1698, i64 0, i64 %67
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %23) #5
  %1708 = load i32, ptr %1667, align 4, !tbaa !5
  %1709 = load i32, ptr %1707, align 4, !tbaa !5
  %1710 = add nsw i32 %1709, %1708
  %1711 = sitofp i32 %1710 to float
  %1712 = fdiv float %1711, 5.670000e+02
  %1713 = fpext float %1712 to double
  %1714 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1713) #5
  %1715 = load i32, ptr %53, align 4, !tbaa !14
  %1716 = sitofp i32 %1715 to float
  %1717 = fdiv float %1716, 5.670000e+02
  %1718 = fpext float %1717 to double
  %1719 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %1718) #5
  %1720 = getelementptr inbounds %struct.word_type, ptr %1537, i64 0, i32 1
  br i1 %65, label %1723, label %1721

1721:                                             ; preds = %1706
  %1722 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 10, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %1720, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull @.str.17) #5
  br label %1725

1723:                                             ; preds = %1706
  %1724 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 19, i32 noundef 11, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %1720, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull @.str.17) #5
  br label %1725

1725:                                             ; preds = %1721, %1723
  %1726 = phi i32 [ 1, %1721 ], [ 0, %1723 ]
  %1727 = call fastcc ptr @InterposeWideOrHigh(ptr noundef nonnull %1655, i32 noundef %1726)
  %1728 = call fastcc ptr @InterposeScale(ptr noundef %1727, i32 noundef %1704, i32 noundef %1726)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %22) #5
  br label %1729

1729:                                             ; preds = %1683, %1725
  %1730 = getelementptr inbounds [2 x %struct.LIST], ptr %333, i64 0, i64 1, i32 1
  %1731 = load i16, ptr %344, align 2
  %1732 = and i16 %1731, 8
  %1733 = icmp eq i16 %1732, 0
  br i1 %1733, label %1734, label %2154

1734:                                             ; preds = %1729
  %1735 = and i16 %1731, 16
  %1736 = icmp eq i16 %1735, 0
  br i1 %1736, label %1744, label %1737

1737:                                             ; preds = %1734
  %1738 = getelementptr inbounds %struct.word_type, ptr %333, i64 0, i32 3
  %1739 = getelementptr inbounds [2 x i32], ptr %1738, i64 0, i64 %67
  %1740 = load i32, ptr %1739, align 4, !tbaa !5
  %1741 = getelementptr inbounds %struct.word_type, ptr %333, i64 0, i32 3, i32 1
  %1742 = getelementptr inbounds [2 x i32], ptr %1741, i64 0, i64 %67
  %1743 = load i32, ptr %1742, align 4, !tbaa !5
  call void @AdjustSize(ptr noundef nonnull %311, i32 noundef %1740, i32 noundef %1743, i32 noundef %64) #5
  br label %2154

1744:                                             ; preds = %1734
  %1745 = load ptr, ptr %333, align 8, !tbaa !5
  br label %1746

1746:                                             ; preds = %1746, %1744
  %1747 = phi ptr [ %1745, %1744 ], [ %1749, %1746 ]
  %1748 = getelementptr inbounds [2 x %struct.LIST], ptr %1747, i64 0, i64 1
  %1749 = load ptr, ptr %1748, align 8, !tbaa !5
  %1750 = getelementptr inbounds %struct.word_type, ptr %1749, i64 0, i32 1
  %1751 = load i8, ptr %1750, align 8, !tbaa !5
  %1752 = icmp eq i8 %1751, 0
  br i1 %1752, label %1746, label %1753

1753:                                             ; preds = %1746
  %1754 = getelementptr inbounds %struct.word_type, ptr %1749, i64 0, i32 3
  %1755 = getelementptr inbounds [2 x i32], ptr %1754, i64 0, i64 %63
  %1756 = load i32, ptr %1755, align 4, !tbaa !5
  %1757 = getelementptr inbounds %struct.word_type, ptr %1749, i64 0, i32 3, i32 1
  %1758 = getelementptr inbounds [2 x i32], ptr %1757, i64 0, i64 %63
  %1759 = load i32, ptr %1758, align 4, !tbaa !5
  call void @AdjustSize(ptr noundef %311, i32 noundef %1756, i32 noundef %1759, i32 noundef %49) #5
  %1760 = getelementptr inbounds [2 x i32], ptr %1754, i64 0, i64 %67
  %1761 = load i32, ptr %1760, align 4, !tbaa !5
  %1762 = getelementptr inbounds [2 x i32], ptr %1757, i64 0, i64 %67
  %1763 = load i32, ptr %1762, align 4, !tbaa !5
  call void @AdjustSize(ptr noundef %311, i32 noundef %1761, i32 noundef %1763, i32 noundef %64) #5
  br label %2154

1764:                                             ; preds = %773
  %1765 = zext i8 %774 to i32
  %1766 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1767 = call ptr @Image(i32 noundef %1765) #5
  %1768 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %1766, ptr noundef nonnull @.str.25, ptr noundef %1767) #5
  br label %1769

1769:                                             ; preds = %819, %1096, %1103, %1764, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %773, %831, %776, %903, %880, %1057, %1080, %913, %1093, %1082
  %1770 = phi ptr [ %755, %1764 ], [ %755, %1103 ], [ %755, %1096 ], [ %755, %1082 ], [ %755, %1093 ], [ %856, %903 ], [ %856, %880 ], [ %755, %913 ], [ %1033, %1080 ], [ %1033, %1057 ], [ %755, %831 ], [ %755, %776 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %773 ], [ %755, %819 ]
  %1771 = getelementptr inbounds %struct.LIST, ptr %1770, i64 0, i32 1
  %1772 = load ptr, ptr %1771, align 8, !tbaa !5
  %1773 = icmp eq ptr %1772, %0
  br i1 %1773, label %1774, label %754

1774:                                             ; preds = %751, %1769
  %1775 = load ptr, ptr %6, align 8, !tbaa !8
  %1776 = icmp eq ptr %1775, null
  br i1 %1776, label %1779, label %1777

1777:                                             ; preds = %1774
  %1778 = call i32 @DisposeObject(ptr noundef nonnull %1775) #5
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %1779

1779:                                             ; preds = %1777, %1774
  %1780 = call i32 @DisposeObject(ptr noundef nonnull %333) #5
  call void @LeaveErrorBlock(i32 noundef 0) #5
  %1781 = load ptr, ptr %56, align 8, !tbaa !5
  %1782 = icmp eq ptr %1781, %0
  br i1 %1782, label %1879, label %1783

1783:                                             ; preds = %1779, %1841
  %1784 = phi ptr [ %1844, %1841 ], [ %1781, %1779 ]
  br label %1785

1785:                                             ; preds = %1783, %1785
  %1786 = phi ptr [ %1788, %1785 ], [ %1784, %1783 ]
  %1787 = getelementptr inbounds [2 x %struct.LIST], ptr %1786, i64 0, i64 1
  %1788 = load ptr, ptr %1787, align 8, !tbaa !5
  %1789 = getelementptr inbounds %struct.word_type, ptr %1788, i64 0, i32 1
  %1790 = load i8, ptr %1789, align 8, !tbaa !5
  switch i8 %1790, label %1841 [
    i8 0, label %1785
    i8 1, label %1791
    i8 2, label %1791
    i8 6, label %1791
    i8 7, label %1791
    i8 5, label %1791
    i8 4, label %1791
  ]

1791:                                             ; preds = %1785, %1785, %1785, %1785, %1785, %1785
  %1792 = load ptr, ptr %1784, align 8, !tbaa !5
  %1793 = getelementptr inbounds %struct.LIST, ptr %1792, i64 0, i32 1
  %1794 = load ptr, ptr %1793, align 8, !tbaa !5
  store ptr %1794, ptr @xx_link, align 8, !tbaa !8
  %1795 = getelementptr inbounds [2 x %struct.LIST], ptr %1794, i64 0, i64 1, i32 1
  %1796 = load ptr, ptr %1795, align 8, !tbaa !5
  %1797 = icmp eq ptr %1796, %1794
  br i1 %1797, label %1803, label %1798

1798:                                             ; preds = %1791
  store ptr %1796, ptr @zz_res, align 8, !tbaa !8
  %1799 = getelementptr inbounds [2 x %struct.LIST], ptr %1794, i64 0, i64 1
  %1800 = load ptr, ptr %1799, align 8, !tbaa !5
  %1801 = getelementptr inbounds [2 x %struct.LIST], ptr %1796, i64 0, i64 1
  store ptr %1800, ptr %1801, align 8, !tbaa !5
  %1802 = getelementptr inbounds [2 x %struct.LIST], ptr %1800, i64 0, i64 1, i32 1
  store ptr %1796, ptr %1802, align 8, !tbaa !5
  store ptr %1794, ptr %1795, align 8, !tbaa !5
  store ptr %1794, ptr %1799, align 8, !tbaa !5
  br label %1803

1803:                                             ; preds = %1791, %1798
  %1804 = phi ptr [ %1796, %1798 ], [ null, %1791 ]
  store ptr %1804, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1794, ptr @zz_hold, align 8, !tbaa !8
  %1805 = getelementptr inbounds %struct.LIST, ptr %1794, i64 0, i32 1
  %1806 = load ptr, ptr %1805, align 8, !tbaa !5
  %1807 = icmp eq ptr %1806, %1794
  br i1 %1807, label %1816, label %1808

1808:                                             ; preds = %1803
  store ptr %1806, ptr @zz_res, align 8, !tbaa !8
  %1809 = load ptr, ptr %1794, align 8, !tbaa !5
  store ptr %1809, ptr %1806, align 8, !tbaa !5
  %1810 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1811 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1812 = load ptr, ptr %1811, align 8, !tbaa !5
  %1813 = getelementptr inbounds %struct.LIST, ptr %1812, i64 0, i32 1
  store ptr %1810, ptr %1813, align 8, !tbaa !5
  %1814 = getelementptr inbounds %struct.LIST, ptr %1811, i64 0, i32 1
  store ptr %1811, ptr %1814, align 8, !tbaa !5
  store ptr %1811, ptr %1811, align 8, !tbaa !5
  %1815 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1816

1816:                                             ; preds = %1803, %1808
  %1817 = phi ptr [ %1794, %1803 ], [ %1815, %1808 ]
  store ptr %1817, ptr @zz_hold, align 8, !tbaa !8
  %1818 = getelementptr inbounds %struct.word_type, ptr %1817, i64 0, i32 1
  %1819 = load i8, ptr %1818, align 8, !tbaa !5
  %1820 = add i8 %1819, -11
  %1821 = icmp ult i8 %1820, 2
  %1822 = getelementptr inbounds %struct.word_type, ptr %1817, i64 0, i32 1, i32 0, i32 1
  %1823 = zext i8 %1819 to i64
  %1824 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1823
  %1825 = select i1 %1821, ptr %1822, ptr %1824
  %1826 = load i8, ptr %1825, align 1, !tbaa !5
  %1827 = zext i8 %1826 to i32
  store i32 %1827, ptr @zz_size, align 4, !tbaa !10
  %1828 = zext i8 %1826 to i64
  %1829 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1828
  %1830 = load ptr, ptr %1829, align 8, !tbaa !8
  store ptr %1830, ptr %1817, align 8, !tbaa !5
  %1831 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1832 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1833 = sext i32 %1832 to i64
  %1834 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1833
  store ptr %1831, ptr %1834, align 8, !tbaa !8
  %1835 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %1836 = getelementptr inbounds [2 x %struct.LIST], ptr %1835, i64 0, i64 1, i32 1
  %1837 = load ptr, ptr %1836, align 8, !tbaa !5
  %1838 = icmp eq ptr %1837, %1835
  br i1 %1838, label %1839, label %1841

1839:                                             ; preds = %1816
  %1840 = call i32 @DisposeObject(ptr noundef nonnull %1835) #5
  br label %1841

1841:                                             ; preds = %1785, %1839, %1816
  %1842 = phi ptr [ %1792, %1839 ], [ %1792, %1816 ], [ %1784, %1785 ]
  %1843 = getelementptr inbounds %struct.LIST, ptr %1842, i64 0, i32 1
  %1844 = load ptr, ptr %1843, align 8, !tbaa !5
  %1845 = icmp eq ptr %1844, %0
  br i1 %1845, label %1846, label %1783

1846:                                             ; preds = %1841
  %1847 = load ptr, ptr %56, align 8, !tbaa !5
  %1848 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  %1849 = load ptr, ptr %1848, align 8, !tbaa !5
  %1850 = icmp eq ptr %1847, %0
  br i1 %1850, label %1879, label %1851

1851:                                             ; preds = %1846
  %1852 = getelementptr inbounds %struct.word_type, ptr %1847, i64 0, i32 1
  %1853 = load i8, ptr %1852, align 8, !tbaa !5
  %1854 = icmp eq i8 %1853, 0
  br i1 %1854, label %1858, label %1855

1855:                                             ; preds = %1851
  %1856 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1857 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1856, ptr noundef nonnull @.str.26) #5
  br label %1858

1858:                                             ; preds = %1855, %1851
  store ptr %1847, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %1859 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1859, ptr @zz_tmp, align 8, !tbaa !8
  %1860 = load ptr, ptr %1847, align 8, !tbaa !5
  store ptr %1860, ptr %0, align 8, !tbaa !5
  %1861 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1862 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1863 = load ptr, ptr %1862, align 8, !tbaa !5
  %1864 = getelementptr inbounds %struct.LIST, ptr %1863, i64 0, i32 1
  store ptr %1861, ptr %1864, align 8, !tbaa !5
  %1865 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1865, ptr %1862, align 8, !tbaa !5
  %1866 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1867 = getelementptr inbounds %struct.LIST, ptr %1865, i64 0, i32 1
  store ptr %1866, ptr %1867, align 8, !tbaa !5
  store ptr %1847, ptr @zz_res, align 8, !tbaa !8
  store ptr %1849, ptr @zz_hold, align 8, !tbaa !8
  %1868 = icmp eq ptr %1849, null
  br i1 %1868, label %1879, label %1869

1869:                                             ; preds = %1858
  %1870 = load ptr, ptr %1849, align 8, !tbaa !5
  store ptr %1870, ptr @zz_tmp, align 8, !tbaa !8
  %1871 = load ptr, ptr %1847, align 8, !tbaa !5
  store ptr %1871, ptr %1849, align 8, !tbaa !5
  %1872 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1873 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1874 = load ptr, ptr %1873, align 8, !tbaa !5
  %1875 = getelementptr inbounds %struct.LIST, ptr %1874, i64 0, i32 1
  store ptr %1872, ptr %1875, align 8, !tbaa !5
  %1876 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1876, ptr %1873, align 8, !tbaa !5
  %1877 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1878 = getelementptr inbounds %struct.LIST, ptr %1876, i64 0, i32 1
  store ptr %1877, ptr %1878, align 8, !tbaa !5
  br label %1879

1879:                                             ; preds = %1779, %1858, %1869, %1846
  %1880 = load ptr, ptr %25, align 8, !tbaa !5
  store ptr %1880, ptr @xx_link, align 8, !tbaa !8
  store ptr %1880, ptr @zz_hold, align 8, !tbaa !8
  %1881 = getelementptr inbounds %struct.LIST, ptr %1880, i64 0, i32 1
  %1882 = load ptr, ptr %1881, align 8, !tbaa !5
  %1883 = icmp eq ptr %1882, %1880
  br i1 %1883, label %1884, label %1885

1884:                                             ; preds = %1879
  store ptr %1880, ptr @zz_res, align 8, !tbaa !8
  store ptr %302, ptr @zz_hold, align 8, !tbaa !8
  br label %1894

1885:                                             ; preds = %1879
  store ptr %1882, ptr @zz_res, align 8, !tbaa !8
  %1886 = load ptr, ptr %1880, align 8, !tbaa !5
  store ptr %1886, ptr %1882, align 8, !tbaa !5
  %1887 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1888 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1889 = load ptr, ptr %1888, align 8, !tbaa !5
  %1890 = getelementptr inbounds %struct.LIST, ptr %1889, i64 0, i32 1
  store ptr %1887, ptr %1890, align 8, !tbaa !5
  %1891 = getelementptr inbounds %struct.LIST, ptr %1888, i64 0, i32 1
  store ptr %1888, ptr %1891, align 8, !tbaa !5
  store ptr %1888, ptr %1888, align 8, !tbaa !5
  %1892 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1892, ptr @zz_res, align 8, !tbaa !8
  store ptr %302, ptr @zz_hold, align 8, !tbaa !8
  %1893 = icmp eq ptr %1892, null
  br i1 %1893, label %1905, label %1894

1894:                                             ; preds = %1884, %1885
  %1895 = phi ptr [ %1880, %1884 ], [ %1892, %1885 ]
  %1896 = load ptr, ptr %302, align 8, !tbaa !5
  store ptr %1896, ptr @zz_tmp, align 8, !tbaa !8
  %1897 = load ptr, ptr %1895, align 8, !tbaa !5
  store ptr %1897, ptr %302, align 8, !tbaa !5
  %1898 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1899 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1900 = load ptr, ptr %1899, align 8, !tbaa !5
  %1901 = getelementptr inbounds %struct.LIST, ptr %1900, i64 0, i32 1
  store ptr %1898, ptr %1901, align 8, !tbaa !5
  %1902 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1902, ptr %1899, align 8, !tbaa !5
  %1903 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1904 = getelementptr inbounds %struct.LIST, ptr %1902, i64 0, i32 1
  store ptr %1903, ptr %1904, align 8, !tbaa !5
  br label %1905

1905:                                             ; preds = %1885, %1894
  %1906 = load i8, ptr %43, align 8, !tbaa !5
  %1907 = icmp eq i8 %1906, 120
  br i1 %1907, label %1911, label %1908

1908:                                             ; preds = %1905
  %1909 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1910 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1909, ptr noundef nonnull @.str.27) #5
  br label %1911

1911:                                             ; preds = %1908, %1905
  store ptr %36, ptr @xx_hold, align 8, !tbaa !8
  %1912 = load ptr, ptr %51, align 8, !tbaa !5
  %1913 = icmp eq ptr %1912, %36
  br i1 %1913, label %1914, label %1919

1914:                                             ; preds = %1941, %1911
  %1915 = phi ptr [ %36, %1911 ], [ %1960, %1941 ]
  %1916 = getelementptr inbounds %struct.LIST, ptr %1915, i64 0, i32 1
  %1917 = load ptr, ptr %1916, align 8, !tbaa !5
  %1918 = icmp eq ptr %1917, %1915
  br i1 %1918, label %2009, label %1964

1919:                                             ; preds = %1911, %1941
  %1920 = phi ptr [ %1962, %1941 ], [ %1912, %1911 ]
  store ptr %1920, ptr @xx_link, align 8, !tbaa !8
  %1921 = getelementptr inbounds [2 x %struct.LIST], ptr %1920, i64 0, i64 1, i32 1
  %1922 = load ptr, ptr %1921, align 8, !tbaa !5
  %1923 = icmp eq ptr %1922, %1920
  br i1 %1923, label %1929, label %1924

1924:                                             ; preds = %1919
  store ptr %1922, ptr @zz_res, align 8, !tbaa !8
  %1925 = getelementptr inbounds [2 x %struct.LIST], ptr %1920, i64 0, i64 1
  %1926 = load ptr, ptr %1925, align 8, !tbaa !5
  %1927 = getelementptr inbounds [2 x %struct.LIST], ptr %1922, i64 0, i64 1
  store ptr %1926, ptr %1927, align 8, !tbaa !5
  %1928 = getelementptr inbounds [2 x %struct.LIST], ptr %1926, i64 0, i64 1, i32 1
  store ptr %1922, ptr %1928, align 8, !tbaa !5
  store ptr %1920, ptr %1921, align 8, !tbaa !5
  store ptr %1920, ptr %1925, align 8, !tbaa !5
  br label %1929

1929:                                             ; preds = %1919, %1924
  store ptr %1920, ptr @zz_hold, align 8, !tbaa !8
  %1930 = getelementptr inbounds %struct.LIST, ptr %1920, i64 0, i32 1
  %1931 = load ptr, ptr %1930, align 8, !tbaa !5
  %1932 = icmp eq ptr %1931, %1920
  br i1 %1932, label %1941, label %1933

1933:                                             ; preds = %1929
  store ptr %1931, ptr @zz_res, align 8, !tbaa !8
  %1934 = load ptr, ptr %1920, align 8, !tbaa !5
  store ptr %1934, ptr %1931, align 8, !tbaa !5
  %1935 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1936 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1937 = load ptr, ptr %1936, align 8, !tbaa !5
  %1938 = getelementptr inbounds %struct.LIST, ptr %1937, i64 0, i32 1
  store ptr %1935, ptr %1938, align 8, !tbaa !5
  %1939 = getelementptr inbounds %struct.LIST, ptr %1936, i64 0, i32 1
  store ptr %1936, ptr %1939, align 8, !tbaa !5
  store ptr %1936, ptr %1936, align 8, !tbaa !5
  %1940 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1941

1941:                                             ; preds = %1929, %1933
  %1942 = phi ptr [ %1920, %1929 ], [ %1940, %1933 ]
  store ptr %1942, ptr @zz_hold, align 8, !tbaa !8
  %1943 = getelementptr inbounds %struct.word_type, ptr %1942, i64 0, i32 1
  %1944 = load i8, ptr %1943, align 8, !tbaa !5
  %1945 = add i8 %1944, -11
  %1946 = icmp ult i8 %1945, 2
  %1947 = getelementptr inbounds %struct.word_type, ptr %1942, i64 0, i32 1, i32 0, i32 1
  %1948 = zext i8 %1944 to i64
  %1949 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1948
  %1950 = select i1 %1946, ptr %1947, ptr %1949
  %1951 = load i8, ptr %1950, align 1, !tbaa !5
  %1952 = zext i8 %1951 to i32
  store i32 %1952, ptr @zz_size, align 4, !tbaa !10
  %1953 = zext i8 %1951 to i64
  %1954 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1953
  %1955 = load ptr, ptr %1954, align 8, !tbaa !8
  store ptr %1955, ptr %1942, align 8, !tbaa !5
  %1956 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1957 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1958
  store ptr %1956, ptr %1959, align 8, !tbaa !8
  %1960 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1961 = getelementptr inbounds [2 x %struct.LIST], ptr %1960, i64 0, i64 1, i32 1
  %1962 = load ptr, ptr %1961, align 8, !tbaa !5
  %1963 = icmp eq ptr %1962, %1960
  br i1 %1963, label %1914, label %1919

1964:                                             ; preds = %1914, %1986
  %1965 = phi ptr [ %2007, %1986 ], [ %1917, %1914 ]
  store ptr %1965, ptr @xx_link, align 8, !tbaa !8
  %1966 = getelementptr inbounds [2 x %struct.LIST], ptr %1965, i64 0, i64 1, i32 1
  %1967 = load ptr, ptr %1966, align 8, !tbaa !5
  %1968 = icmp eq ptr %1967, %1965
  br i1 %1968, label %1974, label %1969

1969:                                             ; preds = %1964
  store ptr %1967, ptr @zz_res, align 8, !tbaa !8
  %1970 = getelementptr inbounds [2 x %struct.LIST], ptr %1965, i64 0, i64 1
  %1971 = load ptr, ptr %1970, align 8, !tbaa !5
  %1972 = getelementptr inbounds [2 x %struct.LIST], ptr %1967, i64 0, i64 1
  store ptr %1971, ptr %1972, align 8, !tbaa !5
  %1973 = getelementptr inbounds [2 x %struct.LIST], ptr %1971, i64 0, i64 1, i32 1
  store ptr %1967, ptr %1973, align 8, !tbaa !5
  store ptr %1965, ptr %1966, align 8, !tbaa !5
  store ptr %1965, ptr %1970, align 8, !tbaa !5
  br label %1974

1974:                                             ; preds = %1964, %1969
  store ptr %1965, ptr @zz_hold, align 8, !tbaa !8
  %1975 = getelementptr inbounds %struct.LIST, ptr %1965, i64 0, i32 1
  %1976 = load ptr, ptr %1975, align 8, !tbaa !5
  %1977 = icmp eq ptr %1976, %1965
  br i1 %1977, label %1986, label %1978

1978:                                             ; preds = %1974
  store ptr %1976, ptr @zz_res, align 8, !tbaa !8
  %1979 = load ptr, ptr %1965, align 8, !tbaa !5
  store ptr %1979, ptr %1976, align 8, !tbaa !5
  %1980 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1981 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1982 = load ptr, ptr %1981, align 8, !tbaa !5
  %1983 = getelementptr inbounds %struct.LIST, ptr %1982, i64 0, i32 1
  store ptr %1980, ptr %1983, align 8, !tbaa !5
  %1984 = getelementptr inbounds %struct.LIST, ptr %1981, i64 0, i32 1
  store ptr %1981, ptr %1984, align 8, !tbaa !5
  store ptr %1981, ptr %1981, align 8, !tbaa !5
  %1985 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1986

1986:                                             ; preds = %1974, %1978
  %1987 = phi ptr [ %1965, %1974 ], [ %1985, %1978 ]
  store ptr %1987, ptr @zz_hold, align 8, !tbaa !8
  %1988 = getelementptr inbounds %struct.word_type, ptr %1987, i64 0, i32 1
  %1989 = load i8, ptr %1988, align 8, !tbaa !5
  %1990 = add i8 %1989, -11
  %1991 = icmp ult i8 %1990, 2
  %1992 = getelementptr inbounds %struct.word_type, ptr %1987, i64 0, i32 1, i32 0, i32 1
  %1993 = zext i8 %1989 to i64
  %1994 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1993
  %1995 = select i1 %1991, ptr %1992, ptr %1994
  %1996 = load i8, ptr %1995, align 1, !tbaa !5
  %1997 = zext i8 %1996 to i32
  store i32 %1997, ptr @zz_size, align 4, !tbaa !10
  %1998 = zext i8 %1996 to i64
  %1999 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1998
  %2000 = load ptr, ptr %1999, align 8, !tbaa !8
  store ptr %2000, ptr %1987, align 8, !tbaa !5
  %2001 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2002 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2003 = sext i32 %2002 to i64
  %2004 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2003
  store ptr %2001, ptr %2004, align 8, !tbaa !8
  %2005 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2006 = getelementptr inbounds %struct.LIST, ptr %2005, i64 0, i32 1
  %2007 = load ptr, ptr %2006, align 8, !tbaa !5
  %2008 = icmp eq ptr %2007, %2005
  br i1 %2008, label %2009, label %1964

2009:                                             ; preds = %1986, %1914
  %2010 = phi ptr [ %1915, %1914 ], [ %2005, %1986 ]
  store ptr %2010, ptr @zz_hold, align 8, !tbaa !8
  %2011 = getelementptr inbounds %struct.word_type, ptr %2010, i64 0, i32 1
  %2012 = load i8, ptr %2011, align 8, !tbaa !5
  %2013 = add i8 %2012, -11
  %2014 = icmp ult i8 %2013, 2
  %2015 = getelementptr inbounds %struct.word_type, ptr %2010, i64 0, i32 1, i32 0, i32 1
  %2016 = zext i8 %2012 to i64
  %2017 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2016
  %2018 = select i1 %2014, ptr %2015, ptr %2017
  %2019 = load i8, ptr %2018, align 1, !tbaa !5
  %2020 = zext i8 %2019 to i32
  store i32 %2020, ptr @zz_size, align 4, !tbaa !10
  %2021 = zext i8 %2019 to i64
  %2022 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2021
  %2023 = load ptr, ptr %2022, align 8, !tbaa !8
  store ptr %2023, ptr %2010, align 8, !tbaa !5
  %2024 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2025 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2026
  store ptr %2024, ptr %2027, align 8, !tbaa !8
  %2028 = load ptr, ptr %4, align 8, !tbaa !8
  store ptr %2028, ptr %1, align 8, !tbaa !8
  br label %2881

2029:                                             ; preds = %913, %1703, %1693, %1697, %1515, %1508, %1512, %1648, %1490, %491, %385, %744
  call void @LeaveErrorBlock(i32 noundef 1) #5
  %2030 = load ptr, ptr %6, align 8, !tbaa !8
  %2031 = icmp eq ptr %2030, null
  br i1 %2031, label %2034, label %2032

2032:                                             ; preds = %2029
  %2033 = call i32 @DisposeObject(ptr noundef nonnull %2030) #5
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %2034

2034:                                             ; preds = %2032, %2029
  %2035 = call i32 @DisposeObject(ptr noundef nonnull %333) #5
  %2036 = load i8, ptr %44, align 8, !tbaa !5
  %2037 = icmp eq i8 %2036, -123
  br i1 %2037, label %2038, label %2070

2038:                                             ; preds = %2034
  %2039 = load i16, ptr %45, align 2
  %2040 = and i16 %2039, 2
  %2041 = icmp eq i16 %2040, 0
  br i1 %2041, label %2042, label %2070

2042:                                             ; preds = %2038
  %2043 = load ptr, ptr %51, align 8, !tbaa !5
  store ptr %2043, ptr @xx_link, align 8, !tbaa !8
  store ptr %2043, ptr @zz_hold, align 8, !tbaa !8
  %2044 = getelementptr inbounds %struct.LIST, ptr %2043, i64 0, i32 1
  %2045 = load ptr, ptr %2044, align 8, !tbaa !5
  %2046 = icmp eq ptr %2045, %2043
  br i1 %2046, label %2055, label %2047

2047:                                             ; preds = %2042
  store ptr %2045, ptr @zz_res, align 8, !tbaa !8
  %2048 = load ptr, ptr %2043, align 8, !tbaa !5
  store ptr %2048, ptr %2045, align 8, !tbaa !5
  %2049 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2050 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2051 = load ptr, ptr %2050, align 8, !tbaa !5
  %2052 = getelementptr inbounds %struct.LIST, ptr %2051, i64 0, i32 1
  store ptr %2049, ptr %2052, align 8, !tbaa !5
  %2053 = getelementptr inbounds %struct.LIST, ptr %2050, i64 0, i32 1
  store ptr %2050, ptr %2053, align 8, !tbaa !5
  store ptr %2050, ptr %2050, align 8, !tbaa !5
  %2054 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2055

2055:                                             ; preds = %2042, %2047
  %2056 = phi ptr [ %2043, %2042 ], [ %2054, %2047 ]
  store ptr %2056, ptr @zz_res, align 8, !tbaa !8
  %2057 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  %2058 = load ptr, ptr %2057, align 8, !tbaa !5
  store ptr %2058, ptr @zz_hold, align 8, !tbaa !8
  %2059 = icmp eq ptr %2058, null
  %2060 = icmp eq ptr %2056, null
  %2061 = select i1 %2059, i1 true, i1 %2060
  br i1 %2061, label %2104, label %2062

2062:                                             ; preds = %2055
  %2063 = load ptr, ptr %2058, align 8, !tbaa !5
  store ptr %2063, ptr @zz_tmp, align 8, !tbaa !8
  %2064 = load ptr, ptr %2056, align 8, !tbaa !5
  store ptr %2064, ptr %2058, align 8, !tbaa !5
  %2065 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2066 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2067 = load ptr, ptr %2066, align 8, !tbaa !5
  %2068 = getelementptr inbounds %struct.LIST, ptr %2067, i64 0, i32 1
  store ptr %2065, ptr %2068, align 8, !tbaa !5
  %2069 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2069, ptr %2066, align 8, !tbaa !5
  br label %2100

2070:                                             ; preds = %2038, %2034
  %2071 = load ptr, ptr %51, align 8, !tbaa !5
  store ptr %2071, ptr @xx_link, align 8, !tbaa !8
  store ptr %2071, ptr @zz_hold, align 8, !tbaa !8
  %2072 = getelementptr inbounds %struct.LIST, ptr %2071, i64 0, i32 1
  %2073 = load ptr, ptr %2072, align 8, !tbaa !5
  %2074 = icmp eq ptr %2073, %2071
  br i1 %2074, label %2083, label %2075

2075:                                             ; preds = %2070
  store ptr %2073, ptr @zz_res, align 8, !tbaa !8
  %2076 = load ptr, ptr %2071, align 8, !tbaa !5
  store ptr %2076, ptr %2073, align 8, !tbaa !5
  %2077 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2078 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2079 = load ptr, ptr %2078, align 8, !tbaa !5
  %2080 = getelementptr inbounds %struct.LIST, ptr %2079, i64 0, i32 1
  store ptr %2077, ptr %2080, align 8, !tbaa !5
  %2081 = getelementptr inbounds %struct.LIST, ptr %2078, i64 0, i32 1
  store ptr %2078, ptr %2081, align 8, !tbaa !5
  store ptr %2078, ptr %2078, align 8, !tbaa !5
  %2082 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2083

2083:                                             ; preds = %2070, %2075
  %2084 = phi ptr [ %2071, %2070 ], [ %2082, %2075 ]
  store ptr %2084, ptr @zz_res, align 8, !tbaa !8
  %2085 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  %2086 = load ptr, ptr %2085, align 8, !tbaa !5
  %2087 = getelementptr inbounds %struct.LIST, ptr %2086, i64 0, i32 1
  %2088 = load ptr, ptr %2087, align 8, !tbaa !5
  store ptr %2088, ptr @zz_hold, align 8, !tbaa !8
  %2089 = icmp eq ptr %2088, null
  %2090 = icmp eq ptr %2084, null
  %2091 = select i1 %2089, i1 true, i1 %2090
  br i1 %2091, label %2104, label %2092

2092:                                             ; preds = %2083
  %2093 = load ptr, ptr %2088, align 8, !tbaa !5
  store ptr %2093, ptr @zz_tmp, align 8, !tbaa !8
  %2094 = load ptr, ptr %2084, align 8, !tbaa !5
  store ptr %2094, ptr %2088, align 8, !tbaa !5
  %2095 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2096 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2097 = load ptr, ptr %2096, align 8, !tbaa !5
  %2098 = getelementptr inbounds %struct.LIST, ptr %2097, i64 0, i32 1
  store ptr %2095, ptr %2098, align 8, !tbaa !5
  %2099 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2099, ptr %2096, align 8, !tbaa !5
  br label %2100

2100:                                             ; preds = %2062, %2092
  %2101 = phi ptr [ %2099, %2092 ], [ %2069, %2062 ]
  %2102 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2103 = getelementptr inbounds %struct.LIST, ptr %2101, i64 0, i32 1
  store ptr %2102, ptr %2103, align 8, !tbaa !5
  br label %2104

2104:                                             ; preds = %2100, %2083, %2055
  %2105 = load i16, ptr %45, align 2
  br label %68

2106:                                             ; preds = %913, %773, %773, %1256, %1132
  %2107 = phi ptr [ %1129, %1132 ], [ %1129, %1256 ], [ %775, %773 ], [ %775, %773 ], [ %775, %913 ]
  %2108 = getelementptr inbounds i8, ptr %2107, i64 42
  %2109 = load i16, ptr %2108, align 2
  %2110 = or i16 %2109, 32
  store i16 %2110, ptr %2108, align 2
  call void @LeaveErrorBlock(i32 noundef 0) #5
  %2111 = load ptr, ptr %6, align 8, !tbaa !8
  %2112 = icmp eq ptr %2111, null
  br i1 %2112, label %2115, label %2113

2113:                                             ; preds = %2106
  %2114 = call i32 @DisposeObject(ptr noundef nonnull %2111) #5
  store ptr null, ptr %6, align 8, !tbaa !8
  br label %2115

2115:                                             ; preds = %2113, %2106
  %2116 = call i32 @DisposeObject(ptr noundef nonnull %333) #5
  %2117 = load ptr, ptr %51, align 8, !tbaa !5
  store ptr %2117, ptr @xx_link, align 8, !tbaa !8
  store ptr %2117, ptr @zz_hold, align 8, !tbaa !8
  %2118 = getelementptr inbounds %struct.LIST, ptr %2117, i64 0, i32 1
  %2119 = load ptr, ptr %2118, align 8, !tbaa !5
  %2120 = icmp eq ptr %2119, %2117
  br i1 %2120, label %2129, label %2121

2121:                                             ; preds = %2115
  store ptr %2119, ptr @zz_res, align 8, !tbaa !8
  %2122 = load ptr, ptr %2117, align 8, !tbaa !5
  store ptr %2122, ptr %2119, align 8, !tbaa !5
  %2123 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2124 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2125 = load ptr, ptr %2124, align 8, !tbaa !5
  %2126 = getelementptr inbounds %struct.LIST, ptr %2125, i64 0, i32 1
  store ptr %2123, ptr %2126, align 8, !tbaa !5
  %2127 = getelementptr inbounds %struct.LIST, ptr %2124, i64 0, i32 1
  store ptr %2124, ptr %2127, align 8, !tbaa !5
  store ptr %2124, ptr %2124, align 8, !tbaa !5
  %2128 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2129

2129:                                             ; preds = %2115, %2121
  %2130 = phi ptr [ %2117, %2115 ], [ %2128, %2121 ]
  store ptr %2130, ptr @zz_res, align 8, !tbaa !8
  %2131 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  %2132 = load ptr, ptr %2131, align 8, !tbaa !5
  store ptr %2132, ptr @zz_hold, align 8, !tbaa !8
  %2133 = icmp eq ptr %2132, null
  %2134 = icmp eq ptr %2130, null
  %2135 = select i1 %2133, i1 true, i1 %2134
  br i1 %2135, label %2146, label %2136

2136:                                             ; preds = %2129
  %2137 = load ptr, ptr %2132, align 8, !tbaa !5
  store ptr %2137, ptr @zz_tmp, align 8, !tbaa !8
  %2138 = load ptr, ptr %2130, align 8, !tbaa !5
  store ptr %2138, ptr %2132, align 8, !tbaa !5
  %2139 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2140 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2141 = load ptr, ptr %2140, align 8, !tbaa !5
  %2142 = getelementptr inbounds %struct.LIST, ptr %2141, i64 0, i32 1
  store ptr %2139, ptr %2142, align 8, !tbaa !5
  %2143 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2143, ptr %2140, align 8, !tbaa !5
  %2144 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2145 = getelementptr inbounds %struct.LIST, ptr %2143, i64 0, i32 1
  store ptr %2144, ptr %2145, align 8, !tbaa !5
  br label %2146

2146:                                             ; preds = %2129, %2136
  %2147 = load ptr, ptr %4, align 8, !tbaa !8
  br i1 %62, label %2152, label %2148

2148:                                             ; preds = %2146
  %2149 = icmp eq ptr %2147, null
  br i1 %2149, label %2152, label %2150

2150:                                             ; preds = %2148
  %2151 = call i32 @DisposeObject(ptr noundef nonnull %2147) #5
  br label %2152

2152:                                             ; preds = %2146, %2148, %2150
  %2153 = phi ptr [ null, %2150 ], [ null, %2148 ], [ %2147, %2146 ]
  store ptr %2153, ptr %1, align 8, !tbaa !8
  store ptr %2107, ptr %2, align 8, !tbaa !8
  br label %2881

2154:                                             ; preds = %1729, %1753, %1737
  call void @LeaveErrorBlock(i32 noundef 1) #5
  %2155 = load ptr, ptr %25, align 8, !tbaa !5
  store ptr %2155, ptr @xx_link, align 8, !tbaa !8
  store ptr %2155, ptr @zz_hold, align 8, !tbaa !8
  %2156 = getelementptr inbounds %struct.LIST, ptr %2155, i64 0, i32 1
  %2157 = load ptr, ptr %2156, align 8, !tbaa !5
  %2158 = icmp eq ptr %2157, %2155
  br i1 %2158, label %2167, label %2159

2159:                                             ; preds = %2154
  store ptr %2157, ptr @zz_res, align 8, !tbaa !8
  %2160 = load ptr, ptr %2155, align 8, !tbaa !5
  store ptr %2160, ptr %2157, align 8, !tbaa !5
  %2161 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2162 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2163 = load ptr, ptr %2162, align 8, !tbaa !5
  %2164 = getelementptr inbounds %struct.LIST, ptr %2163, i64 0, i32 1
  store ptr %2161, ptr %2164, align 8, !tbaa !5
  %2165 = getelementptr inbounds %struct.LIST, ptr %2162, i64 0, i32 1
  store ptr %2162, ptr %2165, align 8, !tbaa !5
  store ptr %2162, ptr %2162, align 8, !tbaa !5
  %2166 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2167

2167:                                             ; preds = %2154, %2159
  %2168 = phi ptr [ %2155, %2154 ], [ %2166, %2159 ]
  store ptr %2168, ptr @zz_res, align 8, !tbaa !8
  %2169 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %2169, ptr @zz_hold, align 8, !tbaa !8
  %2170 = icmp eq ptr %2169, null
  %2171 = icmp eq ptr %2168, null
  %2172 = select i1 %2170, i1 true, i1 %2171
  br i1 %2172, label %2183, label %2173

2173:                                             ; preds = %2167
  %2174 = load ptr, ptr %2169, align 8, !tbaa !5
  store ptr %2174, ptr @zz_tmp, align 8, !tbaa !8
  %2175 = load ptr, ptr %2168, align 8, !tbaa !5
  store ptr %2175, ptr %2169, align 8, !tbaa !5
  %2176 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2177 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2178 = load ptr, ptr %2177, align 8, !tbaa !5
  %2179 = getelementptr inbounds %struct.LIST, ptr %2178, i64 0, i32 1
  store ptr %2176, ptr %2179, align 8, !tbaa !5
  %2180 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2180, ptr %2177, align 8, !tbaa !5
  %2181 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2182 = getelementptr inbounds %struct.LIST, ptr %2180, i64 0, i32 1
  store ptr %2181, ptr %2182, align 8, !tbaa !5
  br label %2183

2183:                                             ; preds = %2167, %2173
  %2184 = load i8, ptr %43, align 8, !tbaa !5
  %2185 = icmp eq i8 %2184, 120
  br i1 %2185, label %2189, label %2186

2186:                                             ; preds = %2183
  %2187 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2188 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2187, ptr noundef nonnull @.str.27) #5
  br label %2189

2189:                                             ; preds = %2186, %2183
  store ptr %36, ptr @xx_hold, align 8, !tbaa !8
  %2190 = load ptr, ptr %51, align 8, !tbaa !5
  %2191 = icmp eq ptr %2190, %36
  br i1 %2191, label %2192, label %2197

2192:                                             ; preds = %2219, %2189
  %2193 = phi ptr [ %36, %2189 ], [ %2238, %2219 ]
  %2194 = getelementptr inbounds %struct.LIST, ptr %2193, i64 0, i32 1
  %2195 = load ptr, ptr %2194, align 8, !tbaa !5
  %2196 = icmp eq ptr %2195, %2193
  br i1 %2196, label %2287, label %2242

2197:                                             ; preds = %2189, %2219
  %2198 = phi ptr [ %2240, %2219 ], [ %2190, %2189 ]
  store ptr %2198, ptr @xx_link, align 8, !tbaa !8
  %2199 = getelementptr inbounds [2 x %struct.LIST], ptr %2198, i64 0, i64 1, i32 1
  %2200 = load ptr, ptr %2199, align 8, !tbaa !5
  %2201 = icmp eq ptr %2200, %2198
  br i1 %2201, label %2207, label %2202

2202:                                             ; preds = %2197
  store ptr %2200, ptr @zz_res, align 8, !tbaa !8
  %2203 = getelementptr inbounds [2 x %struct.LIST], ptr %2198, i64 0, i64 1
  %2204 = load ptr, ptr %2203, align 8, !tbaa !5
  %2205 = getelementptr inbounds [2 x %struct.LIST], ptr %2200, i64 0, i64 1
  store ptr %2204, ptr %2205, align 8, !tbaa !5
  %2206 = getelementptr inbounds [2 x %struct.LIST], ptr %2204, i64 0, i64 1, i32 1
  store ptr %2200, ptr %2206, align 8, !tbaa !5
  store ptr %2198, ptr %2199, align 8, !tbaa !5
  store ptr %2198, ptr %2203, align 8, !tbaa !5
  br label %2207

2207:                                             ; preds = %2197, %2202
  store ptr %2198, ptr @zz_hold, align 8, !tbaa !8
  %2208 = getelementptr inbounds %struct.LIST, ptr %2198, i64 0, i32 1
  %2209 = load ptr, ptr %2208, align 8, !tbaa !5
  %2210 = icmp eq ptr %2209, %2198
  br i1 %2210, label %2219, label %2211

2211:                                             ; preds = %2207
  store ptr %2209, ptr @zz_res, align 8, !tbaa !8
  %2212 = load ptr, ptr %2198, align 8, !tbaa !5
  store ptr %2212, ptr %2209, align 8, !tbaa !5
  %2213 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2214 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2215 = load ptr, ptr %2214, align 8, !tbaa !5
  %2216 = getelementptr inbounds %struct.LIST, ptr %2215, i64 0, i32 1
  store ptr %2213, ptr %2216, align 8, !tbaa !5
  %2217 = getelementptr inbounds %struct.LIST, ptr %2214, i64 0, i32 1
  store ptr %2214, ptr %2217, align 8, !tbaa !5
  store ptr %2214, ptr %2214, align 8, !tbaa !5
  %2218 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2219

2219:                                             ; preds = %2207, %2211
  %2220 = phi ptr [ %2198, %2207 ], [ %2218, %2211 ]
  store ptr %2220, ptr @zz_hold, align 8, !tbaa !8
  %2221 = getelementptr inbounds %struct.word_type, ptr %2220, i64 0, i32 1
  %2222 = load i8, ptr %2221, align 8, !tbaa !5
  %2223 = add i8 %2222, -11
  %2224 = icmp ult i8 %2223, 2
  %2225 = getelementptr inbounds %struct.word_type, ptr %2220, i64 0, i32 1, i32 0, i32 1
  %2226 = zext i8 %2222 to i64
  %2227 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2226
  %2228 = select i1 %2224, ptr %2225, ptr %2227
  %2229 = load i8, ptr %2228, align 1, !tbaa !5
  %2230 = zext i8 %2229 to i32
  store i32 %2230, ptr @zz_size, align 4, !tbaa !10
  %2231 = zext i8 %2229 to i64
  %2232 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2231
  %2233 = load ptr, ptr %2232, align 8, !tbaa !8
  store ptr %2233, ptr %2220, align 8, !tbaa !5
  %2234 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2235 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2236 = sext i32 %2235 to i64
  %2237 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2236
  store ptr %2234, ptr %2237, align 8, !tbaa !8
  %2238 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2239 = getelementptr inbounds [2 x %struct.LIST], ptr %2238, i64 0, i64 1, i32 1
  %2240 = load ptr, ptr %2239, align 8, !tbaa !5
  %2241 = icmp eq ptr %2240, %2238
  br i1 %2241, label %2192, label %2197

2242:                                             ; preds = %2192, %2264
  %2243 = phi ptr [ %2285, %2264 ], [ %2195, %2192 ]
  store ptr %2243, ptr @xx_link, align 8, !tbaa !8
  %2244 = getelementptr inbounds [2 x %struct.LIST], ptr %2243, i64 0, i64 1, i32 1
  %2245 = load ptr, ptr %2244, align 8, !tbaa !5
  %2246 = icmp eq ptr %2245, %2243
  br i1 %2246, label %2252, label %2247

2247:                                             ; preds = %2242
  store ptr %2245, ptr @zz_res, align 8, !tbaa !8
  %2248 = getelementptr inbounds [2 x %struct.LIST], ptr %2243, i64 0, i64 1
  %2249 = load ptr, ptr %2248, align 8, !tbaa !5
  %2250 = getelementptr inbounds [2 x %struct.LIST], ptr %2245, i64 0, i64 1
  store ptr %2249, ptr %2250, align 8, !tbaa !5
  %2251 = getelementptr inbounds [2 x %struct.LIST], ptr %2249, i64 0, i64 1, i32 1
  store ptr %2245, ptr %2251, align 8, !tbaa !5
  store ptr %2243, ptr %2244, align 8, !tbaa !5
  store ptr %2243, ptr %2248, align 8, !tbaa !5
  br label %2252

2252:                                             ; preds = %2242, %2247
  store ptr %2243, ptr @zz_hold, align 8, !tbaa !8
  %2253 = getelementptr inbounds %struct.LIST, ptr %2243, i64 0, i32 1
  %2254 = load ptr, ptr %2253, align 8, !tbaa !5
  %2255 = icmp eq ptr %2254, %2243
  br i1 %2255, label %2264, label %2256

2256:                                             ; preds = %2252
  store ptr %2254, ptr @zz_res, align 8, !tbaa !8
  %2257 = load ptr, ptr %2243, align 8, !tbaa !5
  store ptr %2257, ptr %2254, align 8, !tbaa !5
  %2258 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2259 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2260 = load ptr, ptr %2259, align 8, !tbaa !5
  %2261 = getelementptr inbounds %struct.LIST, ptr %2260, i64 0, i32 1
  store ptr %2258, ptr %2261, align 8, !tbaa !5
  %2262 = getelementptr inbounds %struct.LIST, ptr %2259, i64 0, i32 1
  store ptr %2259, ptr %2262, align 8, !tbaa !5
  store ptr %2259, ptr %2259, align 8, !tbaa !5
  %2263 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2264

2264:                                             ; preds = %2252, %2256
  %2265 = phi ptr [ %2243, %2252 ], [ %2263, %2256 ]
  store ptr %2265, ptr @zz_hold, align 8, !tbaa !8
  %2266 = getelementptr inbounds %struct.word_type, ptr %2265, i64 0, i32 1
  %2267 = load i8, ptr %2266, align 8, !tbaa !5
  %2268 = add i8 %2267, -11
  %2269 = icmp ult i8 %2268, 2
  %2270 = getelementptr inbounds %struct.word_type, ptr %2265, i64 0, i32 1, i32 0, i32 1
  %2271 = zext i8 %2267 to i64
  %2272 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2271
  %2273 = select i1 %2269, ptr %2270, ptr %2272
  %2274 = load i8, ptr %2273, align 1, !tbaa !5
  %2275 = zext i8 %2274 to i32
  store i32 %2275, ptr @zz_size, align 4, !tbaa !10
  %2276 = zext i8 %2274 to i64
  %2277 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2276
  %2278 = load ptr, ptr %2277, align 8, !tbaa !8
  store ptr %2278, ptr %2265, align 8, !tbaa !5
  %2279 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2280 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2281 = sext i32 %2280 to i64
  %2282 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2281
  store ptr %2279, ptr %2282, align 8, !tbaa !8
  %2283 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2284 = getelementptr inbounds %struct.LIST, ptr %2283, i64 0, i32 1
  %2285 = load ptr, ptr %2284, align 8, !tbaa !5
  %2286 = icmp eq ptr %2285, %2283
  br i1 %2286, label %2287, label %2242

2287:                                             ; preds = %2264, %2192
  %2288 = phi ptr [ %2193, %2192 ], [ %2283, %2264 ]
  store ptr %2288, ptr @zz_hold, align 8, !tbaa !8
  %2289 = getelementptr inbounds %struct.word_type, ptr %2288, i64 0, i32 1
  %2290 = load i8, ptr %2289, align 8, !tbaa !5
  %2291 = add i8 %2290, -11
  %2292 = icmp ult i8 %2291, 2
  %2293 = getelementptr inbounds %struct.word_type, ptr %2288, i64 0, i32 1, i32 0, i32 1
  %2294 = zext i8 %2290 to i64
  %2295 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2294
  %2296 = select i1 %2292, ptr %2293, ptr %2295
  %2297 = load i8, ptr %2296, align 1, !tbaa !5
  %2298 = zext i8 %2297 to i32
  store i32 %2298, ptr @zz_size, align 4, !tbaa !10
  %2299 = zext i8 %2297 to i64
  %2300 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2299
  %2301 = load ptr, ptr %2300, align 8, !tbaa !8
  store ptr %2301, ptr %2288, align 8, !tbaa !5
  %2302 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2303 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2304 = sext i32 %2303 to i64
  %2305 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2304
  store ptr %2302, ptr %2305, align 8, !tbaa !8
  %2306 = getelementptr inbounds i8, ptr %468, i64 42
  %2307 = load i16, ptr %2306, align 2
  br i1 %52, label %2312, label %2308

2308:                                             ; preds = %2287
  %2309 = and i16 %2307, 16
  %2310 = icmp eq i16 %2309, 0
  br i1 %2310, label %2311, label %2456

2311:                                             ; preds = %2308
  call void @Interpose(ptr noundef nonnull %468, i32 noundef 19, ptr noundef %0, ptr noundef %1537) #5
  br label %2456

2312:                                             ; preds = %2287
  %2313 = and i16 %2307, 8
  %2314 = icmp eq i16 %2313, 0
  br i1 %2314, label %2315, label %2456

2315:                                             ; preds = %2312
  call void @Interpose(ptr noundef nonnull %468, i32 noundef 17, ptr noundef %1537, ptr noundef %1537) #5
  %2316 = getelementptr inbounds [2 x %struct.LIST], ptr %468, i64 0, i64 1, i32 1
  %2317 = load ptr, ptr %2316, align 8, !tbaa !5
  br label %2318

2318:                                             ; preds = %2318, %2315
  %2319 = phi ptr [ %2317, %2315 ], [ %2320, %2318 ]
  %2320 = load ptr, ptr %2319, align 8, !tbaa !5
  store ptr %2320, ptr %11, align 8, !tbaa !8
  %2321 = getelementptr inbounds %struct.word_type, ptr %2320, i64 0, i32 1
  %2322 = load i8, ptr %2321, align 8, !tbaa !5
  switch i8 %2322, label %2323 [
    i8 0, label %2318
    i8 17, label %2327
  ]

2323:                                             ; preds = %2318
  %2324 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2325 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2324, ptr noundef nonnull @.str.28) #5
  %2326 = load ptr, ptr %11, align 8, !tbaa !8
  br label %2327

2327:                                             ; preds = %2318, %2323
  %2328 = phi ptr [ %2326, %2323 ], [ %2320, %2318 ]
  %2329 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4
  %2330 = load i16, ptr %2329, align 8
  %2331 = and i16 %2330, 128
  %2332 = getelementptr inbounds %struct.closure_type, ptr %2328, i64 0, i32 4
  %2333 = load i16, ptr %2332, align 8
  %2334 = and i16 %2333, -129
  %2335 = or disjoint i16 %2334, %2331
  store i16 %2335, ptr %2332, align 8
  %2336 = load i16, ptr %2329, align 8
  %2337 = and i16 %2336, 256
  %2338 = and i16 %2335, -257
  %2339 = or disjoint i16 %2338, %2337
  store i16 %2339, ptr %2332, align 8
  %2340 = load i16, ptr %2329, align 8
  %2341 = and i16 %2340, 512
  %2342 = and i16 %2339, -513
  %2343 = or disjoint i16 %2342, %2341
  store i16 %2343, ptr %2332, align 8
  %2344 = load i16, ptr %2329, align 8
  %2345 = and i16 %2344, 7168
  %2346 = and i16 %2343, -7169
  %2347 = or disjoint i16 %2346, %2345
  store i16 %2347, ptr %2332, align 8
  %2348 = load i16, ptr %2329, align 8
  %2349 = and i16 %2348, -8192
  %2350 = and i16 %2347, 8191
  %2351 = or disjoint i16 %2350, %2349
  store i16 %2351, ptr %2332, align 8
  %2352 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %2353 = load i16, ptr %2352, align 2, !tbaa !5
  %2354 = getelementptr inbounds %struct.closure_type, ptr %2328, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %2353, ptr %2354, align 2, !tbaa !5
  %2355 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4, i32 0, i32 1
  %2356 = load i8, ptr %2355, align 4
  %2357 = and i8 %2356, 3
  %2358 = getelementptr inbounds %struct.closure_type, ptr %2328, i64 0, i32 4, i32 0, i32 1
  %2359 = load i8, ptr %2358, align 4
  %2360 = and i8 %2359, -4
  %2361 = or disjoint i8 %2360, %2357
  store i8 %2361, ptr %2358, align 4
  %2362 = load i8, ptr %2355, align 4
  %2363 = and i8 %2362, 12
  %2364 = and i8 %2361, -13
  %2365 = or disjoint i8 %2364, %2363
  store i8 %2365, ptr %2358, align 4
  %2366 = load i8, ptr %2355, align 4
  %2367 = and i8 %2366, 112
  %2368 = and i8 %2365, -113
  %2369 = or disjoint i8 %2368, %2367
  store i8 %2369, ptr %2358, align 4
  %2370 = load i8, ptr %2329, align 8
  %2371 = and i8 %2370, 8
  %2372 = trunc i16 %2335 to i8
  %2373 = and i8 %2372, -9
  %2374 = or disjoint i8 %2373, %2371
  store i8 %2374, ptr %2332, align 8
  %2375 = load i16, ptr %2355, align 4
  %2376 = and i16 %2375, 128
  %2377 = load i16, ptr %2358, align 4
  %2378 = and i16 %2377, -129
  %2379 = or disjoint i16 %2378, %2376
  store i16 %2379, ptr %2358, align 4
  %2380 = load i16, ptr %2355, align 4
  %2381 = and i16 %2380, 256
  %2382 = and i16 %2379, -257
  %2383 = or disjoint i16 %2382, %2381
  store i16 %2383, ptr %2358, align 4
  %2384 = load i16, ptr %2355, align 4
  %2385 = and i16 %2384, 512
  %2386 = and i16 %2383, -513
  %2387 = or disjoint i16 %2386, %2385
  store i16 %2387, ptr %2358, align 4
  %2388 = load i16, ptr %2355, align 4
  %2389 = and i16 %2388, 7168
  %2390 = and i16 %2387, -7169
  %2391 = or disjoint i16 %2390, %2389
  store i16 %2391, ptr %2358, align 4
  %2392 = load i16, ptr %2355, align 4
  %2393 = and i16 %2392, -8192
  %2394 = and i16 %2391, 8191
  %2395 = or disjoint i16 %2394, %2393
  store i16 %2395, ptr %2358, align 4
  %2396 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %2397 = load i16, ptr %2396, align 2, !tbaa !5
  %2398 = getelementptr inbounds %struct.closure_type, ptr %2328, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %2397, ptr %2398, align 2, !tbaa !5
  %2399 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4, i32 0, i32 4
  %2400 = load i32, ptr %2399, align 4
  %2401 = and i32 %2400, 4095
  %2402 = getelementptr inbounds %struct.closure_type, ptr %2328, i64 0, i32 4, i32 0, i32 4
  %2403 = load i32, ptr %2402, align 4
  %2404 = and i32 %2403, -4096
  %2405 = or disjoint i32 %2404, %2401
  store i32 %2405, ptr %2402, align 4
  %2406 = load i32, ptr %2399, align 4
  %2407 = and i32 %2406, 4190208
  %2408 = and i32 %2405, -4190209
  %2409 = or disjoint i32 %2408, %2407
  store i32 %2409, ptr %2402, align 4
  %2410 = load i32, ptr %2399, align 4
  %2411 = and i32 %2410, 12582912
  %2412 = and i32 %2409, -12582913
  %2413 = or disjoint i32 %2412, %2411
  store i32 %2413, ptr %2402, align 4
  %2414 = load i32, ptr %2399, align 4
  %2415 = and i32 %2414, 1056964608
  %2416 = and i32 %2413, -1056964609
  %2417 = or disjoint i32 %2416, %2415
  store i32 %2417, ptr %2402, align 4
  %2418 = load i32, ptr %2399, align 4
  %2419 = and i32 %2418, -2147483648
  %2420 = and i32 %2417, 2147483647
  %2421 = or disjoint i32 %2420, %2419
  store i32 %2421, ptr %2402, align 4
  %2422 = load i32, ptr %2399, align 4
  %2423 = and i32 %2422, 1073741824
  %2424 = and i32 %2421, -1073741825
  %2425 = or disjoint i32 %2424, %2423
  store i32 %2425, ptr %2402, align 4
  %2426 = load i8, ptr %2329, align 8
  %2427 = and i8 %2426, 1
  %2428 = and i8 %2374, -2
  %2429 = or disjoint i8 %2427, %2428
  store i8 %2429, ptr %2332, align 8
  %2430 = load i8, ptr %2329, align 8
  %2431 = and i8 %2430, 2
  %2432 = and i8 %2429, -3
  %2433 = or disjoint i8 %2432, %2431
  store i8 %2433, ptr %2332, align 8
  %2434 = load i8, ptr %2329, align 8
  %2435 = and i8 %2434, 4
  %2436 = and i8 %2433, -5
  %2437 = or disjoint i8 %2436, %2435
  store i8 %2437, ptr %2332, align 8
  %2438 = load i8, ptr %2329, align 8
  %2439 = and i8 %2438, 112
  %2440 = and i8 %2437, -113
  %2441 = or disjoint i8 %2440, %2439
  store i8 %2441, ptr %2332, align 8
  %2442 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4, i32 0, i32 2
  %2443 = load i16, ptr %2442, align 8, !tbaa !5
  %2444 = getelementptr inbounds %struct.closure_type, ptr %2328, i64 0, i32 4, i32 0, i32 2
  store i16 %2443, ptr %2444, align 8, !tbaa !5
  %2445 = getelementptr inbounds %struct.closure_type, ptr %468, i64 0, i32 4, i32 0, i32 3
  %2446 = load i16, ptr %2445, align 2, !tbaa !5
  %2447 = getelementptr inbounds %struct.closure_type, ptr %2328, i64 0, i32 4, i32 0, i32 3
  store i16 %2446, ptr %2447, align 2, !tbaa !5
  %2448 = lshr i8 %2434, 2
  %2449 = getelementptr inbounds i8, ptr %2328, i64 42
  %2450 = load i16, ptr %2449, align 2
  %2451 = and i8 %2448, 1
  %2452 = zext nneg i8 %2451 to i16
  %2453 = shl nuw nsw i16 %2452, 11
  %2454 = and i16 %2450, -2049
  %2455 = or disjoint i16 %2454, %2453
  store i16 %2455, ptr %2449, align 2
  br label %2456

2456:                                             ; preds = %2308, %2312, %2327, %2311
  %2457 = getelementptr inbounds %struct.LIST, ptr %755, i64 0, i32 1
  %2458 = load ptr, ptr %2457, align 8, !tbaa !5
  %2459 = load ptr, ptr %5, align 8, !tbaa !8
  call void @Promote(ptr noundef %0, ptr noundef %2458, ptr noundef %2459, i32 noundef 1) #5
  %2460 = load i16, ptr %344, align 2
  %2461 = and i16 %2460, 24
  %2462 = icmp eq i16 %2461, 0
  br i1 %2462, label %2463, label %2473

2463:                                             ; preds = %2456
  %2464 = load ptr, ptr %333, align 8, !tbaa !5
  br label %2465

2465:                                             ; preds = %2465, %2463
  %2466 = phi ptr [ %2464, %2463 ], [ %2468, %2465 ]
  %2467 = getelementptr inbounds [2 x %struct.LIST], ptr %2466, i64 0, i64 1
  %2468 = load ptr, ptr %2467, align 8, !tbaa !5
  %2469 = getelementptr inbounds %struct.word_type, ptr %2468, i64 0, i32 1
  %2470 = load i8, ptr %2469, align 8, !tbaa !5
  %2471 = icmp eq i8 %2470, 0
  br i1 %2471, label %2465, label %2472

2472:                                             ; preds = %2465
  call void @Interpose(ptr noundef %311, i32 noundef 19, ptr noundef nonnull %2468, ptr noundef nonnull %2468) #5
  br label %2473

2473:                                             ; preds = %2472, %2456
  call void @Promote(ptr noundef nonnull %333, ptr noundef nonnull %333, ptr noundef nonnull %302, i32 noundef 1) #5
  store ptr %333, ptr @xx_hold, align 8, !tbaa !8
  %2474 = load ptr, ptr %1730, align 8, !tbaa !5
  %2475 = icmp eq ptr %2474, %333
  br i1 %2475, label %2476, label %2481

2476:                                             ; preds = %2503, %2473
  %2477 = phi ptr [ %333, %2473 ], [ %2522, %2503 ]
  %2478 = getelementptr inbounds %struct.LIST, ptr %2477, i64 0, i32 1
  %2479 = load ptr, ptr %2478, align 8, !tbaa !5
  %2480 = icmp eq ptr %2479, %2477
  br i1 %2480, label %2571, label %2526

2481:                                             ; preds = %2473, %2503
  %2482 = phi ptr [ %2524, %2503 ], [ %2474, %2473 ]
  store ptr %2482, ptr @xx_link, align 8, !tbaa !8
  %2483 = getelementptr inbounds [2 x %struct.LIST], ptr %2482, i64 0, i64 1, i32 1
  %2484 = load ptr, ptr %2483, align 8, !tbaa !5
  %2485 = icmp eq ptr %2484, %2482
  br i1 %2485, label %2491, label %2486

2486:                                             ; preds = %2481
  store ptr %2484, ptr @zz_res, align 8, !tbaa !8
  %2487 = getelementptr inbounds [2 x %struct.LIST], ptr %2482, i64 0, i64 1
  %2488 = load ptr, ptr %2487, align 8, !tbaa !5
  %2489 = getelementptr inbounds [2 x %struct.LIST], ptr %2484, i64 0, i64 1
  store ptr %2488, ptr %2489, align 8, !tbaa !5
  %2490 = getelementptr inbounds [2 x %struct.LIST], ptr %2488, i64 0, i64 1, i32 1
  store ptr %2484, ptr %2490, align 8, !tbaa !5
  store ptr %2482, ptr %2483, align 8, !tbaa !5
  store ptr %2482, ptr %2487, align 8, !tbaa !5
  br label %2491

2491:                                             ; preds = %2481, %2486
  store ptr %2482, ptr @zz_hold, align 8, !tbaa !8
  %2492 = getelementptr inbounds %struct.LIST, ptr %2482, i64 0, i32 1
  %2493 = load ptr, ptr %2492, align 8, !tbaa !5
  %2494 = icmp eq ptr %2493, %2482
  br i1 %2494, label %2503, label %2495

2495:                                             ; preds = %2491
  store ptr %2493, ptr @zz_res, align 8, !tbaa !8
  %2496 = load ptr, ptr %2482, align 8, !tbaa !5
  store ptr %2496, ptr %2493, align 8, !tbaa !5
  %2497 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2498 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2499 = load ptr, ptr %2498, align 8, !tbaa !5
  %2500 = getelementptr inbounds %struct.LIST, ptr %2499, i64 0, i32 1
  store ptr %2497, ptr %2500, align 8, !tbaa !5
  %2501 = getelementptr inbounds %struct.LIST, ptr %2498, i64 0, i32 1
  store ptr %2498, ptr %2501, align 8, !tbaa !5
  store ptr %2498, ptr %2498, align 8, !tbaa !5
  %2502 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2503

2503:                                             ; preds = %2491, %2495
  %2504 = phi ptr [ %2482, %2491 ], [ %2502, %2495 ]
  store ptr %2504, ptr @zz_hold, align 8, !tbaa !8
  %2505 = getelementptr inbounds %struct.word_type, ptr %2504, i64 0, i32 1
  %2506 = load i8, ptr %2505, align 8, !tbaa !5
  %2507 = add i8 %2506, -11
  %2508 = icmp ult i8 %2507, 2
  %2509 = getelementptr inbounds %struct.word_type, ptr %2504, i64 0, i32 1, i32 0, i32 1
  %2510 = zext i8 %2506 to i64
  %2511 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2510
  %2512 = select i1 %2508, ptr %2509, ptr %2511
  %2513 = load i8, ptr %2512, align 1, !tbaa !5
  %2514 = zext i8 %2513 to i32
  store i32 %2514, ptr @zz_size, align 4, !tbaa !10
  %2515 = zext i8 %2513 to i64
  %2516 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2515
  %2517 = load ptr, ptr %2516, align 8, !tbaa !8
  store ptr %2517, ptr %2504, align 8, !tbaa !5
  %2518 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2519 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2520 = sext i32 %2519 to i64
  %2521 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2520
  store ptr %2518, ptr %2521, align 8, !tbaa !8
  %2522 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2523 = getelementptr inbounds [2 x %struct.LIST], ptr %2522, i64 0, i64 1, i32 1
  %2524 = load ptr, ptr %2523, align 8, !tbaa !5
  %2525 = icmp eq ptr %2524, %2522
  br i1 %2525, label %2476, label %2481

2526:                                             ; preds = %2476, %2548
  %2527 = phi ptr [ %2569, %2548 ], [ %2479, %2476 ]
  store ptr %2527, ptr @xx_link, align 8, !tbaa !8
  %2528 = getelementptr inbounds [2 x %struct.LIST], ptr %2527, i64 0, i64 1, i32 1
  %2529 = load ptr, ptr %2528, align 8, !tbaa !5
  %2530 = icmp eq ptr %2529, %2527
  br i1 %2530, label %2536, label %2531

2531:                                             ; preds = %2526
  store ptr %2529, ptr @zz_res, align 8, !tbaa !8
  %2532 = getelementptr inbounds [2 x %struct.LIST], ptr %2527, i64 0, i64 1
  %2533 = load ptr, ptr %2532, align 8, !tbaa !5
  %2534 = getelementptr inbounds [2 x %struct.LIST], ptr %2529, i64 0, i64 1
  store ptr %2533, ptr %2534, align 8, !tbaa !5
  %2535 = getelementptr inbounds [2 x %struct.LIST], ptr %2533, i64 0, i64 1, i32 1
  store ptr %2529, ptr %2535, align 8, !tbaa !5
  store ptr %2527, ptr %2528, align 8, !tbaa !5
  store ptr %2527, ptr %2532, align 8, !tbaa !5
  br label %2536

2536:                                             ; preds = %2526, %2531
  store ptr %2527, ptr @zz_hold, align 8, !tbaa !8
  %2537 = getelementptr inbounds %struct.LIST, ptr %2527, i64 0, i32 1
  %2538 = load ptr, ptr %2537, align 8, !tbaa !5
  %2539 = icmp eq ptr %2538, %2527
  br i1 %2539, label %2548, label %2540

2540:                                             ; preds = %2536
  store ptr %2538, ptr @zz_res, align 8, !tbaa !8
  %2541 = load ptr, ptr %2527, align 8, !tbaa !5
  store ptr %2541, ptr %2538, align 8, !tbaa !5
  %2542 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2543 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2544 = load ptr, ptr %2543, align 8, !tbaa !5
  %2545 = getelementptr inbounds %struct.LIST, ptr %2544, i64 0, i32 1
  store ptr %2542, ptr %2545, align 8, !tbaa !5
  %2546 = getelementptr inbounds %struct.LIST, ptr %2543, i64 0, i32 1
  store ptr %2543, ptr %2546, align 8, !tbaa !5
  store ptr %2543, ptr %2543, align 8, !tbaa !5
  %2547 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2548

2548:                                             ; preds = %2536, %2540
  %2549 = phi ptr [ %2527, %2536 ], [ %2547, %2540 ]
  store ptr %2549, ptr @zz_hold, align 8, !tbaa !8
  %2550 = getelementptr inbounds %struct.word_type, ptr %2549, i64 0, i32 1
  %2551 = load i8, ptr %2550, align 8, !tbaa !5
  %2552 = add i8 %2551, -11
  %2553 = icmp ult i8 %2552, 2
  %2554 = getelementptr inbounds %struct.word_type, ptr %2549, i64 0, i32 1, i32 0, i32 1
  %2555 = zext i8 %2551 to i64
  %2556 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2555
  %2557 = select i1 %2553, ptr %2554, ptr %2556
  %2558 = load i8, ptr %2557, align 1, !tbaa !5
  %2559 = zext i8 %2558 to i32
  store i32 %2559, ptr @zz_size, align 4, !tbaa !10
  %2560 = zext i8 %2558 to i64
  %2561 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2560
  %2562 = load ptr, ptr %2561, align 8, !tbaa !8
  store ptr %2562, ptr %2549, align 8, !tbaa !5
  %2563 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2564 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2565 = sext i32 %2564 to i64
  %2566 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2565
  store ptr %2563, ptr %2566, align 8, !tbaa !8
  %2567 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2568 = getelementptr inbounds %struct.LIST, ptr %2567, i64 0, i32 1
  %2569 = load ptr, ptr %2568, align 8, !tbaa !5
  %2570 = icmp eq ptr %2569, %2567
  br i1 %2570, label %2571, label %2526

2571:                                             ; preds = %2548, %2476
  %2572 = phi ptr [ %2477, %2476 ], [ %2567, %2548 ]
  store ptr %2572, ptr @zz_hold, align 8, !tbaa !8
  %2573 = getelementptr inbounds %struct.word_type, ptr %2572, i64 0, i32 1
  %2574 = load i8, ptr %2573, align 8, !tbaa !5
  %2575 = add i8 %2574, -11
  %2576 = icmp ult i8 %2575, 2
  %2577 = getelementptr inbounds %struct.word_type, ptr %2572, i64 0, i32 1, i32 0, i32 1
  %2578 = zext i8 %2574 to i64
  %2579 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2578
  %2580 = select i1 %2576, ptr %2577, ptr %2579
  %2581 = load i8, ptr %2580, align 1, !tbaa !5
  %2582 = zext i8 %2581 to i32
  store i32 %2582, ptr @zz_size, align 4, !tbaa !10
  %2583 = zext i8 %2581 to i64
  %2584 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2583
  %2585 = load ptr, ptr %2584, align 8, !tbaa !8
  store ptr %2585, ptr %2572, align 8, !tbaa !5
  %2586 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2587 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2588 = sext i32 %2587 to i64
  %2589 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2588
  store ptr %2586, ptr %2589, align 8, !tbaa !8
  %2590 = getelementptr inbounds %struct.LIST, ptr %302, i64 0, i32 1
  %2591 = load ptr, ptr %2590, align 8, !tbaa !5
  %2592 = icmp eq ptr %2591, %302
  br i1 %2592, label %2596, label %2593

2593:                                             ; preds = %2571
  %2594 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2595 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2594, ptr noundef nonnull @.str.29) #5
  br label %2596

2596:                                             ; preds = %2593, %2571
  %2597 = load i16, ptr %446, align 2
  %2598 = and i16 %2597, 32
  %2599 = icmp eq i16 %2598, 0
  br i1 %2599, label %2605, label %2600

2600:                                             ; preds = %2596
  %2601 = load ptr, ptr %5, align 8, !tbaa !8
  %2602 = getelementptr inbounds i8, ptr %2601, i64 42
  %2603 = load i16, ptr %2602, align 2
  %2604 = or i16 %2603, 32
  store i16 %2604, ptr %2602, align 2
  br label %2605

2605:                                             ; preds = %2600, %2596
  store ptr %302, ptr @xx_hold, align 8, !tbaa !8
  %2606 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  %2607 = load ptr, ptr %2606, align 8, !tbaa !5
  %2608 = icmp eq ptr %2607, %302
  br i1 %2608, label %2609, label %2614

2609:                                             ; preds = %2636, %2605
  %2610 = phi ptr [ %302, %2605 ], [ %2655, %2636 ]
  %2611 = getelementptr inbounds %struct.LIST, ptr %2610, i64 0, i32 1
  %2612 = load ptr, ptr %2611, align 8, !tbaa !5
  %2613 = icmp eq ptr %2612, %2610
  br i1 %2613, label %2704, label %2659

2614:                                             ; preds = %2605, %2636
  %2615 = phi ptr [ %2657, %2636 ], [ %2607, %2605 ]
  store ptr %2615, ptr @xx_link, align 8, !tbaa !8
  %2616 = getelementptr inbounds [2 x %struct.LIST], ptr %2615, i64 0, i64 1, i32 1
  %2617 = load ptr, ptr %2616, align 8, !tbaa !5
  %2618 = icmp eq ptr %2617, %2615
  br i1 %2618, label %2624, label %2619

2619:                                             ; preds = %2614
  store ptr %2617, ptr @zz_res, align 8, !tbaa !8
  %2620 = getelementptr inbounds [2 x %struct.LIST], ptr %2615, i64 0, i64 1
  %2621 = load ptr, ptr %2620, align 8, !tbaa !5
  %2622 = getelementptr inbounds [2 x %struct.LIST], ptr %2617, i64 0, i64 1
  store ptr %2621, ptr %2622, align 8, !tbaa !5
  %2623 = getelementptr inbounds [2 x %struct.LIST], ptr %2621, i64 0, i64 1, i32 1
  store ptr %2617, ptr %2623, align 8, !tbaa !5
  store ptr %2615, ptr %2616, align 8, !tbaa !5
  store ptr %2615, ptr %2620, align 8, !tbaa !5
  br label %2624

2624:                                             ; preds = %2614, %2619
  store ptr %2615, ptr @zz_hold, align 8, !tbaa !8
  %2625 = getelementptr inbounds %struct.LIST, ptr %2615, i64 0, i32 1
  %2626 = load ptr, ptr %2625, align 8, !tbaa !5
  %2627 = icmp eq ptr %2626, %2615
  br i1 %2627, label %2636, label %2628

2628:                                             ; preds = %2624
  store ptr %2626, ptr @zz_res, align 8, !tbaa !8
  %2629 = load ptr, ptr %2615, align 8, !tbaa !5
  store ptr %2629, ptr %2626, align 8, !tbaa !5
  %2630 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2631 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2632 = load ptr, ptr %2631, align 8, !tbaa !5
  %2633 = getelementptr inbounds %struct.LIST, ptr %2632, i64 0, i32 1
  store ptr %2630, ptr %2633, align 8, !tbaa !5
  %2634 = getelementptr inbounds %struct.LIST, ptr %2631, i64 0, i32 1
  store ptr %2631, ptr %2634, align 8, !tbaa !5
  store ptr %2631, ptr %2631, align 8, !tbaa !5
  %2635 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2636

2636:                                             ; preds = %2624, %2628
  %2637 = phi ptr [ %2615, %2624 ], [ %2635, %2628 ]
  store ptr %2637, ptr @zz_hold, align 8, !tbaa !8
  %2638 = getelementptr inbounds %struct.word_type, ptr %2637, i64 0, i32 1
  %2639 = load i8, ptr %2638, align 8, !tbaa !5
  %2640 = add i8 %2639, -11
  %2641 = icmp ult i8 %2640, 2
  %2642 = getelementptr inbounds %struct.word_type, ptr %2637, i64 0, i32 1, i32 0, i32 1
  %2643 = zext i8 %2639 to i64
  %2644 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2643
  %2645 = select i1 %2641, ptr %2642, ptr %2644
  %2646 = load i8, ptr %2645, align 1, !tbaa !5
  %2647 = zext i8 %2646 to i32
  store i32 %2647, ptr @zz_size, align 4, !tbaa !10
  %2648 = zext i8 %2646 to i64
  %2649 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2648
  %2650 = load ptr, ptr %2649, align 8, !tbaa !8
  store ptr %2650, ptr %2637, align 8, !tbaa !5
  %2651 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2652 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2653 = sext i32 %2652 to i64
  %2654 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2653
  store ptr %2651, ptr %2654, align 8, !tbaa !8
  %2655 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2656 = getelementptr inbounds [2 x %struct.LIST], ptr %2655, i64 0, i64 1, i32 1
  %2657 = load ptr, ptr %2656, align 8, !tbaa !5
  %2658 = icmp eq ptr %2657, %2655
  br i1 %2658, label %2609, label %2614

2659:                                             ; preds = %2609, %2681
  %2660 = phi ptr [ %2702, %2681 ], [ %2612, %2609 ]
  store ptr %2660, ptr @xx_link, align 8, !tbaa !8
  %2661 = getelementptr inbounds [2 x %struct.LIST], ptr %2660, i64 0, i64 1, i32 1
  %2662 = load ptr, ptr %2661, align 8, !tbaa !5
  %2663 = icmp eq ptr %2662, %2660
  br i1 %2663, label %2669, label %2664

2664:                                             ; preds = %2659
  store ptr %2662, ptr @zz_res, align 8, !tbaa !8
  %2665 = getelementptr inbounds [2 x %struct.LIST], ptr %2660, i64 0, i64 1
  %2666 = load ptr, ptr %2665, align 8, !tbaa !5
  %2667 = getelementptr inbounds [2 x %struct.LIST], ptr %2662, i64 0, i64 1
  store ptr %2666, ptr %2667, align 8, !tbaa !5
  %2668 = getelementptr inbounds [2 x %struct.LIST], ptr %2666, i64 0, i64 1, i32 1
  store ptr %2662, ptr %2668, align 8, !tbaa !5
  store ptr %2660, ptr %2661, align 8, !tbaa !5
  store ptr %2660, ptr %2665, align 8, !tbaa !5
  br label %2669

2669:                                             ; preds = %2659, %2664
  store ptr %2660, ptr @zz_hold, align 8, !tbaa !8
  %2670 = getelementptr inbounds %struct.LIST, ptr %2660, i64 0, i32 1
  %2671 = load ptr, ptr %2670, align 8, !tbaa !5
  %2672 = icmp eq ptr %2671, %2660
  br i1 %2672, label %2681, label %2673

2673:                                             ; preds = %2669
  store ptr %2671, ptr @zz_res, align 8, !tbaa !8
  %2674 = load ptr, ptr %2660, align 8, !tbaa !5
  store ptr %2674, ptr %2671, align 8, !tbaa !5
  %2675 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2676 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2677 = load ptr, ptr %2676, align 8, !tbaa !5
  %2678 = getelementptr inbounds %struct.LIST, ptr %2677, i64 0, i32 1
  store ptr %2675, ptr %2678, align 8, !tbaa !5
  %2679 = getelementptr inbounds %struct.LIST, ptr %2676, i64 0, i32 1
  store ptr %2676, ptr %2679, align 8, !tbaa !5
  store ptr %2676, ptr %2676, align 8, !tbaa !5
  %2680 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2681

2681:                                             ; preds = %2669, %2673
  %2682 = phi ptr [ %2660, %2669 ], [ %2680, %2673 ]
  store ptr %2682, ptr @zz_hold, align 8, !tbaa !8
  %2683 = getelementptr inbounds %struct.word_type, ptr %2682, i64 0, i32 1
  %2684 = load i8, ptr %2683, align 8, !tbaa !5
  %2685 = add i8 %2684, -11
  %2686 = icmp ult i8 %2685, 2
  %2687 = getelementptr inbounds %struct.word_type, ptr %2682, i64 0, i32 1, i32 0, i32 1
  %2688 = zext i8 %2684 to i64
  %2689 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2688
  %2690 = select i1 %2686, ptr %2687, ptr %2689
  %2691 = load i8, ptr %2690, align 1, !tbaa !5
  %2692 = zext i8 %2691 to i32
  store i32 %2692, ptr @zz_size, align 4, !tbaa !10
  %2693 = zext i8 %2691 to i64
  %2694 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2693
  %2695 = load ptr, ptr %2694, align 8, !tbaa !8
  store ptr %2695, ptr %2682, align 8, !tbaa !5
  %2696 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2697 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2698 = sext i32 %2697 to i64
  %2699 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2698
  store ptr %2696, ptr %2699, align 8, !tbaa !8
  %2700 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2701 = getelementptr inbounds %struct.LIST, ptr %2700, i64 0, i32 1
  %2702 = load ptr, ptr %2701, align 8, !tbaa !5
  %2703 = icmp eq ptr %2702, %2700
  br i1 %2703, label %2704, label %2659

2704:                                             ; preds = %2681, %2609
  %2705 = phi ptr [ %2610, %2609 ], [ %2700, %2681 ]
  store ptr %2705, ptr @zz_hold, align 8, !tbaa !8
  %2706 = getelementptr inbounds %struct.word_type, ptr %2705, i64 0, i32 1
  %2707 = load i8, ptr %2706, align 8, !tbaa !5
  %2708 = add i8 %2707, -11
  %2709 = icmp ult i8 %2708, 2
  %2710 = getelementptr inbounds %struct.word_type, ptr %2705, i64 0, i32 1, i32 0, i32 1
  %2711 = zext i8 %2707 to i64
  %2712 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2711
  %2713 = select i1 %2709, ptr %2710, ptr %2712
  %2714 = load i8, ptr %2713, align 1, !tbaa !5
  %2715 = zext i8 %2714 to i32
  store i32 %2715, ptr @zz_size, align 4, !tbaa !10
  %2716 = zext i8 %2714 to i64
  %2717 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2716
  %2718 = load ptr, ptr %2717, align 8, !tbaa !8
  store ptr %2718, ptr %2705, align 8, !tbaa !5
  %2719 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2720 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2721 = sext i32 %2720 to i64
  %2722 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2721
  store ptr %2719, ptr %2722, align 8, !tbaa !8
  %2723 = load ptr, ptr %6, align 8, !tbaa !8
  %2724 = icmp eq ptr %2723, null
  %2725 = load ptr, ptr %4, align 8, !tbaa !8
  br i1 %2724, label %2726, label %2727

2726:                                             ; preds = %2704
  store ptr %2725, ptr %1, align 8, !tbaa !8
  br label %2881

2727:                                             ; preds = %2704
  %2728 = icmp eq ptr %2725, null
  br i1 %2728, label %2729, label %2730

2729:                                             ; preds = %2727
  store ptr %2723, ptr %1, align 8, !tbaa !8
  br label %2881

2730:                                             ; preds = %2727
  %2731 = getelementptr inbounds %struct.LIST, ptr %2725, i64 0, i32 1
  %2732 = load ptr, ptr %2731, align 8, !tbaa !5
  %2733 = icmp eq ptr %2732, %2725
  br i1 %2733, label %2761, label %2734

2734:                                             ; preds = %2730
  %2735 = getelementptr inbounds %struct.word_type, ptr %2732, i64 0, i32 1
  %2736 = load i8, ptr %2735, align 8, !tbaa !5
  %2737 = icmp eq i8 %2736, 0
  br i1 %2737, label %2741, label %2738

2738:                                             ; preds = %2734
  %2739 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2740 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2739, ptr noundef nonnull @.str.26) #5
  br label %2741

2741:                                             ; preds = %2734, %2738
  store ptr %2732, ptr @zz_res, align 8, !tbaa !8
  store ptr %2725, ptr @zz_hold, align 8, !tbaa !8
  %2742 = load ptr, ptr %2725, align 8, !tbaa !5
  store ptr %2742, ptr @zz_tmp, align 8, !tbaa !8
  %2743 = load ptr, ptr %2732, align 8, !tbaa !5
  store ptr %2743, ptr %2725, align 8, !tbaa !5
  %2744 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2745 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2746 = load ptr, ptr %2745, align 8, !tbaa !5
  %2747 = getelementptr inbounds %struct.LIST, ptr %2746, i64 0, i32 1
  store ptr %2744, ptr %2747, align 8, !tbaa !5
  %2748 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2748, ptr %2745, align 8, !tbaa !5
  %2749 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2750 = getelementptr inbounds %struct.LIST, ptr %2748, i64 0, i32 1
  store ptr %2749, ptr %2750, align 8, !tbaa !5
  store ptr %2732, ptr @zz_res, align 8, !tbaa !8
  store ptr %2723, ptr @zz_hold, align 8, !tbaa !8
  %2751 = load ptr, ptr %2723, align 8, !tbaa !5
  store ptr %2751, ptr @zz_tmp, align 8, !tbaa !8
  %2752 = load ptr, ptr %2732, align 8, !tbaa !5
  store ptr %2752, ptr %2723, align 8, !tbaa !5
  %2753 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2754 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2755 = load ptr, ptr %2754, align 8, !tbaa !5
  %2756 = getelementptr inbounds %struct.LIST, ptr %2755, i64 0, i32 1
  store ptr %2753, ptr %2756, align 8, !tbaa !5
  %2757 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2757, ptr %2754, align 8, !tbaa !5
  %2758 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2759 = getelementptr inbounds %struct.LIST, ptr %2757, i64 0, i32 1
  store ptr %2758, ptr %2759, align 8, !tbaa !5
  %2760 = load ptr, ptr %4, align 8, !tbaa !8
  br label %2761

2761:                                             ; preds = %2741, %2730
  %2762 = phi ptr [ %2760, %2741 ], [ %2725, %2730 ]
  store ptr %2762, ptr @xx_hold, align 8, !tbaa !8
  %2763 = getelementptr inbounds [2 x %struct.LIST], ptr %2762, i64 0, i64 1, i32 1
  %2764 = load ptr, ptr %2763, align 8, !tbaa !5
  %2765 = icmp eq ptr %2764, %2762
  br i1 %2765, label %2766, label %2771

2766:                                             ; preds = %2793, %2761
  %2767 = phi ptr [ %2762, %2761 ], [ %2812, %2793 ]
  %2768 = getelementptr inbounds %struct.LIST, ptr %2767, i64 0, i32 1
  %2769 = load ptr, ptr %2768, align 8, !tbaa !5
  %2770 = icmp eq ptr %2769, %2767
  br i1 %2770, label %2861, label %2816

2771:                                             ; preds = %2761, %2793
  %2772 = phi ptr [ %2814, %2793 ], [ %2764, %2761 ]
  store ptr %2772, ptr @xx_link, align 8, !tbaa !8
  %2773 = getelementptr inbounds [2 x %struct.LIST], ptr %2772, i64 0, i64 1, i32 1
  %2774 = load ptr, ptr %2773, align 8, !tbaa !5
  %2775 = icmp eq ptr %2774, %2772
  br i1 %2775, label %2781, label %2776

2776:                                             ; preds = %2771
  store ptr %2774, ptr @zz_res, align 8, !tbaa !8
  %2777 = getelementptr inbounds [2 x %struct.LIST], ptr %2772, i64 0, i64 1
  %2778 = load ptr, ptr %2777, align 8, !tbaa !5
  %2779 = getelementptr inbounds [2 x %struct.LIST], ptr %2774, i64 0, i64 1
  store ptr %2778, ptr %2779, align 8, !tbaa !5
  %2780 = getelementptr inbounds [2 x %struct.LIST], ptr %2778, i64 0, i64 1, i32 1
  store ptr %2774, ptr %2780, align 8, !tbaa !5
  store ptr %2772, ptr %2773, align 8, !tbaa !5
  store ptr %2772, ptr %2777, align 8, !tbaa !5
  br label %2781

2781:                                             ; preds = %2771, %2776
  store ptr %2772, ptr @zz_hold, align 8, !tbaa !8
  %2782 = getelementptr inbounds %struct.LIST, ptr %2772, i64 0, i32 1
  %2783 = load ptr, ptr %2782, align 8, !tbaa !5
  %2784 = icmp eq ptr %2783, %2772
  br i1 %2784, label %2793, label %2785

2785:                                             ; preds = %2781
  store ptr %2783, ptr @zz_res, align 8, !tbaa !8
  %2786 = load ptr, ptr %2772, align 8, !tbaa !5
  store ptr %2786, ptr %2783, align 8, !tbaa !5
  %2787 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2788 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2789 = load ptr, ptr %2788, align 8, !tbaa !5
  %2790 = getelementptr inbounds %struct.LIST, ptr %2789, i64 0, i32 1
  store ptr %2787, ptr %2790, align 8, !tbaa !5
  %2791 = getelementptr inbounds %struct.LIST, ptr %2788, i64 0, i32 1
  store ptr %2788, ptr %2791, align 8, !tbaa !5
  store ptr %2788, ptr %2788, align 8, !tbaa !5
  %2792 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2793

2793:                                             ; preds = %2781, %2785
  %2794 = phi ptr [ %2772, %2781 ], [ %2792, %2785 ]
  store ptr %2794, ptr @zz_hold, align 8, !tbaa !8
  %2795 = getelementptr inbounds %struct.word_type, ptr %2794, i64 0, i32 1
  %2796 = load i8, ptr %2795, align 8, !tbaa !5
  %2797 = add i8 %2796, -11
  %2798 = icmp ult i8 %2797, 2
  %2799 = getelementptr inbounds %struct.word_type, ptr %2794, i64 0, i32 1, i32 0, i32 1
  %2800 = zext i8 %2796 to i64
  %2801 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2800
  %2802 = select i1 %2798, ptr %2799, ptr %2801
  %2803 = load i8, ptr %2802, align 1, !tbaa !5
  %2804 = zext i8 %2803 to i32
  store i32 %2804, ptr @zz_size, align 4, !tbaa !10
  %2805 = zext i8 %2803 to i64
  %2806 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2805
  %2807 = load ptr, ptr %2806, align 8, !tbaa !8
  store ptr %2807, ptr %2794, align 8, !tbaa !5
  %2808 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2809 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2810 = sext i32 %2809 to i64
  %2811 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2810
  store ptr %2808, ptr %2811, align 8, !tbaa !8
  %2812 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2813 = getelementptr inbounds [2 x %struct.LIST], ptr %2812, i64 0, i64 1, i32 1
  %2814 = load ptr, ptr %2813, align 8, !tbaa !5
  %2815 = icmp eq ptr %2814, %2812
  br i1 %2815, label %2766, label %2771

2816:                                             ; preds = %2766, %2838
  %2817 = phi ptr [ %2859, %2838 ], [ %2769, %2766 ]
  store ptr %2817, ptr @xx_link, align 8, !tbaa !8
  %2818 = getelementptr inbounds [2 x %struct.LIST], ptr %2817, i64 0, i64 1, i32 1
  %2819 = load ptr, ptr %2818, align 8, !tbaa !5
  %2820 = icmp eq ptr %2819, %2817
  br i1 %2820, label %2826, label %2821

2821:                                             ; preds = %2816
  store ptr %2819, ptr @zz_res, align 8, !tbaa !8
  %2822 = getelementptr inbounds [2 x %struct.LIST], ptr %2817, i64 0, i64 1
  %2823 = load ptr, ptr %2822, align 8, !tbaa !5
  %2824 = getelementptr inbounds [2 x %struct.LIST], ptr %2819, i64 0, i64 1
  store ptr %2823, ptr %2824, align 8, !tbaa !5
  %2825 = getelementptr inbounds [2 x %struct.LIST], ptr %2823, i64 0, i64 1, i32 1
  store ptr %2819, ptr %2825, align 8, !tbaa !5
  store ptr %2817, ptr %2818, align 8, !tbaa !5
  store ptr %2817, ptr %2822, align 8, !tbaa !5
  br label %2826

2826:                                             ; preds = %2816, %2821
  store ptr %2817, ptr @zz_hold, align 8, !tbaa !8
  %2827 = getelementptr inbounds %struct.LIST, ptr %2817, i64 0, i32 1
  %2828 = load ptr, ptr %2827, align 8, !tbaa !5
  %2829 = icmp eq ptr %2828, %2817
  br i1 %2829, label %2838, label %2830

2830:                                             ; preds = %2826
  store ptr %2828, ptr @zz_res, align 8, !tbaa !8
  %2831 = load ptr, ptr %2817, align 8, !tbaa !5
  store ptr %2831, ptr %2828, align 8, !tbaa !5
  %2832 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2833 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2834 = load ptr, ptr %2833, align 8, !tbaa !5
  %2835 = getelementptr inbounds %struct.LIST, ptr %2834, i64 0, i32 1
  store ptr %2832, ptr %2835, align 8, !tbaa !5
  %2836 = getelementptr inbounds %struct.LIST, ptr %2833, i64 0, i32 1
  store ptr %2833, ptr %2836, align 8, !tbaa !5
  store ptr %2833, ptr %2833, align 8, !tbaa !5
  %2837 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2838

2838:                                             ; preds = %2826, %2830
  %2839 = phi ptr [ %2817, %2826 ], [ %2837, %2830 ]
  store ptr %2839, ptr @zz_hold, align 8, !tbaa !8
  %2840 = getelementptr inbounds %struct.word_type, ptr %2839, i64 0, i32 1
  %2841 = load i8, ptr %2840, align 8, !tbaa !5
  %2842 = add i8 %2841, -11
  %2843 = icmp ult i8 %2842, 2
  %2844 = getelementptr inbounds %struct.word_type, ptr %2839, i64 0, i32 1, i32 0, i32 1
  %2845 = zext i8 %2841 to i64
  %2846 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2845
  %2847 = select i1 %2843, ptr %2844, ptr %2846
  %2848 = load i8, ptr %2847, align 1, !tbaa !5
  %2849 = zext i8 %2848 to i32
  store i32 %2849, ptr @zz_size, align 4, !tbaa !10
  %2850 = zext i8 %2848 to i64
  %2851 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2850
  %2852 = load ptr, ptr %2851, align 8, !tbaa !8
  store ptr %2852, ptr %2839, align 8, !tbaa !5
  %2853 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2854 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2855 = sext i32 %2854 to i64
  %2856 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2855
  store ptr %2853, ptr %2856, align 8, !tbaa !8
  %2857 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2858 = getelementptr inbounds %struct.LIST, ptr %2857, i64 0, i32 1
  %2859 = load ptr, ptr %2858, align 8, !tbaa !5
  %2860 = icmp eq ptr %2859, %2857
  br i1 %2860, label %2861, label %2816

2861:                                             ; preds = %2838, %2766
  %2862 = phi ptr [ %2767, %2766 ], [ %2857, %2838 ]
  store ptr %2862, ptr @zz_hold, align 8, !tbaa !8
  %2863 = getelementptr inbounds %struct.word_type, ptr %2862, i64 0, i32 1
  %2864 = load i8, ptr %2863, align 8, !tbaa !5
  %2865 = add i8 %2864, -11
  %2866 = icmp ult i8 %2865, 2
  %2867 = getelementptr inbounds %struct.word_type, ptr %2862, i64 0, i32 1, i32 0, i32 1
  %2868 = zext i8 %2864 to i64
  %2869 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2868
  %2870 = select i1 %2866, ptr %2867, ptr %2869
  %2871 = load i8, ptr %2870, align 1, !tbaa !5
  %2872 = zext i8 %2871 to i32
  store i32 %2872, ptr @zz_size, align 4, !tbaa !10
  %2873 = zext i8 %2871 to i64
  %2874 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2873
  %2875 = load ptr, ptr %2874, align 8, !tbaa !8
  store ptr %2875, ptr %2862, align 8, !tbaa !5
  %2876 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2877 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2878 = sext i32 %2877 to i64
  %2879 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2878
  store ptr %2876, ptr %2879, align 8, !tbaa !8
  %2880 = load ptr, ptr %6, align 8, !tbaa !8
  store ptr %2880, ptr %1, align 8, !tbaa !8
  br label %2881

2881:                                             ; preds = %2726, %2861, %2729, %2152, %2009, %299, %283, %120
  %2882 = phi i32 [ 0, %120 ], [ 1, %283 ], [ 3, %2152 ], [ 4, %2009 ], [ 2, %299 ], [ 5, %2729 ], [ 5, %2861 ], [ 5, %2726 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %2882
}

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare void @KillGalley(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @EnterErrorBlock(i32 noundef) local_unnamed_addr #2

declare void @Constrained(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DetachEnv(ptr noundef) local_unnamed_addr #2

declare void @SizeGalley(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ExpandRecursives(ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @LeaveErrorBlock(i32 noundef) local_unnamed_addr #2

declare i32 @CheckComponentOrder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VerticalHyphenate(ptr noundef) local_unnamed_addr #2

declare i32 @ScaleToConstraint(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @InterposeScale(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 34), align 1, !tbaa !5
  %5 = zext i8 %4 to i32
  store i32 %5, ptr @zz_size, align 4, !tbaa !10
  %6 = zext i8 %4 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %12 = tail call ptr @GetMemory(i32 noundef %5, ptr noundef %11) #5
  store ptr %12, ptr @zz_hold, align 8, !tbaa !8
  br label %15

13:                                               ; preds = %3
  store ptr %8, ptr @zz_hold, align 8, !tbaa !8
  %14 = load ptr, ptr %8, align 8, !tbaa !5
  store ptr %14, ptr %7, align 8, !tbaa !8
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %12, %10 ], [ %8, %13 ]
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  store i8 34, ptr %17, align 8, !tbaa !5
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !5
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1
  store ptr %16, ptr %19, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  store ptr %16, ptr %20, align 8, !tbaa !5
  store ptr %16, ptr %16, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !5
  %23 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1, i32 0, i32 2
  store i16 %22, ptr %23, align 2, !tbaa !5
  %24 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1048575
  %27 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -1048576
  %30 = or disjoint i32 %29, %26
  store i32 %30, ptr %27, align 4
  %31 = load i32, ptr %24, align 4
  %32 = and i32 %31, -1048576
  %33 = or disjoint i32 %32, %26
  store i32 %33, ptr %27, align 4
  %34 = icmp eq i32 %2, 0
  %35 = select i1 %34, i32 %1, i32 128
  %36 = select i1 %34, i32 128, i32 %1
  %37 = getelementptr inbounds %struct.closure_type, ptr %16, i64 0, i32 4
  store i32 %35, ptr %37, align 8
  %38 = getelementptr inbounds %struct.closure_type, ptr %16, i64 0, i32 4, i32 0, i32 2
  store i32 %36, ptr %38, align 8
  %39 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %40 = zext nneg i32 %2 to i64
  %41 = getelementptr inbounds [2 x i32], ptr %39, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = mul nsw i32 %42, %1
  %44 = sdiv i32 %43, 128
  %45 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 3
  %46 = getelementptr inbounds [2 x i32], ptr %45, i64 0, i64 %40
  store i32 %44, ptr %46, align 4, !tbaa !5
  %47 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %48 = getelementptr inbounds [2 x i32], ptr %47, i64 0, i64 %40
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %50 = mul nsw i32 %49, %1
  %51 = sdiv i32 %50, 128
  %52 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 3, i32 1
  %53 = getelementptr inbounds [2 x i32], ptr %52, i64 0, i64 %40
  store i32 %51, ptr %53, align 4, !tbaa !5
  %54 = sub nuw nsw i32 1, %2
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], ptr %39, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !5
  %58 = getelementptr inbounds [2 x i32], ptr %45, i64 0, i64 %55
  store i32 %57, ptr %58, align 4, !tbaa !5
  %59 = getelementptr inbounds [2 x i32], ptr %47, i64 0, i64 %55
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = getelementptr inbounds [2 x i32], ptr %52, i64 0, i64 %55
  store i32 %60, ptr %61, align 4, !tbaa !5
  %62 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %63 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %67

66:                                               ; preds = %15
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %16, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %75

67:                                               ; preds = %15
  %68 = load ptr, ptr %62, align 8, !tbaa !5
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1
  store ptr %68, ptr %69, align 8, !tbaa !5
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1, i32 1
  store ptr %64, ptr %70, align 8, !tbaa !5
  store ptr %0, ptr %63, align 8, !tbaa !5
  store ptr %0, ptr %62, align 8, !tbaa !5
  store ptr %64, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %16, ptr @zz_res, align 8, !tbaa !8
  store ptr %64, ptr @zz_hold, align 8, !tbaa !8
  %71 = load ptr, ptr %69, align 8, !tbaa !5
  store ptr %71, ptr @zz_tmp, align 8, !tbaa !8
  %72 = load ptr, ptr %19, align 8, !tbaa !5
  store ptr %72, ptr %69, align 8, !tbaa !5
  %73 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1, i32 1
  store ptr %64, ptr %73, align 8, !tbaa !5
  store ptr %71, ptr %19, align 8, !tbaa !5
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1, i32 1
  store ptr %16, ptr %74, align 8, !tbaa !5
  br label %75

75:                                               ; preds = %66, %67
  %76 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  store i32 %77, ptr @zz_size, align 4, !tbaa !10
  %78 = zext i8 %76 to i64
  %79 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %84 = tail call ptr @GetMemory(i32 noundef %77, ptr noundef %83) #5
  br label %87

85:                                               ; preds = %75
  store ptr %80, ptr @zz_hold, align 8, !tbaa !8
  %86 = load ptr, ptr %80, align 8, !tbaa !5
  store ptr %86, ptr %79, align 8, !tbaa !8
  br label %87

87:                                               ; preds = %82, %85
  %88 = phi ptr [ %84, %82 ], [ %80, %85 ]
  %89 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1
  store i8 0, ptr %89, align 8, !tbaa !5
  %90 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1, i32 1
  store ptr %88, ptr %90, align 8, !tbaa !5
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1
  store ptr %88, ptr %91, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.LIST, ptr %88, i64 0, i32 1
  store ptr %88, ptr %92, align 8, !tbaa !5
  store ptr %88, ptr %88, align 8, !tbaa !5
  store ptr %88, ptr @xx_link, align 8, !tbaa !8
  store ptr %88, ptr @zz_res, align 8, !tbaa !8
  store ptr %16, ptr @zz_hold, align 8, !tbaa !8
  %93 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %93, ptr @zz_tmp, align 8, !tbaa !8
  %94 = load ptr, ptr %88, align 8, !tbaa !5
  store ptr %94, ptr %16, align 8, !tbaa !5
  %95 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %96 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.LIST, ptr %97, i64 0, i32 1
  store ptr %95, ptr %98, align 8, !tbaa !5
  %99 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %99, ptr %96, align 8, !tbaa !5
  %100 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %101 = getelementptr inbounds %struct.LIST, ptr %99, i64 0, i32 1
  store ptr %100, ptr %101, align 8, !tbaa !5
  %102 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %102, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %87
  %105 = load ptr, ptr %62, align 8, !tbaa !5
  store ptr %105, ptr @zz_tmp, align 8, !tbaa !8
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %102, i64 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  store ptr %107, ptr %62, align 8, !tbaa !5
  %108 = getelementptr inbounds [2 x %struct.LIST], ptr %107, i64 0, i64 1, i32 1
  store ptr %0, ptr %108, align 8, !tbaa !5
  store ptr %105, ptr %106, align 8, !tbaa !5
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %105, i64 0, i64 1, i32 1
  store ptr %102, ptr %109, align 8, !tbaa !5
  br label %110

110:                                              ; preds = %87, %104
  ret ptr %16
}

declare void @AdjustSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @InterposeWideOrHigh(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 26, i32 27
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = zext i8 %7 to i32
  store i32 %8, ptr @zz_size, align 4, !tbaa !10
  %9 = zext i8 %7 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %15 = tail call ptr @GetMemory(i32 noundef %8, ptr noundef %14) #5
  store ptr %15, ptr @zz_hold, align 8, !tbaa !8
  br label %18

16:                                               ; preds = %2
  store ptr %11, ptr @zz_hold, align 8, !tbaa !8
  %17 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %17, ptr %10, align 8, !tbaa !8
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi ptr [ %15, %13 ], [ %11, %16 ]
  %20 = trunc i32 %4 to i8
  %21 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  store i8 %20, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1, i32 1
  store ptr %19, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  store ptr %19, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.LIST, ptr %19, i64 0, i32 1
  store ptr %19, ptr %24, align 8, !tbaa !5
  store ptr %19, ptr %19, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1, i32 0, i32 2
  store i16 %26, ptr %27, align 2, !tbaa !5
  %28 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
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
  %38 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %39 = zext nneg i32 %1 to i64
  %40 = getelementptr inbounds [2 x i32], ptr %38, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 3
  %43 = getelementptr inbounds [2 x i32], ptr %42, i64 0, i64 %39
  store i32 %41, ptr %43, align 4, !tbaa !5
  %44 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %45 = getelementptr inbounds [2 x i32], ptr %44, i64 0, i64 %39
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 3, i32 1
  %48 = getelementptr inbounds [2 x i32], ptr %47, i64 0, i64 %39
  store i32 %46, ptr %48, align 4, !tbaa !5
  %49 = sub nuw nsw i32 1, %1
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [2 x i32], ptr %38, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = getelementptr inbounds [2 x i32], ptr %42, i64 0, i64 %50
  store i32 %52, ptr %53, align 4, !tbaa !5
  %54 = getelementptr inbounds [2 x i32], ptr %44, i64 0, i64 %50
  %55 = load i32, ptr %54, align 4, !tbaa !5
  %56 = getelementptr inbounds [2 x i32], ptr %47, i64 0, i64 %50
  store i32 %55, ptr %56, align 4, !tbaa !5
  %57 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 4
  store i32 8388607, ptr %57, align 8, !tbaa !5
  %58 = load i32, ptr %43, align 4, !tbaa !5
  %59 = load i32, ptr %48, align 4, !tbaa !5
  %60 = add nsw i32 %59, %58
  %61 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 4, i32 0, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !5
  %62 = getelementptr inbounds %struct.closure_type, ptr %19, i64 0, i32 4, i32 0, i32 2
  store i32 8388607, ptr %62, align 8, !tbaa !5
  %63 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %64 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %67, label %68

67:                                               ; preds = %18
  store ptr null, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %19, ptr @zz_res, align 8, !tbaa !8
  store ptr null, ptr @zz_hold, align 8, !tbaa !8
  br label %76

68:                                               ; preds = %18
  %69 = load ptr, ptr %63, align 8, !tbaa !5
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1
  store ptr %69, ptr %70, align 8, !tbaa !5
  %71 = getelementptr inbounds [2 x %struct.LIST], ptr %69, i64 0, i64 1, i32 1
  store ptr %65, ptr %71, align 8, !tbaa !5
  store ptr %0, ptr %64, align 8, !tbaa !5
  store ptr %0, ptr %63, align 8, !tbaa !5
  store ptr %65, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %19, ptr @zz_res, align 8, !tbaa !8
  store ptr %65, ptr @zz_hold, align 8, !tbaa !8
  %72 = load ptr, ptr %70, align 8, !tbaa !5
  store ptr %72, ptr @zz_tmp, align 8, !tbaa !8
  %73 = load ptr, ptr %23, align 8, !tbaa !5
  store ptr %73, ptr %70, align 8, !tbaa !5
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1, i32 1
  store ptr %65, ptr %74, align 8, !tbaa !5
  store ptr %72, ptr %23, align 8, !tbaa !5
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1, i32 1
  store ptr %19, ptr %75, align 8, !tbaa !5
  br label %76

76:                                               ; preds = %67, %68
  %77 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %78 = zext i8 %77 to i32
  store i32 %78, ptr @zz_size, align 4, !tbaa !10
  %79 = zext i8 %77 to i64
  %80 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %85 = tail call ptr @GetMemory(i32 noundef %78, ptr noundef %84) #5
  br label %88

86:                                               ; preds = %76
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  %87 = load ptr, ptr %81, align 8, !tbaa !5
  store ptr %87, ptr %80, align 8, !tbaa !8
  br label %88

88:                                               ; preds = %83, %86
  %89 = phi ptr [ %85, %83 ], [ %81, %86 ]
  %90 = getelementptr inbounds %struct.word_type, ptr %89, i64 0, i32 1
  store i8 0, ptr %90, align 8, !tbaa !5
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1, i32 1
  store ptr %89, ptr %91, align 8, !tbaa !5
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %89, i64 0, i64 1
  store ptr %89, ptr %92, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.LIST, ptr %89, i64 0, i32 1
  store ptr %89, ptr %93, align 8, !tbaa !5
  store ptr %89, ptr %89, align 8, !tbaa !5
  store ptr %89, ptr @xx_link, align 8, !tbaa !8
  store ptr %89, ptr @zz_res, align 8, !tbaa !8
  store ptr %19, ptr @zz_hold, align 8, !tbaa !8
  %94 = load ptr, ptr %19, align 8, !tbaa !5
  store ptr %94, ptr @zz_tmp, align 8, !tbaa !8
  %95 = load ptr, ptr %89, align 8, !tbaa !5
  store ptr %95, ptr %19, align 8, !tbaa !5
  %96 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %97 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.LIST, ptr %98, i64 0, i32 1
  store ptr %96, ptr %99, align 8, !tbaa !5
  %100 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %100, ptr %97, align 8, !tbaa !5
  %101 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %102 = getelementptr inbounds %struct.LIST, ptr %100, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !5
  %103 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %103, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %88
  %106 = load ptr, ptr %63, align 8, !tbaa !5
  store ptr %106, ptr @zz_tmp, align 8, !tbaa !8
  %107 = getelementptr inbounds [2 x %struct.LIST], ptr %103, i64 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  store ptr %108, ptr %63, align 8, !tbaa !5
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %108, i64 0, i64 1, i32 1
  store ptr %0, ptr %109, align 8, !tbaa !5
  store ptr %106, ptr %107, align 8, !tbaa !5
  %110 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1, i32 1
  store ptr %103, ptr %110, align 8, !tbaa !5
  br label %111

111:                                              ; preds = %88, %105
  ret ptr %19
}

declare ptr @Image(i32 noundef) local_unnamed_addr #2

declare void @Interpose(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Promote(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!14 = !{!13, !11, i64 4}
!15 = !{!13, !11, i64 8}
