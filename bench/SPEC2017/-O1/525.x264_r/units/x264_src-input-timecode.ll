; ModuleID = 'x264_src/input/timecode.c'
source_filename = "x264_src/input/timecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timecode_hnd_t = type { %struct.cli_input_t, ptr, i32, i32, i32, i64, i64, i32, i32, ptr, double, double }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@timecode_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"timecode [error]: malloc failed\0A\00", align 1
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"timecode [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"timecode [error]: can't open `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"# timecode format v%d\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"timecode [error]: unsupported timecode format\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"assume %lf\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Assume %lf\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"timecode [error]: tcfile parsing error: assumed fps not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"timecode [error]: invalid assumed fps %.6f\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"# TDecimate Mode 3:  Last Frame = %d\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d,%d,%lf\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"timecode [error]: invalid input tcfile\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"timecode [error]: invalid input tcfile at line %d: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"timecode [error]: input tcfile doesn't have any timecodes!\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"timecode [error]: invalid input tcfile for frame 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"timecode [error]: invalid input tcfile for frame %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"timecode [info]: automatic timebase generation %lu/%lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [117 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify an appropriate timebase manually.\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"timecode [error]: invalid timebase or timecode for frame %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [126 x i8] c"timecode [error]: tcfile fps correction failed.\0A                  Specify an appropriate timebase manually or remake tcfile.\0A\00", align 1
@.str.24 = private unnamed_addr constant [102 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify timebase manually.\0A\00", align 1
@.str.25 = private unnamed_addr constant [118 x i8] c"timecode [info]: input timecode file missing data for frame %d and later\0A                 assuming constant fps %.6f\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @open_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load ptr, ptr @stderr, align 8, !tbaa !34
  %14 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %13) #15
  br label %816

15:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !tbaa.struct !38
  %16 = load ptr, ptr %1, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !39
  %18 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !tbaa !45
  %19 = tail call i32 %18(ptr noundef %16) #16
  %20 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.cli_input_opt_t, ptr %3, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 7
  store i32 %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.cli_input_opt_t, ptr %3, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  %29 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  %30 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %25, ptr noundef nonnull @.str.1, ptr noundef nonnull %28, ptr noundef nonnull %29) #16
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %24, align 8, !tbaa !50
  %34 = tail call i64 @strtoul(ptr nocapture noundef %33, ptr noundef null, i32 noundef 10) #16
  store i64 %34, ptr %28, align 8, !tbaa !51
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i64, ptr %28, align 8, !tbaa !51
  %37 = icmp ugt i64 %36, 4294967295
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, ptr %29, align 8, !tbaa !52
  %40 = icmp ugt i64 %39, 4294967295
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %35
  %42 = load ptr, ptr @stderr, align 8, !tbaa !34
  %43 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 63, i64 1, ptr %42) #15
  br label %816

44:                                               ; preds = %38, %15
  %45 = phi i32 [ %30, %38 ], [ 0, %15 ]
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 3
  store i32 %47, ptr %48, align 4, !tbaa !53
  %49 = icmp slt i32 %45, 2
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 4
  store i32 %50, ptr %51, align 8, !tbaa !54
  br i1 %46, label %52, label %57

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !55
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  store i64 %55, ptr %56, align 8, !tbaa !51
  br label %57

57:                                               ; preds = %52, %44
  br i1 %49, label %58, label %60

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  store i64 0, ptr %59, align 8, !tbaa !52
  br label %60

60:                                               ; preds = %58, %57
  %61 = getelementptr inbounds %struct.cli_input_t, ptr %10, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  store ptr %62, ptr getelementptr inbounds (%struct.cli_input_t, ptr @timecode_input, i64 0, i32 2), align 8, !tbaa !58
  %63 = getelementptr inbounds %struct.cli_input_t, ptr %10, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !59
  store ptr %64, ptr getelementptr inbounds (%struct.cli_input_t, ptr @timecode_input, i64 0, i32 5), align 8, !tbaa !60
  store ptr %10, ptr %1, align 8, !tbaa !34
  %65 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.3)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load ptr, ptr @stderr, align 8, !tbaa !34
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.4, ptr noundef %0) #15
  br label %816

70:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %71 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %65, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #16
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, ptr %6, align 4
  %75 = add i32 %74, -3
  %76 = icmp ult i32 %75, -2
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %70
  %78 = load ptr, ptr @stderr, align 8, !tbaa !34
  %79 = call i64 @fwrite(ptr nonnull @.str.7, i64 46, i64 1, ptr %78) #15
  br label %809

80:                                               ; preds = %73
  %81 = icmp eq i32 %74, 1
  br i1 %81, label %82, label %444

82:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %83 = load i32, ptr %23, align 8, !tbaa !49
  store i32 %83, ptr %9, align 4, !tbaa !61
  %84 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 10
  store double 0.000000e+00, ptr %84, align 8, !tbaa !62
  %85 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %82, %99
  %88 = phi i32 [ %100, %99 ], [ 2, %82 ]
  %89 = load i8, ptr %5, align 16
  switch i8 %89, label %90 [
    i8 35, label %99
    i8 13, label %99
    i8 10, label %99
  ]

90:                                               ; preds = %87
  %91 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull %84) #16
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, ptr noundef nonnull %84) #16
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr @stderr, align 8, !tbaa !34
  %98 = call i64 @fwrite(ptr nonnull @.str.10, i64 62, i64 1, ptr %97) #15
  br label %440

99:                                               ; preds = %87, %87, %87
  %100 = add nuw nsw i32 %88, 1
  %101 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %87, !llvm.loop !63

103:                                              ; preds = %99, %82, %93, %90
  %104 = phi i32 [ %88, %93 ], [ %88, %90 ], [ 2, %82 ], [ %100, %99 ]
  %105 = load double, ptr %84, align 8, !tbaa !62
  %106 = fcmp ugt double %105, 0.000000e+00
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @stderr, align 8, !tbaa !34
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.11, double noundef %105) #15
  br label %440

110:                                              ; preds = %103
  %111 = call i64 @ftell(ptr noundef nonnull %65)
  %112 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 8
  store i32 0, ptr %112, align 4, !tbaa !66
  %113 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %114 = icmp eq ptr %113, null
  br i1 %114, label %163, label %115

115:                                              ; preds = %110, %156
  %116 = phi i32 [ %160, %156 ], [ %104, %110 ]
  %117 = phi i32 [ %159, %156 ], [ 0, %110 ]
  %118 = phi i32 [ %158, %156 ], [ -1, %110 ]
  %119 = phi i32 [ %157, %156 ], [ -1, %110 ]
  %120 = load i8, ptr %5, align 16
  switch i8 %120, label %129 [
    i8 35, label %121
    i8 13, label %121
    i8 10, label %121
  ]

121:                                              ; preds = %115, %115, %115
  %122 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, ptr noundef nonnull %9) #16
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %156

124:                                              ; preds = %121
  %125 = load i32, ptr %9, align 4, !tbaa !61
  %126 = add nsw i32 %125, 1
  %127 = load i32, ptr %23, align 8, !tbaa !49
  %128 = sub i32 %126, %127
  store i32 %128, ptr %112, align 4, !tbaa !66
  br label %156

129:                                              ; preds = %115
  %130 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #16
  switch i32 %130, label %131 [
    i32 -1, label %134
    i32 3, label %134
  ]

131:                                              ; preds = %129
  %132 = load ptr, ptr @stderr, align 8, !tbaa !34
  %133 = call i64 @fwrite(ptr nonnull @.str.14, i64 39, i64 1, ptr %132) #15
  br label %440

134:                                              ; preds = %129, %129
  %135 = load i32, ptr %8, align 4, !tbaa !61
  %136 = load i32, ptr %9, align 4, !tbaa !61
  %137 = icmp sle i32 %135, %136
  %138 = icmp sgt i32 %135, %119
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = icmp sle i32 %136, %118
  %142 = load double, ptr %7, align 8
  %143 = fcmp ole double %142, 0.000000e+00
  %144 = select i1 %141, i1 true, i1 %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140, %134
  %146 = load ptr, ptr @stderr, align 8, !tbaa !34
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.15, i32 noundef %116, ptr noundef nonnull %5) #15
  br label %440

148:                                              ; preds = %140
  %149 = load i32, ptr %51, align 8, !tbaa !54
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, ptr %48, align 4, !tbaa !53
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151, %148
  %155 = add nsw i32 %117, 1
  br label %156

156:                                              ; preds = %154, %151, %124, %121
  %157 = phi i32 [ %119, %124 ], [ %119, %121 ], [ %135, %154 ], [ %135, %151 ]
  %158 = phi i32 [ %118, %124 ], [ %118, %121 ], [ %136, %154 ], [ %136, %151 ]
  %159 = phi i32 [ %117, %124 ], [ %117, %121 ], [ %155, %154 ], [ %117, %151 ]
  %160 = add nuw nsw i32 %116, 1
  %161 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %115, !llvm.loop !67

163:                                              ; preds = %156, %110
  %164 = phi i32 [ 0, %110 ], [ %159, %156 ]
  %165 = load i32, ptr %112, align 4, !tbaa !66
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, ptr %9, align 4, !tbaa !61
  %169 = add nsw i32 %168, 1
  %170 = load i32, ptr %23, align 8, !tbaa !49
  %171 = sub i32 %169, %170
  store i32 %171, ptr %112, align 4, !tbaa !66
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i32, ptr %112, align 4, !tbaa !66
  %174 = load i32, ptr %23, align 8, !tbaa !49
  %175 = add nsw i32 %174, %173
  %176 = call i32 @fseek(ptr noundef nonnull %65, i64 noundef %111, i32 noundef 0)
  %177 = sext i32 %175 to i64
  %178 = shl nsw i64 %177, 3
  %179 = call noalias ptr @malloc(i64 noundef %178) #14
  %180 = icmp eq ptr %179, null
  br i1 %180, label %440, label %181

181:                                              ; preds = %172
  %182 = load i32, ptr %51, align 8, !tbaa !54
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, ptr %48, align 4, !tbaa !53
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %184, %181
  %188 = add nsw i32 %164, 1
  %189 = sext i32 %188 to i64
  %190 = shl nsw i64 %189, 3
  %191 = call noalias ptr @malloc(i64 noundef %190) #14
  %192 = icmp eq ptr %191, null
  br i1 %192, label %440, label %193

193:                                              ; preds = %187, %184
  %194 = phi ptr [ %191, %187 ], [ null, %184 ]
  %195 = load double, ptr %84, align 8, !tbaa !62
  %196 = call fastcc double @correct_fps(double noundef %195, ptr noundef %10)
  %197 = fcmp olt double %196, 0.000000e+00
  br i1 %197, label %440, label %198

198:                                              ; preds = %193
  store double 0.000000e+00, ptr %179, align 8, !tbaa !68
  %199 = add nsw i32 %175, -1
  %200 = icmp sgt i32 %175, 1
  br i1 %200, label %201, label %286

201:                                              ; preds = %198
  %202 = fdiv double 1.000000e+00, %196
  %203 = sext i32 %199 to i64
  %204 = sext i32 %199 to i64
  br label %205

205:                                              ; preds = %201, %282
  %206 = phi i1 [ %200, %201 ], [ %285, %282 ]
  %207 = phi i32 [ 0, %201 ], [ %284, %282 ]
  %208 = phi i32 [ 0, %201 ], [ %283, %282 ]
  br label %209

209:                                              ; preds = %205, %212
  %210 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %211 = load i8, ptr %5, align 16
  switch i8 %211, label %213 [
    i8 35, label %212
    i8 13, label %212
    i8 10, label %212
  ]

212:                                              ; preds = %209, %209, %209
  br i1 %206, label %209, label %286

213:                                              ; preds = %209
  %214 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #16
  %215 = icmp eq i32 %214, 3
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  store i32 %199, ptr %9, align 4, !tbaa !61
  store i32 %199, ptr %8, align 4, !tbaa !61
  br label %217

217:                                              ; preds = %216, %213
  %218 = load i32, ptr %8, align 4, !tbaa !61
  %219 = icmp slt i32 %207, %218
  %220 = icmp slt i32 %207, %199
  %221 = and i1 %220, %219
  br i1 %221, label %222, label %239

222:                                              ; preds = %217
  %223 = sext i32 %207 to i64
  %224 = sext i32 %218 to i64
  %225 = shl nsw i64 %223, 3
  %226 = getelementptr i8, ptr %179, i64 %225
  %227 = load double, ptr %226, align 8
  br label %228

228:                                              ; preds = %222, %228
  %229 = phi double [ %227, %222 ], [ %231, %228 ]
  %230 = phi i64 [ %223, %222 ], [ %232, %228 ]
  %231 = fadd double %202, %229
  %232 = add nsw i64 %230, 1
  %233 = getelementptr inbounds double, ptr %179, i64 %232
  store double %231, ptr %233, align 8, !tbaa !68
  %234 = icmp slt i64 %232, %224
  %235 = icmp slt i64 %232, %203
  %236 = and i1 %235, %234
  br i1 %236, label %228, label %237, !llvm.loop !69

237:                                              ; preds = %228
  %238 = trunc i64 %232 to i32
  br label %239

239:                                              ; preds = %237, %217
  %240 = phi i32 [ %207, %217 ], [ %238, %237 ]
  %241 = phi i1 [ %220, %217 ], [ %235, %237 ]
  br i1 %241, label %242, label %282

242:                                              ; preds = %239
  %243 = load i32, ptr %51, align 8, !tbaa !54
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, ptr %48, align 4, !tbaa !53
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %245, %242
  %249 = load double, ptr %7, align 8, !tbaa !68
  %250 = add nsw i32 %208, 1
  %251 = sext i32 %208 to i64
  %252 = getelementptr inbounds double, ptr %194, i64 %251
  store double %249, ptr %252, align 8, !tbaa !68
  br label %253

253:                                              ; preds = %248, %245
  %254 = phi i32 [ %250, %248 ], [ %208, %245 ]
  %255 = load double, ptr %7, align 8, !tbaa !68
  %256 = call fastcc double @correct_fps(double noundef %255, ptr noundef %10)
  store double %256, ptr %7, align 8, !tbaa !68
  %257 = fcmp olt double %256, 0.000000e+00
  br i1 %257, label %440, label %258

258:                                              ; preds = %253
  %259 = load i32, ptr %8, align 4, !tbaa !61
  %260 = load i32, ptr %9, align 4, !tbaa !61
  %261 = icmp sle i32 %259, %260
  %262 = icmp slt i32 %259, %199
  %263 = and i1 %262, %261
  br i1 %263, label %264, label %282

264:                                              ; preds = %258
  %265 = fdiv double 1.000000e+00, %256
  %266 = sext i32 %259 to i64
  %267 = sext i32 %260 to i64
  %268 = shl nsw i64 %266, 3
  %269 = getelementptr i8, ptr %179, i64 %268
  %270 = load double, ptr %269, align 8
  br label %271

271:                                              ; preds = %264, %271
  %272 = phi double [ %270, %264 ], [ %274, %271 ]
  %273 = phi i64 [ %266, %264 ], [ %275, %271 ]
  %274 = fadd double %265, %272
  %275 = add nsw i64 %273, 1
  %276 = getelementptr inbounds double, ptr %179, i64 %275
  store double %274, ptr %276, align 8, !tbaa !68
  %277 = icmp slt i64 %273, %267
  %278 = icmp slt i64 %275, %204
  %279 = and i1 %278, %277
  br i1 %279, label %271, label %280, !llvm.loop !70

280:                                              ; preds = %271
  %281 = trunc i64 %275 to i32
  br label %282

282:                                              ; preds = %280, %258, %239
  %283 = phi i32 [ %208, %239 ], [ %254, %258 ], [ %254, %280 ]
  %284 = phi i32 [ %240, %239 ], [ %259, %258 ], [ %281, %280 ]
  %285 = icmp slt i32 %284, %199
  br i1 %285, label %205, label %286, !llvm.loop !71

286:                                              ; preds = %282, %212, %198
  %287 = phi i32 [ 0, %198 ], [ %208, %212 ], [ %283, %282 ]
  %288 = load i32, ptr %51, align 8, !tbaa !54
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %48, align 4, !tbaa !53
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %290, %286
  %294 = load double, ptr %84, align 8, !tbaa !62
  %295 = sext i32 %287 to i64
  %296 = getelementptr inbounds double, ptr %194, i64 %295
  store double %294, ptr %296, align 8, !tbaa !68
  br label %297

297:                                              ; preds = %293, %290
  %298 = load i32, ptr %48, align 4, !tbaa !53
  %299 = icmp eq i32 %298, 0
  %300 = or i1 %289, %299
  br i1 %300, label %431, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  store i64 0, ptr %302, align 8, !tbaa !51
  %303 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  store i64 1000000000, ptr %303, align 8, !tbaa !52
  %304 = icmp sgt i32 %287, -1
  br i1 %304, label %305, label %348

305:                                              ; preds = %301
  %306 = add nuw nsw i32 %287, 1
  %307 = zext nneg i32 %306 to i64
  br label %312

308:                                              ; preds = %341
  %309 = add nuw nsw i64 %313, 1
  %310 = icmp ult i64 %309, %307
  %311 = icmp eq i64 %309, %307
  br i1 %311, label %348, label %312, !llvm.loop !72

312:                                              ; preds = %308, %305
  %313 = phi i64 [ 0, %305 ], [ %309, %308 ]
  %314 = phi i1 [ true, %305 ], [ %310, %308 ]
  %315 = getelementptr inbounds double, ptr %194, i64 %313
  %316 = load double, ptr %315, align 8, !tbaa !68
  %317 = call double @log10(double noundef %316) #16
  %318 = call double @llvm.floor.f64(double %317)
  %319 = call double @pow(double noundef 1.000000e+01, double noundef %318) #16
  %320 = fdiv double %316, %319
  %321 = fdiv double 1.000000e+09, %320
  %322 = call double @llvm.round.f64(double %321)
  %323 = fdiv double %322, %319
  %324 = fptoui double %323 to i64
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %338, label %326

326:                                              ; preds = %312
  %327 = load i64, ptr %302, align 8, !tbaa !51
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %326, %329
  %330 = phi i64 [ %335, %329 ], [ %327, %326 ]
  %331 = phi i64 [ %336, %329 ], [ %324, %326 ]
  %332 = phi i64 [ %337, %329 ], [ undef, %326 ]
  %333 = srem i64 %330, %331
  %334 = icmp eq i64 %333, 0
  %335 = select i1 %334, i64 %330, i64 %331
  %336 = select i1 %334, i64 %331, i64 %333
  %337 = select i1 %334, i64 %331, i64 %332
  br i1 %334, label %341, label %329

338:                                              ; preds = %326, %312
  %339 = shl i64 %324, 32
  %340 = ashr exact i64 %339, 32
  br label %341

341:                                              ; preds = %329, %338
  %342 = phi i64 [ %340, %338 ], [ %337, %329 ]
  store i64 %342, ptr %302, align 8, !tbaa !51
  %343 = add i64 %342, -4294967296
  %344 = icmp ult i64 %343, -4294967295
  br i1 %344, label %345, label %308

345:                                              ; preds = %341
  %346 = load ptr, ptr @stderr, align 8, !tbaa !34
  %347 = call i64 @fwrite(ptr nonnull @.str.24, i64 101, i64 1, ptr %346) #15
  br label %348

348:                                              ; preds = %308, %301, %345
  %349 = phi i1 [ %314, %345 ], [ %304, %301 ], [ %310, %308 ]
  br i1 %349, label %428, label %350

350:                                              ; preds = %348
  %351 = call i32 @fseek(ptr noundef nonnull %65, i64 noundef %111, i32 noundef 0)
  %352 = load double, ptr %84, align 8, !tbaa !62
  %353 = call double @log10(double noundef %352) #16
  %354 = call double @llvm.floor.f64(double %353)
  %355 = call double @pow(double noundef 1.000000e+01, double noundef %354) #16
  %356 = fdiv double %352, %355
  %357 = fdiv double 1.000000e+09, %356
  %358 = call double @llvm.round.f64(double %357)
  %359 = fdiv double %358, %355
  %360 = fdiv double 1.000000e+09, %359
  %361 = icmp sgt i32 %175, 1
  br i1 %361, label %362, label %428

362:                                              ; preds = %350
  %363 = fdiv double 1.000000e+00, %360
  %364 = sext i32 %199 to i64
  br label %370

365:                                              ; preds = %419
  %366 = trunc i64 %423 to i32
  br label %367

367:                                              ; preds = %365, %400
  %368 = phi i32 [ %391, %400 ], [ %366, %365 ]
  %369 = icmp slt i32 %368, %199
  br i1 %369, label %370, label %428

370:                                              ; preds = %362, %367
  %371 = phi i1 [ %361, %362 ], [ %369, %367 ]
  %372 = phi i32 [ 0, %362 ], [ %368, %367 ]
  br label %373

373:                                              ; preds = %370, %376
  %374 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %375 = load i8, ptr %5, align 16
  switch i8 %375, label %377 [
    i8 35, label %376
    i8 13, label %376
    i8 10, label %376
  ]

376:                                              ; preds = %373, %373, %373
  br i1 %371, label %373, label %428

377:                                              ; preds = %373
  %378 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #16
  %379 = icmp eq i32 %378, 3
  br i1 %379, label %381, label %380

380:                                              ; preds = %377
  store i32 %199, ptr %9, align 4, !tbaa !61
  store i32 %199, ptr %8, align 4, !tbaa !61
  br label %381

381:                                              ; preds = %380, %377
  %382 = load double, ptr %7, align 8, !tbaa !68
  %383 = call double @log10(double noundef %382) #16
  %384 = call double @llvm.floor.f64(double %383)
  %385 = call double @pow(double noundef 1.000000e+01, double noundef %384) #16
  %386 = fdiv double %382, %385
  %387 = fdiv double 1.000000e+09, %386
  %388 = call double @llvm.round.f64(double %387)
  %389 = fdiv double %388, %385
  %390 = fdiv double 1.000000e+09, %389
  store double %390, ptr %7, align 8, !tbaa !68
  %391 = load i32, ptr %8, align 4, !tbaa !61
  %392 = call i32 @llvm.smin.i32(i32 %199, i32 %391)
  %393 = icmp slt i32 %372, %392
  br i1 %393, label %394, label %400

394:                                              ; preds = %381
  %395 = sext i32 %372 to i64
  %396 = sext i32 %392 to i64
  %397 = shl nsw i64 %395, 3
  %398 = getelementptr i8, ptr %179, i64 %397
  %399 = load double, ptr %398, align 8
  br label %412

400:                                              ; preds = %412, %381
  %401 = load i32, ptr %9, align 4, !tbaa !61
  %402 = icmp sle i32 %391, %401
  %403 = icmp slt i32 %391, %199
  %404 = and i1 %403, %402
  br i1 %404, label %405, label %367, !llvm.loop !73

405:                                              ; preds = %400
  %406 = fdiv double 1.000000e+00, %390
  %407 = sext i32 %391 to i64
  %408 = sext i32 %401 to i64
  %409 = shl nsw i64 %407, 3
  %410 = getelementptr i8, ptr %179, i64 %409
  %411 = load double, ptr %410, align 8
  br label %419

412:                                              ; preds = %394, %412
  %413 = phi double [ %399, %394 ], [ %415, %412 ]
  %414 = phi i64 [ %395, %394 ], [ %416, %412 ]
  %415 = fadd double %363, %413
  %416 = add nsw i64 %414, 1
  %417 = getelementptr inbounds double, ptr %179, i64 %416
  store double %415, ptr %417, align 8, !tbaa !68
  %418 = icmp eq i64 %416, %396
  br i1 %418, label %400, label %412, !llvm.loop !74

419:                                              ; preds = %405, %419
  %420 = phi double [ %411, %405 ], [ %422, %419 ]
  %421 = phi i64 [ %407, %405 ], [ %423, %419 ]
  %422 = fadd double %406, %420
  %423 = add nsw i64 %421, 1
  %424 = getelementptr inbounds double, ptr %179, i64 %423
  store double %422, ptr %424, align 8, !tbaa !68
  %425 = icmp slt i64 %421, %408
  %426 = icmp slt i64 %423, %364
  %427 = and i1 %426, %425
  br i1 %427, label %419, label %365, !llvm.loop !75

428:                                              ; preds = %367, %376, %350, %348
  %429 = phi i32 [ 8, %348 ], [ 0, %350 ], [ 0, %376 ], [ 0, %367 ]
  %430 = phi double [ %196, %348 ], [ %360, %350 ], [ %360, %376 ], [ %360, %367 ]
  br i1 %349, label %440, label %431

431:                                              ; preds = %297, %428
  %432 = phi double [ %430, %428 ], [ %196, %297 ]
  %433 = icmp eq ptr %194, null
  br i1 %433, label %435, label %434

434:                                              ; preds = %431
  call void @free(ptr noundef %194) #16
  br label %435

435:                                              ; preds = %434, %431
  store double %432, ptr %84, align 8, !tbaa !62
  %436 = sext i32 %199 to i64
  %437 = getelementptr inbounds double, ptr %179, i64 %436
  %438 = load double, ptr %437, align 8, !tbaa !68
  %439 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 11
  store double %438, ptr %439, align 8, !tbaa !76
  br label %440

440:                                              ; preds = %253, %435, %428, %193, %187, %172, %145, %131, %107, %96
  %441 = phi i32 [ 1, %96 ], [ 1, %107 ], [ 1, %131 ], [ 1, %145 ], [ 0, %435 ], [ %429, %428 ], [ 1, %172 ], [ 8, %187 ], [ 8, %193 ], [ 8, %253 ]
  %442 = phi ptr [ null, %96 ], [ null, %107 ], [ null, %131 ], [ null, %145 ], [ %194, %435 ], [ %194, %428 ], [ null, %172 ], [ null, %187 ], [ %194, %193 ], [ %194, %253 ]
  %443 = phi ptr [ null, %96 ], [ null, %107 ], [ null, %131 ], [ null, %145 ], [ %179, %435 ], [ %179, %428 ], [ null, %172 ], [ %179, %187 ], [ %179, %193 ], [ %179, %253 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  switch i32 %441, label %809 [
    i32 0, label %705
    i32 8, label %801
  ]

444:                                              ; preds = %80
  %445 = call i64 @ftell(ptr noundef nonnull %65)
  %446 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 8
  store i32 0, ptr %446, align 4, !tbaa !66
  %447 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %448 = icmp eq ptr %447, null
  br i1 %448, label %473, label %449

449:                                              ; preds = %444, %459
  %450 = phi i32 [ %453, %459 ], [ 0, %444 ]
  %451 = phi i64 [ %460, %459 ], [ %445, %444 ]
  br label %452

452:                                              ; preds = %449, %469
  %453 = phi i32 [ %450, %449 ], [ %470, %469 ]
  %454 = load i8, ptr %5, align 16
  switch i8 %454, label %463 [
    i8 35, label %455
    i8 13, label %455
    i8 10, label %455
  ]

455:                                              ; preds = %452, %452, %452
  %456 = icmp eq i32 %453, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %455
  %458 = call i64 @ftell(ptr noundef nonnull %65)
  br label %459

459:                                              ; preds = %457, %455
  %460 = phi i64 [ %451, %455 ], [ %458, %457 ]
  %461 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %462 = icmp eq ptr %461, null
  br i1 %462, label %473, label %449, !llvm.loop !77

463:                                              ; preds = %452
  %464 = load i32, ptr %23, align 8, !tbaa !49
  %465 = icmp slt i32 %453, %464
  br i1 %465, label %469, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr %446, align 4, !tbaa !66
  %468 = add nsw i32 %467, 1
  store i32 %468, ptr %446, align 4, !tbaa !66
  br label %469

469:                                              ; preds = %466, %463
  %470 = add nsw i32 %453, 1
  %471 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %452, !llvm.loop !77

473:                                              ; preds = %459, %469, %444
  %474 = phi i64 [ %445, %444 ], [ %451, %469 ], [ %460, %459 ]
  %475 = load i32, ptr %446, align 4, !tbaa !66
  %476 = load i32, ptr %23, align 8, !tbaa !49
  %477 = add nsw i32 %476, %475
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %473
  %480 = load ptr, ptr @stderr, align 8, !tbaa !34
  %481 = call i64 @fwrite(ptr nonnull @.str.16, i64 59, i64 1, ptr %480) #15
  br label %701

482:                                              ; preds = %473
  %483 = call i32 @fseek(ptr noundef nonnull %65, i64 noundef %474, i32 noundef 0)
  %484 = sext i32 %477 to i64
  %485 = shl nsw i64 %484, 3
  %486 = call noalias ptr @malloc(i64 noundef %485) #14
  %487 = icmp eq ptr %486, null
  br i1 %487, label %701, label %488

488:                                              ; preds = %482
  %489 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %490 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %486) #16
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %497

492:                                              ; preds = %488
  %493 = icmp sgt i32 %477, 1
  br i1 %493, label %494, label %525

494:                                              ; preds = %492
  %495 = zext nneg i32 %477 to i64
  %496 = zext nneg i32 %477 to i64
  br label %522

497:                                              ; preds = %488
  %498 = load ptr, ptr @stderr, align 8, !tbaa !34
  %499 = call i64 @fwrite(ptr nonnull @.str.18, i64 51, i64 1, ptr %498) #15
  br label %701

500:                                              ; preds = %522, %503
  %501 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull %65)
  %502 = load i8, ptr %5, align 16
  switch i8 %502, label %504 [
    i8 35, label %503
    i8 13, label %503
    i8 10, label %503
  ]

503:                                              ; preds = %500, %500, %500
  br i1 %524, label %500, label %525

504:                                              ; preds = %500
  %505 = getelementptr inbounds double, ptr %486, i64 %523
  %506 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %505) #16
  %507 = load double, ptr %505, align 8, !tbaa !68
  %508 = fmul double %507, 1.000000e-03
  store double %508, ptr %505, align 8, !tbaa !68
  %509 = icmp eq i32 %506, 1
  br i1 %509, label %510, label %514

510:                                              ; preds = %504
  %511 = getelementptr double, ptr %505, i64 -1
  %512 = load double, ptr %511, align 8, !tbaa !68
  %513 = fcmp ugt double %508, %512
  br i1 %513, label %518, label %514

514:                                              ; preds = %510, %504
  %515 = trunc i64 %523 to i32
  %516 = load ptr, ptr @stderr, align 8, !tbaa !34
  %517 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %516, ptr noundef nonnull @.str.19, i32 noundef %515) #15
  br label %701

518:                                              ; preds = %510
  %519 = add nuw nsw i64 %523, 1
  %520 = icmp ult i64 %519, %495
  %521 = icmp eq i64 %519, %496
  br i1 %521, label %525, label %522, !llvm.loop !78

522:                                              ; preds = %494, %518
  %523 = phi i64 [ 1, %494 ], [ %519, %518 ]
  %524 = phi i1 [ %493, %494 ], [ %520, %518 ]
  br label %500

525:                                              ; preds = %518, %503, %492
  %526 = icmp eq i32 %477, 1
  br i1 %526, label %527, label %532

527:                                              ; preds = %525
  %528 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 1
  %529 = load i32, ptr %528, align 4, !tbaa !79
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  store i64 %530, ptr %531, align 8, !tbaa !52
  br label %674

532:                                              ; preds = %525
  %533 = load i32, ptr %51, align 8, !tbaa !54
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %674, label %535

535:                                              ; preds = %532
  %536 = add nsw i32 %477, -1
  %537 = sext i32 %536 to i64
  %538 = shl nsw i64 %537, 3
  %539 = call noalias ptr @malloc(i64 noundef %538) #14
  %540 = icmp eq ptr %539, null
  br i1 %540, label %701, label %541

541:                                              ; preds = %535
  %542 = icmp sgt i32 %477, 1
  br i1 %542, label %543, label %619

543:                                              ; preds = %541
  %544 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  %545 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  %546 = call i32 @llvm.smax.i32(i32 %536, i32 1)
  %547 = zext nneg i32 %546 to i64
  br label %548

548:                                              ; preds = %543, %617
  %549 = phi i64 [ 0, %543 ], [ %550, %617 ]
  %550 = add nuw nsw i64 %549, 1
  %551 = getelementptr inbounds double, ptr %486, i64 %550
  %552 = load double, ptr %551, align 8, !tbaa !68
  %553 = getelementptr inbounds double, ptr %486, i64 %549
  %554 = load double, ptr %553, align 8, !tbaa !68
  %555 = fsub double %552, %554
  %556 = fdiv double 1.000000e+00, %555
  %557 = getelementptr inbounds double, ptr %539, i64 %549
  store double %556, ptr %557, align 8, !tbaa !68
  %558 = load i64, ptr %544, align 8, !tbaa !52
  %559 = and i64 %558, 2147483648
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %561, label %617

561:                                              ; preds = %548
  %562 = call double @log10(double noundef %556) #16
  %563 = call double @llvm.floor.f64(double %562)
  %564 = call double @pow(double noundef 1.000000e+01, double noundef %563) #16
  %565 = fdiv double %556, %564
  %566 = load i64, ptr %545, align 8, !tbaa !51
  %567 = uitofp i64 %566 to double
  %568 = fmul double %565, %567
  %569 = call double @llvm.round.f64(double %568)
  %570 = fmul double %564, %569
  %571 = fptoui double %570 to i64
  %572 = icmp ugt i64 %571, 4294967295
  br i1 %572, label %592, label %582

573:                                              ; preds = %582
  %574 = add nuw i64 %583, 1
  %575 = mul i64 %566, %574
  %576 = uitofp i64 %575 to double
  %577 = fmul double %565, %576
  %578 = call double @llvm.round.f64(double %577)
  %579 = fmul double %564, %578
  %580 = fptoui double %579 to i64
  %581 = icmp ugt i64 %580, 4294967295
  br i1 %581, label %592, label %582, !llvm.loop !80

582:                                              ; preds = %561, %573
  %583 = phi i64 [ %574, %573 ], [ 1, %561 ]
  %584 = phi i64 [ %580, %573 ], [ %571, %561 ]
  %585 = phi double [ %576, %573 ], [ %567, %561 ]
  %586 = uitofp i64 %584 to double
  %587 = fdiv double %586, %585
  %588 = fdiv double %587, %564
  %589 = fsub double %588, %565
  %590 = call double @llvm.fabs.f64(double %589)
  %591 = fcmp olt double %590, 5.000000e-06
  br i1 %591, label %592, label %573

592:                                              ; preds = %573, %582, %561
  %593 = phi i64 [ %571, %561 ], [ %580, %573 ], [ %584, %582 ]
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %610, label %595

595:                                              ; preds = %592
  %596 = load i64, ptr %544, align 8, !tbaa !52
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %610, label %598

598:                                              ; preds = %595, %598
  %599 = phi i64 [ %604, %598 ], [ %596, %595 ]
  %600 = phi i64 [ %605, %598 ], [ %593, %595 ]
  %601 = phi i64 [ %606, %598 ], [ undef, %595 ]
  %602 = srem i64 %599, %600
  %603 = icmp eq i64 %602, 0
  %604 = select i1 %603, i64 %599, i64 %600
  %605 = select i1 %603, i64 %600, i64 %602
  %606 = select i1 %603, i64 %600, i64 %601
  br i1 %603, label %607, label %598

607:                                              ; preds = %598
  %608 = sdiv i64 %596, %606
  %609 = mul nsw i64 %608, %593
  br label %613

610:                                              ; preds = %595, %592
  %611 = shl i64 %593, 32
  %612 = ashr exact i64 %611, 32
  br label %613

613:                                              ; preds = %610, %607
  %614 = phi i64 [ %609, %607 ], [ %612, %610 ]
  store i64 %614, ptr %544, align 8, !tbaa !52
  %615 = icmp ugt i64 %614, 4294967295
  br i1 %615, label %616, label %617

616:                                              ; preds = %613
  store i32 0, ptr %51, align 8, !tbaa !54
  br label %617

617:                                              ; preds = %616, %613, %548
  %618 = icmp eq i64 %550, %547
  br i1 %618, label %619, label %548, !llvm.loop !81

619:                                              ; preds = %617, %541
  %620 = load i32, ptr %48, align 4, !tbaa !53
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %673, label %622

622:                                              ; preds = %619
  %623 = load i32, ptr %51, align 8, !tbaa !54
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %673

625:                                              ; preds = %622
  %626 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  store i64 0, ptr %626, align 8, !tbaa !51
  %627 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  store i64 1000000000, ptr %627, align 8, !tbaa !52
  %628 = icmp sgt i32 %477, 1
  br i1 %628, label %629, label %671

629:                                              ; preds = %625
  %630 = zext nneg i32 %536 to i64
  br label %635

631:                                              ; preds = %664
  %632 = add nuw nsw i64 %636, 1
  %633 = icmp ult i64 %632, %630
  %634 = icmp eq i64 %632, %630
  br i1 %634, label %671, label %635, !llvm.loop !72

635:                                              ; preds = %631, %629
  %636 = phi i64 [ 0, %629 ], [ %632, %631 ]
  %637 = phi i1 [ true, %629 ], [ %633, %631 ]
  %638 = getelementptr inbounds double, ptr %539, i64 %636
  %639 = load double, ptr %638, align 8, !tbaa !68
  %640 = call double @log10(double noundef %639) #16
  %641 = call double @llvm.floor.f64(double %640)
  %642 = call double @pow(double noundef 1.000000e+01, double noundef %641) #16
  %643 = fdiv double %639, %642
  %644 = fdiv double 1.000000e+09, %643
  %645 = call double @llvm.round.f64(double %644)
  %646 = fdiv double %645, %642
  %647 = fptoui double %646 to i64
  %648 = icmp eq i64 %647, 0
  br i1 %648, label %661, label %649

649:                                              ; preds = %635
  %650 = load i64, ptr %626, align 8, !tbaa !51
  %651 = icmp eq i64 %650, 0
  br i1 %651, label %661, label %652

652:                                              ; preds = %649, %652
  %653 = phi i64 [ %658, %652 ], [ %650, %649 ]
  %654 = phi i64 [ %659, %652 ], [ %647, %649 ]
  %655 = phi i64 [ %660, %652 ], [ undef, %649 ]
  %656 = srem i64 %653, %654
  %657 = icmp eq i64 %656, 0
  %658 = select i1 %657, i64 %653, i64 %654
  %659 = select i1 %657, i64 %654, i64 %656
  %660 = select i1 %657, i64 %654, i64 %655
  br i1 %657, label %664, label %652

661:                                              ; preds = %649, %635
  %662 = shl i64 %647, 32
  %663 = ashr exact i64 %662, 32
  br label %664

664:                                              ; preds = %652, %661
  %665 = phi i64 [ %663, %661 ], [ %660, %652 ]
  store i64 %665, ptr %626, align 8, !tbaa !51
  %666 = add i64 %665, -4294967296
  %667 = icmp ult i64 %666, -4294967295
  br i1 %667, label %668, label %631

668:                                              ; preds = %664
  %669 = load ptr, ptr @stderr, align 8, !tbaa !34
  %670 = call i64 @fwrite(ptr nonnull @.str.24, i64 101, i64 1, ptr %669) #15
  br label %671

671:                                              ; preds = %631, %625, %668
  %672 = phi i1 [ %637, %668 ], [ %628, %625 ], [ %633, %631 ]
  br i1 %672, label %701, label %673

673:                                              ; preds = %671, %622, %619
  call void @free(ptr noundef %539) #16
  br label %674

674:                                              ; preds = %673, %532, %527
  %675 = phi ptr [ null, %527 ], [ %539, %673 ], [ null, %532 ]
  %676 = icmp sgt i32 %477, 1
  br i1 %676, label %677, label %686

677:                                              ; preds = %674
  %678 = zext nneg i32 %477 to i64
  %679 = getelementptr double, ptr %486, i64 %678
  %680 = getelementptr double, ptr %679, i64 -1
  %681 = load double, ptr %680, align 8, !tbaa !68
  %682 = getelementptr double, ptr %679, i64 -2
  %683 = load double, ptr %682, align 8, !tbaa !68
  %684 = fsub double %681, %683
  %685 = fdiv double 1.000000e+00, %684
  br label %694

686:                                              ; preds = %674
  %687 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 1
  %688 = load i32, ptr %687, align 4, !tbaa !79
  %689 = uitofp i32 %688 to double
  %690 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 2
  %691 = load i32, ptr %690, align 4, !tbaa !55
  %692 = uitofp i32 %691 to double
  %693 = fdiv double %689, %692
  br label %694

694:                                              ; preds = %686, %677
  %695 = phi double [ %693, %686 ], [ %685, %677 ]
  %696 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 10
  store double %695, ptr %696, align 8, !tbaa !62
  %697 = getelementptr double, ptr %486, i64 %484
  %698 = getelementptr double, ptr %697, i64 -1
  %699 = load double, ptr %698, align 8, !tbaa !68
  %700 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 11
  store double %699, ptr %700, align 8, !tbaa !76
  br label %701

701:                                              ; preds = %694, %671, %535, %514, %497, %482, %479
  %702 = phi i32 [ 8, %497 ], [ 8, %514 ], [ 0, %694 ], [ 1, %479 ], [ 1, %482 ], [ 8, %535 ], [ 8, %671 ]
  %703 = phi ptr [ null, %497 ], [ null, %514 ], [ %675, %694 ], [ null, %479 ], [ null, %482 ], [ null, %535 ], [ %539, %671 ]
  %704 = phi ptr [ %486, %497 ], [ %486, %514 ], [ %486, %694 ], [ null, %479 ], [ null, %482 ], [ %486, %535 ], [ %486, %671 ]
  switch i32 %702, label %809 [
    i32 0, label %705
    i32 8, label %801
  ]

705:                                              ; preds = %701, %440
  %706 = phi ptr [ %442, %440 ], [ %703, %701 ]
  %707 = phi ptr [ %443, %440 ], [ %704, %701 ]
  %708 = load i32, ptr %51, align 8, !tbaa !54
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %713

710:                                              ; preds = %705
  %711 = load i32, ptr %48, align 4, !tbaa !53
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %732, label %713

713:                                              ; preds = %710, %705
  %714 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  %715 = load i64, ptr %714, align 8, !tbaa !51
  %716 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  %717 = load i64, ptr %716, align 8, !tbaa !52
  br label %718

718:                                              ; preds = %718, %713
  %719 = phi i64 [ %715, %713 ], [ %724, %718 ]
  %720 = phi i64 [ %717, %713 ], [ %725, %718 ]
  %721 = phi i64 [ undef, %713 ], [ %726, %718 ]
  %722 = srem i64 %719, %720
  %723 = icmp eq i64 %722, 0
  %724 = select i1 %723, i64 %719, i64 %720
  %725 = select i1 %723, i64 %720, i64 %722
  %726 = select i1 %723, i64 %720, i64 %721
  br i1 %723, label %727, label %718

727:                                              ; preds = %718
  %728 = udiv i64 %715, %726
  store i64 %728, ptr %714, align 8, !tbaa !51
  %729 = udiv i64 %717, %726
  store i64 %729, ptr %716, align 8, !tbaa !52
  %730 = load ptr, ptr @stderr, align 8, !tbaa !34
  %731 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %730, ptr noundef nonnull @.str.20, i64 noundef %728, i64 noundef %729) #15
  br label %740

732:                                              ; preds = %710
  %733 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  %734 = load i64, ptr %733, align 8, !tbaa !52
  %735 = add i64 %734, -4294967296
  %736 = icmp ult i64 %735, -4294967295
  br i1 %736, label %737, label %740

737:                                              ; preds = %732
  %738 = load ptr, ptr @stderr, align 8, !tbaa !34
  %739 = call i64 @fwrite(ptr nonnull @.str.21, i64 116, i64 1, ptr %738) #15
  br label %801

740:                                              ; preds = %732, %727
  %741 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 8
  %742 = load i32, ptr %741, align 4, !tbaa !66
  %743 = sext i32 %742 to i64
  %744 = shl nsw i64 %743, 3
  %745 = call noalias ptr @malloc(i64 noundef %744) #14
  %746 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 9
  store ptr %745, ptr %746, align 8, !tbaa !82
  %747 = icmp eq ptr %745, null
  br i1 %747, label %801, label %748

748:                                              ; preds = %740
  %749 = load i32, ptr %23, align 8, !tbaa !49
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds double, ptr %707, i64 %750
  %752 = load double, ptr %751, align 8, !tbaa !68
  %753 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  %754 = load i64, ptr %753, align 8, !tbaa !52
  %755 = uitofp i64 %754 to double
  %756 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  %757 = load i64, ptr %756, align 8, !tbaa !51
  %758 = uitofp i64 %757 to double
  %759 = fdiv double %755, %758
  %760 = call double @llvm.fmuladd.f64(double %752, double %759, double 5.000000e-01)
  %761 = fptosi double %760 to i64
  store i64 0, ptr %745, align 8, !tbaa !83
  %762 = icmp sgt i32 %742, 1
  br i1 %762, label %763, label %790

763:                                              ; preds = %748
  %764 = load i64, ptr %753, align 8, !tbaa !52
  %765 = uitofp i64 %764 to double
  %766 = load i64, ptr %756, align 8, !tbaa !51
  %767 = uitofp i64 %766 to double
  %768 = fdiv double %765, %767
  %769 = sext i32 %749 to i64
  %770 = zext nneg i32 %742 to i64
  br label %771

771:                                              ; preds = %763, %787
  %772 = phi i64 [ 1, %763 ], [ %788, %787 ]
  %773 = add nsw i64 %772, %769
  %774 = getelementptr inbounds double, ptr %707, i64 %773
  %775 = load double, ptr %774, align 8, !tbaa !68
  %776 = call double @llvm.fmuladd.f64(double %775, double %768, double 5.000000e-01)
  %777 = fptosi double %776 to i64
  %778 = getelementptr inbounds i64, ptr %745, i64 %772
  %779 = sub nsw i64 %777, %761
  store i64 %779, ptr %778, align 8, !tbaa !83
  %780 = getelementptr i64, ptr %778, i64 -1
  %781 = load i64, ptr %780, align 8, !tbaa !83
  %782 = icmp sgt i64 %779, %781
  br i1 %782, label %787, label %783

783:                                              ; preds = %771
  %784 = trunc i64 %772 to i32
  %785 = load ptr, ptr @stderr, align 8, !tbaa !34
  %786 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %785, ptr noundef nonnull @.str.22, i32 noundef %784) #15
  br label %801

787:                                              ; preds = %771
  %788 = add nuw nsw i64 %772, 1
  %789 = icmp eq i64 %788, %770
  br i1 %789, label %790, label %771, !llvm.loop !84

790:                                              ; preds = %787, %748
  call void @free(ptr noundef %707) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  %791 = call i32 @fclose(ptr noundef nonnull %65)
  %792 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 5
  %793 = load i64, ptr %792, align 8, !tbaa !51
  %794 = trunc i64 %793 to i32
  %795 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 8
  store i32 %794, ptr %795, align 4, !tbaa !85
  %796 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 6
  %797 = load i64, ptr %796, align 8, !tbaa !52
  %798 = trunc i64 %797 to i32
  %799 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 9
  store i32 %798, ptr %799, align 4, !tbaa !86
  %800 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 10
  store i32 1, ptr %800, align 4, !tbaa !87
  br label %816

801:                                              ; preds = %783, %740, %737, %701, %440
  %802 = phi ptr [ %442, %440 ], [ %706, %783 ], [ %706, %740 ], [ %706, %737 ], [ %703, %701 ]
  %803 = phi ptr [ %443, %440 ], [ %707, %783 ], [ %707, %740 ], [ %707, %737 ], [ %704, %701 ]
  %804 = icmp eq ptr %803, null
  br i1 %804, label %806, label %805

805:                                              ; preds = %801
  call void @free(ptr noundef %803) #16
  br label %806

806:                                              ; preds = %805, %801
  %807 = icmp eq ptr %802, null
  br i1 %807, label %809, label %808

808:                                              ; preds = %806
  call void @free(ptr noundef %802) #16
  br label %809

809:                                              ; preds = %806, %808, %701, %440, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  %810 = getelementptr inbounds %struct.timecode_hnd_t, ptr %10, i64 0, i32 9
  %811 = load ptr, ptr %810, align 8, !tbaa !82
  %812 = icmp eq ptr %811, null
  br i1 %812, label %814, label %813

813:                                              ; preds = %809
  call void @free(ptr noundef %811) #16
  br label %814

814:                                              ; preds = %813, %809
  %815 = call i32 @fclose(ptr noundef nonnull %65)
  br label %816

816:                                              ; preds = %790, %814, %67, %41, %12
  %817 = phi i32 [ -1, %41 ], [ -1, %814 ], [ 0, %790 ], [ -1, %67 ], [ -1, %12 ]
  ret i32 %817
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.timecode_hnd_t, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !46
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = tail call i32 %5(ptr noundef %0, ptr noundef %7, i32 noundef %2) #16
  %9 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = sub nsw i32 %2, %10
  %12 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !66
  %14 = icmp slt i32 %11, %13
  %15 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  br i1 %14, label %17, label %21

17:                                               ; preds = %3
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i64, ptr %16, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !83
  br label %45

21:                                               ; preds = %3
  %22 = icmp eq ptr %16, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr @stderr, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 10
  %26 = load double, ptr %25, align 8, !tbaa !62
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.25, i32 noundef %2, double noundef %26) #15
  %28 = load ptr, ptr %15, align 8, !tbaa !82
  tail call void @free(ptr noundef %28) #16
  store ptr null, ptr %15, align 8, !tbaa !82
  br label %29

29:                                               ; preds = %23, %21
  %30 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 10
  %31 = load double, ptr %30, align 8, !tbaa !62
  %32 = fdiv double 1.000000e+00, %31
  %33 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 11
  %34 = load double, ptr %33, align 8, !tbaa !76
  %35 = fadd double %34, %32
  store double %35, ptr %33, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  %37 = load i64, ptr %36, align 8, !tbaa !52
  %38 = uitofp i64 %37 to double
  %39 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  %40 = load i64, ptr %39, align 8, !tbaa !51
  %41 = uitofp i64 %40 to double
  %42 = fdiv double %38, %41
  %43 = tail call double @llvm.fmuladd.f64(double %35, double %42, double 5.000000e-01)
  %44 = fptosi double %43 to i64
  br label %45

45:                                               ; preds = %29, %17
  %46 = phi i64 [ %44, %29 ], [ %20, %17 ]
  %47 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 4
  store i64 %46, ptr %47, align 8, !tbaa !89
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call i32 %4(ptr noundef %0, ptr noundef %8) #16
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.timecode_hnd_t, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.cli_input_t, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.timecode_hnd_t, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = tail call i32 %8(ptr noundef %10) #16
  tail call void @free(ptr noundef %0) #16
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @correct_fps(double noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = tail call double @log10(double noundef %0) #16
  %4 = tail call double @llvm.floor.f64(double %3)
  %5 = tail call double @pow(double noundef 1.000000e+01, double noundef %4) #16
  %6 = fdiv double %0, %5
  %7 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !51
  %9 = uitofp i64 %8 to double
  %10 = fmul double %6, %9
  %11 = tail call double @llvm.round.f64(double %10)
  %12 = fmul double %5, %11
  %13 = fptoui double %12 to i64
  %14 = icmp ugt i64 %13, 4294967295
  br i1 %14, label %24, label %27

15:                                               ; preds = %27
  %16 = add nuw i64 %28, 1
  %17 = mul i64 %8, %16
  %18 = uitofp i64 %17 to double
  %19 = fmul double %6, %18
  %20 = tail call double @llvm.round.f64(double %19)
  %21 = fmul double %5, %20
  %22 = fptoui double %21 to i64
  %23 = icmp ugt i64 %22, 4294967295
  br i1 %23, label %24, label %27, !llvm.loop !95

24:                                               ; preds = %15, %2
  %25 = load ptr, ptr @stderr, align 8, !tbaa !34
  %26 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 125, i64 1, ptr %25) #15
  br label %64

27:                                               ; preds = %2, %15
  %28 = phi i64 [ %16, %15 ], [ 1, %2 ]
  %29 = phi i64 [ %22, %15 ], [ %13, %2 ]
  %30 = phi double [ %18, %15 ], [ %9, %2 ]
  %31 = uitofp i64 %29 to double
  %32 = fdiv double %31, %30
  %33 = fdiv double %32, %5
  %34 = fsub double %33, %6
  %35 = tail call double @llvm.fabs.f64(double %34)
  %36 = fcmp olt double %35, 5.000000e-06
  br i1 %36, label %37, label %15

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !54
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  %43 = load i64, ptr %42, align 8, !tbaa !52
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41, %45
  %46 = phi i64 [ %51, %45 ], [ %43, %41 ]
  %47 = phi i64 [ %52, %45 ], [ %29, %41 ]
  %48 = phi i64 [ %53, %45 ], [ undef, %41 ]
  %49 = srem i64 %46, %47
  %50 = icmp eq i64 %49, 0
  %51 = select i1 %50, i64 %46, i64 %47
  %52 = select i1 %50, i64 %47, i64 %49
  %53 = select i1 %50, i64 %47, i64 %48
  br i1 %50, label %54, label %45

54:                                               ; preds = %45
  %55 = sdiv i64 %43, %53
  %56 = mul nsw i64 %55, %29
  br label %60

57:                                               ; preds = %41
  %58 = shl nuw i64 %29, 32
  %59 = ashr exact i64 %58, 32
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i64 [ %56, %54 ], [ %59, %57 ]
  store i64 %61, ptr %42, align 8, !tbaa !52
  %62 = icmp ugt i64 %61, 4294967295
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, ptr %38, align 8, !tbaa !54
  br label %64

64:                                               ; preds = %37, %63, %60, %24
  %65 = phi double [ -1.000000e+00, %24 ], [ %32, %60 ], [ %32, %63 ], [ %32, %37 ]
  ret double %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold }
attributes #16 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 8, !34}
!39 = !{!40, !35, i64 56}
!40 = !{!"", !41, i64 0, !35, i64 56, !42, i64 64, !42, i64 68, !42, i64 72, !43, i64 80, !43, i64 88, !42, i64 96, !42, i64 100, !35, i64 104, !44, i64 112, !44, i64 120}
!41 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48}
!42 = !{!"int", !36, i64 0}
!43 = !{!"long", !36, i64 0}
!44 = !{!"double", !36, i64 0}
!45 = !{!41, !35, i64 8}
!46 = !{!40, !42, i64 64}
!47 = !{!48, !42, i64 24}
!48 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !42, i64 24}
!49 = !{!40, !42, i64 96}
!50 = !{!48, !35, i64 16}
!51 = !{!40, !43, i64 80}
!52 = !{!40, !43, i64 88}
!53 = !{!40, !42, i64 68}
!54 = !{!40, !42, i64 72}
!55 = !{!56, !42, i64 8}
!56 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!57 = !{!40, !35, i64 16}
!58 = !{!41, !35, i64 16}
!59 = !{!40, !35, i64 40}
!60 = !{!41, !35, i64 40}
!61 = !{!42, !42, i64 0}
!62 = !{!40, !44, i64 112}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!40, !42, i64 100}
!67 = distinct !{!67, !64, !65}
!68 = !{!44, !44, i64 0}
!69 = distinct !{!69, !64, !65}
!70 = distinct !{!70, !64, !65}
!71 = distinct !{!71, !64, !65}
!72 = distinct !{!72, !64, !65}
!73 = distinct !{!73, !64, !65}
!74 = distinct !{!74, !64, !65}
!75 = distinct !{!75, !64, !65}
!76 = !{!40, !44, i64 120}
!77 = distinct !{!77, !64, !65}
!78 = distinct !{!78, !64, !65}
!79 = !{!56, !42, i64 4}
!80 = distinct !{!80, !65}
!81 = distinct !{!81, !64, !65}
!82 = !{!40, !35, i64 104}
!83 = !{!43, !43, i64 0}
!84 = distinct !{!84, !64, !65}
!85 = !{!56, !42, i64 32}
!86 = !{!56, !42, i64 36}
!87 = !{!56, !42, i64 40}
!88 = !{!40, !35, i64 24}
!89 = !{!90, !43, i64 16}
!90 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !43, i64 16, !43, i64 24, !35, i64 32, !91, i64 40, !92, i64 96, !35, i64 128}
!91 = !{!"", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 24}
!92 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!93 = !{!40, !35, i64 32}
!94 = !{!40, !35, i64 48}
!95 = distinct !{!95, !65}
