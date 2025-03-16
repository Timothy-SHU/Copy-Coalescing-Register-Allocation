; ModuleID = 'src/rdswitch.c'
source_filename = "src/rdswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @read_quant_tables(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #8
  %8 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = call fastcc i32 @read_text_integer(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5), !range !5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !tbaa !6
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef %1) #9
  br label %53

16:                                               ; preds = %10, %40
  %17 = phi i32 [ %41, %40 ], [ 0, %10 ]
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !6
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef %1) #9
  %22 = call i32 @fclose(ptr noundef nonnull %8)
  br label %53

23:                                               ; preds = %16
  %24 = load i64, ptr %6, align 8, !tbaa !10
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr %7, align 16, !tbaa !12
  br label %26

26:                                               ; preds = %23, %34
  %27 = phi i64 [ 1, %23 ], [ %38, %34 ]
  %28 = call fastcc i32 @read_text_integer(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5), !range !5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr @stderr, align 8, !tbaa !6
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef %1) #9
  %33 = call i32 @fclose(ptr noundef nonnull %8)
  br label %53

34:                                               ; preds = %26
  %35 = load i64, ptr %6, align 8, !tbaa !10
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %27
  store i32 %36, ptr %37, align 4, !tbaa !12
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp eq i64 %38, 64
  br i1 %39, label %40, label %26, !llvm.loop !14

40:                                               ; preds = %34
  call void @jpeg_add_quant_table(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3) #8
  %41 = add nuw nsw i32 %17, 1
  %42 = call fastcc i32 @read_text_integer(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5), !range !5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %16, !llvm.loop !16

44:                                               ; preds = %40, %10
  %45 = load i32, ptr %5, align 4, !tbaa !12
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @stderr, align 8, !tbaa !6
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.4, ptr noundef %1) #9
  %50 = call i32 @fclose(ptr noundef nonnull %8)
  br label %53

51:                                               ; preds = %44
  %52 = call i32 @fclose(ptr noundef nonnull %8)
  br label %53

53:                                               ; preds = %51, %47, %30, %19, %13
  %54 = phi i32 [ 0, %13 ], [ 0, %19 ], [ 0, %30 ], [ 0, %47 ], [ 1, %51 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @read_text_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  br label %4

4:                                                ; preds = %12, %3
  %5 = tail call i32 @getc(ptr noundef %0)
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %7
  %8 = tail call i32 @getc(ptr noundef %0)
  switch i32 %8, label %7 [
    i32 -1, label %9
    i32 10, label %9
  ]

9:                                                ; preds = %7, %7, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %7 ], [ %8, %7 ]
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %49, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @__ctype_b_loc() #10
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds i16, ptr %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !17
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 8192
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %4, !llvm.loop !19

21:                                               ; preds = %12
  %22 = and i32 %18, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = add nsw i32 %10, -48
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %43, %24
  %28 = phi i64 [ %26, %24 ], [ %47, %43 ]
  %29 = tail call i32 @getc(ptr noundef %0)
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %31
  %32 = tail call i32 @getc(ptr noundef %0)
  switch i32 %32, label %31 [
    i32 -1, label %33
    i32 10, label %33
  ]

33:                                               ; preds = %31, %31, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %31 ], [ %32, %31 ]
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %13, align 8, !tbaa !6
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !17
  %41 = and i16 %40, 2048
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = mul nsw i64 %28, 10
  %45 = add nsw i32 %34, -48
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  br label %27, !llvm.loop !20

48:                                               ; preds = %36, %33
  store i64 %28, ptr %1, align 8, !tbaa !10
  br label %49

49:                                               ; preds = %9, %21, %48
  %50 = phi i32 [ %34, %48 ], [ %10, %21 ], [ -1, %9 ]
  %51 = phi i32 [ 1, %48 ], [ 0, %21 ], [ 0, %9 ]
  store i32 %50, ptr %2, align 4, !tbaa !12
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

declare void @jpeg_add_quant_table(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @read_scan_script(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [100 x %struct.jpeg_scan_info], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %5) #8
  %6 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %101, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %1) #9
  br label %122

14:                                               ; preds = %8, %96
  %15 = phi ptr [ %97, %96 ], [ %5, %8 ]
  %16 = phi i32 [ %98, %96 ], [ 0, %8 ]
  %17 = icmp eq i32 %16, 100
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !6
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef %1) #9
  %21 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %122

22:                                               ; preds = %14
  %23 = load i64, ptr %4, align 8, !tbaa !10
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !12
  %26 = load i32, ptr %3, align 4, !tbaa !12
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %47

28:                                               ; preds = %22, %38
  %29 = phi i64 [ %42, %38 ], [ 1, %22 ]
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr @stderr, align 8, !tbaa !6
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.7, ptr noundef %1) #9
  %34 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %122

35:                                               ; preds = %28
  %36 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %92, label %38

38:                                               ; preds = %35
  %39 = load i64, ptr %4, align 8, !tbaa !10
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 1, i64 %29
  store i32 %40, ptr %41, align 4, !tbaa !12
  %42 = add nuw nsw i64 %29, 1
  %43 = load i32, ptr %3, align 4, !tbaa !12
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %28, label %45, !llvm.loop !21

45:                                               ; preds = %38
  %46 = trunc i64 %42 to i32
  br label %47

47:                                               ; preds = %45, %22
  %48 = phi i32 [ 1, %22 ], [ %46, %45 ]
  %49 = phi i32 [ %26, %22 ], [ %43, %45 ]
  store i32 %48, ptr %15, align 4, !tbaa !22
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !5
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr %3, align 4
  %55 = icmp ne i32 %54, 32
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %92, label %57

57:                                               ; preds = %51
  %58 = load i64, ptr %4, align 8, !tbaa !10
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 2
  store i32 %59, ptr %60, align 4, !tbaa !24
  %61 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !5
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr %3, align 4
  %64 = icmp ne i32 %63, 32
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %92, label %66

66:                                               ; preds = %57
  %67 = load i64, ptr %4, align 8, !tbaa !10
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 3
  store i32 %68, ptr %69, align 4, !tbaa !25
  %70 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !5
  %71 = icmp eq i32 %70, 0
  %72 = load i32, ptr %3, align 4
  %73 = icmp ne i32 %72, 32
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %92, label %75

75:                                               ; preds = %66
  %76 = load i64, ptr %4, align 8, !tbaa !10
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 4
  store i32 %77, ptr %78, align 4, !tbaa !26
  %79 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %75
  %82 = load i64, ptr %4, align 8, !tbaa !10
  %83 = trunc i64 %82 to i32
  br label %88

84:                                               ; preds = %47
  %85 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 2
  store i32 0, ptr %85, align 4, !tbaa !24
  %86 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 3
  store i32 63, ptr %86, align 4, !tbaa !25
  %87 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 4
  store i32 0, ptr %87, align 4, !tbaa !26
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i32 [ 0, %84 ], [ %83, %81 ]
  %90 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 0, i32 5
  store i32 %89, ptr %90, align 4, !tbaa !27
  %91 = load i32, ptr %3, align 4
  switch i32 %91, label %92 [
    i32 -1, label %96
    i32 59, label %96
  ]

92:                                               ; preds = %88, %75, %66, %57, %51, %35
  %93 = load ptr, ptr @stderr, align 8, !tbaa !6
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.8, ptr noundef %1) #9
  %95 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %122

96:                                               ; preds = %88, %88
  %97 = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i64 1
  %98 = add nuw nsw i32 %16, 1
  %99 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %14, !llvm.loop !28

101:                                              ; preds = %96, %8
  %102 = phi i32 [ 0, %8 ], [ %98, %96 ]
  %103 = load i32, ptr %3, align 4, !tbaa !12
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @stderr, align 8, !tbaa !6
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.4, ptr noundef %1) #9
  %108 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %122

109:                                              ; preds = %101
  %110 = icmp eq i32 %102, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !29
  %114 = load ptr, ptr %113, align 8, !tbaa !32
  %115 = zext nneg i32 %102 to i64
  %116 = mul nuw nsw i64 %115, 36
  %117 = tail call ptr %114(ptr noundef %0, i32 noundef 1, i64 noundef %116) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr nonnull align 16 %5, i64 %116, i1 false)
  %118 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  store ptr %117, ptr %118, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 %102, ptr %119, align 8, !tbaa !35
  br label %120

120:                                              ; preds = %111, %109
  %121 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %122

122:                                              ; preds = %120, %105, %92, %31, %18, %11
  %123 = phi i32 [ 0, %11 ], [ 0, %18 ], [ 0, %31 ], [ 0, %92 ], [ 0, %105 ], [ 1, %120 ]
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %123
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @read_scan_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc i32 @read_text_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %52, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4, !tbaa !12
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = tail call ptr @__ctype_b_loc() #10
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !17
  %15 = and i16 %14, 8192
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %32, label %24

17:                                               ; preds = %29
  %18 = load ptr, ptr %10, align 8, !tbaa !6
  %19 = sext i32 %30 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !17
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %32, label %24, !llvm.loop !36

24:                                               ; preds = %9, %17
  %25 = tail call i32 @getc(ptr noundef %0)
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %27
  %28 = tail call i32 @getc(ptr noundef %0)
  switch i32 %28, label %27 [
    i32 -1, label %29
    i32 10, label %29
  ]

29:                                               ; preds = %27, %27, %24
  %30 = phi i32 [ %25, %24 ], [ %28, %27 ], [ %28, %27 ]
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %17, label %32, !llvm.loop !36

32:                                               ; preds = %29, %17, %9, %6
  %33 = phi i32 [ %7, %6 ], [ %7, %9 ], [ %30, %17 ], [ %30, %29 ]
  %34 = phi i1 [ %8, %6 ], [ %8, %9 ], [ %31, %17 ], [ %31, %29 ]
  %35 = tail call ptr @__ctype_b_loc() #10
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds i16, ptr %36, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !17
  %40 = and i16 %39, 2048
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = tail call i32 @ungetc(i32 noundef %33, ptr noundef %0)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %52, label %50

45:                                               ; preds = %32
  %46 = add i32 %33, -60
  %47 = icmp ult i32 %46, -2
  %48 = and i1 %34, %47
  %49 = select i1 %48, i32 32, i32 %33
  br label %50

50:                                               ; preds = %42, %45
  %51 = phi i32 [ %49, %45 ], [ 32, %42 ]
  store i32 %51, ptr %2, align 4, !tbaa !12
  br label %52

52:                                               ; preds = %42, %3, %50
  %53 = phi i32 [ 1, %50 ], [ 0, %3 ], [ 0, %42 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @set_quant_slots(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  br label %7

7:                                                ; preds = %2, %38
  %8 = phi i64 [ 0, %2 ], [ %40, %38 ]
  %9 = phi ptr [ %1, %2 ], [ %39, %38 ]
  %10 = load i8, ptr %9, align 1, !tbaa !37
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  store i8 44, ptr %4, align 1, !tbaa !37
  %13 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %14 = icmp sgt i32 %13, 0
  %15 = load i8, ptr %4, align 1
  %16 = icmp eq i8 %15, 44
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 3) #9
  br label %42

24:                                               ; preds = %18
  %25 = load ptr, ptr %5, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 %8, i32 4
  store i32 %19, ptr %26, align 8, !tbaa !39
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %9, %24 ], [ %32, %31 ]
  %29 = load i8, ptr %28, align 1, !tbaa !37
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = icmp eq i8 %29, 44
  br i1 %33, label %38, label %27, !llvm.loop !41

34:                                               ; preds = %7
  %35 = load i32, ptr %3, align 4, !tbaa !12
  %36 = load ptr, ptr %6, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 %8, i32 4
  store i32 %35, ptr %37, align 8, !tbaa !39
  br label %38

38:                                               ; preds = %27, %31, %34
  %39 = phi ptr [ %9, %34 ], [ %32, %31 ], [ %28, %27 ]
  %40 = add nuw nsw i64 %8, 1
  %41 = icmp eq i64 %40, 10
  br i1 %41, label %42, label %7, !llvm.loop !42

42:                                               ; preds = %38, %12, %21
  %43 = phi i32 [ 0, %21 ], [ 0, %12 ], [ 1, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %43
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @set_sample_factors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  br label %9

9:                                                ; preds = %2, %52
  %10 = phi i64 [ 0, %2 ], [ %54, %52 ]
  %11 = phi ptr [ %1, %2 ], [ %53, %52 ]
  %12 = load i8, ptr %11, align 1, !tbaa !37
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %9
  store i8 44, ptr %6, align 1, !tbaa !37
  %15 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %56, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %5, align 1
  %19 = and i8 %18, -33
  %20 = icmp ne i8 %19, 88
  %21 = load i8, ptr %6, align 1
  %22 = icmp ne i8 %21, 44
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %56, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %3, align 4
  %26 = add i32 %25, -5
  %27 = icmp ult i32 %26, -4
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 %28, 1
  %30 = select i1 %27, i1 true, i1 %29
  %31 = icmp sgt i32 %28, 4
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load ptr, ptr @stderr, align 8, !tbaa !6
  %35 = call i64 @fwrite(ptr nonnull @.str.12, i64 35, i64 1, ptr %34) #9
  br label %56

36:                                               ; preds = %24
  %37 = load ptr, ptr %7, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i64 %10, i32 2
  store i32 %25, ptr %38, align 8, !tbaa !43
  %39 = load i32, ptr %4, align 4, !tbaa !12
  %40 = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i64 %10, i32 3
  store i32 %39, ptr %40, align 4, !tbaa !44
  br label %41

41:                                               ; preds = %45, %36
  %42 = phi ptr [ %11, %36 ], [ %46, %45 ]
  %43 = load i8, ptr %42, align 1, !tbaa !37
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  %47 = icmp eq i8 %43, 44
  br i1 %47, label %52, label %41, !llvm.loop !45

48:                                               ; preds = %9
  %49 = load ptr, ptr %8, align 8, !tbaa !38
  %50 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 %10, i32 2
  store i32 1, ptr %50, align 8, !tbaa !43
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 %10, i32 3
  store i32 1, ptr %51, align 4, !tbaa !44
  br label %52

52:                                               ; preds = %41, %45, %48
  %53 = phi ptr [ %11, %48 ], [ %46, %45 ], [ %42, %41 ]
  %54 = add nuw nsw i64 %10, 1
  %55 = icmp eq i64 %54, 10
  br i1 %55, label %56, label %9, !llvm.loop !46

56:                                               ; preds = %52, %17, %14, %33
  %57 = phi i32 [ 0, %33 ], [ 0, %14 ], [ 0, %17 ], [ 1, %52 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !8, i64 0}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!23, !13, i64 0}
!23 = !{!"", !13, i64 0, !8, i64 4, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!24 = !{!23, !13, i64 20}
!25 = !{!23, !13, i64 24}
!26 = !{!23, !13, i64 28}
!27 = !{!23, !13, i64 32}
!28 = distinct !{!28, !15}
!29 = !{!30, !7, i64 8}
!30 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !31, i64 56, !13, i64 64, !13, i64 68, !13, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !13, i64 232, !7, i64 240, !13, i64 248, !13, i64 252, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !8, i64 284, !18, i64 286, !18, i64 288, !13, i64 292, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !8, i64 320, !13, i64 352, !13, i64 356, !13, i64 360, !8, i64 364, !13, i64 404, !13, i64 408, !13, i64 412, !13, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!31 = !{!"double", !8, i64 0}
!32 = !{!33, !7, i64 0}
!33 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !11, i64 88}
!34 = !{!30, !7, i64 240}
!35 = !{!30, !13, i64 232}
!36 = distinct !{!36, !15}
!37 = !{!8, !8, i64 0}
!38 = !{!30, !7, i64 80}
!39 = !{!40, !13, i64 16}
!40 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !7, i64 80, !7, i64 88}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = !{!40, !13, i64 8}
!44 = !{!40, !13, i64 12}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
