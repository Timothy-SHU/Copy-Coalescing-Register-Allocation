; ModuleID = 'ldecod_src/loopFilter.c'
source_filename = "ldecod_src/loopFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }

@p_Dec = external local_unnamed_addr global ptr, align 8
@__const.DeblockMb.filterNon8x8LumaEdgesFlag = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@chroma_edge = internal unnamed_addr constant [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\FC\00\00\00", [4 x i8] c"\FC\FC\FC\04", [4 x i8] c"\FC\04\04\08", [4 x i8] c"\FC\FC\FC\0C"], [4 x [4 x i8]] [[4 x i8] c"\FC\00\00\00", [4 x i8] c"\FC\FC\04\04", [4 x i8] c"\FC\04\08\08", [4 x i8] c"\FC\FC\0C\0C"]], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DeblockPicture(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 27
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %8, %6 ], [ 0, %2 ]
  tail call fastcc void @DeblockMb(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %7) #8
  %8 = add nuw i32 %7, 1
  %9 = load i32, ptr %3, align 4, !tbaa !34
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %6, label %11, !llvm.loop !42

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DeblockMb(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !44 {
  %4 = alloca [2 x i64], align 16
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca [4 x i32], align 16
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10
  %12 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 42
  %13 = load i16, ptr %12, align 8, !tbaa !51
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 20
  store i32 0, ptr %16, align 8, !tbaa !54
  br label %297

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.DeblockMb.filterNon8x8LumaEdgesFlag, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = load ptr, ptr %11, align 8, !tbaa !57
  %23 = load i32, ptr %1, align 8, !tbaa !58
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 25
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 45
  %31 = load i32, ptr %30, align 8, !tbaa !60
  %32 = freeze i32 %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %17, %29
  br label %35

35:                                               ; preds = %25, %29, %34
  %36 = phi i32 [ 2, %34 ], [ 4, %29 ], [ 4, %25 ]
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 20
  store i32 1, ptr %39, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81
  call void @get_mb_pos(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %40, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %41 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 30
  %42 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 54
  %43 = load i32, ptr %42, align 4, !tbaa !62
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3
  store i32 %45, ptr %46, align 4, !tbaa !63
  %47 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1
  store i32 %45, ptr %47, align 4, !tbaa !63
  %48 = load i16, ptr %5, align 2, !tbaa !64
  %49 = icmp ne i16 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i16, ptr %6, align 2
  %52 = icmp ne i16 %51, 0
  %53 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 25
  %54 = load i32, ptr %53, align 4, !tbaa !59
  %55 = icmp ne i32 %54, 0
  %56 = icmp eq i16 %51, 16
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %62

58:                                               ; preds = %35
  %59 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 45
  %60 = load i32, ptr %59, align 8, !tbaa !60
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %58, %35
  %63 = phi i1 [ %52, %35 ], [ %61, %58 ]
  %64 = load i16, ptr %12, align 8, !tbaa !51
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 50
  %68 = load i32, ptr %67, align 4, !tbaa !65
  %69 = icmp eq i32 %54, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 45
  %72 = load i32, ptr %71, align 8, !tbaa !60
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %2, 1
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %75, %73
  br i1 %76, label %77, label %81

77:                                               ; preds = %70, %66
  %78 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 51
  %79 = load i32, ptr %78, align 8, !tbaa !66
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %77, %70, %62
  %82 = phi i1 [ %63, %62 ], [ %80, %77 ], [ true, %70 ]
  %83 = phi i32 [ %50, %62 ], [ %68, %77 ], [ %68, %70 ]
  %84 = icmp eq i32 %54, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %11) #10
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 32
  %88 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %38, i64 0, i32 9
  %89 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 33
  %90 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %38, i64 0, i32 32
  %91 = icmp ne i32 %83, 0
  %92 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 162
  %93 = getelementptr inbounds i64, ptr %4, i64 1
  %94 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 164
  %95 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 10
  %96 = getelementptr inbounds ptr, ptr %21, i64 1
  %97 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %98 = icmp ne ptr %21, null
  %99 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 166
  br label %106

100:                                              ; preds = %182
  %101 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 163
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 165
  %103 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 167
  %104 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 45
  %105 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10, i32 61
  br label %185

106:                                              ; preds = %86, %182
  %107 = phi i64 [ 0, %86 ], [ %183, %182 ]
  %108 = load i32, ptr %87, align 4, !tbaa !67
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %107
  %112 = load i32, ptr %111, align 4, !tbaa !63
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, ptr %88, align 4, !tbaa !68
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %182

117:                                              ; preds = %114, %110
  %118 = icmp eq i64 %107, 0
  br i1 %118, label %140, label %119

119:                                              ; preds = %117
  %120 = load i16, ptr %41, align 8, !tbaa !72
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, ptr %89, align 4, !tbaa !73
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %182, label %132

125:                                              ; preds = %119
  %126 = icmp ult i16 %120, 3
  br i1 %126, label %182, label %127

127:                                              ; preds = %125
  %128 = and i64 %107, 1
  %129 = icmp ne i64 %128, 0
  %130 = icmp eq i16 %120, 3
  %131 = and i1 %129, %130
  br i1 %131, label %182, label %143

132:                                              ; preds = %122
  %133 = and i64 %107, 1
  %134 = icmp ne i64 %133, 0
  %135 = icmp eq i32 %123, 1
  %136 = and i1 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, ptr %90, align 4, !tbaa !76
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %182

140:                                              ; preds = %117, %106
  %141 = icmp ne i64 %107, 0
  %142 = select i1 %141, i1 true, i1 %91
  br i1 %142, label %143, label %182

143:                                              ; preds = %127, %137, %132, %140
  %144 = load ptr, ptr %92, align 8, !tbaa !77
  %145 = trunc i64 %107 to i32
  %146 = shl i32 %145, 2
  call void %144(ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %146, i32 noundef %36, ptr noundef nonnull %1) #10
  %147 = load i64, ptr %4, align 16, !tbaa !78
  %148 = icmp eq i64 %147, 0
  %149 = load i64, ptr %93, align 8
  %150 = icmp eq i64 %149, 0
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %182, label %152

152:                                              ; preds = %143
  %153 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %107
  %154 = load i32, ptr %153, align 4, !tbaa !63
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %94, align 8, !tbaa !79
  call void %157(i32 noundef 0, ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %146, ptr noundef nonnull %1) #10
  %158 = load i32, ptr %95, align 8, !tbaa !80
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %94, align 8, !tbaa !79
  %162 = load ptr, ptr %21, align 8, !tbaa !81
  call void %161(i32 noundef 1, ptr noundef %162, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %146, ptr noundef nonnull %1) #10
  %163 = load ptr, ptr %94, align 8, !tbaa !79
  %164 = load ptr, ptr %96, align 8, !tbaa !81
  call void %163(i32 noundef 2, ptr noundef %164, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %146, ptr noundef nonnull %1) #10
  br label %165

165:                                              ; preds = %156, %160, %152
  %166 = load i32, ptr %88, align 4, !tbaa !68
  %167 = add i32 %166, -1
  %168 = icmp ult i32 %167, 2
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load i32, ptr %97, align 4, !tbaa !82
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x [4 x i8]], ptr @chroma_edge, i64 0, i64 %107, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !83
  %174 = icmp sgt i8 %173, -1
  %175 = select i1 %98, i1 %174, i1 false
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = zext nneg i8 %173 to i32
  %178 = load ptr, ptr %99, align 8, !tbaa !84
  %179 = load ptr, ptr %21, align 8, !tbaa !81
  call void %178(ptr noundef %179, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %177, i32 noundef 0, ptr noundef nonnull %1) #10
  %180 = load ptr, ptr %99, align 8, !tbaa !84
  %181 = load ptr, ptr %96, align 8, !tbaa !81
  call void %180(ptr noundef %181, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %177, i32 noundef 1, ptr noundef nonnull %1) #10
  br label %182

182:                                              ; preds = %127, %165, %125, %143, %140, %176, %169, %137, %122, %114
  %183 = add nuw nsw i64 %107, 1
  %184 = icmp eq i64 %183, 4
  br i1 %184, label %100, label %106, !llvm.loop !85

185:                                              ; preds = %100, %293
  %186 = phi i64 [ 0, %100 ], [ %294, %293 ]
  %187 = load i32, ptr %87, align 4, !tbaa !67
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %216

189:                                              ; preds = %185
  %190 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %186
  %191 = load i32, ptr %190, align 4, !tbaa !63
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, ptr %88, align 4, !tbaa !68
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %293, label %196

196:                                              ; preds = %193, %189
  %197 = icmp eq i64 %186, 0
  br i1 %197, label %216, label %198

198:                                              ; preds = %196
  %199 = load i16, ptr %41, align 8, !tbaa !72
  switch i16 %199, label %203 [
    i16 0, label %200
    i16 1, label %293
    i16 3, label %293
  ]

200:                                              ; preds = %198
  %201 = load i32, ptr %89, align 4, !tbaa !73
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %293, label %208

203:                                              ; preds = %198
  %204 = and i64 %186, 1
  %205 = icmp ne i64 %204, 0
  %206 = icmp eq i16 %199, 2
  %207 = and i1 %205, %206
  br i1 %207, label %293, label %219

208:                                              ; preds = %200
  %209 = and i64 %186, 1
  %210 = icmp ne i64 %209, 0
  %211 = icmp eq i32 %201, 1
  %212 = and i1 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load i32, ptr %90, align 4, !tbaa !76
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %293

216:                                              ; preds = %196, %185
  %217 = icmp ne i64 %186, 0
  %218 = select i1 %217, i1 true, i1 %82
  br i1 %218, label %219, label %293

219:                                              ; preds = %203, %213, %208, %216
  %220 = phi i1 [ %217, %216 ], [ true, %208 ], [ true, %213 ], [ true, %203 ]
  %221 = load ptr, ptr %101, align 8, !tbaa !86
  %222 = trunc i64 %186 to i32
  %223 = shl i32 %222, 2
  call void %221(ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %223, i32 noundef %36, ptr noundef nonnull %1) #10
  %224 = load i64, ptr %4, align 16, !tbaa !78
  %225 = icmp eq i64 %224, 0
  %226 = load i64, ptr %93, align 8
  %227 = icmp eq i64 %226, 0
  %228 = select i1 %225, i1 %227, i1 false
  br i1 %228, label %259, label %229

229:                                              ; preds = %219
  %230 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %186
  %231 = load i32, ptr %230, align 4, !tbaa !63
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %102, align 8, !tbaa !87
  call void %234(i32 noundef 0, ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %223, ptr noundef nonnull %1) #10
  %235 = load i32, ptr %95, align 8, !tbaa !80
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %233
  %238 = load ptr, ptr %102, align 8, !tbaa !87
  %239 = load ptr, ptr %21, align 8, !tbaa !81
  call void %238(i32 noundef 1, ptr noundef %239, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %223, ptr noundef nonnull %1) #10
  %240 = load ptr, ptr %102, align 8, !tbaa !87
  %241 = load ptr, ptr %96, align 8, !tbaa !81
  call void %240(i32 noundef 2, ptr noundef %241, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %223, ptr noundef nonnull %1) #10
  br label %242

242:                                              ; preds = %233, %237, %229
  %243 = load i32, ptr %88, align 4, !tbaa !68
  %244 = add i32 %243, -1
  %245 = icmp ult i32 %244, 2
  br i1 %245, label %246, label %259

246:                                              ; preds = %242
  %247 = load i32, ptr %97, align 4, !tbaa !82
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr @chroma_edge, i64 0, i64 1, i64 %186, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !83
  %251 = icmp sgt i8 %250, -1
  %252 = select i1 %98, i1 %251, i1 false
  br i1 %252, label %253, label %259

253:                                              ; preds = %246
  %254 = zext nneg i8 %250 to i32
  %255 = load ptr, ptr %103, align 8, !tbaa !88
  %256 = load ptr, ptr %21, align 8, !tbaa !81
  call void %255(ptr noundef %256, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %254, i32 noundef 0, ptr noundef nonnull %1) #10
  %257 = load ptr, ptr %103, align 8, !tbaa !88
  %258 = load ptr, ptr %96, align 8, !tbaa !81
  call void %257(ptr noundef %258, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef %254, i32 noundef 1, ptr noundef nonnull %1) #10
  br label %259

259:                                              ; preds = %242, %219, %253, %246
  br i1 %220, label %293, label %260

260:                                              ; preds = %259
  %261 = load i32, ptr %104, align 8, !tbaa !60
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %293

263:                                              ; preds = %260
  %264 = load i8, ptr %105, align 8, !tbaa !89
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %293, label %266

266:                                              ; preds = %263
  store i32 2, ptr %39, align 8, !tbaa !54
  %267 = load ptr, ptr %101, align 8, !tbaa !86
  call void %267(ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 16, i32 noundef %36, ptr noundef nonnull %1) #10
  %268 = load ptr, ptr %102, align 8, !tbaa !87
  call void %268(i32 noundef 0, ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 16, ptr noundef nonnull %1) #10
  %269 = load i32, ptr %95, align 8, !tbaa !80
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load ptr, ptr %102, align 8, !tbaa !87
  %273 = load ptr, ptr %21, align 8, !tbaa !81
  call void %272(i32 noundef 1, ptr noundef %273, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 16, ptr noundef nonnull %1) #10
  %274 = load ptr, ptr %102, align 8, !tbaa !87
  %275 = load ptr, ptr %96, align 8, !tbaa !81
  call void %274(i32 noundef 2, ptr noundef %275, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 16, ptr noundef nonnull %1) #10
  br label %276

276:                                              ; preds = %266, %271
  %277 = load i32, ptr %88, align 4, !tbaa !68
  %278 = add i32 %277, -1
  %279 = icmp ult i32 %278, 2
  br i1 %279, label %280, label %292

280:                                              ; preds = %276
  %281 = load i32, ptr %97, align 4, !tbaa !82
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr @chroma_edge, i64 0, i64 1, i64 0, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !83
  %285 = icmp sgt i8 %284, -1
  %286 = select i1 %98, i1 %285, i1 false
  br i1 %286, label %287, label %292

287:                                              ; preds = %280
  %288 = load ptr, ptr %103, align 8, !tbaa !88
  %289 = load ptr, ptr %21, align 8, !tbaa !81
  call void %288(ptr noundef %289, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %1) #10
  %290 = load ptr, ptr %103, align 8, !tbaa !88
  %291 = load ptr, ptr %96, align 8, !tbaa !81
  call void %290(ptr noundef %291, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %1) #10
  br label %292

292:                                              ; preds = %276, %280, %287
  store i32 1, ptr %39, align 8, !tbaa !54
  br label %293

293:                                              ; preds = %198, %198, %203, %216, %292, %263, %260, %259, %213, %200, %193
  %294 = add nuw nsw i64 %186, 1
  %295 = icmp eq i64 %294, 4
  br i1 %295, label %296, label %185, !llvm.loop !90

296:                                              ; preds = %293
  store i32 0, ptr %39, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %297

297:                                              ; preds = %296, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DeblockPicturePartially(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %6) #8
  %8 = icmp sgt i32 %7, %2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4, %9
  %10 = phi i32 [ %11, %9 ], [ %2, %4 ]
  tail call fastcc void @DeblockMb(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %10) #8
  %11 = add nsw i32 %10, 1
  %12 = load i32, ptr %5, align 4, !tbaa !34
  %13 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %12) #8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %9, label %15, !llvm.loop !91

15:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !92 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_Deblock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %8 = load i32, ptr %7, align 8, !tbaa !94
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #10
  %11 = load ptr, ptr @p_Dec, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.decoder_params, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  tail call fastcc void @init_neighbors(ptr noundef %13) #8
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #10
  %14 = load ptr, ptr @p_Dec, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.decoder_params, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  tail call fastcc void @init_neighbors(ptr noundef %16) #8
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef 2, ptr noundef null) #10
  %17 = load ptr, ptr @p_Dec, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.decoder_params, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  tail call fastcc void @init_neighbors(ptr noundef %19) #8
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #10
  br label %24

20:                                               ; preds = %6, %2
  %21 = load ptr, ptr @p_Dec, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.decoder_params, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  tail call fastcc void @init_neighbors(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %20, %10
  %25 = icmp eq i32 %1, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @set_loop_filter_functions_mbaff(ptr noundef nonnull %0) #10
  br label %28

27:                                               ; preds = %24
  tail call void @set_loop_filter_functions_normal(ptr noundef nonnull %0) #10
  br label %28

28:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: optsize
declare void @change_plane_JV(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_neighbors(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %3 = load i32, ptr %2, align 4, !tbaa !98
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 56
  %5 = load i32, ptr %4, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.macroblock, ptr %9, i64 0, i32 28
  %11 = getelementptr %struct.macroblock, ptr %9, i64 -1
  %12 = icmp sgt i32 %3, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = zext nneg i32 %3 to i64
  br label %20

15:                                               ; preds = %20, %1
  %16 = icmp slt i32 %3, %7
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = sext i32 %3 to i64
  %19 = sext i32 %7 to i64
  br label %33

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 1, %13 ], [ %25, %20 ]
  %22 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %21, i32 28
  store ptr null, ptr %22, align 8, !tbaa !101
  %23 = getelementptr %struct.macroblock, ptr %11, i64 %21
  %24 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %21, i32 29
  store ptr %23, ptr %24, align 8, !tbaa !102
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %14
  br i1 %26, label %15, label %20, !llvm.loop !103

27:                                               ; preds = %33, %15
  %28 = icmp sgt i32 %5, 1
  br i1 %28, label %29, label %58

29:                                               ; preds = %27
  %30 = sext i32 %3 to i64
  %31 = zext nneg i32 %5 to i64
  %32 = zext nneg i32 %3 to i64
  br label %41

33:                                               ; preds = %17, %33
  %34 = phi i64 [ %18, %17 ], [ %39, %33 ]
  %35 = sub nsw i64 %34, %18
  %36 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %35
  %37 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %34, i32 28
  store ptr %36, ptr %37, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %34, i32 29
  store ptr null, ptr %38, align 8, !tbaa !102
  %39 = add i64 %34, %18
  %40 = icmp slt i64 %39, %19
  br i1 %40, label %33, label %27, !llvm.loop !104

41:                                               ; preds = %29, %55
  %42 = phi i64 [ 1, %29 ], [ %56, %55 ]
  br i1 %12, label %43, label %55

43:                                               ; preds = %41
  %44 = mul nsw i64 %42, %30
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 1, %43 ], [ %53, %45 ]
  %47 = add nuw nsw i64 %46, %44
  %48 = sub nsw i64 %47, %30
  %49 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %48
  %50 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %47, i32 28
  store ptr %49, ptr %50, align 8, !tbaa !101
  %51 = getelementptr %struct.macroblock, ptr %11, i64 %47
  %52 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %47, i32 29
  store ptr %51, ptr %52, align 8, !tbaa !102
  %53 = add nuw nsw i64 %46, 1
  %54 = icmp eq i64 %53, %32
  br i1 %54, label %55, label %45, !llvm.loop !105

55:                                               ; preds = %45, %41
  %56 = add nuw nsw i64 %42, 1
  %57 = icmp eq i64 %56, %31
  br i1 %57, label %58, label %41, !llvm.loop !106

58:                                               ; preds = %55, %27
  ret void
}

; Function Attrs: optsize
declare void @set_loop_filter_functions_mbaff(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_loop_filter_functions_normal(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @get_mb_pos(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 108}
!35 = !{!"storable_picture", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !37, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !39, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !37, i64 160, !41, i64 184, !37, i64 192, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !37, i64 300, !36, i64 308, !40, i64 312, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !40, i64 336, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !40, i64 376, !36, i64 384, !36, i64 388, !37, i64 392, !37, i64 400}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"pic_motion_params_old", !40, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"loopFilter.c:DeblockMb"}
!45 = !{!46, !40, i64 848888}
!46 = !{!"video_par", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 132120, !40, i64 699416, !37, i64 699424, !36, i64 848672, !36, i64 848676, !36, i64 848680, !36, i64 848684, !40, i64 848688, !40, i64 848696, !40, i64 848704, !36, i64 848712, !36, i64 848716, !36, i64 848720, !36, i64 848724, !36, i64 848728, !40, i64 848736, !40, i64 848744, !37, i64 848752, !36, i64 848776, !36, i64 848780, !36, i64 848784, !36, i64 848788, !36, i64 848792, !40, i64 848800, !37, i64 848808, !40, i64 848832, !40, i64 848840, !37, i64 848848, !36, i64 848872, !36, i64 848876, !40, i64 848880, !40, i64 848888, !37, i64 848896, !36, i64 848920, !40, i64 848928, !40, i64 848936, !36, i64 848944, !36, i64 848948, !36, i64 848952, !36, i64 848956, !36, i64 848960, !36, i64 848964, !36, i64 848968, !36, i64 848972, !36, i64 848976, !36, i64 848980, !36, i64 848984, !36, i64 848988, !36, i64 848992, !36, i64 848996, !36, i64 849000, !36, i64 849004, !36, i64 849008, !36, i64 849012, !36, i64 849016, !36, i64 849020, !36, i64 849024, !36, i64 849028, !36, i64 849032, !36, i64 849036, !39, i64 849040, !39, i64 849042, !37, i64 849044, !36, i64 849052, !36, i64 849056, !37, i64 849060, !37, i64 849072, !36, i64 849084, !36, i64 849088, !36, i64 849092, !36, i64 849096, !36, i64 849100, !36, i64 849104, !36, i64 849108, !36, i64 849112, !36, i64 849116, !36, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !36, i64 849196, !36, i64 849200, !36, i64 849204, !36, i64 849208, !36, i64 849212, !36, i64 849216, !36, i64 849220, !36, i64 849224, !36, i64 849228, !36, i64 849232, !36, i64 849236, !36, i64 849240, !36, i64 849244, !36, i64 849248, !36, i64 849252, !36, i64 849256, !36, i64 849260, !36, i64 849264, !36, i64 849268, !36, i64 849272, !36, i64 849276, !36, i64 849280, !36, i64 849284, !40, i64 849288, !40, i64 849296, !47, i64 849304, !47, i64 849624, !47, i64 849944, !47, i64 850264, !47, i64 850584, !47, i64 850904, !47, i64 851224, !47, i64 851544, !36, i64 851864, !36, i64 851868, !36, i64 851872, !50, i64 851880, !36, i64 851888, !37, i64 851892, !36, i64 855988, !36, i64 855992, !36, i64 855996, !36, i64 856000, !36, i64 856004, !36, i64 856008, !36, i64 856012, !40, i64 856016, !40, i64 856024, !40, i64 856032, !40, i64 856040, !40, i64 856048, !37, i64 856056, !40, i64 856456, !37, i64 856464, !40, i64 856488, !40, i64 856496, !40, i64 856504, !36, i64 856512, !40, i64 856520, !37, i64 856528, !40, i64 856608, !40, i64 856616, !40, i64 856624, !40, i64 856632, !36, i64 856640, !36, i64 856644, !36, i64 856648, !40, i64 856656, !40, i64 856664, !37, i64 856672, !37, i64 856688, !40, i64 856704, !40, i64 856712, !36, i64 856720, !40, i64 856728, !40, i64 856736, !40, i64 856744, !40, i64 856752, !40, i64 856760, !40, i64 856768, !40, i64 856776, !40, i64 856784, !40, i64 856792, !40, i64 856800, !40, i64 856808, !40, i64 856816, !36, i64 856824, !40, i64 856832, !36, i64 856840, !36, i64 856844, !36, i64 856848, !36, i64 856852, !36, i64 856856, !36, i64 856860, !36, i64 856864, !40, i64 856872}
!47 = !{!"image_data", !48, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!48 = !{!"frame_format", !36, i64 0, !36, i64 4, !49, i64 8, !37, i64 16, !37, i64 28, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !36, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !36, i64 124, !36, i64 128}
!49 = !{!"double", !37, i64 0}
!50 = !{!"long", !37, i64 0}
!51 = !{!52, !39, i64 376}
!52 = !{!"macroblock", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !53, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !37, i64 80, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !39, i64 108, !37, i64 110, !37, i64 111, !39, i64 112, !39, i64 114, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !39, i64 152, !37, i64 154, !36, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !36, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !39, i64 376, !39, i64 378, !39, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !37, i64 472}
!53 = !{!"", !39, i64 0, !39, i64 2}
!54 = !{!52, !36, i64 104}
!55 = !{!35, !40, i64 128}
!56 = !{!35, !40, i64 136}
!57 = !{!52, !40, i64 0}
!58 = !{!35, !36, i64 0}
!59 = !{!35, !36, i64 100}
!60 = !{!52, !36, i64 384}
!61 = !{!46, !40, i64 16}
!62 = !{!52, !36, i64 420}
!63 = !{!36, !36, i64 0}
!64 = !{!39, !39, i64 0}
!65 = !{!52, !36, i64 404}
!66 = !{!52, !36, i64 408}
!67 = !{!52, !36, i64 284}
!68 = !{!69, !36, i64 36}
!69 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !36, i64 2060, !36, i64 2064, !36, i64 2068, !36, i64 2072, !36, i64 2076, !36, i64 2080, !36, i64 2084, !36, i64 2088, !36, i64 2092, !37, i64 2096, !36, i64 3120, !36, i64 3124, !36, i64 3128, !36, i64 3132, !36, i64 3136, !36, i64 3140, !36, i64 3144, !36, i64 3148, !36, i64 3152, !36, i64 3156, !36, i64 3160, !36, i64 3164, !36, i64 3168, !70, i64 3172, !36, i64 4120, !36, i64 4124}
!70 = !{!"", !36, i64 0, !36, i64 4, !39, i64 8, !39, i64 10, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !71, i64 80, !36, i64 492, !71, i64 496, !36, i64 908, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944}
!71 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408}
!72 = !{!52, !39, i64 152}
!73 = !{!74, !36, i64 164}
!74 = !{!"slice", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !37, i64 88, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !39, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !37, i64 136, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !40, i64 248, !37, i64 256, !37, i64 264, !40, i64 312, !40, i64 320, !40, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !36, i64 1176, !36, i64 1180, !36, i64 1184, !75, i64 1188, !39, i64 1220, !39, i64 1222, !39, i64 1224, !36, i64 1228, !36, i64 1232, !36, i64 1236, !36, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !37, i64 1288, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !36, i64 13264, !36, i64 13268, !39, i64 13272, !39, i64 13274, !39, i64 13276, !39, i64 13278, !40, i64 13280, !40, i64 13288, !40, i64 13296, !39, i64 13304, !39, i64 13306, !36, i64 13308, !36, i64 13312, !40, i64 13320, !40, i64 13328, !36, i64 13336, !37, i64 13340, !40, i64 13408, !40, i64 13416, !40, i64 13424, !40, i64 13432, !40, i64 13440, !40, i64 13448, !40, i64 13456, !40, i64 13464, !40, i64 13472, !40, i64 13480, !40, i64 13488, !40, i64 13496, !36, i64 13504, !40, i64 13512, !40, i64 13520, !40, i64 13528, !40, i64 13536, !40, i64 13544, !37, i64 13552}
!75 = !{!"nalunitheadermvcext_tag", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!76 = !{!69, !36, i64 3144}
!77 = !{!46, !40, i64 856760}
!78 = !{!50, !50, i64 0}
!79 = !{!46, !40, i64 856776}
!80 = !{!74, !36, i64 64}
!81 = !{!40, !40, i64 0}
!82 = !{!35, !36, i64 268}
!83 = !{!37, !37, i64 0}
!84 = !{!46, !40, i64 856792}
!85 = distinct !{!85, !43}
!86 = !{!46, !40, i64 856768}
!87 = !{!46, !40, i64 856784}
!88 = !{!46, !40, i64 856800}
!89 = !{!52, !37, i64 472}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
!92 = !{!"loopFilter.c:imin"}
!93 = !{!46, !36, i64 849088}
!94 = !{!46, !36, i64 849280}
!95 = !{!96, !40, i64 8}
!96 = !{!"decoder_params", !40, i64 0, !40, i64 8, !50, i64 16, !36, i64 24, !40, i64 32, !36, i64 40}
!97 = !{!"loopFilter.c:init_neighbors"}
!98 = !{!46, !36, i64 848996}
!99 = !{!46, !36, i64 849008}
!100 = !{!46, !36, i64 849012}
!101 = !{!52, !40, i64 136}
!102 = !{!52, !40, i64 144}
!103 = distinct !{!103, !43}
!104 = distinct !{!104, !43}
!105 = distinct !{!105, !43}
!106 = distinct !{!106, !43}
