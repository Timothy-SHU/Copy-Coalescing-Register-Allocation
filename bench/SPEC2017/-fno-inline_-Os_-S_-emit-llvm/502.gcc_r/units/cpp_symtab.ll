; ModuleID = 'cpp_symtab.c'
source_filename = "cpp_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.ht_identifier = type { ptr, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0AString pool\0Aentries\09\09%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"identifiers\09%lu (%.2f%%)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"slots\09\09%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"deleted\09\09%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"bytes\09\09%lu%c (%lu%c overhead)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"table size\09%lu%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"coll/search\09%.4f\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ins/search\09%.4f\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"avg. entry\09%.2f bytes (+/- %.2f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"longest entry\09%lu\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ht_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl nuw i32 1, %0
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 144) #11
  %4 = tail call i32 @_obstack_begin(ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #11
  %5 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 6
  store i32 0, ptr %5, align 8, !tbaa !5
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #11
  %8 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 9
  store i8 1, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 4
  store i32 %2, ptr %10, align 8, !tbaa !15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ht_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 0, %4
  %6 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 5
  store i64 %5, ptr %6, align 8, !tbaa !17
  %7 = icmp sgt i64 %5, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %4
  %13 = icmp sgt i64 %12, %5
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %3, i64 %5
  %16 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3
  store ptr %15, ptr %17, align 8, !tbaa !20
  br label %20

18:                                               ; preds = %8, %1
  %19 = getelementptr inbounds i8, ptr %3, i64 %5
  tail call void @obstack_free(ptr noundef nonnull %0, ptr noundef %19) #11
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %22 = load i8, ptr %21, align 8, !tbaa !14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  tail call void @free(ptr noundef %26) #11
  br label %27

27:                                               ; preds = %24, %20
  tail call void @free(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ht_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @calc_hash(ptr noundef %1, i64 noundef %2) #12
  %6 = tail call ptr @ht_lookup_with_hash(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %5, i32 noundef %3) #12
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ht_lookup_with_hash(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = add i32 %7, -1
  %9 = and i32 %8, %3
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !21
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = zext i32 %9 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %70
    i64 -1, label %32
  ]

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !23
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !25
  %26 = trunc i64 %2 to i32
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load ptr, ptr %17, align 8, !tbaa !26
  %30 = tail call i32 @bcmp(ptr %29, ptr %1, i64 %2)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %153, label %32

32:                                               ; preds = %5, %19, %23, %28
  %33 = phi i32 [ %7, %28 ], [ %7, %23 ], [ %7, %19 ], [ %9, %5 ]
  %34 = mul i32 %3, 17
  %35 = and i32 %8, %34
  %36 = or i32 %35, 1
  %37 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !27
  %39 = trunc i64 %2 to i32
  br label %40

40:                                               ; preds = %54, %32
  %41 = phi i32 [ %47, %54 ], [ %38, %32 ]
  %42 = phi i32 [ %56, %54 ], [ %33, %32 ]
  %43 = phi i32 [ %49, %54 ], [ %9, %32 ]
  br label %44

44:                                               ; preds = %61, %40
  %45 = phi i32 [ %41, %40 ], [ %47, %61 ]
  %46 = phi i32 [ %43, %40 ], [ %49, %61 ]
  %47 = add i32 %45, 1
  store i32 %47, ptr %37, align 4, !tbaa !27
  %48 = add i32 %46, %36
  %49 = and i32 %48, %8
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %14, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = ptrtoint ptr %52 to i64
  switch i64 %53, label %57 [
    i64 0, label %70
    i64 -1, label %54
  ]

54:                                               ; preds = %44
  %55 = icmp eq i32 %42, %7
  %56 = select i1 %55, i32 %42, i32 %49
  br label %40

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.ht_identifier, ptr %52, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !23
  %60 = icmp eq i32 %59, %3
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %62, %66
  br label %44

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ht_identifier, ptr %52, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !25
  %65 = icmp eq i32 %64, %39
  br i1 %65, label %66, label %61

66:                                               ; preds = %62
  %67 = load ptr, ptr %52, align 8, !tbaa !26
  %68 = tail call i32 @bcmp(ptr %67, ptr %1, i64 %2)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %153, label %61

70:                                               ; preds = %44, %5
  %71 = phi i32 [ %7, %5 ], [ %42, %44 ]
  %72 = phi i32 [ %9, %5 ], [ %49, %44 ]
  %73 = icmp eq i32 %4, 0
  br i1 %73, label %153, label %74

74:                                               ; preds = %70
  %75 = icmp eq i32 %71, %7
  %76 = select i1 %75, i32 %72, i32 %71
  %77 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !28
  %79 = tail call ptr %78(ptr noundef nonnull %0) #11
  %80 = load ptr, ptr %13, align 8, !tbaa !13
  %81 = zext i32 %76 to i64
  %82 = getelementptr inbounds ptr, ptr %80, i64 %81
  store ptr %79, ptr %82, align 8, !tbaa !22
  %83 = trunc i64 %2 to i32
  %84 = getelementptr inbounds %struct.ht_identifier, ptr %79, i64 0, i32 1
  store i32 %83, ptr %84, align 8, !tbaa !25
  %85 = getelementptr inbounds %struct.ht_identifier, ptr %79, i64 0, i32 2
  store i32 %3, ptr %85, align 4, !tbaa !23
  %86 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !29
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %74
  %90 = add i64 %2, 1
  %91 = tail call ptr %87(i64 noundef %90) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %1, i64 %2, i1 false)
  %92 = getelementptr inbounds i8, ptr %91, i64 %2
  store i8 0, ptr %92, align 1, !tbaa !30
  br label %143

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 5
  store i64 %2, ptr %94, align 8, !tbaa !17
  %95 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !20
  %97 = getelementptr inbounds i8, ptr %96, i64 %2
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !18
  %101 = icmp ugt ptr %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = add i32 %83, 1
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef %103) #11
  %104 = load ptr, ptr %95, align 8, !tbaa !20
  %105 = load i64, ptr %94, align 8, !tbaa !17
  br label %106

106:                                              ; preds = %93, %102
  %107 = phi i64 [ %2, %93 ], [ %105, %102 ]
  %108 = phi ptr [ %96, %93 ], [ %104, %102 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %108, ptr align 1 %1, i64 %107, i1 false)
  %109 = load i64, ptr %94, align 8, !tbaa !17
  %110 = load ptr, ptr %95, align 8, !tbaa !20
  %111 = getelementptr inbounds i8, ptr %110, i64 %109
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  store ptr %112, ptr %95, align 8, !tbaa !20
  store i8 0, ptr %111, align 1, !tbaa !30
  %113 = load ptr, ptr %95, align 8, !tbaa !20
  %114 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !19
  %116 = icmp eq ptr %113, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %119 = load i8, ptr %118, align 8
  %120 = or i8 %119, 2
  store i8 %120, ptr %118, align 8
  br label %121

121:                                              ; preds = %106, %117
  %122 = ptrtoint ptr %115 to i64
  store i64 %122, ptr %94, align 8, !tbaa !17
  %123 = ptrtoint ptr %113 to i64
  %124 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6
  %125 = load i32, ptr %124, align 8, !tbaa !5
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %123
  %128 = xor i32 %125, -1
  %129 = sext i32 %128 to i64
  %130 = and i64 %127, %129
  %131 = inttoptr i64 %130 to ptr
  store ptr %131, ptr %95, align 8, !tbaa !20
  %132 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !16
  %134 = ptrtoint ptr %133 to i64
  %135 = sub i64 %130, %134
  %136 = load ptr, ptr %99, align 8, !tbaa !18
  %137 = ptrtoint ptr %136 to i64
  %138 = sub i64 %137, %134
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %121
  store ptr %136, ptr %95, align 8, !tbaa !20
  br label %141

141:                                              ; preds = %121, %140
  %142 = phi ptr [ %131, %121 ], [ %136, %140 ]
  store ptr %142, ptr %114, align 8, !tbaa !19
  br label %143

143:                                              ; preds = %141, %89
  %144 = phi ptr [ %115, %141 ], [ %91, %89 ]
  store ptr %144, ptr %79, align 8, !tbaa !26
  %145 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  %146 = load i32, ptr %145, align 4, !tbaa !31
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 4, !tbaa !31
  %148 = shl i32 %147, 2
  %149 = load i32, ptr %6, align 8, !tbaa !15
  %150 = mul i32 %149, 3
  %151 = icmp ult i32 %148, %150
  br i1 %151, label %153, label %152

152:                                              ; preds = %143
  tail call fastcc void @ht_expand(ptr noundef nonnull %0) #12
  br label %153

153:                                              ; preds = %66, %143, %152, %70, %28
  %154 = phi ptr [ %17, %28 ], [ null, %70 ], [ %79, %152 ], [ %79, %143 ], [ %52, %66 ]
  ret ptr %154
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @calc_hash(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %14, %4 ], [ 0, %2 ]
  %6 = phi i64 [ %8, %4 ], [ %1, %2 ]
  %7 = phi ptr [ %10, %4 ], [ %0, %2 ]
  %8 = add i64 %6, -1
  %9 = mul i32 %5, 67
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  %11 = load i8, ptr %7, align 1, !tbaa !30
  %12 = zext i8 %11 to i32
  %13 = add i32 %9, -113
  %14 = add i32 %13, %12
  %15 = icmp eq i64 %8, 0
  br i1 %15, label %16, label %4, !llvm.loop !32

16:                                               ; preds = %4, %2
  %17 = phi i32 [ 0, %2 ], [ %14, %4 ]
  %18 = trunc i64 %1 to i32
  %19 = add i32 %17, %18
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ht_expand(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !15
  %4 = shl i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #11
  %7 = add i32 %4, -1
  %8 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load i32, ptr %2, align 8, !tbaa !15
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  br label %13

13:                                               ; preds = %40, %1
  %14 = phi ptr [ %9, %1 ], [ %41, %40 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = ptrtoint ptr %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %40
    i64 -1, label %40
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ht_identifier, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !23
  %20 = and i32 %19, %7
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %17
  %26 = mul i32 %19, 17
  %27 = and i32 %26, %7
  %28 = or i32 %27, 1
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i32 [ %20, %25 ], [ %32, %29 ]
  %31 = add i32 %30, %28
  %32 = and i32 %31, %7
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %6, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !34

37:                                               ; preds = %29, %17
  %38 = phi i64 [ %21, %17 ], [ %33, %29 ]
  %39 = getelementptr inbounds ptr, ptr %6, i64 %38
  store ptr %15, ptr %39, align 8, !tbaa !22
  br label %40

40:                                               ; preds = %13, %13, %37
  %41 = getelementptr inbounds ptr, ptr %14, i64 1
  %42 = icmp ult ptr %41, %12
  br i1 %42, label %13, label %43, !llvm.loop !35

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %45 = load i8, ptr %44, align 8, !tbaa !14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %8, align 8, !tbaa !13
  tail call void @free(ptr noundef %48) #11
  br label %49

49:                                               ; preds = %47, %43
  store i8 1, ptr %44, align 8, !tbaa !14
  store ptr %6, ptr %8, align 8, !tbaa !13
  store i32 %4, ptr %2, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ht_forall(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %25, %3
  %12 = phi ptr [ %5, %3 ], [ %26, %25 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = ptrtoint ptr %13 to i64
  switch i64 %14, label %15 [
    i64 0, label %22
    i64 -1, label %22
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !36
  %17 = tail call i32 %1(ptr noundef %16, ptr noundef nonnull %13, ptr noundef %2) #11
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr inbounds ptr, ptr %12, i64 1
  %20 = icmp ult ptr %19, %9
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %25, label %27

22:                                               ; preds = %11, %11
  %23 = getelementptr inbounds ptr, ptr %12, i64 1
  %24 = icmp ult ptr %23, %9
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %15
  %26 = phi ptr [ %23, %22 ], [ %19, %15 ]
  br label %11, !llvm.loop !37

27:                                               ; preds = %15, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ht_purge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %20, %3
  %12 = phi ptr [ %5, %3 ], [ %21, %20 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = ptrtoint ptr %13 to i64
  switch i64 %14, label %15 [
    i64 0, label %20
    i64 -1, label %20
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !36
  %17 = tail call i32 %1(ptr noundef %16, ptr noundef nonnull %13, ptr noundef %2) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr inttoptr (i64 -1 to ptr), ptr %12, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %11, %11, %19, %15
  %21 = getelementptr inbounds ptr, ptr %12, i64 1
  %22 = icmp ult ptr %21, %9
  br i1 %22, label %11, label %23, !llvm.loop !38

23:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @ht_load(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %7 = load i8, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  tail call void @free(ptr noundef %11) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  store i32 %2, ptr %14, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  store i32 %3, ptr %15, align 4, !tbaa !31
  store i8 %4, ptr %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ht_dump_statistics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !15
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  br label %8

8:                                                ; preds = %28, %1
  %9 = phi double [ 0.000000e+00, %1 ], [ %29, %28 ]
  %10 = phi i64 [ 0, %1 ], [ %30, %28 ]
  %11 = phi i64 [ 0, %1 ], [ %31, %28 ]
  %12 = phi ptr [ %3, %1 ], [ %34, %28 ]
  %13 = phi i64 [ 0, %1 ], [ %32, %28 ]
  %14 = phi i64 [ 0, %1 ], [ %33, %28 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !22
  %16 = ptrtoint ptr %15 to i64
  switch i64 %16, label %19 [
    i64 -1, label %17
    i64 0, label %28
  ]

17:                                               ; preds = %8
  %18 = add i64 %10, 1
  br label %28

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.ht_identifier, ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !25
  %22 = zext i32 %21 to i64
  %23 = add i64 %13, %22
  %24 = uitofp i32 %21 to double
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %9)
  %26 = tail call i64 @llvm.umax.i64(i64 %11, i64 %22)
  %27 = add i64 %14, 1
  br label %28

28:                                               ; preds = %8, %17, %19
  %29 = phi double [ %9, %17 ], [ %25, %19 ], [ %9, %8 ]
  %30 = phi i64 [ %18, %17 ], [ %10, %19 ], [ %10, %8 ]
  %31 = phi i64 [ %11, %17 ], [ %26, %19 ], [ %11, %8 ]
  %32 = phi i64 [ %13, %17 ], [ %23, %19 ], [ %13, %8 ]
  %33 = phi i64 [ %14, %17 ], [ %27, %19 ], [ %14, %8 ]
  %34 = getelementptr inbounds ptr, ptr %12, i64 1
  %35 = icmp ult ptr %34, %7
  br i1 %35, label %8, label %36, !llvm.loop !39

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !31
  %39 = zext i32 %38 to i64
  %40 = tail call i32 @_obstack_memory_used(ptr noundef %0) #11
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, %32
  %43 = load i32, ptr %4, align 8, !tbaa !15
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr @stderr, align 8, !tbaa !22
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str, i64 noundef %39) #13
  %48 = load ptr, ptr @stderr, align 8, !tbaa !22
  %49 = uitofp i64 %33 to double
  %50 = fmul double %49, 1.000000e+02
  %51 = uitofp i32 %38 to double
  %52 = fdiv double %50, %51
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.1, i64 noundef %33, double noundef %52) #13
  %54 = load ptr, ptr @stderr, align 8, !tbaa !22
  %55 = load i32, ptr %4, align 8, !tbaa !15
  %56 = zext i32 %55 to i64
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.2, i64 noundef %56) #13
  %58 = load ptr, ptr @stderr, align 8, !tbaa !22
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.3, i64 noundef %30) #13
  %60 = load ptr, ptr @stderr, align 8, !tbaa !22
  %61 = icmp ult i64 %32, 10240
  %62 = icmp ult i64 %32, 10485760
  %63 = select i1 %62, i64 10, i64 20
  %64 = select i1 %61, i64 0, i64 %63
  %65 = lshr i64 %32, %64
  %66 = select i1 %62, i32 107, i32 77
  %67 = select i1 %61, i32 32, i32 %66
  %68 = icmp ult i64 %42, 10240
  %69 = icmp ult i64 %42, 10485760
  %70 = select i1 %69, i64 10, i64 20
  %71 = select i1 %68, i64 0, i64 %70
  %72 = lshr i64 %42, %71
  %73 = select i1 %69, i32 107, i32 77
  %74 = select i1 %68, i32 32, i32 %73
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.4, i64 noundef %65, i32 noundef %67, i64 noundef %72, i32 noundef %74) #13
  %76 = load ptr, ptr @stderr, align 8, !tbaa !22
  %77 = icmp ult i32 %43, 1280
  %78 = icmp ult i32 %43, 1310720
  %79 = select i1 %78, i64 7, i64 17
  %80 = lshr i64 %44, %79
  %81 = select i1 %77, i64 %45, i64 %80
  %82 = select i1 %78, i32 107, i32 77
  %83 = select i1 %77, i32 32, i32 %82
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.5, i64 noundef %81, i32 noundef %83) #13
  %85 = uitofp i64 %32 to double
  %86 = insertelement <2 x double> poison, double %29, i64 0
  %87 = insertelement <2 x double> %86, double %85, i64 1
  %88 = insertelement <2 x double> poison, double %51, i64 0
  %89 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> zeroinitializer
  %90 = fdiv <2 x double> %87, %89
  %91 = extractelement <2 x double> %90, i64 1
  %92 = fmul double %91, %91
  %93 = load ptr, ptr @stderr, align 8, !tbaa !22
  %94 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 8
  %95 = load i32, ptr %94, align 4, !tbaa !27
  %96 = uitofp i32 %95 to double
  %97 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !21
  %99 = uitofp i32 %98 to double
  %100 = fdiv double %96, %99
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.6, double noundef %100) #13
  %102 = load ptr, ptr @stderr, align 8, !tbaa !22
  %103 = load i32, ptr %97, align 8, !tbaa !21
  %104 = uitofp i32 %103 to double
  %105 = fdiv double %51, %104
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.7, double noundef %105) #13
  %107 = load ptr, ptr @stderr, align 8, !tbaa !22
  %108 = extractelement <2 x double> %90, i64 0
  %109 = fsub double %108, %92
  %110 = tail call fastcc double @approx_sqrt(double noundef %109) #12
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.8, double noundef %91, double noundef %110) #13
  %112 = load ptr, ptr @stderr, align 8, !tbaa !22
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.9, i64 noundef %31) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: optsize
declare i32 @_obstack_memory_used(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @approx_sqrt(double noundef %0) unnamed_addr #0 {
  %2 = fcmp olt double %0, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @abort() #14
  unreachable

4:                                                ; preds = %1
  %5 = fcmp oeq double %0, 0.000000e+00
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = fneg double %0
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi double [ %13, %8 ], [ %0, %6 ]
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = fmul double %9, 2.000000e+00
  %12 = fdiv double %10, %11
  %13 = fsub double %9, %12
  %14 = fcmp ogt double %12, 1.000000e-04
  br i1 %14, label %8, label %15, !llvm.loop !40

15:                                               ; preds = %8, %4
  %16 = phi double [ 0.000000e+00, %4 ], [ %13, %8 ]
  ret double %16
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { cold optsize }
attributes #14 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 48}
!6 = !{!"ht", !7, i64 0, !11, i64 88, !11, i64 96, !11, i64 104, !12, i64 112, !12, i64 116, !11, i64 120, !12, i64 128, !12, i64 132, !9, i64 136}
!7 = !{!"obstack", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !12, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!6, !11, i64 88}
!14 = !{!6, !9, i64 136}
!15 = !{!6, !12, i64 112}
!16 = !{!6, !11, i64 8}
!17 = !{!6, !8, i64 40}
!18 = !{!6, !11, i64 32}
!19 = !{!6, !11, i64 16}
!20 = !{!6, !11, i64 24}
!21 = !{!6, !12, i64 128}
!22 = !{!11, !11, i64 0}
!23 = !{!24, !12, i64 12}
!24 = !{!"ht_identifier", !11, i64 0, !12, i64 8, !12, i64 12}
!25 = !{!24, !12, i64 8}
!26 = !{!24, !11, i64 0}
!27 = !{!6, !12, i64 132}
!28 = !{!6, !11, i64 96}
!29 = !{!6, !11, i64 104}
!30 = !{!9, !9, i64 0}
!31 = !{!6, !12, i64 116}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = !{!6, !11, i64 120}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !33}
