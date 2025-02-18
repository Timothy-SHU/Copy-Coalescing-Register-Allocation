; ModuleID = 'magick/layer.c'
source_filename = "magick/layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [15 x i8] c"magick/layer.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ZeroTimeAnimation\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Merge/Layers\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ImagesAreNotTheSameSize\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CoalesceImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 250, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26
  %12 = load i64, ptr %11, align 8, !tbaa.struct !53
  %13 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa.struct !55
  %15 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa.struct !56
  %17 = icmp eq i64 %12, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa.struct !57
  %21 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !58
  %23 = tail call i64 @llvm.smax.i64(i64 %20, i64 0)
  %24 = add i64 %22, %23
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi i64 [ %12, %9 ], [ %24, %18 ]
  %27 = icmp eq i64 %14, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !59
  %31 = tail call i64 @llvm.smax.i64(i64 %16, i64 0)
  %32 = add i64 %30, %31
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %14, %25 ], [ %32, %28 ]
  %35 = tail call ptr @CloneImage(ptr noundef %10, i64 noundef %26, i64 noundef %34, i32 noundef 1, ptr noundef %1) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %202, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %35) #7
  %39 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 6
  store i32 %40, ptr %41, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 26
  store i64 %26, ptr %42, align 8, !tbaa.struct !53
  %43 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 26, i32 1
  store i64 %34, ptr %43, align 8, !tbaa.struct !55
  %44 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 26, i32 2
  %45 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  store i32 1, ptr %45, align 4, !tbaa !61
  %46 = tail call ptr @CloneImage(ptr noundef nonnull %35, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #7
  %47 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !63
  %51 = tail call i32 @CompositeImage(ptr noundef nonnull %35, i32 noundef 13, ptr noundef %10, i64 noundef %48, i64 noundef %50) #7
  %52 = tail call ptr @GetNextImageInList(ptr noundef %10) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %197, label %54

54:                                               ; preds = %37, %189
  %55 = phi ptr [ %195, %189 ], [ %52, %37 ]
  %56 = phi ptr [ %96, %189 ], [ %46, %37 ]
  %57 = phi ptr [ %140, %189 ], [ %35, %37 ]
  %58 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %55) #7
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa.struct !57
  %61 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa.struct !56
  %63 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %64 = load i64, ptr %63, align 8, !tbaa !58
  %65 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 8
  %66 = load i64, ptr %65, align 8, !tbaa !59
  %67 = tail call i64 @llvm.smax.i64(i64 %60, i64 0)
  %68 = tail call i64 @llvm.smin.i64(i64 %60, i64 0)
  %69 = add i64 %64, %68
  %70 = add i64 %69, %67
  %71 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 7
  %72 = load i64, ptr %71, align 8, !tbaa !58
  %73 = icmp sgt i64 %70, %72
  %74 = sub i64 %72, %67
  %75 = select i1 %73, i64 %74, i64 %69
  %76 = tail call i64 @llvm.smax.i64(i64 %62, i64 0)
  %77 = tail call i64 @llvm.smin.i64(i64 %62, i64 0)
  %78 = add i64 %66, %77
  %79 = add i64 %78, %76
  %80 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 8
  %81 = load i64, ptr %80, align 8, !tbaa !59
  %82 = icmp sgt i64 %79, %81
  %83 = sub i64 %81, %76
  %84 = select i1 %82, i64 %83, i64 %78
  %85 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %55) #7
  %86 = getelementptr inbounds %struct._Image, ptr %85, i64 0, i32 37
  %87 = load i32, ptr %86, align 4, !tbaa !61
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %95, label %89

89:                                               ; preds = %54
  %90 = tail call ptr @DestroyImage(ptr noundef %56) #7
  %91 = tail call ptr @CloneImage(ptr noundef %57, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = tail call ptr @DestroyImageList(ptr noundef %57) #7
  br label %202

95:                                               ; preds = %89, %54
  %96 = phi ptr [ %91, %89 ], [ %56, %54 ]
  %97 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 67
  %98 = load ptr, ptr %97, align 8, !tbaa !64
  %99 = getelementptr inbounds %struct._Image, ptr %98, i64 0, i32 37
  %100 = load i32, ptr %99, align 4, !tbaa !61
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %136

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !60
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = tail call i32 @SetImageAlphaChannel(ptr noundef %96, i32 noundef 6) #7
  br label %108

108:                                              ; preds = %106, %102
  %109 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 58
  %110 = icmp sgt i64 %84, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = icmp sgt i64 %75, 0
  br label %113

113:                                              ; preds = %111, %130
  %114 = phi i64 [ %133, %130 ], [ 0, %111 ]
  %115 = add nuw nsw i64 %114, %76
  %116 = tail call ptr @GetAuthenticPixels(ptr noundef %96, i64 noundef %67, i64 noundef %115, i64 noundef %75, i64 noundef 1, ptr noundef nonnull %109) #7
  %117 = icmp eq ptr %116, null
  br i1 %117, label %130, label %118

118:                                              ; preds = %113
  br i1 %112, label %119, label %126

119:                                              ; preds = %118, %119
  %120 = phi ptr [ %123, %119 ], [ %116, %118 ]
  %121 = phi i64 [ %124, %119 ], [ 0, %118 ]
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 0, i32 3
  store i16 -1, ptr %122, align 2, !tbaa !65
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 1
  %124 = add nuw nsw i64 %121, 1
  %125 = icmp eq i64 %124, %75
  br i1 %125, label %126, label %119, !llvm.loop !66

126:                                              ; preds = %119, %118
  %127 = tail call i32 @SyncAuthenticPixels(ptr noundef %96, ptr noundef nonnull %109) #7
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 2, i32 0
  br label %130

130:                                              ; preds = %126, %113
  %131 = phi i32 [ 2, %113 ], [ %129, %126 ]
  %132 = icmp eq i32 %131, 0
  %133 = add nuw nsw i64 %114, 1
  %134 = icmp slt i64 %133, %84
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %113, label %136, !llvm.loop !69

136:                                              ; preds = %130, %108, %95
  %137 = tail call ptr @CloneImage(ptr noundef %96, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #7
  %138 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 69
  store ptr %137, ptr %138, align 8, !tbaa !70
  %139 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 67
  store ptr %57, ptr %139, align 8, !tbaa !64
  %140 = tail call ptr @GetNextImageInList(ptr noundef %57) #7
  %141 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !60
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 13, i32 40
  %145 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 26, i32 2
  %146 = load i64, ptr %145, align 8, !tbaa !62
  %147 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 26, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !63
  %149 = tail call i32 @CompositeImage(ptr noundef %140, i32 noundef %144, ptr noundef nonnull %55, i64 noundef %146, i64 noundef %148) #7
  %150 = tail call i32 @CloneImageProfiles(ptr noundef %140, ptr noundef nonnull %55) #7
  %151 = tail call i32 @CloneImageProperties(ptr noundef %140, ptr noundef nonnull %55) #7
  %152 = tail call i32 @CloneImageArtifacts(ptr noundef %140, ptr noundef nonnull %55) #7
  %153 = getelementptr inbounds %struct._Image, ptr %140, i64 0, i32 26
  %154 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull align 8 dereferenceable(32) %154, i64 32, i1 false), !tbaa.struct !53
  %155 = icmp sgt i64 %84, 0
  br i1 %155, label %156, label %189

156:                                              ; preds = %136
  %157 = icmp sgt i64 %75, 0
  br label %158

158:                                              ; preds = %156, %186
  %159 = phi i64 [ %187, %186 ], [ 0, %156 ]
  %160 = add nuw nsw i64 %159, %76
  %161 = tail call ptr @GetVirtualPixels(ptr noundef %57, i64 noundef %67, i64 noundef %160, i64 noundef %75, i64 noundef 1, ptr noundef %1) #7
  %162 = tail call ptr @GetVirtualPixels(ptr noundef %140, i64 noundef %67, i64 noundef %160, i64 noundef %75, i64 noundef 1, ptr noundef %1) #7
  %163 = icmp eq ptr %161, null
  %164 = icmp eq ptr %162, null
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %189, label %166

166:                                              ; preds = %158
  br i1 %157, label %167, label %186

167:                                              ; preds = %166, %179
  %168 = phi i1 [ %183, %179 ], [ %157, %166 ]
  %169 = phi i64 [ %182, %179 ], [ 0, %166 ]
  %170 = phi ptr [ %181, %179 ], [ %162, %166 ]
  %171 = phi ptr [ %180, %179 ], [ %161, %166 ]
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 0, i32 3
  %173 = load i16, ptr %172, align 2, !tbaa !65
  %174 = icmp sgt i16 %173, -1
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 3
  %177 = load i16, ptr %176, align 2, !tbaa !65
  %178 = icmp slt i16 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %175, %167
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 1
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 1
  %182 = add nuw nsw i64 %169, 1
  %183 = icmp slt i64 %182, %75
  %184 = icmp eq i64 %182, %75
  br i1 %184, label %186, label %167, !llvm.loop !71

185:                                              ; preds = %175
  br i1 %168, label %189, label %186

186:                                              ; preds = %179, %185, %166
  %187 = add nuw nsw i64 %159, 1
  %188 = icmp slt i64 %187, %84
  br i1 %188, label %158, label %189, !llvm.loop !72

189:                                              ; preds = %186, %185, %158, %136
  %190 = phi i64 [ 0, %136 ], [ %187, %186 ], [ %159, %158 ], [ %159, %185 ]
  %191 = icmp slt i64 %190, %84
  %192 = getelementptr inbounds %struct._Image, ptr %140, i64 0, i32 37
  %193 = select i1 %191, i32 2, i32 1
  store i32 %193, ptr %192, align 4, !tbaa !61
  %194 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 37
  store i32 %193, ptr %194, align 4, !tbaa !61
  %195 = tail call ptr @GetNextImageInList(ptr noundef nonnull %55) #7
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %54, !llvm.loop !73

197:                                              ; preds = %189, %37
  %198 = phi ptr [ %35, %37 ], [ %140, %189 ]
  %199 = phi ptr [ %46, %37 ], [ %96, %189 ]
  %200 = tail call ptr @DestroyImage(ptr noundef %199) #7
  %201 = tail call ptr @GetFirstImageInList(ptr noundef %198) #7
  br label %202

202:                                              ; preds = %33, %197, %93
  %203 = phi ptr [ null, %93 ], [ %201, %197 ], [ null, %33 ]
  ret ptr %203
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

declare i32 @CloneImageProfiles(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CloneImageArtifacts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @IsBoundsCleared(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !74
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !75
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  br label %14

14:                                               ; preds = %12, %51
  %15 = phi i64 [ 0, %12 ], [ %52, %51 ]
  %16 = load i64, ptr %5, align 8, !tbaa !74
  %17 = load i64, ptr %13, align 8, !tbaa !76
  %18 = add nsw i64 %17, %15
  %19 = load i64, ptr %2, align 8, !tbaa !77
  %20 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %16, i64 noundef %18, i64 noundef %19, i64 noundef 1, ptr noundef %3) #7
  %21 = load i64, ptr %5, align 8, !tbaa !74
  %22 = load i64, ptr %13, align 8, !tbaa !76
  %23 = add nsw i64 %22, %15
  %24 = load i64, ptr %2, align 8, !tbaa !77
  %25 = tail call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef %21, i64 noundef %23, i64 noundef %24, i64 noundef 1, ptr noundef %3) #7
  %26 = icmp eq ptr %20, null
  %27 = icmp eq ptr %25, null
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %55, label %29

29:                                               ; preds = %14
  %30 = load i64, ptr %2, align 8, !tbaa !77
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29, %44
  %33 = phi i1 [ %48, %44 ], [ %31, %29 ]
  %34 = phi i64 [ %47, %44 ], [ 0, %29 ]
  %35 = phi ptr [ %46, %44 ], [ %25, %29 ]
  %36 = phi ptr [ %45, %44 ], [ %20, %29 ]
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 0, i32 3
  %38 = load i16, ptr %37, align 2, !tbaa !65
  %39 = icmp sgt i16 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !65
  %43 = icmp slt i16 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40, %32
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 1
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp slt i64 %47, %30
  %49 = icmp eq i64 %47, %30
  br i1 %49, label %51, label %32, !llvm.loop !71

50:                                               ; preds = %40
  br i1 %33, label %55, label %51

51:                                               ; preds = %44, %29, %50
  %52 = add nuw nsw i64 %15, 1
  %53 = load i64, ptr %9, align 8, !tbaa !75
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %14, label %55, !llvm.loop !72

55:                                               ; preds = %51, %14, %50, %8
  %56 = phi i64 [ 0, %8 ], [ %52, %51 ], [ %15, %14 ], [ %15, %50 ]
  %57 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !75
  %59 = icmp slt i64 %56, %58
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %4, %55
  %62 = phi i32 [ %60, %55 ], [ 0, %4 ]
  ret i32 %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DisposeImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 398, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #7
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26
  %13 = load i64, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !79
  %16 = tail call ptr @CloneImage(ptr noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef 1, ptr noundef %1) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %141, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !53
  %20 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 26, i32 2
  %21 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store i32 1, ptr %21, align 4, !tbaa !61
  %22 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 12, i32 3
  store i16 -1, ptr %22, align 2, !tbaa !80
  %23 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %16) #7
  %24 = tail call ptr @NewImageList() #7
  store ptr %24, ptr %3, align 8, !tbaa !81
  %25 = icmp eq ptr %11, null
  br i1 %25, label %136, label %26

26:                                               ; preds = %18, %133
  %27 = phi ptr [ %134, %133 ], [ %11, %18 ]
  %28 = phi ptr [ %131, %133 ], [ %16, %18 ]
  %29 = call ptr @CloneImage(ptr noundef %28, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 8, !tbaa !81
  %33 = call ptr @DestroyImageList(ptr noundef %32) #7
  store ptr %33, ptr %3, align 8, !tbaa !81
  %34 = call ptr @DestroyImage(ptr noundef %28) #7
  br label %130

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !60
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 13, i32 40
  %40 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 26, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !62
  %42 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 26, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !63
  %44 = call i32 @CompositeImage(ptr noundef nonnull %29, i32 noundef %39, ptr noundef nonnull %27, i64 noundef %41, i64 noundef %43) #7
  %45 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 37
  %46 = load i32, ptr %45, align 4, !tbaa !61
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %108

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 26, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa.struct !57
  %51 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 26, i32 3
  %52 = load i64, ptr %51, align 8, !tbaa.struct !56
  %53 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !59
  %57 = call i64 @llvm.smax.i64(i64 %50, i64 0)
  %58 = call i64 @llvm.smin.i64(i64 %50, i64 0)
  %59 = add i64 %54, %58
  %60 = add i64 %59, %57
  %61 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !58
  %63 = icmp sgt i64 %60, %62
  %64 = sub i64 %62, %57
  %65 = select i1 %63, i64 %64, i64 %59
  %66 = call i64 @llvm.smax.i64(i64 %52, i64 0)
  %67 = call i64 @llvm.smin.i64(i64 %52, i64 0)
  %68 = add i64 %56, %67
  %69 = add i64 %68, %66
  %70 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %71 = load i64, ptr %70, align 8, !tbaa !59
  %72 = icmp sgt i64 %69, %71
  %73 = sub i64 %71, %66
  %74 = select i1 %72, i64 %73, i64 %68
  %75 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %76 = load i32, ptr %75, align 8, !tbaa !60
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %48
  %79 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %29, i32 noundef 6) #7
  br label %80

80:                                               ; preds = %78, %48
  %81 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  %82 = icmp sgt i64 %74, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = icmp sgt i64 %65, 0
  br label %85

85:                                               ; preds = %83, %102
  %86 = phi i64 [ %105, %102 ], [ 0, %83 ]
  %87 = add nuw nsw i64 %86, %66
  %88 = call ptr @GetAuthenticPixels(ptr noundef nonnull %29, i64 noundef %57, i64 noundef %87, i64 noundef %65, i64 noundef 1, ptr noundef nonnull %81) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %85
  br i1 %84, label %91, label %98

91:                                               ; preds = %90, %91
  %92 = phi ptr [ %95, %91 ], [ %88, %90 ]
  %93 = phi i64 [ %96, %91 ], [ 0, %90 ]
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 3
  store i16 -1, ptr %94, align 2, !tbaa !65
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %96 = add nuw nsw i64 %93, 1
  %97 = icmp eq i64 %96, %65
  br i1 %97, label %98, label %91, !llvm.loop !66

98:                                               ; preds = %91, %90
  %99 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %29, ptr noundef nonnull %81) #7
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 2, i32 0
  br label %102

102:                                              ; preds = %98, %85
  %103 = phi i32 [ 2, %85 ], [ %101, %98 ]
  %104 = icmp eq i32 %103, 0
  %105 = add nuw nsw i64 %86, 1
  %106 = icmp slt i64 %105, %74
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %85, label %108, !llvm.loop !69

108:                                              ; preds = %102, %80, %35
  %109 = load i32, ptr %45, align 4, !tbaa !61
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call ptr @DestroyImage(ptr noundef nonnull %29) #7
  br label %115

113:                                              ; preds = %108
  %114 = call ptr @DestroyImage(ptr noundef %28) #7
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi ptr [ %28, %111 ], [ %29, %113 ]
  %117 = call ptr @CloneImage(ptr noundef %116, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #7
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load ptr, ptr %3, align 8, !tbaa !81
  %121 = call ptr @DestroyImageList(ptr noundef %120) #7
  store ptr %121, ptr %3, align 8, !tbaa !81
  %122 = call ptr @DestroyImage(ptr noundef %116) #7
  br label %130

123:                                              ; preds = %115
  %124 = call i32 @CloneImageProfiles(ptr noundef nonnull %117, ptr noundef nonnull %27) #7
  %125 = call i32 @CloneImageProperties(ptr noundef nonnull %117, ptr noundef nonnull %27) #7
  %126 = call i32 @CloneImageArtifacts(ptr noundef nonnull %117, ptr noundef nonnull %27) #7
  %127 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  %128 = load i32, ptr %45, align 4, !tbaa !61
  %129 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 37
  store i32 %128, ptr %129, align 4, !tbaa !61
  call void @AppendImageToList(ptr noundef nonnull %3, ptr noundef nonnull %117) #7
  br label %130

130:                                              ; preds = %119, %123, %31
  %131 = phi ptr [ %34, %31 ], [ %122, %119 ], [ %116, %123 ]
  %132 = phi i1 [ false, %31 ], [ false, %119 ], [ true, %123 ]
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = call ptr @GetNextImageInList(ptr noundef nonnull %27) #7
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %26, !llvm.loop !82

136:                                              ; preds = %133, %18
  %137 = phi ptr [ %16, %18 ], [ %131, %133 ]
  %138 = call ptr @DestroyImage(ptr noundef %137) #7
  %139 = load ptr, ptr %3, align 8, !tbaa !81
  %140 = call ptr @GetFirstImageInList(ptr noundef %139) #7
  br label %141

141:                                              ; preds = %130, %10, %136
  %142 = phi ptr [ %140, %136 ], [ null, %10 ], [ null, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret ptr %142
}

declare ptr @NewImageList() local_unnamed_addr #2

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CompareImageLayers(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 788, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #7
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %14 = tail call i64 @GetImageListLength(ptr noundef %13) #7
  %15 = tail call ptr @AcquireQuantumMemory(i64 noundef %14, i64 noundef 32) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 801, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #7
  br label %92

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26
  %22 = load i64, ptr %21, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !79
  %25 = tail call ptr @CloneImage(ptr noundef %13, i64 noundef %22, i64 noundef %24, i32 noundef 1, ptr noundef %2) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #7
  br label %92

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 12, i32 3
  store i16 -1, ptr %30, align 2, !tbaa !80
  %31 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %25) #7
  %32 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false), !tbaa.struct !53
  %33 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26, i32 2
  %34 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  %35 = load i64, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !63
  %38 = tail call i32 @CompositeImage(ptr noundef nonnull %25, i32 noundef 13, ptr noundef %13, i64 noundef %35, i64 noundef %37) #7
  %39 = tail call ptr @GetNextImageInList(ptr noundef %13) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %29, %49
  %42 = phi i64 [ %57, %49 ], [ 0, %29 ]
  %43 = phi ptr [ %58, %49 ], [ %39, %29 ]
  %44 = tail call ptr @CloneImage(ptr noundef nonnull %25, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #7
  %48 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #7
  br label %92

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 26, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 26, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !63
  %54 = tail call i32 @CompositeImage(ptr noundef nonnull %25, i32 noundef 13, ptr noundef nonnull %43, i64 noundef %51, i64 noundef %53) #7
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 %42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %44, ptr noundef nonnull %25, i32 noundef %1, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %56 = tail call ptr @DestroyImage(ptr noundef nonnull %44) #7
  %57 = add nuw nsw i64 %42, 1
  %58 = tail call ptr @GetNextImageInList(ptr noundef nonnull %43) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %41, !llvm.loop !83

60:                                               ; preds = %49, %29
  %61 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #7
  %62 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %63 = tail call ptr @CloneImage(ptr noundef %62, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #7
  store ptr %63, ptr %4, align 8, !tbaa !81
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #7
  br label %92

67:                                               ; preds = %60
  %68 = tail call ptr @GetNextImageInList(ptr noundef %62) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %70

70:                                               ; preds = %67, %80
  %71 = phi i64 [ %81, %80 ], [ 0, %67 ]
  %72 = phi ptr [ %82, %80 ], [ %68, %67 ]
  %73 = call ptr @CloneImage(ptr noundef nonnull %72, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 %71
  %77 = call ptr @CropImage(ptr noundef nonnull %73, ptr noundef nonnull %76, ptr noundef %2) #7
  %78 = call ptr @DestroyImage(ptr noundef nonnull %73) #7
  %79 = icmp eq ptr %77, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %77) #7
  %81 = add nuw nsw i64 %71, 1
  %82 = call ptr @GetNextImageInList(ptr noundef nonnull %72) #7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %70, !llvm.loop !84

84:                                               ; preds = %75, %70
  %85 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #7
  %86 = load ptr, ptr %4, align 8, !tbaa !81
  %87 = call ptr @DestroyImageList(ptr noundef %86) #7
  store ptr %87, ptr %4, align 8, !tbaa !81
  br label %92

88:                                               ; preds = %80, %67
  %89 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #7
  %90 = load ptr, ptr %4, align 8, !tbaa !81
  %91 = call ptr @GetFirstImageInList(ptr noundef %90) #7
  br label %92

92:                                               ; preds = %88, %84, %65, %46, %27, %17
  %93 = phi ptr [ null, %17 ], [ null, %27 ], [ null, %46 ], [ null, %65 ], [ null, %84 ], [ %91, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %93
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @CompareImageBounds(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._RectangleInfo) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #7
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %6) #7
  call void @GetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %7) #7
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !58
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %122

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %24 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %26 = icmp eq i32 %3, 2
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 2
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 2
  br label %29

29:                                               ; preds = %11, %118
  %30 = phi i64 [ 0, %11 ], [ %119, %118 ]
  %31 = load i64, ptr %12, align 8, !tbaa !59
  %32 = call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef %30, i64 noundef 0, i64 noundef 1, i64 noundef %31, ptr noundef %4) #7
  %33 = load i64, ptr %13, align 8, !tbaa !59
  %34 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef %30, i64 noundef 0, i64 noundef 1, i64 noundef %33, ptr noundef %4) #7
  %35 = icmp eq ptr %32, null
  %36 = icmp eq ptr %34, null
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %122, label %38

38:                                               ; preds = %29
  %39 = call ptr @GetVirtualIndexQueue(ptr noundef %1) #7
  %40 = call ptr @GetVirtualIndexQueue(ptr noundef %2) #7
  %41 = load i64, ptr %12, align 8, !tbaa !59
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %114

43:                                               ; preds = %38
  %44 = icmp ne ptr %39, null
  %45 = getelementptr inbounds i16, ptr %39, i64 %30
  %46 = icmp ne ptr %40, null
  %47 = getelementptr inbounds i16, ptr %40, i64 %30
  br label %48

48:                                               ; preds = %43, %108
  %49 = phi i64 [ 0, %43 ], [ %111, %108 ]
  %50 = phi ptr [ %34, %43 ], [ %110, %108 ]
  %51 = phi ptr [ %32, %43 ], [ %109, %108 ]
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !85
  %54 = uitofp i16 %53 to float
  store float %54, ptr %14, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !89
  %57 = uitofp i16 %56 to float
  store float %57, ptr %15, align 4, !tbaa !90
  %58 = load i16, ptr %51, align 2, !tbaa !91
  %59 = uitofp i16 %58 to float
  store float %59, ptr %16, align 8, !tbaa !92
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !65
  %62 = uitofp i16 %61 to float
  store float %62, ptr %17, align 4, !tbaa !93
  %63 = load i32, ptr %18, align 4, !tbaa !94
  %64 = icmp eq i32 %63, 12
  %65 = and i1 %44, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i16, ptr %45, align 2, !tbaa !95
  %68 = uitofp i16 %67 to float
  store float %68, ptr %19, align 8, !tbaa !96
  br label %69

69:                                               ; preds = %48, %66
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  %71 = load i16, ptr %70, align 2, !tbaa !85
  %72 = uitofp i16 %71 to float
  store float %72, ptr %20, align 8, !tbaa !86
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !89
  %75 = uitofp i16 %74 to float
  store float %75, ptr %21, align 4, !tbaa !90
  %76 = load i16, ptr %50, align 2, !tbaa !91
  %77 = uitofp i16 %76 to float
  store float %77, ptr %22, align 8, !tbaa !92
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 3
  %79 = load i16, ptr %78, align 2, !tbaa !65
  %80 = uitofp i16 %79 to float
  store float %80, ptr %23, align 4, !tbaa !93
  %81 = load i32, ptr %24, align 4, !tbaa !94
  %82 = icmp eq i32 %81, 12
  %83 = and i1 %46, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i16, ptr %47, align 2, !tbaa !95
  %86 = uitofp i16 %85 to float
  store float %86, ptr %25, align 8, !tbaa !96
  br label %87

87:                                               ; preds = %69, %84
  br i1 %26, label %88, label %91

88:                                               ; preds = %87
  %89 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %90 = icmp eq i32 %89, 0
  br label %106

91:                                               ; preds = %87
  %92 = load i32, ptr %27, align 8, !tbaa !97
  %93 = icmp ne i32 %92, 0
  %94 = icmp slt i16 %79, 0
  %95 = select i1 %93, i1 %94, i1 false
  switch i32 %3, label %108 [
    i32 3, label %96
    i32 4, label %102
  ]

96:                                               ; preds = %91
  %97 = load i32, ptr %28, align 8, !tbaa !97
  %98 = icmp eq i32 %97, 0
  %99 = icmp sgt i16 %61, -1
  %100 = select i1 %98, i1 true, i1 %99
  %101 = select i1 %100, i1 %95, i1 false
  br label %106

102:                                              ; preds = %91
  br i1 %95, label %108, label %103

103:                                              ; preds = %102
  %104 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %105 = icmp eq i32 %104, 0
  br label %106

106:                                              ; preds = %88, %96, %103
  %107 = phi i1 [ %90, %88 ], [ %101, %96 ], [ %105, %103 ]
  br i1 %107, label %114, label %108

108:                                              ; preds = %102, %91, %106
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 1
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %111 = add nuw nsw i64 %49, 1
  %112 = load i64, ptr %12, align 8, !tbaa !59
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %48, label %114, !llvm.loop !98

114:                                              ; preds = %108, %106, %38
  %115 = phi i64 [ 0, %38 ], [ %111, %108 ], [ %49, %106 ]
  %116 = load i64, ptr %12, align 8, !tbaa !59
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = add nuw nsw i64 %30, 1
  %120 = load i64, ptr %8, align 8, !tbaa !58
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %29, label %122, !llvm.loop !99

122:                                              ; preds = %118, %29, %114, %5
  %123 = phi i64 [ 0, %5 ], [ %119, %118 ], [ %30, %29 ], [ %30, %114 ]
  %124 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %125 = load i64, ptr %124, align 8, !tbaa !58
  %126 = icmp slt i64 %123, %125
  %127 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 2
  br i1 %126, label %129, label %128

128:                                              ; preds = %122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, i8 -1, i64 16, i1 false)
  store i64 1, ptr %0, align 8, !tbaa !77
  br label %470

129:                                              ; preds = %122
  store i64 %123, ptr %127, align 8, !tbaa !74
  %130 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %131 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %136 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %142 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %144 = icmp eq i32 %3, 2
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 2
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 2
  br label %147

147:                                              ; preds = %235, %129
  %148 = phi i64 [ %125, %129 ], [ %149, %235 ]
  %149 = add nsw i64 %148, -1
  %150 = icmp sgt i64 %148, 0
  br i1 %150, label %151, label %239

151:                                              ; preds = %147
  %152 = load i64, ptr %130, align 8, !tbaa !59
  %153 = call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef %149, i64 noundef 0, i64 noundef 1, i64 noundef %152, ptr noundef %4) #7
  %154 = load i64, ptr %131, align 8, !tbaa !59
  %155 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef %149, i64 noundef 0, i64 noundef 1, i64 noundef %154, ptr noundef %4) #7
  %156 = icmp eq ptr %153, null
  %157 = icmp eq ptr %155, null
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %239, label %159

159:                                              ; preds = %151
  %160 = call ptr @GetVirtualIndexQueue(ptr noundef %1) #7
  %161 = call ptr @GetVirtualIndexQueue(ptr noundef %2) #7
  %162 = load i64, ptr %130, align 8, !tbaa !59
  %163 = icmp sgt i64 %162, 0
  br i1 %163, label %164, label %235

164:                                              ; preds = %159
  %165 = icmp ne ptr %160, null
  %166 = getelementptr inbounds i16, ptr %160, i64 %149
  %167 = icmp ne ptr %161, null
  %168 = getelementptr inbounds i16, ptr %161, i64 %149
  br label %169

169:                                              ; preds = %164, %229
  %170 = phi i64 [ 0, %164 ], [ %232, %229 ]
  %171 = phi ptr [ %155, %164 ], [ %231, %229 ]
  %172 = phi ptr [ %153, %164 ], [ %230, %229 ]
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 2
  %174 = load i16, ptr %173, align 2, !tbaa !85
  %175 = uitofp i16 %174 to float
  store float %175, ptr %132, align 8, !tbaa !86
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 1
  %177 = load i16, ptr %176, align 2, !tbaa !89
  %178 = uitofp i16 %177 to float
  store float %178, ptr %133, align 4, !tbaa !90
  %179 = load i16, ptr %172, align 2, !tbaa !91
  %180 = uitofp i16 %179 to float
  store float %180, ptr %134, align 8, !tbaa !92
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 3
  %182 = load i16, ptr %181, align 2, !tbaa !65
  %183 = uitofp i16 %182 to float
  store float %183, ptr %135, align 4, !tbaa !93
  %184 = load i32, ptr %136, align 4, !tbaa !94
  %185 = icmp eq i32 %184, 12
  %186 = and i1 %165, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %169
  %188 = load i16, ptr %166, align 2, !tbaa !95
  %189 = uitofp i16 %188 to float
  store float %189, ptr %137, align 8, !tbaa !96
  br label %190

190:                                              ; preds = %169, %187
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 0, i32 2
  %192 = load i16, ptr %191, align 2, !tbaa !85
  %193 = uitofp i16 %192 to float
  store float %193, ptr %138, align 8, !tbaa !86
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 0, i32 1
  %195 = load i16, ptr %194, align 2, !tbaa !89
  %196 = uitofp i16 %195 to float
  store float %196, ptr %139, align 4, !tbaa !90
  %197 = load i16, ptr %171, align 2, !tbaa !91
  %198 = uitofp i16 %197 to float
  store float %198, ptr %140, align 8, !tbaa !92
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 0, i32 3
  %200 = load i16, ptr %199, align 2, !tbaa !65
  %201 = uitofp i16 %200 to float
  store float %201, ptr %141, align 4, !tbaa !93
  %202 = load i32, ptr %142, align 4, !tbaa !94
  %203 = icmp eq i32 %202, 12
  %204 = and i1 %167, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %190
  %206 = load i16, ptr %168, align 2, !tbaa !95
  %207 = uitofp i16 %206 to float
  store float %207, ptr %143, align 8, !tbaa !96
  br label %208

208:                                              ; preds = %190, %205
  br i1 %144, label %209, label %212

209:                                              ; preds = %208
  %210 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %211 = icmp eq i32 %210, 0
  br label %227

212:                                              ; preds = %208
  %213 = load i32, ptr %145, align 8, !tbaa !97
  %214 = icmp ne i32 %213, 0
  %215 = icmp slt i16 %200, 0
  %216 = select i1 %214, i1 %215, i1 false
  switch i32 %3, label %229 [
    i32 3, label %217
    i32 4, label %223
  ]

217:                                              ; preds = %212
  %218 = load i32, ptr %146, align 8, !tbaa !97
  %219 = icmp eq i32 %218, 0
  %220 = icmp sgt i16 %182, -1
  %221 = select i1 %219, i1 true, i1 %220
  %222 = select i1 %221, i1 %216, i1 false
  br label %227

223:                                              ; preds = %212
  br i1 %216, label %229, label %224

224:                                              ; preds = %223
  %225 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %226 = icmp eq i32 %225, 0
  br label %227

227:                                              ; preds = %209, %217, %224
  %228 = phi i1 [ %211, %209 ], [ %222, %217 ], [ %226, %224 ]
  br i1 %228, label %235, label %229

229:                                              ; preds = %223, %212, %227
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 1
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 1
  %232 = add nuw nsw i64 %170, 1
  %233 = load i64, ptr %130, align 8, !tbaa !59
  %234 = icmp slt i64 %232, %233
  br i1 %234, label %169, label %235, !llvm.loop !100

235:                                              ; preds = %229, %227, %159
  %236 = phi i64 [ 0, %159 ], [ %232, %229 ], [ %170, %227 ]
  %237 = load i64, ptr %130, align 8, !tbaa !59
  %238 = icmp slt i64 %236, %237
  br i1 %238, label %239, label %147, !llvm.loop !101

239:                                              ; preds = %235, %151, %147
  %240 = phi i64 [ %148, %235 ], [ %148, %151 ], [ 0, %147 ]
  %241 = sub i64 %240, %123
  store i64 %241, ptr %0, align 8, !tbaa !77
  %242 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %243 = load i64, ptr %242, align 8, !tbaa !59
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %355

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %249 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %251 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %253 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %255 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %256 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %257 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %259 = icmp eq i32 %3, 2
  %260 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 2
  %261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 2
  br label %262

262:                                              ; preds = %245, %351
  %263 = phi i64 [ 0, %245 ], [ %352, %351 ]
  %264 = load i64, ptr %124, align 8, !tbaa !58
  %265 = call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef 0, i64 noundef %263, i64 noundef %264, i64 noundef 1, ptr noundef %4) #7
  %266 = load i64, ptr %246, align 8, !tbaa !58
  %267 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef 0, i64 noundef %263, i64 noundef %266, i64 noundef 1, ptr noundef %4) #7
  %268 = icmp eq ptr %265, null
  %269 = icmp eq ptr %267, null
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %355, label %271

271:                                              ; preds = %262
  %272 = call ptr @GetVirtualIndexQueue(ptr noundef %1) #7
  %273 = call ptr @GetVirtualIndexQueue(ptr noundef %2) #7
  %274 = load i64, ptr %124, align 8, !tbaa !58
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %347

276:                                              ; preds = %271
  %277 = icmp ne ptr %272, null
  %278 = icmp ne ptr %273, null
  br label %279

279:                                              ; preds = %276, %341
  %280 = phi i64 [ 0, %276 ], [ %344, %341 ]
  %281 = phi ptr [ %267, %276 ], [ %343, %341 ]
  %282 = phi ptr [ %265, %276 ], [ %342, %341 ]
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 0, i32 2
  %284 = load i16, ptr %283, align 2, !tbaa !85
  %285 = uitofp i16 %284 to float
  store float %285, ptr %247, align 8, !tbaa !86
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 0, i32 1
  %287 = load i16, ptr %286, align 2, !tbaa !89
  %288 = uitofp i16 %287 to float
  store float %288, ptr %248, align 4, !tbaa !90
  %289 = load i16, ptr %282, align 2, !tbaa !91
  %290 = uitofp i16 %289 to float
  store float %290, ptr %249, align 8, !tbaa !92
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 0, i32 3
  %292 = load i16, ptr %291, align 2, !tbaa !65
  %293 = uitofp i16 %292 to float
  store float %293, ptr %250, align 4, !tbaa !93
  %294 = load i32, ptr %251, align 4, !tbaa !94
  %295 = icmp eq i32 %294, 12
  %296 = and i1 %277, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %279
  %298 = getelementptr inbounds i16, ptr %272, i64 %280
  %299 = load i16, ptr %298, align 2, !tbaa !95
  %300 = uitofp i16 %299 to float
  store float %300, ptr %252, align 8, !tbaa !96
  br label %301

301:                                              ; preds = %279, %297
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %281, i64 0, i32 2
  %303 = load i16, ptr %302, align 2, !tbaa !85
  %304 = uitofp i16 %303 to float
  store float %304, ptr %253, align 8, !tbaa !86
  %305 = getelementptr inbounds %struct._PixelPacket, ptr %281, i64 0, i32 1
  %306 = load i16, ptr %305, align 2, !tbaa !89
  %307 = uitofp i16 %306 to float
  store float %307, ptr %254, align 4, !tbaa !90
  %308 = load i16, ptr %281, align 2, !tbaa !91
  %309 = uitofp i16 %308 to float
  store float %309, ptr %255, align 8, !tbaa !92
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %281, i64 0, i32 3
  %311 = load i16, ptr %310, align 2, !tbaa !65
  %312 = uitofp i16 %311 to float
  store float %312, ptr %256, align 4, !tbaa !93
  %313 = load i32, ptr %257, align 4, !tbaa !94
  %314 = icmp eq i32 %313, 12
  %315 = and i1 %278, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %301
  %317 = getelementptr inbounds i16, ptr %273, i64 %280
  %318 = load i16, ptr %317, align 2, !tbaa !95
  %319 = uitofp i16 %318 to float
  store float %319, ptr %258, align 8, !tbaa !96
  br label %320

320:                                              ; preds = %301, %316
  br i1 %259, label %321, label %324

321:                                              ; preds = %320
  %322 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %323 = icmp eq i32 %322, 0
  br label %339

324:                                              ; preds = %320
  %325 = load i32, ptr %260, align 8, !tbaa !97
  %326 = icmp ne i32 %325, 0
  %327 = icmp slt i16 %311, 0
  %328 = select i1 %326, i1 %327, i1 false
  switch i32 %3, label %341 [
    i32 3, label %329
    i32 4, label %335
  ]

329:                                              ; preds = %324
  %330 = load i32, ptr %261, align 8, !tbaa !97
  %331 = icmp eq i32 %330, 0
  %332 = icmp sgt i16 %292, -1
  %333 = select i1 %331, i1 true, i1 %332
  %334 = select i1 %333, i1 %328, i1 false
  br label %339

335:                                              ; preds = %324
  br i1 %328, label %341, label %336

336:                                              ; preds = %335
  %337 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %338 = icmp eq i32 %337, 0
  br label %339

339:                                              ; preds = %321, %329, %336
  %340 = phi i1 [ %323, %321 ], [ %334, %329 ], [ %338, %336 ]
  br i1 %340, label %347, label %341

341:                                              ; preds = %335, %324, %339
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 1
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %281, i64 1
  %344 = add nuw nsw i64 %280, 1
  %345 = load i64, ptr %124, align 8, !tbaa !58
  %346 = icmp slt i64 %344, %345
  br i1 %346, label %279, label %347, !llvm.loop !102

347:                                              ; preds = %341, %339, %271
  %348 = phi i64 [ 0, %271 ], [ %344, %341 ], [ %280, %339 ]
  %349 = load i64, ptr %124, align 8, !tbaa !58
  %350 = icmp slt i64 %348, %349
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = add nuw nsw i64 %263, 1
  %353 = load i64, ptr %242, align 8, !tbaa !59
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %262, label %355, !llvm.loop !103

355:                                              ; preds = %351, %262, %347, %239
  %356 = phi i64 [ 0, %239 ], [ %352, %351 ], [ %263, %262 ], [ %263, %347 ]
  %357 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %358 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 3
  store i64 %356, ptr %358, align 8, !tbaa !76
  %359 = load i64, ptr %357, align 8, !tbaa !59
  %360 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %361 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %362 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %363 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %364 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %365 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %366 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %367 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %368 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %369 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %370 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %371 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %372 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %373 = icmp eq i32 %3, 2
  %374 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 2
  %375 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 2
  br label %376

376:                                              ; preds = %464, %355
  %377 = phi i64 [ %359, %355 ], [ %378, %464 ]
  %378 = add nsw i64 %377, -1
  %379 = icmp sgt i64 %377, 0
  br i1 %379, label %380, label %468

380:                                              ; preds = %376
  %381 = load i64, ptr %124, align 8, !tbaa !58
  %382 = call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef 0, i64 noundef %378, i64 noundef %381, i64 noundef 1, ptr noundef %4) #7
  %383 = load i64, ptr %360, align 8, !tbaa !58
  %384 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef 0, i64 noundef %378, i64 noundef %383, i64 noundef 1, ptr noundef %4) #7
  %385 = icmp eq ptr %382, null
  %386 = icmp eq ptr %384, null
  %387 = select i1 %385, i1 true, i1 %386
  br i1 %387, label %468, label %388

388:                                              ; preds = %380
  %389 = call ptr @GetVirtualIndexQueue(ptr noundef %1) #7
  %390 = call ptr @GetVirtualIndexQueue(ptr noundef %2) #7
  %391 = load i64, ptr %124, align 8, !tbaa !58
  %392 = icmp sgt i64 %391, 0
  br i1 %392, label %393, label %464

393:                                              ; preds = %388
  %394 = icmp ne ptr %389, null
  %395 = icmp ne ptr %390, null
  br label %396

396:                                              ; preds = %393, %458
  %397 = phi i64 [ 0, %393 ], [ %461, %458 ]
  %398 = phi ptr [ %384, %393 ], [ %460, %458 ]
  %399 = phi ptr [ %382, %393 ], [ %459, %458 ]
  %400 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 0, i32 2
  %401 = load i16, ptr %400, align 2, !tbaa !85
  %402 = uitofp i16 %401 to float
  store float %402, ptr %361, align 8, !tbaa !86
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 0, i32 1
  %404 = load i16, ptr %403, align 2, !tbaa !89
  %405 = uitofp i16 %404 to float
  store float %405, ptr %362, align 4, !tbaa !90
  %406 = load i16, ptr %399, align 2, !tbaa !91
  %407 = uitofp i16 %406 to float
  store float %407, ptr %363, align 8, !tbaa !92
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 0, i32 3
  %409 = load i16, ptr %408, align 2, !tbaa !65
  %410 = uitofp i16 %409 to float
  store float %410, ptr %364, align 4, !tbaa !93
  %411 = load i32, ptr %365, align 4, !tbaa !94
  %412 = icmp eq i32 %411, 12
  %413 = and i1 %394, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %396
  %415 = getelementptr inbounds i16, ptr %389, i64 %397
  %416 = load i16, ptr %415, align 2, !tbaa !95
  %417 = uitofp i16 %416 to float
  store float %417, ptr %366, align 8, !tbaa !96
  br label %418

418:                                              ; preds = %396, %414
  %419 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 0, i32 2
  %420 = load i16, ptr %419, align 2, !tbaa !85
  %421 = uitofp i16 %420 to float
  store float %421, ptr %367, align 8, !tbaa !86
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 0, i32 1
  %423 = load i16, ptr %422, align 2, !tbaa !89
  %424 = uitofp i16 %423 to float
  store float %424, ptr %368, align 4, !tbaa !90
  %425 = load i16, ptr %398, align 2, !tbaa !91
  %426 = uitofp i16 %425 to float
  store float %426, ptr %369, align 8, !tbaa !92
  %427 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 0, i32 3
  %428 = load i16, ptr %427, align 2, !tbaa !65
  %429 = uitofp i16 %428 to float
  store float %429, ptr %370, align 4, !tbaa !93
  %430 = load i32, ptr %371, align 4, !tbaa !94
  %431 = icmp eq i32 %430, 12
  %432 = and i1 %395, %431
  br i1 %432, label %433, label %437

433:                                              ; preds = %418
  %434 = getelementptr inbounds i16, ptr %390, i64 %397
  %435 = load i16, ptr %434, align 2, !tbaa !95
  %436 = uitofp i16 %435 to float
  store float %436, ptr %372, align 8, !tbaa !96
  br label %437

437:                                              ; preds = %418, %433
  br i1 %373, label %438, label %441

438:                                              ; preds = %437
  %439 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %440 = icmp eq i32 %439, 0
  br label %456

441:                                              ; preds = %437
  %442 = load i32, ptr %374, align 8, !tbaa !97
  %443 = icmp ne i32 %442, 0
  %444 = icmp slt i16 %428, 0
  %445 = select i1 %443, i1 %444, i1 false
  switch i32 %3, label %458 [
    i32 3, label %446
    i32 4, label %452
  ]

446:                                              ; preds = %441
  %447 = load i32, ptr %375, align 8, !tbaa !97
  %448 = icmp eq i32 %447, 0
  %449 = icmp sgt i16 %409, -1
  %450 = select i1 %448, i1 true, i1 %449
  %451 = select i1 %450, i1 %445, i1 false
  br label %456

452:                                              ; preds = %441
  br i1 %445, label %458, label %453

453:                                              ; preds = %452
  %454 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %455 = icmp eq i32 %454, 0
  br label %456

456:                                              ; preds = %438, %446, %453
  %457 = phi i1 [ %440, %438 ], [ %451, %446 ], [ %455, %453 ]
  br i1 %457, label %464, label %458

458:                                              ; preds = %452, %441, %456
  %459 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 1
  %460 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 1
  %461 = add nuw nsw i64 %397, 1
  %462 = load i64, ptr %124, align 8, !tbaa !58
  %463 = icmp slt i64 %461, %462
  br i1 %463, label %396, label %464, !llvm.loop !104

464:                                              ; preds = %458, %456, %388
  %465 = phi i64 [ 0, %388 ], [ %461, %458 ], [ %397, %456 ]
  %466 = load i64, ptr %124, align 8, !tbaa !58
  %467 = icmp slt i64 %465, %466
  br i1 %467, label %468, label %376, !llvm.loop !105

468:                                              ; preds = %464, %380, %376
  %469 = sub i64 %377, %356
  br label %470

470:                                              ; preds = %468, %128
  %471 = phi i64 [ %469, %468 ], [ 1, %128 ]
  %472 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 1
  store i64 %471, ptr %472, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  ret void
}

declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DeconstructImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CompareImageLayers(ptr noundef %0, i32 noundef 2, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OptimizeImageLayers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @OptimizeLayerFrames(ptr noundef %0, i32 noundef 7, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @OptimizeLayerFrames(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  %7 = alloca %struct._RectangleInfo, align 8
  %8 = alloca %struct._RectangleInfo, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca %struct._RectangleInfo, align 8
  %11 = alloca %struct._RectangleInfo, align 8
  %12 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 997, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #7
  br label %19

19:                                               ; preds = %16, %3
  %20 = icmp eq i32 %1, 8
  %21 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %26

26:                                               ; preds = %23, %40
  %27 = phi ptr [ %21, %23 ], [ %41, %40 ]
  %28 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !58
  %30 = load i64, ptr %24, align 8, !tbaa !58
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !59
  %35 = load i64, ptr %25, align 8, !tbaa !59
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %26
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1015, i32 noundef 410, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #7
  br label %645

40:                                               ; preds = %32
  %41 = tail call ptr @GetNextImageInList(ptr noundef nonnull %27) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %26, !llvm.loop !106

43:                                               ; preds = %40, %19
  %44 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %45 = tail call i64 @GetImageListLength(ptr noundef %44) #7
  %46 = select i1 %20, i64 2, i64 1
  %47 = shl nuw nsw i64 %46, 5
  %48 = tail call ptr @AcquireQuantumMemory(i64 noundef %45, i64 noundef %47) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %52 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %51) #7
  br label %645

53:                                               ; preds = %43
  %54 = tail call i64 @GetImageListLength(ptr noundef %0) #7
  %55 = shl nuw nsw i64 %46, 2
  %56 = tail call ptr @AcquireQuantumMemory(i64 noundef %54, i64 noundef %55) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #7
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %61 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1036, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %60) #7
  br label %645

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 26
  %64 = load i64, ptr %63, align 8, !tbaa !78
  %65 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 26, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !79
  %67 = tail call ptr @CloneImage(ptr noundef %44, i64 noundef %64, i64 noundef %66, i32 noundef 1, ptr noundef %2) #7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #7
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %56) #7
  br label %645

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !53
  %74 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 26, i32 2
  %75 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  store i32 1, ptr %75, align 4, !tbaa !61
  %76 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 12, i32 3
  store i16 -1, ptr %76, align 2, !tbaa !80
  %77 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %67) #7
  store i32 1, ptr %56, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %67, ptr noundef %44, i32 noundef 2, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %78 = tail call ptr @GetNextImageInList(ptr noundef %44) #7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %557, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds i8, ptr %7, i64 8
  %82 = getelementptr inbounds i8, ptr %7, i64 16
  %83 = getelementptr inbounds i8, ptr %7, i64 24
  %84 = getelementptr inbounds i8, ptr %8, i64 8
  %85 = getelementptr inbounds i8, ptr %8, i64 16
  %86 = getelementptr inbounds i8, ptr %8, i64 24
  %87 = getelementptr inbounds i8, ptr %9, i64 8
  %88 = getelementptr inbounds i8, ptr %9, i64 16
  %89 = getelementptr inbounds i8, ptr %9, i64 24
  %90 = getelementptr inbounds i8, ptr %10, i64 8
  %91 = getelementptr inbounds i8, ptr %10, i64 16
  %92 = getelementptr inbounds i8, ptr %10, i64 24
  %93 = getelementptr inbounds i8, ptr %11, i64 8
  %94 = getelementptr inbounds i8, ptr %11, i64 16
  %95 = getelementptr inbounds i8, ptr %11, i64 24
  %96 = getelementptr inbounds i8, ptr %12, i64 8
  %97 = getelementptr inbounds i8, ptr %12, i64 16
  %98 = getelementptr inbounds i8, ptr %12, i64 24
  br label %99

99:                                               ; preds = %80, %545
  %100 = phi i64 [ 1, %80 ], [ %554, %545 ]
  %101 = phi ptr [ %78, %80 ], [ %555, %545 ]
  %102 = phi ptr [ null, %80 ], [ %552, %545 ]
  %103 = phi ptr [ null, %80 ], [ %551, %545 ]
  %104 = phi ptr [ %67, %80 ], [ %550, %545 ]
  %105 = phi i64 [ 0, %80 ], [ %549, %545 ]
  %106 = phi i64 [ 0, %80 ], [ %548, %545 ]
  %107 = phi i64 [ 0, %80 ], [ %547, %545 ]
  %108 = phi i64 [ 0, %80 ], [ %546, %545 ]
  %109 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %110 = getelementptr inbounds %struct._Image, ptr %101, i64 0, i32 67
  %111 = load ptr, ptr %110, align 8, !tbaa !64
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %6, ptr noundef %111, ptr noundef nonnull %101, i32 noundef 2, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %109, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  %112 = load ptr, ptr %110, align 8, !tbaa !64
  %113 = tail call fastcc i32 @IsBoundsCleared(ptr noundef %112, ptr noundef nonnull %101, ptr noundef nonnull %109, ptr noundef %2), !range !108
  %114 = add nsw i64 %100, -1
  %115 = getelementptr inbounds i32, ptr %56, i64 %114
  store i32 1, ptr %115, align 4, !tbaa !107
  %116 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %100, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !74
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %99
  %120 = icmp sgt i64 %100, 1
  %121 = select i1 %20, i1 %120, i1 false
  br i1 %121, label %122, label %481

122:                                              ; preds = %119
  store i32 8, ptr %115, align 4, !tbaa !107
  %123 = getelementptr inbounds i32, ptr %56, i64 %100
  store i32 1, ptr %123, align 4, !tbaa !107
  %124 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %109, ptr noundef nonnull align 8 dereferenceable(32) %124, i64 32, i1 false), !tbaa.struct !53
  br label %545

125:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %7, ptr noundef %104, ptr noundef nonnull %101, i32 noundef 2, ptr noundef %2)
  %126 = load i64, ptr %7, align 8, !tbaa.struct !53
  %127 = load i64, ptr %81, align 8, !tbaa.struct !55
  %128 = load i64, ptr %82, align 8, !tbaa.struct !57
  %129 = load i64, ptr %83, align 8, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  %130 = icmp slt i64 %128, 0
  br i1 %130, label %170, label %131

131:                                              ; preds = %125
  %132 = icmp sgt i64 %127, 0
  br i1 %132, label %133, label %166

133:                                              ; preds = %131
  %134 = icmp sgt i64 %126, 0
  br label %135

135:                                              ; preds = %133, %163
  %136 = phi i64 [ %164, %163 ], [ 0, %133 ]
  %137 = add nsw i64 %136, %129
  %138 = tail call ptr @GetVirtualPixels(ptr noundef %104, i64 noundef %128, i64 noundef %137, i64 noundef %126, i64 noundef 1, ptr noundef %2) #7
  %139 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %101, i64 noundef %128, i64 noundef %137, i64 noundef %126, i64 noundef 1, ptr noundef %2) #7
  %140 = icmp eq ptr %138, null
  %141 = icmp eq ptr %139, null
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %166, label %143

143:                                              ; preds = %135
  br i1 %134, label %144, label %163

144:                                              ; preds = %143, %156
  %145 = phi i1 [ %160, %156 ], [ %134, %143 ]
  %146 = phi i64 [ %159, %156 ], [ 0, %143 ]
  %147 = phi ptr [ %158, %156 ], [ %139, %143 ]
  %148 = phi ptr [ %157, %156 ], [ %138, %143 ]
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 0, i32 3
  %150 = load i16, ptr %149, align 2, !tbaa !65
  %151 = icmp sgt i16 %150, -1
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 0, i32 3
  %154 = load i16, ptr %153, align 2, !tbaa !65
  %155 = icmp slt i16 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %152, %144
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 1
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 1
  %159 = add nuw nsw i64 %146, 1
  %160 = icmp slt i64 %159, %126
  %161 = icmp eq i64 %159, %126
  br i1 %161, label %163, label %144, !llvm.loop !71

162:                                              ; preds = %152
  br i1 %145, label %166, label %163

163:                                              ; preds = %156, %162, %143
  %164 = add nuw nsw i64 %136, 1
  %165 = icmp eq i64 %164, %127
  br i1 %165, label %166, label %135, !llvm.loop !72

166:                                              ; preds = %163, %162, %135, %131
  %167 = phi i64 [ 0, %131 ], [ %127, %163 ], [ %136, %135 ], [ %136, %162 ]
  %168 = icmp slt i64 %167, %127
  %169 = zext i1 %168 to i32
  br label %170

170:                                              ; preds = %125, %166
  %171 = phi i32 [ %169, %166 ], [ 0, %125 ]
  %172 = icmp eq i32 %171, 0
  %173 = icmp ne i32 %113, 0
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %182, label %175

175:                                              ; preds = %170
  %176 = mul i64 %127, %126
  %177 = load i64, ptr %109, align 8, !tbaa !77
  %178 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %100, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !75
  %180 = mul i64 %179, %177
  %181 = icmp ult i64 %176, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %170, %175
  store i64 %126, ptr %109, align 8, !tbaa.struct !53
  %183 = getelementptr inbounds i8, ptr %109, i64 8
  store i64 %127, ptr %183, align 8, !tbaa.struct !55
  %184 = getelementptr inbounds i8, ptr %109, i64 16
  store i64 %128, ptr %184, align 8, !tbaa.struct !57
  %185 = getelementptr inbounds i8, ptr %109, i64 24
  store i64 %129, ptr %185, align 8, !tbaa.struct !56
  store i32 3, ptr %115, align 4, !tbaa !107
  br label %186

186:                                              ; preds = %182, %175
  %187 = phi i32 [ %171, %182 ], [ %113, %175 ]
  br i1 %20, label %188, label %259

188:                                              ; preds = %186
  %189 = load ptr, ptr %110, align 8, !tbaa !64
  %190 = getelementptr inbounds %struct._Image, ptr %189, i64 0, i32 26
  %191 = load i64, ptr %190, align 8, !tbaa !78
  %192 = getelementptr inbounds %struct._Image, ptr %189, i64 0, i32 26, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !79
  %194 = tail call ptr @CloneImage(ptr noundef %189, i64 noundef %191, i64 noundef %193, i32 noundef 1, ptr noundef %2) #7
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #7
  %198 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %56) #7
  %199 = tail call ptr @DestroyImage(ptr noundef %104) #7
  br label %645

200:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %8, ptr noundef nonnull %194, ptr noundef nonnull %101, i32 noundef 3, ptr noundef %2)
  %201 = load i64, ptr %8, align 8, !tbaa.struct !53
  %202 = load i64, ptr %84, align 8, !tbaa.struct !55
  %203 = load i64, ptr %85, align 8, !tbaa.struct !57
  %204 = load i64, ptr %86, align 8, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  %205 = icmp slt i64 %203, 0
  br i1 %205, label %240, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct._Image, ptr %194, i64 0, i32 6
  %208 = load i32, ptr %207, align 8, !tbaa !60
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %194, i32 noundef 6) #7
  br label %212

212:                                              ; preds = %210, %206
  %213 = getelementptr inbounds %struct._Image, ptr %194, i64 0, i32 58
  %214 = icmp sgt i64 %202, 0
  br i1 %214, label %215, label %240

215:                                              ; preds = %212
  %216 = icmp sgt i64 %201, 0
  br label %217

217:                                              ; preds = %215, %234
  %218 = phi i64 [ %237, %234 ], [ 0, %215 ]
  %219 = add nsw i64 %218, %204
  %220 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %194, i64 noundef %203, i64 noundef %219, i64 noundef %201, i64 noundef 1, ptr noundef nonnull %213) #7
  %221 = icmp eq ptr %220, null
  br i1 %221, label %234, label %222

222:                                              ; preds = %217
  br i1 %216, label %223, label %230

223:                                              ; preds = %222, %223
  %224 = phi ptr [ %227, %223 ], [ %220, %222 ]
  %225 = phi i64 [ %228, %223 ], [ 0, %222 ]
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 3
  store i16 -1, ptr %226, align 2, !tbaa !65
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 1
  %228 = add nuw nsw i64 %225, 1
  %229 = icmp eq i64 %228, %201
  br i1 %229, label %230, label %223, !llvm.loop !66

230:                                              ; preds = %223, %222
  %231 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %194, ptr noundef nonnull %213) #7
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i32 2, i32 0
  br label %234

234:                                              ; preds = %230, %217
  %235 = phi i32 [ 2, %217 ], [ %233, %230 ]
  %236 = icmp eq i32 %235, 0
  %237 = add nuw nsw i64 %218, 1
  %238 = icmp slt i64 %237, %202
  %239 = select i1 %236, i1 %238, i1 false
  br i1 %239, label %217, label %240, !llvm.loop !69

240:                                              ; preds = %234, %200, %212
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %9, ptr noundef nonnull %194, ptr noundef nonnull %101, i32 noundef 2, ptr noundef %2)
  %241 = load i64, ptr %9, align 8, !tbaa.struct !53
  %242 = load i64, ptr %87, align 8, !tbaa.struct !55
  %243 = load i64, ptr %88, align 8, !tbaa.struct !57
  %244 = load i64, ptr %89, align 8, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  %245 = icmp eq i32 %187, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = mul i64 %202, %201
  %248 = mul i64 %242, %241
  %249 = add i64 %248, %247
  %250 = load i64, ptr %109, align 8, !tbaa !77
  %251 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %100, i32 1
  %252 = load i64, ptr %251, align 8, !tbaa !75
  %253 = mul i64 %252, %250
  %254 = icmp ult i64 %249, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %246, %240
  store i64 %241, ptr %109, align 8, !tbaa.struct !53
  %256 = getelementptr inbounds i8, ptr %109, i64 8
  store i64 %242, ptr %256, align 8, !tbaa.struct !55
  %257 = getelementptr inbounds i8, ptr %109, i64 16
  store i64 %243, ptr %257, align 8, !tbaa.struct !57
  %258 = getelementptr inbounds i8, ptr %109, i64 24
  store i64 %244, ptr %258, align 8, !tbaa.struct !56
  store i32 9, ptr %115, align 4, !tbaa !107
  br label %259

259:                                              ; preds = %246, %255, %186
  %260 = phi i64 [ %204, %255 ], [ %108, %186 ], [ %204, %246 ]
  %261 = phi i64 [ %203, %255 ], [ %107, %186 ], [ %203, %246 ]
  %262 = phi i64 [ %202, %255 ], [ 0, %186 ], [ 0, %246 ]
  %263 = phi i64 [ %201, %255 ], [ 0, %186 ], [ 0, %246 ]
  %264 = phi ptr [ %194, %255 ], [ %103, %186 ], [ %194, %246 ]
  %265 = phi i32 [ 0, %255 ], [ %187, %186 ], [ 0, %246 ]
  %266 = load ptr, ptr %110, align 8, !tbaa !64
  %267 = getelementptr inbounds %struct._Image, ptr %266, i64 0, i32 26
  %268 = load i64, ptr %267, align 8, !tbaa !78
  %269 = getelementptr inbounds %struct._Image, ptr %266, i64 0, i32 26, i32 1
  %270 = load i64, ptr %269, align 8, !tbaa !79
  %271 = tail call ptr @CloneImage(ptr noundef %266, i64 noundef %268, i64 noundef %270, i32 noundef 1, ptr noundef %2) #7
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %280

273:                                              ; preds = %259
  %274 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #7
  %275 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %56) #7
  %276 = tail call ptr @DestroyImage(ptr noundef %104) #7
  %277 = icmp eq ptr %264, null
  br i1 %277, label %645, label %278

278:                                              ; preds = %273
  %279 = tail call ptr @DestroyImage(ptr noundef nonnull %264) #7
  br label %645

280:                                              ; preds = %259
  %281 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %114
  %282 = load i64, ptr %281, align 8, !tbaa.struct !53
  %283 = getelementptr inbounds i8, ptr %281, i64 8
  %284 = load i64, ptr %283, align 8, !tbaa.struct !55
  %285 = getelementptr inbounds i8, ptr %281, i64 16
  %286 = load i64, ptr %285, align 8, !tbaa.struct !57
  %287 = getelementptr inbounds i8, ptr %281, i64 24
  %288 = load i64, ptr %287, align 8, !tbaa.struct !56
  %289 = icmp slt i64 %286, 0
  br i1 %289, label %324, label %290

290:                                              ; preds = %280
  %291 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 6
  %292 = load i32, ptr %291, align 8, !tbaa !60
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %271, i32 noundef 6) #7
  br label %296

296:                                              ; preds = %294, %290
  %297 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 58
  %298 = icmp sgt i64 %284, 0
  br i1 %298, label %299, label %324

299:                                              ; preds = %296
  %300 = icmp sgt i64 %282, 0
  br label %301

301:                                              ; preds = %299, %318
  %302 = phi i64 [ %321, %318 ], [ 0, %299 ]
  %303 = add nsw i64 %302, %288
  %304 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %271, i64 noundef %286, i64 noundef %303, i64 noundef %282, i64 noundef 1, ptr noundef nonnull %297) #7
  %305 = icmp eq ptr %304, null
  br i1 %305, label %318, label %306

306:                                              ; preds = %301
  br i1 %300, label %307, label %314

307:                                              ; preds = %306, %307
  %308 = phi ptr [ %311, %307 ], [ %304, %306 ]
  %309 = phi i64 [ %312, %307 ], [ 0, %306 ]
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 0, i32 3
  store i16 -1, ptr %310, align 2, !tbaa !65
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 1
  %312 = add nuw nsw i64 %309, 1
  %313 = icmp eq i64 %312, %282
  br i1 %313, label %314, label %307, !llvm.loop !66

314:                                              ; preds = %307, %306
  %315 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %271, ptr noundef nonnull %297) #7
  %316 = icmp eq i32 %315, 0
  %317 = select i1 %316, i32 2, i32 0
  br label %318

318:                                              ; preds = %314, %301
  %319 = phi i32 [ 2, %301 ], [ %317, %314 ]
  %320 = icmp eq i32 %319, 0
  %321 = add nuw nsw i64 %302, 1
  %322 = icmp slt i64 %321, %284
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %301, label %324, !llvm.loop !69

324:                                              ; preds = %318, %280, %296
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %10, ptr noundef nonnull %271, ptr noundef nonnull %101, i32 noundef 2, ptr noundef %2)
  %325 = load i64, ptr %10, align 8, !tbaa.struct !53
  %326 = load i64, ptr %90, align 8, !tbaa.struct !55
  %327 = load i64, ptr %91, align 8, !tbaa.struct !57
  %328 = load i64, ptr %92, align 8, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #7
  %329 = icmp slt i64 %327, 0
  br i1 %329, label %369, label %330

330:                                              ; preds = %324
  %331 = icmp sgt i64 %326, 0
  br i1 %331, label %332, label %365

332:                                              ; preds = %330
  %333 = icmp sgt i64 %325, 0
  br label %334

334:                                              ; preds = %332, %362
  %335 = phi i64 [ %363, %362 ], [ 0, %332 ]
  %336 = add nsw i64 %335, %328
  %337 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %271, i64 noundef %327, i64 noundef %336, i64 noundef %325, i64 noundef 1, ptr noundef %2) #7
  %338 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %101, i64 noundef %327, i64 noundef %336, i64 noundef %325, i64 noundef 1, ptr noundef %2) #7
  %339 = icmp eq ptr %337, null
  %340 = icmp eq ptr %338, null
  %341 = select i1 %339, i1 true, i1 %340
  br i1 %341, label %365, label %342

342:                                              ; preds = %334
  br i1 %333, label %343, label %362

343:                                              ; preds = %342, %355
  %344 = phi i1 [ %359, %355 ], [ %333, %342 ]
  %345 = phi i64 [ %358, %355 ], [ 0, %342 ]
  %346 = phi ptr [ %357, %355 ], [ %338, %342 ]
  %347 = phi ptr [ %356, %355 ], [ %337, %342 ]
  %348 = getelementptr inbounds %struct._PixelPacket, ptr %347, i64 0, i32 3
  %349 = load i16, ptr %348, align 2, !tbaa !65
  %350 = icmp sgt i16 %349, -1
  br i1 %350, label %351, label %355

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 0, i32 3
  %353 = load i16, ptr %352, align 2, !tbaa !65
  %354 = icmp slt i16 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %351, %343
  %356 = getelementptr inbounds %struct._PixelPacket, ptr %347, i64 1
  %357 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 1
  %358 = add nuw nsw i64 %345, 1
  %359 = icmp slt i64 %358, %325
  %360 = icmp eq i64 %358, %325
  br i1 %360, label %362, label %343, !llvm.loop !71

361:                                              ; preds = %351
  br i1 %344, label %365, label %362

362:                                              ; preds = %355, %361, %342
  %363 = add nuw nsw i64 %335, 1
  %364 = icmp eq i64 %363, %326
  br i1 %364, label %365, label %334, !llvm.loop !72

365:                                              ; preds = %362, %361, %334, %330
  %366 = phi i64 [ 0, %330 ], [ %326, %362 ], [ %335, %334 ], [ %335, %361 ]
  %367 = icmp slt i64 %366, %326
  %368 = zext i1 %367 to i32
  br label %369

369:                                              ; preds = %324, %365
  %370 = phi i32 [ %368, %365 ], [ 0, %324 ]
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %445, label %372

372:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #7
  %373 = load ptr, ptr %110, align 8, !tbaa !64
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %11, ptr noundef %373, ptr noundef nonnull %101, i32 noundef 3, ptr noundef %2)
  %374 = load i64, ptr %11, align 8, !tbaa.struct !53
  %375 = load i64, ptr %93, align 8, !tbaa.struct !55
  %376 = load i64, ptr %94, align 8, !tbaa.struct !57
  %377 = load i64, ptr %95, align 8, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #7
  br i1 %289, label %400, label %378

378:                                              ; preds = %372
  %379 = icmp slt i64 %376, %286
  br i1 %379, label %380, label %384

380:                                              ; preds = %378
  %381 = add i64 %286, %282
  %382 = sub i64 %381, %376
  %383 = tail call i64 @llvm.umax.i64(i64 %382, i64 %374)
  br label %388

384:                                              ; preds = %378
  %385 = sub i64 %374, %286
  %386 = add i64 %385, %376
  %387 = tail call i64 @llvm.umax.i64(i64 %282, i64 %386)
  br label %388

388:                                              ; preds = %384, %380
  %389 = phi i64 [ %376, %380 ], [ %286, %384 ]
  %390 = phi i64 [ %383, %380 ], [ %387, %384 ]
  %391 = icmp slt i64 %377, %288
  br i1 %391, label %392, label %396

392:                                              ; preds = %388
  %393 = add i64 %288, %284
  %394 = sub i64 %393, %377
  %395 = tail call i64 @llvm.umax.i64(i64 %394, i64 %375)
  br label %400

396:                                              ; preds = %388
  %397 = sub i64 %375, %288
  %398 = add i64 %397, %377
  %399 = tail call i64 @llvm.umax.i64(i64 %284, i64 %398)
  br label %400

400:                                              ; preds = %396, %372, %392
  %401 = phi i64 [ %377, %392 ], [ %377, %372 ], [ %288, %396 ]
  %402 = phi i64 [ %389, %392 ], [ %376, %372 ], [ %389, %396 ]
  %403 = phi i64 [ %395, %392 ], [ %375, %372 ], [ %399, %396 ]
  %404 = phi i64 [ %390, %392 ], [ %374, %372 ], [ %390, %396 ]
  %405 = icmp slt i64 %402, 0
  br i1 %405, label %440, label %406

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 6
  %408 = load i32, ptr %407, align 8, !tbaa !60
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %406
  %411 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %271, i32 noundef 6) #7
  br label %412

412:                                              ; preds = %410, %406
  %413 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 58
  %414 = icmp sgt i64 %403, 0
  br i1 %414, label %415, label %440

415:                                              ; preds = %412
  %416 = icmp sgt i64 %404, 0
  br label %417

417:                                              ; preds = %415, %434
  %418 = phi i64 [ %437, %434 ], [ 0, %415 ]
  %419 = add nsw i64 %418, %401
  %420 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %271, i64 noundef %402, i64 noundef %419, i64 noundef %404, i64 noundef 1, ptr noundef nonnull %413) #7
  %421 = icmp eq ptr %420, null
  br i1 %421, label %434, label %422

422:                                              ; preds = %417
  br i1 %416, label %423, label %430

423:                                              ; preds = %422, %423
  %424 = phi ptr [ %427, %423 ], [ %420, %422 ]
  %425 = phi i64 [ %428, %423 ], [ 0, %422 ]
  %426 = getelementptr inbounds %struct._PixelPacket, ptr %424, i64 0, i32 3
  store i16 -1, ptr %426, align 2, !tbaa !65
  %427 = getelementptr inbounds %struct._PixelPacket, ptr %424, i64 1
  %428 = add nuw nsw i64 %425, 1
  %429 = icmp eq i64 %428, %404
  br i1 %429, label %430, label %423, !llvm.loop !66

430:                                              ; preds = %423, %422
  %431 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %271, ptr noundef nonnull %413) #7
  %432 = icmp eq i32 %431, 0
  %433 = select i1 %432, i32 2, i32 0
  br label %434

434:                                              ; preds = %430, %417
  %435 = phi i32 [ 2, %417 ], [ %433, %430 ]
  %436 = icmp eq i32 %435, 0
  %437 = add nuw nsw i64 %418, 1
  %438 = icmp slt i64 %437, %403
  %439 = select i1 %436, i1 %438, i1 false
  br i1 %439, label %417, label %440, !llvm.loop !69

440:                                              ; preds = %434, %400, %412
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %12, ptr noundef nonnull %271, ptr noundef nonnull %101, i32 noundef 4, ptr noundef %2)
  %441 = load i64, ptr %12, align 8, !tbaa.struct !53
  %442 = load i64, ptr %96, align 8, !tbaa.struct !55
  %443 = load i64, ptr %97, align 8, !tbaa.struct !57
  %444 = load i64, ptr %98, align 8, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #7
  br label %445

445:                                              ; preds = %440, %369
  %446 = phi i64 [ %328, %369 ], [ %444, %440 ]
  %447 = phi i64 [ %327, %369 ], [ %443, %440 ]
  %448 = phi i64 [ %326, %369 ], [ %442, %440 ]
  %449 = phi i64 [ %325, %369 ], [ %441, %440 ]
  %450 = phi i64 [ %288, %369 ], [ %401, %440 ]
  %451 = phi i64 [ %286, %369 ], [ %402, %440 ]
  %452 = phi i64 [ %284, %369 ], [ %403, %440 ]
  %453 = phi i64 [ %282, %369 ], [ %404, %440 ]
  %454 = icmp eq i32 %265, 0
  br i1 %454, label %455, label %471

455:                                              ; preds = %445
  %456 = mul i64 %453, %452
  %457 = mul i64 %449, %448
  %458 = add i64 %456, %457
  %459 = load i64, ptr %281, align 8, !tbaa !77
  %460 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %114, i32 1
  %461 = load i64, ptr %460, align 8, !tbaa !75
  %462 = mul i64 %461, %459
  %463 = mul i64 %263, %262
  %464 = add i64 %462, %463
  %465 = load i64, ptr %109, align 8, !tbaa !77
  %466 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %100, i32 1
  %467 = load i64, ptr %466, align 8, !tbaa !75
  %468 = mul i64 %467, %465
  %469 = add i64 %464, %468
  %470 = icmp ult i64 %458, %469
  br i1 %470, label %471, label %481

471:                                              ; preds = %455, %445
  store i64 %453, ptr %281, align 8, !tbaa.struct !53
  store i64 %452, ptr %283, align 8, !tbaa.struct !55
  store i64 %451, ptr %285, align 8, !tbaa.struct !57
  store i64 %450, ptr %287, align 8, !tbaa.struct !56
  store i64 %449, ptr %109, align 8, !tbaa.struct !53
  %472 = getelementptr inbounds i8, ptr %109, i64 8
  store i64 %448, ptr %472, align 8, !tbaa.struct !55
  %473 = getelementptr inbounds i8, ptr %109, i64 16
  store i64 %447, ptr %473, align 8, !tbaa.struct !57
  %474 = getelementptr inbounds i8, ptr %109, i64 24
  store i64 %446, ptr %474, align 8, !tbaa.struct !56
  %475 = load i32, ptr %115, align 4, !tbaa !107
  %476 = icmp eq i32 %475, 9
  br i1 %476, label %477, label %479

477:                                              ; preds = %471
  %478 = tail call ptr @DestroyImage(ptr noundef %264) #7
  br label %479

479:                                              ; preds = %477, %471
  %480 = phi ptr [ %478, %477 ], [ %264, %471 ]
  store i32 2, ptr %115, align 4, !tbaa !107
  br label %481

481:                                              ; preds = %455, %479, %119
  %482 = phi i64 [ %108, %119 ], [ %260, %479 ], [ %260, %455 ]
  %483 = phi i64 [ %107, %119 ], [ %261, %479 ], [ %261, %455 ]
  %484 = phi i64 [ %106, %119 ], [ %262, %479 ], [ %262, %455 ]
  %485 = phi i64 [ %105, %119 ], [ %263, %479 ], [ %263, %455 ]
  %486 = phi ptr [ %103, %119 ], [ %480, %479 ], [ %264, %455 ]
  %487 = phi ptr [ %102, %119 ], [ %271, %479 ], [ %271, %455 ]
  %488 = load i32, ptr %115, align 4, !tbaa !107
  %489 = icmp eq i32 %488, 9
  br i1 %489, label %490, label %503

490:                                              ; preds = %481
  %491 = icmp eq ptr %487, null
  br i1 %491, label %494, label %492

492:                                              ; preds = %490
  %493 = tail call ptr @DestroyImage(ptr noundef nonnull %487) #7
  br label %494

494:                                              ; preds = %492, %490
  %495 = phi ptr [ %493, %492 ], [ null, %490 ]
  %496 = tail call ptr @DestroyImage(ptr noundef %104) #7
  %497 = add nsw i64 %100, 1
  %498 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %498, ptr noundef nonnull align 8 dereferenceable(32) %109, i64 32, i1 false), !tbaa.struct !53
  store i64 %485, ptr %109, align 8, !tbaa.struct !53
  %499 = getelementptr inbounds i8, ptr %109, i64 8
  store i64 %484, ptr %499, align 8, !tbaa.struct !55
  %500 = getelementptr inbounds i8, ptr %109, i64 16
  store i64 %483, ptr %500, align 8, !tbaa.struct !57
  %501 = getelementptr inbounds i8, ptr %109, i64 24
  store i64 %482, ptr %501, align 8, !tbaa.struct !56
  store i32 9, ptr %115, align 4, !tbaa !107
  %502 = getelementptr inbounds i32, ptr %56, i64 %100
  store i32 2, ptr %502, align 4, !tbaa !107
  br label %537

503:                                              ; preds = %481
  %504 = icmp eq ptr %486, null
  br i1 %504, label %507, label %505

505:                                              ; preds = %503
  %506 = tail call ptr @DestroyImage(ptr noundef nonnull %486) #7
  br label %507

507:                                              ; preds = %505, %503
  %508 = phi ptr [ %506, %505 ], [ null, %503 ]
  %509 = load i32, ptr %115, align 4, !tbaa !107
  %510 = icmp eq i32 %509, 3
  br i1 %510, label %513, label %511

511:                                              ; preds = %507
  %512 = tail call ptr @DestroyImage(ptr noundef %104) #7
  br label %513

513:                                              ; preds = %511, %507
  %514 = phi ptr [ %512, %511 ], [ %104, %507 ]
  %515 = load i32, ptr %115, align 4, !tbaa !107
  %516 = icmp eq i32 %515, 2
  %517 = select i1 %516, ptr %487, ptr %514
  %518 = icmp eq ptr %487, null
  %519 = select i1 %516, i1 true, i1 %518
  br i1 %519, label %522, label %520

520:                                              ; preds = %513
  %521 = tail call ptr @DestroyImage(ptr noundef nonnull %487) #7
  br label %522

522:                                              ; preds = %520, %513
  %523 = phi ptr [ %521, %520 ], [ null, %513 ]
  %524 = load i32, ptr %115, align 4, !tbaa !107
  %525 = icmp eq i32 %524, 1
  br i1 %525, label %526, label %537

526:                                              ; preds = %522
  %527 = load ptr, ptr %110, align 8, !tbaa !64
  %528 = getelementptr inbounds %struct._Image, ptr %527, i64 0, i32 26
  %529 = load i64, ptr %528, align 8, !tbaa !78
  %530 = getelementptr inbounds %struct._Image, ptr %527, i64 0, i32 26, i32 1
  %531 = load i64, ptr %530, align 8, !tbaa !79
  %532 = tail call ptr @CloneImage(ptr noundef %527, i64 noundef %529, i64 noundef %531, i32 noundef 1, ptr noundef %2) #7
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %537

534:                                              ; preds = %526
  %535 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #7
  %536 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %56) #7
  br label %645

537:                                              ; preds = %522, %526, %494
  %538 = phi ptr [ %486, %494 ], [ %532, %526 ], [ %517, %522 ]
  %539 = phi ptr [ null, %494 ], [ %508, %526 ], [ %508, %522 ]
  %540 = phi ptr [ %495, %494 ], [ %523, %526 ], [ %523, %522 ]
  %541 = phi i64 [ %497, %494 ], [ %100, %526 ], [ %100, %522 ]
  %542 = getelementptr i32, ptr %56, i64 %541
  %543 = getelementptr i32, ptr %542, i64 -1
  %544 = load i32, ptr %543, align 4, !tbaa !107
  store i32 %544, ptr %542, align 4, !tbaa !107
  br label %545

545:                                              ; preds = %537, %122
  %546 = phi i64 [ %108, %122 ], [ %482, %537 ]
  %547 = phi i64 [ %107, %122 ], [ %483, %537 ]
  %548 = phi i64 [ %106, %122 ], [ %484, %537 ]
  %549 = phi i64 [ %105, %122 ], [ %485, %537 ]
  %550 = phi ptr [ %104, %122 ], [ %538, %537 ]
  %551 = phi ptr [ %103, %122 ], [ %539, %537 ]
  %552 = phi ptr [ %102, %122 ], [ %540, %537 ]
  %553 = phi i64 [ %100, %122 ], [ %541, %537 ]
  %554 = add nsw i64 %553, 1
  %555 = tail call ptr @GetNextImageInList(ptr noundef nonnull %101) #7
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %99, !llvm.loop !109

557:                                              ; preds = %545, %72
  %558 = phi ptr [ %67, %72 ], [ %550, %545 ]
  %559 = tail call ptr @DestroyImage(ptr noundef %558) #7
  %560 = tail call ptr @AcquireExceptionInfo() #7
  %561 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %562 = tail call ptr @NewImageList() #7
  store ptr %562, ptr %4, align 8, !tbaa !81
  %563 = icmp eq ptr %561, null
  br i1 %563, label %638, label %564

564:                                              ; preds = %557, %625
  %565 = phi i64 [ %627, %625 ], [ 0, %557 ]
  %566 = phi ptr [ %626, %625 ], [ %561, %557 ]
  %567 = call ptr @CloneImage(ptr noundef nonnull %566, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #7
  %568 = icmp eq ptr %567, null
  br i1 %568, label %629, label %569

569:                                              ; preds = %564
  %570 = getelementptr inbounds i32, ptr %56, i64 %565
  %571 = load i32, ptr %570, align 4, !tbaa !107
  %572 = icmp eq i32 %571, 8
  br i1 %572, label %573, label %608

573:                                              ; preds = %569
  %574 = getelementptr inbounds i32, ptr %56, i64 %565
  %575 = load i32, ptr %574, align 4, !tbaa !107
  %576 = icmp eq i32 %575, 8
  br i1 %576, label %577, label %593

577:                                              ; preds = %573, %577
  %578 = phi i64 [ %587, %577 ], [ 0, %573 ]
  %579 = phi i64 [ %589, %577 ], [ %565, %573 ]
  %580 = phi ptr [ %588, %577 ], [ %566, %573 ]
  %581 = getelementptr inbounds %struct._Image, ptr %580, i64 0, i32 40
  %582 = load i64, ptr %581, align 8, !tbaa !110
  %583 = mul i64 %582, 1000
  %584 = getelementptr inbounds %struct._Image, ptr %580, i64 0, i32 41
  %585 = load i64, ptr %584, align 8, !tbaa !111
  %586 = udiv i64 %583, %585
  %587 = add i64 %586, %578
  %588 = call ptr @GetNextImageInList(ptr noundef %580) #7
  %589 = add nsw i64 %579, 1
  %590 = getelementptr inbounds i32, ptr %56, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !107
  %592 = icmp eq i32 %591, 8
  br i1 %592, label %577, label %593, !llvm.loop !112

593:                                              ; preds = %577, %573
  %594 = phi ptr [ %566, %573 ], [ %588, %577 ]
  %595 = phi i64 [ %565, %573 ], [ %589, %577 ]
  %596 = phi i64 [ 0, %573 ], [ %587, %577 ]
  %597 = getelementptr inbounds %struct._Image, ptr %594, i64 0, i32 40
  %598 = load i64, ptr %597, align 8, !tbaa !110
  %599 = mul i64 %598, 1000
  %600 = getelementptr inbounds %struct._Image, ptr %594, i64 0, i32 41
  %601 = load i64, ptr %600, align 8, !tbaa !111
  %602 = udiv i64 %599, %601
  %603 = add i64 %602, %596
  %604 = getelementptr inbounds %struct._Image, ptr %567, i64 0, i32 41
  store i64 100, ptr %604, align 8, !tbaa !111
  %605 = mul i64 %603, 100
  %606 = udiv i64 %605, 1000
  %607 = getelementptr inbounds %struct._Image, ptr %567, i64 0, i32 40
  store i64 %606, ptr %607, align 8, !tbaa !110
  br label %608

608:                                              ; preds = %593, %569
  %609 = phi ptr [ %594, %593 ], [ %566, %569 ]
  %610 = phi i64 [ %595, %593 ], [ %565, %569 ]
  %611 = getelementptr inbounds %struct._RectangleInfo, ptr %48, i64 %610
  %612 = call ptr @CropImage(ptr noundef nonnull %567, ptr noundef nonnull %611, ptr noundef %560) #7
  %613 = call ptr @DestroyImage(ptr noundef nonnull %567) #7
  %614 = icmp eq ptr %612, null
  br i1 %614, label %629, label %615

615:                                              ; preds = %608
  %616 = getelementptr inbounds i32, ptr %56, i64 %610
  %617 = load i32, ptr %616, align 4, !tbaa !107
  %618 = getelementptr inbounds %struct._Image, ptr %612, i64 0, i32 37
  store i32 %617, ptr %618, align 4, !tbaa !61
  %619 = load i32, ptr %616, align 4, !tbaa !107
  %620 = icmp eq i32 %619, 9
  br i1 %620, label %621, label %623

621:                                              ; preds = %615
  %622 = getelementptr inbounds %struct._Image, ptr %612, i64 0, i32 40
  store i64 0, ptr %622, align 8, !tbaa !110
  store i32 1, ptr %618, align 4, !tbaa !61
  br label %625

623:                                              ; preds = %615
  %624 = call ptr @GetNextImageInList(ptr noundef %609) #7
  br label %625

625:                                              ; preds = %623, %621
  %626 = phi ptr [ %609, %621 ], [ %624, %623 ]
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %612) #7
  %627 = add nsw i64 %610, 1
  %628 = icmp eq ptr %626, null
  br i1 %628, label %629, label %564, !llvm.loop !113

629:                                              ; preds = %608, %564, %625
  %630 = phi ptr [ null, %625 ], [ %566, %564 ], [ %609, %608 ]
  %631 = icmp eq ptr %630, null
  %632 = call ptr @DestroyExceptionInfo(ptr noundef %560) #7
  %633 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #7
  %634 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %56) #7
  br i1 %631, label %642, label %635

635:                                              ; preds = %629
  %636 = load ptr, ptr %4, align 8, !tbaa !81
  %637 = call ptr @DestroyImageList(ptr noundef %636) #7
  store ptr %637, ptr %4, align 8, !tbaa !81
  br label %645

638:                                              ; preds = %557
  %639 = tail call ptr @DestroyExceptionInfo(ptr noundef %560) #7
  %640 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #7
  %641 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %56) #7
  br label %642

642:                                              ; preds = %638, %629
  %643 = load ptr, ptr %4, align 8, !tbaa !81
  %644 = call ptr @GetFirstImageInList(ptr noundef %643) #7
  br label %645

645:                                              ; preds = %273, %278, %642, %635, %534, %196, %69, %58, %50, %37
  %646 = phi ptr [ null, %37 ], [ null, %50 ], [ null, %58 ], [ null, %69 ], [ null, %534 ], [ null, %196 ], [ null, %635 ], [ %644, %642 ], [ null, %278 ], [ null, %273 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %646
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OptimizePlusImageLayers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @OptimizeLayerFrames(ptr noundef %0, i32 noundef 8, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @OptimizeImageTransparency(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1526, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @GetFirstImageInList(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 26, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !79
  %15 = tail call ptr @CloneImage(ptr noundef %10, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %1) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %129, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !53
  %19 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 2
  %20 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i32 1, ptr %20, align 4, !tbaa !61
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 12, i32 3
  store i16 -1, ptr %21, align 2, !tbaa !80
  %22 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %15) #7
  br label %23

23:                                               ; preds = %124, %17
  %24 = phi ptr [ %15, %17 ], [ %125, %124 ]
  %25 = phi ptr [ %10, %17 ], [ %126, %124 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %127, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @CloneImage(ptr noundef %24, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call ptr @DestroyImage(ptr noundef %24) #7
  br label %124

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !60
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 13, i32 40
  %37 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !62
  %39 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !63
  %41 = tail call i32 @CompositeImage(ptr noundef nonnull %28, i32 noundef %36, ptr noundef nonnull %25, i64 noundef %38, i64 noundef %40) #7
  %42 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 37
  %43 = load i32, ptr %42, align 4, !tbaa !61
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %105

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa.struct !57
  %48 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa.struct !56
  %50 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !58
  %52 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 8
  %53 = load i64, ptr %52, align 8, !tbaa !59
  %54 = tail call i64 @llvm.smax.i64(i64 %47, i64 0)
  %55 = tail call i64 @llvm.smin.i64(i64 %47, i64 0)
  %56 = add i64 %51, %55
  %57 = add i64 %56, %54
  %58 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !58
  %60 = icmp sgt i64 %57, %59
  %61 = sub i64 %59, %54
  %62 = select i1 %60, i64 %61, i64 %56
  %63 = tail call i64 @llvm.smax.i64(i64 %49, i64 0)
  %64 = tail call i64 @llvm.smin.i64(i64 %49, i64 0)
  %65 = add i64 %53, %64
  %66 = add i64 %65, %63
  %67 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !59
  %69 = icmp sgt i64 %66, %68
  %70 = sub i64 %68, %63
  %71 = select i1 %69, i64 %70, i64 %65
  %72 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !60
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %45
  %76 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %28, i32 noundef 6) #7
  br label %77

77:                                               ; preds = %75, %45
  %78 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  %79 = icmp sgt i64 %71, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %77
  %81 = icmp sgt i64 %62, 0
  br label %82

82:                                               ; preds = %80, %99
  %83 = phi i64 [ %102, %99 ], [ 0, %80 ]
  %84 = add nuw nsw i64 %83, %63
  %85 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %28, i64 noundef %54, i64 noundef %84, i64 noundef %62, i64 noundef 1, ptr noundef nonnull %78) #7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %99, label %87

87:                                               ; preds = %82
  br i1 %81, label %88, label %95

88:                                               ; preds = %87, %88
  %89 = phi ptr [ %92, %88 ], [ %85, %87 ]
  %90 = phi i64 [ %93, %88 ], [ 0, %87 ]
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 3
  store i16 -1, ptr %91, align 2, !tbaa !65
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %93 = add nuw nsw i64 %90, 1
  %94 = icmp eq i64 %93, %62
  br i1 %94, label %95, label %88, !llvm.loop !66

95:                                               ; preds = %88, %87
  %96 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %28, ptr noundef nonnull %78) #7
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 2, i32 0
  br label %99

99:                                               ; preds = %95, %82
  %100 = phi i32 [ 2, %82 ], [ %98, %95 ]
  %101 = icmp eq i32 %100, 0
  %102 = add nuw nsw i64 %83, 1
  %103 = icmp slt i64 %102, %71
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %82, label %105, !llvm.loop !69

105:                                              ; preds = %99, %77, %32
  %106 = load i32, ptr %42, align 4, !tbaa !61
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = tail call ptr @DestroyImage(ptr noundef %24) #7
  br label %112

110:                                              ; preds = %105
  %111 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #7
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi ptr [ %28, %108 ], [ %24, %110 ]
  %114 = tail call ptr @GetNextImageInList(ptr noundef nonnull %25) #7
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 26, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !62
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 26, i32 3
  %121 = load i64, ptr %120, align 8, !tbaa !63
  %122 = sub nsw i64 0, %121
  %123 = tail call i32 @CompositeImage(ptr noundef nonnull %114, i32 noundef 6, ptr noundef %113, i64 noundef %119, i64 noundef %122) #7
  br label %124

124:                                              ; preds = %112, %116, %30
  %125 = phi ptr [ %31, %30 ], [ %113, %116 ], [ %113, %112 ]
  %126 = phi ptr [ %25, %30 ], [ %114, %116 ], [ %114, %112 ]
  br i1 %29, label %129, label %23, !llvm.loop !114

127:                                              ; preds = %23
  %128 = tail call ptr @DestroyImage(ptr noundef %24) #7
  br label %129

129:                                              ; preds = %124, %9, %127
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RemoveDuplicateLayers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1650, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr %0, align 8, !tbaa !81
  %13 = tail call ptr @GetFirstImageInList(ptr noundef %12) #7
  %14 = tail call ptr @GetNextImageInList(ptr noundef %13) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %3, i64 16
  br label %18

18:                                               ; preds = %16, %67
  %19 = phi ptr [ %14, %16 ], [ %68, %67 ]
  %20 = phi ptr [ %13, %16 ], [ %19, %67 ]
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !58
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !59
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 26, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 26, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !62
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 26, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !63
  %41 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 26, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !63
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %3, ptr noundef %20, ptr noundef nonnull %19, i32 noundef 2, ptr noundef %1)
  %45 = load i64, ptr %17, align 8, !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 40
  %49 = load i64, ptr %48, align 8, !tbaa !110
  %50 = mul i64 %49, 1000
  %51 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 41
  %52 = load i64, ptr %51, align 8, !tbaa !111
  %53 = udiv i64 %50, %52
  %54 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 40
  %55 = load i64, ptr %54, align 8, !tbaa !110
  %56 = mul i64 %55, 1000
  %57 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 41
  %58 = load i64, ptr %57, align 8, !tbaa !111
  %59 = udiv i64 %56, %58
  %60 = add i64 %59, %53
  store i64 100, ptr %57, align 8, !tbaa !111
  %61 = load i64, ptr %51, align 8, !tbaa !111
  %62 = mul i64 %61, %60
  %63 = udiv i64 %62, 1000
  store i64 %63, ptr %54, align 8, !tbaa !110
  %64 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 42
  %65 = load i64, ptr %64, align 8, !tbaa !115
  %66 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 42
  store i64 %65, ptr %66, align 8, !tbaa !115
  store ptr %20, ptr %0, align 8, !tbaa !81
  tail call void @DeleteImageFromList(ptr noundef nonnull %0) #7
  br label %67

67:                                               ; preds = %44, %47, %18, %26, %32, %38
  %68 = tail call ptr @GetNextImageInList(ptr noundef nonnull %19) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %18, !llvm.loop !116

70:                                               ; preds = %67, %11
  %71 = load ptr, ptr %0, align 8, !tbaa !81
  %72 = tail call ptr @GetFirstImageInList(ptr noundef %71) #7
  store ptr %72, ptr %0, align 8, !tbaa !81
  ret void
}

declare void @DeleteImageFromList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @RemoveZeroDelayLayers(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1727, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr %0, align 8, !tbaa !81
  %13 = tail call ptr @GetFirstImageInList(ptr noundef %12) #7
  store ptr %13, ptr %3, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 40
  %17 = load i64, ptr %16, align 8, !tbaa !110
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %27

19:                                               ; preds = %23
  %20 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 40
  %21 = load i64, ptr %20, align 8, !tbaa !110
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27, !llvm.loop !117

23:                                               ; preds = %15, %19
  %24 = phi ptr [ %25, %19 ], [ %13, %15 ]
  %25 = tail call ptr @GetNextImageInList(ptr noundef nonnull %24) #7
  store ptr %25, ptr %3, align 8, !tbaa !81
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %19, !llvm.loop !117

27:                                               ; preds = %19, %15
  %28 = phi i1 [ %14, %15 ], [ %26, %19 ]
  br i1 %28, label %29, label %34

29:                                               ; preds = %23, %11, %27
  %30 = load ptr, ptr %0, align 8, !tbaa !81
  %31 = tail call ptr @GetFirstImageInList(ptr noundef %30) #7
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1735, i32 noundef 310, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #7
  br label %53

34:                                               ; preds = %27
  %35 = load ptr, ptr %0, align 8, !tbaa !81
  %36 = tail call ptr @GetFirstImageInList(ptr noundef %35) #7
  store ptr %36, ptr %3, align 8, !tbaa !81
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %34, %47
  %39 = phi ptr [ %48, %47 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 40
  %41 = load i64, ptr %40, align 8, !tbaa !110
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  call void @DeleteImageFromList(ptr noundef nonnull %3) #7
  %44 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %44, ptr %0, align 8, !tbaa !81
  br label %47

45:                                               ; preds = %38
  %46 = call ptr @GetNextImageInList(ptr noundef nonnull %39) #7
  store ptr %46, ptr %3, align 8, !tbaa !81
  br label %47

47:                                               ; preds = %45, %43
  %48 = load ptr, ptr %3, align 8, !tbaa !81
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %38, !llvm.loop !118

50:                                               ; preds = %47, %34
  %51 = load ptr, ptr %0, align 8, !tbaa !81
  %52 = call ptr @GetFirstImageInList(ptr noundef %51) #7
  store ptr %52, ptr %0, align 8, !tbaa !81
  br label %53

53:                                               ; preds = %50, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CompositeLayers(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1828, ptr noundef nonnull @.str.6, ptr noundef nonnull %16, ptr noundef nonnull %17) #7
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %7, align 8, !tbaa !81
  br i1 %22, label %24, label %45

24:                                               ; preds = %19
  %25 = icmp eq ptr %23, null
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 26, i32 2
  %28 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 26, i32 3
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %23, %26 ], [ %43, %29 ]
  %31 = load i64, ptr %27, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 26, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !62
  %34 = add i64 %31, %3
  %35 = sub i64 %34, %33
  %36 = load i64, ptr %28, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 26, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !63
  %39 = add i64 %36, %4
  %40 = sub i64 %39, %38
  %41 = tail call i32 @CompositeImage(ptr noundef nonnull %30, i32 noundef %1, ptr noundef %2, i64 noundef %35, i64 noundef %40) #7
  %42 = load ptr, ptr %7, align 8, !tbaa !81
  %43 = tail call ptr @GetNextImageInList(ptr noundef %42) #7
  store ptr %43, ptr %7, align 8, !tbaa !81
  %44 = icmp eq ptr %43, null
  br i1 %44, label %134, label %29, !llvm.loop !119

45:                                               ; preds = %19
  %46 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 69
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = icmp ne ptr %2, null
  %51 = load ptr, ptr %7, align 8
  %52 = icmp ne ptr %51, null
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %112, label %134

54:                                               ; preds = %45
  %55 = tail call ptr @CloneImage(ptr noundef %23, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #7
  %56 = load ptr, ptr %7, align 8, !tbaa !81
  %57 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 26, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 26, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !62
  %61 = add i64 %58, %3
  %62 = sub i64 %61, %60
  %63 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 26, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 26, i32 3
  %66 = load i64, ptr %65, align 8, !tbaa !63
  %67 = add i64 %64, %4
  %68 = sub i64 %67, %66
  %69 = tail call i32 @CompositeImage(ptr noundef %56, i32 noundef %1, ptr noundef %2, i64 noundef %62, i64 noundef %68) #7
  %70 = load ptr, ptr %20, align 8, !tbaa !70
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %54
  %73 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 40
  %74 = load i64, ptr %73, align 8, !tbaa !110
  %75 = load ptr, ptr %7, align 8, !tbaa !81
  %76 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 40
  store i64 %74, ptr %76, align 8, !tbaa !110
  %77 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 42
  %78 = load i64, ptr %77, align 8, !tbaa !115
  %79 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 42
  store i64 %78, ptr %79, align 8, !tbaa !115
  br label %80

80:                                               ; preds = %72, %54
  %81 = tail call ptr @GetNextImageInList(ptr noundef %2) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %110, label %83

83:                                               ; preds = %80, %83
  %84 = phi ptr [ %108, %83 ], [ %81, %80 ]
  %85 = call ptr @CloneImage(ptr noundef %55, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #7
  call void @AppendImageToList(ptr noundef nonnull %7, ptr noundef %85) #7
  %86 = load ptr, ptr %7, align 8, !tbaa !81
  %87 = call ptr @GetLastImageInList(ptr noundef %86) #7
  store ptr %87, ptr %7, align 8, !tbaa !81
  %88 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 26, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !62
  %90 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 26, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !62
  %92 = add i64 %89, %3
  %93 = sub i64 %92, %91
  %94 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 26, i32 3
  %95 = load i64, ptr %94, align 8, !tbaa !63
  %96 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 26, i32 3
  %97 = load i64, ptr %96, align 8, !tbaa !63
  %98 = add i64 %95, %4
  %99 = sub i64 %98, %97
  %100 = call i32 @CompositeImage(ptr noundef %87, i32 noundef %1, ptr noundef nonnull %84, i64 noundef %93, i64 noundef %99) #7
  %101 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 40
  %102 = load i64, ptr %101, align 8, !tbaa !110
  %103 = load ptr, ptr %7, align 8, !tbaa !81
  %104 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 40
  store i64 %102, ptr %104, align 8, !tbaa !110
  %105 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 42
  %106 = load i64, ptr %105, align 8, !tbaa !115
  %107 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 42
  store i64 %106, ptr %107, align 8, !tbaa !115
  %108 = call ptr @GetNextImageInList(ptr noundef nonnull %84) #7
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %83, !llvm.loop !120

110:                                              ; preds = %83, %80
  %111 = call ptr @DestroyImage(ptr noundef %55) #7
  br label %134

112:                                              ; preds = %49, %112
  %113 = phi ptr [ %130, %112 ], [ %51, %49 ]
  %114 = phi ptr [ %128, %112 ], [ %2, %49 ]
  %115 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 26, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !62
  %117 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 26, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !62
  %119 = add i64 %116, %3
  %120 = sub i64 %119, %118
  %121 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 26, i32 3
  %122 = load i64, ptr %121, align 8, !tbaa !63
  %123 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 26, i32 3
  %124 = load i64, ptr %123, align 8, !tbaa !63
  %125 = add i64 %122, %4
  %126 = sub i64 %125, %124
  %127 = tail call i32 @CompositeImage(ptr noundef nonnull %113, i32 noundef %1, ptr noundef nonnull %114, i64 noundef %120, i64 noundef %126) #7
  %128 = tail call ptr @GetNextImageInList(ptr noundef nonnull %114) #7
  %129 = load ptr, ptr %7, align 8, !tbaa !81
  %130 = tail call ptr @GetNextImageInList(ptr noundef %129) #7
  store ptr %130, ptr %7, align 8, !tbaa !81
  %131 = icmp ne ptr %128, null
  %132 = icmp ne ptr %130, null
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %112, label %134, !llvm.loop !121

134:                                              ; preds = %112, %29, %49, %24, %110
  ret void
}

declare ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MergeImageLayers(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1969, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #7
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %14 = load i64, ptr %13, align 8, !tbaa.struct !53
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa.struct !55
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !59
  switch i32 %1, label %21 [
    i32 15, label %65
    i32 14, label %60
  ]

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa.struct !56
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa.struct !57
  %26 = tail call ptr @GetNextImageInList(ptr noundef %0) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %89, label %28

28:                                               ; preds = %21, %28
  %29 = phi i64 [ %52, %28 ], [ %18, %21 ]
  %30 = phi i64 [ %57, %28 ], [ %20, %21 ]
  %31 = phi ptr [ %58, %28 ], [ %26, %21 ]
  %32 = phi i64 [ %38, %28 ], [ %25, %21 ]
  %33 = phi i64 [ %45, %28 ], [ %23, %21 ]
  %34 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 26, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !62
  %36 = icmp sgt i64 %32, %35
  %37 = sub nsw i64 %32, %35
  %38 = tail call i64 @llvm.smin.i64(i64 %32, i64 %35)
  %39 = select i1 %36, i64 %37, i64 0
  %40 = add i64 %39, %29
  %41 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 26, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !63
  %43 = icmp sgt i64 %33, %42
  %44 = sub nsw i64 %33, %42
  %45 = tail call i64 @llvm.smin.i64(i64 %33, i64 %42)
  %46 = select i1 %43, i64 %44, i64 0
  %47 = add i64 %46, %30
  %48 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !58
  %50 = sub i64 %35, %38
  %51 = add i64 %50, %49
  %52 = tail call i64 @llvm.smax.i64(i64 %40, i64 %51)
  %53 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !59
  %55 = sub i64 %42, %45
  %56 = add i64 %55, %54
  %57 = tail call i64 @llvm.smax.i64(i64 %47, i64 %56)
  %58 = tail call ptr @GetNextImageInList(ptr noundef nonnull %31) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %89, label %28, !llvm.loop !122

60:                                               ; preds = %12
  %61 = icmp eq i64 %14, 0
  %62 = select i1 %61, i64 %18, i64 %14
  %63 = icmp eq i64 %16, 0
  %64 = select i1 %63, i64 %20, i64 %16
  br label %89

65:                                               ; preds = %12
  %66 = icmp eq i64 %14, 0
  %67 = select i1 %66, i64 %18, i64 %14
  %68 = icmp eq i64 %16, 0
  %69 = select i1 %68, i64 %20, i64 %16
  %70 = icmp eq ptr %0, null
  br i1 %70, label %89, label %71

71:                                               ; preds = %65, %71
  %72 = phi i64 [ %81, %71 ], [ %67, %65 ]
  %73 = phi i64 [ %86, %71 ], [ %69, %65 ]
  %74 = phi ptr [ %87, %71 ], [ %0, %65 ]
  %75 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 26, i32 2
  %76 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 26, i32 3
  %77 = load i64, ptr %75, align 8, !tbaa !62
  %78 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 7
  %79 = load i64, ptr %78, align 8, !tbaa !58
  %80 = add nsw i64 %79, %77
  %81 = tail call i64 @llvm.smax.i64(i64 %72, i64 %80)
  %82 = load i64, ptr %76, align 8, !tbaa !63
  %83 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 8
  %84 = load i64, ptr %83, align 8, !tbaa !59
  %85 = add nsw i64 %84, %82
  %86 = tail call i64 @llvm.smax.i64(i64 %73, i64 %85)
  %87 = tail call ptr @GetNextImageInList(ptr noundef nonnull %74) #7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %71, !llvm.loop !123

89:                                               ; preds = %71, %28, %65, %21, %60
  %90 = phi i64 [ 0, %60 ], [ %23, %21 ], [ 0, %65 ], [ %45, %28 ], [ 0, %71 ]
  %91 = phi i64 [ 0, %60 ], [ %25, %21 ], [ 0, %65 ], [ %38, %28 ], [ 0, %71 ]
  %92 = phi i64 [ %16, %60 ], [ %16, %21 ], [ %69, %65 ], [ %16, %28 ], [ %86, %71 ]
  %93 = phi i64 [ %14, %60 ], [ %14, %21 ], [ %67, %65 ], [ %14, %28 ], [ %81, %71 ]
  %94 = phi i64 [ %64, %60 ], [ %20, %21 ], [ %69, %65 ], [ %57, %28 ], [ %86, %71 ]
  %95 = phi i64 [ %62, %60 ], [ %18, %21 ], [ %67, %65 ], [ %52, %28 ], [ %81, %71 ]
  %96 = icmp eq i64 %93, 0
  %97 = tail call i64 @llvm.smax.i64(i64 %91, i64 0)
  %98 = add i64 %95, %97
  %99 = select i1 %96, i64 %98, i64 %93
  %100 = icmp eq i64 %92, 0
  %101 = tail call i64 @llvm.smax.i64(i64 %90, i64 0)
  %102 = add i64 %94, %101
  %103 = select i1 %100, i64 %102, i64 %92
  %104 = icmp eq i32 %1, 16
  br i1 %104, label %105, label %138

105:                                              ; preds = %89
  %106 = tail call i64 @GetImageListLength(ptr noundef %0) #7
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %183

108:                                              ; preds = %105, %132
  %109 = phi i64 [ %135, %132 ], [ 0, %105 ]
  %110 = phi ptr [ %133, %132 ], [ %0, %105 ]
  %111 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 26
  %112 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 26, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa !62
  %114 = sub nsw i64 %113, %91
  store i64 %114, ptr %112, align 8, !tbaa !62
  %115 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 26, i32 3
  %116 = load i64, ptr %115, align 8, !tbaa !63
  %117 = sub nsw i64 %116, %90
  store i64 %117, ptr %115, align 8, !tbaa !63
  store i64 %95, ptr %111, align 8, !tbaa !78
  %118 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 26, i32 1
  store i64 %94, ptr %118, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #7
  %119 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 47
  %120 = load ptr, ptr %119, align 8, !tbaa !124
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 53
  %124 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %123) #7
  %125 = load ptr, ptr %119, align 8, !tbaa !124
  %126 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 48
  %127 = load ptr, ptr %126, align 8, !tbaa !125
  %128 = call i32 %125(ptr noundef nonnull %5, i64 noundef %109, i64 noundef %106, ptr noundef %127) #7
  br label %129

129:                                              ; preds = %108, %122
  %130 = phi i32 [ %128, %122 ], [ 1, %108 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %183, label %132

132:                                              ; preds = %129
  %133 = call ptr @GetNextImageInList(ptr noundef %110) #7
  %134 = icmp eq ptr %133, null
  %135 = add nuw nsw i64 %109, 1
  %136 = icmp eq i64 %135, %106
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %183, label %108, !llvm.loop !126

138:                                              ; preds = %89
  %139 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %95, i64 noundef %94, i32 noundef 1, ptr noundef %2) #7
  %140 = icmp eq ptr %139, null
  br i1 %140, label %183, label %141

141:                                              ; preds = %138
  %142 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %139) #7
  %143 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26
  store i64 %99, ptr %143, align 8, !tbaa.struct !53
  %144 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26, i32 1
  store i64 %103, ptr %144, align 8, !tbaa.struct !55
  %145 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26, i32 2
  store i64 %91, ptr %145, align 8, !tbaa.struct !57
  %146 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26, i32 3
  store i64 %90, ptr %146, align 8, !tbaa.struct !56
  %147 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 37
  store i32 0, ptr %147, align 4, !tbaa !61
  %148 = tail call i64 @GetImageListLength(ptr noundef %0) #7
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %183

150:                                              ; preds = %141, %177
  %151 = phi i64 [ %180, %177 ], [ 0, %141 ]
  %152 = phi ptr [ %178, %177 ], [ %0, %141 ]
  %153 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 36
  %154 = load i32, ptr %153, align 8, !tbaa !127
  %155 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 26, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !62
  %157 = load i64, ptr %145, align 8, !tbaa !62
  %158 = sub nsw i64 %156, %157
  %159 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 26, i32 3
  %160 = load i64, ptr %159, align 8, !tbaa !63
  %161 = load i64, ptr %146, align 8, !tbaa !63
  %162 = sub nsw i64 %160, %161
  %163 = call i32 @CompositeImage(ptr noundef nonnull %139, i32 noundef %154, ptr noundef %152, i64 noundef %158, i64 noundef %162) #7
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #7
  %164 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 47
  %165 = load ptr, ptr %164, align 8, !tbaa !124
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %150
  %168 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 53
  %169 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %168) #7
  %170 = load ptr, ptr %164, align 8, !tbaa !124
  %171 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 48
  %172 = load ptr, ptr %171, align 8, !tbaa !125
  %173 = call i32 %170(ptr noundef nonnull %4, i64 noundef %151, i64 noundef %148, ptr noundef %172) #7
  br label %174

174:                                              ; preds = %150, %167
  %175 = phi i32 [ %173, %167 ], [ 1, %150 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #7
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = call ptr @GetNextImageInList(ptr noundef %152) #7
  %179 = icmp eq ptr %178, null
  %180 = add nuw nsw i64 %151, 1
  %181 = icmp eq i64 %180, %148
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %183, label %150, !llvm.loop !128

183:                                              ; preds = %177, %174, %132, %129, %141, %105, %138
  %184 = phi ptr [ null, %138 ], [ null, %105 ], [ %139, %141 ], [ null, %129 ], [ null, %132 ], [ %139, %174 ], [ %139, %177 ]
  ret ptr %184
}

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @GetAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

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
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54}
!54 = !{!39, !39, i64 0}
!55 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54}
!56 = !{i64 0, i64 8, !54}
!57 = !{i64 0, i64 8, !54, i64 8, i64 8, !54}
!58 = !{!35, !39, i64 40}
!59 = !{!35, !39, i64 48}
!60 = !{!35, !36, i64 32}
!61 = !{!35, !36, i64 420}
!62 = !{!35, !39, i64 296}
!63 = !{!35, !39, i64 304}
!64 = !{!35, !40, i64 13088}
!65 = !{!41, !42, i64 6}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !67, !68}
!70 = !{!35, !40, i64 13104}
!71 = distinct !{!71, !67, !68}
!72 = distinct !{!72, !67, !68}
!73 = distinct !{!73, !67, !68}
!74 = !{!46, !39, i64 16}
!75 = !{!46, !39, i64 8}
!76 = !{!46, !39, i64 24}
!77 = !{!46, !39, i64 0}
!78 = !{!35, !39, i64 280}
!79 = !{!35, !39, i64 288}
!80 = !{!35, !42, i64 86}
!81 = !{!40, !40, i64 0}
!82 = distinct !{!82, !67, !68}
!83 = distinct !{!83, !67, !68}
!84 = distinct !{!84, !67, !68}
!85 = !{!41, !42, i64 4}
!86 = !{!87, !88, i64 32}
!87 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !88, i64 32, !88, i64 36, !88, i64 40, !88, i64 44, !88, i64 48}
!88 = !{!"float", !37, i64 0}
!89 = !{!41, !42, i64 2}
!90 = !{!87, !88, i64 36}
!91 = !{!41, !42, i64 0}
!92 = !{!87, !88, i64 40}
!93 = !{!87, !88, i64 44}
!94 = !{!35, !36, i64 4}
!95 = !{!42, !42, i64 0}
!96 = !{!87, !88, i64 48}
!97 = !{!87, !36, i64 8}
!98 = distinct !{!98, !67, !68}
!99 = distinct !{!99, !67, !68}
!100 = distinct !{!100, !67, !68}
!101 = distinct !{!101, !67, !68}
!102 = distinct !{!102, !67, !68}
!103 = distinct !{!103, !67, !68}
!104 = distinct !{!104, !67, !68}
!105 = distinct !{!105, !67, !68}
!106 = distinct !{!106, !67, !68}
!107 = !{!36, !36, i64 0}
!108 = !{i32 0, i32 2}
!109 = distinct !{!109, !67, !68}
!110 = !{!35, !39, i64 440}
!111 = !{!35, !39, i64 448}
!112 = distinct !{!112, !67, !68}
!113 = distinct !{!113, !67, !68}
!114 = distinct !{!114, !67, !68}
!115 = !{!35, !39, i64 456}
!116 = distinct !{!116, !67, !68}
!117 = distinct !{!117, !67, !68}
!118 = distinct !{!118, !67, !68}
!119 = distinct !{!119, !67, !68}
!120 = distinct !{!120, !67, !68}
!121 = distinct !{!121, !67, !68}
!122 = distinct !{!122, !67, !68}
!123 = distinct !{!123, !67, !68}
!124 = !{!35, !40, i64 568}
!125 = !{!35, !40, i64 576}
!126 = distinct !{!126, !67, !68}
!127 = !{!35, !36, i64 416}
!128 = distinct !{!128, !67, !68}
