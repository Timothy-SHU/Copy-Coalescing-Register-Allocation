; ModuleID = 'src/z47.c'
source_filename = "src/z47.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }

@stat_reads = internal unnamed_addr global i32 0, align 4
@stat_read_hits = internal unnamed_addr global i32 0, align 4
@stat_writes = internal unnamed_addr global i32 0, align 4
@stat_write_hits = internal unnamed_addr global i32 0, align 4
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@env_cache = internal unnamed_addr global ptr null, align 8
@cache_count = internal unnamed_addr global i32 0, align 4
@tab = internal unnamed_addr global [211 x ptr] zeroinitializer, align 16
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @EnvInit() local_unnamed_addr #0 {
  store i32 0, ptr @stat_reads, align 4, !tbaa !5
  store i32 0, ptr @stat_read_hits, align 4, !tbaa !5
  store i32 0, ptr @stat_writes, align 4, !tbaa !5
  store i32 0, ptr @stat_write_hits, align 4, !tbaa !5
  %1 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %2 = zext i8 %1 to i32
  store i32 %2, ptr @zz_size, align 4, !tbaa !5
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr @GetMemory(i32 noundef %2, ptr noundef %8) #4
  store ptr %9, ptr @zz_hold, align 8, !tbaa !10
  br label %12

10:                                               ; preds = %0
  store ptr %5, ptr @zz_hold, align 8, !tbaa !10
  %11 = load ptr, ptr %5, align 8, !tbaa !9
  store ptr %11, ptr %4, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %9, %7 ], [ %5, %10 ]
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  store i8 17, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !9
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  store ptr %13, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !9
  store ptr %13, ptr %13, align 8, !tbaa !9
  store ptr %13, ptr @env_cache, align 8, !tbaa !10
  store i32 0, ptr @cache_count, align 4, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1688) @tab, i8 0, i64 1688, i1 false), !tbaa !10
  ret void
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @EnvWriteRetrieve(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = load i32, ptr @stat_writes, align 4, !tbaa !5
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @stat_writes, align 4, !tbaa !5
  %7 = ptrtoint ptr %0 to i64
  %8 = trunc i64 %7 to i32
  %9 = zext i16 %1 to i32
  %10 = add i32 %8, %9
  %11 = urem i32 %10, 211
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [211 x ptr], ptr @tab, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %92, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.LIST, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %92, label %20

20:                                               ; preds = %16, %88
  %21 = phi ptr [ %90, %88 ], [ %18, %16 ]
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %20 ]
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1
  %27 = load i8, ptr %26, align 8, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %22, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.LIST, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %31, %29 ], [ %35, %32 ]
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %32, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1, i32 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !9
  %42 = icmp eq i16 %41, %1
  %43 = icmp eq ptr %35, %0
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %88

45:                                               ; preds = %39
  %46 = getelementptr inbounds i8, ptr %25, i64 42
  %47 = load i16, ptr %46, align 2
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  store ptr %52, ptr @xx_link, align 8, !tbaa !10
  store ptr %52, ptr @zz_hold, align 8, !tbaa !10
  %53 = getelementptr inbounds %struct.LIST, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = icmp eq ptr %54, %52
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  store ptr %54, ptr @zz_res, align 8, !tbaa !10
  %57 = load ptr, ptr %52, align 8, !tbaa !9
  store ptr %57, ptr %54, align 8, !tbaa !9
  %58 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %59 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = getelementptr inbounds %struct.LIST, ptr %60, i64 0, i32 1
  store ptr %58, ptr %61, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  store ptr %59, ptr %62, align 8, !tbaa !9
  store ptr %59, ptr %59, align 8, !tbaa !9
  %63 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %64

64:                                               ; preds = %50, %56
  %65 = phi ptr [ %52, %50 ], [ %63, %56 ]
  store ptr %65, ptr @zz_res, align 8, !tbaa !10
  %66 = load ptr, ptr @env_cache, align 8, !tbaa !10
  store ptr %66, ptr @zz_hold, align 8, !tbaa !10
  %67 = icmp eq ptr %66, null
  %68 = icmp eq ptr %65, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %66, align 8, !tbaa !9
  store ptr %71, ptr @zz_tmp, align 8, !tbaa !10
  %72 = load ptr, ptr %65, align 8, !tbaa !9
  store ptr %72, ptr %66, align 8, !tbaa !9
  %73 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %74 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = getelementptr inbounds %struct.LIST, ptr %75, i64 0, i32 1
  store ptr %73, ptr %76, align 8, !tbaa !9
  %77 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %77, ptr %74, align 8, !tbaa !9
  %78 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %79 = getelementptr inbounds %struct.LIST, ptr %77, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !9
  br label %80

80:                                               ; preds = %64, %70
  %81 = getelementptr inbounds i8, ptr %25, i64 52
  %82 = load i32, ptr %81, align 4, !tbaa !9
  store i32 %82, ptr %2, align 4, !tbaa !5
  %83 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1048575
  store i32 %85, ptr %3, align 4, !tbaa !5
  %86 = load i32, ptr @stat_write_hits, align 4, !tbaa !5
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @stat_write_hits, align 4, !tbaa !5
  br label %92

88:                                               ; preds = %39, %45
  %89 = getelementptr inbounds %struct.LIST, ptr %21, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !9
  %91 = icmp eq ptr %90, %14
  br i1 %91, label %92, label %20

92:                                               ; preds = %88, %16, %4, %80
  %93 = phi i32 [ 1, %80 ], [ 0, %4 ], [ 0, %16 ], [ 0, %88 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local void @EnvWriteInsert(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @cache_count, align 4, !tbaa !5
  %6 = icmp sgt i32 %5, 179
  br i1 %6, label %7, label %111

7:                                                ; preds = %4
  %8 = load ptr, ptr @env_cache, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.LIST, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %10, %7 ], [ %14, %11 ]
  %13 = getelementptr inbounds [2 x %struct.LIST], ptr %12, i64 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %11, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  store ptr %20, ptr @xx_link, align 8, !tbaa !10
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  store ptr %22, ptr @zz_res, align 8, !tbaa !10
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1
  store ptr %26, ptr %27, align 8, !tbaa !9
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %26, i64 0, i64 1, i32 1
  store ptr %22, ptr %28, align 8, !tbaa !9
  store ptr %20, ptr %21, align 8, !tbaa !9
  store ptr %20, ptr %25, align 8, !tbaa !9
  br label %29

29:                                               ; preds = %18, %24
  store ptr %20, ptr @zz_hold, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.LIST, ptr %20, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = icmp eq ptr %31, %20
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  store ptr %31, ptr @zz_res, align 8, !tbaa !10
  %34 = load ptr, ptr %20, align 8, !tbaa !9
  store ptr %34, ptr %31, align 8, !tbaa !9
  %35 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %36 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.LIST, ptr %37, i64 0, i32 1
  store ptr %35, ptr %38, align 8, !tbaa !9
  %39 = getelementptr inbounds %struct.LIST, ptr %36, i64 0, i32 1
  store ptr %36, ptr %39, align 8, !tbaa !9
  store ptr %36, ptr %36, align 8, !tbaa !9
  %40 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %41

41:                                               ; preds = %29, %33
  %42 = phi ptr [ %20, %29 ], [ %40, %33 ]
  store ptr %42, ptr @zz_hold, align 8, !tbaa !10
  %43 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !9
  %45 = add i8 %44, -11
  %46 = icmp ult i8 %45, 2
  %47 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1, i32 0, i32 1
  %48 = zext i8 %44 to i64
  %49 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %48
  %50 = select i1 %46, ptr %47, ptr %49
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  store i32 %52, ptr @zz_size, align 4, !tbaa !5
  %53 = zext i8 %51 to i64
  %54 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !10
  store ptr %55, ptr %42, align 8, !tbaa !9
  %56 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %57 = load i32, ptr @zz_size, align 4, !tbaa !5
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %58
  store ptr %56, ptr %59, align 8, !tbaa !10
  %60 = load ptr, ptr %19, align 8, !tbaa !9
  store ptr %60, ptr @xx_link, align 8, !tbaa !10
  %61 = getelementptr inbounds [2 x %struct.LIST], ptr %60, i64 0, i64 1, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = icmp eq ptr %62, %60
  br i1 %63, label %69, label %64

64:                                               ; preds = %41
  store ptr %62, ptr @zz_res, align 8, !tbaa !10
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %60, i64 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %62, i64 0, i64 1
  store ptr %66, ptr %67, align 8, !tbaa !9
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %66, i64 0, i64 1, i32 1
  store ptr %62, ptr %68, align 8, !tbaa !9
  store ptr %60, ptr %61, align 8, !tbaa !9
  store ptr %60, ptr %65, align 8, !tbaa !9
  br label %69

69:                                               ; preds = %41, %64
  %70 = phi ptr [ %62, %64 ], [ null, %41 ]
  store ptr %70, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %60, ptr @zz_hold, align 8, !tbaa !10
  %71 = getelementptr inbounds %struct.LIST, ptr %60, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = icmp eq ptr %72, %60
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  store ptr %72, ptr @zz_res, align 8, !tbaa !10
  %75 = load ptr, ptr %60, align 8, !tbaa !9
  store ptr %75, ptr %72, align 8, !tbaa !9
  %76 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %77 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %78 = load ptr, ptr %77, align 8, !tbaa !9
  %79 = getelementptr inbounds %struct.LIST, ptr %78, i64 0, i32 1
  store ptr %76, ptr %79, align 8, !tbaa !9
  %80 = getelementptr inbounds %struct.LIST, ptr %77, i64 0, i32 1
  store ptr %77, ptr %80, align 8, !tbaa !9
  store ptr %77, ptr %77, align 8, !tbaa !9
  %81 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %82

82:                                               ; preds = %69, %74
  %83 = phi ptr [ %60, %69 ], [ %81, %74 ]
  store ptr %83, ptr @zz_hold, align 8, !tbaa !10
  %84 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1
  %85 = load i8, ptr %84, align 8, !tbaa !9
  %86 = add i8 %85, -11
  %87 = icmp ult i8 %86, 2
  %88 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1, i32 0, i32 1
  %89 = zext i8 %85 to i64
  %90 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %89
  %91 = select i1 %87, ptr %88, ptr %90
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = zext i8 %92 to i32
  store i32 %93, ptr @zz_size, align 4, !tbaa !5
  %94 = zext i8 %92 to i64
  %95 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !10
  store ptr %96, ptr %83, align 8, !tbaa !9
  %97 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %98 = load i32, ptr @zz_size, align 4, !tbaa !5
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %99
  store ptr %97, ptr %100, align 8, !tbaa !10
  %101 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %102 = getelementptr inbounds [2 x %struct.LIST], ptr %101, i64 0, i64 1, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  %104 = icmp eq ptr %103, %101
  br i1 %104, label %105, label %108

105:                                              ; preds = %82
  %106 = tail call i32 @DisposeObject(ptr noundef nonnull %101) #4
  %107 = load i32, ptr @cache_count, align 4, !tbaa !5
  br label %108

108:                                              ; preds = %105, %82
  %109 = phi i32 [ %107, %105 ], [ %5, %82 ]
  %110 = add nsw i32 %109, -1
  store i32 %110, ptr @cache_count, align 4, !tbaa !5
  br label %111

111:                                              ; preds = %108, %4
  %112 = ptrtoint ptr %0 to i64
  %113 = trunc i64 %112 to i32
  %114 = zext i16 %1 to i32
  %115 = add i32 %113, %114
  %116 = urem i32 %115, 211
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [211 x ptr], ptr @tab, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !10
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %111
  %122 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %123 = zext i8 %122 to i32
  store i32 %123, ptr @zz_size, align 4, !tbaa !5
  %124 = zext i8 %122 to i64
  %125 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !10
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %130 = tail call ptr @GetMemory(i32 noundef %123, ptr noundef %129) #4
  store ptr %130, ptr @zz_hold, align 8, !tbaa !10
  br label %133

131:                                              ; preds = %121
  store ptr %126, ptr @zz_hold, align 8, !tbaa !10
  %132 = load ptr, ptr %126, align 8, !tbaa !9
  store ptr %132, ptr %125, align 8, !tbaa !10
  br label %133

133:                                              ; preds = %128, %131
  %134 = phi ptr [ %130, %128 ], [ %126, %131 ]
  %135 = getelementptr inbounds %struct.word_type, ptr %134, i64 0, i32 1
  store i8 17, ptr %135, align 8, !tbaa !9
  %136 = getelementptr inbounds [2 x %struct.LIST], ptr %134, i64 0, i64 1, i32 1
  store ptr %134, ptr %136, align 8, !tbaa !9
  %137 = getelementptr inbounds [2 x %struct.LIST], ptr %134, i64 0, i64 1
  store ptr %134, ptr %137, align 8, !tbaa !9
  %138 = getelementptr inbounds %struct.LIST, ptr %134, i64 0, i32 1
  store ptr %134, ptr %138, align 8, !tbaa !9
  store ptr %134, ptr %134, align 8, !tbaa !9
  store ptr %134, ptr %118, align 8, !tbaa !10
  br label %139

139:                                              ; preds = %133, %111
  %140 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %141 = zext i8 %140 to i32
  store i32 %141, ptr @zz_size, align 4, !tbaa !5
  %142 = zext i8 %140 to i64
  %143 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !10
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %148 = tail call ptr @GetMemory(i32 noundef %141, ptr noundef %147) #4
  store ptr %148, ptr @zz_hold, align 8, !tbaa !10
  br label %151

149:                                              ; preds = %139
  store ptr %144, ptr @zz_hold, align 8, !tbaa !10
  %150 = load ptr, ptr %144, align 8, !tbaa !9
  store ptr %150, ptr %143, align 8, !tbaa !10
  br label %151

151:                                              ; preds = %146, %149
  %152 = phi ptr [ %148, %146 ], [ %144, %149 ]
  %153 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1
  store i8 17, ptr %153, align 8, !tbaa !9
  %154 = getelementptr inbounds [2 x %struct.LIST], ptr %152, i64 0, i64 1
  %155 = getelementptr inbounds [2 x %struct.LIST], ptr %152, i64 0, i64 1, i32 1
  store ptr %152, ptr %155, align 8, !tbaa !9
  store ptr %152, ptr %154, align 8, !tbaa !9
  %156 = getelementptr inbounds %struct.LIST, ptr %152, i64 0, i32 1
  store ptr %152, ptr %156, align 8, !tbaa !9
  store ptr %152, ptr %152, align 8, !tbaa !9
  %157 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1, i32 0, i32 2
  store i16 %1, ptr %157, align 2, !tbaa !9
  %158 = getelementptr inbounds i8, ptr %152, i64 52
  store i32 %2, ptr %158, align 4, !tbaa !9
  %159 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %3, 1048575
  %162 = and i32 %160, -1048576
  %163 = or disjoint i32 %162, %161
  store i32 %163, ptr %159, align 4
  %164 = getelementptr inbounds i8, ptr %152, i64 42
  %165 = load i16, ptr %164, align 2
  %166 = and i16 %165, -3
  store i16 %166, ptr %164, align 2
  %167 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %168 = zext i8 %167 to i32
  store i32 %168, ptr @zz_size, align 4, !tbaa !5
  %169 = zext i8 %167 to i64
  %170 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !10
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %151
  %174 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %175 = tail call ptr @GetMemory(i32 noundef %168, ptr noundef %174) #4
  br label %178

176:                                              ; preds = %151
  store ptr %171, ptr @zz_hold, align 8, !tbaa !10
  %177 = load ptr, ptr %171, align 8, !tbaa !9
  store ptr %177, ptr %170, align 8, !tbaa !10
  br label %178

178:                                              ; preds = %173, %176
  %179 = phi ptr [ %175, %173 ], [ %171, %176 ]
  %180 = getelementptr inbounds %struct.word_type, ptr %179, i64 0, i32 1
  store i8 0, ptr %180, align 8, !tbaa !9
  %181 = getelementptr inbounds [2 x %struct.LIST], ptr %179, i64 0, i64 1, i32 1
  store ptr %179, ptr %181, align 8, !tbaa !9
  %182 = getelementptr inbounds [2 x %struct.LIST], ptr %179, i64 0, i64 1
  store ptr %179, ptr %182, align 8, !tbaa !9
  %183 = getelementptr inbounds %struct.LIST, ptr %179, i64 0, i32 1
  store ptr %179, ptr %183, align 8, !tbaa !9
  store ptr %179, ptr %179, align 8, !tbaa !9
  store ptr %179, ptr @xx_link, align 8, !tbaa !10
  store ptr %179, ptr @zz_res, align 8, !tbaa !10
  %184 = load ptr, ptr %118, align 8, !tbaa !10
  store ptr %184, ptr @zz_hold, align 8, !tbaa !10
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  store ptr %152, ptr @zz_hold, align 8, !tbaa !10
  br label %202

187:                                              ; preds = %178
  %188 = load ptr, ptr %184, align 8, !tbaa !9
  store ptr %188, ptr @zz_tmp, align 8, !tbaa !10
  %189 = load ptr, ptr %179, align 8, !tbaa !9
  store ptr %189, ptr %184, align 8, !tbaa !9
  %190 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %191 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %192 = load ptr, ptr %191, align 8, !tbaa !9
  %193 = getelementptr inbounds %struct.LIST, ptr %192, i64 0, i32 1
  store ptr %190, ptr %193, align 8, !tbaa !9
  %194 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %194, ptr %191, align 8, !tbaa !9
  %195 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %196 = getelementptr inbounds %struct.LIST, ptr %194, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !9
  %197 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %197, ptr @zz_res, align 8, !tbaa !10
  store ptr %152, ptr @zz_hold, align 8, !tbaa !10
  %198 = icmp eq ptr %197, null
  br i1 %198, label %210, label %199

199:                                              ; preds = %187
  %200 = getelementptr inbounds [2 x %struct.LIST], ptr %197, i64 0, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !9
  br label %202

202:                                              ; preds = %199, %186
  %203 = phi ptr [ %179, %186 ], [ %201, %199 ]
  %204 = phi ptr [ %179, %186 ], [ %197, %199 ]
  %205 = load ptr, ptr %154, align 8, !tbaa !9
  store ptr %205, ptr @zz_tmp, align 8, !tbaa !10
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %204, i64 0, i64 1
  store ptr %203, ptr %154, align 8, !tbaa !9
  %207 = load ptr, ptr %206, align 8, !tbaa !9
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1, i32 1
  store ptr %152, ptr %208, align 8, !tbaa !9
  store ptr %205, ptr %206, align 8, !tbaa !9
  %209 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1, i32 1
  store ptr %204, ptr %209, align 8, !tbaa !9
  br label %210

210:                                              ; preds = %187, %202
  %211 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %212 = zext i8 %211 to i32
  store i32 %212, ptr @zz_size, align 4, !tbaa !5
  %213 = zext i8 %211 to i64
  %214 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !10
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %219 = tail call ptr @GetMemory(i32 noundef %212, ptr noundef %218) #4
  br label %222

220:                                              ; preds = %210
  store ptr %215, ptr @zz_hold, align 8, !tbaa !10
  %221 = load ptr, ptr %215, align 8, !tbaa !9
  store ptr %221, ptr %214, align 8, !tbaa !10
  br label %222

222:                                              ; preds = %217, %220
  %223 = phi ptr [ %219, %217 ], [ %215, %220 ]
  %224 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1
  store i8 0, ptr %224, align 8, !tbaa !9
  %225 = getelementptr inbounds [2 x %struct.LIST], ptr %223, i64 0, i64 1, i32 1
  store ptr %223, ptr %225, align 8, !tbaa !9
  %226 = getelementptr inbounds [2 x %struct.LIST], ptr %223, i64 0, i64 1
  store ptr %223, ptr %226, align 8, !tbaa !9
  %227 = getelementptr inbounds %struct.LIST, ptr %223, i64 0, i32 1
  store ptr %223, ptr %227, align 8, !tbaa !9
  store ptr %223, ptr %223, align 8, !tbaa !9
  store ptr %223, ptr @xx_link, align 8, !tbaa !10
  store ptr %223, ptr @zz_res, align 8, !tbaa !10
  %228 = load ptr, ptr @env_cache, align 8, !tbaa !10
  store ptr %228, ptr @zz_hold, align 8, !tbaa !10
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  store ptr %152, ptr @zz_hold, align 8, !tbaa !10
  br label %246

231:                                              ; preds = %222
  %232 = load ptr, ptr %228, align 8, !tbaa !9
  store ptr %232, ptr @zz_tmp, align 8, !tbaa !10
  %233 = load ptr, ptr %223, align 8, !tbaa !9
  store ptr %233, ptr %228, align 8, !tbaa !9
  %234 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %235 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %236 = load ptr, ptr %235, align 8, !tbaa !9
  %237 = getelementptr inbounds %struct.LIST, ptr %236, i64 0, i32 1
  store ptr %234, ptr %237, align 8, !tbaa !9
  %238 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %238, ptr %235, align 8, !tbaa !9
  %239 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %240 = getelementptr inbounds %struct.LIST, ptr %238, i64 0, i32 1
  store ptr %239, ptr %240, align 8, !tbaa !9
  %241 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %241, ptr @zz_res, align 8, !tbaa !10
  store ptr %152, ptr @zz_hold, align 8, !tbaa !10
  %242 = icmp eq ptr %241, null
  br i1 %242, label %254, label %243

243:                                              ; preds = %231
  %244 = getelementptr inbounds [2 x %struct.LIST], ptr %241, i64 0, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !9
  br label %246

246:                                              ; preds = %243, %230
  %247 = phi ptr [ %223, %230 ], [ %245, %243 ]
  %248 = phi ptr [ %223, %230 ], [ %241, %243 ]
  %249 = load ptr, ptr %154, align 8, !tbaa !9
  store ptr %249, ptr @zz_tmp, align 8, !tbaa !10
  %250 = getelementptr inbounds [2 x %struct.LIST], ptr %248, i64 0, i64 1
  store ptr %247, ptr %154, align 8, !tbaa !9
  %251 = load ptr, ptr %250, align 8, !tbaa !9
  %252 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1, i32 1
  store ptr %152, ptr %252, align 8, !tbaa !9
  store ptr %249, ptr %250, align 8, !tbaa !9
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %249, i64 0, i64 1, i32 1
  store ptr %248, ptr %253, align 8, !tbaa !9
  br label %254

254:                                              ; preds = %231, %246
  %255 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %256 = zext i8 %255 to i32
  store i32 %256, ptr @zz_size, align 4, !tbaa !5
  %257 = zext i8 %255 to i64
  %258 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !10
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %254
  %262 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %263 = tail call ptr @GetMemory(i32 noundef %256, ptr noundef %262) #4
  br label %266

264:                                              ; preds = %254
  store ptr %259, ptr @zz_hold, align 8, !tbaa !10
  %265 = load ptr, ptr %259, align 8, !tbaa !9
  store ptr %265, ptr %258, align 8, !tbaa !10
  br label %266

266:                                              ; preds = %261, %264
  %267 = phi ptr [ %263, %261 ], [ %259, %264 ]
  %268 = getelementptr inbounds %struct.word_type, ptr %267, i64 0, i32 1
  store i8 0, ptr %268, align 8, !tbaa !9
  %269 = getelementptr inbounds [2 x %struct.LIST], ptr %267, i64 0, i64 1, i32 1
  store ptr %267, ptr %269, align 8, !tbaa !9
  %270 = getelementptr inbounds [2 x %struct.LIST], ptr %267, i64 0, i64 1
  store ptr %267, ptr %270, align 8, !tbaa !9
  %271 = getelementptr inbounds %struct.LIST, ptr %267, i64 0, i32 1
  store ptr %267, ptr %271, align 8, !tbaa !9
  store ptr %267, ptr %267, align 8, !tbaa !9
  store ptr %267, ptr @xx_link, align 8, !tbaa !10
  store ptr %267, ptr @zz_res, align 8, !tbaa !10
  store ptr %152, ptr @zz_hold, align 8, !tbaa !10
  %272 = load ptr, ptr %152, align 8, !tbaa !9
  store ptr %272, ptr @zz_tmp, align 8, !tbaa !10
  %273 = load ptr, ptr %267, align 8, !tbaa !9
  store ptr %273, ptr %152, align 8, !tbaa !9
  %274 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %275 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %276 = load ptr, ptr %275, align 8, !tbaa !9
  %277 = getelementptr inbounds %struct.LIST, ptr %276, i64 0, i32 1
  store ptr %274, ptr %277, align 8, !tbaa !9
  %278 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %278, ptr %275, align 8, !tbaa !9
  %279 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %280 = getelementptr inbounds %struct.LIST, ptr %278, i64 0, i32 1
  store ptr %279, ptr %280, align 8, !tbaa !9
  %281 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %281, ptr @zz_res, align 8, !tbaa !10
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %282 = icmp eq ptr %0, null
  %283 = icmp eq ptr %281, null
  %284 = select i1 %282, i1 true, i1 %283
  br i1 %284, label %292, label %285

285:                                              ; preds = %266
  %286 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !9
  store ptr %287, ptr @zz_tmp, align 8, !tbaa !10
  %288 = getelementptr inbounds [2 x %struct.LIST], ptr %281, i64 0, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !9
  store ptr %289, ptr %286, align 8, !tbaa !9
  %290 = getelementptr inbounds [2 x %struct.LIST], ptr %289, i64 0, i64 1, i32 1
  store ptr %0, ptr %290, align 8, !tbaa !9
  store ptr %287, ptr %288, align 8, !tbaa !9
  %291 = getelementptr inbounds [2 x %struct.LIST], ptr %287, i64 0, i64 1, i32 1
  store ptr %281, ptr %291, align 8, !tbaa !9
  br label %292

292:                                              ; preds = %266, %285
  %293 = load i32, ptr @cache_count, align 4, !tbaa !5
  %294 = add nsw i32 %293, 1
  store i32 %294, ptr @cache_count, align 4, !tbaa !5
  ret void
}

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @EnvReadRetrieve(i16 noundef zeroext %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load i32, ptr @stat_reads, align 4, !tbaa !5
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @stat_reads, align 4, !tbaa !5
  %6 = zext i16 %0 to i32
  %7 = add nsw i32 %6, %1
  %8 = srem i32 %7, 211
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [211 x ptr], ptr @tab, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %96, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.LIST, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %96, label %17

17:                                               ; preds = %13, %92
  %18 = phi ptr [ %94, %92 ], [ %15, %13 ]
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %22, %19 ], [ %18, %17 ]
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %19, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.LIST, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi ptr [ %28, %26 ], [ %32, %29 ]
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.word_type, ptr %32, i64 0, i32 1
  %34 = load i8, ptr %33, align 8, !tbaa !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %29, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1, i32 0, i32 2
  %38 = load i16, ptr %37, align 2, !tbaa !9
  %39 = icmp eq i16 %38, %0
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %22, i64 52
  %42 = load i32, ptr %41, align 4, !tbaa !9
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %22, i64 42
  %46 = load i16, ptr %45, align 2
  %47 = and i16 %46, 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.LIST, ptr %22, i64 0, i32 1
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  store ptr %52, ptr @xx_link, align 8, !tbaa !10
  store ptr %52, ptr @zz_hold, align 8, !tbaa !10
  %53 = getelementptr inbounds %struct.LIST, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = icmp eq ptr %54, %52
  br i1 %55, label %64, label %56

56:                                               ; preds = %49
  store ptr %54, ptr @zz_res, align 8, !tbaa !10
  %57 = load ptr, ptr %52, align 8, !tbaa !9
  store ptr %57, ptr %54, align 8, !tbaa !9
  %58 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %59 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = getelementptr inbounds %struct.LIST, ptr %60, i64 0, i32 1
  store ptr %58, ptr %61, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  store ptr %59, ptr %62, align 8, !tbaa !9
  store ptr %59, ptr %59, align 8, !tbaa !9
  %63 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %64

64:                                               ; preds = %49, %56
  %65 = phi ptr [ %52, %49 ], [ %63, %56 ]
  store ptr %65, ptr @zz_res, align 8, !tbaa !10
  %66 = load ptr, ptr @env_cache, align 8, !tbaa !10
  store ptr %66, ptr @zz_hold, align 8, !tbaa !10
  %67 = icmp eq ptr %66, null
  %68 = icmp eq ptr %65, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %66, align 8, !tbaa !9
  store ptr %71, ptr @zz_tmp, align 8, !tbaa !10
  %72 = load ptr, ptr %65, align 8, !tbaa !9
  store ptr %72, ptr %66, align 8, !tbaa !9
  %73 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %74 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = getelementptr inbounds %struct.LIST, ptr %75, i64 0, i32 1
  store ptr %73, ptr %76, align 8, !tbaa !9
  %77 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %77, ptr %74, align 8, !tbaa !9
  %78 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %79 = getelementptr inbounds %struct.LIST, ptr %77, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !9
  br label %80

80:                                               ; preds = %64, %70
  %81 = load ptr, ptr %50, align 8, !tbaa !9
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi ptr [ %81, %80 ], [ %85, %82 ]
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !9
  store ptr %85, ptr %2, align 8, !tbaa !10
  %86 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 1
  %87 = load i8, ptr %86, align 8, !tbaa !9
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %82, label %89

89:                                               ; preds = %82
  %90 = load i32, ptr @stat_read_hits, align 4, !tbaa !5
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr @stat_read_hits, align 4, !tbaa !5
  br label %96

92:                                               ; preds = %36, %40, %44
  %93 = getelementptr inbounds %struct.LIST, ptr %18, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !9
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %96, label %17

96:                                               ; preds = %92, %13, %3, %89
  %97 = phi i32 [ 1, %89 ], [ 0, %3 ], [ 0, %13 ], [ 0, %92 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local void @EnvReadInsert(i16 noundef zeroext %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @cache_count, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 179
  br i1 %5, label %6, label %110

6:                                                ; preds = %3
  %7 = load ptr, ptr @env_cache, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.LIST, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %9, %6 ], [ %13, %10 ]
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %10, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  store ptr %19, ptr @xx_link, align 8, !tbaa !10
  %20 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, %19
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  store ptr %21, ptr @zz_res, align 8, !tbaa !10
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %21, i64 0, i64 1
  store ptr %25, ptr %26, align 8, !tbaa !9
  %27 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1, i32 1
  store ptr %21, ptr %27, align 8, !tbaa !9
  store ptr %19, ptr %20, align 8, !tbaa !9
  store ptr %19, ptr %24, align 8, !tbaa !9
  br label %28

28:                                               ; preds = %17, %23
  store ptr %19, ptr @zz_hold, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.LIST, ptr %19, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = icmp eq ptr %30, %19
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  store ptr %30, ptr @zz_res, align 8, !tbaa !10
  %33 = load ptr, ptr %19, align 8, !tbaa !9
  store ptr %33, ptr %30, align 8, !tbaa !9
  %34 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %35 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.LIST, ptr %36, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.LIST, ptr %35, i64 0, i32 1
  store ptr %35, ptr %38, align 8, !tbaa !9
  store ptr %35, ptr %35, align 8, !tbaa !9
  %39 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %40

40:                                               ; preds = %28, %32
  %41 = phi ptr [ %19, %28 ], [ %39, %32 ]
  store ptr %41, ptr @zz_hold, align 8, !tbaa !10
  %42 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1
  %43 = load i8, ptr %42, align 8, !tbaa !9
  %44 = add i8 %43, -11
  %45 = icmp ult i8 %44, 2
  %46 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1, i32 0, i32 1
  %47 = zext i8 %43 to i64
  %48 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %47
  %49 = select i1 %45, ptr %46, ptr %48
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  store i32 %51, ptr @zz_size, align 4, !tbaa !5
  %52 = zext i8 %50 to i64
  %53 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  store ptr %54, ptr %41, align 8, !tbaa !9
  %55 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %56 = load i32, ptr @zz_size, align 4, !tbaa !5
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %57
  store ptr %55, ptr %58, align 8, !tbaa !10
  %59 = load ptr, ptr %18, align 8, !tbaa !9
  store ptr %59, ptr @xx_link, align 8, !tbaa !10
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %59, i64 0, i64 1, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = icmp eq ptr %61, %59
  br i1 %62, label %68, label %63

63:                                               ; preds = %40
  store ptr %61, ptr @zz_res, align 8, !tbaa !10
  %64 = getelementptr inbounds [2 x %struct.LIST], ptr %59, i64 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %61, i64 0, i64 1
  store ptr %65, ptr %66, align 8, !tbaa !9
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1, i32 1
  store ptr %61, ptr %67, align 8, !tbaa !9
  store ptr %59, ptr %60, align 8, !tbaa !9
  store ptr %59, ptr %64, align 8, !tbaa !9
  br label %68

68:                                               ; preds = %40, %63
  %69 = phi ptr [ %61, %63 ], [ null, %40 ]
  store ptr %69, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %59, ptr @zz_hold, align 8, !tbaa !10
  %70 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !9
  %72 = icmp eq ptr %71, %59
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  store ptr %71, ptr @zz_res, align 8, !tbaa !10
  %74 = load ptr, ptr %59, align 8, !tbaa !9
  store ptr %74, ptr %71, align 8, !tbaa !9
  %75 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %76 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %77 = load ptr, ptr %76, align 8, !tbaa !9
  %78 = getelementptr inbounds %struct.LIST, ptr %77, i64 0, i32 1
  store ptr %75, ptr %78, align 8, !tbaa !9
  %79 = getelementptr inbounds %struct.LIST, ptr %76, i64 0, i32 1
  store ptr %76, ptr %79, align 8, !tbaa !9
  store ptr %76, ptr %76, align 8, !tbaa !9
  %80 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %81

81:                                               ; preds = %68, %73
  %82 = phi ptr [ %59, %68 ], [ %80, %73 ]
  store ptr %82, ptr @zz_hold, align 8, !tbaa !10
  %83 = getelementptr inbounds %struct.word_type, ptr %82, i64 0, i32 1
  %84 = load i8, ptr %83, align 8, !tbaa !9
  %85 = add i8 %84, -11
  %86 = icmp ult i8 %85, 2
  %87 = getelementptr inbounds %struct.word_type, ptr %82, i64 0, i32 1, i32 0, i32 1
  %88 = zext i8 %84 to i64
  %89 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %88
  %90 = select i1 %86, ptr %87, ptr %89
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = zext i8 %91 to i32
  store i32 %92, ptr @zz_size, align 4, !tbaa !5
  %93 = zext i8 %91 to i64
  %94 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !10
  store ptr %95, ptr %82, align 8, !tbaa !9
  %96 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %97 = load i32, ptr @zz_size, align 4, !tbaa !5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %98
  store ptr %96, ptr %99, align 8, !tbaa !10
  %100 = load ptr, ptr @xx_tmp, align 8, !tbaa !10
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %100, i64 0, i64 1, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !9
  %103 = icmp eq ptr %102, %100
  br i1 %103, label %104, label %107

104:                                              ; preds = %81
  %105 = tail call i32 @DisposeObject(ptr noundef nonnull %100) #4
  %106 = load i32, ptr @cache_count, align 4, !tbaa !5
  br label %107

107:                                              ; preds = %104, %81
  %108 = phi i32 [ %106, %104 ], [ %4, %81 ]
  %109 = add nsw i32 %108, -1
  store i32 %109, ptr @cache_count, align 4, !tbaa !5
  br label %110

110:                                              ; preds = %107, %3
  %111 = zext i16 %0 to i32
  %112 = add nsw i32 %111, %1
  %113 = srem i32 %112, 211
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [211 x ptr], ptr @tab, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !10
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %136

118:                                              ; preds = %110
  %119 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %120 = zext i8 %119 to i32
  store i32 %120, ptr @zz_size, align 4, !tbaa !5
  %121 = zext i8 %119 to i64
  %122 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !10
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %127 = tail call ptr @GetMemory(i32 noundef %120, ptr noundef %126) #4
  store ptr %127, ptr @zz_hold, align 8, !tbaa !10
  br label %130

128:                                              ; preds = %118
  store ptr %123, ptr @zz_hold, align 8, !tbaa !10
  %129 = load ptr, ptr %123, align 8, !tbaa !9
  store ptr %129, ptr %122, align 8, !tbaa !10
  br label %130

130:                                              ; preds = %125, %128
  %131 = phi ptr [ %127, %125 ], [ %123, %128 ]
  %132 = getelementptr inbounds %struct.word_type, ptr %131, i64 0, i32 1
  store i8 17, ptr %132, align 8, !tbaa !9
  %133 = getelementptr inbounds [2 x %struct.LIST], ptr %131, i64 0, i64 1, i32 1
  store ptr %131, ptr %133, align 8, !tbaa !9
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %131, i64 0, i64 1
  store ptr %131, ptr %134, align 8, !tbaa !9
  %135 = getelementptr inbounds %struct.LIST, ptr %131, i64 0, i32 1
  store ptr %131, ptr %135, align 8, !tbaa !9
  store ptr %131, ptr %131, align 8, !tbaa !9
  store ptr %131, ptr %115, align 8, !tbaa !10
  br label %136

136:                                              ; preds = %130, %110
  %137 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %138 = zext i8 %137 to i32
  store i32 %138, ptr @zz_size, align 4, !tbaa !5
  %139 = zext i8 %137 to i64
  %140 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !10
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %145 = tail call ptr @GetMemory(i32 noundef %138, ptr noundef %144) #4
  store ptr %145, ptr @zz_hold, align 8, !tbaa !10
  br label %148

146:                                              ; preds = %136
  store ptr %141, ptr @zz_hold, align 8, !tbaa !10
  %147 = load ptr, ptr %141, align 8, !tbaa !9
  store ptr %147, ptr %140, align 8, !tbaa !10
  br label %148

148:                                              ; preds = %143, %146
  %149 = phi ptr [ %145, %143 ], [ %141, %146 ]
  %150 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1
  store i8 17, ptr %150, align 8, !tbaa !9
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %149, i64 0, i64 1
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %149, i64 0, i64 1, i32 1
  store ptr %149, ptr %152, align 8, !tbaa !9
  store ptr %149, ptr %151, align 8, !tbaa !9
  %153 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  store ptr %149, ptr %153, align 8, !tbaa !9
  store ptr %149, ptr %149, align 8, !tbaa !9
  %154 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1, i32 0, i32 2
  store i16 %0, ptr %154, align 2, !tbaa !9
  %155 = getelementptr inbounds i8, ptr %149, i64 52
  store i32 %1, ptr %155, align 4, !tbaa !9
  %156 = getelementptr inbounds i8, ptr %149, i64 42
  %157 = load i16, ptr %156, align 2
  %158 = or i16 %157, 2
  store i16 %158, ptr %156, align 2
  %159 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %160 = zext i8 %159 to i32
  store i32 %160, ptr @zz_size, align 4, !tbaa !5
  %161 = zext i8 %159 to i64
  %162 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !10
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %148
  %166 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %167 = tail call ptr @GetMemory(i32 noundef %160, ptr noundef %166) #4
  br label %170

168:                                              ; preds = %148
  store ptr %163, ptr @zz_hold, align 8, !tbaa !10
  %169 = load ptr, ptr %163, align 8, !tbaa !9
  store ptr %169, ptr %162, align 8, !tbaa !10
  br label %170

170:                                              ; preds = %165, %168
  %171 = phi ptr [ %167, %165 ], [ %163, %168 ]
  %172 = getelementptr inbounds %struct.word_type, ptr %171, i64 0, i32 1
  store i8 0, ptr %172, align 8, !tbaa !9
  %173 = getelementptr inbounds [2 x %struct.LIST], ptr %171, i64 0, i64 1, i32 1
  store ptr %171, ptr %173, align 8, !tbaa !9
  %174 = getelementptr inbounds [2 x %struct.LIST], ptr %171, i64 0, i64 1
  store ptr %171, ptr %174, align 8, !tbaa !9
  %175 = getelementptr inbounds %struct.LIST, ptr %171, i64 0, i32 1
  store ptr %171, ptr %175, align 8, !tbaa !9
  store ptr %171, ptr %171, align 8, !tbaa !9
  store ptr %171, ptr @xx_link, align 8, !tbaa !10
  store ptr %171, ptr @zz_res, align 8, !tbaa !10
  %176 = load ptr, ptr %115, align 8, !tbaa !10
  store ptr %176, ptr @zz_hold, align 8, !tbaa !10
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  store ptr %149, ptr @zz_hold, align 8, !tbaa !10
  br label %194

179:                                              ; preds = %170
  %180 = load ptr, ptr %176, align 8, !tbaa !9
  store ptr %180, ptr @zz_tmp, align 8, !tbaa !10
  %181 = load ptr, ptr %171, align 8, !tbaa !9
  store ptr %181, ptr %176, align 8, !tbaa !9
  %182 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %183 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %184 = load ptr, ptr %183, align 8, !tbaa !9
  %185 = getelementptr inbounds %struct.LIST, ptr %184, i64 0, i32 1
  store ptr %182, ptr %185, align 8, !tbaa !9
  %186 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %186, ptr %183, align 8, !tbaa !9
  %187 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %188 = getelementptr inbounds %struct.LIST, ptr %186, i64 0, i32 1
  store ptr %187, ptr %188, align 8, !tbaa !9
  %189 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %189, ptr @zz_res, align 8, !tbaa !10
  store ptr %149, ptr @zz_hold, align 8, !tbaa !10
  %190 = icmp eq ptr %189, null
  br i1 %190, label %202, label %191

191:                                              ; preds = %179
  %192 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !9
  br label %194

194:                                              ; preds = %191, %178
  %195 = phi ptr [ %171, %178 ], [ %193, %191 ]
  %196 = phi ptr [ %171, %178 ], [ %189, %191 ]
  %197 = load ptr, ptr %151, align 8, !tbaa !9
  store ptr %197, ptr @zz_tmp, align 8, !tbaa !10
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %196, i64 0, i64 1
  store ptr %195, ptr %151, align 8, !tbaa !9
  %199 = load ptr, ptr %198, align 8, !tbaa !9
  %200 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1, i32 1
  store ptr %149, ptr %200, align 8, !tbaa !9
  store ptr %197, ptr %198, align 8, !tbaa !9
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %197, i64 0, i64 1, i32 1
  store ptr %196, ptr %201, align 8, !tbaa !9
  br label %202

202:                                              ; preds = %179, %194
  %203 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %204 = zext i8 %203 to i32
  store i32 %204, ptr @zz_size, align 4, !tbaa !5
  %205 = zext i8 %203 to i64
  %206 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !10
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %211 = tail call ptr @GetMemory(i32 noundef %204, ptr noundef %210) #4
  br label %214

212:                                              ; preds = %202
  store ptr %207, ptr @zz_hold, align 8, !tbaa !10
  %213 = load ptr, ptr %207, align 8, !tbaa !9
  store ptr %213, ptr %206, align 8, !tbaa !10
  br label %214

214:                                              ; preds = %209, %212
  %215 = phi ptr [ %211, %209 ], [ %207, %212 ]
  %216 = getelementptr inbounds %struct.word_type, ptr %215, i64 0, i32 1
  store i8 0, ptr %216, align 8, !tbaa !9
  %217 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1, i32 1
  store ptr %215, ptr %217, align 8, !tbaa !9
  %218 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1
  store ptr %215, ptr %218, align 8, !tbaa !9
  %219 = getelementptr inbounds %struct.LIST, ptr %215, i64 0, i32 1
  store ptr %215, ptr %219, align 8, !tbaa !9
  store ptr %215, ptr %215, align 8, !tbaa !9
  store ptr %215, ptr @xx_link, align 8, !tbaa !10
  store ptr %215, ptr @zz_res, align 8, !tbaa !10
  %220 = load ptr, ptr @env_cache, align 8, !tbaa !10
  store ptr %220, ptr @zz_hold, align 8, !tbaa !10
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  store ptr %149, ptr @zz_hold, align 8, !tbaa !10
  br label %238

223:                                              ; preds = %214
  %224 = load ptr, ptr %220, align 8, !tbaa !9
  store ptr %224, ptr @zz_tmp, align 8, !tbaa !10
  %225 = load ptr, ptr %215, align 8, !tbaa !9
  store ptr %225, ptr %220, align 8, !tbaa !9
  %226 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %227 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %228 = load ptr, ptr %227, align 8, !tbaa !9
  %229 = getelementptr inbounds %struct.LIST, ptr %228, i64 0, i32 1
  store ptr %226, ptr %229, align 8, !tbaa !9
  %230 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %230, ptr %227, align 8, !tbaa !9
  %231 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %232 = getelementptr inbounds %struct.LIST, ptr %230, i64 0, i32 1
  store ptr %231, ptr %232, align 8, !tbaa !9
  %233 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %233, ptr @zz_res, align 8, !tbaa !10
  store ptr %149, ptr @zz_hold, align 8, !tbaa !10
  %234 = icmp eq ptr %233, null
  br i1 %234, label %246, label %235

235:                                              ; preds = %223
  %236 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !9
  br label %238

238:                                              ; preds = %235, %222
  %239 = phi ptr [ %215, %222 ], [ %237, %235 ]
  %240 = phi ptr [ %215, %222 ], [ %233, %235 ]
  %241 = load ptr, ptr %151, align 8, !tbaa !9
  store ptr %241, ptr @zz_tmp, align 8, !tbaa !10
  %242 = getelementptr inbounds [2 x %struct.LIST], ptr %240, i64 0, i64 1
  store ptr %239, ptr %151, align 8, !tbaa !9
  %243 = load ptr, ptr %242, align 8, !tbaa !9
  %244 = getelementptr inbounds [2 x %struct.LIST], ptr %243, i64 0, i64 1, i32 1
  store ptr %149, ptr %244, align 8, !tbaa !9
  store ptr %241, ptr %242, align 8, !tbaa !9
  %245 = getelementptr inbounds [2 x %struct.LIST], ptr %241, i64 0, i64 1, i32 1
  store ptr %240, ptr %245, align 8, !tbaa !9
  br label %246

246:                                              ; preds = %223, %238
  %247 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %248 = zext i8 %247 to i32
  store i32 %248, ptr @zz_size, align 4, !tbaa !5
  %249 = zext i8 %247 to i64
  %250 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !10
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %255 = tail call ptr @GetMemory(i32 noundef %248, ptr noundef %254) #4
  br label %258

256:                                              ; preds = %246
  store ptr %251, ptr @zz_hold, align 8, !tbaa !10
  %257 = load ptr, ptr %251, align 8, !tbaa !9
  store ptr %257, ptr %250, align 8, !tbaa !10
  br label %258

258:                                              ; preds = %253, %256
  %259 = phi ptr [ %255, %253 ], [ %251, %256 ]
  %260 = getelementptr inbounds %struct.word_type, ptr %259, i64 0, i32 1
  store i8 0, ptr %260, align 8, !tbaa !9
  %261 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1, i32 1
  store ptr %259, ptr %261, align 8, !tbaa !9
  %262 = getelementptr inbounds [2 x %struct.LIST], ptr %259, i64 0, i64 1
  store ptr %259, ptr %262, align 8, !tbaa !9
  %263 = getelementptr inbounds %struct.LIST, ptr %259, i64 0, i32 1
  store ptr %259, ptr %263, align 8, !tbaa !9
  store ptr %259, ptr %259, align 8, !tbaa !9
  store ptr %259, ptr @xx_link, align 8, !tbaa !10
  store ptr %259, ptr @zz_res, align 8, !tbaa !10
  store ptr %149, ptr @zz_hold, align 8, !tbaa !10
  %264 = load ptr, ptr %149, align 8, !tbaa !9
  store ptr %264, ptr @zz_tmp, align 8, !tbaa !10
  %265 = load ptr, ptr %259, align 8, !tbaa !9
  store ptr %265, ptr %149, align 8, !tbaa !9
  %266 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %267 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %268 = load ptr, ptr %267, align 8, !tbaa !9
  %269 = getelementptr inbounds %struct.LIST, ptr %268, i64 0, i32 1
  store ptr %266, ptr %269, align 8, !tbaa !9
  %270 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %270, ptr %267, align 8, !tbaa !9
  %271 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %272 = getelementptr inbounds %struct.LIST, ptr %270, i64 0, i32 1
  store ptr %271, ptr %272, align 8, !tbaa !9
  %273 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %273, ptr @zz_res, align 8, !tbaa !10
  store ptr %2, ptr @zz_hold, align 8, !tbaa !10
  %274 = icmp eq ptr %2, null
  %275 = icmp eq ptr %273, null
  %276 = select i1 %274, i1 true, i1 %275
  br i1 %276, label %284, label %277

277:                                              ; preds = %258
  %278 = getelementptr inbounds [2 x %struct.LIST], ptr %2, i64 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !9
  store ptr %279, ptr @zz_tmp, align 8, !tbaa !10
  %280 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !9
  store ptr %281, ptr %278, align 8, !tbaa !9
  %282 = getelementptr inbounds [2 x %struct.LIST], ptr %281, i64 0, i64 1, i32 1
  store ptr %2, ptr %282, align 8, !tbaa !9
  store ptr %279, ptr %280, align 8, !tbaa !9
  %283 = getelementptr inbounds [2 x %struct.LIST], ptr %279, i64 0, i64 1, i32 1
  store ptr %273, ptr %283, align 8, !tbaa !9
  br label %284

284:                                              ; preds = %258, %277
  %285 = load i32, ptr @cache_count, align 4, !tbaa !5
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr @cache_count, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
