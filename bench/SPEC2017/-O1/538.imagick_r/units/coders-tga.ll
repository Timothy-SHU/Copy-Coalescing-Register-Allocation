; ModuleID = 'coders/tga.c'
source_filename = "coders/tga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._TGAInfo = type { i8, i8, i8, i16, i16, i8, i16, i16, i16, i16, i8, i8 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ICB\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Truevision Targa image\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TGA\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"VDA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"VST\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"coders/tga.c\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ImproperImageHeader\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"UnableToReadImageData\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@LoadImageTag = external constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"UnexpectedEndOfFile\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"./magick/colormap-private.h\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"WidthOrHeightExceedsLimit\00", align 1
@SaveImageTag = external constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @RegisterTGAImage() local_unnamed_addr #0 {
  %1 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str) #9
  %2 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %3, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 10
  store i32 0, ptr %4, align 8, !tbaa !42
  %5 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #9
  %6 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !43
  %7 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #9
  %8 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !44
  %9 = tail call ptr @RegisterMagickInfo(ptr noundef %1) #9
  %10 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.2) #9
  %11 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 10
  store i32 0, ptr %13, align 8, !tbaa !42
  %14 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #9
  %15 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !43
  %16 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #9
  %17 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !44
  %18 = tail call ptr @RegisterMagickInfo(ptr noundef %10) #9
  %19 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.3) #9
  %20 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %20, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %21, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 10
  store i32 0, ptr %22, align 8, !tbaa !42
  %23 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #9
  %24 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !43
  %25 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #9
  %26 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !44
  %27 = tail call ptr @RegisterMagickInfo(ptr noundef %19) #9
  %28 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.4) #9
  %29 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %30, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 10
  store i32 0, ptr %31, align 8, !tbaa !42
  %32 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #9
  %33 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !43
  %34 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #9
  %35 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !44
  %36 = tail call ptr @RegisterMagickInfo(ptr noundef %28) #9
  ret i64 428304
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @SetMagickInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @ReadTGAImage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._PixelPacket, align 8
  %5 = alloca %struct._TGAInfo, align 2
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 185, ptr noundef nonnull @.str.7, ptr noundef nonnull %12) #9
  br label %14

14:                                               ; preds = %11, %2
  %15 = tail call ptr @AcquireImage(ptr noundef %0) #9
  %16 = tail call i32 @OpenBlob(ptr noundef %0, ptr noundef %15, i32 noundef 2, ptr noundef %1) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call ptr @DestroyImageList(ptr noundef %15) #9
  br label %589

20:                                               ; preds = %14
  %21 = call i64 @ReadBlob(ptr noundef %15, i64 noundef 1, ptr noundef nonnull %5) #9
  %22 = call i32 @ReadBlobByte(ptr noundef %15) #9
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 1
  store i8 %23, ptr %24, align 1, !tbaa !50
  %25 = call i32 @ReadBlobByte(ptr noundef %15) #9
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 2
  store i8 %26, ptr %27, align 2, !tbaa !52
  %28 = icmp eq i64 %21, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = and i32 %25, 247
  %31 = add nsw i32 %30, -4
  %32 = icmp ult i32 %31, -3
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %30, 1
  %35 = load i8, ptr %24, align 1
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %45

38:                                               ; preds = %33, %29, %20
  %39 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %40 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 212, i32 noundef 425, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %39) #9
  %41 = icmp eq ptr %15, null
  br i1 %41, label %589, label %42

42:                                               ; preds = %38
  %43 = call i32 @CloseBlob(ptr noundef %15) #9
  %44 = call ptr @DestroyImageList(ptr noundef %15) #9
  br label %589

45:                                               ; preds = %33
  %46 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %15) #9
  %47 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 3
  store i16 %46, ptr %47, align 2, !tbaa !53
  %48 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %15) #9
  %49 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 4
  store i16 %48, ptr %49, align 2, !tbaa !54
  %50 = call i32 @ReadBlobByte(ptr noundef %15) #9
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 5
  store i8 %51, ptr %52, align 2, !tbaa !55
  %53 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %15) #9
  %54 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 6
  store i16 %53, ptr %54, align 2, !tbaa !56
  %55 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %15) #9
  %56 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 7
  store i16 %55, ptr %56, align 2, !tbaa !57
  %57 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %15) #9
  %58 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 8
  store i16 %57, ptr %58, align 2, !tbaa !58
  %59 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %15) #9
  %60 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 9
  store i16 %59, ptr %60, align 2, !tbaa !59
  %61 = call i32 @ReadBlobByte(ptr noundef %15) #9
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 10
  store i8 %62, ptr %63, align 2, !tbaa !60
  %64 = call i32 @ReadBlobByte(ptr noundef %15) #9
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds %struct._TGAInfo, ptr %5, i64 0, i32 11
  store i8 %65, ptr %66, align 1, !tbaa !61
  %67 = call i32 @EOFBlob(ptr noundef %15) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %45
  %70 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %71 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 223, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %70) #9
  %72 = icmp eq ptr %15, null
  br i1 %72, label %589, label %73

73:                                               ; preds = %69
  %74 = call i32 @CloseBlob(ptr noundef %15) #9
  %75 = call ptr @DestroyImageList(ptr noundef %15) #9
  br label %589

76:                                               ; preds = %45
  %77 = load i8, ptr %63, align 2
  %78 = freeze i8 %77
  %79 = add i8 %78, -17
  %80 = icmp ult i8 %79, -15
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  switch i8 %78, label %82 [
    i8 32, label %89
    i8 24, label %89
  ]

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %84 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 226, i32 noundef 425, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %83) #9
  %85 = icmp eq ptr %15, null
  br i1 %85, label %589, label %86

86:                                               ; preds = %82
  %87 = call i32 @CloseBlob(ptr noundef %15) #9
  %88 = call ptr @DestroyImageList(ptr noundef %15) #9
  br label %589

89:                                               ; preds = %81, %81, %76
  %90 = load i16, ptr %58, align 2, !tbaa !58
  %91 = zext i16 %90 to i64
  %92 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  store i64 %91, ptr %92, align 8, !tbaa !62
  %93 = load i16, ptr %60, align 2, !tbaa !59
  %94 = zext i16 %93 to i64
  %95 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  store i64 %94, ptr %95, align 8, !tbaa !73
  %96 = load i8, ptr %66, align 1, !tbaa !61
  %97 = and i8 %96, 15
  %98 = icmp ne i8 %97, 0
  %99 = icmp eq i8 %78, 32
  %100 = or i1 %99, %98
  br i1 %100, label %104, label %101

101:                                              ; preds = %89
  %102 = load i8, ptr %52, align 2, !tbaa !55
  %103 = icmp eq i8 %102, 32
  br label %104

104:                                              ; preds = %101, %89
  %105 = phi i1 [ true, %89 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 6
  store i32 %106, ptr %107, align 8, !tbaa !74
  %108 = load i8, ptr %27, align 2
  %109 = and i8 %108, -9
  %110 = icmp eq i8 %109, 1
  %111 = load i8, ptr %52, align 2
  %112 = select i1 %110, i8 %111, i8 %78
  %113 = icmp ult i8 %112, 9
  %114 = icmp ult i8 %112, 17
  %115 = select i1 %114, i64 5, i64 8
  %116 = select i1 %113, i64 8, i64 %115
  %117 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 9
  store i64 %116, ptr %117, align 8, !tbaa !75
  %118 = add i8 %108, -1
  %119 = call i8 @llvm.fshl.i8(i8 %118, i8 %118, i8 7)
  switch i8 %119, label %121 [
    i8 5, label %120
    i8 4, label %120
    i8 1, label %120
    i8 0, label %120
  ]

120:                                              ; preds = %104, %104, %104, %104
  store i32 2, ptr %15, align 8, !tbaa !76
  br label %121

121:                                              ; preds = %104, %120
  %122 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 2
  store i32 1, ptr %122, align 8, !tbaa !77
  %123 = load i8, ptr %27, align 2
  %124 = and i8 %123, -3
  %125 = icmp eq i8 %124, 9
  %126 = select i1 %125, i32 12, i32 1
  store i32 %126, ptr %122, align 8
  %127 = load i32, ptr %15, align 8, !tbaa !76
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %150

129:                                              ; preds = %121
  %130 = load i8, ptr %24, align 1, !tbaa !50
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load i16, ptr %49, align 2, !tbaa !54
  %134 = zext i16 %133 to i64
  %135 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 10
  store i64 %134, ptr %135, align 8, !tbaa !78
  br label %150

136:                                              ; preds = %129
  %137 = load i8, ptr %63, align 2, !tbaa !60
  %138 = zext nneg i8 %137 to i64
  %139 = shl nuw i64 1, %138
  %140 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 10
  store i64 %139, ptr %140, align 8, !tbaa !78
  %141 = call i32 @AcquireImageColormap(ptr noundef nonnull %15, i64 noundef %139) #9
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %145 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 267, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %144) #9
  %146 = call i32 @CloseBlob(ptr noundef nonnull %15) #9
  %147 = call ptr @DestroyImageList(ptr noundef nonnull %15) #9
  br label %148

148:                                              ; preds = %136, %143
  %149 = phi ptr [ %147, %143 ], [ %15, %136 ]
  br i1 %142, label %589, label %150

150:                                              ; preds = %132, %148, %121
  %151 = phi ptr [ %15, %132 ], [ %149, %148 ], [ %15, %121 ]
  %152 = load i8, ptr %5, align 2, !tbaa !79
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %150
  %155 = zext i8 %152 to i64
  %156 = or disjoint i64 %155, 4096
  %157 = call ptr @AcquireQuantumMemory(i64 noundef %156, i64 noundef 1) #10
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %161 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 287, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %160) #9
  %162 = icmp eq ptr %151, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %159
  %164 = call i32 @CloseBlob(ptr noundef nonnull %151) #9
  %165 = call ptr @DestroyImageList(ptr noundef nonnull %151) #9
  br label %175

166:                                              ; preds = %154
  %167 = load i8, ptr %5, align 2, !tbaa !79
  %168 = zext i8 %167 to i64
  %169 = call i64 @ReadBlob(ptr noundef %151, i64 noundef %168, ptr noundef nonnull %157) #9
  %170 = load i8, ptr %5, align 2, !tbaa !79
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds i8, ptr %157, i64 %171
  store i8 0, ptr %172, align 1, !tbaa !80
  %173 = call i32 @SetImageProperty(ptr noundef %151, ptr noundef nonnull @.str.12, ptr noundef nonnull %157) #9
  %174 = call ptr @DestroyString(ptr noundef nonnull %157) #9
  br label %175

175:                                              ; preds = %159, %163, %166
  %176 = phi ptr [ %151, %166 ], [ %165, %163 ], [ null, %159 ]
  br i1 %158, label %589, label %177

177:                                              ; preds = %175, %150
  %178 = phi ptr [ %176, %175 ], [ %151, %150 ]
  %179 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 8) #9
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 3
  store i16 0, ptr %180, align 2, !tbaa !81
  %181 = load i8, ptr %24, align 1, !tbaa !50
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %283, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct._Image, ptr %178, i64 0, i32 10
  %185 = load i64, ptr %184, align 8, !tbaa !78
  %186 = call i32 @AcquireImageColormap(ptr noundef %178, i64 noundef %185) #9
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %201, label %188

188:                                              ; preds = %183
  %189 = load i64, ptr %184, align 8, !tbaa !78
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %283

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %193 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %197 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %200 = getelementptr inbounds %struct._Image, ptr %178, i64 0, i32 11
  br label %208

201:                                              ; preds = %183
  %202 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %203 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 301, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %202) #9
  %204 = icmp eq ptr %178, null
  br i1 %204, label %589, label %205

205:                                              ; preds = %201
  %206 = call i32 @CloseBlob(ptr noundef nonnull %178) #9
  %207 = call ptr @DestroyImageList(ptr noundef nonnull %178) #9
  br label %589

208:                                              ; preds = %191, %276
  %209 = phi i64 [ 0, %191 ], [ %280, %276 ]
  %210 = load i8, ptr %52, align 2, !tbaa !55
  switch i8 %210, label %211 [
    i8 32, label %258
    i8 15, label %216
    i8 16, label %216
    i8 24, label %245
  ]

211:                                              ; preds = %208
  %212 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %213 = trunc i32 %212 to i16
  %214 = and i16 %213, 255
  %215 = mul nuw i16 %214, 257
  store i16 %215, ptr %198, align 4, !tbaa !82
  store i16 %215, ptr %199, align 2, !tbaa !83
  store i16 %215, ptr %4, align 8, !tbaa !84
  br label %276

216:                                              ; preds = %208, %208
  %217 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %218 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %219 = lshr i32 %218, 2
  %220 = and i32 %219, 31
  %221 = uitofp i32 %220 to float
  %222 = fmul float %221, 6.553500e+04
  %223 = fdiv float %222, 3.100000e+01
  %224 = fpext float %223 to double
  %225 = fadd double %224, 5.000000e-01
  %226 = fptoui double %225 to i16
  store i16 %226, ptr %194, align 4, !tbaa !82
  %227 = shl i32 %218, 3
  %228 = and i32 %227, 24
  %229 = lshr i32 %217, 5
  %230 = and i32 %229, 7
  %231 = or disjoint i32 %228, %230
  %232 = uitofp i32 %231 to float
  %233 = fmul float %232, 6.553500e+04
  %234 = fdiv float %233, 3.100000e+01
  %235 = fpext float %234 to double
  %236 = fadd double %235, 5.000000e-01
  %237 = fptoui double %236 to i16
  store i16 %237, ptr %195, align 2, !tbaa !83
  %238 = and i32 %217, 31
  %239 = uitofp i32 %238 to float
  %240 = fmul float %239, 6.553500e+04
  %241 = fdiv float %240, 3.100000e+01
  %242 = fpext float %241 to double
  %243 = fadd double %242, 5.000000e-01
  %244 = fptoui double %243 to i16
  store i16 %244, ptr %4, align 8, !tbaa !84
  br label %276

245:                                              ; preds = %208
  %246 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %247 = trunc i32 %246 to i16
  %248 = and i16 %247, 255
  %249 = mul nuw i16 %248, 257
  store i16 %249, ptr %4, align 8, !tbaa !84
  %250 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %251 = trunc i32 %250 to i16
  %252 = and i16 %251, 255
  %253 = mul nuw i16 %252, 257
  store i16 %253, ptr %192, align 2, !tbaa !83
  %254 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %255 = trunc i32 %254 to i16
  %256 = and i16 %255, 255
  %257 = mul nuw i16 %256, 257
  store i16 %257, ptr %193, align 4, !tbaa !82
  br label %276

258:                                              ; preds = %208
  %259 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %260 = trunc i32 %259 to i16
  %261 = and i16 %260, 255
  %262 = mul nuw i16 %261, 257
  store i16 %262, ptr %4, align 8, !tbaa !84
  %263 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %264 = trunc i32 %263 to i16
  %265 = and i16 %264, 255
  %266 = mul nuw i16 %265, 257
  store i16 %266, ptr %196, align 2, !tbaa !83
  %267 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %268 = trunc i32 %267 to i16
  %269 = and i16 %268, 255
  %270 = mul nuw i16 %269, 257
  store i16 %270, ptr %197, align 4, !tbaa !82
  %271 = call i32 @ReadBlobByte(ptr noundef %178) #9
  %272 = trunc i32 %271 to i16
  %273 = and i16 %272, 255
  %274 = mul nuw i16 %273, 257
  %275 = xor i16 %274, -1
  store i16 %275, ptr %180, align 2, !tbaa !81
  br label %276

276:                                              ; preds = %258, %245, %216, %211
  %277 = load ptr, ptr %200, align 8, !tbaa !85
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %277, i64 %209
  %279 = load i64, ptr %4, align 8
  store i64 %279, ptr %278, align 2
  %280 = add nuw nsw i64 %209, 1
  %281 = load i64, ptr %184, align 8, !tbaa !78
  %282 = icmp slt i64 %280, %281
  br i1 %282, label %208, label %283, !llvm.loop !86

283:                                              ; preds = %276, %188, %177
  store i8 0, ptr %7, align 1, !tbaa !80
  %284 = getelementptr inbounds %struct._Image, ptr %178, i64 0, i32 8
  %285 = load i64, ptr %284, align 8, !tbaa !73
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %575

287:                                              ; preds = %283
  %288 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %289 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %290 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %292 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %293 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %294 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %296 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %298 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %300 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  %301 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %304 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  br label %305

305:                                              ; preds = %287, %570
  %306 = phi i64 [ %285, %287 ], [ %573, %570 ]
  %307 = phi ptr [ %178, %287 ], [ %537, %570 ]
  %308 = phi i16 [ 0, %287 ], [ %536, %570 ]
  %309 = phi i64 [ 0, %287 ], [ %571, %570 ]
  %310 = phi i64 [ 0, %287 ], [ %535, %570 ]
  %311 = phi i64 [ 0, %287 ], [ %548, %570 ]
  %312 = phi i64 [ 0, %287 ], [ %534, %570 ]
  %313 = phi i64 [ 0, %287 ], [ %547, %570 ]
  %314 = load i8, ptr %66, align 1, !tbaa !61
  %315 = and i8 %314, 32
  %316 = icmp eq i8 %315, 0
  %317 = xor i64 %311, -1
  %318 = add i64 %306, %317
  %319 = select i1 %316, i64 %318, i64 %311
  %320 = getelementptr inbounds %struct._Image, ptr %307, i64 0, i32 7
  %321 = load i64, ptr %320, align 8, !tbaa !62
  %322 = call ptr @QueueAuthenticPixels(ptr noundef %307, i64 noundef 0, i64 noundef %319, i64 noundef %321, i64 noundef 1, ptr noundef %1) #9
  %323 = icmp eq ptr %322, null
  br i1 %323, label %575, label %324

324:                                              ; preds = %305
  %325 = call ptr @GetAuthenticIndexQueue(ptr noundef %307) #9
  %326 = getelementptr inbounds %struct._Image, ptr %307, i64 0, i32 7
  %327 = load i64, ptr %326, align 8, !tbaa !62
  %328 = icmp sgt i64 %327, 0
  br i1 %328, label %329, label %533

329:                                              ; preds = %324
  %330 = icmp eq ptr %325, null
  br label %331

331:                                              ; preds = %329, %527
  %332 = phi ptr [ %307, %329 ], [ %509, %527 ]
  %333 = phi i16 [ %308, %329 ], [ %508, %527 ]
  %334 = phi ptr [ %322, %329 ], [ %528, %527 ]
  %335 = phi i64 [ %310, %329 ], [ %367, %527 ]
  %336 = phi i64 [ %312, %329 ], [ %366, %527 ]
  %337 = phi i64 [ 0, %329 ], [ %529, %527 ]
  %338 = load i8, ptr %27, align 2
  %339 = add i8 %338, -9
  %340 = icmp ult i8 %339, 3
  br i1 %340, label %341, label %365

341:                                              ; preds = %331
  %342 = load i8, ptr %7, align 1, !tbaa !80
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %341
  %345 = add i8 %342, -1
  store i8 %345, ptr %7, align 1, !tbaa !80
  %346 = icmp ne i64 %336, 0
  %347 = zext i1 %346 to i64
  br label %365

348:                                              ; preds = %341
  %349 = call i64 @ReadBlob(ptr noundef %332, i64 noundef 1, ptr noundef nonnull %7) #9
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %353 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 395, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %352) #9
  %354 = icmp eq ptr %332, null
  br i1 %354, label %589, label %355

355:                                              ; preds = %351
  %356 = call i32 @CloseBlob(ptr noundef nonnull %332) #9
  %357 = call ptr @DestroyImageList(ptr noundef nonnull %332) #9
  br label %589

358:                                              ; preds = %348
  %359 = load i8, ptr %7, align 1, !tbaa !80
  %360 = and i8 %359, -128
  %361 = zext i8 %360 to i64
  %362 = icmp eq i8 %360, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %358
  %364 = and i8 %359, 127
  store i8 %364, ptr %7, align 1, !tbaa !80
  br label %365

365:                                              ; preds = %358, %363, %344, %331
  %366 = phi i64 [ %336, %344 ], [ %336, %331 ], [ %361, %363 ], [ %361, %358 ]
  %367 = phi i64 [ %347, %344 ], [ %335, %331 ], [ 0, %363 ], [ 0, %358 ]
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %507

369:                                              ; preds = %365
  %370 = load i8, ptr %63, align 2, !tbaa !60
  switch i8 %370, label %371 [
    i8 32, label %483
    i8 15, label %398
    i8 16, label %398
    i8 24, label %463
  ]

371:                                              ; preds = %369
  %372 = call i32 @ReadBlobByte(ptr noundef %332) #9
  %373 = trunc i32 %372 to i16
  %374 = load i8, ptr %24, align 1, !tbaa !50
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %395, label %376

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 11
  %378 = load ptr, ptr %377, align 8, !tbaa !85
  %379 = and i32 %372, 65535
  %380 = zext nneg i32 %379 to i64
  %381 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 10
  %382 = load i64, ptr %381, align 8, !tbaa !78
  %383 = icmp ugt i64 %382, %380
  br i1 %383, label %384, label %386

384:                                              ; preds = %376
  %385 = zext i32 %372 to i64
  br label %390

386:                                              ; preds = %376
  %387 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 58
  %388 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 53
  %389 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %387, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef 34, i32 noundef 425, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, ptr noundef nonnull %388) #9
  br label %390

390:                                              ; preds = %384, %386
  %391 = phi i64 [ %385, %384 ], [ 0, %386 ]
  %392 = and i64 %391, 65535
  %393 = getelementptr inbounds %struct._PixelPacket, ptr %378, i64 %392
  %394 = load i64, ptr %393, align 2
  store i64 %394, ptr %4, align 8
  br label %507

395:                                              ; preds = %371
  %396 = and i16 %373, 255
  %397 = mul nuw i16 %396, 257
  store i16 %397, ptr %301, align 4, !tbaa !82
  store i16 %397, ptr %302, align 2, !tbaa !83
  store i16 %397, ptr %4, align 8, !tbaa !84
  br label %507

398:                                              ; preds = %369, %369
  %399 = call i64 @ReadBlob(ptr noundef %332, i64 noundef 2, ptr noundef nonnull %6) #9
  %400 = icmp eq i64 %399, 2
  br i1 %400, label %407, label %401

401:                                              ; preds = %398
  %402 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 433, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %292) #9
  %403 = icmp eq ptr %332, null
  br i1 %403, label %460, label %404

404:                                              ; preds = %401
  %405 = call i32 @CloseBlob(ptr noundef nonnull %332) #9
  %406 = call ptr @DestroyImageList(ptr noundef nonnull %332) #9
  br label %460

407:                                              ; preds = %398
  %408 = load i8, ptr %6, align 1, !tbaa !80
  %409 = load i8, ptr %293, align 1, !tbaa !80
  %410 = zext i8 %409 to i32
  %411 = lshr i32 %410, 2
  %412 = and i32 %411, 31
  %413 = uitofp i32 %412 to float
  %414 = fmul float %413, 6.553500e+04
  %415 = fdiv float %414, 3.100000e+01
  %416 = fpext float %415 to double
  %417 = fadd double %416, 5.000000e-01
  %418 = fptoui double %417 to i16
  store i16 %418, ptr %294, align 4, !tbaa !82
  %419 = shl nuw nsw i32 %410, 3
  %420 = and i32 %419, 24
  %421 = lshr i8 %408, 5
  %422 = zext nneg i8 %421 to i32
  %423 = or disjoint i32 %420, %422
  %424 = uitofp i32 %423 to float
  %425 = fmul float %424, 6.553500e+04
  %426 = fdiv float %425, 3.100000e+01
  %427 = fpext float %426 to double
  %428 = fadd double %427, 5.000000e-01
  %429 = fptoui double %428 to i16
  store i16 %429, ptr %295, align 2, !tbaa !83
  %430 = and i8 %408, 31
  %431 = uitofp i8 %430 to float
  %432 = fmul float %431, 6.553500e+04
  %433 = fdiv float %432, 3.100000e+01
  %434 = fpext float %433 to double
  %435 = fadd double %434, 5.000000e-01
  %436 = fptoui double %435 to i16
  store i16 %436, ptr %4, align 8, !tbaa !84
  %437 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 6
  %438 = load i32, ptr %437, align 8, !tbaa !74
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %443, label %440

440:                                              ; preds = %407
  %441 = ashr i8 %409, 7
  %442 = sext i8 %441 to i16
  store i16 %442, ptr %180, align 2, !tbaa !81
  br label %443

443:                                              ; preds = %440, %407
  %444 = load i32, ptr %332, align 8, !tbaa !76
  %445 = icmp eq i32 %444, 2
  br i1 %445, label %446, label %460

446:                                              ; preds = %443
  %447 = zext i8 %409 to i64
  %448 = shl nuw nsw i64 %447, 8
  %449 = zext i8 %408 to i64
  %450 = or disjoint i64 %448, %449
  %451 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 10
  %452 = load i64, ptr %451, align 8, !tbaa !78
  %453 = icmp ugt i64 %452, %450
  br i1 %453, label %454, label %456

454:                                              ; preds = %446
  %455 = trunc i64 %450 to i16
  br label %460

456:                                              ; preds = %446
  %457 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 58
  %458 = getelementptr inbounds %struct._Image, ptr %332, i64 0, i32 53
  %459 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %457, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef 34, i32 noundef 425, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, ptr noundef nonnull %458) #9
  br label %460

460:                                              ; preds = %456, %454, %443, %401, %404
  %461 = phi i16 [ %333, %404 ], [ %333, %401 ], [ %333, %443 ], [ %455, %454 ], [ 0, %456 ]
  %462 = phi ptr [ %406, %404 ], [ null, %401 ], [ %332, %443 ], [ %332, %454 ], [ %332, %456 ]
  br i1 %400, label %507, label %589

463:                                              ; preds = %369
  %464 = call i64 @ReadBlob(ptr noundef %332, i64 noundef 3, ptr noundef nonnull %6) #9
  %465 = icmp eq i64 %464, 3
  br i1 %465, label %473, label %466

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %468 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 454, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %467) #9
  %469 = icmp eq ptr %332, null
  br i1 %469, label %589, label %470

470:                                              ; preds = %466
  %471 = call i32 @CloseBlob(ptr noundef nonnull %332) #9
  %472 = call ptr @DestroyImageList(ptr noundef nonnull %332) #9
  br label %589

473:                                              ; preds = %463
  %474 = load i8, ptr %6, align 1, !tbaa !80
  %475 = zext i8 %474 to i16
  %476 = mul nuw i16 %475, 257
  store i16 %476, ptr %4, align 8, !tbaa !84
  %477 = load i8, ptr %288, align 1, !tbaa !80
  %478 = zext i8 %477 to i16
  %479 = mul nuw i16 %478, 257
  store i16 %479, ptr %289, align 2, !tbaa !83
  %480 = load i8, ptr %290, align 1, !tbaa !80
  %481 = zext i8 %480 to i16
  %482 = mul nuw i16 %481, 257
  store i16 %482, ptr %291, align 4, !tbaa !82
  br label %507

483:                                              ; preds = %369
  %484 = call i64 @ReadBlob(ptr noundef %332, i64 noundef 4, ptr noundef nonnull %6) #9
  %485 = icmp eq i64 %484, 4
  br i1 %485, label %493, label %486

486:                                              ; preds = %483
  %487 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %488 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 466, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %487) #9
  %489 = icmp eq ptr %332, null
  br i1 %489, label %589, label %490

490:                                              ; preds = %486
  %491 = call i32 @CloseBlob(ptr noundef nonnull %332) #9
  %492 = call ptr @DestroyImageList(ptr noundef nonnull %332) #9
  br label %589

493:                                              ; preds = %483
  %494 = load i8, ptr %6, align 1, !tbaa !80
  %495 = zext i8 %494 to i16
  %496 = mul nuw i16 %495, 257
  store i16 %496, ptr %4, align 8, !tbaa !84
  %497 = load i8, ptr %296, align 1, !tbaa !80
  %498 = zext i8 %497 to i16
  %499 = mul nuw i16 %498, 257
  store i16 %499, ptr %297, align 2, !tbaa !83
  %500 = load i8, ptr %298, align 1, !tbaa !80
  %501 = zext i8 %500 to i16
  %502 = mul nuw i16 %501, 257
  store i16 %502, ptr %299, align 4, !tbaa !82
  %503 = load i8, ptr %300, align 1, !tbaa !80
  %504 = zext i8 %503 to i16
  %505 = mul nuw i16 %504, 257
  %506 = xor i16 %505, -1
  store i16 %506, ptr %180, align 2, !tbaa !81
  br label %507

507:                                              ; preds = %365, %390, %395, %460, %493, %473
  %508 = phi i16 [ %373, %390 ], [ %373, %395 ], [ %333, %473 ], [ %461, %460 ], [ %333, %493 ], [ %333, %365 ]
  %509 = phi ptr [ %332, %390 ], [ %332, %395 ], [ %332, %473 ], [ %462, %460 ], [ %332, %493 ], [ %332, %365 ]
  %510 = load i32, ptr %509, align 8, !tbaa !76
  %511 = icmp ne i32 %510, 2
  %512 = select i1 %511, i1 true, i1 %330
  br i1 %512, label %515, label %513

513:                                              ; preds = %507
  %514 = getelementptr inbounds i16, ptr %325, i64 %337
  store i16 %508, ptr %514, align 2, !tbaa !89
  br label %515

515:                                              ; preds = %513, %507
  %516 = load i16, ptr %303, align 4, !tbaa !82
  %517 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 2
  store i16 %516, ptr %517, align 2, !tbaa !82
  %518 = load i16, ptr %304, align 2, !tbaa !83
  %519 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 1
  store i16 %518, ptr %519, align 2, !tbaa !83
  %520 = load i16, ptr %4, align 8, !tbaa !84
  store i16 %520, ptr %334, align 2, !tbaa !84
  %521 = getelementptr inbounds %struct._Image, ptr %509, i64 0, i32 6
  %522 = load i32, ptr %521, align 8, !tbaa !74
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %515
  %525 = load i16, ptr %180, align 2, !tbaa !81
  %526 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 3
  store i16 %525, ptr %526, align 2, !tbaa !81
  br label %527

527:                                              ; preds = %524, %515
  %528 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 1
  %529 = add nuw nsw i64 %337, 1
  %530 = getelementptr inbounds %struct._Image, ptr %509, i64 0, i32 7
  %531 = load i64, ptr %530, align 8, !tbaa !62
  %532 = icmp slt i64 %529, %531
  br i1 %532, label %331, label %533, !llvm.loop !90

533:                                              ; preds = %527, %324
  %534 = phi i64 [ %312, %324 ], [ %366, %527 ]
  %535 = phi i64 [ %310, %324 ], [ %367, %527 ]
  %536 = phi i16 [ %308, %324 ], [ %508, %527 ]
  %537 = phi ptr [ %307, %324 ], [ %509, %527 ]
  %538 = load i8, ptr %66, align 1, !tbaa !61
  %539 = and i8 %538, -64
  %540 = icmp eq i8 %539, -128
  %541 = select i1 %540, i64 2, i64 1
  %542 = add i64 %541, %311
  %543 = getelementptr inbounds %struct._Image, ptr %537, i64 0, i32 8
  %544 = load i64, ptr %543, align 8, !tbaa !73
  %545 = icmp ult i64 %542, %544
  %546 = add i64 %313, 1
  %547 = select i1 %545, i64 %313, i64 %546
  %548 = select i1 %545, i64 %542, i64 %546
  %549 = call i32 @SyncAuthenticPixels(ptr noundef %537, ptr noundef %1) #9
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %575, label %551

551:                                              ; preds = %533
  %552 = getelementptr inbounds %struct._Image, ptr %537, i64 0, i32 67
  %553 = load ptr, ptr %552, align 8, !tbaa !91
  %554 = icmp eq ptr %553, null
  br i1 %554, label %555, label %570

555:                                              ; preds = %551
  %556 = load i64, ptr %543, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %557 = getelementptr inbounds %struct._Image, ptr %537, i64 0, i32 47
  %558 = load ptr, ptr %557, align 8, !tbaa !92
  %559 = icmp eq ptr %558, null
  br i1 %559, label %567, label %560

560:                                              ; preds = %555
  %561 = getelementptr inbounds %struct._Image, ptr %537, i64 0, i32 53
  %562 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull @LoadImageTag, ptr noundef nonnull %561) #9
  %563 = load ptr, ptr %557, align 8, !tbaa !92
  %564 = getelementptr inbounds %struct._Image, ptr %537, i64 0, i32 48
  %565 = load ptr, ptr %564, align 8, !tbaa !93
  %566 = call i32 %563(ptr noundef nonnull %3, i64 noundef %309, i64 noundef %556, ptr noundef %565) #9
  br label %567

567:                                              ; preds = %555, %560
  %568 = phi i32 [ %566, %560 ], [ 1, %555 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %575, label %570

570:                                              ; preds = %551, %567
  %571 = add nuw nsw i64 %309, 1
  %572 = getelementptr inbounds %struct._Image, ptr %537, i64 0, i32 8
  %573 = load i64, ptr %572, align 8, !tbaa !73
  %574 = icmp slt i64 %571, %573
  br i1 %574, label %305, label %575, !llvm.loop !94

575:                                              ; preds = %570, %305, %533, %567, %283
  %576 = phi ptr [ %178, %283 ], [ %537, %570 ], [ %307, %305 ], [ %537, %533 ], [ %537, %567 ]
  %577 = call i32 @EOFBlob(ptr noundef %576) #9
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %586, label %579

579:                                              ; preds = %575
  %580 = tail call ptr @__errno_location() #11
  %581 = load i32, ptr %580, align 4, !tbaa !95
  %582 = call ptr @GetExceptionMessage(i32 noundef %581) #9
  %583 = getelementptr inbounds %struct._Image, ptr %576, i64 0, i32 53
  %584 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 510, i32 noundef 425, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull %583, ptr noundef %582) #9
  %585 = call ptr @DestroyString(ptr noundef %582) #9
  br label %586

586:                                              ; preds = %579, %575
  %587 = call i32 @CloseBlob(ptr noundef %576) #9
  %588 = call ptr @GetFirstImageInList(ptr noundef %576) #9
  br label %589

589:                                              ; preds = %460, %486, %490, %466, %470, %351, %355, %201, %205, %82, %86, %69, %73, %38, %42, %148, %175, %586, %18
  %590 = phi ptr [ null, %18 ], [ %588, %586 ], [ null, %175 ], [ null, %148 ], [ null, %42 ], [ null, %38 ], [ null, %73 ], [ null, %69 ], [ null, %86 ], [ null, %82 ], [ null, %205 ], [ null, %201 ], [ null, %355 ], [ null, %351 ], [ null, %470 ], [ null, %466 ], [ null, %490 ], [ null, %486 ], [ null, %460 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %590
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @WriteTGAImage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 707, ptr noundef nonnull @.str.7, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %12 = tail call i32 @OpenBlob(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull %11) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %355, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !62
  %17 = icmp ugt i64 %16, 65535
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !73
  %21 = icmp ugt i64 %20, 65535
  br i1 %21, label %22, label %33

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 715, i32 noundef 465, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9, ptr noundef nonnull %23) #9
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !97
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %351, label %28

28:                                               ; preds = %22, %28
  %29 = phi ptr [ %31, %28 ], [ %1, %22 ]
  %30 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 67
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %351, label %28, !llvm.loop !98

33:                                               ; preds = %18
  %34 = tail call i32 @TransformImageColorspace(ptr noundef %1, i32 noundef 13) #9
  %35 = tail call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull @.str.12) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #12
  %39 = tail call i64 @llvm.umin.i64(i64 %38, i64 255)
  %40 = trunc i64 %39 to i8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i8 [ %40, %37 ], [ 0, %33 ]
  %43 = load i64, ptr %15, align 8, !tbaa !62
  %44 = trunc i64 %43 to i16
  %45 = load i64, ptr %19, align 8, !tbaa !73
  %46 = trunc i64 %45 to i16
  %47 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 31
  %48 = load i32, ptr %47, align 4, !tbaa !99
  switch i32 %48, label %49 [
    i32 6, label %56
    i32 7, label %56
    i32 4, label %56
  ]

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !74
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = tail call i32 @IsGrayImage(ptr noundef %1, ptr noundef nonnull %11) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %41, %41, %41, %53, %49
  %57 = load i32, ptr %1, align 8, !tbaa !76
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %61 = load i64, ptr %60, align 8, !tbaa !78
  %62 = icmp ugt i64 %61, 256
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %56
  %64 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !74
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i8 0, i8 8
  %68 = select i1 %66, i8 24, i8 32
  br label %71

69:                                               ; preds = %59
  %70 = trunc i64 %61 to i16
  br label %71

71:                                               ; preds = %63, %53, %69
  %72 = phi i8 [ 0, %69 ], [ 0, %53 ], [ %67, %63 ]
  %73 = phi i8 [ 8, %69 ], [ 8, %53 ], [ %68, %63 ]
  %74 = phi i8 [ 24, %69 ], [ 0, %53 ], [ 0, %63 ]
  %75 = phi i16 [ %70, %69 ], [ 0, %53 ], [ 0, %63 ]
  %76 = phi i1 [ true, %69 ], [ false, %53 ], [ false, %63 ]
  %77 = phi i1 [ false, %69 ], [ true, %53 ], [ false, %63 ]
  %78 = phi i8 [ 1, %69 ], [ 3, %53 ], [ 2, %63 ]
  %79 = phi i8 [ 1, %69 ], [ 0, %53 ], [ 0, %63 ]
  %80 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %42) #9
  %81 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %79) #9
  %82 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %78) #9
  %83 = tail call i64 @WriteBlobLSBShort(ptr noundef %1, i16 noundef zeroext 0) #9
  %84 = tail call i64 @WriteBlobLSBShort(ptr noundef %1, i16 noundef zeroext %75) #9
  %85 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %74) #9
  %86 = tail call i64 @WriteBlobLSBShort(ptr noundef %1, i16 noundef zeroext 0) #9
  %87 = tail call i64 @WriteBlobLSBShort(ptr noundef %1, i16 noundef zeroext 0) #9
  %88 = tail call i64 @WriteBlobLSBShort(ptr noundef %1, i16 noundef zeroext %44) #9
  %89 = tail call i64 @WriteBlobLSBShort(ptr noundef %1, i16 noundef zeroext %46) #9
  %90 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %73) #9
  %91 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %72) #9
  %92 = icmp eq i8 %42, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %71
  %94 = zext i8 %42 to i64
  %95 = tail call i64 @WriteBlob(ptr noundef %1, i64 noundef %94, ptr noundef %35) #9
  br label %96

96:                                               ; preds = %93, %71
  br i1 %76, label %97, label %163

97:                                               ; preds = %96
  %98 = zext nneg i16 %75 to i64
  %99 = tail call ptr @AcquireQuantumMemory(i64 noundef %98, i64 noundef 3) #10
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %103 = load i64, ptr %102, align 8, !tbaa !78
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %157

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 11
  br label %121

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %109 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 790, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %108) #9
  %110 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %111 = load i32, ptr %110, align 4, !tbaa !97
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %107, %113
  %114 = phi ptr [ %116, %113 ], [ %1, %107 ]
  %115 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 67
  %116 = load ptr, ptr %115, align 8, !tbaa !91
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %113, !llvm.loop !100

118:                                              ; preds = %113, %107
  %119 = phi ptr [ %1, %107 ], [ %114, %113 ]
  %120 = tail call i32 @CloseBlob(ptr noundef %119) #9
  br label %161

121:                                              ; preds = %105, %121
  %122 = phi i64 [ 0, %105 ], [ %154, %121 ]
  %123 = phi ptr [ %99, %105 ], [ %153, %121 ]
  %124 = load ptr, ptr %106, align 8, !tbaa !85
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 %122
  %126 = load i16, ptr %125, align 2, !tbaa !84
  %127 = zext i16 %126 to i64
  %128 = add nuw nsw i64 %127, 128
  %129 = lshr i64 %128, 8
  %130 = sub nsw i64 %128, %129
  %131 = lshr i64 %130, 8
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %132, ptr %123, align 1, !tbaa !80
  %134 = load ptr, ptr %106, align 8, !tbaa !85
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 %122, i32 1
  %136 = load i16, ptr %135, align 2, !tbaa !83
  %137 = zext i16 %136 to i64
  %138 = add nuw nsw i64 %137, 128
  %139 = lshr i64 %138, 8
  %140 = sub nsw i64 %138, %139
  %141 = lshr i64 %140, 8
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds i8, ptr %123, i64 2
  store i8 %142, ptr %133, align 1, !tbaa !80
  %144 = load ptr, ptr %106, align 8, !tbaa !85
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 %122, i32 2
  %146 = load i16, ptr %145, align 2, !tbaa !82
  %147 = zext i16 %146 to i64
  %148 = add nuw nsw i64 %147, 128
  %149 = lshr i64 %148, 8
  %150 = sub nsw i64 %148, %149
  %151 = lshr i64 %150, 8
  %152 = trunc i64 %151 to i8
  %153 = getelementptr inbounds i8, ptr %123, i64 3
  store i8 %152, ptr %143, align 1, !tbaa !80
  %154 = add nuw nsw i64 %122, 1
  %155 = load i64, ptr %102, align 8, !tbaa !78
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %121, label %157, !llvm.loop !101

157:                                              ; preds = %121, %101
  %158 = mul nuw nsw i64 %98, 3
  %159 = tail call i64 @WriteBlob(ptr noundef %1, i64 noundef %158, ptr noundef nonnull %99) #9
  %160 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %99) #9
  br label %161

161:                                              ; preds = %157, %118
  %162 = phi ptr [ %119, %118 ], [ %1, %157 ]
  br i1 %100, label %355, label %163

163:                                              ; preds = %161, %96
  %164 = phi ptr [ %162, %161 ], [ %1, %96 ]
  %165 = zext nneg i8 %73 to i64
  %166 = and i64 %43, 65535
  %167 = mul nuw nsw i64 %166, %165
  %168 = lshr exact i64 %167, 3
  %169 = tail call ptr @AcquireQuantumMemory(i64 noundef %168, i64 noundef 1) #10
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %183

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 58
  %173 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 53
  %174 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %172, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 809, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %173) #9
  %175 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !97
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %351, label %178

178:                                              ; preds = %171, %178
  %179 = phi ptr [ %181, %178 ], [ %164, %171 ]
  %180 = getelementptr inbounds %struct._Image, ptr %179, i64 0, i32 67
  %181 = load ptr, ptr %180, align 8, !tbaa !91
  %182 = icmp eq ptr %181, null
  br i1 %182, label %351, label %178, !llvm.loop !102

183:                                              ; preds = %163
  %184 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 8
  %185 = load i64, ptr %184, align 8, !tbaa !73
  %186 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 7
  %187 = add i64 %185, -1
  %188 = icmp sgt i64 %187, -1
  br i1 %188, label %189, label %349

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 58
  %191 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 6
  %192 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 1
  %193 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 1
  %194 = ptrtoint ptr %169 to i64
  %195 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 67
  %196 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 47
  %197 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 53
  %198 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 48
  %199 = load i64, ptr %186, align 8, !tbaa !62
  %200 = tail call ptr @GetVirtualPixels(ptr noundef %164, i64 noundef 0, i64 noundef %187, i64 noundef %199, i64 noundef 1, ptr noundef nonnull %190) #9
  %201 = icmp eq ptr %200, null
  br i1 %201, label %349, label %202

202:                                              ; preds = %189, %344
  %203 = phi ptr [ %347, %344 ], [ %200, %189 ]
  %204 = phi i64 [ %345, %344 ], [ %187, %189 ]
  %205 = call ptr @GetVirtualIndexQueue(ptr noundef %164) #9
  %206 = load i64, ptr %186, align 8, !tbaa !62
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %319

208:                                              ; preds = %202
  %209 = icmp eq ptr %205, null
  %210 = icmp eq ptr %205, null
  br label %211

211:                                              ; preds = %208, %313
  %212 = phi ptr [ %203, %208 ], [ %315, %313 ]
  %213 = phi i64 [ 0, %208 ], [ %316, %313 ]
  %214 = phi ptr [ %169, %208 ], [ %314, %313 ]
  br i1 %76, label %215, label %223

215:                                              ; preds = %211
  br i1 %210, label %220, label %216

216:                                              ; preds = %215
  %217 = getelementptr inbounds i16, ptr %205, i64 %213
  %218 = load i16, ptr %217, align 2, !tbaa !89
  %219 = trunc i16 %218 to i8
  br label %220

220:                                              ; preds = %215, %216
  %221 = phi i8 [ %219, %216 ], [ 0, %215 ]
  %222 = getelementptr inbounds i8, ptr %214, i64 1
  store i8 %221, ptr %214, align 1, !tbaa !80
  br label %313

223:                                              ; preds = %211
  br i1 %77, label %224, label %256

224:                                              ; preds = %223
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %225 = load i32, ptr %193, align 4, !tbaa !108, !alias.scope !103, !noalias !106
  %226 = icmp eq i32 %225, 2
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %212, i64 0, i32 2
  %228 = load i16, ptr %227, align 2, !tbaa !82, !alias.scope !106, !noalias !103
  %229 = uitofp i16 %228 to float
  br i1 %226, label %239, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %212, i64 0, i32 1
  %232 = load i16, ptr %231, align 2, !tbaa !83, !alias.scope !106, !noalias !103
  %233 = uitofp i16 %232 to float
  %234 = fmul float %233, 0x3FE6E29300000000
  %235 = call float @llvm.fmuladd.f32(float %229, float 0x3FCB384FE0000000, float %234)
  %236 = load i16, ptr %212, align 2, !tbaa !84, !alias.scope !106, !noalias !103
  %237 = uitofp i16 %236 to float
  %238 = call float @llvm.fmuladd.f32(float %237, float 0x3FB27AC820000000, float %235)
  br label %239

239:                                              ; preds = %224, %230
  %240 = phi float [ %238, %230 ], [ %229, %224 ]
  %241 = fcmp ugt float %240, 0.000000e+00
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = fcmp ult float %240, 6.553500e+04
  br i1 %243, label %244, label %247

244:                                              ; preds = %242
  %245 = fadd float %240, 5.000000e-01
  %246 = fptoui float %245 to i16
  br label %247

247:                                              ; preds = %239, %242, %244
  %248 = phi i16 [ %246, %244 ], [ 0, %239 ], [ -1, %242 ]
  %249 = zext i16 %248 to i64
  %250 = add nuw nsw i64 %249, 128
  %251 = lshr i64 %250, 8
  %252 = sub nsw i64 %250, %251
  %253 = lshr i64 %252, 8
  %254 = trunc i64 %253 to i8
  %255 = getelementptr inbounds i8, ptr %214, i64 1
  store i8 %254, ptr %214, align 1, !tbaa !80
  br label %313

256:                                              ; preds = %223
  %257 = load i16, ptr %212, align 2, !tbaa !84
  %258 = zext i16 %257 to i64
  %259 = add nuw nsw i64 %258, 128
  %260 = lshr i64 %259, 8
  %261 = sub nsw i64 %259, %260
  %262 = lshr i64 %261, 8
  %263 = trunc i64 %262 to i8
  %264 = getelementptr inbounds i8, ptr %214, i64 1
  store i8 %263, ptr %214, align 1, !tbaa !80
  %265 = getelementptr inbounds %struct._PixelPacket, ptr %212, i64 0, i32 1
  %266 = load i16, ptr %265, align 2, !tbaa !83
  %267 = zext i16 %266 to i64
  %268 = add nuw nsw i64 %267, 128
  %269 = lshr i64 %268, 8
  %270 = sub nsw i64 %268, %269
  %271 = lshr i64 %270, 8
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds i8, ptr %214, i64 2
  store i8 %272, ptr %264, align 1, !tbaa !80
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %212, i64 0, i32 2
  %275 = load i16, ptr %274, align 2, !tbaa !82
  %276 = zext i16 %275 to i64
  %277 = add nuw nsw i64 %276, 128
  %278 = lshr i64 %277, 8
  %279 = sub nsw i64 %277, %278
  %280 = lshr i64 %279, 8
  %281 = trunc i64 %280 to i8
  %282 = getelementptr inbounds i8, ptr %214, i64 3
  store i8 %281, ptr %273, align 1, !tbaa !80
  %283 = load i32, ptr %191, align 8, !tbaa !74
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %256
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %212, i64 0, i32 3
  %287 = load i16, ptr %286, align 2, !tbaa !81
  %288 = xor i16 %287, -1
  %289 = zext i16 %288 to i64
  %290 = add nuw nsw i64 %289, 128
  %291 = lshr i64 %290, 8
  %292 = sub nsw i64 %290, %291
  %293 = lshr i64 %292, 8
  %294 = trunc i64 %293 to i8
  %295 = getelementptr inbounds i8, ptr %214, i64 4
  store i8 %294, ptr %282, align 1, !tbaa !80
  br label %296

296:                                              ; preds = %285, %256
  %297 = phi ptr [ %295, %285 ], [ %282, %256 ]
  %298 = load i32, ptr %192, align 4, !tbaa !108
  %299 = icmp eq i32 %298, 12
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  br i1 %209, label %304, label %301

301:                                              ; preds = %300
  %302 = getelementptr inbounds i16, ptr %205, i64 %213
  %303 = load i16, ptr %302, align 2, !tbaa !89
  br label %304

304:                                              ; preds = %300, %301
  %305 = phi i16 [ %303, %301 ], [ 0, %300 ]
  %306 = zext i16 %305 to i64
  %307 = add nuw nsw i64 %306, 128
  %308 = lshr i64 %307, 8
  %309 = sub nsw i64 %307, %308
  %310 = lshr i64 %309, 8
  %311 = trunc i64 %310 to i8
  %312 = getelementptr inbounds i8, ptr %297, i64 1
  store i8 %311, ptr %297, align 1, !tbaa !80
  br label %313

313:                                              ; preds = %247, %304, %296, %220
  %314 = phi ptr [ %222, %220 ], [ %255, %247 ], [ %312, %304 ], [ %297, %296 ]
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %212, i64 1
  %316 = add nuw nsw i64 %213, 1
  %317 = load i64, ptr %186, align 8, !tbaa !62
  %318 = icmp slt i64 %316, %317
  br i1 %318, label %211, label %319, !llvm.loop !109

319:                                              ; preds = %313, %202
  %320 = phi ptr [ %169, %202 ], [ %314, %313 ]
  %321 = ptrtoint ptr %320 to i64
  %322 = sub i64 %321, %194
  %323 = call i64 @WriteBlob(ptr noundef %164, i64 noundef %322, ptr noundef nonnull %169) #9
  %324 = load ptr, ptr %195, align 8, !tbaa !91
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %341

326:                                              ; preds = %319
  %327 = load i64, ptr %184, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %328 = load ptr, ptr %196, align 8, !tbaa !92
  %329 = icmp eq ptr %328, null
  br i1 %329, label %335, label %330

330:                                              ; preds = %326
  %331 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull @SaveImageTag, ptr noundef nonnull %197) #9
  %332 = load ptr, ptr %196, align 8, !tbaa !92
  %333 = load ptr, ptr %198, align 8, !tbaa !93
  %334 = call i32 %332(ptr noundef nonnull %3, i64 noundef %204, i64 noundef %327, ptr noundef %333) #9
  br label %335

335:                                              ; preds = %326, %330
  %336 = phi i32 [ %334, %330 ], [ 1, %326 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  %337 = icmp ne i32 %336, 0
  %338 = add i64 %204, -1
  %339 = icmp sgt i64 %338, -1
  %340 = and i1 %337, %339
  br i1 %340, label %344, label %349

341:                                              ; preds = %319
  %342 = add i64 %204, -1
  %343 = icmp sgt i64 %342, -1
  br i1 %343, label %344, label %349

344:                                              ; preds = %341, %335
  %345 = phi i64 [ %342, %341 ], [ %338, %335 ]
  %346 = load i64, ptr %186, align 8, !tbaa !62
  %347 = call ptr @GetVirtualPixels(ptr noundef %164, i64 noundef 0, i64 noundef %345, i64 noundef %346, i64 noundef 1, ptr noundef nonnull %190) #9
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %202, !llvm.loop !110

349:                                              ; preds = %335, %344, %341, %189, %183
  %350 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %169) #9
  br label %351

351:                                              ; preds = %178, %28, %171, %22, %349
  %352 = phi ptr [ %164, %349 ], [ %1, %22 ], [ %164, %171 ], [ %29, %28 ], [ %179, %178 ]
  %353 = phi i32 [ 1, %349 ], [ 0, %22 ], [ 0, %171 ], [ 0, %28 ], [ 0, %178 ]
  %354 = call i32 @CloseBlob(ptr noundef %352) #9
  br label %355

355:                                              ; preds = %351, %10, %161
  %356 = phi i32 [ 0, %161 ], [ 0, %10 ], [ %353, %351 ]
  ret i32 %356
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

declare ptr @RegisterMagickInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @UnregisterTGAImage() local_unnamed_addr #0 {
  %1 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str) #9
  %2 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.2) #9
  %3 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.3) #9
  %4 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.4) #9
  ret void
}

declare i32 @UnregisterMagickInfo(ptr noundef) local_unnamed_addr #2

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #2

declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

declare i64 @ReadBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ReadBlobByte(ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @ReadBlobLSBShort(ptr noundef) local_unnamed_addr #2

declare i32 @EOFBlob(ptr noundef) local_unnamed_addr #2

declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @QueueAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @WriteBlobByte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i64 @WriteBlobLSBShort(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 48}
!35 = !{!"_MagickInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !40, i64 128, !36, i64 136, !36, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!35, !36, i64 56}
!42 = !{!35, !39, i64 80}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!46, !39, i64 16712}
!46 = !{!"_ImageInfo", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !40, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !47, i64 144, !47, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !39, i64 184, !39, i64 188, !40, i64 192, !39, i64 200, !39, i64 204, !39, i64 208, !40, i64 216, !39, i64 224, !39, i64 228, !36, i64 232, !36, i64 240, !39, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !40, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !39, i64 16712, !36, i64 16720, !40, i64 16728, !40, i64 16736, !48, i64 16744, !40, i64 16752, !39, i64 16760, !48, i64 16764, !36, i64 16776, !39, i64 16784}
!47 = !{!"double", !37, i64 0}
!48 = !{!"_PixelPacket", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6}
!49 = !{!"short", !37, i64 0}
!50 = !{!51, !37, i64 1}
!51 = !{!"_TGAInfo", !37, i64 0, !37, i64 1, !37, i64 2, !49, i64 4, !49, i64 6, !37, i64 8, !49, i64 10, !49, i64 12, !49, i64 14, !49, i64 16, !37, i64 18, !37, i64 19}
!52 = !{!51, !37, i64 2}
!53 = !{!51, !49, i64 4}
!54 = !{!51, !49, i64 6}
!55 = !{!51, !37, i64 8}
!56 = !{!51, !49, i64 10}
!57 = !{!51, !49, i64 12}
!58 = !{!51, !49, i64 14}
!59 = !{!51, !49, i64 16}
!60 = !{!51, !37, i64 18}
!61 = !{!51, !37, i64 19}
!62 = !{!63, !40, i64 40}
!63 = !{!"_Image", !39, i64 0, !39, i64 4, !39, i64 8, !40, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !36, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !47, i64 104, !64, i64 112, !39, i64 208, !36, i64 216, !39, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !40, i64 256, !47, i64 264, !47, i64 272, !66, i64 280, !66, i64 312, !66, i64 344, !47, i64 376, !47, i64 384, !47, i64 392, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !36, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !67, i64 480, !68, i64 504, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !40, i64 12904, !40, i64 12912, !70, i64 12920, !39, i64 12976, !40, i64 12984, !36, i64 12992, !71, i64 13000, !71, i64 13032, !36, i64 13064, !40, i64 13072, !40, i64 13080, !36, i64 13088, !36, i64 13096, !36, i64 13104, !39, i64 13112, !39, i64 13116, !48, i64 13120, !36, i64 13128, !66, i64 13136, !36, i64 13168, !36, i64 13176, !39, i64 13184, !39, i64 13188, !72, i64 13192, !39, i64 13200, !40, i64 13208, !40, i64 13216, !39, i64 13224, !40, i64 13232}
!64 = !{!"_ChromaticityInfo", !65, i64 0, !65, i64 24, !65, i64 48, !65, i64 72}
!65 = !{!"_PrimaryInfo", !47, i64 0, !47, i64 8, !47, i64 16}
!66 = !{!"_RectangleInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!67 = !{!"_ErrorInfo", !47, i64 0, !47, i64 8, !47, i64 16}
!68 = !{!"_TimerInfo", !69, i64 0, !69, i64 24, !39, i64 48, !40, i64 56}
!69 = !{!"_Timer", !47, i64 0, !47, i64 8, !47, i64 16}
!70 = !{!"_ExceptionInfo", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !40, i64 48}
!71 = !{!"_ProfileInfo", !36, i64 0, !40, i64 8, !36, i64 16, !40, i64 24}
!72 = !{!"long long", !37, i64 0}
!73 = !{!63, !40, i64 48}
!74 = !{!63, !39, i64 32}
!75 = !{!63, !40, i64 56}
!76 = !{!63, !39, i64 0}
!77 = !{!63, !39, i64 8}
!78 = !{!63, !40, i64 64}
!79 = !{!51, !37, i64 0}
!80 = !{!37, !37, i64 0}
!81 = !{!48, !49, i64 6}
!82 = !{!48, !49, i64 4}
!83 = !{!48, !49, i64 2}
!84 = !{!48, !49, i64 0}
!85 = !{!63, !36, i64 72}
!86 = distinct !{!86, !87, !88}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!49, !49, i64 0}
!90 = distinct !{!90, !87, !88}
!91 = !{!63, !36, i64 13088}
!92 = !{!63, !36, i64 568}
!93 = !{!63, !36, i64 576}
!94 = distinct !{!94, !87, !88}
!95 = !{!39, !39, i64 0}
!96 = !{!63, !39, i64 12976}
!97 = !{!46, !39, i64 12}
!98 = distinct !{!98, !87, !88}
!99 = !{!46, !39, i64 204}
!100 = distinct !{!100, !87, !88}
!101 = distinct !{!101, !87, !88}
!102 = distinct !{!102, !87, !88}
!103 = !{!104}
!104 = distinct !{!104, !105, !"GetPixelLuma: argument 0"}
!105 = distinct !{!105, !"GetPixelLuma"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"GetPixelLuma: argument 1"}
!108 = !{!63, !39, i64 4}
!109 = distinct !{!109, !87, !88}
!110 = distinct !{!110, !87, !88}
