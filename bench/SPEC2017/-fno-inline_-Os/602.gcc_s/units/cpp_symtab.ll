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
define dso_local noundef ptr @ht_create(i32 noundef %0) local_unnamed_addr #0 !prof !46 {
  %2 = shl nuw i32 1, %0
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 144) #11
  %4 = tail call i32 @_obstack_begin(ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #11
  %5 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 6
  store i32 0, ptr %5, align 8, !tbaa !47
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #11
  %8 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 9
  store i8 1, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.ht, ptr %3, i64 0, i32 4
  store i32 %2, ptr %10, align 8, !tbaa !57
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
define dso_local void @ht_destroy(ptr noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 0, %4
  %6 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 5
  store i64 %5, ptr %6, align 8, !tbaa !60
  %7 = icmp sgt i64 %5, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %4
  %13 = icmp sgt i64 %12, %5
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %3, i64 %5
  %16 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !62
  %17 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3
  store ptr %15, ptr %17, align 8, !tbaa !63
  br label %20

18:                                               ; preds = %8, %1
  %19 = getelementptr inbounds i8, ptr %3, i64 %5
  tail call void @obstack_free(ptr noundef nonnull %0, ptr noundef %19) #11
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %22 = load i8, ptr %21, align 8, !tbaa !56
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  tail call void @free(ptr noundef %26) #11
  br label %27

27:                                               ; preds = %24, %20
  tail call void @free(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ht_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !64 {
  %5 = tail call fastcc i32 @calc_hash(ptr noundef %1, i64 noundef %2) #12
  %6 = tail call ptr @ht_lookup_with_hash(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %5, i32 noundef %3) #12
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ht_lookup_with_hash(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !65 {
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = add i32 %7, -1
  %9 = and i32 %8, %3
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = zext i32 %9 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %70
    i64 -1, label %32
  ], !prof !68

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %32, !prof !71

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = trunc i64 %2 to i32
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32, !prof !73

28:                                               ; preds = %23
  %29 = load ptr, ptr %17, align 8, !tbaa !74
  %30 = tail call i32 @bcmp(ptr %29, ptr %1, i64 %2)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %155, label %32, !prof !75

32:                                               ; preds = %5, %19, %23, %28
  %33 = phi i32 [ %7, %28 ], [ %7, %23 ], [ %7, %19 ], [ %9, %5 ]
  %34 = mul i32 %3, 17
  %35 = and i32 %8, %34
  %36 = or i32 %35, 1
  %37 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !76
  br label %39

39:                                               ; preds = %53, %32
  %40 = phi i32 [ %46, %53 ], [ %38, %32 ]
  %41 = phi i32 [ %55, %53 ], [ %33, %32 ]
  %42 = phi i32 [ %48, %53 ], [ %9, %32 ]
  br label %43

43:                                               ; preds = %60, %39
  %44 = phi i32 [ %40, %39 ], [ %46, %60 ]
  %45 = phi i32 [ %42, %39 ], [ %48, %60 ]
  %46 = add i32 %44, 1
  store i32 %46, ptr %37, align 4, !tbaa !76
  %47 = add i32 %45, %36
  %48 = and i32 %47, %8
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %14, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = ptrtoint ptr %51 to i64
  switch i64 %52, label %56 [
    i64 0, label %70
    i64 -1, label %53
  ], !prof !77

53:                                               ; preds = %43
  %54 = icmp eq i32 %41, %7
  %55 = select i1 %54, i32 %41, i32 %48
  br label %39

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.ht_identifier, ptr %51, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !69
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %61, label %60, !prof !78

60:                                               ; preds = %56, %61, %66
  br label %43

61:                                               ; preds = %56
  %62 = trunc i64 %2 to i32
  %63 = getelementptr inbounds %struct.ht_identifier, ptr %51, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !72
  %65 = icmp eq i32 %64, %62
  br i1 %65, label %66, label %60, !prof !79

66:                                               ; preds = %61
  %67 = load ptr, ptr %51, align 8, !tbaa !74
  %68 = tail call i32 @bcmp(ptr %67, ptr %1, i64 %2)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %155, label %60, !prof !80

70:                                               ; preds = %43, %5
  %71 = phi i32 [ %7, %5 ], [ %41, %43 ]
  %72 = phi i32 [ %9, %5 ], [ %48, %43 ]
  %73 = icmp eq i32 %4, 0
  br i1 %73, label %155, label %74, !prof !81

74:                                               ; preds = %70
  %75 = icmp eq i32 %71, %7
  br i1 %75, label %77, label %76, !prof !82

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %71, %76 ], [ %72, %74 ]
  %79 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !83
  %81 = tail call ptr %80(ptr noundef nonnull %0) #11
  %82 = load ptr, ptr %13, align 8, !tbaa !55
  %83 = zext i32 %78 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  store ptr %81, ptr %84, align 8, !tbaa !67
  %85 = trunc i64 %2 to i32
  %86 = getelementptr inbounds %struct.ht_identifier, ptr %81, i64 0, i32 1
  store i32 %85, ptr %86, align 8, !tbaa !72
  %87 = getelementptr inbounds %struct.ht_identifier, ptr %81, i64 0, i32 2
  store i32 %3, ptr %87, align 4, !tbaa !69
  %88 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !84
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91, !prof !85

91:                                               ; preds = %77
  %92 = add i64 %2, 1
  %93 = tail call ptr %89(i64 noundef %92) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %1, i64 %2, i1 false)
  %94 = getelementptr inbounds i8, ptr %93, i64 %2
  store i8 0, ptr %94, align 1, !tbaa !86
  br label %145

95:                                               ; preds = %77
  %96 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 5
  store i64 %2, ptr %96, align 8, !tbaa !60
  %97 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !63
  %99 = getelementptr inbounds i8, ptr %98, i64 %2
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !61
  %103 = icmp ugt ptr %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = add i32 %85, 1
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef %105) #11
  %106 = load ptr, ptr %97, align 8, !tbaa !63
  %107 = load i64, ptr %96, align 8, !tbaa !60
  br label %108

108:                                              ; preds = %95, %104
  %109 = phi i64 [ %2, %95 ], [ %107, %104 ]
  %110 = phi ptr [ %98, %95 ], [ %106, %104 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %1, i64 %109, i1 false)
  %111 = load i64, ptr %96, align 8, !tbaa !60
  %112 = load ptr, ptr %97, align 8, !tbaa !63
  %113 = getelementptr inbounds i8, ptr %112, i64 %111
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %114, ptr %97, align 8, !tbaa !63
  store i8 0, ptr %113, align 1, !tbaa !86
  %115 = load ptr, ptr %97, align 8, !tbaa !63
  %116 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !62
  %118 = icmp eq ptr %115, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %121 = load i8, ptr %120, align 8
  %122 = or i8 %121, 2
  store i8 %122, ptr %120, align 8
  br label %123

123:                                              ; preds = %108, %119
  %124 = ptrtoint ptr %117 to i64
  store i64 %124, ptr %96, align 8, !tbaa !60
  %125 = ptrtoint ptr %115 to i64
  %126 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !47
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %125
  %130 = xor i32 %127, -1
  %131 = sext i32 %130 to i64
  %132 = and i64 %129, %131
  %133 = inttoptr i64 %132 to ptr
  store ptr %133, ptr %97, align 8, !tbaa !63
  %134 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !59
  %136 = ptrtoint ptr %135 to i64
  %137 = sub i64 %132, %136
  %138 = load ptr, ptr %101, align 8, !tbaa !61
  %139 = ptrtoint ptr %138 to i64
  %140 = sub i64 %139, %136
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %123
  store ptr %138, ptr %97, align 8, !tbaa !63
  br label %143

143:                                              ; preds = %123, %142
  %144 = phi ptr [ %133, %123 ], [ %138, %142 ]
  store ptr %144, ptr %116, align 8, !tbaa !62
  br label %145

145:                                              ; preds = %143, %91
  %146 = phi ptr [ %117, %143 ], [ %93, %91 ]
  store ptr %146, ptr %81, align 8, !tbaa !74
  %147 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  %148 = load i32, ptr %147, align 4, !tbaa !87
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 4, !tbaa !87
  %150 = shl i32 %149, 2
  %151 = load i32, ptr %6, align 8, !tbaa !57
  %152 = mul i32 %151, 3
  %153 = icmp ult i32 %150, %152
  br i1 %153, label %155, label %154, !prof !88

154:                                              ; preds = %145
  tail call fastcc void @ht_expand(ptr noundef nonnull %0) #12
  br label %155

155:                                              ; preds = %66, %145, %154, %70, %28
  %156 = phi ptr [ %17, %28 ], [ null, %70 ], [ %81, %154 ], [ %81, %145 ], [ %51, %66 ]
  ret ptr %156
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @calc_hash(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 !prof !64 !PGOFuncName !89 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4, !prof !90

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %14, %4 ], [ 0, %2 ]
  %6 = phi i64 [ %8, %4 ], [ %1, %2 ]
  %7 = phi ptr [ %10, %4 ], [ %0, %2 ]
  %8 = add i64 %6, -1
  %9 = mul i32 %5, 67
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  %11 = load i8, ptr %7, align 1, !tbaa !86
  %12 = zext i8 %11 to i32
  %13 = add i32 %9, -113
  %14 = add i32 %13, %12
  %15 = icmp eq i64 %8, 0
  br i1 %15, label %16, label %4, !prof !91, !llvm.loop !92

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
define internal fastcc void @ht_expand(ptr nocapture noundef %0) unnamed_addr #0 !prof !94 !PGOFuncName !95 {
  %2 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = shl i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #11
  %7 = add i32 %4, -1
  %8 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load i32, ptr %2, align 8, !tbaa !57
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  br label %13

13:                                               ; preds = %40, %1
  %14 = phi ptr [ %9, %1 ], [ %41, %40 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = ptrtoint ptr %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %40
    i64 -1, label %40
  ], !prof !96

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ht_identifier, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !69
  %20 = and i32 %19, %7
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25, !prof !97

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
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !98, !llvm.loop !99

37:                                               ; preds = %29, %17
  %38 = phi i64 [ %21, %17 ], [ %33, %29 ]
  %39 = getelementptr inbounds ptr, ptr %6, i64 %38
  store ptr %15, ptr %39, align 8, !tbaa !67
  br label %40

40:                                               ; preds = %13, %13, %37
  %41 = getelementptr inbounds ptr, ptr %14, i64 1
  %42 = icmp ult ptr %41, %12
  br i1 %42, label %13, label %43, !prof !100, !llvm.loop !101

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %45 = load i8, ptr %44, align 8, !tbaa !56
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47, !prof !102

47:                                               ; preds = %43
  %48 = load ptr, ptr %8, align 8, !tbaa !55
  tail call void @free(ptr noundef %48) #11
  br label %49

49:                                               ; preds = %47, %43
  store i8 1, ptr %44, align 8, !tbaa !56
  store ptr %6, ptr %8, align 8, !tbaa !55
  store i32 %4, ptr %2, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ht_forall(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %25, %3
  %12 = phi ptr [ %5, %3 ], [ %26, %25 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = ptrtoint ptr %13 to i64
  switch i64 %14, label %15 [
    i64 0, label %22
    i64 -1, label %22
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !103
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
  br label %11, !llvm.loop !104

27:                                               ; preds = %15, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ht_purge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %20, %3
  %12 = phi ptr [ %5, %3 ], [ %21, %20 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = ptrtoint ptr %13 to i64
  switch i64 %14, label %15 [
    i64 0, label %20
    i64 -1, label %20
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !103
  %17 = tail call i32 %1(ptr noundef %16, ptr noundef nonnull %13, ptr noundef %2) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr inttoptr (i64 -1 to ptr), ptr %12, align 8, !tbaa !67
  br label %20

20:                                               ; preds = %11, %11, %19, %15
  %21 = getelementptr inbounds ptr, ptr %12, i64 1
  %22 = icmp ult ptr %21, %9
  br i1 %22, label %11, label %23, !llvm.loop !105

23:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @ht_load(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #5 !prof !58 {
  %6 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 9
  %7 = load i8, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  tail call void @free(ptr noundef %11) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  store i32 %2, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  store i32 %3, ptr %15, align 4, !tbaa !87
  store i8 %4, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ht_dump_statistics(ptr noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
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
  %15 = load ptr, ptr %12, align 8, !tbaa !67
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
  %21 = load i32, ptr %20, align 8, !tbaa !72
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
  br i1 %35, label %8, label %36, !llvm.loop !106

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !87
  %39 = zext i32 %38 to i64
  %40 = tail call i32 @_obstack_memory_used(ptr noundef %0) #11
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, %32
  %43 = load i32, ptr %4, align 8, !tbaa !57
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr @stderr, align 8, !tbaa !67
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str, i64 noundef %39) #13
  %48 = load ptr, ptr @stderr, align 8, !tbaa !67
  %49 = uitofp i64 %33 to double
  %50 = fmul double %49, 1.000000e+02
  %51 = uitofp i32 %38 to double
  %52 = fdiv double %50, %51
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.1, i64 noundef %33, double noundef %52) #13
  %54 = load ptr, ptr @stderr, align 8, !tbaa !67
  %55 = load i32, ptr %4, align 8, !tbaa !57
  %56 = zext i32 %55 to i64
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.2, i64 noundef %56) #13
  %58 = load ptr, ptr @stderr, align 8, !tbaa !67
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.3, i64 noundef %30) #13
  %60 = load ptr, ptr @stderr, align 8, !tbaa !67
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
  %76 = load ptr, ptr @stderr, align 8, !tbaa !67
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
  %93 = load ptr, ptr @stderr, align 8, !tbaa !67
  %94 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 8
  %95 = load i32, ptr %94, align 4, !tbaa !76
  %96 = uitofp i32 %95 to double
  %97 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !66
  %99 = uitofp i32 %98 to double
  %100 = fdiv double %96, %99
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.6, double noundef %100) #13
  %102 = load ptr, ptr @stderr, align 8, !tbaa !67
  %103 = load i32, ptr %97, align 8, !tbaa !66
  %104 = uitofp i32 %103 to double
  %105 = fdiv double %51, %104
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.7, double noundef %105) #13
  %107 = load ptr, ptr @stderr, align 8, !tbaa !67
  %108 = extractelement <2 x double> %90, i64 0
  %109 = fsub double %108, %92
  %110 = tail call fastcc double @approx_sqrt(double noundef %109) #12
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.8, double noundef %91, double noundef %110) #13
  %112 = load ptr, ptr @stderr, align 8, !tbaa !67
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
define internal fastcc double @approx_sqrt(double noundef %0) unnamed_addr #0 !prof !58 !PGOFuncName !107 {
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
  br i1 %14, label %8, label %15, !llvm.loop !108

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!45}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !{ptr @ht_create, ptr @xcalloc, i64 2}
!37 = !{ptr @ht_create, ptr @_obstack_begin, i64 1}
!38 = !{ptr @ht_lookup, ptr @calc_hash, i64 733016}
!39 = !{ptr @ht_lookup, ptr @ht_lookup_with_hash, i64 733016}
!40 = !{ptr @ht_lookup_with_hash, ptr @bcmp, i64 1539087}
!41 = !{ptr @ht_lookup_with_hash, ptr @_obstack_newchunk, i64 1}
!42 = !{ptr @ht_lookup_with_hash, ptr @ht_expand, i64 6}
!43 = !{ptr @ht_expand, ptr @xcalloc, i64 5}
!44 = !{ptr @ht_expand, ptr @free, i64 4}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !54, i64 48}
!48 = !{!"ht", !49, i64 0, !53, i64 88, !53, i64 96, !53, i64 104, !54, i64 112, !54, i64 116, !53, i64 120, !54, i64 128, !54, i64 132, !51, i64 136}
!49 = !{!"obstack", !50, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !50, i64 40, !54, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !54, i64 80, !54, i64 80, !54, i64 80}
!50 = !{!"long", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!"any pointer", !51, i64 0}
!54 = !{!"int", !51, i64 0}
!55 = !{!48, !53, i64 88}
!56 = !{!48, !51, i64 136}
!57 = !{!48, !54, i64 112}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!48, !53, i64 8}
!60 = !{!48, !50, i64 40}
!61 = !{!48, !53, i64 32}
!62 = !{!48, !53, i64 16}
!63 = !{!48, !53, i64 24}
!64 = !{!"function_entry_count", i64 733016}
!65 = !{!"function_entry_count", i64 2078747}
!66 = !{!48, !54, i64 128}
!67 = !{!53, !53, i64 0}
!68 = !{!"branch_weights", i32 -1042895696, i32 452450187, i32 1782}
!69 = !{!70, !54, i64 12}
!70 = !{!"ht_identifier", !53, i64 0, !54, i64 8, !54, i64 12}
!71 = !{!"branch_weights", i32 1203695, i32 621168}
!72 = !{!70, !54, i64 8}
!73 = !{!"branch_weights", i32 1194690, i32 9006}
!74 = !{!70, !53, i64 0}
!75 = !{!"branch_weights", i32 1193324, i32 1367}
!76 = !{!48, !54, i64 132}
!77 = !{!"branch_weights", i32 -1877300534, i32 624510602, i32 2173}
!78 = !{!"branch_weights", i32 344452, i32 768134}
!79 = !{!"branch_weights", i32 344400, i32 53}
!80 = !{!"branch_weights", i32 344147, i32 254}
!81 = !{!"branch_weights", i32 239612, i32 301668}
!82 = !{!"branch_weights", i32 301668, i32 1}
!83 = !{!48, !53, i64 96}
!84 = !{!48, !53, i64 104}
!85 = !{!"branch_weights", i32 1, i32 301668}
!86 = !{!51, !51, i64 0}
!87 = !{!48, !54, i64 116}
!88 = !{!"branch_weights", i32 301663, i32 6}
!89 = !{!"cpp_symtab.c:calc_hash"}
!90 = !{!"branch_weights", i32 1, i32 733016}
!91 = !{!"branch_weights", i32 733016, i32 7362010}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"function_entry_count", i64 5}
!95 = !{!"cpp_symtab.c:ht_expand"}
!96 = !{!"branch_weights", i32 -2027671936, i32 755771072, i32 5952}
!97 = !{!"branch_weights", i32 311453, i32 69477}
!98 = !{!"branch_weights", i32 69477, i32 33773}
!99 = distinct !{!99, !93}
!100 = !{!"branch_weights", i32 507900, i32 6}
!101 = distinct !{!101, !93}
!102 = !{!"branch_weights", i32 1, i32 6}
!103 = !{!48, !53, i64 120}
!104 = distinct !{!104, !93}
!105 = distinct !{!105, !93}
!106 = distinct !{!106, !93}
!107 = !{!"cpp_symtab.c:approx_sqrt"}
!108 = distinct !{!108, !93}
