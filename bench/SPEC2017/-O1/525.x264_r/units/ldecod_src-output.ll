; ModuleID = 'ldecod_src/output.c'
source_filename = "ldecod_src/output.c"
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
%struct.decodedpic_t = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [2 x i32], [2 x i32] }

@write_out_picture.SubWidthC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@write_out_picture.SubHeightC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@.str = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s_ViewId%04d.yuv\00", align 1
@errortext = external global [300 x i8], align 16
@.str.4 = private unnamed_addr constant [20 x i8] c"Error open file %s \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"write_out_picture: error writing to RGB file\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"write_out_picture: error writing to YUV file\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @write_picture(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = alloca [255 x i8], align 16
  %6 = alloca [255 x i8], align 16
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %6) #14
  %8 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = tail call i32 @GetVOIdx(ptr noundef nonnull %0, i32 noundef %9) #14
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 63
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %13, i64 0, i32 39, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !49
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %530

20:                                               ; preds = %4
  %21 = load i32, ptr %11, align 4, !tbaa !54
  %22 = add nsw i32 %21, 7
  %23 = ashr i32 %22, 3
  %24 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 60
  %25 = load i32, ptr %24, align 4, !tbaa !55
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %26, i1 %16, i1 false
  br i1 %27, label %28, label %55

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 62
  %30 = load i32, ptr %29, align 4, !tbaa !56
  %31 = icmp sgt i32 %30, 8
  %32 = select i1 %31, i32 2, i32 1
  %33 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 63
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !59
  %39 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %40 = load i32, ptr %39, align 4, !tbaa !60
  tail call void @tone_map(ptr noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef %40) #14
  %41 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = load ptr, ptr %35, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %46 = load i32, ptr %45, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %48 = load i32, ptr %47, align 4, !tbaa !64
  tail call void @tone_map(ptr noundef %43, ptr noundef %44, i32 noundef %46, i32 noundef %48) #14
  %49 = load ptr, ptr %41, align 8, !tbaa !61
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = load ptr, ptr %35, align 8, !tbaa !58
  %53 = load i32, ptr %45, align 8, !tbaa !63
  %54 = load i32, ptr %47, align 4, !tbaa !64
  tail call void @tone_map(ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54) #14
  br label %55

55:                                               ; preds = %28, %20
  %56 = phi i32 [ %32, %28 ], [ %23, %20 ]
  %57 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 50
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %62 = load i32, ptr %61, align 4, !tbaa !66
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !67
  %66 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 51
  %67 = load i32, ptr %66, align 8, !tbaa !68
  %68 = mul nsw i32 %67, %65
  %69 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  %70 = load i32, ptr %69, align 4, !tbaa !69
  %71 = mul nsw i32 %70, %65
  %72 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %63
  %73 = load i32, ptr %72, align 4, !tbaa !67
  %74 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 49
  %75 = load i32, ptr %74, align 8, !tbaa !70
  %76 = sub nsw i32 2, %75
  %77 = mul nsw i32 %76, %73
  %78 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 53
  %79 = load i32, ptr %78, align 8, !tbaa !71
  %80 = mul nsw i32 %77, %79
  %81 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  %82 = load i32, ptr %81, align 4, !tbaa !72
  %83 = mul nsw i32 %77, %82
  br label %84

84:                                               ; preds = %60, %55
  %85 = phi i32 [ %83, %60 ], [ 0, %55 ]
  %86 = phi i32 [ %80, %60 ], [ 0, %55 ]
  %87 = phi i32 [ %71, %60 ], [ 0, %55 ]
  %88 = phi i32 [ %68, %60 ], [ 0, %55 ]
  %89 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %90 = load i32, ptr %89, align 8, !tbaa !63
  %91 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 51
  %92 = load i32, ptr %91, align 8, !tbaa !68
  %93 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  %94 = load i32, ptr %93, align 4, !tbaa !69
  %95 = add i32 %92, %94
  %96 = sub i32 %90, %95
  %97 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %98 = load i32, ptr %97, align 4, !tbaa !64
  %99 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 49
  %100 = load i32, ptr %99, align 8, !tbaa !70
  %101 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 53
  %102 = load i32, ptr %101, align 8, !tbaa !71
  %103 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  %104 = load i32, ptr %103, align 4, !tbaa !72
  %105 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %106 = load i32, ptr %105, align 8, !tbaa !59
  %107 = add i32 %88, %87
  %108 = sub i32 %106, %107
  %109 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %110 = load i32, ptr %109, align 4, !tbaa !60
  %111 = tail call i32 @testEndian() #14
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 168
  %114 = select i1 %112, ptr @img2buf_normal, ptr @img2buf_endian
  store ptr %114, ptr %113, align 8, !tbaa !73
  %115 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 169
  %116 = load ptr, ptr %115, align 8, !tbaa !74
  %117 = tail call ptr @GetOneAvailDecPicFromList(ptr noundef %116, i32 noundef 0) #14
  %118 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %156

121:                                              ; preds = %84
  %122 = add i32 %86, %85
  %123 = sub i32 %110, %122
  %124 = mul nsw i32 %123, %108
  %125 = add i32 %100, -2
  %126 = add i32 %104, %102
  %127 = mul i32 %126, %125
  %128 = add i32 %127, %98
  %129 = shl i32 %96, 1
  %130 = mul i32 %129, %128
  %131 = add nsw i32 %124, %130
  %132 = mul nsw i32 %131, %56
  %133 = mul nsw i32 %124, %56
  %134 = sext i32 %132 to i64
  %135 = tail call noalias ptr @malloc(i64 noundef %134) #15
  store ptr %135, ptr %118, align 8, !tbaa !75
  %136 = sext i32 %133 to i64
  %137 = getelementptr inbounds i8, ptr %135, i64 %136
  %138 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 7
  store ptr %137, ptr %138, align 8, !tbaa !77
  %139 = mul i32 %130, %56
  %140 = ashr exact i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %137, i64 %141
  %143 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 8
  store ptr %142, ptr %143, align 8, !tbaa !78
  %144 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %145 = load i32, ptr %144, align 4, !tbaa !66
  %146 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 3
  store i32 %145, ptr %146, align 4, !tbaa !79
  %147 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 4
  store i32 0, ptr %147, align 8, !tbaa !80
  %148 = load i32, ptr %11, align 4, !tbaa !54
  %149 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 5
  store i32 %148, ptr %149, align 4, !tbaa !81
  %150 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 9
  store i32 %108, ptr %150, align 8, !tbaa !82
  %151 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 10
  store i32 %123, ptr %151, align 4, !tbaa !83
  %152 = mul nsw i32 %108, %56
  %153 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 11
  store i32 %152, ptr %153, align 8, !tbaa !84
  %154 = mul nsw i32 %96, %56
  %155 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 12
  store i32 %154, ptr %155, align 4, !tbaa !85
  br label %156

156:                                              ; preds = %121, %84
  store i32 1, ptr %117, align 8, !tbaa !86
  %157 = load i32, ptr %8, align 8, !tbaa !45
  %158 = tail call i32 @llvm.smax.i32(i32 %157, i32 -1)
  %159 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 1
  store i32 %158, ptr %159, align 4, !tbaa !87
  %160 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !88
  %162 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 2
  store i32 %161, ptr %162, align 8, !tbaa !89
  %163 = load ptr, ptr %118, align 8, !tbaa !75
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #14
  br label %166

166:                                              ; preds = %165, %156
  %167 = load i32, ptr %8, align 8, !tbaa !45
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %169, label %203

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 16
  %171 = load i32, ptr %170, align 8, !tbaa !90
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %203

173:                                              ; preds = %169
  %174 = sext i32 %10 to i64
  %175 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 122, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !67
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %221

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 1
  %180 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %179, ptr noundef nonnull dereferenceable(3) @.str.1) #16
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %221, label %182

182:                                              ; preds = %178
  %183 = load i8, ptr %179, align 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %221, label %185

185:                                              ; preds = %182
  %186 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %179) #14
  %187 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 46) #16
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  store i8 0, ptr %187, align 1, !tbaa !93
  br label %190

190:                                              ; preds = %189, %185
  %191 = load i32, ptr %6, align 16
  %192 = icmp eq i32 %191, 7107950
  br i1 %192, label %202, label %193

193:                                              ; preds = %190
  %194 = load i32, ptr %8, align 8, !tbaa !45
  %195 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %6, i32 noundef %194) #14
  %196 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %5, i32 noundef 577, i32 noundef 384) #14
  store i32 %196, ptr %175, align 4, !tbaa !67
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %221

198:                                              ; preds = %193
  %199 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #14
  %200 = load ptr, ptr @stderr, align 8, !tbaa !62
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #17
  call void @exit(i32 noundef 500) #18
  unreachable

202:                                              ; preds = %190
  store i32 -1, ptr %175, align 4, !tbaa !67
  br label %221

203:                                              ; preds = %169, %166
  %204 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 122
  %205 = load i32, ptr %204, align 4, !tbaa !67
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %221

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 1
  %209 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %208, ptr noundef nonnull dereferenceable(3) @.str.1) #16
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %221, label %211

211:                                              ; preds = %207
  %212 = load i8, ptr %208, align 1
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %208, i32 noundef 577, i32 noundef 384) #14
  store i32 %215, ptr %204, align 4, !tbaa !67
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %208) #14
  %219 = load ptr, ptr @stderr, align 8, !tbaa !62
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #17
  tail call void @exit(i32 noundef 500) #18
  unreachable

221:                                              ; preds = %214, %211, %207, %203, %202, %193, %182, %178, %173
  %222 = phi ptr [ %175, %202 ], [ %175, %193 ], [ %175, %182 ], [ %175, %178 ], [ %175, %173 ], [ %204, %214 ], [ %204, %211 ], [ %204, %207 ], [ %204, %203 ]
  %223 = load i32, ptr %222, align 4, !tbaa !67
  br i1 %16, label %224, label %299

224:                                              ; preds = %221
  %225 = load i32, ptr %105, align 8, !tbaa !59
  %226 = load i32, ptr %109, align 4, !tbaa !60
  %227 = mul i32 %225, %56
  %228 = mul i32 %227, %226
  %229 = sext i32 %228 to i64
  %230 = call noalias ptr @malloc(i64 noundef %229) #15
  %231 = load i32, ptr %91, align 8, !tbaa !68
  %232 = load i32, ptr %93, align 4, !tbaa !69
  %233 = load i32, ptr %99, align 8, !tbaa !70
  %234 = sub nsw i32 2, %233
  %235 = load i32, ptr %101, align 8, !tbaa !71
  %236 = mul nsw i32 %234, %235
  %237 = load i32, ptr %103, align 4, !tbaa !72
  %238 = mul nsw i32 %237, %234
  %239 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 168
  %240 = load ptr, ptr %239, align 8, !tbaa !73
  %241 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %242 = load ptr, ptr %241, align 8, !tbaa !61
  %243 = getelementptr inbounds ptr, ptr %242, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !62
  %245 = load i32, ptr %89, align 8, !tbaa !63
  %246 = load i32, ptr %97, align 4, !tbaa !64
  %247 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 11
  %248 = load i32, ptr %247, align 8, !tbaa !84
  call void %240(ptr noundef %244, ptr noundef %230, i32 noundef %245, i32 noundef %246, i32 noundef %56, i32 noundef %231, i32 noundef %232, i32 noundef %236, i32 noundef %238, i32 noundef %248) #14
  %249 = icmp sgt i32 %223, -1
  br i1 %249, label %250, label %270

250:                                              ; preds = %224
  %251 = load i32, ptr %97, align 4, !tbaa !64
  %252 = add i32 %238, %236
  %253 = sub i32 %251, %252
  %254 = load i32, ptr %89, align 8, !tbaa !63
  %255 = add i32 %232, %231
  %256 = sub i32 %254, %255
  %257 = mul i32 %253, %56
  %258 = mul i32 %257, %256
  %259 = sext i32 %258 to i64
  %260 = call i64 @write(i32 noundef %223, ptr noundef %230, i64 noundef %259) #14
  %261 = trunc i64 %260 to i32
  %262 = load i32, ptr %97, align 4, !tbaa !64
  %263 = sub i32 %262, %252
  %264 = load i32, ptr %89, align 8, !tbaa !63
  %265 = sub i32 %264, %255
  %266 = mul i32 %263, %56
  %267 = mul i32 %266, %265
  %268 = icmp eq i32 %267, %261
  br i1 %268, label %270, label %269

269:                                              ; preds = %250
  call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #14
  br label %270

270:                                              ; preds = %269, %250, %224
  %271 = load i32, ptr %57, align 4, !tbaa !65
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %292, label %273

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %275 = load i32, ptr %274, align 4, !tbaa !66
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !67
  %279 = load i32, ptr %91, align 8, !tbaa !68
  %280 = mul nsw i32 %279, %278
  %281 = load i32, ptr %93, align 4, !tbaa !69
  %282 = mul nsw i32 %281, %278
  %283 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %276
  %284 = load i32, ptr %283, align 4, !tbaa !67
  %285 = load i32, ptr %99, align 8, !tbaa !70
  %286 = sub nsw i32 2, %285
  %287 = mul nsw i32 %286, %284
  %288 = load i32, ptr %101, align 8, !tbaa !71
  %289 = mul nsw i32 %287, %288
  %290 = load i32, ptr %103, align 4, !tbaa !72
  %291 = mul nsw i32 %287, %290
  br label %292

292:                                              ; preds = %273, %270
  %293 = phi i32 [ %291, %273 ], [ 0, %270 ]
  %294 = phi i32 [ %289, %273 ], [ 0, %270 ]
  %295 = phi i32 [ %282, %273 ], [ 0, %270 ]
  %296 = phi i32 [ %280, %273 ], [ 0, %270 ]
  %297 = icmp eq ptr %230, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %292
  call void @free(ptr noundef %230) #14
  br label %299

299:                                              ; preds = %298, %292, %221
  %300 = phi i32 [ %293, %298 ], [ %293, %292 ], [ %85, %221 ]
  %301 = phi i32 [ %294, %298 ], [ %294, %292 ], [ %86, %221 ]
  %302 = phi i32 [ %295, %298 ], [ %295, %292 ], [ %87, %221 ]
  %303 = phi i32 [ %296, %298 ], [ %296, %292 ], [ %88, %221 ]
  %304 = load i32, ptr %117, align 8, !tbaa !86
  %305 = icmp eq i32 %304, 1
  %306 = load ptr, ptr %118, align 8, !tbaa !75
  %307 = mul nsw i32 %108, %56
  %308 = select i1 %305, i32 0, i32 %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, ptr %306, i64 %309
  %311 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 168
  %312 = load ptr, ptr %311, align 8, !tbaa !73
  %313 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %314 = load ptr, ptr %313, align 8, !tbaa !57
  %315 = load i32, ptr %105, align 8, !tbaa !59
  %316 = load i32, ptr %109, align 4, !tbaa !60
  %317 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 11
  %318 = load i32, ptr %317, align 8, !tbaa !84
  call void %312(ptr noundef %314, ptr noundef %310, i32 noundef %315, i32 noundef %316, i32 noundef %56, i32 noundef %303, i32 noundef %302, i32 noundef %301, i32 noundef %300, i32 noundef %318) #14
  %319 = icmp sgt i32 %223, -1
  br i1 %319, label %320, label %340

320:                                              ; preds = %299
  %321 = load i32, ptr %109, align 4, !tbaa !60
  %322 = add i32 %301, %300
  %323 = sub i32 %321, %322
  %324 = load i32, ptr %105, align 8, !tbaa !59
  %325 = add i32 %303, %302
  %326 = sub i32 %324, %325
  %327 = mul i32 %323, %56
  %328 = mul i32 %327, %326
  %329 = sext i32 %328 to i64
  %330 = call i64 @write(i32 noundef %223, ptr noundef %310, i64 noundef %329) #14
  %331 = trunc i64 %330 to i32
  %332 = load i32, ptr %109, align 4, !tbaa !60
  %333 = sub i32 %332, %322
  %334 = load i32, ptr %105, align 8, !tbaa !59
  %335 = sub i32 %334, %325
  %336 = mul i32 %333, %56
  %337 = mul i32 %336, %335
  %338 = icmp eq i32 %337, %331
  br i1 %338, label %340, label %339

339:                                              ; preds = %320
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %340

340:                                              ; preds = %339, %320, %299
  %341 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %342 = load i32, ptr %341, align 4, !tbaa !66
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %426, label %344

344:                                              ; preds = %340
  %345 = load i32, ptr %91, align 8, !tbaa !68
  %346 = load i32, ptr %93, align 4, !tbaa !69
  %347 = load i32, ptr %99, align 8, !tbaa !70
  %348 = sub nsw i32 2, %347
  %349 = load i32, ptr %101, align 8, !tbaa !71
  %350 = mul nsw i32 %348, %349
  %351 = load i32, ptr %103, align 4, !tbaa !72
  %352 = mul nsw i32 %351, %348
  %353 = load i32, ptr %117, align 8, !tbaa !86
  %354 = icmp eq i32 %353, 1
  %355 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 7
  %356 = load ptr, ptr %355, align 8, !tbaa !77
  %357 = mul nsw i32 %96, %56
  %358 = select i1 %354, i32 0, i32 %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, ptr %356, i64 %359
  %361 = load ptr, ptr %311, align 8, !tbaa !73
  %362 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %363 = load ptr, ptr %362, align 8, !tbaa !61
  %364 = load ptr, ptr %363, align 8, !tbaa !62
  %365 = load i32, ptr %89, align 8, !tbaa !63
  %366 = load i32, ptr %97, align 4, !tbaa !64
  %367 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 12
  %368 = load i32, ptr %367, align 4, !tbaa !85
  call void %361(ptr noundef %364, ptr noundef %360, i32 noundef %365, i32 noundef %366, i32 noundef %56, i32 noundef %345, i32 noundef %346, i32 noundef %350, i32 noundef %352, i32 noundef %368) #14
  br i1 %319, label %369, label %389

369:                                              ; preds = %344
  %370 = load i32, ptr %97, align 4, !tbaa !64
  %371 = add i32 %352, %350
  %372 = sub i32 %370, %371
  %373 = load i32, ptr %89, align 8, !tbaa !63
  %374 = add i32 %346, %345
  %375 = sub i32 %373, %374
  %376 = mul i32 %372, %56
  %377 = mul i32 %376, %375
  %378 = sext i32 %377 to i64
  %379 = call i64 @write(i32 noundef %223, ptr noundef %360, i64 noundef %378) #14
  %380 = trunc i64 %379 to i32
  %381 = load i32, ptr %97, align 4, !tbaa !64
  %382 = sub i32 %381, %371
  %383 = load i32, ptr %89, align 8, !tbaa !63
  %384 = sub i32 %383, %374
  %385 = mul i32 %382, %56
  %386 = mul i32 %385, %384
  %387 = icmp eq i32 %386, %380
  br i1 %387, label %389, label %388

388:                                              ; preds = %369
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %389

389:                                              ; preds = %388, %369, %344
  br i1 %16, label %530, label %390

390:                                              ; preds = %389
  %391 = load i32, ptr %117, align 8, !tbaa !86
  %392 = icmp eq i32 %391, 1
  %393 = getelementptr inbounds %struct.decodedpic_t, ptr %117, i64 0, i32 8
  %394 = load ptr, ptr %393, align 8, !tbaa !78
  %395 = mul nsw i32 %96, %56
  %396 = select i1 %392, i32 0, i32 %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8, ptr %394, i64 %397
  %399 = load ptr, ptr %311, align 8, !tbaa !73
  %400 = load ptr, ptr %362, align 8, !tbaa !61
  %401 = getelementptr inbounds ptr, ptr %400, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !62
  %403 = load i32, ptr %89, align 8, !tbaa !63
  %404 = load i32, ptr %97, align 4, !tbaa !64
  %405 = load i32, ptr %367, align 4, !tbaa !85
  call void %399(ptr noundef %402, ptr noundef %398, i32 noundef %403, i32 noundef %404, i32 noundef %56, i32 noundef %345, i32 noundef %346, i32 noundef %350, i32 noundef %352, i32 noundef %405) #14
  br i1 %319, label %406, label %530

406:                                              ; preds = %390
  %407 = load i32, ptr %97, align 4, !tbaa !64
  %408 = add i32 %352, %350
  %409 = sub i32 %407, %408
  %410 = load i32, ptr %89, align 8, !tbaa !63
  %411 = add i32 %346, %345
  %412 = sub i32 %410, %411
  %413 = mul i32 %409, %56
  %414 = mul i32 %413, %412
  %415 = sext i32 %414 to i64
  %416 = call i64 @write(i32 noundef %223, ptr noundef %398, i64 noundef %415) #14
  %417 = trunc i64 %416 to i32
  %418 = load i32, ptr %97, align 4, !tbaa !64
  %419 = sub i32 %418, %408
  %420 = load i32, ptr %89, align 8, !tbaa !63
  %421 = sub i32 %420, %411
  %422 = mul i32 %419, %56
  %423 = mul i32 %422, %421
  %424 = icmp eq i32 %423, %417
  br i1 %424, label %530, label %425

425:                                              ; preds = %406
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %530

426:                                              ; preds = %340
  %427 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 6
  %428 = load i32, ptr %427, align 4, !tbaa !94
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %530, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 64
  %432 = load i16, ptr %431, align 8, !tbaa !95
  %433 = sext i16 %432 to i32
  %434 = add nsw i32 %433, -1
  %435 = shl nuw i32 1, %434
  %436 = trunc i32 %435 to i16
  %437 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %438 = load i32, ptr %109, align 4, !tbaa !60
  %439 = sdiv i32 %438, 2
  %440 = load i32, ptr %105, align 8, !tbaa !59
  %441 = sdiv i32 %440, 2
  %442 = call i32 @get_mem3Dpel(ptr noundef nonnull %437, i32 noundef 1, i32 noundef %439, i32 noundef %441) #14
  %443 = load i32, ptr %109, align 4, !tbaa !60
  %444 = sdiv i32 %443, 2
  %445 = icmp sgt i32 %443, 1
  br i1 %445, label %446, label %467

446:                                              ; preds = %430
  %447 = load i32, ptr %105, align 8, !tbaa !59
  %448 = sdiv i32 %447, 2
  %449 = icmp sgt i32 %447, 1
  %450 = zext nneg i32 %444 to i64
  %451 = zext nneg i32 %448 to i64
  br label %452

452:                                              ; preds = %446, %464
  %453 = phi i64 [ 0, %446 ], [ %465, %464 ]
  br i1 %449, label %454, label %464

454:                                              ; preds = %452
  %455 = load ptr, ptr %437, align 8, !tbaa !61
  %456 = load ptr, ptr %455, align 8, !tbaa !62
  %457 = getelementptr inbounds ptr, ptr %456, i64 %453
  %458 = load ptr, ptr %457, align 8, !tbaa !62
  br label %459

459:                                              ; preds = %454, %459
  %460 = phi i64 [ 0, %454 ], [ %462, %459 ]
  %461 = getelementptr inbounds i16, ptr %458, i64 %460
  store i16 %436, ptr %461, align 2, !tbaa !96
  %462 = add nuw nsw i64 %460, 1
  %463 = icmp eq i64 %462, %451
  br i1 %463, label %464, label %459, !llvm.loop !97

464:                                              ; preds = %459, %452
  %465 = add nuw nsw i64 %453, 1
  %466 = icmp eq i64 %465, %450
  br i1 %466, label %467, label %452, !llvm.loop !100

467:                                              ; preds = %464, %430
  %468 = load i32, ptr %105, align 8, !tbaa !59
  %469 = mul i32 %443, %56
  %470 = mul i32 %469, %468
  %471 = sext i32 %470 to i64
  %472 = call noalias ptr @malloc(i64 noundef %471) #15
  %473 = load ptr, ptr %311, align 8, !tbaa !73
  %474 = load ptr, ptr %437, align 8, !tbaa !61
  %475 = load ptr, ptr %474, align 8, !tbaa !62
  %476 = sdiv i32 %468, 2
  %477 = sdiv i32 %303, 2
  %478 = sdiv i32 %302, 2
  %479 = sdiv i32 %301, 2
  %480 = sdiv i32 %300, 2
  %481 = load i32, ptr %317, align 8, !tbaa !84
  %482 = sdiv i32 %481, 2
  call void %473(ptr noundef %475, ptr noundef %472, i32 noundef %476, i32 noundef %444, i32 noundef %56, i32 noundef %477, i32 noundef %478, i32 noundef %479, i32 noundef %480, i32 noundef %482) #14
  %483 = load i32, ptr %109, align 4, !tbaa !60
  %484 = add i32 %301, %300
  %485 = sub i32 %483, %484
  %486 = mul nsw i32 %485, %56
  %487 = sdiv i32 %486, 2
  %488 = load i32, ptr %105, align 8, !tbaa !59
  %489 = add i32 %303, %302
  %490 = sub i32 %488, %489
  %491 = mul nsw i32 %487, %490
  %492 = sdiv i32 %491, 2
  %493 = sext i32 %492 to i64
  %494 = call i64 @write(i32 noundef %223, ptr noundef %472, i64 noundef %493) #14
  %495 = trunc i64 %494 to i32
  %496 = load i32, ptr %109, align 4, !tbaa !60
  %497 = sub i32 %496, %484
  %498 = mul nsw i32 %497, %56
  %499 = sdiv i32 %498, 2
  %500 = load i32, ptr %105, align 8, !tbaa !59
  %501 = sub i32 %500, %489
  %502 = mul nsw i32 %499, %501
  %503 = sdiv i32 %502, 2
  %504 = icmp eq i32 %503, %495
  br i1 %504, label %506, label %505

505:                                              ; preds = %467
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %506

506:                                              ; preds = %505, %467
  %507 = load i32, ptr %109, align 4, !tbaa !60
  %508 = sub i32 %507, %484
  %509 = mul nsw i32 %508, %56
  %510 = sdiv i32 %509, 2
  %511 = load i32, ptr %105, align 8, !tbaa !59
  %512 = sub i32 %511, %489
  %513 = mul nsw i32 %510, %512
  %514 = sdiv i32 %513, 2
  %515 = sext i32 %514 to i64
  %516 = call i64 @write(i32 noundef %223, ptr noundef %472, i64 noundef %515) #14
  %517 = trunc i64 %516 to i32
  %518 = load i32, ptr %109, align 4, !tbaa !60
  %519 = sub i32 %518, %484
  %520 = mul nsw i32 %519, %56
  %521 = sdiv i32 %520, 2
  %522 = load i32, ptr %105, align 8, !tbaa !59
  %523 = sub i32 %522, %489
  %524 = mul nsw i32 %521, %523
  %525 = sdiv i32 %524, 2
  %526 = icmp eq i32 %525, %517
  br i1 %526, label %528, label %527

527:                                              ; preds = %506
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %528

528:                                              ; preds = %527, %506
  call void @free(ptr noundef %472) #14
  %529 = load ptr, ptr %437, align 8, !tbaa !61
  call void @free_mem3Dpel(ptr noundef %529) #14
  store ptr null, ptr %437, align 8, !tbaa !61
  br label %530

530:                                              ; preds = %4, %389, %390, %406, %425, %426, %528
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_out_buffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @alloc_frame_store() #14
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  store ptr %2, ptr %3, align 8, !tbaa !101
  ret void
}

declare ptr @alloc_frame_store() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uninit_out_buffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  tail call void @free_frame_store(ptr noundef %3) #14
  store ptr null, ptr %2, align 8, !tbaa !101
  ret void
}

declare void @free_frame_store(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_picture(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp sgt i32 %8, 0
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %12 = zext nneg i32 %4 to i64
  %13 = zext nneg i32 %8 to i64
  br label %14

14:                                               ; preds = %6, %39
  %15 = phi i64 [ 0, %6 ], [ %40, %39 ]
  br i1 %9, label %16, label %39

16:                                               ; preds = %14
  %17 = load i32, ptr %10, align 4, !tbaa !67
  %18 = trunc i32 %17 to i16
  %19 = load ptr, ptr %11, align 8, !tbaa !57
  %20 = getelementptr inbounds ptr, ptr %19, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  br label %34

22:                                               ; preds = %39, %2
  %23 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %24 = load i32, ptr %23, align 4, !tbaa !64
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %28 = load i32, ptr %27, align 8, !tbaa !63
  %29 = icmp sgt i32 %28, 0
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  %31 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %32 = zext nneg i32 %24 to i64
  %33 = zext nneg i32 %28 to i64
  br label %42

34:                                               ; preds = %16, %34
  %35 = phi i64 [ 0, %16 ], [ %37, %34 ]
  %36 = getelementptr inbounds i16, ptr %21, i64 %35
  store i16 %18, ptr %36, align 2, !tbaa !96
  %37 = add nuw nsw i64 %35, 1
  %38 = icmp eq i64 %37, %13
  br i1 %38, label %39, label %34, !llvm.loop !102

39:                                               ; preds = %34, %14
  %40 = add nuw nsw i64 %15, 1
  %41 = icmp eq i64 %40, %12
  br i1 %41, label %22, label %14, !llvm.loop !103

42:                                               ; preds = %26, %66
  %43 = phi i64 [ 0, %26 ], [ %67, %66 ]
  br i1 %29, label %44, label %66

44:                                               ; preds = %42
  %45 = load i32, ptr %30, align 4, !tbaa !67
  %46 = trunc i32 %45 to i16
  %47 = load ptr, ptr %31, align 8, !tbaa !61
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds ptr, ptr %48, i64 %43
  %50 = load ptr, ptr %49, align 8, !tbaa !62
  br label %61

51:                                               ; preds = %66, %22
  %52 = icmp sgt i32 %24, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %55 = load i32, ptr %54, align 8, !tbaa !63
  %56 = icmp sgt i32 %55, 0
  %57 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 2
  %58 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %59 = zext nneg i32 %24 to i64
  %60 = zext nneg i32 %55 to i64
  br label %69

61:                                               ; preds = %44, %61
  %62 = phi i64 [ 0, %44 ], [ %64, %61 ]
  %63 = getelementptr inbounds i16, ptr %50, i64 %62
  store i16 %46, ptr %63, align 2, !tbaa !96
  %64 = add nuw nsw i64 %62, 1
  %65 = icmp eq i64 %64, %33
  br i1 %65, label %66, label %61, !llvm.loop !104

66:                                               ; preds = %61, %42
  %67 = add nuw nsw i64 %43, 1
  %68 = icmp eq i64 %67, %32
  br i1 %68, label %51, label %42, !llvm.loop !105

69:                                               ; preds = %53, %84
  %70 = phi i64 [ 0, %53 ], [ %85, %84 ]
  br i1 %56, label %71, label %84

71:                                               ; preds = %69
  %72 = load i32, ptr %57, align 4, !tbaa !67
  %73 = trunc i32 %72 to i16
  %74 = load ptr, ptr %58, align 8, !tbaa !61
  %75 = getelementptr inbounds ptr, ptr %74, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = getelementptr inbounds ptr, ptr %76, i64 %70
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  br label %79

79:                                               ; preds = %71, %79
  %80 = phi i64 [ 0, %71 ], [ %82, %79 ]
  %81 = getelementptr inbounds i16, ptr %78, i64 %80
  store i16 %73, ptr %81, align 2, !tbaa !96
  %82 = add nuw nsw i64 %80, 1
  %83 = icmp eq i64 %82, %60
  br i1 %83, label %84, label %79, !llvm.loop !106

84:                                               ; preds = %79, %69
  %85 = add nuw nsw i64 %70, 1
  %86 = icmp eq i64 %85, %59
  br i1 %86, label %87, label %69, !llvm.loop !107

87:                                               ; preds = %84, %51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @write_unpaired_field(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !108
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %114, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 17
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = shl nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 19
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = shl nsw i32 %18, 1
  %20 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 2, i32 noundef %11, i32 noundef %14, i32 noundef %16, i32 noundef %19) #14
  %21 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  store ptr %20, ptr %21, align 8, !tbaa !111
  %22 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %23 = load i32, ptr %22, align 4, !tbaa !66
  %24 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 48
  store i32 %23, ptr %24, align 4, !tbaa !66
  %25 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 17
  %26 = load i32, ptr %25, align 4, !tbaa !60
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = icmp sgt i32 %30, 0
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %33 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 32
  %34 = zext nneg i32 %26 to i64
  %35 = zext nneg i32 %30 to i64
  br label %36

36:                                               ; preds = %61, %28
  %37 = phi i64 [ 0, %28 ], [ %62, %61 ]
  br i1 %31, label %38, label %61

38:                                               ; preds = %36
  %39 = load i32, ptr %32, align 4, !tbaa !67
  %40 = trunc i32 %39 to i16
  %41 = load ptr, ptr %33, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 %37
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  br label %56

44:                                               ; preds = %61, %7
  %45 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 19
  %46 = load i32, ptr %45, align 4, !tbaa !64
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 18
  %50 = load i32, ptr %49, align 8, !tbaa !63
  %51 = icmp sgt i32 %50, 0
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  %53 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 33
  %54 = zext nneg i32 %46 to i64
  %55 = zext nneg i32 %50 to i64
  br label %64

56:                                               ; preds = %56, %38
  %57 = phi i64 [ 0, %38 ], [ %59, %56 ]
  %58 = getelementptr inbounds i16, ptr %43, i64 %57
  store i16 %40, ptr %58, align 2, !tbaa !96
  %59 = add nuw nsw i64 %57, 1
  %60 = icmp eq i64 %59, %35
  br i1 %60, label %61, label %56, !llvm.loop !102

61:                                               ; preds = %56, %36
  %62 = add nuw nsw i64 %37, 1
  %63 = icmp eq i64 %62, %34
  br i1 %63, label %44, label %36, !llvm.loop !103

64:                                               ; preds = %87, %48
  %65 = phi i64 [ 0, %48 ], [ %88, %87 ]
  br i1 %51, label %66, label %87

66:                                               ; preds = %64
  %67 = load i32, ptr %52, align 4, !tbaa !67
  %68 = trunc i32 %67 to i16
  %69 = load ptr, ptr %53, align 8, !tbaa !61
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  %71 = getelementptr inbounds ptr, ptr %70, i64 %65
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  br label %82

73:                                               ; preds = %87
  br i1 %47, label %74, label %108

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 18
  %76 = load i32, ptr %75, align 8, !tbaa !63
  %77 = icmp sgt i32 %76, 0
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 2
  %79 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 33
  %80 = zext nneg i32 %46 to i64
  %81 = zext nneg i32 %76 to i64
  br label %90

82:                                               ; preds = %82, %66
  %83 = phi i64 [ 0, %66 ], [ %85, %82 ]
  %84 = getelementptr inbounds i16, ptr %72, i64 %83
  store i16 %68, ptr %84, align 2, !tbaa !96
  %85 = add nuw nsw i64 %83, 1
  %86 = icmp eq i64 %85, %55
  br i1 %86, label %87, label %82, !llvm.loop !104

87:                                               ; preds = %82, %64
  %88 = add nuw nsw i64 %65, 1
  %89 = icmp eq i64 %88, %54
  br i1 %89, label %73, label %64, !llvm.loop !105

90:                                               ; preds = %105, %74
  %91 = phi i64 [ 0, %74 ], [ %106, %105 ]
  br i1 %77, label %92, label %105

92:                                               ; preds = %90
  %93 = load i32, ptr %78, align 4, !tbaa !67
  %94 = trunc i32 %93 to i16
  %95 = load ptr, ptr %79, align 8, !tbaa !61
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = getelementptr inbounds ptr, ptr %97, i64 %91
  %99 = load ptr, ptr %98, align 8, !tbaa !62
  br label %100

100:                                              ; preds = %100, %92
  %101 = phi i64 [ 0, %92 ], [ %103, %100 ]
  %102 = getelementptr inbounds i16, ptr %99, i64 %101
  store i16 %94, ptr %102, align 2, !tbaa !96
  %103 = add nuw nsw i64 %101, 1
  %104 = icmp eq i64 %103, %81
  br i1 %104, label %105, label %100, !llvm.loop !106

105:                                              ; preds = %100, %90
  %106 = add nuw nsw i64 %91, 1
  %107 = icmp eq i64 %106, %80
  br i1 %107, label %108, label %90, !llvm.loop !107

108:                                              ; preds = %105, %44, %73
  tail call void @dpb_combine_field_yuv(ptr noundef %0, ptr noundef nonnull %1) #14
  %109 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %110 = load i32, ptr %109, align 8, !tbaa !112
  %111 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !113
  %113 = getelementptr inbounds %struct.storable_picture, ptr %112, i64 0, i32 64
  store i32 %110, ptr %113, align 8, !tbaa !45
  tail call void @write_picture(ptr noundef %0, ptr noundef %112, i32 poison, i32 poison)
  br label %114

114:                                              ; preds = %108, %3
  %115 = load i32, ptr %1, align 8, !tbaa !108
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %244, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  %120 = load ptr, ptr %119, align 8, !tbaa !111
  %121 = getelementptr inbounds %struct.storable_picture, ptr %120, i64 0, i32 16
  %122 = load i32, ptr %121, align 8, !tbaa !59
  %123 = getelementptr inbounds %struct.storable_picture, ptr %120, i64 0, i32 17
  %124 = load i32, ptr %123, align 4, !tbaa !60
  %125 = shl nsw i32 %124, 1
  %126 = getelementptr inbounds %struct.storable_picture, ptr %120, i64 0, i32 18
  %127 = load i32, ptr %126, align 8, !tbaa !63
  %128 = getelementptr inbounds %struct.storable_picture, ptr %120, i64 0, i32 19
  %129 = load i32, ptr %128, align 4, !tbaa !64
  %130 = shl nsw i32 %129, 1
  %131 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 1, i32 noundef %122, i32 noundef %125, i32 noundef %127, i32 noundef %130) #14
  %132 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  store ptr %131, ptr %132, align 8, !tbaa !110
  %133 = getelementptr inbounds %struct.storable_picture, ptr %120, i64 0, i32 48
  %134 = load i32, ptr %133, align 4, !tbaa !66
  %135 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 48
  store i32 %134, ptr %135, align 4, !tbaa !66
  %136 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 17
  %137 = load i32, ptr %136, align 4, !tbaa !60
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 16
  %141 = load i32, ptr %140, align 8, !tbaa !59
  %142 = icmp sgt i32 %141, 0
  %143 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %144 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 32
  %145 = zext nneg i32 %137 to i64
  %146 = zext nneg i32 %141 to i64
  br label %147

147:                                              ; preds = %172, %139
  %148 = phi i64 [ 0, %139 ], [ %173, %172 ]
  br i1 %142, label %149, label %172

149:                                              ; preds = %147
  %150 = load i32, ptr %143, align 4, !tbaa !67
  %151 = trunc i32 %150 to i16
  %152 = load ptr, ptr %144, align 8, !tbaa !57
  %153 = getelementptr inbounds ptr, ptr %152, i64 %148
  %154 = load ptr, ptr %153, align 8, !tbaa !62
  br label %167

155:                                              ; preds = %172, %118
  %156 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 19
  %157 = load i32, ptr %156, align 4, !tbaa !64
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %219

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 18
  %161 = load i32, ptr %160, align 8, !tbaa !63
  %162 = icmp sgt i32 %161, 0
  %163 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  %164 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 33
  %165 = zext nneg i32 %157 to i64
  %166 = zext nneg i32 %161 to i64
  br label %175

167:                                              ; preds = %167, %149
  %168 = phi i64 [ 0, %149 ], [ %170, %167 ]
  %169 = getelementptr inbounds i16, ptr %154, i64 %168
  store i16 %151, ptr %169, align 2, !tbaa !96
  %170 = add nuw nsw i64 %168, 1
  %171 = icmp eq i64 %170, %146
  br i1 %171, label %172, label %167, !llvm.loop !102

172:                                              ; preds = %167, %147
  %173 = add nuw nsw i64 %148, 1
  %174 = icmp eq i64 %173, %145
  br i1 %174, label %155, label %147, !llvm.loop !103

175:                                              ; preds = %198, %159
  %176 = phi i64 [ 0, %159 ], [ %199, %198 ]
  br i1 %162, label %177, label %198

177:                                              ; preds = %175
  %178 = load i32, ptr %163, align 4, !tbaa !67
  %179 = trunc i32 %178 to i16
  %180 = load ptr, ptr %164, align 8, !tbaa !61
  %181 = load ptr, ptr %180, align 8, !tbaa !62
  %182 = getelementptr inbounds ptr, ptr %181, i64 %176
  %183 = load ptr, ptr %182, align 8, !tbaa !62
  br label %193

184:                                              ; preds = %198
  br i1 %158, label %185, label %219

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 18
  %187 = load i32, ptr %186, align 8, !tbaa !63
  %188 = icmp sgt i32 %187, 0
  %189 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 2
  %190 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 33
  %191 = zext nneg i32 %157 to i64
  %192 = zext nneg i32 %187 to i64
  br label %201

193:                                              ; preds = %193, %177
  %194 = phi i64 [ 0, %177 ], [ %196, %193 ]
  %195 = getelementptr inbounds i16, ptr %183, i64 %194
  store i16 %179, ptr %195, align 2, !tbaa !96
  %196 = add nuw nsw i64 %194, 1
  %197 = icmp eq i64 %196, %166
  br i1 %197, label %198, label %193, !llvm.loop !104

198:                                              ; preds = %193, %175
  %199 = add nuw nsw i64 %176, 1
  %200 = icmp eq i64 %199, %165
  br i1 %200, label %184, label %175, !llvm.loop !105

201:                                              ; preds = %216, %185
  %202 = phi i64 [ 0, %185 ], [ %217, %216 ]
  br i1 %188, label %203, label %216

203:                                              ; preds = %201
  %204 = load i32, ptr %189, align 4, !tbaa !67
  %205 = trunc i32 %204 to i16
  %206 = load ptr, ptr %190, align 8, !tbaa !61
  %207 = getelementptr inbounds ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !62
  %209 = getelementptr inbounds ptr, ptr %208, i64 %202
  %210 = load ptr, ptr %209, align 8, !tbaa !62
  br label %211

211:                                              ; preds = %211, %203
  %212 = phi i64 [ 0, %203 ], [ %214, %211 ]
  %213 = getelementptr inbounds i16, ptr %210, i64 %212
  store i16 %205, ptr %213, align 2, !tbaa !96
  %214 = add nuw nsw i64 %212, 1
  %215 = icmp eq i64 %214, %192
  br i1 %215, label %216, label %211, !llvm.loop !106

216:                                              ; preds = %211, %201
  %217 = add nuw nsw i64 %202, 1
  %218 = icmp eq i64 %217, %191
  br i1 %218, label %219, label %201, !llvm.loop !107

219:                                              ; preds = %216, %155, %184
  %220 = load ptr, ptr %119, align 8, !tbaa !111
  %221 = getelementptr inbounds %struct.storable_picture, ptr %220, i64 0, i32 50
  %222 = load i32, ptr %221, align 4, !tbaa !65
  %223 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 50
  store i32 %222, ptr %223, align 4, !tbaa !65
  %224 = icmp eq i32 %222, 0
  br i1 %224, label %238, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.storable_picture, ptr %220, i64 0, i32 53
  %227 = load i32, ptr %226, align 8, !tbaa !71
  %228 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 53
  store i32 %227, ptr %228, align 8, !tbaa !71
  %229 = getelementptr inbounds %struct.storable_picture, ptr %220, i64 0, i32 54
  %230 = load i32, ptr %229, align 4, !tbaa !72
  %231 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 54
  store i32 %230, ptr %231, align 4, !tbaa !72
  %232 = getelementptr inbounds %struct.storable_picture, ptr %220, i64 0, i32 51
  %233 = load i32, ptr %232, align 8, !tbaa !68
  %234 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 51
  store i32 %233, ptr %234, align 8, !tbaa !68
  %235 = getelementptr inbounds %struct.storable_picture, ptr %220, i64 0, i32 52
  %236 = load i32, ptr %235, align 4, !tbaa !69
  %237 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 52
  store i32 %236, ptr %237, align 4, !tbaa !69
  br label %238

238:                                              ; preds = %225, %219
  tail call void @dpb_combine_field_yuv(ptr noundef %0, ptr noundef nonnull %1) #14
  %239 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %240 = load i32, ptr %239, align 8, !tbaa !112
  %241 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %242 = load ptr, ptr %241, align 8, !tbaa !113
  %243 = getelementptr inbounds %struct.storable_picture, ptr %242, i64 0, i32 64
  store i32 %240, ptr %243, align 8, !tbaa !45
  tail call void @write_picture(ptr noundef %0, ptr noundef %242, i32 poison, i32 poison)
  br label %244

244:                                              ; preds = %238, %114
  store i32 3, ptr %1, align 8, !tbaa !108
  ret void
}

declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dpb_combine_field_yuv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @flush_direct_output(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  tail call void @write_unpaired_field(ptr noundef %0, ptr noundef %4, i32 poison)
  %5 = load ptr, ptr %3, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct.frame_store, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  tail call void @free_storable_picture(ptr noundef %7) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.frame_store, ptr %8, i64 0, i32 12
  store ptr null, ptr %9, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.frame_store, ptr %8, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  tail call void @free_storable_picture(ptr noundef %11) #14
  %12 = load ptr, ptr %3, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.frame_store, ptr %12, i64 0, i32 13
  store ptr null, ptr %13, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.frame_store, ptr %12, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  tail call void @free_storable_picture(ptr noundef %15) #14
  %16 = load ptr, ptr %3, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.frame_store, ptr %16, i64 0, i32 14
  store ptr null, ptr %17, align 8, !tbaa !111
  store i32 0, ptr %16, align 8, !tbaa !108
  ret void
}

declare void @free_storable_picture(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @write_stored_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  tail call void @write_unpaired_field(ptr noundef %0, ptr noundef %5, i32 poison)
  %6 = load ptr, ptr %4, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  tail call void @free_storable_picture(ptr noundef %8) #14
  %9 = load ptr, ptr %4, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.frame_store, ptr %9, i64 0, i32 12
  store ptr null, ptr %10, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.frame_store, ptr %9, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  tail call void @free_storable_picture(ptr noundef %12) #14
  %13 = load ptr, ptr %4, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.frame_store, ptr %13, i64 0, i32 13
  store ptr null, ptr %14, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.frame_store, ptr %13, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  tail call void @free_storable_picture(ptr noundef %16) #14
  %17 = load ptr, ptr %4, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 14
  store ptr null, ptr %18, align 8, !tbaa !111
  store i32 0, ptr %17, align 8, !tbaa !108
  %19 = load i32, ptr %1, align 8, !tbaa !108
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  tail call void @write_unpaired_field(ptr noundef %0, ptr noundef nonnull %1, i32 poison)
  br label %39

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !114
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 149
  store i32 1, ptr %27, align 4, !tbaa !115
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 41
  %30 = load i32, ptr %29, align 4, !tbaa !116
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 149
  %34 = load i32, ptr %33, align 4, !tbaa !115
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !113
  tail call void @write_picture(ptr noundef %0, ptr noundef %38, i32 poison, i32 poison)
  br label %39

39:                                               ; preds = %32, %36, %21
  %40 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 9
  store i32 1, ptr %40, align 4, !tbaa !117
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @direct_output(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load i32, ptr %1, align 8, !tbaa !118
  switch i32 %5, label %56 [
    i32 0, label %6
    i32 1, label %31
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  tail call void @write_unpaired_field(ptr noundef nonnull %0, ptr noundef %8, i32 poison)
  %9 = load ptr, ptr %7, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.frame_store, ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  tail call void @free_storable_picture(ptr noundef %11) #14
  %12 = load ptr, ptr %7, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.frame_store, ptr %12, i64 0, i32 12
  store ptr null, ptr %13, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.frame_store, ptr %12, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !110
  tail call void @free_storable_picture(ptr noundef %15) #14
  %16 = load ptr, ptr %7, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.frame_store, ptr %16, i64 0, i32 13
  store ptr null, ptr %17, align 8, !tbaa !110
  %18 = getelementptr inbounds %struct.frame_store, ptr %16, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  tail call void @free_storable_picture(ptr noundef %19) #14
  %20 = load ptr, ptr %7, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.frame_store, ptr %20, i64 0, i32 14
  store ptr null, ptr %21, align 8, !tbaa !111
  store i32 0, ptr %20, align 8, !tbaa !108
  tail call void @write_picture(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 poison, i32 poison)
  tail call void @calculate_frame_no(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %23 = load i32, ptr %22, align 4, !tbaa !119
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !120
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @find_snr(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %22) #14
  br label %30

30:                                               ; preds = %29, %25, %6
  tail call void @free_storable_picture(ptr noundef nonnull %1) #14
  br label %121

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %33 = load ptr, ptr %32, align 8, !tbaa !101
  %34 = load i32, ptr %33, align 8, !tbaa !108
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  tail call void @write_unpaired_field(ptr noundef nonnull %0, ptr noundef nonnull %33, i32 poison)
  %38 = load ptr, ptr %32, align 8, !tbaa !101
  %39 = getelementptr inbounds %struct.frame_store, ptr %38, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !113
  tail call void @free_storable_picture(ptr noundef %40) #14
  %41 = load ptr, ptr %32, align 8, !tbaa !101
  %42 = getelementptr inbounds %struct.frame_store, ptr %41, i64 0, i32 12
  store ptr null, ptr %42, align 8, !tbaa !113
  %43 = getelementptr inbounds %struct.frame_store, ptr %41, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !110
  tail call void @free_storable_picture(ptr noundef %44) #14
  %45 = load ptr, ptr %32, align 8, !tbaa !101
  %46 = getelementptr inbounds %struct.frame_store, ptr %45, i64 0, i32 13
  store ptr null, ptr %46, align 8, !tbaa !110
  %47 = getelementptr inbounds %struct.frame_store, ptr %45, i64 0, i32 14
  %48 = load ptr, ptr %47, align 8, !tbaa !111
  tail call void @free_storable_picture(ptr noundef %48) #14
  %49 = load ptr, ptr %32, align 8, !tbaa !101
  %50 = getelementptr inbounds %struct.frame_store, ptr %49, i64 0, i32 14
  store ptr null, ptr %50, align 8, !tbaa !111
  store i32 0, ptr %49, align 8, !tbaa !108
  br label %51

51:                                               ; preds = %37, %31
  %52 = load ptr, ptr %32, align 8, !tbaa !101
  %53 = getelementptr inbounds %struct.frame_store, ptr %52, i64 0, i32 13
  store ptr %1, ptr %53, align 8, !tbaa !110
  %54 = load i32, ptr %52, align 8, !tbaa !108
  %55 = or i32 %54, 1
  store i32 %55, ptr %52, align 8, !tbaa !108
  br label %56

56:                                               ; preds = %3, %51
  %57 = load i32, ptr %1, align 8, !tbaa !118
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %61 = load ptr, ptr %60, align 8, !tbaa !101
  %62 = load i32, ptr %61, align 8, !tbaa !108
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  tail call void @write_unpaired_field(ptr noundef nonnull %0, ptr noundef nonnull %61, i32 poison)
  %66 = load ptr, ptr %60, align 8, !tbaa !101
  %67 = getelementptr inbounds %struct.frame_store, ptr %66, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !113
  tail call void @free_storable_picture(ptr noundef %68) #14
  %69 = load ptr, ptr %60, align 8, !tbaa !101
  %70 = getelementptr inbounds %struct.frame_store, ptr %69, i64 0, i32 12
  store ptr null, ptr %70, align 8, !tbaa !113
  %71 = getelementptr inbounds %struct.frame_store, ptr %69, i64 0, i32 13
  %72 = load ptr, ptr %71, align 8, !tbaa !110
  tail call void @free_storable_picture(ptr noundef %72) #14
  %73 = load ptr, ptr %60, align 8, !tbaa !101
  %74 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 13
  store ptr null, ptr %74, align 8, !tbaa !110
  %75 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 14
  %76 = load ptr, ptr %75, align 8, !tbaa !111
  tail call void @free_storable_picture(ptr noundef %76) #14
  %77 = load ptr, ptr %60, align 8, !tbaa !101
  %78 = getelementptr inbounds %struct.frame_store, ptr %77, i64 0, i32 14
  store ptr null, ptr %78, align 8, !tbaa !111
  store i32 0, ptr %77, align 8, !tbaa !108
  br label %79

79:                                               ; preds = %65, %59
  %80 = load ptr, ptr %60, align 8, !tbaa !101
  %81 = getelementptr inbounds %struct.frame_store, ptr %80, i64 0, i32 14
  store ptr %1, ptr %81, align 8, !tbaa !111
  %82 = load i32, ptr %80, align 8, !tbaa !108
  %83 = or i32 %82, 2
  store i32 %83, ptr %80, align 8, !tbaa !108
  br label %84

84:                                               ; preds = %79, %56
  %85 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  %87 = load i32, ptr %86, align 8, !tbaa !108
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %121

89:                                               ; preds = %84
  tail call void @dpb_combine_field_yuv(ptr noundef nonnull %0, ptr noundef nonnull %86) #14
  %90 = load ptr, ptr %85, align 8, !tbaa !101
  %91 = getelementptr inbounds %struct.frame_store, ptr %90, i64 0, i32 15
  %92 = load i32, ptr %91, align 8, !tbaa !112
  %93 = getelementptr inbounds %struct.frame_store, ptr %90, i64 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !113
  %95 = getelementptr inbounds %struct.storable_picture, ptr %94, i64 0, i32 64
  store i32 %92, ptr %95, align 8, !tbaa !45
  tail call void @write_picture(ptr noundef nonnull %0, ptr noundef %94, i32 poison, i32 poison)
  tail call void @calculate_frame_no(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %96 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %97 = load i32, ptr %96, align 4, !tbaa !119
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %107, label %99

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !120
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load ptr, ptr %85, align 8, !tbaa !101
  %105 = getelementptr inbounds %struct.frame_store, ptr %104, i64 0, i32 12
  %106 = load ptr, ptr %105, align 8, !tbaa !113
  tail call void @find_snr(ptr noundef nonnull %0, ptr noundef %106, ptr noundef nonnull %96) #14
  br label %107

107:                                              ; preds = %103, %99, %89
  %108 = load ptr, ptr %85, align 8, !tbaa !101
  %109 = getelementptr inbounds %struct.frame_store, ptr %108, i64 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !113
  tail call void @free_storable_picture(ptr noundef %110) #14
  %111 = load ptr, ptr %85, align 8, !tbaa !101
  %112 = getelementptr inbounds %struct.frame_store, ptr %111, i64 0, i32 12
  store ptr null, ptr %112, align 8, !tbaa !113
  %113 = getelementptr inbounds %struct.frame_store, ptr %111, i64 0, i32 13
  %114 = load ptr, ptr %113, align 8, !tbaa !110
  tail call void @free_storable_picture(ptr noundef %114) #14
  %115 = load ptr, ptr %85, align 8, !tbaa !101
  %116 = getelementptr inbounds %struct.frame_store, ptr %115, i64 0, i32 13
  store ptr null, ptr %116, align 8, !tbaa !110
  %117 = getelementptr inbounds %struct.frame_store, ptr %115, i64 0, i32 14
  %118 = load ptr, ptr %117, align 8, !tbaa !111
  tail call void @free_storable_picture(ptr noundef %118) #14
  %119 = load ptr, ptr %85, align 8, !tbaa !101
  %120 = getelementptr inbounds %struct.frame_store, ptr %119, i64 0, i32 14
  store ptr null, ptr %120, align 8, !tbaa !111
  store i32 0, ptr %119, align 8, !tbaa !108
  br label %121

121:                                              ; preds = %84, %107, %30
  ret void
}

declare void @calculate_frame_no(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @find_snr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @tone_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @GetOneAvailDecPicFromList(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @free_mem3Dpel(ptr noundef) local_unnamed_addr #1

declare i32 @testEndian() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @img2buf_endian(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  switch i32 %4, label %113 [
    i32 1, label %31
    i32 2, label %21
    i32 4, label %11
  ]

11:                                               ; preds = %10
  %12 = sub nsw i32 %3, %8
  %13 = icmp sgt i32 %12, %7
  br i1 %13, label %14, label %114

14:                                               ; preds = %11
  %15 = sub nsw i32 %2, %6
  %16 = icmp sgt i32 %15, %5
  %17 = sext i32 %5 to i64
  %18 = sext i32 %15 to i64
  %19 = sext i32 %7 to i64
  %20 = sext i32 %12 to i64
  br label %88

21:                                               ; preds = %10
  %22 = sub nsw i32 %3, %8
  %23 = icmp sgt i32 %22, %7
  br i1 %23, label %24, label %114

24:                                               ; preds = %21
  %25 = sub nsw i32 %2, %6
  %26 = icmp sgt i32 %25, %5
  %27 = sext i32 %5 to i64
  %28 = sext i32 %25 to i64
  %29 = sext i32 %7 to i64
  %30 = sext i32 %22 to i64
  br label %64

31:                                               ; preds = %10
  %32 = sub nsw i32 %3, %8
  %33 = icmp sgt i32 %32, %7
  br i1 %33, label %34, label %114

34:                                               ; preds = %31
  %35 = sub nsw i32 %2, %6
  %36 = icmp sgt i32 %35, %5
  %37 = sext i32 %5 to i64
  %38 = sext i32 %35 to i64
  %39 = sext i32 %7 to i64
  %40 = sext i32 %32 to i64
  br label %41

41:                                               ; preds = %34, %61
  %42 = phi i64 [ %39, %34 ], [ %62, %61 ]
  br i1 %36, label %43, label %61

43:                                               ; preds = %41
  %44 = getelementptr inbounds ptr, ptr %0, i64 %42
  %45 = trunc i64 %42 to i32
  %46 = sub i32 %45, %7
  %47 = mul i32 %46, %9
  %48 = sub i32 %47, %5
  br label %49

49:                                               ; preds = %43, %49
  %50 = phi i64 [ %37, %43 ], [ %59, %49 ]
  %51 = load ptr, ptr %44, align 8, !tbaa !62
  %52 = getelementptr inbounds i16, ptr %51, i64 %50
  %53 = load i16, ptr %52, align 2, !tbaa !96
  %54 = trunc i16 %53 to i8
  %55 = trunc i64 %50 to i32
  %56 = add i32 %48, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  store i8 %54, ptr %58, align 1, !tbaa !93
  %59 = add nsw i64 %50, 1
  %60 = icmp slt i64 %59, %38
  br i1 %60, label %49, label %61, !llvm.loop !121

61:                                               ; preds = %49, %41
  %62 = add nsw i64 %42, 1
  %63 = icmp slt i64 %62, %40
  br i1 %63, label %41, label %114, !llvm.loop !122

64:                                               ; preds = %24, %85
  %65 = phi i64 [ %29, %24 ], [ %86, %85 ]
  br i1 %26, label %66, label %85

66:                                               ; preds = %64
  %67 = getelementptr inbounds ptr, ptr %0, i64 %65
  %68 = trunc i64 %65 to i32
  %69 = sub i32 %68, %7
  %70 = mul i32 %69, %9
  %71 = sub i32 %70, %5
  br label %72

72:                                               ; preds = %66, %72
  %73 = phi i64 [ %27, %66 ], [ %83, %72 ]
  %74 = load ptr, ptr %67, align 8, !tbaa !62
  %75 = getelementptr inbounds i16, ptr %74, i64 %73
  %76 = load i16, ptr %75, align 2, !tbaa !96
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %78 = trunc i64 %73 to i32
  %79 = add i32 %71, %78
  %80 = shl nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %1, i64 %81
  store i16 %77, ptr %82, align 1
  %83 = add nsw i64 %73, 1
  %84 = icmp slt i64 %83, %28
  br i1 %84, label %72, label %85, !llvm.loop !123

85:                                               ; preds = %72, %64
  %86 = add nsw i64 %65, 1
  %87 = icmp slt i64 %86, %30
  br i1 %87, label %64, label %114, !llvm.loop !124

88:                                               ; preds = %14, %110
  %89 = phi i64 [ %19, %14 ], [ %111, %110 ]
  br i1 %16, label %90, label %110

90:                                               ; preds = %88
  %91 = getelementptr inbounds ptr, ptr %0, i64 %89
  %92 = trunc i64 %89 to i32
  %93 = sub i32 %92, %7
  %94 = mul i32 %93, %9
  %95 = sub i32 %94, %5
  br label %96

96:                                               ; preds = %90, %96
  %97 = phi i64 [ %17, %90 ], [ %108, %96 ]
  %98 = load ptr, ptr %91, align 8, !tbaa !62
  %99 = getelementptr inbounds i16, ptr %98, i64 %97
  %100 = load i16, ptr %99, align 2, !tbaa !96
  %101 = zext i16 %100 to i32
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %103 = trunc i64 %97 to i32
  %104 = add i32 %95, %103
  %105 = shl nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %1, i64 %106
  store i32 %102, ptr %107, align 1
  %108 = add nsw i64 %97, 1
  %109 = icmp slt i64 %108, %18
  br i1 %109, label %96, label %110, !llvm.loop !125

110:                                              ; preds = %96, %88
  %111 = add nsw i64 %89, 1
  %112 = icmp slt i64 %111, %20
  br i1 %112, label %88, label %114, !llvm.loop !126

113:                                              ; preds = %10
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #14
  br label %114

114:                                              ; preds = %110, %85, %61, %11, %21, %31, %113
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @img2buf_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #2 {
  %11 = add i32 %5, %6
  %12 = sub i32 %2, %11
  %13 = add i32 %7, %8
  %14 = sub i32 %3, %13
  %15 = icmp sgt i32 %4, 2
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = mul nsw i32 %12, %4
  %20 = sext i32 %19 to i64
  %21 = sext i32 %9 to i64
  %22 = zext nneg i32 %14 to i64
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %27, %23 ]
  %25 = mul nsw i64 %24, %21
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  tail call void @llvm.memset.p0.i64(ptr align 1 %26, i8 0, i64 %20, i1 false)
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %22
  br i1 %28, label %29, label %23, !llvm.loop !127

29:                                               ; preds = %23, %16, %10
  %30 = phi i32 [ %4, %10 ], [ 2, %16 ], [ 2, %23 ]
  %31 = or i32 %6, %5
  %32 = or i32 %31, %7
  %33 = or i32 %32, %8
  %34 = icmp ne i32 %33, 0
  %35 = icmp ne i32 %30, 1
  %36 = or i1 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = icmp sgt i32 %3, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %37
  %40 = icmp sgt i32 %2, 0
  %41 = sext i32 %9 to i64
  %42 = zext nneg i32 %3 to i64
  br label %77

43:                                               ; preds = %29
  %44 = sub nsw i32 %3, %8
  %45 = icmp sgt i32 %44, %7
  br i1 %45, label %46, label %97

46:                                               ; preds = %43
  %47 = sub nsw i32 %2, %6
  %48 = icmp sgt i32 %47, %5
  %49 = sext i32 %30 to i64
  %50 = sext i32 %5 to i64
  %51 = sext i32 %5 to i64
  %52 = sext i32 %4 to i64
  %53 = sext i32 %47 to i64
  %54 = sext i32 %7 to i64
  %55 = sext i32 %7 to i64
  %56 = sext i32 %9 to i64
  %57 = sext i32 %44 to i64
  br label %58

58:                                               ; preds = %46, %74
  %59 = phi i64 [ %54, %46 ], [ %75, %74 ]
  %60 = sub nsw i64 %59, %55
  %61 = mul nsw i64 %60, %56
  br i1 %48, label %62, label %74

62:                                               ; preds = %58
  %63 = getelementptr inbounds ptr, ptr %0, i64 %59
  %64 = getelementptr i8, ptr %1, i64 %61
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi i64 [ %50, %62 ], [ %72, %65 ]
  %67 = sub nsw i64 %66, %51
  %68 = mul nsw i64 %67, %52
  %69 = getelementptr i8, ptr %64, i64 %68
  %70 = load ptr, ptr %63, align 8, !tbaa !62
  %71 = getelementptr inbounds i16, ptr %70, i64 %66
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 2 %71, i64 %49, i1 false)
  %72 = add nsw i64 %66, 1
  %73 = icmp slt i64 %72, %53
  br i1 %73, label %65, label %74, !llvm.loop !128

74:                                               ; preds = %65, %58
  %75 = add nsw i64 %59, 1
  %76 = icmp slt i64 %75, %57
  br i1 %76, label %58, label %97, !llvm.loop !129

77:                                               ; preds = %39, %94
  %78 = phi i64 [ 0, %39 ], [ %95, %94 ]
  br i1 %40, label %79, label %94

79:                                               ; preds = %77
  %80 = mul nsw i64 %78, %41
  %81 = getelementptr inbounds i8, ptr %1, i64 %80
  %82 = getelementptr inbounds ptr, ptr %0, i64 %78
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  br label %84

84:                                               ; preds = %79, %84
  %85 = phi ptr [ %91, %84 ], [ %81, %79 ]
  %86 = phi ptr [ %88, %84 ], [ %83, %79 ]
  %87 = phi i32 [ %92, %84 ], [ 0, %79 ]
  %88 = getelementptr inbounds i16, ptr %86, i64 1
  %89 = load i16, ptr %86, align 2, !tbaa !96
  %90 = trunc i16 %89 to i8
  %91 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 %90, ptr %85, align 1, !tbaa !93
  %92 = add nuw nsw i32 %87, 1
  %93 = icmp eq i32 %92, %2
  br i1 %93, label %94, label %84, !llvm.loop !130

94:                                               ; preds = %84, %77
  %95 = add nuw nsw i64 %78, 1
  %96 = icmp eq i64 %95, %42
  br i1 %96, label %97, label %77, !llvm.loop !131

97:                                               ; preds = %94, %74, %37, %43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!46, !39, i64 344}
!46 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !40, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !47, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!47 = !{!"pic_motion_params_old", !36, i64 0}
!48 = !{!35, !36, i64 16}
!49 = !{!50, !39, i64 3216}
!50 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !39, i64 2060, !39, i64 2064, !39, i64 2068, !39, i64 2072, !39, i64 2076, !39, i64 2080, !39, i64 2084, !39, i64 2088, !39, i64 2092, !37, i64 2096, !39, i64 3120, !39, i64 3124, !39, i64 3128, !39, i64 3132, !39, i64 3136, !39, i64 3140, !39, i64 3144, !39, i64 3148, !39, i64 3152, !39, i64 3156, !39, i64 3160, !39, i64 3164, !39, i64 3168, !51, i64 3172, !39, i64 4120, !39, i64 4124}
!51 = !{!"", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !52, i64 80, !39, i64 492, !52, i64 496, !39, i64 908, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944}
!52 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408}
!53 = !{!46, !39, i64 52}
!54 = !{!35, !39, i64 849036}
!55 = !{!46, !39, i64 324}
!56 = !{!46, !39, i64 332}
!57 = !{!46, !36, i64 128}
!58 = !{!46, !36, i64 336}
!59 = !{!46, !39, i64 64}
!60 = !{!46, !39, i64 68}
!61 = !{!46, !36, i64 136}
!62 = !{!36, !36, i64 0}
!63 = !{!46, !39, i64 72}
!64 = !{!46, !39, i64 76}
!65 = !{!46, !39, i64 276}
!66 = !{!46, !39, i64 268}
!67 = !{!39, !39, i64 0}
!68 = !{!46, !39, i64 280}
!69 = !{!46, !39, i64 284}
!70 = !{!46, !39, i64 272}
!71 = !{!46, !39, i64 288}
!72 = !{!46, !39, i64 292}
!73 = !{!35, !36, i64 856808}
!74 = !{!35, !36, i64 856816}
!75 = !{!76, !36, i64 24}
!76 = !{!"decodedpic_t", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !36, i64 72}
!77 = !{!76, !36, i64 32}
!78 = !{!76, !36, i64 40}
!79 = !{!76, !39, i64 12}
!80 = !{!76, !39, i64 16}
!81 = !{!76, !39, i64 20}
!82 = !{!76, !39, i64 48}
!83 = !{!76, !39, i64 52}
!84 = !{!76, !39, i64 56}
!85 = !{!76, !39, i64 60}
!86 = !{!76, !39, i64 0}
!87 = !{!76, !39, i64 4}
!88 = !{!46, !39, i64 16}
!89 = !{!76, !39, i64 8}
!90 = !{!91, !39, i64 3976}
!91 = !{!"inp_par", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !42, i64 792, !42, i64 928, !39, i64 1064, !39, i64 1068, !92, i64 1072, !92, i64 2040, !92, i64 3008, !39, i64 3976, !39, i64 3980, !39, i64 3984, !39, i64 3988, !39, i64 3992, !39, i64 3996, !39, i64 4000, !39, i64 4004, !39, i64 4008, !39, i64 4012}
!92 = !{!"video_data_file", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !42, i64 776, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944, !39, i64 948, !39, i64 952, !36, i64 960}
!93 = !{!37, !37, i64 0}
!94 = !{!91, !39, i64 780}
!95 = !{!35, !40, i64 849040}
!96 = !{!40, !40, i64 0}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !98, !99}
!101 = !{!35, !36, i64 856624}
!102 = distinct !{!102, !98, !99}
!103 = distinct !{!103, !98, !99}
!104 = distinct !{!104, !98, !99}
!105 = distinct !{!105, !98, !99}
!106 = distinct !{!106, !98, !99}
!107 = distinct !{!107, !98, !99}
!108 = !{!109, !39, i64 0}
!109 = !{!"frame_store", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !37, i64 76, !37, i64 84}
!110 = !{!109, !36, i64 56}
!111 = !{!109, !36, i64 64}
!112 = !{!109, !39, i64 72}
!113 = !{!109, !36, i64 48}
!114 = !{!109, !39, i64 24}
!115 = !{!35, !39, i64 856644}
!116 = !{!35, !39, i64 848948}
!117 = !{!109, !39, i64 36}
!118 = !{!46, !39, i64 0}
!119 = !{!35, !39, i64 855988}
!120 = !{!91, !39, i64 784}
!121 = distinct !{!121, !98, !99}
!122 = distinct !{!122, !98, !99}
!123 = distinct !{!123, !98, !99}
!124 = distinct !{!124, !98, !99}
!125 = distinct !{!125, !98, !99}
!126 = distinct !{!126, !98, !99}
!127 = distinct !{!127, !98, !99}
!128 = distinct !{!128, !98, !99}
!129 = distinct !{!129, !98, !99}
!130 = distinct !{!130, !98, !99}
!131 = distinct !{!131, !98, !99}
