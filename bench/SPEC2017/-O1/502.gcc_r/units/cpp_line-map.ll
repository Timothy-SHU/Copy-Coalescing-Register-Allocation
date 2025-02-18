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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linemap_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 -1, ptr %2, align 4, !tbaa !46
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 4, !tbaa !48
  %4 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  store i32 1, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  store i32 1, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 10
  store ptr null, ptr %9, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @linemap_check_files_exited(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !38 {
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
  %15 = load ptr, ptr @stderr, align 8, !tbaa !39
  %16 = load ptr, ptr %14, align 8, !tbaa !59
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %16) #14
  %18 = load ptr, ptr %0, align 8, !tbaa !55
  %19 = load i32, ptr %13, align 8, !tbaa !57
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.line_map, ptr %18, i64 %20
  %22 = getelementptr inbounds %struct.line_map, ptr %18, i64 %20, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %12, label %25, !llvm.loop !60

25:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local void @linemap_free(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.line_map, ptr %2, i64 %8, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.line_map, ptr %2, i64 %8
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %24, %14 ], [ %9, %12 ]
  %16 = phi ptr [ %23, %14 ], [ %13, %12 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !39
  %18 = load ptr, ptr %16, align 8, !tbaa !59
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %18) #14
  %20 = load ptr, ptr %0, align 8, !tbaa !55
  %21 = load i32, ptr %15, align 8, !tbaa !57
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.line_map, ptr %20, i64 %22
  %24 = getelementptr inbounds %struct.line_map, ptr %20, i64 %22, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !57
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %14, label %27, !llvm.loop !60

27:                                               ; preds = %14, %4
  %28 = load ptr, ptr %0, align 8, !tbaa !55
  tail call void @free(ptr noundef %28) #13
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @linemap_add(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 !prof !63 {
  %6 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12, !prof !64

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8, !tbaa !55
  %14 = add i32 %10, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.line_map, ptr %13, i64 %15, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = icmp ult i32 %8, %17
  br i1 %18, label %19, label %20, !prof !66

19:                                               ; preds = %12
  tail call void @abort() #15
  unreachable

20:                                               ; preds = %12, %5
  %21 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = icmp eq i32 %10, %22
  br i1 %23, label %24, label %42, !prof !68

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @xrealloc, ptr %26, !prof !69
  %29 = shl i32 %22, 1
  %30 = add i32 %29, 256
  store i32 %30, ptr %21, align 8, !tbaa !67
  %31 = load ptr, ptr %0, align 8, !tbaa !55
  %32 = zext i32 %30 to i64
  %33 = mul nuw nsw i64 %32, 24
  %34 = tail call ptr %28(ptr noundef %31, i64 noundef %33) #13, !prof !70
  store ptr %34, ptr %0, align 8, !tbaa !55
  %35 = load i32, ptr %9, align 4, !tbaa !56
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.line_map, ptr %34, i64 %36
  %38 = load i32, ptr %21, align 8, !tbaa !67
  %39 = sub i32 %38, %35
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %40, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %37, i8 0, i64 %41, i1 false), !prof !71
  br label %42

42:                                               ; preds = %24, %20
  %43 = load ptr, ptr %0, align 8, !tbaa !55
  %44 = load i32, ptr %9, align 4, !tbaa !56
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45
  %47 = icmp eq ptr %3, null
  br i1 %47, label %54, label %48, !prof !64

48:                                               ; preds = %42
  %49 = load i8, ptr %3, align 1, !tbaa !72
  %50 = icmp eq i8 %49, 0
  %51 = icmp ne i32 %1, 3
  %52 = and i1 %51, %50
  %53 = select i1 %52, ptr @.str.1, ptr %3, !prof !66
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi ptr [ %53, %48 ], [ null, %42 ]
  %56 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !49
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %116, label %59, !prof !64

59:                                               ; preds = %54
  %60 = icmp eq i32 %1, 3
  %61 = select i1 %60, i32 2, i32 %1, !prof !66
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %116, !prof !73

63:                                               ; preds = %59
  %64 = getelementptr %struct.line_map, ptr %46, i64 -1, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !57
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72, !prof !74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.line_map, ptr %46, i64 -1
  %69 = icmp eq ptr %55, null
  br i1 %69, label %70, label %81, !prof !74

70:                                               ; preds = %67
  %71 = add i32 %57, -1
  store i32 %71, ptr %56, align 8, !tbaa !49
  br label %110

72:                                               ; preds = %63
  %73 = zext nneg i32 %65 to i64
  %74 = getelementptr inbounds %struct.line_map, ptr %43, i64 %73
  %75 = icmp eq ptr %55, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !59
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) %55) #16
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %72, %76, %67
  %82 = phi i32 [ 2, %67 ], [ 1, %76 ], [ 1, %72 ]
  %83 = phi ptr [ %68, %67 ], [ %74, %76 ], [ %74, %72 ]
  %84 = phi i8 [ 1, %67 ], [ %80, %76 ], [ 0, %72 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr @stderr, align 8, !tbaa !39
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.2, ptr noundef %55) #14
  br label %89

89:                                               ; preds = %86, %81
  %90 = icmp ne i8 %84, 0
  %91 = icmp eq ptr %55, null
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load ptr, ptr %83, align 8, !tbaa !59
  %95 = getelementptr inbounds %struct.line_map, ptr %83, i64 1, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !65
  %97 = getelementptr inbounds %struct.line_map, ptr %83, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !65
  %99 = sub i32 %96, %98
  %100 = getelementptr inbounds %struct.line_map, ptr %83, i64 0, i32 6
  %101 = load i8, ptr %100, align 2
  %102 = zext nneg i8 %101 to i32
  %103 = lshr i32 %99, %102
  %104 = getelementptr inbounds %struct.line_map, ptr %83, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !75
  %106 = add i32 %103, %105
  %107 = getelementptr inbounds %struct.line_map, ptr %83, i64 0, i32 5
  %108 = load i8, ptr %107, align 1, !tbaa !76
  %109 = zext i8 %108 to i32
  br label %110

110:                                              ; preds = %93, %89, %70
  %111 = phi ptr [ null, %70 ], [ %94, %93 ], [ %55, %89 ]
  %112 = phi i32 [ %4, %70 ], [ %106, %93 ], [ %4, %89 ]
  %113 = phi i32 [ %2, %70 ], [ %109, %93 ], [ %2, %89 ]
  %114 = phi i32 [ 1, %70 ], [ %82, %93 ], [ %82, %89 ]
  %115 = phi i1 [ false, %70 ], [ true, %93 ], [ true, %89 ]
  br i1 %115, label %116, label %172, !prof !77

116:                                              ; preds = %54, %59, %110
  %117 = phi ptr [ %111, %110 ], [ %55, %59 ], [ %55, %54 ]
  %118 = phi i32 [ %112, %110 ], [ %4, %59 ], [ %4, %54 ]
  %119 = phi i32 [ %113, %110 ], [ %2, %59 ], [ %2, %54 ]
  %120 = phi i32 [ %114, %110 ], [ %61, %59 ], [ 0, %54 ]
  %121 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 4
  %122 = trunc i32 %120 to i8
  store i8 %122, ptr %121, align 4
  %123 = trunc i32 %119 to i8
  %124 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 5
  store i8 %123, ptr %124, align 1, !tbaa !76
  %125 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 2
  store i32 %8, ptr %125, align 4, !tbaa !65
  store ptr %117, ptr %46, align 8, !tbaa !59
  %126 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 1
  store i32 %118, ptr %126, align 8, !tbaa !75
  %127 = load i32, ptr %9, align 4, !tbaa !56
  %128 = add i32 %127, 1
  store i32 %128, ptr %9, align 4, !tbaa !56
  %129 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 3
  store i32 %127, ptr %129, align 8, !tbaa !50
  %130 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 6
  store i8 0, ptr %130, align 2
  store i32 %8, ptr %6, align 8, !tbaa !51
  %131 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  store i32 %8, ptr %131, align 4, !tbaa !52
  %132 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  store i32 0, ptr %132, align 8, !tbaa !53
  switch i32 %120, label %172 [
    i32 0, label %133
    i32 2, label %158
    i32 1, label %162
  ], !prof !78

133:                                              ; preds = %116
  %134 = load i32, ptr %56, align 8, !tbaa !49
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136, !prof !74

136:                                              ; preds = %133
  %137 = load i32, ptr %9, align 4, !tbaa !56
  %138 = add i32 %137, -2
  br label %139

139:                                              ; preds = %133, %136
  %140 = phi i32 [ %138, %136 ], [ -1, %133 ]
  %141 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 3
  store i32 %140, ptr %141, align 8, !tbaa !57
  %142 = add i32 %134, 1
  store i32 %142, ptr %56, align 8, !tbaa !49
  %143 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 6
  %144 = load i8, ptr %143, align 4, !tbaa !48
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %172, label %146, !prof !74

146:                                              ; preds = %139
  %147 = icmp eq i32 %134, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %146, %148
  %149 = phi i32 [ %152, %148 ], [ %134, %146 ]
  %150 = load ptr, ptr @stderr, align 8, !tbaa !39
  %151 = tail call i32 @putc(i32 noundef 46, ptr noundef %150)
  %152 = add i32 %149, -1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %148, !llvm.loop !79

154:                                              ; preds = %148, %146
  %155 = load ptr, ptr @stderr, align 8, !tbaa !39
  %156 = load ptr, ptr %46, align 8, !tbaa !59
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.3, ptr noundef %156) #14
  br label %172

158:                                              ; preds = %116
  %159 = getelementptr %struct.line_map, ptr %46, i64 -1, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !57
  %161 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 3
  store i32 %160, ptr %161, align 8, !tbaa !57
  br label %172

162:                                              ; preds = %116
  %163 = load i32, ptr %56, align 8, !tbaa !49
  %164 = add i32 %163, -1
  store i32 %164, ptr %56, align 8, !tbaa !49
  %165 = load ptr, ptr %0, align 8, !tbaa !55
  %166 = getelementptr %struct.line_map, ptr %46, i64 -1, i32 3
  %167 = load i32, ptr %166, align 8, !tbaa !57
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.line_map, ptr %165, i64 %168, i32 3
  %170 = load i32, ptr %169, align 8, !tbaa !57
  %171 = getelementptr inbounds %struct.line_map, ptr %43, i64 %45, i32 3
  store i32 %170, ptr %171, align 8, !tbaa !57
  br label %172

172:                                              ; preds = %110, %154, %139, %162, %158, %116
  %173 = phi ptr [ %46, %116 ], [ %46, %158 ], [ %46, %162 ], [ %46, %139 ], [ %46, %154 ], [ null, %110 ]
  ret ptr %173
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @linemap_line_start(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !80 {
  %4 = load ptr, ptr %0, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8
  %10 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = sub i32 %13, %15
  %17 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = lshr i32 %16, %19
  %21 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !75
  %23 = add i32 %22, %20
  %24 = sub i32 %1, %23
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %41, !prof !81

26:                                               ; preds = %3
  %27 = icmp slt i32 %24, 11
  %28 = mul nsw i32 %24, %19
  %29 = icmp slt i32 %28, 1001
  %30 = select i1 %27, i1 true, i1 %29, !prof !81
  %31 = lshr i32 %2, %19
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false, !prof !81
  br i1 %33, label %34, label %41, !prof !82

34:                                               ; preds = %26
  %35 = icmp ult i32 %2, 81
  %36 = icmp ugt i8 %18, 9
  %37 = and i1 %35, %36
  br i1 %37, label %41, label %38, !prof !83

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !53
  br label %41

41:                                               ; preds = %3, %26, %34, %38
  %42 = phi i32 [ %40, %38 ], [ %2, %34 ], [ %2, %26 ], [ %2, %3 ]
  %43 = phi i1 [ true, %38 ], [ false, %34 ], [ false, %26 ], [ false, %3 ]
  br i1 %43, label %88, label %44, !prof !84

44:                                               ; preds = %41
  %45 = icmp ugt i32 %42, 100000
  %46 = icmp ugt i32 %11, -1073741824
  %47 = select i1 %45, i1 true, i1 %46, !prof !85
  br i1 %47, label %48, label %50, !prof !85

48:                                               ; preds = %44
  %49 = icmp ugt i32 %11, -268435456
  br i1 %49, label %84, label %55

50:                                               ; preds = %44, %50
  %51 = phi i32 [ %54, %50 ], [ 7, %44 ]
  %52 = shl nuw i32 1, %51
  %53 = icmp ult i32 %42, %52
  %54 = add nuw nsw i32 %51, 1
  br i1 %53, label %55, label %50, !prof !86, !llvm.loop !87

55:                                               ; preds = %50, %48
  %56 = phi i32 [ 0, %48 ], [ %52, %50 ]
  %57 = phi i32 [ 0, %48 ], [ %51, %50 ]
  %58 = icmp eq i32 %20, 0
  %59 = and i1 %58, %25
  br i1 %59, label %60, label %67, !prof !88

60:                                               ; preds = %55
  %61 = sub i32 %11, %15
  %62 = shl nsw i32 -1, %19
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = lshr i32 %64, %57
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67, !prof !89

67:                                               ; preds = %60, %55
  %68 = getelementptr inbounds %struct.line_map, ptr %4, i64 %8, i32 5
  %69 = load i8, ptr %68, align 1, !tbaa !76
  %70 = zext i8 %69 to i32
  %71 = load ptr, ptr %9, align 8, !tbaa !59
  %72 = tail call ptr @linemap_add(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %70, ptr noundef %71, i32 noundef %1)
  br label %73

73:                                               ; preds = %67, %60
  %74 = phi ptr [ %72, %67 ], [ %9, %60 ]
  %75 = getelementptr inbounds %struct.line_map, ptr %74, i64 0, i32 6
  %76 = trunc i32 %57 to i8
  store i8 %76, ptr %75, align 2
  %77 = getelementptr inbounds %struct.line_map, ptr %74, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !65
  %79 = getelementptr inbounds %struct.line_map, ptr %74, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !75
  %81 = sub i32 %1, %80
  %82 = shl i32 %81, %57
  %83 = add i32 %82, %78
  br label %84

84:                                               ; preds = %48, %73
  %85 = phi i32 [ %83, %73 ], [ undef, %48 ]
  %86 = phi i32 [ %56, %73 ], [ 0, %48 ]
  %87 = phi i1 [ true, %73 ], [ false, %48 ]
  br i1 %87, label %96, label %104, !prof !90

88:                                               ; preds = %41
  %89 = sub i32 %11, %15
  %90 = shl nsw i32 -1, %19
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = sub i32 %11, %92
  %94 = shl i32 %24, %19
  %95 = add i32 %93, %94
  br label %96

96:                                               ; preds = %84, %88
  %97 = phi i32 [ %85, %84 ], [ %95, %88 ]
  %98 = phi i32 [ %86, %84 ], [ %42, %88 ]
  store i32 %97, ptr %12, align 4, !tbaa !52
  %99 = load i32, ptr %10, align 8, !tbaa !51
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %101, label %102, !prof !84

101:                                              ; preds = %96
  store i32 %97, ptr %10, align 8, !tbaa !51
  br label %102

102:                                              ; preds = %101, %96
  %103 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  store i32 %98, ptr %103, align 8, !tbaa !53
  br label %104

104:                                              ; preds = %84, %102
  %105 = phi i32 [ %97, %102 ], [ 0, %84 ]
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define dso_local i32 @linemap_position_for_column(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !91 {
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !53
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
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = add i32 %24, %26
  %28 = add nuw nsw i32 %1, 50
  %29 = tail call i32 @linemap_line_start(ptr noundef nonnull %0, i32 noundef %27, i32 noundef %28)
  br label %30

30:                                               ; preds = %12, %2
  %31 = phi i32 [ %29, %12 ], [ %4, %2 ]
  %32 = add i32 %31, %1
  %33 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %37, label %36, !prof !94

36:                                               ; preds = %30
  store i32 %32, ptr %33, align 8, !tbaa !51
  br label %37

37:                                               ; preds = %30, %36, %8
  %38 = phi i32 [ %4, %8 ], [ %32, %36 ], [ %32, %30 ]
  ret i32 %38
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @linemap_lookup(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !95 {
  %3 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !50
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
  store i32 %39, ptr %3, align 8, !tbaa !50
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.line_map, ptr %7, i64 %40
  br label %42

42:                                               ; preds = %13, %16, %38
  %43 = phi ptr [ %41, %38 ], [ %9, %16 ], [ %9, %13 ]
  ret ptr %43
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @linemap_line_start, ptr @linemap_add, i64 392}
!36 = !{ptr @linemap_position_for_column, ptr @linemap_line_start, i64 516}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !41, i64 0}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !44, i64 20}
!47 = !{!"line_maps", !40, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !41, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 48}
!48 = !{!47, !41, i64 28}
!49 = !{!47, !44, i64 24}
!50 = !{!47, !44, i64 16}
!51 = !{!47, !44, i64 32}
!52 = !{!47, !44, i64 36}
!53 = !{!47, !44, i64 40}
!54 = !{!47, !40, i64 48}
!55 = !{!47, !40, i64 0}
!56 = !{!47, !44, i64 12}
!57 = !{!58, !44, i64 16}
!58 = !{!"line_map", !40, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !41, i64 21, !44, i64 22}
!59 = !{!58, !40, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 397}
!64 = !{!"branch_weights", i32 1, i32 396}
!65 = !{!58, !44, i64 12}
!66 = !{!"branch_weights", i32 0, i32 396}
!67 = !{!47, !44, i64 8}
!68 = !{!"branch_weights", i32 2, i32 395}
!69 = !{!"branch_weights", i32 0, i32 2}
!70 = !{!"VP", i32 0, i64 2, i64 -3776337212889161856, i64 2}
!71 = !{!"VP", i32 1, i64 2, i64 513, i64 2}
!72 = !{!41, !41, i64 0}
!73 = !{!"branch_weights", i32 1, i32 395}
!74 = !{!"branch_weights", i32 1, i32 0}
!75 = !{!58, !44, i64 8}
!76 = !{!58, !41, i64 21}
!77 = !{!"branch_weights", i32 0, i32 1}
!78 = !{!"branch_weights", i32 0, i32 1, i32 395, i32 0}
!79 = distinct !{!79, !61, !62}
!80 = !{!"function_entry_count", i64 427621}
!81 = !{!"branch_weights", i32 427621, i32 0}
!82 = !{!"branch_weights", i32 427103, i32 518}
!83 = !{!"branch_weights", i32 139, i32 426964}
!84 = !{!"branch_weights", i32 426964, i32 657}
!85 = !{!"branch_weights", i32 0, i32 657}
!86 = !{!"branch_weights", i32 657, i32 1266}
!87 = distinct !{!87, !61, !62}
!88 = !{!"branch_weights", i32 265428, i32 166221}
!89 = !{!"branch_weights", i32 265, i32 139}
!90 = !{!"branch_weights", i32 657, i32 0}
!91 = !{!"function_entry_count", i64 2862}
!92 = !{!"branch_weights", i32 0, i32 2862}
!93 = !{!"branch_weights", i32 2346, i32 516}
!94 = !{!"branch_weights", i32 0, i32 516}
!95 = !{!"function_entry_count", i64 2290308}
!96 = !{!"branch_weights", i32 18555, i32 2271753}
!97 = !{!"branch_weights", i32 107801, i32 2163952}
!98 = !{!"branch_weights", i32 2144848, i32 19104}
!99 = !{!"branch_weights", i32 37658, i32 1}
!100 = !{!"branch_weights", i32 120665, i32 161582}
!101 = !{!"branch_weights", i32 244589, i32 37658}
!102 = distinct !{!102, !61, !62}
