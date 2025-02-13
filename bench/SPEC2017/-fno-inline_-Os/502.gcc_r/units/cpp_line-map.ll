; ModuleID = 'cpp_line-map.c'
source_filename = "cpp_line-map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [44 x i8] c"line-map.c: file \22%s\22 entered but not left\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"line-map.c: file \22%s\22 left but not entered\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @linemap_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !40 {
  %2 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 -1, ptr %2, align 4, !tbaa !41
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 4, !tbaa !47
  %4 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  store i32 1, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  store i32 1, ptr %7, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 10
  store ptr null, ptr %9, align 8, !tbaa !53
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @linemap_check_files_exited(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !54 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = add i32 %4, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.line_map, ptr %2, i64 %6, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.line_map, ptr %2, i64 %6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %22, %12 ], [ %7, %10 ]
  %14 = phi ptr [ %21, %12 ], [ %11, %10 ]
  %15 = load ptr, ptr @stderr, align 8, !tbaa !59
  %16 = load ptr, ptr %14, align 8, !tbaa !60
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %16) #10
  %18 = load ptr, ptr %0, align 8, !tbaa !55
  %19 = load i32, ptr %13, align 8, !tbaa !57
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.line_map, ptr %18, i64 %20
  %22 = getelementptr inbounds %struct.line_map, ptr %18, i64 %20, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %12, label %25, !llvm.loop !61

25:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @linemap_free(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !54 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @linemap_check_files_exited(ptr noundef nonnull %0) #11
  %5 = load ptr, ptr %0, align 8, !tbaa !55
  tail call void @free(ptr noundef %5) #12
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @linemap_add(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !63 {
  %6 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !55
  br i1 %11, label %20, label %13, !prof !64

13:                                               ; preds = %5
  %14 = add i32 %10, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.line_map, ptr %12, i64 %15, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = icmp ult i32 %8, %17
  br i1 %18, label %19, label %20, !prof !66

19:                                               ; preds = %13
  tail call void @abort() #13
  unreachable

20:                                               ; preds = %13, %5
  %21 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = icmp eq i32 %10, %22
  br i1 %23, label %24, label %43, !prof !68

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @xrealloc, ptr %26, !prof !69
  %29 = shl i32 %10, 1
  %30 = add i32 %29, 256
  store i32 %30, ptr %21, align 8, !tbaa !67
  %31 = zext i32 %30 to i64
  %32 = mul nuw nsw i64 %31, 24
  %33 = tail call ptr %28(ptr noundef %12, i64 noundef %32) #12
  store ptr %33, ptr %0, align 8, !tbaa !55
  %34 = load i32, ptr %9, align 4, !tbaa !56
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.line_map, ptr %33, i64 %35
  %37 = load i32, ptr %21, align 8, !tbaa !67
  %38 = sub i32 %37, %34
  %39 = zext i32 %38 to i64
  %40 = mul nuw nsw i64 %39, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %36, i8 0, i64 %40, i1 false)
  %41 = load ptr, ptr %0, align 8, !tbaa !55
  %42 = load i32, ptr %9, align 4, !tbaa !56
  br label %43

43:                                               ; preds = %24, %20
  %44 = phi i32 [ %42, %24 ], [ %10, %20 ]
  %45 = phi ptr [ %41, %24 ], [ %12, %20 ]
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46
  %48 = icmp eq ptr %3, null
  br i1 %48, label %55, label %49, !prof !64

49:                                               ; preds = %43
  %50 = load i8, ptr %3, align 1, !tbaa !70
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55, !prof !66

52:                                               ; preds = %49
  %53 = icmp eq i32 %1, 3
  %54 = select i1 %53, ptr %3, ptr @.str.1
  br label %55

55:                                               ; preds = %52, %49, %43
  %56 = phi ptr [ %3, %49 ], [ null, %43 ], [ %54, %52 ]
  %57 = icmp eq i32 %1, 3
  %58 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !48
  %60 = icmp eq i32 %59, 0
  br i1 %57, label %62, label %61, !prof !71

61:                                               ; preds = %55
  br i1 %60, label %107, label %63, !prof !64

62:                                               ; preds = %55
  br i1 %60, label %106, label %107, !prof !64

63:                                               ; preds = %61
  %64 = icmp eq i32 %1, 1
  br i1 %64, label %65, label %107, !prof !72

65:                                               ; preds = %63
  %66 = getelementptr %struct.line_map, ptr %47, i64 -1, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !57
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72, !prof !73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.line_map, ptr %47, i64 -1
  %71 = icmp eq ptr %56, null
  br i1 %71, label %104, label %80, !prof !73

72:                                               ; preds = %65
  %73 = zext nneg i32 %67 to i64
  %74 = getelementptr inbounds %struct.line_map, ptr %45, i64 %73
  %75 = icmp eq ptr %56, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !60
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) %56) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %69, %76
  %81 = phi ptr [ %74, %76 ], [ %70, %69 ]
  %82 = phi i32 [ 1, %76 ], [ 2, %69 ]
  %83 = load ptr, ptr @stderr, align 8, !tbaa !59
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.2, ptr noundef nonnull %56) #10
  br label %85

85:                                               ; preds = %72, %80
  %86 = phi i32 [ %82, %80 ], [ 1, %72 ]
  %87 = phi ptr [ %81, %80 ], [ %74, %72 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = getelementptr inbounds %struct.line_map, ptr %87, i64 1, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !65
  %91 = getelementptr inbounds %struct.line_map, ptr %87, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !65
  %93 = sub i32 %90, %92
  %94 = getelementptr inbounds %struct.line_map, ptr %87, i64 0, i32 6
  %95 = load i8, ptr %94, align 2
  %96 = zext nneg i8 %95 to i32
  %97 = lshr i32 %93, %96
  %98 = getelementptr inbounds %struct.line_map, ptr %87, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !74
  %100 = add i32 %97, %99
  %101 = getelementptr inbounds %struct.line_map, ptr %87, i64 0, i32 5
  %102 = load i8, ptr %101, align 1, !tbaa !75
  %103 = zext i8 %102 to i32
  br label %107

104:                                              ; preds = %69
  %105 = add i32 %59, -1
  store i32 %105, ptr %58, align 8, !tbaa !48
  br label %152

106:                                              ; preds = %62
  br label %107

107:                                              ; preds = %62, %76, %106, %85, %61, %63
  %108 = phi ptr [ %56, %63 ], [ %56, %61 ], [ %88, %85 ], [ %56, %62 ], [ %56, %76 ], [ %56, %106 ]
  %109 = phi i32 [ %4, %63 ], [ %4, %61 ], [ %100, %85 ], [ %4, %62 ], [ %4, %76 ], [ %4, %106 ]
  %110 = phi i32 [ %2, %63 ], [ %2, %61 ], [ %103, %85 ], [ %2, %62 ], [ %2, %76 ], [ %2, %106 ]
  %111 = phi i32 [ %1, %63 ], [ 0, %61 ], [ %86, %85 ], [ 2, %62 ], [ 1, %76 ], [ 0, %106 ]
  %112 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 4
  %113 = trunc i32 %111 to i8
  store i8 %113, ptr %112, align 4
  %114 = trunc i32 %110 to i8
  %115 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 5
  store i8 %114, ptr %115, align 1, !tbaa !75
  %116 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 2
  store i32 %8, ptr %116, align 4, !tbaa !65
  store ptr %108, ptr %47, align 8, !tbaa !60
  %117 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 1
  store i32 %109, ptr %117, align 8, !tbaa !74
  %118 = load i32, ptr %9, align 4, !tbaa !56
  %119 = add i32 %118, 1
  store i32 %119, ptr %9, align 4, !tbaa !56
  %120 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 3
  store i32 %118, ptr %120, align 8, !tbaa !49
  %121 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 6
  store i8 0, ptr %121, align 2
  store i32 %8, ptr %6, align 8, !tbaa !50
  %122 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  store i32 %8, ptr %122, align 4, !tbaa !51
  %123 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  store i32 0, ptr %123, align 8, !tbaa !52
  switch i32 %111, label %152 [
    i32 0, label %124
    i32 2, label %138
    i32 1, label %142
  ], !prof !76

124:                                              ; preds = %107
  %125 = load i32, ptr %58, align 8, !tbaa !48
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127, !prof !73

127:                                              ; preds = %124
  %128 = load i32, ptr %9, align 4, !tbaa !56
  %129 = add i32 %128, -2
  br label %130

130:                                              ; preds = %124, %127
  %131 = phi i32 [ %129, %127 ], [ -1, %124 ]
  %132 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 3
  store i32 %131, ptr %132, align 8, !tbaa !57
  %133 = add i32 %125, 1
  store i32 %133, ptr %58, align 8, !tbaa !48
  %134 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 6
  %135 = load i8, ptr %134, align 4, !tbaa !47
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %152, label %137, !prof !73

137:                                              ; preds = %130
  tail call fastcc void @trace_include(ptr noundef nonnull %0, ptr noundef nonnull %47) #11
  br label %152

138:                                              ; preds = %107
  %139 = getelementptr %struct.line_map, ptr %47, i64 -1, i32 3
  %140 = load i32, ptr %139, align 8, !tbaa !57
  %141 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 3
  store i32 %140, ptr %141, align 8, !tbaa !57
  br label %152

142:                                              ; preds = %107
  %143 = load i32, ptr %58, align 8, !tbaa !48
  %144 = add i32 %143, -1
  store i32 %144, ptr %58, align 8, !tbaa !48
  %145 = load ptr, ptr %0, align 8, !tbaa !55
  %146 = getelementptr %struct.line_map, ptr %47, i64 -1, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !57
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.line_map, ptr %145, i64 %148, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !57
  %151 = getelementptr inbounds %struct.line_map, ptr %45, i64 %46, i32 3
  store i32 %150, ptr %151, align 8, !tbaa !57
  br label %152

152:                                              ; preds = %104, %137, %130, %142, %138, %107
  %153 = phi ptr [ null, %104 ], [ %47, %107 ], [ %47, %138 ], [ %47, %142 ], [ %47, %130 ], [ %47, %137 ]
  ret ptr %153
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @trace_include(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !54 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = add i32 %4, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %11, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr @stderr, align 8, !tbaa !59
  %10 = tail call i32 @putc(i32 noundef 46, ptr noundef %9) #11
  %11 = add i32 %8, -1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !78

13:                                               ; preds = %7, %2
  %14 = load ptr, ptr @stderr, align 8, !tbaa !59
  %15 = load ptr, ptr %1, align 8, !tbaa !60
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef %15) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @linemap_line_start(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !79 {
  %4 = load ptr, ptr %0, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8
  %10 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = sub i32 %13, %15
  %17 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = lshr i32 %16, %19
  %21 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !74
  %23 = add i32 %22, %20
  %24 = sub i32 %1, %23
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %41, !prof !80

26:                                               ; preds = %3
  %27 = icmp ugt i32 %24, 10
  br i1 %27, label %28, label %34, !prof !81

28:                                               ; preds = %26
  %29 = mul nsw i32 %24, %19
  %30 = icmp slt i32 %29, 1001
  %31 = lshr i32 %2, %19
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %37, label %41, !prof !82

34:                                               ; preds = %26
  %35 = lshr i32 %2, %19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41, !prof !83

37:                                               ; preds = %28, %34
  %38 = icmp ult i32 %2, 81
  %39 = icmp ugt i8 %18, 9
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %82, !prof !84

41:                                               ; preds = %37, %34, %28, %3
  %42 = icmp ugt i32 %2, 100000
  %43 = icmp ugt i32 %11, -1073741824
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %45, label %47, !prof !85

45:                                               ; preds = %41
  %46 = icmp ugt i32 %11, -268435456
  br i1 %46, label %100, label %52

47:                                               ; preds = %41, %47
  %48 = phi i32 [ %51, %47 ], [ 7, %41 ]
  %49 = shl nuw i32 1, %48
  %50 = icmp ugt i32 %49, %2
  %51 = add nuw nsw i32 %48, 1
  br i1 %50, label %52, label %47, !prof !86, !llvm.loop !87

52:                                               ; preds = %47, %45
  %53 = phi i32 [ 0, %45 ], [ %49, %47 ]
  %54 = phi i32 [ 0, %45 ], [ %48, %47 ]
  %55 = icmp eq i32 %20, 0
  %56 = and i1 %55, %25
  br i1 %56, label %57, label %64, !prof !88

57:                                               ; preds = %52
  %58 = sub i32 %11, %15
  %59 = shl nsw i32 -1, %19
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = lshr i32 %61, %54
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64, !prof !89

64:                                               ; preds = %57, %52
  %65 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 5
  %66 = load i8, ptr %65, align 1, !tbaa !75
  %67 = zext i8 %66 to i32
  %68 = load ptr, ptr %9, align 8, !tbaa !60
  %69 = tail call ptr @linemap_add(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %67, ptr noundef %68, i32 noundef %1) #11
  br label %70

70:                                               ; preds = %57, %64
  %71 = phi ptr [ %69, %64 ], [ %9, %57 ]
  %72 = getelementptr inbounds %struct.line_map, ptr %71, i64 0, i32 6
  %73 = trunc i32 %54 to i8
  store i8 %73, ptr %72, align 2
  %74 = getelementptr inbounds %struct.line_map, ptr %71, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !65
  %76 = getelementptr inbounds %struct.line_map, ptr %71, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !74
  %78 = sub i32 %1, %77
  %79 = shl i32 %78, %54
  %80 = add i32 %79, %75
  %81 = load i32, ptr %10, align 8, !tbaa !50
  br label %92

82:                                               ; preds = %37
  %83 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !52
  %85 = sub i32 %11, %15
  %86 = shl nsw i32 -1, %19
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = sub i32 %11, %88
  %90 = shl i32 %24, %19
  %91 = add i32 %89, %90
  br label %92

92:                                               ; preds = %70, %82
  %93 = phi i32 [ %11, %82 ], [ %81, %70 ]
  %94 = phi i32 [ %91, %82 ], [ %80, %70 ]
  %95 = phi i32 [ %84, %82 ], [ %53, %70 ]
  store i32 %94, ptr %12, align 4, !tbaa !51
  %96 = icmp ugt i32 %94, %93
  br i1 %96, label %97, label %98, !prof !90

97:                                               ; preds = %92
  store i32 %94, ptr %10, align 8, !tbaa !50
  br label %98

98:                                               ; preds = %97, %92
  %99 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  store i32 %95, ptr %99, align 8, !tbaa !52
  br label %100

100:                                              ; preds = %45, %98
  %101 = phi i32 [ %94, %98 ], [ 0, %45 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @linemap_position_for_column(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !91 {
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %30, label %8, !prof !92

8:                                                ; preds = %2
  %9 = icmp ugt i32 %4, 201326591
  %10 = icmp ugt i32 %1, 100000
  %11 = or i1 %10, %9
  br i1 %11, label %37, label %12, !prof !93

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !56
  %16 = add i32 %15, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.line_map, ptr %13, i64 %17, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !65
  %20 = sub i32 %4, %19
  %21 = getelementptr inbounds %struct.line_map, ptr %13, i64 %17, i32 6
  %22 = load i8, ptr %21, align 2
  %23 = zext nneg i8 %22 to i32
  %24 = lshr i32 %20, %23
  %25 = getelementptr inbounds %struct.line_map, ptr %13, i64 %17, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !74
  %27 = add i32 %24, %26
  %28 = add nuw nsw i32 %1, 50
  %29 = tail call i32 @linemap_line_start(ptr noundef nonnull %0, i32 noundef %27, i32 noundef %28) #11
  br label %30

30:                                               ; preds = %12, %2
  %31 = phi i32 [ %29, %12 ], [ %4, %2 ]
  %32 = add i32 %31, %1
  %33 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !50
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %37, label %36, !prof !94

36:                                               ; preds = %30
  store i32 %32, ptr %33, align 8, !tbaa !50
  br label %37

37:                                               ; preds = %30, %36, %8
  %38 = phi i32 [ %4, %8 ], [ %32, %36 ], [ %32, %30 ]
  ret i32 %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @linemap_lookup(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !95 {
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = load ptr, ptr %0, align 8, !tbaa !55
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds %struct.line_map, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.line_map, ptr %7, i64 %8, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %20, label %13, !prof !96

13:                                               ; preds = %2
  %14 = add i32 %4, 1
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %42, label %16, !prof !97

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.line_map, ptr %9, i64 1, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %42, label %20, !prof !98

20:                                               ; preds = %2, %16
  %21 = phi i32 [ %4, %16 ], [ 0, %2 ]
  %22 = phi i32 [ %6, %16 ], [ %4, %2 ]
  %23 = sub i32 %22, %21
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %38, !prof !99

25:                                               ; preds = %20, %25
  %26 = phi i32 [ %35, %25 ], [ %22, %20 ]
  %27 = phi i32 [ %34, %25 ], [ %21, %20 ]
  %28 = add i32 %26, %27
  %29 = lshr i32 %28, 1
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.line_map, ptr %7, i64 %30, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !65
  %33 = icmp ugt i32 %32, %1
  %34 = select i1 %33, i32 %27, i32 %29, !prof !100
  %35 = select i1 %33, i32 %29, i32 %26, !prof !100
  %36 = sub i32 %35, %34
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %25, label %38, !prof !101, !llvm.loop !102

38:                                               ; preds = %25, %20
  %39 = phi i32 [ %21, %20 ], [ %34, %25 ]
  store i32 %39, ptr %3, align 8, !tbaa !49
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.line_map, ptr %7, i64 %40
  br label %42

42:                                               ; preds = %13, %16, %38
  %43 = phi ptr [ %41, %38 ], [ %9, %16 ], [ %9, %13 ]
  ret ptr %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @linemap_add, ptr @abort, i64 1}
!36 = !{ptr @linemap_add, ptr @trace_include, i64 1}
!37 = !{ptr @linemap_line_start, ptr @linemap_add, i64 394}
!38 = !{ptr @linemap_position_for_column, ptr @linemap_line_start, i64 515}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !46, i64 20}
!42 = !{!"line_maps", !43, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !44, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !43, i64 48}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"int", !44, i64 0}
!47 = !{!42, !44, i64 28}
!48 = !{!42, !46, i64 24}
!49 = !{!42, !46, i64 16}
!50 = !{!42, !46, i64 32}
!51 = !{!42, !46, i64 36}
!52 = !{!42, !46, i64 40}
!53 = !{!42, !43, i64 48}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!42, !43, i64 0}
!56 = !{!42, !46, i64 12}
!57 = !{!58, !46, i64 16}
!58 = !{!"line_map", !43, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !44, i64 21, !46, i64 22}
!59 = !{!43, !43, i64 0}
!60 = !{!58, !43, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"function_entry_count", i64 397}
!64 = !{!"branch_weights", i32 2, i32 397}
!65 = !{!58, !46, i64 12}
!66 = !{!"branch_weights", i32 1, i32 397}
!67 = !{!42, !46, i64 8}
!68 = !{!"branch_weights", i32 3, i32 396}
!69 = !{!"branch_weights", i32 1, i32 3}
!70 = !{!44, !44, i64 0}
!71 = !{!"branch_weights", i32 1, i32 398}
!72 = !{!"branch_weights", i32 10818489, i32 2136665159}
!73 = !{!"branch_weights", i32 2, i32 1}
!74 = !{!58, !46, i64 8}
!75 = !{!58, !44, i64 21}
!76 = !{!"branch_weights", i32 396, i32 1588, i32 313632, i32 396}
!77 = !{!"cpp_line-map.c:trace_include"}
!78 = distinct !{!78, !62}
!79 = !{!"function_entry_count", i64 427621}
!80 = !{!"branch_weights", i32 427622, i32 1}
!81 = !{!"branch_weights", i32 1, i32 427622}
!82 = !{!"branch_weights", i32 -801515122, i32 9635441}
!83 = !{!"branch_weights", i32 427104, i32 519}
!84 = !{!"branch_weights", i32 934290, i32 -1445609695}
!85 = !{!"branch_weights", i32 1317, i32 432964}
!86 = !{!"branch_weights", i32 658, i32 1267}
!87 = distinct !{!87, !62}
!88 = !{!"branch_weights", i32 266490, i32 167791}
!89 = !{!"branch_weights", i32 266, i32 140}
!90 = !{!"branch_weights", i32 426965, i32 658}
!91 = !{!"function_entry_count", i64 2862}
!92 = !{!"branch_weights", i32 1, i32 2863}
!93 = !{!"branch_weights", i32 1216263, i32 267289}
!94 = !{!"branch_weights", i32 1, i32 517}
!95 = !{!"function_entry_count", i64 2290308}
!96 = !{!"branch_weights", i32 18556, i32 2271754}
!97 = !{!"branch_weights", i32 107802, i32 2163953}
!98 = !{!"branch_weights", i32 2144849, i32 19105}
!99 = !{!"branch_weights", i32 37659, i32 1}
!100 = !{!"branch_weights", i32 120666, i32 161583}
!101 = !{!"branch_weights", i32 244589, i32 37659}
!102 = distinct !{!102, !62}
