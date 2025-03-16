; ModuleID = 'interface.c'
source_filename = "interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf = type { ptr, i64, i64, ptr, ptr }

@gmp = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"To less out space\0A\00", align 1
@wordpointer = external local_unnamed_addr global ptr, align 8
@bitindex = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't step back %ld!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Fatal error!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @InitMP3(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(31880) %0, i8 0, i64 31880, i1 false)
  store i32 -1, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 5, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i32 -1, ptr %3, align 4, !tbaa !13
  %4 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 10
  store i32 0, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 12
  store i32 1, ptr %5, align 8, !tbaa !15
  tail call void @make_decode_tables(i64 noundef 32767) #11
  tail call void @init_layer3(i32 noundef 32) #11
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @make_decode_tables(i64 noundef) local_unnamed_addr #2

declare void @init_layer3(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExitMP3(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void @free(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.buf, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  tail call void @free(ptr noundef %6) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !20

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @decodeMP3(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  store ptr %0, ptr @gmp, align 8, !tbaa !22
  %7 = icmp slt i32 %4, 4608
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = load ptr, ptr @stderr, align 8, !tbaa !22
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %9) #12
  br label %131

11:                                               ; preds = %6
  %12 = icmp eq ptr %1, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %11
  %14 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr @stderr, align 8, !tbaa !22
  %18 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %17) #12
  br label %131

19:                                               ; preds = %13
  %20 = sext i32 %2 to i64
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #13
  store ptr %21, ptr %14, align 8, !tbaa !17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @free(ptr noundef %14) #11
  br label %131

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.buf, ptr %14, i64 0, i32 1
  store i64 %20, ptr %25, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %1, i64 %20, i1 false)
  %26 = getelementptr inbounds %struct.buf, ptr %14, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !19
  %27 = load ptr, ptr %0, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.buf, ptr %14, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.buf, ptr %14, i64 0, i32 2
  store i64 0, ptr %29, align 8, !tbaa !26
  %30 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.buf, ptr %27, i64 0, i32 3
  %34 = select i1 %32, ptr %30, ptr %33
  store ptr %14, ptr %34, align 8, !tbaa !22
  store ptr %14, ptr %0, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !27
  %37 = add nsw i32 %36, %2
  store i32 %37, ptr %35, align 8, !tbaa !27
  br label %38

38:                                               ; preds = %24, %11
  %39 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !28
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !27
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %131, label %46

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @read_buf_byte(ptr noundef %0), !range !29
  %48 = tail call fastcc i32 @read_buf_byte(ptr noundef %0), !range !29
  %49 = shl nuw nsw i32 %47, 16
  %50 = shl nuw nsw i32 %48, 8
  %51 = or disjoint i32 %50, %49
  %52 = tail call fastcc i32 @read_buf_byte(ptr noundef %0), !range !29
  %53 = or disjoint i32 %51, %52
  %54 = shl nuw i32 %53, 8
  %55 = tail call fastcc i32 @read_buf_byte(ptr noundef %0), !range !29
  %56 = or disjoint i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 9
  store i64 %57, ptr %58, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 5
  %60 = tail call i32 @decode_header(ptr noundef nonnull %59, i64 noundef %57) #11
  %61 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 5, i32 17
  %62 = load i32, ptr %61, align 4, !tbaa !31
  store i32 %62, ptr %39, align 4, !tbaa !28
  br label %63

63:                                               ; preds = %46, %38
  %64 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 5
  %65 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 5, i32 17
  %66 = load i32, ptr %65, align 4, !tbaa !31
  %67 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !27
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %131, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 10
  %72 = load i32, ptr %71, align 8, !tbaa !14
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 6, i64 %73, i64 512
  store ptr %74, ptr @wordpointer, align 8, !tbaa !22
  %75 = and i32 %72, 1
  %76 = xor i32 %75, 1
  store i32 %76, ptr %71, align 8, !tbaa !14
  store i32 0, ptr @bitindex, align 4, !tbaa !32
  %77 = load i32, ptr %39, align 4, !tbaa !28
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 1
  br label %81

81:                                               ; preds = %79, %118
  %82 = phi i32 [ %77, %79 ], [ %119, %118 ]
  %83 = phi i32 [ 0, %79 ], [ %99, %118 ]
  %84 = load ptr, ptr %80, align 8, !tbaa !16
  %85 = getelementptr inbounds %struct.buf, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !23
  %87 = getelementptr inbounds %struct.buf, ptr %84, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !26
  %89 = sub nsw i64 %86, %88
  %90 = trunc i64 %89 to i32
  %91 = sub nsw i32 %82, %83
  %92 = tail call i32 @llvm.smin.i32(i32 %91, i32 %90)
  %93 = load ptr, ptr @wordpointer, align 8, !tbaa !22
  %94 = sext i32 %83 to i64
  %95 = getelementptr inbounds i8, ptr %93, i64 %94
  %96 = load ptr, ptr %84, align 8, !tbaa !17
  %97 = getelementptr inbounds i8, ptr %96, i64 %88
  %98 = sext i32 %92 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %95, ptr align 1 %97, i64 %98, i1 false)
  %99 = add nsw i32 %92, %83
  %100 = load ptr, ptr %80, align 8, !tbaa !16
  %101 = getelementptr inbounds %struct.buf, ptr %100, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !26
  %103 = add nsw i64 %102, %98
  store i64 %103, ptr %101, align 8, !tbaa !26
  %104 = load i32, ptr %67, align 8, !tbaa !27
  %105 = sub nsw i32 %104, %92
  store i32 %105, ptr %67, align 8, !tbaa !27
  %106 = getelementptr inbounds %struct.buf, ptr %100, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !23
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %81
  %110 = getelementptr inbounds %struct.buf, ptr %100, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !19
  store ptr %111, ptr %80, align 8, !tbaa !16
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.buf, ptr %111, i64 0, i32 4
  store ptr null, ptr %114, align 8, !tbaa !25
  br label %116

115:                                              ; preds = %109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %116

116:                                              ; preds = %113, %115
  %117 = load ptr, ptr %100, align 8, !tbaa !17
  tail call void @free(ptr noundef %117) #11
  tail call void @free(ptr noundef %100) #11
  br label %118

118:                                              ; preds = %116, %81
  %119 = load i32, ptr %39, align 4, !tbaa !28
  %120 = icmp slt i32 %99, %119
  br i1 %120, label %81, label %121, !llvm.loop !33

121:                                              ; preds = %118, %70
  store i32 0, ptr %5, align 4, !tbaa !32
  %122 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 5, i32 7
  %123 = load i32, ptr %122, align 4, !tbaa !34
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = tail call i32 @getbits(i32 noundef 16) #11
  br label %127

127:                                              ; preds = %125, %121
  %128 = tail call i32 @do_layer3(ptr noundef nonnull %64, ptr noundef %3, ptr noundef nonnull %5) #11
  %129 = load i32, ptr %39, align 4, !tbaa !28
  %130 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 4
  store i32 %129, ptr %130, align 8, !tbaa !5
  store i32 0, ptr %39, align 4, !tbaa !28
  br label %131

131:                                              ; preds = %23, %16, %63, %42, %127, %8
  %132 = phi i32 [ -1, %8 ], [ 0, %127 ], [ 1, %42 ], [ 1, %63 ], [ -1, %16 ], [ -1, %23 ]
  ret i32 %132
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @decode_header(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @getbits(i32 noundef) local_unnamed_addr #2

declare i32 @do_layer3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @set_pointer(i64 noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @gmp, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.mpstr, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp slt i32 %4, 0
  %6 = icmp sgt i64 %0, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !22
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, i64 noundef %0) #12
  br label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mpstr, ptr %2, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !14
  %14 = load ptr, ptr @wordpointer, align 8, !tbaa !22
  %15 = sub i64 0, %0
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  store ptr %16, ptr @wordpointer, align 8, !tbaa !22
  %17 = icmp eq i64 %0, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = sext i32 %13 to i64
  %20 = getelementptr inbounds %struct.mpstr, ptr %2, i64 0, i32 6, i64 %19, i64 512
  %21 = sext i32 %4 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = getelementptr inbounds i8, ptr %22, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull align 1 %23, i64 %0, i1 false)
  br label %24

24:                                               ; preds = %18, %11
  store i32 0, ptr @bitindex, align 4, !tbaa !32
  br label %25

25:                                               ; preds = %24, %8
  %26 = phi i32 [ -1, %8 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_buf_byte(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  br label %4

4:                                                ; preds = %21, %1
  %5 = phi ptr [ %3, %1 ], [ %23, %21 ]
  %6 = getelementptr inbounds %struct.buf, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !26
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 32
  %10 = load ptr, ptr %2, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.buf, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !23
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.buf, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  store ptr %16, ptr %2, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.buf, ptr %16, i64 0, i32 4
  store ptr null, ptr %19, align 8, !tbaa !25
  br label %21

20:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %18, %20
  %22 = load ptr, ptr %10, align 8, !tbaa !17
  tail call void @free(ptr noundef %22) #11
  tail call void @free(ptr noundef %10) #11
  %23 = load ptr, ptr %2, align 8, !tbaa !16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %4, !llvm.loop !35

25:                                               ; preds = %21
  %26 = load ptr, ptr @stderr, align 8, !tbaa !22
  %27 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 13, i64 1, ptr %26) #12
  tail call void @exit(i32 noundef 1) #14
  unreachable

28:                                               ; preds = %4
  %29 = load ptr, ptr %10, align 8, !tbaa !17
  %30 = getelementptr inbounds i8, ptr %29, i64 %9
  %31 = load i8, ptr %30, align 1, !tbaa !36
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !27
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr %33, align 8, !tbaa !27
  %36 = getelementptr inbounds %struct.buf, ptr %10, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !26
  %38 = add nsw i64 %37, 1
  store i64 %38, ptr %36, align 8, !tbaa !26
  ret i32 %32
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"mpstr", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 28, !8, i64 100, !8, i64 4712, !8, i64 23144, !12, i64 23152, !10, i64 23160, !8, i64 23168, !10, i64 31872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"frame", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !10, i64 36}
!14 = !{!6, !10, i64 23160}
!15 = !{!6, !10, i64 31872}
!16 = !{!6, !7, i64 8}
!17 = !{!18, !7, i64 0}
!18 = !{!"buf", !7, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !7, i64 32}
!19 = !{!18, !7, i64 24}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!7, !7, i64 0}
!23 = !{!18, !12, i64 8}
!24 = !{!6, !7, i64 0}
!25 = !{!18, !7, i64 32}
!26 = !{!18, !12, i64 16}
!27 = !{!6, !10, i64 16}
!28 = !{!6, !10, i64 20}
!29 = !{i32 0, i32 256}
!30 = !{!6, !12, i64 23152}
!31 = !{!6, !10, i64 96}
!32 = !{!10, !10, i64 0}
!33 = distinct !{!33, !21}
!34 = !{!6, !10, i64 56}
!35 = distinct !{!35, !21}
!36 = !{!8, !8, i64 0}
