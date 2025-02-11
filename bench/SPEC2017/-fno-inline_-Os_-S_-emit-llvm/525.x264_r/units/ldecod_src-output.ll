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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @write_picture(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  tail call fastcc void @write_out_picture(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_out_picture(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [255 x i8], align 16
  %4 = alloca [255 x i8], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %4) #15
  %6 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %7 = load i32, ptr %6, align 8, !tbaa !16
  %8 = tail call i32 @GetVOIdx(ptr noundef nonnull %0, i32 noundef %7) #16
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 63
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %11, i64 0, i32 39, i32 12
  %13 = load i32, ptr %12, align 4, !tbaa !20
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %580

18:                                               ; preds = %2
  %19 = load i32, ptr %9, align 4, !tbaa !25
  %20 = add nsw i32 %19, 7
  %21 = ashr i32 %20, 3
  %22 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 60
  %23 = load i32, ptr %22, align 4, !tbaa !26
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i1 %14, i1 false
  br i1 %25, label %26, label %53

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 62
  %28 = load i32, ptr %27, align 4, !tbaa !27
  %29 = icmp sgt i32 %28, 8
  %30 = select i1 %29, i32 2, i32 1
  %31 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 63
  %34 = load ptr, ptr %33, align 8, !tbaa !29
  %35 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %38 = load i32, ptr %37, align 4, !tbaa !31
  tail call void @tone_map(ptr noundef %32, ptr noundef %34, i32 noundef %36, i32 noundef %38) #16
  %39 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %40 = load ptr, ptr %39, align 8, !tbaa !32
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  %42 = load ptr, ptr %33, align 8, !tbaa !29
  %43 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %44 = load i32, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %46 = load i32, ptr %45, align 4, !tbaa !35
  tail call void @tone_map(ptr noundef %41, ptr noundef %42, i32 noundef %44, i32 noundef %46) #16
  %47 = load ptr, ptr %39, align 8, !tbaa !32
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !33
  %50 = load ptr, ptr %33, align 8, !tbaa !29
  %51 = load i32, ptr %43, align 8, !tbaa !34
  %52 = load i32, ptr %45, align 4, !tbaa !35
  tail call void @tone_map(ptr noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %52) #16
  br label %53

53:                                               ; preds = %26, %18
  %54 = phi i32 [ %30, %26 ], [ %21, %18 ]
  %55 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 50
  %56 = load i32, ptr %55, align 4, !tbaa !36
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 51
  %60 = load i32, ptr %59, align 8, !tbaa !37
  %61 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  %62 = load i32, ptr %61, align 4, !tbaa !38
  %63 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 49
  %64 = load i32, ptr %63, align 8, !tbaa !39
  %65 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 53
  %66 = load i32, ptr %65, align 8, !tbaa !40
  %67 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  %68 = load i32, ptr %67, align 4, !tbaa !41
  br label %93

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %71 = load i32, ptr %70, align 4, !tbaa !42
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !43
  %75 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 51
  %76 = load i32, ptr %75, align 8, !tbaa !37
  %77 = mul nsw i32 %76, %74
  %78 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  %79 = load i32, ptr %78, align 4, !tbaa !38
  %80 = mul nsw i32 %79, %74
  %81 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %72
  %82 = load i32, ptr %81, align 4, !tbaa !43
  %83 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 49
  %84 = load i32, ptr %83, align 8, !tbaa !39
  %85 = sub nsw i32 2, %84
  %86 = mul nsw i32 %85, %82
  %87 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 53
  %88 = load i32, ptr %87, align 8, !tbaa !40
  %89 = mul nsw i32 %86, %88
  %90 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  %91 = load i32, ptr %90, align 4, !tbaa !41
  %92 = mul nsw i32 %86, %91
  br label %93

93:                                               ; preds = %58, %69
  %94 = phi i32 [ %91, %69 ], [ %68, %58 ]
  %95 = phi i32 [ %88, %69 ], [ %66, %58 ]
  %96 = phi i32 [ %84, %69 ], [ %64, %58 ]
  %97 = phi i32 [ %79, %69 ], [ %62, %58 ]
  %98 = phi i32 [ %76, %69 ], [ %60, %58 ]
  %99 = phi i32 [ %92, %69 ], [ 0, %58 ]
  %100 = phi i32 [ %89, %69 ], [ 0, %58 ]
  %101 = phi i32 [ %80, %69 ], [ 0, %58 ]
  %102 = phi i32 [ %77, %69 ], [ 0, %58 ]
  %103 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %104 = load i32, ptr %103, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 51
  %106 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  %107 = add i32 %98, %97
  %108 = sub i32 %104, %107
  %109 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %110 = load i32, ptr %109, align 4, !tbaa !35
  %111 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 49
  %112 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 53
  %113 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  %114 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %115 = load i32, ptr %114, align 8, !tbaa !30
  %116 = add i32 %102, %101
  %117 = sub i32 %115, %116
  %118 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %119 = load i32, ptr %118, align 4, !tbaa !31
  tail call fastcc void @initOutput(ptr noundef nonnull %0) #14
  %120 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 169
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  %122 = tail call ptr @GetOneAvailDecPicFromList(ptr noundef %121, i32 noundef 0) #16
  %123 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %161

126:                                              ; preds = %93
  %127 = add i32 %100, %99
  %128 = sub i32 %119, %127
  %129 = mul nsw i32 %128, %117
  %130 = add i32 %96, -2
  %131 = add i32 %94, %95
  %132 = mul i32 %131, %130
  %133 = add i32 %132, %110
  %134 = shl i32 %108, 1
  %135 = mul i32 %134, %133
  %136 = add nsw i32 %129, %135
  %137 = mul nsw i32 %136, %54
  %138 = mul nsw i32 %129, %54
  %139 = sext i32 %137 to i64
  %140 = tail call noalias ptr @malloc(i64 noundef %139) #17
  store ptr %140, ptr %123, align 8, !tbaa !45
  %141 = sext i32 %138 to i64
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  %143 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 7
  store ptr %142, ptr %143, align 8, !tbaa !47
  %144 = mul i32 %135, %54
  %145 = ashr exact i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %142, i64 %146
  %148 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 8
  store ptr %147, ptr %148, align 8, !tbaa !48
  %149 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %150 = load i32, ptr %149, align 4, !tbaa !42
  %151 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 3
  store i32 %150, ptr %151, align 4, !tbaa !49
  %152 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 4
  store i32 0, ptr %152, align 8, !tbaa !50
  %153 = load i32, ptr %9, align 4, !tbaa !25
  %154 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 5
  store i32 %153, ptr %154, align 4, !tbaa !51
  %155 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 9
  store i32 %117, ptr %155, align 8, !tbaa !52
  %156 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 10
  store i32 %128, ptr %156, align 4, !tbaa !53
  %157 = mul nsw i32 %117, %54
  %158 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 11
  store i32 %157, ptr %158, align 8, !tbaa !54
  %159 = mul nsw i32 %108, %54
  %160 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 12
  store i32 %159, ptr %160, align 4, !tbaa !55
  br label %161

161:                                              ; preds = %126, %93
  %162 = phi ptr [ %140, %126 ], [ %124, %93 ]
  store i32 1, ptr %122, align 8, !tbaa !56
  %163 = load i32, ptr %6, align 8, !tbaa !16
  %164 = tail call i32 @llvm.smax.i32(i32 %163, i32 -1)
  %165 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 1
  store i32 %164, ptr %165, align 4, !tbaa !57
  %166 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 4
  %167 = load i32, ptr %166, align 8, !tbaa !58
  %168 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 2
  store i32 %167, ptr %168, align 8, !tbaa !59
  %169 = icmp eq ptr %162, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  %171 = load i32, ptr %6, align 8, !tbaa !16
  br label %172

172:                                              ; preds = %170, %161
  %173 = phi i32 [ %171, %170 ], [ %163, %161 ]
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %209

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.inp_par, ptr %5, i64 0, i32 16
  %177 = load i32, ptr %176, align 8, !tbaa !60
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %209

179:                                              ; preds = %175
  %180 = sext i32 %8 to i64
  %181 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 122, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !43
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %227

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.inp_par, ptr %5, i64 0, i32 1
  %186 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(3) @.str.1) #18
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %227, label %188

188:                                              ; preds = %184
  %189 = load i8, ptr %185, align 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %227, label %191

191:                                              ; preds = %188
  %192 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %185) #16
  %193 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #18
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  store i8 0, ptr %193, align 1, !tbaa !63
  br label %196

196:                                              ; preds = %195, %191
  %197 = load i32, ptr %4, align 16
  %198 = icmp eq i32 %197, 7107950
  br i1 %198, label %208, label %199

199:                                              ; preds = %196
  %200 = load i32, ptr %6, align 8, !tbaa !16
  %201 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %4, i32 noundef %200) #16
  %202 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 577, i32 noundef 384) #16
  store i32 %202, ptr %181, align 4, !tbaa !43
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %227

204:                                              ; preds = %199
  %205 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #16
  %206 = load ptr, ptr @stderr, align 8, !tbaa !33
  %207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #19
  call void @exit(i32 noundef 500) #20
  unreachable

208:                                              ; preds = %196
  store i32 -1, ptr %181, align 4, !tbaa !43
  br label %227

209:                                              ; preds = %175, %172
  %210 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 122
  %211 = load i32, ptr %210, align 4, !tbaa !43
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.inp_par, ptr %5, i64 0, i32 1
  %215 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %214, ptr noundef nonnull dereferenceable(3) @.str.1) #18
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %213
  %218 = load i8, ptr %214, align 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %217
  %221 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %214, i32 noundef 577, i32 noundef 384) #16
  store i32 %221, ptr %210, align 4, !tbaa !43
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %214) #16
  %225 = load ptr, ptr @stderr, align 8, !tbaa !33
  %226 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #19
  tail call void @exit(i32 noundef 500) #20
  unreachable

227:                                              ; preds = %213, %217, %184, %188, %209, %220, %179, %199, %208
  %228 = phi i32 [ %211, %209 ], [ %221, %220 ], [ %182, %179 ], [ %202, %199 ], [ -1, %208 ], [ -1, %188 ], [ -1, %184 ], [ -1, %217 ], [ -1, %213 ]
  br i1 %14, label %229, label %304

229:                                              ; preds = %227
  %230 = load i32, ptr %114, align 8, !tbaa !30
  %231 = load i32, ptr %118, align 4, !tbaa !31
  %232 = mul i32 %230, %54
  %233 = mul i32 %232, %231
  %234 = sext i32 %233 to i64
  %235 = call noalias ptr @malloc(i64 noundef %234) #17
  %236 = load i32, ptr %105, align 8, !tbaa !37
  %237 = load i32, ptr %106, align 4, !tbaa !38
  %238 = load i32, ptr %111, align 8, !tbaa !39
  %239 = sub nsw i32 2, %238
  %240 = load i32, ptr %112, align 8, !tbaa !40
  %241 = mul nsw i32 %239, %240
  %242 = load i32, ptr %113, align 4, !tbaa !41
  %243 = mul nsw i32 %242, %239
  %244 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 168
  %245 = load ptr, ptr %244, align 8, !tbaa !64
  %246 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %247 = load ptr, ptr %246, align 8, !tbaa !32
  %248 = getelementptr inbounds ptr, ptr %247, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !33
  %250 = load i32, ptr %103, align 8, !tbaa !34
  %251 = load i32, ptr %109, align 4, !tbaa !35
  %252 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 11
  %253 = load i32, ptr %252, align 8, !tbaa !54
  call void %245(ptr noundef %249, ptr noundef %235, i32 noundef %250, i32 noundef %251, i32 noundef %54, i32 noundef %236, i32 noundef %237, i32 noundef %241, i32 noundef %243, i32 noundef %253) #16
  %254 = icmp sgt i32 %228, -1
  br i1 %254, label %255, label %275

255:                                              ; preds = %229
  %256 = load i32, ptr %109, align 4, !tbaa !35
  %257 = add i32 %243, %241
  %258 = sub i32 %256, %257
  %259 = load i32, ptr %103, align 8, !tbaa !34
  %260 = add i32 %237, %236
  %261 = sub i32 %259, %260
  %262 = mul i32 %258, %54
  %263 = mul i32 %262, %261
  %264 = sext i32 %263 to i64
  %265 = call i64 @write(i32 noundef %228, ptr noundef %235, i64 noundef %264) #16
  %266 = trunc i64 %265 to i32
  %267 = load i32, ptr %109, align 4, !tbaa !35
  %268 = sub i32 %267, %257
  %269 = load i32, ptr %103, align 8, !tbaa !34
  %270 = sub i32 %269, %260
  %271 = mul i32 %268, %54
  %272 = mul i32 %271, %270
  %273 = icmp eq i32 %272, %266
  br i1 %273, label %275, label %274

274:                                              ; preds = %255
  call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #16
  br label %275

275:                                              ; preds = %255, %274, %229
  %276 = load i32, ptr %55, align 4, !tbaa !36
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %297, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %280 = load i32, ptr %279, align 4, !tbaa !42
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !43
  %284 = load i32, ptr %105, align 8, !tbaa !37
  %285 = mul nsw i32 %284, %283
  %286 = load i32, ptr %106, align 4, !tbaa !38
  %287 = mul nsw i32 %286, %283
  %288 = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %281
  %289 = load i32, ptr %288, align 4, !tbaa !43
  %290 = load i32, ptr %111, align 8, !tbaa !39
  %291 = sub nsw i32 2, %290
  %292 = mul nsw i32 %291, %289
  %293 = load i32, ptr %112, align 8, !tbaa !40
  %294 = mul nsw i32 %292, %293
  %295 = load i32, ptr %113, align 4, !tbaa !41
  %296 = mul nsw i32 %292, %295
  br label %297

297:                                              ; preds = %275, %278
  %298 = phi i32 [ %296, %278 ], [ 0, %275 ]
  %299 = phi i32 [ %294, %278 ], [ 0, %275 ]
  %300 = phi i32 [ %287, %278 ], [ 0, %275 ]
  %301 = phi i32 [ %285, %278 ], [ 0, %275 ]
  %302 = icmp eq ptr %235, null
  br i1 %302, label %304, label %303

303:                                              ; preds = %297
  call void @free(ptr noundef nonnull %235) #16
  br label %304

304:                                              ; preds = %297, %303, %227
  %305 = phi i32 [ %298, %303 ], [ %298, %297 ], [ %99, %227 ]
  %306 = phi i32 [ %299, %303 ], [ %299, %297 ], [ %100, %227 ]
  %307 = phi i32 [ %300, %303 ], [ %300, %297 ], [ %101, %227 ]
  %308 = phi i32 [ %301, %303 ], [ %301, %297 ], [ %102, %227 ]
  %309 = load i32, ptr %122, align 8, !tbaa !56
  %310 = icmp eq i32 %309, 1
  %311 = load ptr, ptr %123, align 8, !tbaa !45
  %312 = mul nsw i32 %117, %54
  %313 = select i1 %310, i32 0, i32 %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, ptr %311, i64 %314
  %316 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 168
  %317 = load ptr, ptr %316, align 8, !tbaa !64
  %318 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %319 = load ptr, ptr %318, align 8, !tbaa !28
  %320 = load i32, ptr %114, align 8, !tbaa !30
  %321 = load i32, ptr %118, align 4, !tbaa !31
  %322 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 11
  %323 = load i32, ptr %322, align 8, !tbaa !54
  call void %317(ptr noundef %319, ptr noundef %315, i32 noundef %320, i32 noundef %321, i32 noundef %54, i32 noundef %308, i32 noundef %307, i32 noundef %306, i32 noundef %305, i32 noundef %323) #16
  %324 = icmp sgt i32 %228, -1
  br i1 %324, label %325, label %345

325:                                              ; preds = %304
  %326 = load i32, ptr %118, align 4, !tbaa !31
  %327 = add i32 %306, %305
  %328 = sub i32 %326, %327
  %329 = load i32, ptr %114, align 8, !tbaa !30
  %330 = add i32 %308, %307
  %331 = sub i32 %329, %330
  %332 = mul i32 %328, %54
  %333 = mul i32 %332, %331
  %334 = sext i32 %333 to i64
  %335 = call i64 @write(i32 noundef %228, ptr noundef %315, i64 noundef %334) #16
  %336 = trunc i64 %335 to i32
  %337 = load i32, ptr %118, align 4, !tbaa !31
  %338 = sub i32 %337, %327
  %339 = load i32, ptr %114, align 8, !tbaa !30
  %340 = sub i32 %339, %330
  %341 = mul i32 %338, %54
  %342 = mul i32 %341, %340
  %343 = icmp eq i32 %342, %336
  br i1 %343, label %345, label %344

344:                                              ; preds = %325
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #16
  br label %345

345:                                              ; preds = %325, %344, %304
  %346 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %347 = load i32, ptr %346, align 4, !tbaa !42
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %431, label %349

349:                                              ; preds = %345
  %350 = load i32, ptr %105, align 8, !tbaa !37
  %351 = load i32, ptr %106, align 4, !tbaa !38
  %352 = load i32, ptr %111, align 8, !tbaa !39
  %353 = sub nsw i32 2, %352
  %354 = load i32, ptr %112, align 8, !tbaa !40
  %355 = mul nsw i32 %353, %354
  %356 = load i32, ptr %113, align 4, !tbaa !41
  %357 = mul nsw i32 %356, %353
  %358 = load i32, ptr %122, align 8, !tbaa !56
  %359 = icmp eq i32 %358, 1
  %360 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 7
  %361 = load ptr, ptr %360, align 8, !tbaa !47
  %362 = mul nsw i32 %108, %54
  %363 = select i1 %359, i32 0, i32 %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, ptr %361, i64 %364
  %366 = load ptr, ptr %316, align 8, !tbaa !64
  %367 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %368 = load ptr, ptr %367, align 8, !tbaa !32
  %369 = load ptr, ptr %368, align 8, !tbaa !33
  %370 = load i32, ptr %103, align 8, !tbaa !34
  %371 = load i32, ptr %109, align 4, !tbaa !35
  %372 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 12
  %373 = load i32, ptr %372, align 4, !tbaa !55
  call void %366(ptr noundef %369, ptr noundef %365, i32 noundef %370, i32 noundef %371, i32 noundef %54, i32 noundef %350, i32 noundef %351, i32 noundef %355, i32 noundef %357, i32 noundef %373) #16
  br i1 %324, label %374, label %394

374:                                              ; preds = %349
  %375 = load i32, ptr %109, align 4, !tbaa !35
  %376 = add i32 %357, %355
  %377 = sub i32 %375, %376
  %378 = load i32, ptr %103, align 8, !tbaa !34
  %379 = add i32 %351, %350
  %380 = sub i32 %378, %379
  %381 = mul i32 %377, %54
  %382 = mul i32 %381, %380
  %383 = sext i32 %382 to i64
  %384 = call i64 @write(i32 noundef %228, ptr noundef %365, i64 noundef %383) #16
  %385 = trunc i64 %384 to i32
  %386 = load i32, ptr %109, align 4, !tbaa !35
  %387 = sub i32 %386, %376
  %388 = load i32, ptr %103, align 8, !tbaa !34
  %389 = sub i32 %388, %379
  %390 = mul i32 %387, %54
  %391 = mul i32 %390, %389
  %392 = icmp eq i32 %391, %385
  br i1 %392, label %394, label %393

393:                                              ; preds = %374
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #16
  br label %394

394:                                              ; preds = %374, %393, %349
  br i1 %14, label %580, label %395

395:                                              ; preds = %394
  %396 = load i32, ptr %122, align 8, !tbaa !56
  %397 = icmp eq i32 %396, 1
  %398 = getelementptr inbounds %struct.decodedpic_t, ptr %122, i64 0, i32 8
  %399 = load ptr, ptr %398, align 8, !tbaa !48
  %400 = mul nsw i32 %108, %54
  %401 = select i1 %397, i32 0, i32 %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, ptr %399, i64 %402
  %404 = load ptr, ptr %316, align 8, !tbaa !64
  %405 = load ptr, ptr %367, align 8, !tbaa !32
  %406 = getelementptr inbounds ptr, ptr %405, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !33
  %408 = load i32, ptr %103, align 8, !tbaa !34
  %409 = load i32, ptr %109, align 4, !tbaa !35
  %410 = load i32, ptr %372, align 4, !tbaa !55
  call void %404(ptr noundef %407, ptr noundef %403, i32 noundef %408, i32 noundef %409, i32 noundef %54, i32 noundef %350, i32 noundef %351, i32 noundef %355, i32 noundef %357, i32 noundef %410) #16
  br i1 %324, label %411, label %580

411:                                              ; preds = %395
  %412 = load i32, ptr %109, align 4, !tbaa !35
  %413 = add i32 %357, %355
  %414 = sub i32 %412, %413
  %415 = load i32, ptr %103, align 8, !tbaa !34
  %416 = add i32 %351, %350
  %417 = sub i32 %415, %416
  %418 = mul i32 %414, %54
  %419 = mul i32 %418, %417
  %420 = sext i32 %419 to i64
  %421 = call i64 @write(i32 noundef %228, ptr noundef %403, i64 noundef %420) #16
  %422 = trunc i64 %421 to i32
  %423 = load i32, ptr %109, align 4, !tbaa !35
  %424 = sub i32 %423, %413
  %425 = load i32, ptr %103, align 8, !tbaa !34
  %426 = sub i32 %425, %416
  %427 = mul i32 %424, %54
  %428 = mul i32 %427, %426
  %429 = icmp eq i32 %428, %422
  br i1 %429, label %580, label %430

430:                                              ; preds = %411
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #16
  br label %580

431:                                              ; preds = %345
  %432 = getelementptr inbounds %struct.inp_par, ptr %5, i64 0, i32 6
  %433 = load i32, ptr %432, align 4, !tbaa !65
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %580, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 64
  %437 = load i16, ptr %436, align 8, !tbaa !66
  %438 = sext i16 %437 to i32
  %439 = add nsw i32 %438, -1
  %440 = shl nuw i32 1, %439
  %441 = trunc i32 %440 to i16
  %442 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %443 = load i32, ptr %118, align 4, !tbaa !31
  %444 = sdiv i32 %443, 2
  %445 = load i32, ptr %114, align 8, !tbaa !30
  %446 = sdiv i32 %445, 2
  %447 = call i32 @get_mem3Dpel(ptr noundef nonnull %442, i32 noundef 1, i32 noundef %444, i32 noundef %446) #16
  %448 = load i32, ptr %118, align 4, !tbaa !31
  %449 = sdiv i32 %448, 2
  %450 = icmp sgt i32 %448, 1
  %451 = load i32, ptr %114, align 8, !tbaa !30
  %452 = sdiv i32 %451, 2
  br i1 %450, label %453, label %518

453:                                              ; preds = %435
  %454 = icmp sgt i32 %451, 1
  %455 = zext nneg i32 %449 to i64
  %456 = zext i32 %452 to i64
  %457 = add nuw nsw i64 %456, 7
  %458 = and i64 %457, 2147483640
  %459 = add nsw i64 %456, -1
  %460 = insertelement <8 x i64> poison, i64 %459, i64 0
  %461 = shufflevector <8 x i64> %460, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %462

462:                                              ; preds = %453, %515
  %463 = phi i64 [ 0, %453 ], [ %516, %515 ]
  br i1 %454, label %464, label %515

464:                                              ; preds = %462
  %465 = load ptr, ptr %442, align 8, !tbaa !32
  %466 = load ptr, ptr %465, align 8, !tbaa !33
  %467 = getelementptr inbounds ptr, ptr %466, i64 %463
  %468 = load ptr, ptr %467, align 8, !tbaa !33
  br label %469

469:                                              ; preds = %511, %464
  %470 = phi i64 [ 0, %464 ], [ %512, %511 ]
  %471 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %464 ], [ %513, %511 ]
  %472 = icmp ule <8 x i64> %471, %461
  %473 = extractelement <8 x i1> %472, i64 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = getelementptr inbounds i16, ptr %468, i64 %470
  store i16 %441, ptr %475, align 2, !tbaa !67
  br label %476

476:                                              ; preds = %474, %469
  %477 = extractelement <8 x i1> %472, i64 1
  br i1 %477, label %478, label %481

478:                                              ; preds = %476
  %479 = or disjoint i64 %470, 1
  %480 = getelementptr inbounds i16, ptr %468, i64 %479
  store i16 %441, ptr %480, align 2, !tbaa !67
  br label %481

481:                                              ; preds = %478, %476
  %482 = extractelement <8 x i1> %472, i64 2
  br i1 %482, label %483, label %486

483:                                              ; preds = %481
  %484 = or disjoint i64 %470, 2
  %485 = getelementptr inbounds i16, ptr %468, i64 %484
  store i16 %441, ptr %485, align 2, !tbaa !67
  br label %486

486:                                              ; preds = %483, %481
  %487 = extractelement <8 x i1> %472, i64 3
  br i1 %487, label %488, label %491

488:                                              ; preds = %486
  %489 = or disjoint i64 %470, 3
  %490 = getelementptr inbounds i16, ptr %468, i64 %489
  store i16 %441, ptr %490, align 2, !tbaa !67
  br label %491

491:                                              ; preds = %488, %486
  %492 = extractelement <8 x i1> %472, i64 4
  br i1 %492, label %493, label %496

493:                                              ; preds = %491
  %494 = or disjoint i64 %470, 4
  %495 = getelementptr inbounds i16, ptr %468, i64 %494
  store i16 %441, ptr %495, align 2, !tbaa !67
  br label %496

496:                                              ; preds = %493, %491
  %497 = extractelement <8 x i1> %472, i64 5
  br i1 %497, label %498, label %501

498:                                              ; preds = %496
  %499 = or disjoint i64 %470, 5
  %500 = getelementptr inbounds i16, ptr %468, i64 %499
  store i16 %441, ptr %500, align 2, !tbaa !67
  br label %501

501:                                              ; preds = %498, %496
  %502 = extractelement <8 x i1> %472, i64 6
  br i1 %502, label %503, label %506

503:                                              ; preds = %501
  %504 = or disjoint i64 %470, 6
  %505 = getelementptr inbounds i16, ptr %468, i64 %504
  store i16 %441, ptr %505, align 2, !tbaa !67
  br label %506

506:                                              ; preds = %503, %501
  %507 = extractelement <8 x i1> %472, i64 7
  br i1 %507, label %508, label %511

508:                                              ; preds = %506
  %509 = or disjoint i64 %470, 7
  %510 = getelementptr inbounds i16, ptr %468, i64 %509
  store i16 %441, ptr %510, align 2, !tbaa !67
  br label %511

511:                                              ; preds = %508, %506
  %512 = add i64 %470, 8
  %513 = add <8 x i64> %471, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %514 = icmp eq i64 %512, %458
  br i1 %514, label %515, label %469, !llvm.loop !68

515:                                              ; preds = %511, %462
  %516 = add nuw nsw i64 %463, 1
  %517 = icmp eq i64 %516, %455
  br i1 %517, label %518, label %462, !llvm.loop !72

518:                                              ; preds = %515, %435
  %519 = mul i32 %448, %54
  %520 = mul i32 %519, %451
  %521 = sext i32 %520 to i64
  %522 = call noalias ptr @malloc(i64 noundef %521) #17
  %523 = load ptr, ptr %316, align 8, !tbaa !64
  %524 = load ptr, ptr %442, align 8, !tbaa !32
  %525 = load ptr, ptr %524, align 8, !tbaa !33
  %526 = sdiv i32 %308, 2
  %527 = sdiv i32 %307, 2
  %528 = sdiv i32 %306, 2
  %529 = sdiv i32 %305, 2
  %530 = load i32, ptr %322, align 8, !tbaa !54
  %531 = sdiv i32 %530, 2
  call void %523(ptr noundef %525, ptr noundef %522, i32 noundef %452, i32 noundef %449, i32 noundef %54, i32 noundef %526, i32 noundef %527, i32 noundef %528, i32 noundef %529, i32 noundef %531) #16
  %532 = load i32, ptr %118, align 4, !tbaa !31
  %533 = add i32 %306, %305
  %534 = sub i32 %532, %533
  %535 = mul nsw i32 %534, %54
  %536 = sdiv i32 %535, 2
  %537 = load i32, ptr %114, align 8, !tbaa !30
  %538 = add i32 %308, %307
  %539 = sub i32 %537, %538
  %540 = mul nsw i32 %536, %539
  %541 = sdiv i32 %540, 2
  %542 = sext i32 %541 to i64
  %543 = call i64 @write(i32 noundef %228, ptr noundef %522, i64 noundef %542) #16
  %544 = trunc i64 %543 to i32
  %545 = load i32, ptr %118, align 4, !tbaa !31
  %546 = sub i32 %545, %533
  %547 = mul nsw i32 %546, %54
  %548 = sdiv i32 %547, 2
  %549 = load i32, ptr %114, align 8, !tbaa !30
  %550 = sub i32 %549, %538
  %551 = mul nsw i32 %548, %550
  %552 = sdiv i32 %551, 2
  %553 = icmp eq i32 %552, %544
  br i1 %553, label %563, label %554

554:                                              ; preds = %518
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #16
  %555 = load i32, ptr %118, align 4, !tbaa !31
  %556 = load i32, ptr %114, align 8, !tbaa !30
  %557 = sub i32 %555, %533
  %558 = mul nsw i32 %557, %54
  %559 = sdiv i32 %558, 2
  %560 = sub i32 %556, %538
  %561 = mul nsw i32 %559, %560
  %562 = sdiv i32 %561, 2
  br label %563

563:                                              ; preds = %554, %518
  %564 = phi i32 [ %562, %554 ], [ %552, %518 ]
  %565 = sext i32 %564 to i64
  %566 = call i64 @write(i32 noundef %228, ptr noundef %522, i64 noundef %565) #16
  %567 = trunc i64 %566 to i32
  %568 = load i32, ptr %118, align 4, !tbaa !31
  %569 = sub i32 %568, %533
  %570 = mul nsw i32 %569, %54
  %571 = sdiv i32 %570, 2
  %572 = load i32, ptr %114, align 8, !tbaa !30
  %573 = sub i32 %572, %538
  %574 = mul nsw i32 %571, %573
  %575 = sdiv i32 %574, 2
  %576 = icmp eq i32 %575, %567
  br i1 %576, label %578, label %577

577:                                              ; preds = %563
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #16
  br label %578

578:                                              ; preds = %577, %563
  call void @free(ptr noundef %522) #16
  %579 = load ptr, ptr %442, align 8, !tbaa !32
  call void @free_mem3Dpel(ptr noundef %579) #16
  store ptr null, ptr %442, align 8, !tbaa !32
  br label %580

580:                                              ; preds = %395, %430, %411, %394, %578, %431, %2
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_out_buffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @alloc_frame_store() #16
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  store ptr %2, ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_frame_store() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uninit_out_buffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  tail call void @free_frame_store(ptr noundef %3) #16
  store ptr null, ptr %2, align 8, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @free_frame_store(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_picture(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %4 = load i32, ptr %3, align 4, !tbaa !31
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !30
  %9 = icmp sgt i32 %8, 0
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %12 = zext nneg i32 %4 to i64
  %13 = zext i32 %8 to i64
  %14 = add nuw nsw i64 %13, 7
  %15 = and i64 %14, 4294967288
  %16 = add nsw i64 %13, -1
  %17 = insertelement <8 x i64> poison, i64 %16, i64 0
  %18 = shufflevector <8 x i64> %17, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %6, %90
  %20 = phi i64 [ 0, %6 ], [ %91, %90 ]
  br i1 %9, label %21, label %90

21:                                               ; preds = %19
  %22 = load i32, ptr %10, align 4, !tbaa !43
  %23 = trunc i32 %22 to i16
  %24 = load ptr, ptr %11, align 8, !tbaa !28
  %25 = getelementptr inbounds ptr, ptr %24, i64 %20
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  br label %27

27:                                               ; preds = %69, %21
  %28 = phi i64 [ 0, %21 ], [ %70, %69 ]
  %29 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %21 ], [ %71, %69 ]
  %30 = icmp ule <8 x i64> %29, %18
  %31 = extractelement <8 x i1> %30, i64 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds i16, ptr %26, i64 %28
  store i16 %23, ptr %33, align 2, !tbaa !67
  br label %34

34:                                               ; preds = %32, %27
  %35 = extractelement <8 x i1> %30, i64 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = or disjoint i64 %28, 1
  %38 = getelementptr inbounds i16, ptr %26, i64 %37
  store i16 %23, ptr %38, align 2, !tbaa !67
  br label %39

39:                                               ; preds = %36, %34
  %40 = extractelement <8 x i1> %30, i64 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = or disjoint i64 %28, 2
  %43 = getelementptr inbounds i16, ptr %26, i64 %42
  store i16 %23, ptr %43, align 2, !tbaa !67
  br label %44

44:                                               ; preds = %41, %39
  %45 = extractelement <8 x i1> %30, i64 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = or disjoint i64 %28, 3
  %48 = getelementptr inbounds i16, ptr %26, i64 %47
  store i16 %23, ptr %48, align 2, !tbaa !67
  br label %49

49:                                               ; preds = %46, %44
  %50 = extractelement <8 x i1> %30, i64 4
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = or disjoint i64 %28, 4
  %53 = getelementptr inbounds i16, ptr %26, i64 %52
  store i16 %23, ptr %53, align 2, !tbaa !67
  br label %54

54:                                               ; preds = %51, %49
  %55 = extractelement <8 x i1> %30, i64 5
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = or disjoint i64 %28, 5
  %58 = getelementptr inbounds i16, ptr %26, i64 %57
  store i16 %23, ptr %58, align 2, !tbaa !67
  br label %59

59:                                               ; preds = %56, %54
  %60 = extractelement <8 x i1> %30, i64 6
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = or disjoint i64 %28, 6
  %63 = getelementptr inbounds i16, ptr %26, i64 %62
  store i16 %23, ptr %63, align 2, !tbaa !67
  br label %64

64:                                               ; preds = %61, %59
  %65 = extractelement <8 x i1> %30, i64 7
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = or disjoint i64 %28, 7
  %68 = getelementptr inbounds i16, ptr %26, i64 %67
  store i16 %23, ptr %68, align 2, !tbaa !67
  br label %69

69:                                               ; preds = %66, %64
  %70 = add i64 %28, 8
  %71 = add <8 x i64> %29, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %72 = icmp eq i64 %70, %15
  br i1 %72, label %90, label %27, !llvm.loop !74

73:                                               ; preds = %90, %2
  %74 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %75 = load i32, ptr %74, align 4, !tbaa !35
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %224

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %79 = load i32, ptr %78, align 8, !tbaa !34
  %80 = icmp sgt i32 %79, 0
  %81 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  %82 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %83 = zext nneg i32 %75 to i64
  %84 = zext i32 %79 to i64
  %85 = add nuw nsw i64 %84, 7
  %86 = and i64 %85, 4294967288
  %87 = add nsw i64 %84, -1
  %88 = insertelement <8 x i64> poison, i64 %87, i64 0
  %89 = shufflevector <8 x i64> %88, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %93

90:                                               ; preds = %69, %19
  %91 = add nuw nsw i64 %20, 1
  %92 = icmp eq i64 %91, %12
  br i1 %92, label %73, label %19, !llvm.loop !75

93:                                               ; preds = %77, %162
  %94 = phi i64 [ 0, %77 ], [ %163, %162 ]
  br i1 %80, label %95, label %162

95:                                               ; preds = %93
  %96 = load i32, ptr %81, align 4, !tbaa !43
  %97 = trunc i32 %96 to i16
  %98 = load ptr, ptr %82, align 8, !tbaa !32
  %99 = load ptr, ptr %98, align 8, !tbaa !33
  %100 = getelementptr inbounds ptr, ptr %99, i64 %94
  %101 = load ptr, ptr %100, align 8, !tbaa !33
  br label %102

102:                                              ; preds = %144, %95
  %103 = phi i64 [ 0, %95 ], [ %145, %144 ]
  %104 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %95 ], [ %146, %144 ]
  %105 = icmp ule <8 x i64> %104, %89
  %106 = extractelement <8 x i1> %105, i64 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds i16, ptr %101, i64 %103
  store i16 %97, ptr %108, align 2, !tbaa !67
  br label %109

109:                                              ; preds = %107, %102
  %110 = extractelement <8 x i1> %105, i64 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = or disjoint i64 %103, 1
  %113 = getelementptr inbounds i16, ptr %101, i64 %112
  store i16 %97, ptr %113, align 2, !tbaa !67
  br label %114

114:                                              ; preds = %111, %109
  %115 = extractelement <8 x i1> %105, i64 2
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = or disjoint i64 %103, 2
  %118 = getelementptr inbounds i16, ptr %101, i64 %117
  store i16 %97, ptr %118, align 2, !tbaa !67
  br label %119

119:                                              ; preds = %116, %114
  %120 = extractelement <8 x i1> %105, i64 3
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = or disjoint i64 %103, 3
  %123 = getelementptr inbounds i16, ptr %101, i64 %122
  store i16 %97, ptr %123, align 2, !tbaa !67
  br label %124

124:                                              ; preds = %121, %119
  %125 = extractelement <8 x i1> %105, i64 4
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = or disjoint i64 %103, 4
  %128 = getelementptr inbounds i16, ptr %101, i64 %127
  store i16 %97, ptr %128, align 2, !tbaa !67
  br label %129

129:                                              ; preds = %126, %124
  %130 = extractelement <8 x i1> %105, i64 5
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = or disjoint i64 %103, 5
  %133 = getelementptr inbounds i16, ptr %101, i64 %132
  store i16 %97, ptr %133, align 2, !tbaa !67
  br label %134

134:                                              ; preds = %131, %129
  %135 = extractelement <8 x i1> %105, i64 6
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = or disjoint i64 %103, 6
  %138 = getelementptr inbounds i16, ptr %101, i64 %137
  store i16 %97, ptr %138, align 2, !tbaa !67
  br label %139

139:                                              ; preds = %136, %134
  %140 = extractelement <8 x i1> %105, i64 7
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = or disjoint i64 %103, 7
  %143 = getelementptr inbounds i16, ptr %101, i64 %142
  store i16 %97, ptr %143, align 2, !tbaa !67
  br label %144

144:                                              ; preds = %141, %139
  %145 = add i64 %103, 8
  %146 = add <8 x i64> %104, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %147 = icmp eq i64 %145, %86
  br i1 %147, label %162, label %102, !llvm.loop !76

148:                                              ; preds = %162
  br i1 %76, label %149, label %224

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %151 = load i32, ptr %150, align 8, !tbaa !34
  %152 = icmp sgt i32 %151, 0
  %153 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 2
  %154 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %155 = zext nneg i32 %75 to i64
  %156 = zext i32 %151 to i64
  %157 = add nuw nsw i64 %156, 7
  %158 = and i64 %157, 4294967288
  %159 = add nsw i64 %156, -1
  %160 = insertelement <8 x i64> poison, i64 %159, i64 0
  %161 = shufflevector <8 x i64> %160, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %165

162:                                              ; preds = %144, %93
  %163 = add nuw nsw i64 %94, 1
  %164 = icmp eq i64 %163, %83
  br i1 %164, label %148, label %93, !llvm.loop !77

165:                                              ; preds = %149, %221
  %166 = phi i64 [ 0, %149 ], [ %222, %221 ]
  br i1 %152, label %167, label %221

167:                                              ; preds = %165
  %168 = load i32, ptr %153, align 4, !tbaa !43
  %169 = trunc i32 %168 to i16
  %170 = load ptr, ptr %154, align 8, !tbaa !32
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !33
  %173 = getelementptr inbounds ptr, ptr %172, i64 %166
  %174 = load ptr, ptr %173, align 8, !tbaa !33
  br label %175

175:                                              ; preds = %217, %167
  %176 = phi i64 [ 0, %167 ], [ %218, %217 ]
  %177 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %167 ], [ %219, %217 ]
  %178 = icmp ule <8 x i64> %177, %161
  %179 = extractelement <8 x i1> %178, i64 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = getelementptr inbounds i16, ptr %174, i64 %176
  store i16 %169, ptr %181, align 2, !tbaa !67
  br label %182

182:                                              ; preds = %180, %175
  %183 = extractelement <8 x i1> %178, i64 1
  br i1 %183, label %184, label %187

184:                                              ; preds = %182
  %185 = or disjoint i64 %176, 1
  %186 = getelementptr inbounds i16, ptr %174, i64 %185
  store i16 %169, ptr %186, align 2, !tbaa !67
  br label %187

187:                                              ; preds = %184, %182
  %188 = extractelement <8 x i1> %178, i64 2
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = or disjoint i64 %176, 2
  %191 = getelementptr inbounds i16, ptr %174, i64 %190
  store i16 %169, ptr %191, align 2, !tbaa !67
  br label %192

192:                                              ; preds = %189, %187
  %193 = extractelement <8 x i1> %178, i64 3
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = or disjoint i64 %176, 3
  %196 = getelementptr inbounds i16, ptr %174, i64 %195
  store i16 %169, ptr %196, align 2, !tbaa !67
  br label %197

197:                                              ; preds = %194, %192
  %198 = extractelement <8 x i1> %178, i64 4
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = or disjoint i64 %176, 4
  %201 = getelementptr inbounds i16, ptr %174, i64 %200
  store i16 %169, ptr %201, align 2, !tbaa !67
  br label %202

202:                                              ; preds = %199, %197
  %203 = extractelement <8 x i1> %178, i64 5
  br i1 %203, label %204, label %207

204:                                              ; preds = %202
  %205 = or disjoint i64 %176, 5
  %206 = getelementptr inbounds i16, ptr %174, i64 %205
  store i16 %169, ptr %206, align 2, !tbaa !67
  br label %207

207:                                              ; preds = %204, %202
  %208 = extractelement <8 x i1> %178, i64 6
  br i1 %208, label %209, label %212

209:                                              ; preds = %207
  %210 = or disjoint i64 %176, 6
  %211 = getelementptr inbounds i16, ptr %174, i64 %210
  store i16 %169, ptr %211, align 2, !tbaa !67
  br label %212

212:                                              ; preds = %209, %207
  %213 = extractelement <8 x i1> %178, i64 7
  br i1 %213, label %214, label %217

214:                                              ; preds = %212
  %215 = or disjoint i64 %176, 7
  %216 = getelementptr inbounds i16, ptr %174, i64 %215
  store i16 %169, ptr %216, align 2, !tbaa !67
  br label %217

217:                                              ; preds = %214, %212
  %218 = add i64 %176, 8
  %219 = add <8 x i64> %177, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %220 = icmp eq i64 %218, %158
  br i1 %220, label %221, label %175, !llvm.loop !78

221:                                              ; preds = %217, %165
  %222 = add nuw nsw i64 %166, 1
  %223 = icmp eq i64 %222, %155
  br i1 %223, label %224, label %165, !llvm.loop !79

224:                                              ; preds = %221, %73, %148
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @write_unpaired_field(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !80
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 17
  %13 = load i32, ptr %12, align 4, !tbaa !31
  %14 = shl nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 19
  %18 = load i32, ptr %17, align 4, !tbaa !35
  %19 = shl nsw i32 %18, 1
  %20 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 2, i32 noundef %11, i32 noundef %14, i32 noundef %16, i32 noundef %19) #16
  %21 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  store ptr %20, ptr %21, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 48
  store i32 %23, ptr %24, align 4, !tbaa !42
  tail call void @clear_picture(ptr noundef %0, ptr noundef %20) #14
  tail call void @dpb_combine_field_yuv(ptr noundef %0, ptr noundef nonnull %1) #16
  %25 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 64
  store i32 %26, ptr %29, align 8, !tbaa !16
  tail call void @write_picture(ptr noundef %0, ptr noundef %28, i32 poison, i32 poison) #14
  %30 = load i32, ptr %1, align 8, !tbaa !80
  br label %31

31:                                               ; preds = %7, %3
  %32 = phi i32 [ %30, %7 ], [ %4, %3 ]
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !30
  %40 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 17
  %41 = load i32, ptr %40, align 4, !tbaa !31
  %42 = shl nsw i32 %41, 1
  %43 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 18
  %44 = load i32, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 19
  %46 = load i32, ptr %45, align 4, !tbaa !35
  %47 = shl nsw i32 %46, 1
  %48 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 1, i32 noundef %39, i32 noundef %42, i32 noundef %44, i32 noundef %47) #16
  %49 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  store ptr %48, ptr %49, align 8, !tbaa !82
  %50 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 48
  %51 = load i32, ptr %50, align 4, !tbaa !42
  %52 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 48
  store i32 %51, ptr %52, align 4, !tbaa !42
  tail call void @clear_picture(ptr noundef %0, ptr noundef %48) #14
  %53 = load ptr, ptr %36, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 50
  %55 = load i32, ptr %54, align 4, !tbaa !36
  %56 = load ptr, ptr %49, align 8, !tbaa !82
  %57 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 50
  store i32 %55, ptr %57, align 4, !tbaa !36
  %58 = icmp eq i32 %55, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %35
  %60 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 51
  %61 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 51
  %62 = load <4 x i32>, ptr %60, align 8, !tbaa !43
  store <4 x i32> %62, ptr %61, align 8, !tbaa !43
  br label %63

63:                                               ; preds = %59, %35
  tail call void @dpb_combine_field_yuv(ptr noundef %0, ptr noundef nonnull %1) #16
  %64 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %65 = load i32, ptr %64, align 8, !tbaa !84
  %66 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !85
  %68 = getelementptr inbounds %struct.storable_picture, ptr %67, i64 0, i32 64
  store i32 %65, ptr %68, align 8, !tbaa !16
  tail call void @write_picture(ptr noundef %0, ptr noundef %67, i32 poison, i32 poison) #14
  br label %69

69:                                               ; preds = %63, %31
  store i32 3, ptr %1, align 8, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dpb_combine_field_yuv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flush_direct_output(ptr noundef %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  tail call void @write_unpaired_field(ptr noundef %0, ptr noundef %4, i32 poison) #14
  %5 = load ptr, ptr %3, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.frame_store, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  tail call void @free_storable_picture(ptr noundef %7) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.frame_store, ptr %8, i64 0, i32 12
  store ptr null, ptr %9, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.frame_store, ptr %8, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  tail call void @free_storable_picture(ptr noundef %11) #16
  %12 = load ptr, ptr %3, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.frame_store, ptr %12, i64 0, i32 13
  store ptr null, ptr %13, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.frame_store, ptr %12, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  tail call void @free_storable_picture(ptr noundef %15) #16
  %16 = load ptr, ptr %3, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.frame_store, ptr %16, i64 0, i32 14
  store ptr null, ptr %17, align 8, !tbaa !83
  store i32 0, ptr %16, align 8, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare void @free_storable_picture(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @write_stored_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @flush_direct_output(ptr noundef %0, i32 poison) #14
  %4 = load i32, ptr %1, align 8, !tbaa !80
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @write_unpaired_field(ptr noundef %0, ptr noundef nonnull %1, i32 poison) #14
  br label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !86
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 149
  store i32 1, ptr %12, align 4, !tbaa !87
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 41
  %15 = load i32, ptr %14, align 4, !tbaa !88
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 149
  %19 = load i32, ptr %18, align 4, !tbaa !87
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  tail call void @write_picture(ptr noundef nonnull %0, ptr noundef %23, i32 poison, i32 poison) #14
  br label %24

24:                                               ; preds = %17, %21, %6
  %25 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 9
  store i32 1, ptr %25, align 4, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @direct_output(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = load i32, ptr %1, align 8, !tbaa !90
  switch i32 %5, label %32 [
    i32 0, label %6
    i32 1, label %16
  ]

6:                                                ; preds = %3
  tail call void @flush_direct_output(ptr noundef nonnull %0, i32 poison) #14
  tail call void @write_picture(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 poison, i32 poison) #14
  tail call void @calculate_frame_no(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %8 = load i32, ptr %7, align 4, !tbaa !91
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !92
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @find_snr(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #16
  br label %15

15:                                               ; preds = %14, %10, %6
  tail call void @free_storable_picture(ptr noundef nonnull %1) #16
  br label %86

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = load i32, ptr %18, align 8, !tbaa !80
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  tail call void @flush_direct_output(ptr noundef nonnull %0, i32 poison) #14
  %23 = load ptr, ptr %17, align 8, !tbaa !73
  %24 = load i32, ptr %23, align 8, !tbaa !80
  %25 = load i32, ptr %1, align 8, !tbaa !90
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %25, %22 ], [ 1, %16 ]
  %28 = phi i32 [ %24, %22 ], [ %19, %16 ]
  %29 = phi ptr [ %23, %22 ], [ %18, %16 ]
  %30 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 13
  store ptr %1, ptr %30, align 8, !tbaa !82
  %31 = or i32 %28, 1
  store i32 %31, ptr %29, align 8, !tbaa !80
  br label %32

32:                                               ; preds = %3, %26
  %33 = phi i32 [ %5, %3 ], [ %27, %26 ]
  %34 = icmp eq i32 %33, 2
  %35 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = load i32, ptr %36, align 8, !tbaa !80
  br i1 %34, label %38, label %49

38:                                               ; preds = %32
  %39 = and i32 %37, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  tail call void @flush_direct_output(ptr noundef nonnull %0, i32 poison) #14
  %42 = load ptr, ptr %35, align 8, !tbaa !73
  %43 = load i32, ptr %42, align 8, !tbaa !80
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %43, %41 ], [ %37, %38 ]
  %46 = phi ptr [ %42, %41 ], [ %36, %38 ]
  %47 = getelementptr inbounds %struct.frame_store, ptr %46, i64 0, i32 14
  store ptr %1, ptr %47, align 8, !tbaa !83
  %48 = or i32 %45, 2
  store i32 %48, ptr %46, align 8, !tbaa !80
  br label %49

49:                                               ; preds = %32, %44
  %50 = phi i32 [ %48, %44 ], [ %37, %32 ]
  %51 = phi ptr [ %46, %44 ], [ %36, %32 ]
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %53 = icmp eq i32 %50, 3
  br i1 %53, label %54, label %86

54:                                               ; preds = %49
  tail call void @dpb_combine_field_yuv(ptr noundef nonnull %0, ptr noundef nonnull %51) #16
  %55 = load ptr, ptr %52, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.frame_store, ptr %55, i64 0, i32 15
  %57 = load i32, ptr %56, align 8, !tbaa !84
  %58 = getelementptr inbounds %struct.frame_store, ptr %55, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !85
  %60 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 64
  store i32 %57, ptr %60, align 8, !tbaa !16
  tail call void @write_picture(ptr noundef nonnull %0, ptr noundef %59, i32 poison, i32 poison) #14
  tail call void @calculate_frame_no(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  %61 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %62 = load i32, ptr %61, align 4, !tbaa !91
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %72, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !92
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load ptr, ptr %52, align 8, !tbaa !73
  %70 = getelementptr inbounds %struct.frame_store, ptr %69, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !85
  tail call void @find_snr(ptr noundef nonnull %0, ptr noundef %71, ptr noundef nonnull %61) #16
  br label %72

72:                                               ; preds = %68, %64, %54
  %73 = load ptr, ptr %52, align 8, !tbaa !73
  %74 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !85
  tail call void @free_storable_picture(ptr noundef %75) #16
  %76 = load ptr, ptr %52, align 8, !tbaa !73
  %77 = getelementptr inbounds %struct.frame_store, ptr %76, i64 0, i32 12
  store ptr null, ptr %77, align 8, !tbaa !85
  %78 = getelementptr inbounds %struct.frame_store, ptr %76, i64 0, i32 13
  %79 = load ptr, ptr %78, align 8, !tbaa !82
  tail call void @free_storable_picture(ptr noundef %79) #16
  %80 = load ptr, ptr %52, align 8, !tbaa !73
  %81 = getelementptr inbounds %struct.frame_store, ptr %80, i64 0, i32 13
  store ptr null, ptr %81, align 8, !tbaa !82
  %82 = getelementptr inbounds %struct.frame_store, ptr %80, i64 0, i32 14
  %83 = load ptr, ptr %82, align 8, !tbaa !83
  tail call void @free_storable_picture(ptr noundef %83) #16
  %84 = load ptr, ptr %52, align 8, !tbaa !73
  %85 = getelementptr inbounds %struct.frame_store, ptr %84, i64 0, i32 14
  store ptr null, ptr %85, align 8, !tbaa !83
  store i32 0, ptr %84, align 8, !tbaa !80
  br label %86

86:                                               ; preds = %49, %72, %15
  ret void
}

; Function Attrs: optsize
declare void @calculate_frame_no(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @find_snr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tone_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initOutput(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = tail call i32 @testEndian() #16
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, ptr @img2buf_normal, ptr @img2buf_endian
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 168
  store ptr %4, ptr %5, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @GetOneAvailDecPicFromList(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_mem3Dpel(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @testEndian() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %51 = load ptr, ptr %44, align 8, !tbaa !33
  %52 = getelementptr inbounds i16, ptr %51, i64 %50
  %53 = load i16, ptr %52, align 2, !tbaa !67
  %54 = trunc i16 %53 to i8
  %55 = trunc i64 %50 to i32
  %56 = add i32 %48, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  store i8 %54, ptr %58, align 1, !tbaa !63
  %59 = add nsw i64 %50, 1
  %60 = icmp slt i64 %59, %38
  br i1 %60, label %49, label %61, !llvm.loop !93

61:                                               ; preds = %49, %41
  %62 = add nsw i64 %42, 1
  %63 = icmp slt i64 %62, %40
  br i1 %63, label %41, label %114, !llvm.loop !94

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
  %74 = load ptr, ptr %67, align 8, !tbaa !33
  %75 = getelementptr inbounds i16, ptr %74, i64 %73
  %76 = load i16, ptr %75, align 2, !tbaa !67
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %78 = trunc i64 %73 to i32
  %79 = add i32 %71, %78
  %80 = shl nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %1, i64 %81
  store i16 %77, ptr %82, align 1
  %83 = add nsw i64 %73, 1
  %84 = icmp slt i64 %83, %28
  br i1 %84, label %72, label %85, !llvm.loop !95

85:                                               ; preds = %72, %64
  %86 = add nsw i64 %65, 1
  %87 = icmp slt i64 %86, %30
  br i1 %87, label %64, label %114, !llvm.loop !96

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
  %98 = load ptr, ptr %91, align 8, !tbaa !33
  %99 = getelementptr inbounds i16, ptr %98, i64 %97
  %100 = load i16, ptr %99, align 2, !tbaa !67
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
  br i1 %109, label %96, label %110, !llvm.loop !97

110:                                              ; preds = %96, %88
  %111 = add nsw i64 %89, 1
  %112 = icmp slt i64 %111, %20
  br i1 %112, label %88, label %114, !llvm.loop !98

113:                                              ; preds = %10
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #16
  br label %114

114:                                              ; preds = %110, %85, %61, %11, %21, %31, %113
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @img2buf_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #2 {
  %11 = add i32 %5, %6
  %12 = sub i32 %2, %11
  %13 = add i32 %7, %8
  %14 = sub i32 %3, %13
  %15 = icmp sgt i32 %4, 2
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %42

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
  br i1 %28, label %42, label %23, !llvm.loop !99

29:                                               ; preds = %10
  %30 = or i32 %6, %5
  %31 = or i32 %30, %7
  %32 = or i32 %31, %8
  %33 = icmp ne i32 %32, 0
  %34 = icmp ne i32 %4, 1
  %35 = or i1 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = icmp sgt i32 %3, 0
  br i1 %37, label %38, label %95

38:                                               ; preds = %36
  %39 = icmp sgt i32 %2, 0
  %40 = sext i32 %9 to i64
  %41 = zext nneg i32 %3 to i64
  br label %75

42:                                               ; preds = %23, %16, %29
  %43 = phi i32 [ %4, %29 ], [ 2, %16 ], [ 2, %23 ]
  %44 = sub nsw i32 %3, %8
  %45 = icmp sgt i32 %44, %7
  br i1 %45, label %46, label %95

46:                                               ; preds = %42
  %47 = sub nsw i32 %2, %6
  %48 = icmp sgt i32 %47, %5
  %49 = sext i32 %43 to i64
  %50 = sext i32 %5 to i64
  %51 = sext i32 %4 to i64
  %52 = sext i32 %47 to i64
  %53 = sext i32 %7 to i64
  %54 = sext i32 %9 to i64
  %55 = sext i32 %44 to i64
  br label %56

56:                                               ; preds = %46, %72
  %57 = phi i64 [ %53, %46 ], [ %73, %72 ]
  br i1 %48, label %58, label %72

58:                                               ; preds = %56
  %59 = sub nsw i64 %57, %53
  %60 = mul nsw i64 %59, %54
  %61 = getelementptr inbounds ptr, ptr %0, i64 %57
  %62 = getelementptr i8, ptr %1, i64 %60
  br label %63

63:                                               ; preds = %58, %63
  %64 = phi i64 [ %50, %58 ], [ %70, %63 ]
  %65 = sub nsw i64 %64, %50
  %66 = mul nsw i64 %65, %51
  %67 = getelementptr i8, ptr %62, i64 %66
  %68 = load ptr, ptr %61, align 8, !tbaa !33
  %69 = getelementptr inbounds i16, ptr %68, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 2 %69, i64 %49, i1 false)
  %70 = add nsw i64 %64, 1
  %71 = icmp slt i64 %70, %52
  br i1 %71, label %63, label %72, !llvm.loop !100

72:                                               ; preds = %63, %56
  %73 = add nsw i64 %57, 1
  %74 = icmp slt i64 %73, %55
  br i1 %74, label %56, label %95, !llvm.loop !101

75:                                               ; preds = %38, %92
  %76 = phi i64 [ 0, %38 ], [ %93, %92 ]
  br i1 %39, label %77, label %92

77:                                               ; preds = %75
  %78 = mul nsw i64 %76, %40
  %79 = getelementptr inbounds i8, ptr %1, i64 %78
  %80 = getelementptr inbounds ptr, ptr %0, i64 %76
  %81 = load ptr, ptr %80, align 8, !tbaa !33
  br label %82

82:                                               ; preds = %77, %82
  %83 = phi ptr [ %89, %82 ], [ %79, %77 ]
  %84 = phi ptr [ %86, %82 ], [ %81, %77 ]
  %85 = phi i32 [ %90, %82 ], [ 0, %77 ]
  %86 = getelementptr inbounds i16, ptr %84, i64 1
  %87 = load i16, ptr %84, align 2, !tbaa !67
  %88 = trunc i16 %87 to i8
  %89 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %88, ptr %83, align 1, !tbaa !63
  %90 = add nuw nsw i32 %85, 1
  %91 = icmp eq i32 %90, %2
  br i1 %91, label %92, label %82, !llvm.loop !102

92:                                               ; preds = %82, %75
  %93 = add nuw nsw i64 %76, 1
  %94 = icmp eq i64 %93, %41
  br i1 %94, label %95, label %75, !llvm.loop !103

95:                                               ; preds = %92, %72, %36, %42
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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0) }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { cold optsize }
attributes #20 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"video_par", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 132120, !7, i64 699416, !8, i64 699424, !10, i64 848672, !10, i64 848676, !10, i64 848680, !10, i64 848684, !7, i64 848688, !7, i64 848696, !7, i64 848704, !10, i64 848712, !10, i64 848716, !10, i64 848720, !10, i64 848724, !10, i64 848728, !7, i64 848736, !7, i64 848744, !8, i64 848752, !10, i64 848776, !10, i64 848780, !10, i64 848784, !10, i64 848788, !10, i64 848792, !7, i64 848800, !8, i64 848808, !7, i64 848832, !7, i64 848840, !8, i64 848848, !10, i64 848872, !10, i64 848876, !7, i64 848880, !7, i64 848888, !8, i64 848896, !10, i64 848920, !7, i64 848928, !7, i64 848936, !10, i64 848944, !10, i64 848948, !10, i64 848952, !10, i64 848956, !10, i64 848960, !10, i64 848964, !10, i64 848968, !10, i64 848972, !10, i64 848976, !10, i64 848980, !10, i64 848984, !10, i64 848988, !10, i64 848992, !10, i64 848996, !10, i64 849000, !10, i64 849004, !10, i64 849008, !10, i64 849012, !10, i64 849016, !10, i64 849020, !10, i64 849024, !10, i64 849028, !10, i64 849032, !10, i64 849036, !11, i64 849040, !11, i64 849042, !8, i64 849044, !10, i64 849052, !10, i64 849056, !8, i64 849060, !8, i64 849072, !10, i64 849084, !10, i64 849088, !10, i64 849092, !10, i64 849096, !10, i64 849100, !10, i64 849104, !10, i64 849108, !10, i64 849112, !10, i64 849116, !10, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !10, i64 849196, !10, i64 849200, !10, i64 849204, !10, i64 849208, !10, i64 849212, !10, i64 849216, !10, i64 849220, !10, i64 849224, !10, i64 849228, !10, i64 849232, !10, i64 849236, !10, i64 849240, !10, i64 849244, !10, i64 849248, !10, i64 849252, !10, i64 849256, !10, i64 849260, !10, i64 849264, !10, i64 849268, !10, i64 849272, !10, i64 849276, !10, i64 849280, !10, i64 849284, !7, i64 849288, !7, i64 849296, !12, i64 849304, !12, i64 849624, !12, i64 849944, !12, i64 850264, !12, i64 850584, !12, i64 850904, !12, i64 851224, !12, i64 851544, !10, i64 851864, !10, i64 851868, !10, i64 851872, !15, i64 851880, !10, i64 851888, !8, i64 851892, !10, i64 855988, !10, i64 855992, !10, i64 855996, !10, i64 856000, !10, i64 856004, !10, i64 856008, !10, i64 856012, !7, i64 856016, !7, i64 856024, !7, i64 856032, !7, i64 856040, !7, i64 856048, !8, i64 856056, !7, i64 856456, !8, i64 856464, !7, i64 856488, !7, i64 856496, !7, i64 856504, !10, i64 856512, !7, i64 856520, !8, i64 856528, !7, i64 856608, !7, i64 856616, !7, i64 856624, !7, i64 856632, !10, i64 856640, !10, i64 856644, !10, i64 856648, !7, i64 856656, !7, i64 856664, !8, i64 856672, !8, i64 856688, !7, i64 856704, !7, i64 856712, !10, i64 856720, !7, i64 856728, !7, i64 856736, !7, i64 856744, !7, i64 856752, !7, i64 856760, !7, i64 856768, !7, i64 856776, !7, i64 856784, !7, i64 856792, !7, i64 856800, !7, i64 856808, !7, i64 856816, !10, i64 856824, !7, i64 856832, !10, i64 856840, !10, i64 856844, !10, i64 856848, !10, i64 856852, !10, i64 856856, !10, i64 856860, !10, i64 856864, !7, i64 856872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!"image_data", !13, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!13 = !{!"frame_format", !10, i64 0, !10, i64 4, !14, i64 8, !8, i64 16, !8, i64 28, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !8, i64 72, !10, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !10, i64 124, !10, i64 128}
!14 = !{!"double", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !10, i64 344}
!17 = !{!"storable_picture", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !8, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !11, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !18, i64 184, !8, i64 192, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !8, i64 300, !10, i64 308, !7, i64 312, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !7, i64 336, !10, i64 344, !10, i64 348, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !7, i64 376, !10, i64 384, !10, i64 388, !8, i64 392, !8, i64 400}
!18 = !{!"pic_motion_params_old", !7, i64 0}
!19 = !{!6, !7, i64 16}
!20 = !{!21, !10, i64 3216}
!21 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !8, i64 44, !8, i64 92, !8, i64 476, !8, i64 2012, !8, i64 2036, !10, i64 2060, !10, i64 2064, !10, i64 2068, !10, i64 2072, !10, i64 2076, !10, i64 2080, !10, i64 2084, !10, i64 2088, !10, i64 2092, !8, i64 2096, !10, i64 3120, !10, i64 3124, !10, i64 3128, !10, i64 3132, !10, i64 3136, !10, i64 3140, !10, i64 3144, !10, i64 3148, !10, i64 3152, !10, i64 3156, !10, i64 3160, !10, i64 3164, !10, i64 3168, !22, i64 3172, !10, i64 4120, !10, i64 4124}
!22 = !{!"", !10, i64 0, !10, i64 4, !11, i64 8, !11, i64 10, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !23, i64 80, !10, i64 492, !23, i64 496, !10, i64 908, !10, i64 912, !10, i64 916, !10, i64 920, !10, i64 924, !10, i64 928, !10, i64 932, !10, i64 936, !10, i64 940, !10, i64 944}
!23 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408}
!24 = !{!17, !10, i64 52}
!25 = !{!6, !10, i64 849036}
!26 = !{!17, !10, i64 324}
!27 = !{!17, !10, i64 332}
!28 = !{!17, !7, i64 128}
!29 = !{!17, !7, i64 336}
!30 = !{!17, !10, i64 64}
!31 = !{!17, !10, i64 68}
!32 = !{!17, !7, i64 136}
!33 = !{!7, !7, i64 0}
!34 = !{!17, !10, i64 72}
!35 = !{!17, !10, i64 76}
!36 = !{!17, !10, i64 276}
!37 = !{!17, !10, i64 280}
!38 = !{!17, !10, i64 284}
!39 = !{!17, !10, i64 272}
!40 = !{!17, !10, i64 288}
!41 = !{!17, !10, i64 292}
!42 = !{!17, !10, i64 268}
!43 = !{!10, !10, i64 0}
!44 = !{!6, !7, i64 856816}
!45 = !{!46, !7, i64 24}
!46 = !{!"decodedpic_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !7, i64 72}
!47 = !{!46, !7, i64 32}
!48 = !{!46, !7, i64 40}
!49 = !{!46, !10, i64 12}
!50 = !{!46, !10, i64 16}
!51 = !{!46, !10, i64 20}
!52 = !{!46, !10, i64 48}
!53 = !{!46, !10, i64 52}
!54 = !{!46, !10, i64 56}
!55 = !{!46, !10, i64 60}
!56 = !{!46, !10, i64 0}
!57 = !{!46, !10, i64 4}
!58 = !{!17, !10, i64 16}
!59 = !{!46, !10, i64 8}
!60 = !{!61, !10, i64 3976}
!61 = !{!"inp_par", !8, i64 0, !8, i64 255, !8, i64 510, !10, i64 768, !10, i64 772, !10, i64 776, !10, i64 780, !10, i64 784, !10, i64 788, !13, i64 792, !13, i64 928, !10, i64 1064, !10, i64 1068, !62, i64 1072, !62, i64 2040, !62, i64 3008, !10, i64 3976, !10, i64 3980, !10, i64 3984, !10, i64 3988, !10, i64 3992, !10, i64 3996, !10, i64 4000, !10, i64 4004, !10, i64 4008, !10, i64 4012}
!62 = !{!"video_data_file", !8, i64 0, !8, i64 255, !8, i64 510, !10, i64 768, !10, i64 772, !13, i64 776, !10, i64 912, !10, i64 916, !10, i64 920, !10, i64 924, !10, i64 928, !10, i64 932, !10, i64 936, !10, i64 940, !10, i64 944, !10, i64 948, !10, i64 952, !7, i64 960}
!63 = !{!8, !8, i64 0}
!64 = !{!6, !7, i64 856808}
!65 = !{!61, !10, i64 780}
!66 = !{!6, !11, i64 849040}
!67 = !{!11, !11, i64 0}
!68 = distinct !{!68, !69, !70, !71}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = distinct !{!72, !69}
!73 = !{!6, !7, i64 856624}
!74 = distinct !{!74, !69, !70, !71}
!75 = distinct !{!75, !69}
!76 = distinct !{!76, !69, !70, !71}
!77 = distinct !{!77, !69}
!78 = distinct !{!78, !69, !70, !71}
!79 = distinct !{!79, !69}
!80 = !{!81, !10, i64 0}
!81 = !{!"frame_store", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !8, i64 76, !8, i64 84}
!82 = !{!81, !7, i64 56}
!83 = !{!81, !7, i64 64}
!84 = !{!81, !10, i64 72}
!85 = !{!81, !7, i64 48}
!86 = !{!81, !10, i64 24}
!87 = !{!6, !10, i64 856644}
!88 = !{!6, !10, i64 848948}
!89 = !{!81, !10, i64 36}
!90 = !{!17, !10, i64 0}
!91 = !{!6, !10, i64 855988}
!92 = !{!61, !10, i64 784}
!93 = distinct !{!93, !69}
!94 = distinct !{!94, !69}
!95 = distinct !{!95, !69}
!96 = distinct !{!96, !69}
!97 = distinct !{!97, !69}
!98 = distinct !{!98, !69}
!99 = distinct !{!99, !69}
!100 = distinct !{!100, !69}
!101 = distinct !{!101, !69}
!102 = distinct !{!102, !69}
!103 = distinct !{!103, !69}
