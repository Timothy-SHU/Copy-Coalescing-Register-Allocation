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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @RegisterTGAImage() local_unnamed_addr #0 {
  %1 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str) #10
  %2 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %2, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 10
  store i32 0, ptr %4, align 8, !tbaa !14
  %5 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #10
  %6 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !15
  %7 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #10
  %8 = getelementptr inbounds %struct._MagickInfo, ptr %1, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !16
  %9 = tail call ptr @RegisterMagickInfo(ptr noundef %1) #10
  %10 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.2) #10
  %11 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %11, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %12, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 10
  store i32 0, ptr %13, align 8, !tbaa !14
  %14 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #10
  %15 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !15
  %16 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #10
  %17 = getelementptr inbounds %struct._MagickInfo, ptr %10, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !16
  %18 = tail call ptr @RegisterMagickInfo(ptr noundef %10) #10
  %19 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.3) #10
  %20 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %20, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %21, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 10
  store i32 0, ptr %22, align 8, !tbaa !14
  %23 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #10
  %24 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !15
  %25 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #10
  %26 = getelementptr inbounds %struct._MagickInfo, ptr %19, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !16
  %27 = tail call ptr @RegisterMagickInfo(ptr noundef %19) #10
  %28 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.4) #10
  %29 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 6
  store ptr @ReadTGAImage, ptr %29, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 7
  store ptr @WriteTGAImage, ptr %30, align 8, !tbaa !13
  %31 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 10
  store i32 0, ptr %31, align 8, !tbaa !14
  %32 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #10
  %33 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !15
  %34 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #10
  %35 = getelementptr inbounds %struct._MagickInfo, ptr %28, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !16
  %36 = tail call ptr @RegisterMagickInfo(ptr noundef %28) #10
  ret i64 428304
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @SetMagickInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ReadTGAImage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct._PixelPacket, align 8
  %4 = alloca %struct._TGAInfo, align 2
  %5 = alloca [4 x i8], align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 185, ptr noundef nonnull @.str.7, ptr noundef nonnull %11) #10
  br label %13

13:                                               ; preds = %10, %2
  %14 = tail call ptr @AcquireImage(ptr noundef nonnull %0) #10
  %15 = tail call i32 @OpenBlob(ptr noundef nonnull %0, ptr noundef %14, i32 noundef 2, ptr noundef %1) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @DestroyImageList(ptr noundef %14) #10
  br label %477

19:                                               ; preds = %13
  %20 = call i64 @ReadBlob(ptr noundef %14, i64 noundef 1, ptr noundef nonnull %4) #10
  %21 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 1
  store i8 %22, ptr %23, align 1, !tbaa !22
  %24 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 2
  store i8 %25, ptr %26, align 2, !tbaa !24
  %27 = icmp eq i64 %20, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = and i32 %24, 247
  %30 = add nsw i32 %29, -4
  %31 = icmp ult i32 %30, -3
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %29, 1
  %34 = load i8, ptr %23, align 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %28, %19
  %38 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %39 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 212, i32 noundef 425, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %38) #10
  %40 = icmp eq ptr %14, null
  br i1 %40, label %477, label %41

41:                                               ; preds = %37
  %42 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %43 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

44:                                               ; preds = %32
  %45 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %14) #10
  %46 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 3
  store i16 %45, ptr %46, align 2, !tbaa !25
  %47 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %14) #10
  %48 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 4
  store i16 %47, ptr %48, align 2, !tbaa !26
  %49 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 5
  store i8 %50, ptr %51, align 2, !tbaa !27
  %52 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %14) #10
  %53 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 6
  store i16 %52, ptr %53, align 2, !tbaa !28
  %54 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %14) #10
  %55 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 7
  store i16 %54, ptr %55, align 2, !tbaa !29
  %56 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %14) #10
  %57 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 8
  store i16 %56, ptr %57, align 2, !tbaa !30
  %58 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %14) #10
  %59 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 9
  store i16 %58, ptr %59, align 2, !tbaa !31
  %60 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 10
  store i8 %61, ptr %62, align 2, !tbaa !32
  %63 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds %struct._TGAInfo, ptr %4, i64 0, i32 11
  store i8 %64, ptr %65, align 1, !tbaa !33
  %66 = call i32 @EOFBlob(ptr noundef %14) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %44
  %69 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %70 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 223, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %69) #10
  %71 = icmp eq ptr %14, null
  br i1 %71, label %477, label %72

72:                                               ; preds = %68
  %73 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %74 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

75:                                               ; preds = %44
  %76 = load i8, ptr %62, align 2
  %77 = freeze i8 %76
  %78 = add i8 %77, -17
  %79 = icmp ult i8 %78, -15
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  switch i8 %77, label %81 [
    i8 32, label %88
    i8 24, label %88
  ]

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %83 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 226, i32 noundef 425, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %82) #10
  %84 = icmp eq ptr %14, null
  br i1 %84, label %477, label %85

85:                                               ; preds = %81
  %86 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %87 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

88:                                               ; preds = %80, %80, %75
  %89 = load i16, ptr %57, align 2, !tbaa !30
  %90 = zext i16 %89 to i64
  %91 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  store i64 %90, ptr %91, align 8, !tbaa !34
  %92 = load i16, ptr %59, align 2, !tbaa !31
  %93 = zext i16 %92 to i64
  %94 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  store i64 %93, ptr %94, align 8, !tbaa !45
  %95 = load i8, ptr %65, align 1, !tbaa !33
  %96 = and i8 %95, 15
  %97 = icmp ne i8 %96, 0
  %98 = icmp eq i8 %77, 32
  %99 = or i1 %98, %97
  %100 = load i8, ptr %51, align 2
  %101 = icmp eq i8 %100, 32
  %102 = zext i1 %101 to i32
  %103 = select i1 %99, i32 1, i32 %102
  %104 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 6
  store i32 %103, ptr %104, align 8, !tbaa !46
  %105 = load i8, ptr %26, align 2
  %106 = and i8 %105, -9
  %107 = icmp eq i8 %106, 1
  %108 = load i8, ptr %51, align 2
  %109 = select i1 %107, i8 %108, i8 %77
  %110 = icmp ult i8 %109, 9
  %111 = icmp ult i8 %109, 17
  %112 = select i1 %111, i64 5, i64 8
  %113 = select i1 %110, i64 8, i64 %112
  %114 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 9
  store i64 %113, ptr %114, align 8
  %115 = add i8 %105, -1
  %116 = call i8 @llvm.fshl.i8(i8 %115, i8 %115, i8 7)
  switch i8 %116, label %123 [
    i8 5, label %117
    i8 4, label %117
    i8 1, label %117
    i8 0, label %117
  ]

117:                                              ; preds = %88, %88, %88, %88
  store i32 2, ptr %14, align 8, !tbaa !47
  %118 = load i8, ptr %26, align 2
  %119 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 2
  %120 = and i8 %118, -3
  %121 = icmp eq i8 %120, 9
  %122 = select i1 %121, i32 12, i32 1
  store i32 %122, ptr %119, align 8
  br label %130

123:                                              ; preds = %88
  %124 = load i32, ptr %14, align 8, !tbaa !47
  %125 = icmp eq i32 %124, 2
  %126 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 2
  %127 = and i8 %105, -3
  %128 = icmp eq i8 %127, 9
  %129 = select i1 %128, i32 12, i32 1
  store i32 %129, ptr %126, align 8
  br i1 %125, label %130, label %149

130:                                              ; preds = %117, %123
  %131 = load i8, ptr %23, align 1, !tbaa !22
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load i16, ptr %48, align 2, !tbaa !26
  %135 = zext i16 %134 to i64
  %136 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 10
  store i64 %135, ptr %136, align 8, !tbaa !48
  br label %149

137:                                              ; preds = %130
  %138 = load i8, ptr %62, align 2, !tbaa !32
  %139 = zext nneg i8 %138 to i64
  %140 = shl nuw i64 1, %139
  %141 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 10
  store i64 %140, ptr %141, align 8, !tbaa !48
  %142 = call i32 @AcquireImageColormap(ptr noundef nonnull %14, i64 noundef %140) #10
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %146 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 267, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %145) #10
  %147 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %148 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

149:                                              ; preds = %137, %133, %123
  %150 = load i8, ptr %4, align 2, !tbaa !49
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %149
  %153 = zext i8 %150 to i64
  %154 = or disjoint i64 %153, 4096
  %155 = call ptr @AcquireQuantumMemory(i64 noundef %154, i64 noundef 1) #12
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %159 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 287, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %158) #10
  %160 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %161 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

162:                                              ; preds = %152
  %163 = load i8, ptr %4, align 2, !tbaa !49
  %164 = zext i8 %163 to i64
  %165 = call i64 @ReadBlob(ptr noundef nonnull %14, i64 noundef %164, ptr noundef nonnull %155) #10
  %166 = load i8, ptr %4, align 2, !tbaa !49
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds i8, ptr %155, i64 %167
  store i8 0, ptr %168, align 1, !tbaa !50
  %169 = call i32 @SetImageProperty(ptr noundef nonnull %14, ptr noundef nonnull @.str.12, ptr noundef nonnull %155) #10
  %170 = call ptr @DestroyString(ptr noundef nonnull %155) #10
  br label %171

171:                                              ; preds = %162, %149
  %172 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 8) #10
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  store i16 0, ptr %173, align 2, !tbaa !51
  %174 = load i8, ptr %23, align 1, !tbaa !22
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %248, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 10
  %178 = load i64, ptr %177, align 8, !tbaa !48
  %179 = call i32 @AcquireImageColormap(ptr noundef nonnull %14, i64 noundef %178) #10
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %176
  %182 = load i64, ptr %177, align 8, !tbaa !48
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %248

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 1
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 2
  %187 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 11
  br label %193

188:                                              ; preds = %176
  %189 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %190 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 301, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %189) #10
  %191 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %192 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

193:                                              ; preds = %184, %241
  %194 = phi i64 [ 0, %184 ], [ %245, %241 ]
  %195 = load i8, ptr %51, align 2, !tbaa !27
  switch i8 %195, label %196 [
    i8 32, label %227
    i8 15, label %200
    i8 16, label %200
    i8 24, label %217
  ]

196:                                              ; preds = %193
  %197 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %198 = trunc i32 %197 to i8
  %199 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %198) #13
  store i16 %199, ptr %186, align 4, !tbaa !52
  store i16 %199, ptr %185, align 2, !tbaa !53
  store i16 %199, ptr %3, align 8, !tbaa !54
  br label %241

200:                                              ; preds = %193, %193
  %201 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %202 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %203 = lshr i32 %202, 2
  %204 = and i32 %203, 31
  %205 = zext nneg i32 %204 to i64
  %206 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %205) #13
  store i16 %206, ptr %186, align 4, !tbaa !52
  %207 = shl i32 %202, 3
  %208 = and i32 %207, 24
  %209 = lshr i32 %201, 5
  %210 = and i32 %209, 7
  %211 = or disjoint i32 %208, %210
  %212 = zext nneg i32 %211 to i64
  %213 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %212) #13
  store i16 %213, ptr %185, align 2, !tbaa !53
  %214 = and i32 %201, 31
  %215 = zext nneg i32 %214 to i64
  %216 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %215) #13
  store i16 %216, ptr %3, align 8, !tbaa !54
  br label %241

217:                                              ; preds = %193
  %218 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %219 = trunc i32 %218 to i8
  %220 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %219) #13
  store i16 %220, ptr %3, align 8, !tbaa !54
  %221 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %222 = trunc i32 %221 to i8
  %223 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %222) #13
  store i16 %223, ptr %185, align 2, !tbaa !53
  %224 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %225 = trunc i32 %224 to i8
  %226 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %225) #13
  store i16 %226, ptr %186, align 4, !tbaa !52
  br label %241

227:                                              ; preds = %193
  %228 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %229 = trunc i32 %228 to i8
  %230 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %229) #13
  store i16 %230, ptr %3, align 8, !tbaa !54
  %231 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %232 = trunc i32 %231 to i8
  %233 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %232) #13
  store i16 %233, ptr %185, align 2, !tbaa !53
  %234 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %235 = trunc i32 %234 to i8
  %236 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %235) #13
  store i16 %236, ptr %186, align 4, !tbaa !52
  %237 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %238 = trunc i32 %237 to i8
  %239 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %238) #13
  %240 = xor i16 %239, -1
  store i16 %240, ptr %173, align 2, !tbaa !51
  br label %241

241:                                              ; preds = %227, %217, %200, %196
  %242 = load ptr, ptr %187, align 8, !tbaa !55
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 %194
  %244 = load i64, ptr %3, align 8
  store i64 %244, ptr %243, align 2
  %245 = add nuw nsw i64 %194, 1
  %246 = load i64, ptr %177, align 8, !tbaa !48
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %193, label %248, !llvm.loop !56

248:                                              ; preds = %241, %181, %171
  store i8 0, ptr %6, align 1, !tbaa !50
  %249 = load i64, ptr %94, align 8, !tbaa !45
  %250 = icmp sgt i64 %249, 0
  br i1 %250, label %251, label %464

251:                                              ; preds = %248
  %252 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 1
  %254 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %255 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 2
  %256 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  %257 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 11
  %258 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 67
  br label %259

259:                                              ; preds = %251, %460
  %260 = phi i64 [ %249, %251 ], [ %462, %460 ]
  %261 = phi i16 [ 0, %251 ], [ %440, %460 ]
  %262 = phi i64 [ 0, %251 ], [ %461, %460 ]
  %263 = phi i64 [ 0, %251 ], [ %439, %460 ]
  %264 = phi i64 [ 0, %251 ], [ %450, %460 ]
  %265 = phi i64 [ 0, %251 ], [ %438, %460 ]
  %266 = phi i64 [ 0, %251 ], [ %449, %460 ]
  %267 = load i8, ptr %65, align 1, !tbaa !33
  %268 = and i8 %267, 32
  %269 = icmp eq i8 %268, 0
  %270 = xor i64 %264, -1
  %271 = add i64 %260, %270
  %272 = select i1 %269, i64 %271, i64 %264
  %273 = load i64, ptr %91, align 8, !tbaa !34
  %274 = call ptr @QueueAuthenticPixels(ptr noundef nonnull %14, i64 noundef 0, i64 noundef %272, i64 noundef %273, i64 noundef 1, ptr noundef %1) #10
  %275 = icmp eq ptr %274, null
  br i1 %275, label %464, label %276

276:                                              ; preds = %259
  %277 = call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %14) #10
  %278 = load i64, ptr %91, align 8, !tbaa !34
  %279 = icmp sgt i64 %278, 0
  br i1 %279, label %280, label %437

280:                                              ; preds = %276
  %281 = icmp eq ptr %277, null
  br label %282

282:                                              ; preds = %280, %432
  %283 = phi i16 [ %261, %280 ], [ %417, %432 ]
  %284 = phi ptr [ %274, %280 ], [ %433, %432 ]
  %285 = phi i64 [ %263, %280 ], [ %415, %432 ]
  %286 = phi i64 [ %265, %280 ], [ %416, %432 ]
  %287 = phi i64 [ 0, %280 ], [ %434, %432 ]
  %288 = load i8, ptr %26, align 2
  %289 = add i8 %288, -9
  %290 = icmp ult i8 %289, 3
  br i1 %290, label %291, label %313

291:                                              ; preds = %282
  %292 = load i8, ptr %6, align 1, !tbaa !50
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %291
  %295 = add i8 %292, -1
  store i8 %295, ptr %6, align 1, !tbaa !50
  %296 = icmp ne i64 %286, 0
  %297 = zext i1 %296 to i64
  br label %313

298:                                              ; preds = %291
  %299 = call i64 @ReadBlob(ptr noundef nonnull %14, i64 noundef 1, ptr noundef nonnull %6) #10
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %303 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 395, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %302) #10
  %304 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %305 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

306:                                              ; preds = %298
  %307 = load i8, ptr %6, align 1, !tbaa !50
  %308 = and i8 %307, -128
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %316, label %310

310:                                              ; preds = %306
  %311 = zext i8 %308 to i64
  %312 = and i8 %307, 127
  store i8 %312, ptr %6, align 1, !tbaa !50
  br label %316

313:                                              ; preds = %294, %282
  %314 = phi i64 [ %297, %294 ], [ %285, %282 ]
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %414

316:                                              ; preds = %306, %310, %313
  %317 = phi i64 [ %286, %313 ], [ %311, %310 ], [ 0, %306 ]
  %318 = load i8, ptr %62, align 2, !tbaa !32
  switch i8 %318, label %319 [
    i8 32, label %394
    i8 15, label %335
    i8 16, label %335
    i8 24, label %377
  ]

319:                                              ; preds = %316
  %320 = call i32 @ReadBlobByte(ptr noundef %14) #10
  %321 = trunc i32 %320 to i16
  %322 = load i8, ptr %23, align 1, !tbaa !22
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %332, label %324

324:                                              ; preds = %319
  %325 = load ptr, ptr %257, align 8, !tbaa !55
  %326 = and i32 %320, 65535
  %327 = zext nneg i32 %326 to i64
  %328 = call fastcc zeroext i16 @ConstrainColormapIndex(ptr noundef %14, i64 noundef %327) #13
  %329 = zext i16 %328 to i64
  %330 = getelementptr inbounds %struct._PixelPacket, ptr %325, i64 %329
  %331 = load i64, ptr %330, align 2
  store i64 %331, ptr %3, align 8
  br label %414

332:                                              ; preds = %319
  %333 = trunc i32 %320 to i8
  %334 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %333) #13
  store i16 %334, ptr %255, align 4, !tbaa !52
  store i16 %334, ptr %253, align 2, !tbaa !53
  store i16 %334, ptr %3, align 8, !tbaa !54
  br label %414

335:                                              ; preds = %316, %316
  %336 = call i64 @ReadBlob(ptr noundef %14, i64 noundef 2, ptr noundef nonnull %5) #10
  %337 = icmp eq i64 %336, 2
  br i1 %337, label %345, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %340 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 433, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %339) #10
  %341 = icmp eq ptr %14, null
  br i1 %341, label %477, label %342

342:                                              ; preds = %338
  %343 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %344 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

345:                                              ; preds = %335
  %346 = load i8, ptr %5, align 1, !tbaa !50
  %347 = load i8, ptr %252, align 1, !tbaa !50
  %348 = zext i8 %347 to i32
  %349 = lshr i32 %348, 2
  %350 = and i32 %349, 31
  %351 = zext nneg i32 %350 to i64
  %352 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %351) #13
  store i16 %352, ptr %255, align 4, !tbaa !52
  %353 = shl nuw nsw i32 %348, 3
  %354 = and i32 %353, 24
  %355 = lshr i8 %346, 5
  %356 = zext nneg i8 %355 to i32
  %357 = or disjoint i32 %354, %356
  %358 = zext nneg i32 %357 to i64
  %359 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %358) #13
  store i16 %359, ptr %253, align 2, !tbaa !53
  %360 = and i8 %346, 31
  %361 = zext nneg i8 %360 to i64
  %362 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %361) #13
  store i16 %362, ptr %3, align 8, !tbaa !54
  %363 = load i32, ptr %104, align 8, !tbaa !46
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %345
  %366 = ashr i8 %347, 7
  %367 = sext i8 %366 to i16
  store i16 %367, ptr %173, align 2, !tbaa !51
  br label %368

368:                                              ; preds = %365, %345
  %369 = load i32, ptr %14, align 8, !tbaa !47
  %370 = icmp eq i32 %369, 2
  br i1 %370, label %371, label %414

371:                                              ; preds = %368
  %372 = zext i8 %347 to i64
  %373 = shl nuw nsw i64 %372, 8
  %374 = zext i8 %346 to i64
  %375 = or disjoint i64 %373, %374
  %376 = call fastcc zeroext i16 @ConstrainColormapIndex(ptr noundef nonnull %14, i64 noundef %375) #13
  br label %414

377:                                              ; preds = %316
  %378 = call i64 @ReadBlob(ptr noundef %14, i64 noundef 3, ptr noundef nonnull %5) #10
  %379 = icmp eq i64 %378, 3
  br i1 %379, label %387, label %380

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %382 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 454, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %381) #10
  %383 = icmp eq ptr %14, null
  br i1 %383, label %477, label %384

384:                                              ; preds = %380
  %385 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %386 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

387:                                              ; preds = %377
  %388 = load i8, ptr %5, align 1, !tbaa !50
  %389 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %388) #13
  store i16 %389, ptr %3, align 8, !tbaa !54
  %390 = load i8, ptr %252, align 1, !tbaa !50
  %391 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %390) #13
  store i16 %391, ptr %253, align 2, !tbaa !53
  %392 = load i8, ptr %254, align 1, !tbaa !50
  %393 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %392) #13
  store i16 %393, ptr %255, align 4, !tbaa !52
  br label %414

394:                                              ; preds = %316
  %395 = call i64 @ReadBlob(ptr noundef %14, i64 noundef 4, ptr noundef nonnull %5) #10
  %396 = icmp eq i64 %395, 4
  br i1 %396, label %404, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %399 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 466, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %398) #10
  %400 = icmp eq ptr %14, null
  br i1 %400, label %477, label %401

401:                                              ; preds = %397
  %402 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %403 = call ptr @DestroyImageList(ptr noundef nonnull %14) #10
  br label %477

404:                                              ; preds = %394
  %405 = load i8, ptr %5, align 1, !tbaa !50
  %406 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %405) #13
  store i16 %406, ptr %3, align 8, !tbaa !54
  %407 = load i8, ptr %252, align 1, !tbaa !50
  %408 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %407) #13
  store i16 %408, ptr %253, align 2, !tbaa !53
  %409 = load i8, ptr %254, align 1, !tbaa !50
  %410 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %409) #13
  store i16 %410, ptr %255, align 4, !tbaa !52
  %411 = load i8, ptr %256, align 1, !tbaa !50
  %412 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %411) #13
  %413 = xor i16 %412, -1
  store i16 %413, ptr %173, align 2, !tbaa !51
  br label %414

414:                                              ; preds = %371, %368, %313, %324, %332, %404, %387
  %415 = phi i64 [ 0, %324 ], [ 0, %332 ], [ 0, %387 ], [ 0, %404 ], [ %314, %313 ], [ 0, %368 ], [ 0, %371 ]
  %416 = phi i64 [ %317, %324 ], [ %317, %332 ], [ %317, %387 ], [ %317, %404 ], [ %286, %313 ], [ %317, %368 ], [ %317, %371 ]
  %417 = phi i16 [ %321, %324 ], [ %321, %332 ], [ %283, %387 ], [ %283, %404 ], [ %283, %313 ], [ %283, %368 ], [ %376, %371 ]
  %418 = load i32, ptr %14, align 8, !tbaa !47
  %419 = icmp ne i32 %418, 2
  %420 = select i1 %419, i1 true, i1 %281
  br i1 %420, label %423, label %421

421:                                              ; preds = %414
  %422 = getelementptr inbounds i16, ptr %277, i64 %287
  store i16 %417, ptr %422, align 2, !tbaa !58
  br label %423

423:                                              ; preds = %421, %414
  %424 = load i16, ptr %255, align 4, !tbaa !52
  %425 = getelementptr inbounds %struct._PixelPacket, ptr %284, i64 0, i32 2
  store i16 %424, ptr %425, align 2, !tbaa !52
  %426 = load <2 x i16>, ptr %3, align 8, !tbaa !58
  store <2 x i16> %426, ptr %284, align 2, !tbaa !58
  %427 = load i32, ptr %104, align 8, !tbaa !46
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %423
  %430 = load i16, ptr %173, align 2, !tbaa !51
  %431 = getelementptr inbounds %struct._PixelPacket, ptr %284, i64 0, i32 3
  store i16 %430, ptr %431, align 2, !tbaa !51
  br label %432

432:                                              ; preds = %429, %423
  %433 = getelementptr inbounds %struct._PixelPacket, ptr %284, i64 1
  %434 = add nuw nsw i64 %287, 1
  %435 = load i64, ptr %91, align 8, !tbaa !34
  %436 = icmp slt i64 %434, %435
  br i1 %436, label %282, label %437, !llvm.loop !59

437:                                              ; preds = %432, %276
  %438 = phi i64 [ %265, %276 ], [ %416, %432 ]
  %439 = phi i64 [ %263, %276 ], [ %415, %432 ]
  %440 = phi i16 [ %261, %276 ], [ %417, %432 ]
  %441 = load i8, ptr %65, align 1, !tbaa !33
  %442 = and i8 %441, -64
  %443 = icmp eq i8 %442, -128
  %444 = select i1 %443, i64 2, i64 1
  %445 = add i64 %444, %264
  %446 = load i64, ptr %94, align 8, !tbaa !45
  %447 = icmp ult i64 %445, %446
  %448 = add i64 %266, 1
  %449 = select i1 %447, i64 %266, i64 %448
  %450 = select i1 %447, i64 %445, i64 %448
  %451 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %14, ptr noundef %1) #10
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %464, label %453

453:                                              ; preds = %437
  %454 = load ptr, ptr %258, align 8, !tbaa !60
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %460

456:                                              ; preds = %453
  %457 = load i64, ptr %94, align 8, !tbaa !45
  %458 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %14, ptr noundef nonnull @LoadImageTag, i64 noundef %262, i64 noundef %457) #13
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %464, label %460

460:                                              ; preds = %453, %456
  %461 = add nuw nsw i64 %262, 1
  %462 = load i64, ptr %94, align 8, !tbaa !45
  %463 = icmp slt i64 %461, %462
  br i1 %463, label %259, label %464, !llvm.loop !61

464:                                              ; preds = %460, %259, %437, %456, %248
  %465 = call i32 @EOFBlob(ptr noundef nonnull %14) #10
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %474, label %467

467:                                              ; preds = %464
  %468 = tail call ptr @__errno_location() #14
  %469 = load i32, ptr %468, align 4, !tbaa !62
  %470 = call ptr @GetExceptionMessage(i32 noundef %469) #10
  %471 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 53
  %472 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 510, i32 noundef 425, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull %471, ptr noundef %470) #10
  %473 = call ptr @DestroyString(ptr noundef %470) #10
  br label %474

474:                                              ; preds = %467, %464
  %475 = call i32 @CloseBlob(ptr noundef nonnull %14) #10
  %476 = call ptr @GetFirstImageInList(ptr noundef nonnull %14) #10
  br label %477

477:                                              ; preds = %342, %338, %157, %144, %397, %401, %380, %384, %301, %188, %81, %85, %68, %72, %37, %41, %474, %17
  %478 = phi ptr [ null, %17 ], [ %476, %474 ], [ null, %41 ], [ null, %37 ], [ null, %72 ], [ null, %68 ], [ null, %85 ], [ null, %81 ], [ null, %188 ], [ null, %301 ], [ null, %384 ], [ null, %380 ], [ null, %401 ], [ null, %397 ], [ null, %144 ], [ null, %157 ], [ null, %338 ], [ null, %342 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret ptr %478
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @WriteTGAImage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 707, ptr noundef nonnull @.str.7, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %11 = tail call i32 @OpenBlob(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %275, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !34
  %16 = icmp ugt i64 %15, 65535
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !45
  %20 = icmp ugt i64 %19, 65535
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %10, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 715, i32 noundef 465, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9, ptr noundef nonnull %22) #10
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %271, label %27

27:                                               ; preds = %21, %27
  %28 = phi ptr [ %30, %27 ], [ %1, %21 ]
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 67
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = icmp eq ptr %30, null
  br i1 %31, label %271, label %27, !llvm.loop !65

32:                                               ; preds = %17
  %33 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %1, i32 noundef 13) #10
  %34 = tail call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #15
  %38 = tail call fastcc i64 @MagickMin(i64 noundef %37) #13
  %39 = trunc i64 %38 to i8
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i8 [ %39, %36 ], [ 0, %32 ]
  %42 = load i64, ptr %14, align 8, !tbaa !34
  %43 = trunc i64 %42 to i16
  %44 = load i64, ptr %18, align 8, !tbaa !45
  %45 = trunc i64 %44 to i16
  %46 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 31
  %47 = load i32, ptr %46, align 4, !tbaa !66
  switch i32 %47, label %48 [
    i32 6, label %55
    i32 7, label %55
    i32 4, label %55
  ]

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !46
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = tail call i32 @IsGrayImage(ptr noundef nonnull %1, ptr noundef nonnull %10) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %40, %40, %40, %52, %48
  %56 = load i32, ptr %1, align 8, !tbaa !47
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %60 = load i64, ptr %59, align 8, !tbaa !48
  %61 = icmp ugt i64 %60, 256
  br i1 %61, label %62, label %68

62:                                               ; preds = %58, %55
  %63 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !46
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i8 0, i8 8
  %67 = select i1 %65, i8 24, i8 32
  br label %70

68:                                               ; preds = %58
  %69 = trunc i64 %60 to i16
  br label %70

70:                                               ; preds = %62, %52, %68
  %71 = phi i8 [ 0, %68 ], [ 0, %52 ], [ %66, %62 ]
  %72 = phi i8 [ 8, %68 ], [ 8, %52 ], [ %67, %62 ]
  %73 = phi i8 [ 24, %68 ], [ 0, %52 ], [ 0, %62 ]
  %74 = phi i16 [ %69, %68 ], [ 0, %52 ], [ 0, %62 ]
  %75 = phi i1 [ true, %68 ], [ false, %52 ], [ false, %62 ]
  %76 = phi i1 [ false, %68 ], [ true, %52 ], [ false, %62 ]
  %77 = phi i8 [ 1, %68 ], [ 3, %52 ], [ 2, %62 ]
  %78 = phi i8 [ 1, %68 ], [ 0, %52 ], [ 0, %62 ]
  %79 = tail call i64 @WriteBlobByte(ptr noundef nonnull %1, i8 noundef zeroext %41) #10
  %80 = tail call i64 @WriteBlobByte(ptr noundef nonnull %1, i8 noundef zeroext %78) #10
  %81 = tail call i64 @WriteBlobByte(ptr noundef nonnull %1, i8 noundef zeroext %77) #10
  %82 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %1, i16 noundef zeroext 0) #10
  %83 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %1, i16 noundef zeroext %74) #10
  %84 = tail call i64 @WriteBlobByte(ptr noundef nonnull %1, i8 noundef zeroext %73) #10
  %85 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %1, i16 noundef zeroext 0) #10
  %86 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %1, i16 noundef zeroext 0) #10
  %87 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %1, i16 noundef zeroext %43) #10
  %88 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %1, i16 noundef zeroext %45) #10
  %89 = tail call i64 @WriteBlobByte(ptr noundef nonnull %1, i8 noundef zeroext %72) #10
  %90 = tail call i64 @WriteBlobByte(ptr noundef nonnull %1, i8 noundef zeroext %71) #10
  %91 = icmp eq i8 %41, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %70
  %93 = zext i8 %41 to i64
  %94 = tail call i64 @WriteBlob(ptr noundef nonnull %1, i64 noundef %93, ptr noundef %34) #10
  br label %95

95:                                               ; preds = %92, %70
  br i1 %75, label %96, label %147

96:                                               ; preds = %95
  %97 = zext nneg i16 %74 to i64
  %98 = tail call ptr @AcquireQuantumMemory(i64 noundef %97, i64 noundef 3) #12
  %99 = icmp eq ptr %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %102 = load i64, ptr %101, align 8, !tbaa !48
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %141

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 11
  br label %120

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %108 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %10, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 790, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %107) #10
  %109 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %110 = load i32, ptr %109, align 4, !tbaa !64
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106, %112
  %113 = phi ptr [ %115, %112 ], [ %1, %106 ]
  %114 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 67
  %115 = load ptr, ptr %114, align 8, !tbaa !60
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %112, !llvm.loop !67

117:                                              ; preds = %112, %106
  %118 = phi ptr [ %1, %106 ], [ %113, %112 ]
  %119 = tail call i32 @CloseBlob(ptr noundef nonnull %118) #10
  br label %145

120:                                              ; preds = %104, %120
  %121 = phi i64 [ 0, %104 ], [ %138, %120 ]
  %122 = phi ptr [ %98, %104 ], [ %137, %120 ]
  %123 = load ptr, ptr %105, align 8, !tbaa !55
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %123, i64 %121
  %125 = load i16, ptr %124, align 2, !tbaa !54
  %126 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %125) #13
  %127 = getelementptr inbounds i8, ptr %122, i64 1
  store i8 %126, ptr %122, align 1, !tbaa !50
  %128 = load ptr, ptr %105, align 8, !tbaa !55
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 %121, i32 1
  %130 = load i16, ptr %129, align 2, !tbaa !53
  %131 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %130) #13
  %132 = getelementptr inbounds i8, ptr %122, i64 2
  store i8 %131, ptr %127, align 1, !tbaa !50
  %133 = load ptr, ptr %105, align 8, !tbaa !55
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 %121, i32 2
  %135 = load i16, ptr %134, align 2, !tbaa !52
  %136 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %135) #13
  %137 = getelementptr inbounds i8, ptr %122, i64 3
  store i8 %136, ptr %132, align 1, !tbaa !50
  %138 = add nuw nsw i64 %121, 1
  %139 = load i64, ptr %101, align 8, !tbaa !48
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %120, label %141, !llvm.loop !68

141:                                              ; preds = %120, %100
  %142 = mul nuw nsw i64 %97, 3
  %143 = tail call i64 @WriteBlob(ptr noundef nonnull %1, i64 noundef %142, ptr noundef nonnull %98) #10
  %144 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %98) #10
  br label %145

145:                                              ; preds = %141, %117
  %146 = phi ptr [ %118, %117 ], [ %1, %141 ]
  br i1 %99, label %275, label %147

147:                                              ; preds = %145, %95
  %148 = phi ptr [ %146, %145 ], [ %1, %95 ]
  %149 = zext nneg i8 %72 to i64
  %150 = and i64 %42, 65535
  %151 = mul nuw nsw i64 %150, %149
  %152 = lshr exact i64 %151, 3
  %153 = tail call ptr @AcquireQuantumMemory(i64 noundef %152, i64 noundef 1) #12
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %167

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 58
  %157 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 53
  %158 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %156, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 809, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %157) #10
  %159 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %160 = load i32, ptr %159, align 4, !tbaa !64
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %271, label %162

162:                                              ; preds = %155, %162
  %163 = phi ptr [ %165, %162 ], [ %148, %155 ]
  %164 = getelementptr inbounds %struct._Image, ptr %163, i64 0, i32 67
  %165 = load ptr, ptr %164, align 8, !tbaa !60
  %166 = icmp eq ptr %165, null
  br i1 %166, label %271, label %162, !llvm.loop !69

167:                                              ; preds = %147
  %168 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 8
  %169 = load i64, ptr %168, align 8, !tbaa !45
  %170 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 7
  %171 = add i64 %169, -1
  %172 = icmp sgt i64 %171, -1
  br i1 %172, label %173, label %269

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 58
  %175 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 6
  %176 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 1
  %177 = ptrtoint ptr %153 to i64
  %178 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 67
  %179 = load i64, ptr %170, align 8, !tbaa !34
  %180 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %148, i64 noundef 0, i64 noundef %171, i64 noundef %179, i64 noundef 1, ptr noundef nonnull %174) #10
  %181 = icmp eq ptr %180, null
  br i1 %181, label %269, label %182

182:                                              ; preds = %173, %264
  %183 = phi ptr [ %267, %264 ], [ %180, %173 ]
  %184 = phi i64 [ %265, %264 ], [ %171, %173 ]
  %185 = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %148) #10
  %186 = load i64, ptr %170, align 8, !tbaa !34
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %248

188:                                              ; preds = %182
  %189 = icmp eq ptr %185, null
  br label %190

190:                                              ; preds = %188, %240
  %191 = phi ptr [ %183, %188 ], [ %242, %240 ]
  %192 = phi i64 [ 0, %188 ], [ %243, %240 ]
  %193 = phi ptr [ %153, %188 ], [ %241, %240 ]
  br i1 %75, label %194, label %202

194:                                              ; preds = %190
  br i1 %189, label %199, label %195

195:                                              ; preds = %194
  %196 = getelementptr inbounds i16, ptr %185, i64 %192
  %197 = load i16, ptr %196, align 2, !tbaa !58
  %198 = trunc i16 %197 to i8
  br label %199

199:                                              ; preds = %194, %195
  %200 = phi i8 [ %198, %195 ], [ 0, %194 ]
  %201 = getelementptr inbounds i8, ptr %193, i64 1
  store i8 %200, ptr %193, align 1, !tbaa !50
  br label %240

202:                                              ; preds = %190
  br i1 %76, label %203, label %208

203:                                              ; preds = %202
  %204 = tail call fastcc float @GetPixelLuma(ptr noundef nonnull %148, ptr noundef nonnull %191) #13
  %205 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %204) #13
  %206 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %205) #13
  %207 = getelementptr inbounds i8, ptr %193, i64 1
  store i8 %206, ptr %193, align 1, !tbaa !50
  br label %240

208:                                              ; preds = %202
  %209 = load i16, ptr %191, align 2, !tbaa !54
  %210 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %209) #13
  %211 = getelementptr inbounds i8, ptr %193, i64 1
  store i8 %210, ptr %193, align 1, !tbaa !50
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 0, i32 1
  %213 = load i16, ptr %212, align 2, !tbaa !53
  %214 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %213) #13
  %215 = getelementptr inbounds i8, ptr %193, i64 2
  store i8 %214, ptr %211, align 1, !tbaa !50
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 0, i32 2
  %217 = load i16, ptr %216, align 2, !tbaa !52
  %218 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %217) #13
  %219 = getelementptr inbounds i8, ptr %193, i64 3
  store i8 %218, ptr %215, align 1, !tbaa !50
  %220 = load i32, ptr %175, align 8, !tbaa !46
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %208
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 0, i32 3
  %224 = load i16, ptr %223, align 2, !tbaa !51
  %225 = xor i16 %224, -1
  %226 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %225) #13
  %227 = getelementptr inbounds i8, ptr %193, i64 4
  store i8 %226, ptr %219, align 1, !tbaa !50
  br label %228

228:                                              ; preds = %222, %208
  %229 = phi ptr [ %227, %222 ], [ %219, %208 ]
  %230 = load i32, ptr %176, align 4, !tbaa !70
  %231 = icmp eq i32 %230, 12
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  br i1 %189, label %236, label %233

233:                                              ; preds = %232
  %234 = getelementptr inbounds i16, ptr %185, i64 %192
  %235 = load i16, ptr %234, align 2, !tbaa !58
  br label %236

236:                                              ; preds = %232, %233
  %237 = phi i16 [ %235, %233 ], [ 0, %232 ]
  %238 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %237) #13
  %239 = getelementptr inbounds i8, ptr %229, i64 1
  store i8 %238, ptr %229, align 1, !tbaa !50
  br label %240

240:                                              ; preds = %203, %236, %228, %199
  %241 = phi ptr [ %201, %199 ], [ %207, %203 ], [ %239, %236 ], [ %229, %228 ]
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 1
  %243 = add nuw nsw i64 %192, 1
  %244 = load i64, ptr %170, align 8, !tbaa !34
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %190, label %246, !llvm.loop !71

246:                                              ; preds = %240
  %247 = ptrtoint ptr %241 to i64
  br label %248

248:                                              ; preds = %246, %182
  %249 = phi i64 [ %247, %246 ], [ %177, %182 ]
  %250 = sub i64 %249, %177
  %251 = tail call i64 @WriteBlob(ptr noundef nonnull %148, i64 noundef %250, ptr noundef nonnull %153) #10
  %252 = load ptr, ptr %178, align 8, !tbaa !60
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %261

254:                                              ; preds = %248
  %255 = load i64, ptr %168, align 8, !tbaa !45
  %256 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %148, ptr noundef nonnull @SaveImageTag, i64 noundef %184, i64 noundef %255) #13
  %257 = icmp ne i32 %256, 0
  %258 = add i64 %184, -1
  %259 = icmp sgt i64 %258, -1
  %260 = and i1 %257, %259
  br i1 %260, label %264, label %269

261:                                              ; preds = %248
  %262 = add i64 %184, -1
  %263 = icmp sgt i64 %262, -1
  br i1 %263, label %264, label %269

264:                                              ; preds = %261, %254
  %265 = phi i64 [ %262, %261 ], [ %258, %254 ]
  %266 = load i64, ptr %170, align 8, !tbaa !34
  %267 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %148, i64 noundef 0, i64 noundef %265, i64 noundef %266, i64 noundef 1, ptr noundef nonnull %174) #10
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %182, !llvm.loop !72

269:                                              ; preds = %254, %264, %261, %173, %167
  %270 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %153) #10
  br label %271

271:                                              ; preds = %162, %27, %155, %21, %269
  %272 = phi ptr [ %148, %269 ], [ %1, %21 ], [ %148, %155 ], [ %28, %27 ], [ %163, %162 ]
  %273 = phi i32 [ 1, %269 ], [ 0, %21 ], [ 0, %155 ], [ 0, %27 ], [ 0, %162 ]
  %274 = tail call i32 @CloseBlob(ptr noundef nonnull %272) #10
  br label %275

275:                                              ; preds = %271, %9, %145
  %276 = phi i32 [ 0, %145 ], [ 0, %9 ], [ %273, %271 ]
  ret i32 %276
}

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RegisterMagickInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ReadBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ReadBlobByte(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @ReadBlobLSBShort(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @EOFBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #4 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %0) unnamed_addr #4 {
  %2 = uitofp i64 %0 to float
  %3 = fmul float %2, 6.553500e+04
  %4 = fdiv float %3, 3.100000e+01
  %5 = fpext float %4 to double
  %6 = fadd double %5, 5.000000e-01
  %7 = fptoui double %6 to i16
  ret i16 %7
}

; Function Attrs: optsize
declare ptr @QueueAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i16 @ConstrainColormapIndex(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %4 = load i64, ptr %3, align 8, !tbaa !48
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = trunc i64 %1 to i16
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef 34, i32 noundef 425, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, ptr noundef nonnull %10) #10
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i16 [ %7, %6 ], [ 0, %8 ]
  ret i16 %13
}

; Function Attrs: optsize
declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef nonnull %10) #10
  %12 = load ptr, ptr %6, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #10
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #4 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 255)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @WriteBlobByte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @WriteBlobLSBShort(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #4 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @GetPixelLuma(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !52
  %8 = uitofp i16 %7 to float
  br i1 %5, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !53
  %12 = uitofp i16 %11 to float
  %13 = fmul float %12, 0x3FE6E29300000000
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FCB384FE0000000, float %13)
  %15 = load i16, ptr %1, align 2, !tbaa !54
  %16 = uitofp i16 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FB27AC820000000, float %14)
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi float [ %17, %9 ], [ %8, %2 ]
  ret float %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UnregisterTGAImage() local_unnamed_addr #0 {
  %1 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str) #10
  %2 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.2) #10
  %3 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.3) #10
  %4 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.4) #10
  ret void
}

; Function Attrs: optsize
declare i32 @UnregisterMagickInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize allocsize(0,1) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize willreturn memory(none) }
attributes #15 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 48}
!7 = !{!"_MagickInfo", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !8, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !8, i64 144}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!7, !8, i64 56}
!14 = !{!7, !11, i64 80}
!15 = !{!7, !8, i64 8}
!16 = !{!7, !8, i64 32}
!17 = !{!18, !11, i64 16712}
!18 = !{!"_ImageInfo", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !12, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !19, i64 144, !19, i64 152, !20, i64 160, !20, i64 168, !20, i64 176, !11, i64 184, !11, i64 188, !12, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !12, i64 216, !11, i64 224, !11, i64 228, !8, i64 232, !8, i64 240, !11, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !12, i64 320, !9, i64 328, !9, i64 4424, !9, i64 8520, !9, i64 12616, !11, i64 16712, !8, i64 16720, !12, i64 16728, !12, i64 16736, !20, i64 16744, !12, i64 16752, !11, i64 16760, !20, i64 16764, !8, i64 16776, !11, i64 16784}
!19 = !{!"double", !9, i64 0}
!20 = !{!"_PixelPacket", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6}
!21 = !{!"short", !9, i64 0}
!22 = !{!23, !9, i64 1}
!23 = !{!"_TGAInfo", !9, i64 0, !9, i64 1, !9, i64 2, !21, i64 4, !21, i64 6, !9, i64 8, !21, i64 10, !21, i64 12, !21, i64 14, !21, i64 16, !9, i64 18, !9, i64 19}
!24 = !{!23, !9, i64 2}
!25 = !{!23, !21, i64 4}
!26 = !{!23, !21, i64 6}
!27 = !{!23, !9, i64 8}
!28 = !{!23, !21, i64 10}
!29 = !{!23, !21, i64 12}
!30 = !{!23, !21, i64 14}
!31 = !{!23, !21, i64 16}
!32 = !{!23, !9, i64 18}
!33 = !{!23, !9, i64 19}
!34 = !{!35, !12, i64 40}
!35 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !8, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !19, i64 104, !36, i64 112, !11, i64 208, !8, i64 216, !11, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !12, i64 256, !19, i64 264, !19, i64 272, !38, i64 280, !38, i64 312, !38, i64 344, !19, i64 376, !19, i64 384, !19, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !39, i64 480, !40, i64 504, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !12, i64 12904, !12, i64 12912, !42, i64 12920, !11, i64 12976, !12, i64 12984, !8, i64 12992, !43, i64 13000, !43, i64 13032, !8, i64 13064, !12, i64 13072, !12, i64 13080, !8, i64 13088, !8, i64 13096, !8, i64 13104, !11, i64 13112, !11, i64 13116, !20, i64 13120, !8, i64 13128, !38, i64 13136, !8, i64 13168, !8, i64 13176, !11, i64 13184, !11, i64 13188, !44, i64 13192, !11, i64 13200, !12, i64 13208, !12, i64 13216, !11, i64 13224, !12, i64 13232}
!36 = !{!"_ChromaticityInfo", !37, i64 0, !37, i64 24, !37, i64 48, !37, i64 72}
!37 = !{!"_PrimaryInfo", !19, i64 0, !19, i64 8, !19, i64 16}
!38 = !{!"_RectangleInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!39 = !{!"_ErrorInfo", !19, i64 0, !19, i64 8, !19, i64 16}
!40 = !{!"_TimerInfo", !41, i64 0, !41, i64 24, !11, i64 48, !12, i64 56}
!41 = !{!"_Timer", !19, i64 0, !19, i64 8, !19, i64 16}
!42 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !12, i64 48}
!43 = !{!"_ProfileInfo", !8, i64 0, !12, i64 8, !8, i64 16, !12, i64 24}
!44 = !{!"long long", !9, i64 0}
!45 = !{!35, !12, i64 48}
!46 = !{!35, !11, i64 32}
!47 = !{!35, !11, i64 0}
!48 = !{!35, !12, i64 64}
!49 = !{!23, !9, i64 0}
!50 = !{!9, !9, i64 0}
!51 = !{!20, !21, i64 6}
!52 = !{!20, !21, i64 4}
!53 = !{!20, !21, i64 2}
!54 = !{!20, !21, i64 0}
!55 = !{!35, !8, i64 72}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!21, !21, i64 0}
!59 = distinct !{!59, !57}
!60 = !{!35, !8, i64 13088}
!61 = distinct !{!61, !57}
!62 = !{!11, !11, i64 0}
!63 = !{!35, !11, i64 12976}
!64 = !{!18, !11, i64 12}
!65 = distinct !{!65, !57}
!66 = !{!18, !11, i64 204}
!67 = distinct !{!67, !57}
!68 = distinct !{!68, !57}
!69 = distinct !{!69, !57}
!70 = !{!35, !11, i64 4}
!71 = distinct !{!71, !57}
!72 = distinct !{!72, !57}
!73 = !{!35, !8, i64 568}
!74 = !{!35, !8, i64 576}
