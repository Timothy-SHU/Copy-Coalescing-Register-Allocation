; ModuleID = 'blender/source/blender/imbuf/intern/targa.c'
source_filename = "blender/source/blender/imbuf/intern/targa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.TARGA = type { i8, i8, i8, i16, i16, i8, i16, i16, i16, i16, i8, i8 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"targa cmap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"decodetarga: incomplete file, %.1f%% missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"decodetarga: count would overwrite %d pixels\0A\00", align 1
@str = private unnamed_addr constant [49 x i8] c"decodetarga: incomplete file, all pixels written\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @imb_savetarga(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 8, !tbaa !34
  %7 = add i8 %6, 7
  %8 = and i8 %7, -8
  %9 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 16
  store i8 %8, ptr %9, align 16, !tbaa !43
  %10 = icmp ugt i8 %6, 8
  %11 = select i1 %10, i8 10, i8 11
  %12 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 2
  store i8 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 268435457
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = and i8 %11, 3
  store i8 %17, ptr %12, align 2, !tbaa !43
  br label %18

18:                                               ; preds = %16, %3
  %19 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 8
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  store i32 0, ptr %19, align 8
  %21 = load i32, ptr %20, align 8, !tbaa !45
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 12
  store i8 %22, ptr %23, align 4, !tbaa !43
  %24 = lshr i32 %21, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 13
  store i8 %25, ptr %26, align 1, !tbaa !43
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 14
  store i8 %29, ptr %30, align 2, !tbaa !43
  %31 = lshr i32 %28, 8
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 15
  store i8 %32, ptr %33, align 1, !tbaa !43
  %34 = icmp eq i8 %6, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 17
  store i8 8, ptr %36, align 1, !tbaa !43
  br label %37

37:                                               ; preds = %35, %18
  %38 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %67, label %40

40:                                               ; preds = %37
  %41 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 18, ptr noundef nonnull %38) #11
  %42 = icmp eq i64 %41, 18
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @fclose(ptr noundef nonnull %38) #11
  br label %67

45:                                               ; preds = %40
  %46 = load i32, ptr %13, align 8, !tbaa !44
  %47 = icmp eq i32 %46, 268435457
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call fastcc zeroext i8 @dumptarga(ptr noundef nonnull %0, ptr noundef nonnull %38) #11, !range !47
  br label %63

50:                                               ; preds = %45
  %51 = load i8, ptr %5, align 8, !tbaa !34
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %52, 7
  %54 = lshr i32 %53, 3
  switch i32 %54, label %63 [
    i32 1, label %55
    i32 2, label %57
    i32 3, label %59
    i32 4, label %61
  ]

55:                                               ; preds = %50
  %56 = tail call fastcc zeroext i8 @makebody_tga(ptr noundef nonnull %0, ptr noundef nonnull %38, ptr noundef nonnull @tga_out1) #11, !range !47
  br label %63

57:                                               ; preds = %50
  %58 = tail call fastcc zeroext i8 @makebody_tga(ptr noundef nonnull %0, ptr noundef nonnull %38, ptr noundef nonnull @tga_out2) #11, !range !47
  br label %63

59:                                               ; preds = %50
  %60 = tail call fastcc zeroext i8 @makebody_tga(ptr noundef nonnull %0, ptr noundef nonnull %38, ptr noundef nonnull @tga_out3) #11, !range !47
  br label %63

61:                                               ; preds = %50
  %62 = tail call fastcc zeroext i8 @makebody_tga(ptr noundef nonnull %0, ptr noundef nonnull %38, ptr noundef nonnull @tga_out4) #11, !range !47
  br label %63

63:                                               ; preds = %55, %57, %59, %61, %50, %48
  %64 = phi i8 [ %49, %48 ], [ 0, %50 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %56, %55 ]
  %65 = tail call i32 @fclose(ptr noundef nonnull %38) #11
  %66 = zext nneg i8 %64 to i32
  br label %67

67:                                               ; preds = %37, %63, %43
  %68 = phi i32 [ 0, %43 ], [ %66, %63 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret i32 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @dumptarga(ptr noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !48 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %99, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %99, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = mul nsw i32 %12, %10
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 8, !tbaa !34
  %16 = icmp ult i8 %15, 9
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = icmp sgt i32 %13, 0
  br i1 %18, label %19, label %99

19:                                               ; preds = %17, %26
  %20 = phi ptr [ %28, %26 ], [ %6, %17 ]
  %21 = phi i32 [ %27, %26 ], [ %13, %17 ]
  %22 = load i8, ptr %20, align 1, !tbaa !43
  %23 = zext i8 %22 to i32
  %24 = tail call i32 @putc(i32 noundef %23, ptr noundef %1) #11
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %99, label %26

26:                                               ; preds = %19
  %27 = add nsw i32 %21, -1
  %28 = getelementptr inbounds i8, ptr %20, i64 4
  %29 = icmp sgt i32 %21, 1
  br i1 %29, label %19, label %99, !llvm.loop !50

30:                                               ; preds = %8
  %31 = icmp ult i8 %15, 17
  br i1 %31, label %32, label %49

32:                                               ; preds = %30
  %33 = icmp sgt i32 %13, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %32, %45
  %35 = phi ptr [ %47, %45 ], [ %6, %32 ]
  %36 = phi i32 [ %46, %45 ], [ %13, %32 ]
  %37 = load i8, ptr %35, align 1, !tbaa !43
  %38 = zext i8 %37 to i32
  %39 = tail call i32 @putc(i32 noundef %38, ptr noundef %1) #11
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !43
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @putc(i32 noundef %42, ptr noundef %1) #11
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %99, label %45

45:                                               ; preds = %34
  %46 = add nsw i32 %36, -1
  %47 = getelementptr inbounds i8, ptr %35, i64 4
  %48 = icmp sgt i32 %36, 1
  br i1 %48, label %34, label %99, !llvm.loop !52

49:                                               ; preds = %30
  %50 = icmp ult i8 %15, 25
  br i1 %50, label %51, label %72

51:                                               ; preds = %49
  %52 = icmp sgt i32 %13, 0
  br i1 %52, label %53, label %99

53:                                               ; preds = %51, %68
  %54 = phi ptr [ %70, %68 ], [ %6, %51 ]
  %55 = phi i32 [ %69, %68 ], [ %13, %51 ]
  %56 = getelementptr inbounds i8, ptr %54, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !43
  %58 = zext i8 %57 to i32
  %59 = tail call i32 @putc(i32 noundef %58, ptr noundef %1) #11
  %60 = getelementptr inbounds i8, ptr %54, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !43
  %62 = zext i8 %61 to i32
  %63 = tail call i32 @putc(i32 noundef %62, ptr noundef %1) #11
  %64 = load i8, ptr %54, align 1, !tbaa !43
  %65 = zext i8 %64 to i32
  %66 = tail call i32 @putc(i32 noundef %65, ptr noundef %1) #11
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %99, label %68

68:                                               ; preds = %53
  %69 = add nsw i32 %55, -1
  %70 = getelementptr inbounds i8, ptr %54, i64 4
  %71 = icmp sgt i32 %55, 1
  br i1 %71, label %53, label %99, !llvm.loop !53

72:                                               ; preds = %49
  %73 = icmp ult i8 %15, 33
  br i1 %73, label %74, label %99

74:                                               ; preds = %72
  %75 = icmp sgt i32 %13, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %74, %95
  %77 = phi ptr [ %97, %95 ], [ %6, %74 ]
  %78 = phi i32 [ %96, %95 ], [ %13, %74 ]
  %79 = getelementptr inbounds i8, ptr %77, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !43
  %81 = zext i8 %80 to i32
  %82 = tail call i32 @putc(i32 noundef %81, ptr noundef %1) #11
  %83 = getelementptr inbounds i8, ptr %77, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !43
  %85 = zext i8 %84 to i32
  %86 = tail call i32 @putc(i32 noundef %85, ptr noundef %1) #11
  %87 = load i8, ptr %77, align 1, !tbaa !43
  %88 = zext i8 %87 to i32
  %89 = tail call i32 @putc(i32 noundef %88, ptr noundef %1) #11
  %90 = getelementptr inbounds i8, ptr %77, i64 3
  %91 = load i8, ptr %90, align 1, !tbaa !43
  %92 = zext i8 %91 to i32
  %93 = tail call i32 @putc(i32 noundef %92, ptr noundef %1) #11
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %99, label %95

95:                                               ; preds = %76
  %96 = add nsw i32 %78, -1
  %97 = getelementptr inbounds i8, ptr %77, i64 4
  %98 = icmp sgt i32 %78, 1
  br i1 %98, label %76, label %99, !llvm.loop !54

99:                                               ; preds = %76, %95, %53, %68, %34, %45, %19, %26, %74, %51, %32, %17, %72, %4, %2
  %100 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 0, %72 ], [ 1, %17 ], [ 1, %32 ], [ 1, %51 ], [ 1, %74 ], [ 0, %19 ], [ 1, %26 ], [ 0, %34 ], [ 1, %45 ], [ 0, %53 ], [ 1, %68 ], [ 0, %76 ], [ 1, %95 ]
  ret i8 %100
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @makebody_tga(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !55 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %153

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  br label %10

10:                                               ; preds = %7, %149
  %11 = phi i32 [ %5, %7 ], [ %150, %149 ]
  %12 = phi i32 [ 0, %7 ], [ %151, %149 ]
  %13 = load i32, ptr %8, align 8, !tbaa !45
  %14 = freeze i32 %13
  %15 = add i32 %14, -1
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %149

17:                                               ; preds = %10
  %18 = load ptr, ptr %9, align 8, !tbaa !49
  %19 = mul nsw i32 %14, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = getelementptr inbounds i32, ptr %21, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !56
  %24 = load i32, ptr %21, align 4, !tbaa !56
  %25 = xor i32 %23, %24
  %26 = getelementptr inbounds i32, ptr %21, i64 2
  br label %27

27:                                               ; preds = %17, %139
  %28 = phi ptr [ %145, %139 ], [ %21, %17 ]
  %29 = phi ptr [ %144, %139 ], [ %26, %17 ]
  %30 = phi i32 [ %143, %139 ], [ %15, %17 ]
  %31 = phi i32 [ %142, %139 ], [ %25, %17 ]
  %32 = phi i32 [ %141, %139 ], [ %23, %17 ]
  %33 = phi i32 [ %140, %139 ], [ %24, %17 ]
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = add nsw i32 %30, -1
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 2
  %39 = getelementptr i8, ptr %29, i64 %38
  br label %96

40:                                               ; preds = %27, %51
  %41 = phi i32 [ %45, %51 ], [ %32, %27 ]
  %42 = phi i32 [ %52, %51 ], [ %30, %27 ]
  %43 = phi ptr [ %44, %51 ], [ %29, %27 ]
  %44 = getelementptr inbounds i32, ptr %43, i64 1
  %45 = load i32, ptr %43, align 4, !tbaa !56
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds i32, ptr %43, i64 -2
  %49 = load i32, ptr %48, align 4, !tbaa !56
  %50 = icmp eq i32 %41, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %40, %47
  %52 = add i32 %42, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %40, !llvm.loop !57

54:                                               ; preds = %51
  %55 = ptrtoint ptr %44 to i64
  %56 = ptrtoint ptr %28 to i64
  %57 = sub i64 %55, %56
  %58 = lshr exact i64 %57, 2
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 %59, -1
  br label %71

61:                                               ; preds = %47
  %62 = add i32 %42, -1
  %63 = ptrtoint ptr %44 to i64
  %64 = ptrtoint ptr %28 to i64
  %65 = sub i64 %63, %64
  %66 = lshr exact i64 %65, 2
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %62, 0
  %69 = select i1 %68, i32 -1, i32 -3
  %70 = add nsw i32 %69, %67
  br label %71

71:                                               ; preds = %61, %54
  %72 = phi i32 [ %45, %54 ], [ %41, %61 ]
  %73 = phi i32 [ 0, %54 ], [ %62, %61 ]
  %74 = phi i32 [ %60, %54 ], [ %70, %61 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %139, label %76

76:                                               ; preds = %71, %94
  %77 = phi ptr [ %91, %94 ], [ %28, %71 ]
  %78 = phi i32 [ %80, %94 ], [ %74, %71 ]
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 128)
  %80 = sub nsw i32 %78, %79
  %81 = add nsw i32 %79, -1
  %82 = tail call i32 @fputc(i32 noundef %81, ptr noundef %1) #11
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %153, label %84

84:                                               ; preds = %76, %90
  %85 = phi i32 [ %92, %90 ], [ %79, %76 ]
  %86 = phi ptr [ %91, %90 ], [ %77, %76 ]
  %87 = load i32, ptr %86, align 4, !tbaa !56
  %88 = tail call i32 %2(i32 noundef %87, ptr noundef %1) #10, !callees !58
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %153, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds i32, ptr %86, i64 1
  %92 = add nsw i32 %85, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %84, !llvm.loop !59

94:                                               ; preds = %90
  %95 = icmp eq i32 %80, 0
  br i1 %95, label %139, label %76, !llvm.loop !60

96:                                               ; preds = %35, %101
  %97 = phi i32 [ %103, %101 ], [ %30, %35 ]
  %98 = phi ptr [ %102, %101 ], [ %29, %35 ]
  %99 = load i32, ptr %98, align 4, !tbaa !56
  %100 = icmp eq i32 %99, %32
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = getelementptr inbounds i32, ptr %98, i64 1
  %103 = add i32 %97, -1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %96, !llvm.loop !61

105:                                              ; preds = %101, %96
  %106 = phi ptr [ %39, %101 ], [ %98, %96 ]
  %107 = phi i32 [ %32, %101 ], [ %99, %96 ]
  %108 = phi i32 [ 0, %101 ], [ %97, %96 ]
  %109 = ptrtoint ptr %106 to i64
  %110 = ptrtoint ptr %28 to i64
  %111 = sub i64 %109, %110
  %112 = lshr exact i64 %111, 2
  %113 = trunc i64 %112 to i32
  %114 = add i32 %108, -1
  %115 = getelementptr inbounds i32, ptr %106, i64 1
  br label %116

116:                                              ; preds = %135, %105
  %117 = phi i32 [ %113, %105 ], [ %136, %135 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %116
  %120 = icmp sgt i32 %117, 128
  br i1 %120, label %121, label %126

121:                                              ; preds = %119
  %122 = tail call i32 @fputc(i32 noundef 255, ptr noundef %1) #11
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %153, label %124

124:                                              ; preds = %121
  %125 = add nsw i32 %117, -128
  br label %135

126:                                              ; preds = %119
  %127 = icmp eq i32 %117, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = tail call i32 @fputc(i32 noundef 0, ptr noundef %1) #11
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %153, label %135

131:                                              ; preds = %126
  %132 = add nsw i32 %117, 127
  %133 = tail call i32 @fputc(i32 noundef %132, ptr noundef %1) #11
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %153, label %135

135:                                              ; preds = %128, %131, %124
  %136 = phi i32 [ %125, %124 ], [ 0, %131 ], [ 0, %128 ]
  %137 = tail call i32 %2(i32 noundef %33, ptr noundef %1) #10, !callees !58
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %153, label %116, !llvm.loop !62

139:                                              ; preds = %94, %116, %71
  %140 = phi i32 [ %72, %71 ], [ %33, %116 ], [ %72, %94 ]
  %141 = phi i32 [ %72, %71 ], [ %107, %116 ], [ %72, %94 ]
  %142 = phi i32 [ 0, %71 ], [ 1, %116 ], [ 0, %94 ]
  %143 = phi i32 [ %73, %71 ], [ %114, %116 ], [ %73, %94 ]
  %144 = phi ptr [ %44, %71 ], [ %115, %116 ], [ %44, %94 ]
  %145 = phi ptr [ %28, %71 ], [ %106, %116 ], [ %91, %94 ]
  %146 = icmp sgt i32 %143, 0
  br i1 %146, label %27, label %147, !llvm.loop !63

147:                                              ; preds = %139
  %148 = load i32, ptr %4, align 4, !tbaa !46
  br label %149

149:                                              ; preds = %147, %10
  %150 = phi i32 [ %148, %147 ], [ %11, %10 ]
  %151 = add nuw nsw i32 %12, 1
  %152 = icmp slt i32 %151, %150
  br i1 %152, label %10, label %153, !llvm.loop !64

153:                                              ; preds = %149, %76, %135, %131, %128, %121, %84, %3
  %154 = phi i8 [ 1, %3 ], [ 0, %84 ], [ 0, %121 ], [ 0, %128 ], [ 0, %131 ], [ 0, %135 ], [ 0, %76 ], [ 1, %149 ]
  ret i8 %154
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @tga_out1(i32 noundef %0, ptr nocapture noundef %1) #5 !PGOFuncName !65 {
  %3 = and i32 %0, 255
  %4 = tail call i32 @putc(i32 noundef %3, ptr noundef %1) #11
  %5 = icmp eq i32 %4, -1
  %6 = sext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @tga_out2(i32 noundef %0, ptr nocapture noundef %1) #5 !PGOFuncName !66 {
  %3 = and i32 %0, 255
  %4 = tail call i32 @putc(i32 noundef %3, ptr noundef %1) #11
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = lshr i32 %0, 8
  %8 = and i32 %7, 255
  %9 = tail call i32 @putc(i32 noundef %8, ptr noundef %1) #11
  %10 = icmp eq i32 %9, -1
  %11 = sext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ -1, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @tga_out3(i32 noundef %0, ptr nocapture noundef %1) #5 !PGOFuncName !67 {
  %3 = lshr i32 %0, 16
  %4 = and i32 %3, 255
  %5 = tail call i32 @putc(i32 noundef %4, ptr noundef %1) #11
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = lshr i32 %0, 8
  %9 = and i32 %8, 255
  %10 = tail call i32 @putc(i32 noundef %9, ptr noundef %1) #11
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = and i32 %0, 255
  %14 = tail call i32 @putc(i32 noundef %13, ptr noundef %1) #11
  %15 = icmp eq i32 %14, -1
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %7, %2
  %18 = phi i32 [ -1, %2 ], [ -1, %7 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @tga_out4(i32 noundef %0, ptr nocapture noundef %1) #5 !PGOFuncName !68 {
  %3 = lshr i32 %0, 16
  %4 = lshr i32 %0, 24
  %5 = and i32 %3, 255
  %6 = tail call i32 @putc(i32 noundef %5, ptr noundef %1) #11
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = lshr i32 %0, 8
  %10 = and i32 %9, 255
  %11 = tail call i32 @putc(i32 noundef %10, ptr noundef %1) #11
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = and i32 %0, 255
  %15 = tail call i32 @putc(i32 noundef %14, ptr noundef %1) #11
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @putc(i32 noundef %4, ptr noundef %1) #11
  %19 = icmp eq i32 %18, -1
  %20 = sext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %13, %8, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %8 ], [ -1, %13 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @imb_is_a_targa(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.TARGA, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  %3 = call fastcc i32 @checktarga(ptr noundef nonnull %2, ptr noundef %0) #11, !range !69
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @checktarga(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !70 {
  %3 = load i8, ptr %1, align 1, !tbaa !43
  store i8 %3, ptr %0, align 2, !tbaa !71
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 1, !tbaa !74
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 2
  store i8 %8, ptr %9, align 2, !tbaa !75
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 3
  store i16 %11, ptr %12, align 2, !tbaa !76
  %13 = getelementptr inbounds i8, ptr %1, i64 5
  %14 = getelementptr inbounds i8, ptr %1, i64 6
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = load i8, ptr %13, align 1, !tbaa !43
  %19 = zext i8 %18 to i16
  %20 = or disjoint i16 %17, %19
  %21 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 4
  store i16 %20, ptr %21, align 2, !tbaa !77
  %22 = getelementptr inbounds i8, ptr %1, i64 7
  %23 = load i8, ptr %22, align 1, !tbaa !43
  %24 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 5
  store i8 %23, ptr %24, align 2, !tbaa !78
  %25 = getelementptr inbounds i8, ptr %1, i64 8
  %26 = load i16, ptr %25, align 1
  %27 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 6
  store i16 %26, ptr %27, align 2, !tbaa !79
  %28 = getelementptr inbounds i8, ptr %1, i64 10
  %29 = load i16, ptr %28, align 1
  %30 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 7
  store i16 %29, ptr %30, align 2, !tbaa !80
  %31 = getelementptr inbounds i8, ptr %1, i64 12
  %32 = getelementptr inbounds i8, ptr %1, i64 13
  %33 = load i8, ptr %32, align 1, !tbaa !43
  %34 = zext i8 %33 to i16
  %35 = shl nuw i16 %34, 8
  %36 = load i8, ptr %31, align 1, !tbaa !43
  %37 = zext i8 %36 to i16
  %38 = or disjoint i16 %35, %37
  %39 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 8
  store i16 %38, ptr %39, align 2, !tbaa !81
  %40 = getelementptr inbounds i8, ptr %1, i64 14
  %41 = getelementptr inbounds i8, ptr %1, i64 15
  %42 = load i8, ptr %41, align 1, !tbaa !43
  %43 = zext i8 %42 to i16
  %44 = shl nuw i16 %43, 8
  %45 = load i8, ptr %40, align 1, !tbaa !43
  %46 = zext i8 %45 to i16
  %47 = or disjoint i16 %44, %46
  %48 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 9
  store i16 %47, ptr %48, align 2, !tbaa !82
  %49 = getelementptr inbounds i8, ptr %1, i64 16
  %50 = load i8, ptr %49, align 1, !tbaa !43
  %51 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 10
  store i8 %50, ptr %51, align 2, !tbaa !83
  %52 = getelementptr inbounds i8, ptr %1, i64 17
  %53 = load i8, ptr %52, align 1, !tbaa !43
  %54 = getelementptr inbounds %struct.TARGA, ptr %0, i64 0, i32 11
  store i8 %53, ptr %54, align 1, !tbaa !84
  %55 = icmp ugt i8 %5, 1
  br i1 %55, label %70, label %56

56:                                               ; preds = %2
  switch i8 %8, label %70 [
    i8 1, label %57
    i8 2, label %57
    i8 3, label %57
    i8 9, label %57
    i8 10, label %57
    i8 11, label %57
  ]

57:                                               ; preds = %56, %56, %56, %56, %56, %56
  %58 = icmp ne i16 %20, 0
  %59 = icmp ugt i8 %23, 32
  %60 = select i1 %58, i1 %59, i1 false
  %61 = icmp slt i16 %38, 1
  %62 = select i1 %60, i1 true, i1 %61
  %63 = icmp slt i16 %47, 1
  %64 = select i1 %62, i1 true, i1 %63
  %65 = icmp ugt i8 %50, 32
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = icmp ne i8 %50, 0
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %57, %67, %56, %2
  %71 = phi i32 [ 0, %2 ], [ 0, %56 ], [ %69, %67 ], [ 0, %57 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @imb_loadtarga(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.TARGA, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %6 = call fastcc i32 @checktarga(ptr noundef nonnull %5, ptr noundef %0) #11, !range !69
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %268, label %8

8:                                                ; preds = %4
  tail call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #10
  %9 = and i32 %2, 2
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !81
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 9
  %15 = load i16, ptr %14, align 2, !tbaa !82
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 10
  %18 = load i8, ptr %17, align 2, !tbaa !83
  br i1 %10, label %21, label %19

19:                                               ; preds = %8
  %20 = tail call ptr @IMB_allocImBuf(i32 noundef %13, i32 noundef %16, i8 noundef zeroext %18, i32 noundef 0) #10
  br label %25

21:                                               ; preds = %8
  %22 = add i8 %18, 7
  %23 = and i8 %22, -8
  %24 = tail call ptr @IMB_allocImBuf(i32 noundef %13, i32 noundef %16, i8 noundef zeroext %23, i32 noundef 1) #10
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi ptr [ %20, %19 ], [ %24, %21 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %268, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 26
  store i32 268435456, ptr %29, align 8, !tbaa !44
  %30 = getelementptr inbounds i8, ptr %0, i64 18
  %31 = load i8, ptr %5, align 2, !tbaa !71
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !77
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %114, label %37

37:                                               ; preds = %28
  %38 = sext i16 %35 to i32
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !85
  %40 = zext i32 %38 to i64
  %41 = shl nuw nsw i64 %40, 2
  %42 = tail call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.1) #10
  %43 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 5
  %44 = load i8, ptr %43, align 2, !tbaa !78
  %45 = lshr i8 %44, 3
  br label %46

46:                                               ; preds = %37, %77
  %47 = phi i64 [ 0, %37 ], [ %94, %77 ]
  %48 = phi ptr [ %33, %37 ], [ %82, %77 ]
  %49 = phi i8 [ -1, %37 ], [ %81, %77 ]
  %50 = phi i8 [ 0, %37 ], [ %80, %77 ]
  %51 = phi i8 [ 0, %37 ], [ %79, %77 ]
  %52 = phi i8 [ undef, %37 ], [ %78, %77 ]
  switch i8 %45, label %77 [
    i8 4, label %53
    i8 3, label %62
    i8 2, label %69
    i8 1, label %74
  ]

53:                                               ; preds = %46
  %54 = getelementptr inbounds i8, ptr %48, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !43
  %56 = load i8, ptr %48, align 1, !tbaa !43
  %57 = getelementptr inbounds i8, ptr %48, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !43
  %59 = getelementptr inbounds i8, ptr %48, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !43
  %61 = getelementptr inbounds i8, ptr %48, i64 4
  br label %77

62:                                               ; preds = %46
  %63 = load i8, ptr %48, align 1, !tbaa !43
  %64 = getelementptr inbounds i8, ptr %48, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !43
  %66 = getelementptr inbounds i8, ptr %48, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !43
  %68 = getelementptr inbounds i8, ptr %48, i64 3
  br label %77

69:                                               ; preds = %46
  %70 = getelementptr inbounds i8, ptr %48, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !43
  %72 = load i8, ptr %48, align 1, !tbaa !43
  %73 = getelementptr inbounds i8, ptr %48, i64 2
  br label %77

74:                                               ; preds = %46
  %75 = getelementptr inbounds i8, ptr %48, i64 1
  %76 = load i8, ptr %48, align 1, !tbaa !43
  br label %77

77:                                               ; preds = %46, %74, %69, %62, %53
  %78 = phi i8 [ %52, %46 ], [ 0, %74 ], [ %52, %69 ], [ %67, %62 ], [ %60, %53 ]
  %79 = phi i8 [ %51, %46 ], [ 0, %74 ], [ %51, %69 ], [ %65, %62 ], [ %58, %53 ]
  %80 = phi i8 [ %50, %46 ], [ 0, %74 ], [ %71, %69 ], [ %63, %62 ], [ %56, %53 ]
  %81 = phi i8 [ %49, %46 ], [ %76, %74 ], [ %72, %69 ], [ %49, %62 ], [ %55, %53 ]
  %82 = phi ptr [ %48, %46 ], [ %75, %74 ], [ %73, %69 ], [ %68, %62 ], [ %61, %53 ]
  %83 = zext i8 %78 to i32
  %84 = shl nuw i32 %83, 24
  %85 = zext i8 %79 to i32
  %86 = shl nuw nsw i32 %85, 16
  %87 = or disjoint i32 %86, %84
  %88 = zext i8 %80 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = or disjoint i32 %87, %89
  %91 = zext i8 %81 to i32
  %92 = or disjoint i32 %90, %91
  %93 = getelementptr inbounds i32, ptr %42, i64 %47
  store i32 %92, ptr %93, align 4, !tbaa !56
  %94 = add nuw nsw i64 %47, 1
  %95 = icmp eq i64 %94, %40
  br i1 %95, label %96, label %46, !llvm.loop !86

96:                                               ; preds = %77
  %97 = icmp sgt i16 %35, 1
  br i1 %97, label %98, label %106

98:                                               ; preds = %96
  %99 = add nsw i32 %38, -1
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i8 [ %103, %100 ], [ 0, %98 ]
  %102 = phi i32 [ %104, %100 ], [ %99, %98 ]
  %103 = add nuw nsw i8 %101, 1
  %104 = lshr i32 %102, 1
  %105 = icmp ult i32 %102, 2
  br i1 %105, label %106, label %100, !llvm.loop !87

106:                                              ; preds = %100, %96
  %107 = phi i8 [ 0, %96 ], [ %103, %100 ]
  %108 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 4
  store i8 %107, ptr %108, align 8, !tbaa !34
  %109 = icmp eq i8 %44, 32
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %42, align 4, !tbaa !56
  %112 = and i32 %111, -256
  store i32 %112, ptr %42, align 4, !tbaa !56
  br label %113

113:                                              ; preds = %106, %110
  br i1 %10, label %122, label %118

114:                                              ; preds = %28
  br i1 %10, label %115, label %268

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 2
  %117 = load i8, ptr %116, align 2
  br label %131

118:                                              ; preds = %113
  %119 = icmp eq ptr %42, null
  br i1 %119, label %268, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %121(ptr noundef nonnull %42) #10
  br label %268

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 2
  %124 = load i8, ptr %123, align 2
  %125 = and i8 %124, -9
  %126 = icmp ne i8 %125, 1
  %127 = icmp ne ptr %42, null
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %130(ptr noundef nonnull %42) #10
  br label %131

131:                                              ; preds = %115, %129, %122
  %132 = phi i8 [ %124, %129 ], [ %124, %122 ], [ %117, %115 ]
  %133 = phi ptr [ %123, %129 ], [ %123, %122 ], [ %116, %115 ]
  %134 = phi ptr [ %82, %129 ], [ %82, %122 ], [ %33, %115 ]
  %135 = phi i32 [ %38, %129 ], [ %38, %122 ], [ 0, %115 ]
  %136 = phi ptr [ null, %129 ], [ %42, %122 ], [ null, %115 ]
  switch i8 %132, label %161 [
    i8 1, label %137
    i8 2, label %137
    i8 3, label %137
    i8 9, label %149
    i8 10, label %149
    i8 11, label %149
  ]

137:                                              ; preds = %131, %131, %131
  %138 = icmp ult i8 %18, 9
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  tail call fastcc void @ldtarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 0) #11
  br label %161

140:                                              ; preds = %137
  %141 = icmp ult i8 %18, 17
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  tail call fastcc void @ldtarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 1) #11
  br label %161

143:                                              ; preds = %140
  %144 = icmp ult i8 %18, 25
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  tail call fastcc void @ldtarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 2) #11
  br label %161

146:                                              ; preds = %143
  %147 = icmp ult i8 %18, 33
  br i1 %147, label %148, label %161

148:                                              ; preds = %146
  tail call fastcc void @ldtarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 3) #11
  br label %161

149:                                              ; preds = %131, %131, %131
  %150 = icmp ult i8 %18, 9
  br i1 %150, label %151, label %152

151:                                              ; preds = %149
  tail call fastcc void @decodetarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 0) #11
  br label %161

152:                                              ; preds = %149
  %153 = icmp ult i8 %18, 17
  br i1 %153, label %154, label %155

154:                                              ; preds = %152
  tail call fastcc void @decodetarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 1) #11
  br label %161

155:                                              ; preds = %152
  %156 = icmp ult i8 %18, 25
  br i1 %156, label %157, label %158

157:                                              ; preds = %155
  tail call fastcc void @decodetarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 2) #11
  br label %161

158:                                              ; preds = %155
  %159 = icmp ult i8 %18, 33
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  tail call fastcc void @decodetarga(ptr noundef nonnull %26, ptr noundef %134, i64 noundef %1, i32 noundef 3) #11
  br label %161

161:                                              ; preds = %151, %157, %160, %158, %154, %139, %145, %148, %146, %142, %131
  %162 = icmp eq ptr %136, null
  br i1 %162, label %190, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 2
  %165 = load i32, ptr %164, align 8, !tbaa !45
  %166 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 3
  %167 = load i32, ptr %166, align 4, !tbaa !46
  %168 = mul nsw i32 %167, %165
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 8
  %172 = load ptr, ptr %171, align 8, !tbaa !49
  br label %173

173:                                              ; preds = %170, %184
  %174 = phi ptr [ %186, %184 ], [ %172, %170 ]
  %175 = phi i32 [ %185, %184 ], [ %168, %170 ]
  %176 = load i32, ptr %174, align 4, !tbaa !56
  %177 = icmp sgt i32 %176, -1
  %178 = icmp ult i32 %176, %135
  %179 = and i1 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = zext nneg i32 %176 to i64
  %182 = getelementptr inbounds i32, ptr %136, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !56
  store i32 %183, ptr %174, align 4, !tbaa !56
  br label %184

184:                                              ; preds = %173, %180
  %185 = add nsw i32 %175, -1
  %186 = getelementptr inbounds i32, ptr %174, i64 1
  %187 = icmp sgt i32 %175, 1
  br i1 %187, label %173, label %188, !llvm.loop !88

188:                                              ; preds = %184, %163
  %189 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %189(ptr noundef nonnull %136) #10
  br label %190

190:                                              ; preds = %188, %161
  %191 = icmp eq i8 %18, 16
  br i1 %191, label %192, label %232

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 2
  %194 = load i32, ptr %193, align 8, !tbaa !45
  %195 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 3
  %196 = load i32, ptr %195, align 4, !tbaa !46
  %197 = mul nsw i32 %196, %194
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 8
  %201 = load ptr, ptr %200, align 8, !tbaa !49
  br label %202

202:                                              ; preds = %199, %202
  %203 = phi ptr [ %228, %202 ], [ %201, %199 ]
  %204 = phi i32 [ %227, %202 ], [ %197, %199 ]
  %205 = load i32, ptr %203, align 4, !tbaa !56
  %206 = lshr i32 %205, 8
  %207 = shl nuw nsw i32 %206, 1
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, -8
  %210 = getelementptr inbounds i8, ptr %203, i64 3
  %211 = lshr i32 %205, 2
  %212 = and i32 %211, 56
  %213 = shl nuw nsw i32 %206, 6
  %214 = or disjoint i32 %212, %213
  %215 = trunc i32 %214 to i8
  %216 = getelementptr inbounds i8, ptr %203, i64 2
  %217 = shl i32 %205, 3
  %218 = getelementptr inbounds i8, ptr %203, i64 1
  %219 = lshr i32 %217, 5
  %220 = and i32 %219, 7
  %221 = or disjoint i32 %220, %217
  %222 = trunc i32 %221 to i8
  store i8 %222, ptr %218, align 1, !tbaa !43
  %223 = lshr i8 %215, 5
  %224 = or disjoint i8 %223, %215
  store i8 %224, ptr %216, align 1, !tbaa !43
  %225 = lshr i8 %208, 5
  %226 = or disjoint i8 %225, %209
  store i8 %226, ptr %210, align 1, !tbaa !43
  store i8 -1, ptr %203, align 1, !tbaa !43
  %227 = add nsw i32 %204, -1
  %228 = getelementptr inbounds i32, ptr %203, i64 1
  %229 = icmp ugt i32 %204, 1
  br i1 %229, label %202, label %230, !llvm.loop !89

230:                                              ; preds = %202, %192
  %231 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 4
  store i8 24, ptr %231, align 8, !tbaa !34
  br label %232

232:                                              ; preds = %230, %190
  %233 = load i8, ptr %133, align 2
  %234 = and i8 %233, -9
  %235 = icmp eq i8 %234, 3
  br i1 %235, label %236, label %257

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 2
  %238 = load i32, ptr %237, align 8, !tbaa !45
  %239 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 3
  %240 = load i32, ptr %239, align 4, !tbaa !46
  %241 = mul nsw i32 %240, %238
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %257

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 8
  %245 = load ptr, ptr %244, align 8, !tbaa !49
  br label %246

246:                                              ; preds = %243, %246
  %247 = phi ptr [ %249, %246 ], [ %245, %243 ]
  %248 = phi i32 [ %255, %246 ], [ %241, %243 ]
  %249 = getelementptr i32, ptr %247, i64 1
  %250 = load i32, ptr %247, align 4, !tbaa !56
  store i8 -1, ptr %247, align 1, !tbaa !43
  %251 = trunc i32 %250 to i8
  %252 = getelementptr inbounds i8, ptr %247, i64 3
  store i8 %251, ptr %252, align 1, !tbaa !43
  %253 = getelementptr inbounds i8, ptr %247, i64 2
  store i8 %251, ptr %253, align 1, !tbaa !43
  %254 = getelementptr inbounds i8, ptr %247, i64 1
  store i8 %251, ptr %254, align 1, !tbaa !43
  %255 = add nsw i32 %248, -1
  %256 = icmp ugt i32 %248, 1
  br i1 %256, label %246, label %257, !llvm.loop !90

257:                                              ; preds = %246, %236, %232
  %258 = getelementptr inbounds %struct.TARGA, ptr %5, i64 0, i32 11
  %259 = load i8, ptr %258, align 1, !tbaa !84
  %260 = and i8 %259, 32
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %257
  tail call void @IMB_flipy(ptr noundef %26) #10
  br label %263

263:                                              ; preds = %262, %257
  %264 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 8
  %265 = load ptr, ptr %264, align 8, !tbaa !49
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef nonnull %26) #10
  br label %268

268:                                              ; preds = %114, %263, %267, %118, %120, %25, %4
  %269 = phi ptr [ null, %4 ], [ null, %25 ], [ %26, %120 ], [ %26, %118 ], [ %26, %267 ], [ %26, %263 ], [ %26, %114 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret ptr %269
}

; Function Attrs: optsize
declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @ldtarga(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !91 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %2
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = mul nsw i32 %13, %11
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %9
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %16, %56
  %22 = phi ptr [ %1, %16 ], [ %61, %56 ]
  %23 = phi ptr [ %7, %16 ], [ %72, %56 ]
  %24 = phi i32 [ %14, %16 ], [ %73, %56 ]
  %25 = phi i8 [ -1, %16 ], [ %60, %56 ]
  %26 = phi i8 [ 0, %16 ], [ %58, %56 ]
  %27 = phi i8 [ undef, %16 ], [ %57, %56 ]
  %28 = icmp ugt ptr %22, %5
  br i1 %28, label %75, label %29

29:                                               ; preds = %21
  br i1 %18, label %47, label %30

30:                                               ; preds = %29
  br i1 %20, label %40, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds i8, ptr %22, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !43
  %34 = load i8, ptr %22, align 1, !tbaa !43
  %35 = getelementptr inbounds i8, ptr %22, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = getelementptr inbounds i8, ptr %22, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !43
  %39 = getelementptr inbounds i8, ptr %22, i64 4
  br label %56

40:                                               ; preds = %30
  %41 = load i8, ptr %22, align 1, !tbaa !43
  %42 = getelementptr inbounds i8, ptr %22, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !43
  %44 = getelementptr inbounds i8, ptr %22, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !43
  %46 = getelementptr inbounds i8, ptr %22, i64 3
  br label %56

47:                                               ; preds = %29
  br i1 %20, label %53, label %48

48:                                               ; preds = %47
  %49 = load i8, ptr %22, align 1, !tbaa !43
  %50 = getelementptr inbounds i8, ptr %22, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !43
  %52 = getelementptr inbounds i8, ptr %22, i64 2
  br label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, ptr %22, i64 1
  %55 = load i8, ptr %22, align 1, !tbaa !43
  br label %56

56:                                               ; preds = %48, %53, %31, %40
  %57 = phi i8 [ %38, %31 ], [ %45, %40 ], [ %27, %48 ], [ 0, %53 ]
  %58 = phi i8 [ %36, %31 ], [ %43, %40 ], [ %26, %48 ], [ 0, %53 ]
  %59 = phi i8 [ %34, %31 ], [ %41, %40 ], [ %51, %48 ], [ 0, %53 ]
  %60 = phi i8 [ %33, %31 ], [ %25, %40 ], [ %49, %48 ], [ %55, %53 ]
  %61 = phi ptr [ %39, %31 ], [ %46, %40 ], [ %52, %48 ], [ %54, %53 ]
  %62 = zext i8 %57 to i32
  %63 = shl nuw i32 %62, 24
  %64 = zext i8 %58 to i32
  %65 = shl nuw nsw i32 %64, 16
  %66 = or disjoint i32 %65, %63
  %67 = zext i8 %59 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or disjoint i32 %66, %68
  %70 = zext i8 %60 to i32
  %71 = or disjoint i32 %69, %70
  %72 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %71, ptr %23, align 4, !tbaa !56
  %73 = add nsw i32 %24, -1
  %74 = icmp sgt i32 %24, 1
  br i1 %74, label %21, label %76, !llvm.loop !92

75:                                               ; preds = %21
  tail call fastcc void @complete_partial_load(ptr noundef %0, ptr noundef nonnull %23) #11
  br label %76

76:                                               ; preds = %56, %9, %4, %75
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @decodetarga(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !93 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %2
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %164, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = mul nsw i32 %13, %11
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %155

16:                                               ; preds = %9
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %16, %147
  %22 = phi ptr [ %1, %16 ], [ %153, %147 ]
  %23 = phi ptr [ %7, %16 ], [ %152, %147 ]
  %24 = phi i32 [ %14, %16 ], [ %151, %147 ]
  %25 = phi i8 [ -1, %16 ], [ %150, %147 ]
  %26 = phi i8 [ 0, %16 ], [ %149, %147 ]
  %27 = phi i8 [ undef, %16 ], [ %148, %147 ]
  %28 = getelementptr inbounds i8, ptr %22, i64 1
  %29 = load i8, ptr %22, align 1, !tbaa !43
  %30 = zext i8 %29 to i32
  %31 = icmp ugt ptr %28, %5
  br i1 %31, label %162, label %32

32:                                               ; preds = %21
  %33 = icmp slt i8 %29, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %32
  %35 = add nsw i32 %30, -127
  br i1 %18, label %53, label %36

36:                                               ; preds = %34
  br i1 %20, label %46, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds i8, ptr %22, i64 4
  %39 = load i8, ptr %38, align 1, !tbaa !43
  %40 = load i8, ptr %28, align 1, !tbaa !43
  %41 = getelementptr inbounds i8, ptr %22, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !43
  %43 = getelementptr inbounds i8, ptr %22, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !43
  %45 = getelementptr inbounds i8, ptr %22, i64 5
  br label %62

46:                                               ; preds = %36
  %47 = load i8, ptr %28, align 1, !tbaa !43
  %48 = getelementptr inbounds i8, ptr %22, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !43
  %50 = getelementptr inbounds i8, ptr %22, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !43
  %52 = getelementptr inbounds i8, ptr %22, i64 4
  br label %62

53:                                               ; preds = %34
  br i1 %20, label %59, label %54

54:                                               ; preds = %53
  %55 = load i8, ptr %28, align 1, !tbaa !43
  %56 = getelementptr inbounds i8, ptr %22, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !43
  %58 = getelementptr inbounds i8, ptr %22, i64 3
  br label %62

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, ptr %22, i64 2
  %61 = load i8, ptr %28, align 1, !tbaa !43
  br label %62

62:                                               ; preds = %54, %59, %37, %46
  %63 = phi i8 [ %44, %37 ], [ %51, %46 ], [ %27, %54 ], [ 0, %59 ]
  %64 = phi i8 [ %42, %37 ], [ %49, %46 ], [ %26, %54 ], [ 0, %59 ]
  %65 = phi i8 [ %40, %37 ], [ %47, %46 ], [ %57, %54 ], [ 0, %59 ]
  %66 = phi i8 [ %39, %37 ], [ %25, %46 ], [ %55, %54 ], [ %61, %59 ]
  %67 = phi ptr [ %45, %37 ], [ %52, %46 ], [ %58, %54 ], [ %60, %59 ]
  %68 = sub nsw i32 %24, %35
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %158

70:                                               ; preds = %62
  %71 = zext i8 %63 to i32
  %72 = shl nuw i32 %71, 24
  %73 = zext i8 %64 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = or disjoint i32 %74, %72
  %76 = zext i8 %65 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = or disjoint i32 %75, %77
  %79 = zext i8 %66 to i32
  %80 = or disjoint i32 %78, %79
  br label %81

81:                                               ; preds = %70, %81
  %82 = phi i32 [ %85, %81 ], [ %35, %70 ]
  %83 = phi ptr [ %84, %81 ], [ %23, %70 ]
  %84 = getelementptr inbounds i32, ptr %83, i64 1
  store i32 %80, ptr %83, align 4, !tbaa !56
  %85 = add nsw i32 %82, -1
  %86 = icmp sgt i32 %82, 1
  br i1 %86, label %81, label %147

87:                                               ; preds = %32
  %88 = add nuw nsw i32 %30, 1
  %89 = sub nsw i32 %24, %88
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %158

91:                                               ; preds = %87, %126
  %92 = phi i8 [ %127, %126 ], [ %27, %87 ]
  %93 = phi i8 [ %128, %126 ], [ %26, %87 ]
  %94 = phi i8 [ %130, %126 ], [ %25, %87 ]
  %95 = phi i32 [ %143, %126 ], [ %88, %87 ]
  %96 = phi ptr [ %142, %126 ], [ %23, %87 ]
  %97 = phi ptr [ %131, %126 ], [ %28, %87 ]
  %98 = icmp sgt i32 %95, 0
  br i1 %98, label %99, label %145

99:                                               ; preds = %91
  br i1 %18, label %117, label %100

100:                                              ; preds = %99
  br i1 %20, label %110, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds i8, ptr %97, i64 3
  %103 = load i8, ptr %102, align 1, !tbaa !43
  %104 = load i8, ptr %97, align 1, !tbaa !43
  %105 = getelementptr inbounds i8, ptr %97, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !43
  %107 = getelementptr inbounds i8, ptr %97, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !43
  %109 = getelementptr inbounds i8, ptr %97, i64 4
  br label %126

110:                                              ; preds = %100
  %111 = load i8, ptr %97, align 1, !tbaa !43
  %112 = getelementptr inbounds i8, ptr %97, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !43
  %114 = getelementptr inbounds i8, ptr %97, i64 2
  %115 = load i8, ptr %114, align 1, !tbaa !43
  %116 = getelementptr inbounds i8, ptr %97, i64 3
  br label %126

117:                                              ; preds = %99
  br i1 %20, label %123, label %118

118:                                              ; preds = %117
  %119 = load i8, ptr %97, align 1, !tbaa !43
  %120 = getelementptr inbounds i8, ptr %97, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !43
  %122 = getelementptr inbounds i8, ptr %97, i64 2
  br label %126

123:                                              ; preds = %117
  %124 = getelementptr inbounds i8, ptr %97, i64 1
  %125 = load i8, ptr %97, align 1, !tbaa !43
  br label %126

126:                                              ; preds = %118, %123, %101, %110
  %127 = phi i8 [ %108, %101 ], [ %115, %110 ], [ %92, %118 ], [ 0, %123 ]
  %128 = phi i8 [ %106, %101 ], [ %113, %110 ], [ %93, %118 ], [ 0, %123 ]
  %129 = phi i8 [ %104, %101 ], [ %111, %110 ], [ %121, %118 ], [ 0, %123 ]
  %130 = phi i8 [ %103, %101 ], [ %94, %110 ], [ %119, %118 ], [ %125, %123 ]
  %131 = phi ptr [ %109, %101 ], [ %116, %110 ], [ %122, %118 ], [ %124, %123 ]
  %132 = zext i8 %127 to i32
  %133 = shl nuw i32 %132, 24
  %134 = zext i8 %128 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or disjoint i32 %135, %133
  %137 = zext i8 %129 to i32
  %138 = shl nuw nsw i32 %137, 8
  %139 = or disjoint i32 %136, %138
  %140 = zext i8 %130 to i32
  %141 = or disjoint i32 %139, %140
  %142 = getelementptr inbounds i32, ptr %96, i64 1
  store i32 %141, ptr %96, align 4, !tbaa !56
  %143 = add nsw i32 %95, -1
  %144 = icmp ugt ptr %131, %5
  br i1 %144, label %162, label %91, !llvm.loop !94

145:                                              ; preds = %91
  %146 = icmp ugt ptr %97, %5
  br i1 %146, label %162, label %147

147:                                              ; preds = %81, %145
  %148 = phi i8 [ %92, %145 ], [ %63, %81 ]
  %149 = phi i8 [ %93, %145 ], [ %64, %81 ]
  %150 = phi i8 [ %94, %145 ], [ %66, %81 ]
  %151 = phi i32 [ %89, %145 ], [ %68, %81 ]
  %152 = phi ptr [ %96, %145 ], [ %84, %81 ]
  %153 = phi ptr [ %97, %145 ], [ %67, %81 ]
  %154 = icmp sgt i32 %151, 0
  br i1 %154, label %21, label %155, !llvm.loop !95

155:                                              ; preds = %147, %9
  %156 = phi i32 [ %14, %9 ], [ %151, %147 ]
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %62, %87, %155
  %159 = phi i32 [ %156, %155 ], [ %68, %62 ], [ %89, %87 ]
  %160 = sub nsw i32 0, %159
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %160) #11
  br label %164

162:                                              ; preds = %145, %21, %126
  %163 = phi ptr [ %142, %126 ], [ %96, %145 ], [ %23, %21 ]
  tail call fastcc void @complete_partial_load(ptr noundef %0, ptr noundef %163) #11
  br label %164

164:                                              ; preds = %155, %158, %4, %162
  ret void
}

; Function Attrs: optsize
declare void @IMB_flipy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_convert_rgba_to_abgr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @complete_partial_load(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = mul nsw i32 %6, %4
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 2
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %7, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = sub i32 %7, %14
  %18 = sitofp i32 %17 to float
  %19 = sitofp i32 %7 to float
  %20 = fdiv float %18, %19
  %21 = fmul float %20, 1.000000e+02
  %22 = fpext float %21 to double
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %22) #11
  %24 = sext i32 %17 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %24, i1 false)
  br label %27

25:                                               ; preds = %2
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %27

27:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 24}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!37, !37, i64 0}
!44 = !{!35, !39, i64 312}
!45 = !{!35, !39, i64 16}
!46 = !{!35, !39, i64 20}
!47 = !{i8 0, i8 2}
!48 = !{!"targa.c:dumptarga"}
!49 = !{!35, !36, i64 40}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = !{!"targa.c:makebody_tga"}
!56 = !{!39, !39, i64 0}
!57 = distinct !{!57, !51}
!58 = !{ptr @tga_out1, ptr @tga_out2, ptr @tga_out3, ptr @tga_out4}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51}
!64 = distinct !{!64, !51}
!65 = !{!"targa.c:tga_out1"}
!66 = !{!"targa.c:tga_out2"}
!67 = !{!"targa.c:tga_out3"}
!68 = !{!"targa.c:tga_out4"}
!69 = !{i32 0, i32 2}
!70 = !{!"targa.c:checktarga"}
!71 = !{!72, !37, i64 0}
!72 = !{!"TARGA", !37, i64 0, !37, i64 1, !37, i64 2, !73, i64 4, !73, i64 6, !37, i64 8, !73, i64 10, !73, i64 12, !73, i64 14, !73, i64 16, !37, i64 18, !37, i64 19}
!73 = !{!"short", !37, i64 0}
!74 = !{!72, !37, i64 1}
!75 = !{!72, !37, i64 2}
!76 = !{!72, !73, i64 4}
!77 = !{!72, !73, i64 6}
!78 = !{!72, !37, i64 8}
!79 = !{!72, !73, i64 10}
!80 = !{!72, !73, i64 12}
!81 = !{!72, !73, i64 14}
!82 = !{!72, !73, i64 16}
!83 = !{!72, !37, i64 18}
!84 = !{!72, !37, i64 19}
!85 = !{!36, !36, i64 0}
!86 = distinct !{!86, !51}
!87 = distinct !{!87, !51}
!88 = distinct !{!88, !51}
!89 = distinct !{!89, !51}
!90 = distinct !{!90, !51}
!91 = !{!"targa.c:ldtarga"}
!92 = distinct !{!92, !51}
!93 = !{!"targa.c:decodetarga"}
!94 = distinct !{!94, !51}
!95 = distinct !{!95, !51}
!96 = !{!"targa.c:complete_partial_load"}
