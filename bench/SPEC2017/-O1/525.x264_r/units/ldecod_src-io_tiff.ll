; ModuleID = 'ldecod_src/io_tiff.c'
source_filename = "ldecod_src/io_tiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Tiff = type { ptr, ptr, ptr, i32, i32, %struct.TiffImageFileHeader, i16, [3 x i32], i32, i32, i32, [1080 x i32], [1080 x i32], [2 x i32], [2 x i32], ptr, ptr }
%struct.TiffImageFileHeader = type { i16, i16, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ReadTIFFImage.t = internal global %struct.Tiff zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [103 x i8] c"ReadTIFFImage:  RGB input file has not been declared as interleaved but only interleaved is supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%0*d%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%*d%s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ReadTIFFImage:  file name is too large\0A\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"ReadTIFFImage:  Tiff height (%u) different from encoder input height (%d) . Exiting...\0A\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"ReadTIFFImage:  Tiff width (%u) different from encoder input width (%d) . Exiting...\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"ReadTIFFImage only supports pic_unit_size_on_disk of 8 or 16 not %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ReadTIFFImage:  Unsupported ColorFormat (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"ReadTIFFImage only supports pic_unit_size_shift3 of 1 or 2 not %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Couldn't open to read:  %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"First two bytes indicate:  Not a TIFF file\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"ImageFileHeader.arbitrary != 42\0A\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"readDirectoryEntry:  ImageLength (%d) exceeds builtin maximum of %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"BitsPerSample (only [3] supported)\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"BitsPerSample must be the same for all samples\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Only 8 or 16 BitsPerSample is supported\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Only uncompressed TIFF files supported\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Only Orientation 1 is supported\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"RGB_YUV_initialize:  Unsupported videoCode (%d)\0A\00", align 1
@Coef = internal unnamed_addr constant [9 x [3 x double]] [[3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.126000e-01, double 7.152000e-01, double 7.220000e-02], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 3.000000e-01, double 5.900000e-01, double 1.100000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.120000e-01, double 7.010000e-01, double 0x3FB645A1CAC08312], [3 x double] [double 2.126390e-01, double 7.151690e-01, double 7.219200e-02]], align 16
@.str.19 = private unnamed_addr constant [46 x i8] c"ERROR: RGB_YUV_initialize: yr+yg+yb=%d sy=%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"ERROR: RGB_YUV_initialize: ur+ug+ub=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"ERROR: RGB_YUV_initialize: vr+vg+vb=%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @constructTiff(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @destructTiff(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #18
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #18
  store ptr null, ptr %0, align 8, !tbaa !42
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @horizontal_half_1chan_cosite(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %271

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = mul nsw i32 %3, 3
  %12 = sext i32 %11 to i64
  %13 = mul nsw i32 %3, 5
  %14 = sext i32 %13 to i64
  %15 = mul nsw i32 %3, 7
  %16 = sext i32 %15 to i64
  %17 = sext i32 %5 to i64
  %18 = shl nsw i32 %3, 1
  %19 = sext i32 %18 to i64
  %20 = add nsw i32 %1, -8
  %21 = icmp sgt i32 %1, 16
  %22 = sext i32 %3 to i64
  %23 = sub nsw i64 0, %22
  %24 = mul nsw i32 %3, 3
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 0, %25
  %27 = mul nsw i32 %3, 5
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = mul nsw i32 %3, 7
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 0, %31
  %33 = sext i32 %5 to i64
  %34 = shl nsw i32 %3, 1
  %35 = sext i32 %34 to i64
  %36 = and i32 %1, -2
  %37 = add nsw i32 %1, -1
  %38 = add nsw i32 %1, -3
  %39 = add nsw i32 %1, -5
  %40 = add nsw i32 %1, -7
  %41 = sext i32 %3 to i64
  %42 = sub nsw i64 0, %41
  %43 = mul nsw i32 %3, 3
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = mul nsw i32 %3, 5
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 0, %47
  %49 = mul nsw i32 %3, 7
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 0, %50
  %52 = sext i32 %5 to i64
  %53 = shl nsw i32 %3, 1
  %54 = sext i32 %53 to i64
  %55 = sext i32 %3 to i64
  %56 = add i32 %1, -17
  %57 = and i32 %56, -2
  %58 = add i32 %57, 10
  %59 = sext i32 %3 to i64
  br label %60

60:                                               ; preds = %9, %266
  %61 = phi ptr [ %4, %9 ], [ %268, %266 ]
  %62 = phi ptr [ %0, %9 ], [ %267, %266 ]
  %63 = phi i32 [ 0, %9 ], [ %269, %266 ]
  br label %64

64:                                               ; preds = %60, %127
  %65 = phi i64 [ 0, %60 ], [ %132, %127 ]
  %66 = phi ptr [ %61, %60 ], [ %130, %127 ]
  %67 = phi ptr [ %62, %60 ], [ %131, %127 ]
  %68 = icmp eq i64 %65, 0
  %69 = trunc i64 %65 to i32
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 3)
  %71 = trunc i64 %65 to i32
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 5)
  %73 = load i16, ptr %67, align 2, !tbaa !43
  %74 = zext i16 %73 to i32
  %75 = shl nuw nsw i32 %74, 11
  %76 = select i1 %68, i64 0, i64 %59
  %77 = sub nsw i64 0, %76
  %78 = getelementptr inbounds i16, ptr %67, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !43
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds i16, ptr %67, i64 %10
  %82 = load i16, ptr %81, align 2, !tbaa !43
  %83 = zext i16 %82 to i32
  %84 = add nuw nsw i32 %83, %80
  %85 = mul nuw nsw i32 %84, 1228
  %86 = add nuw nsw i32 %85, %75
  %87 = mul nsw i32 %70, %3
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i16, ptr %67, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !43
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds i16, ptr %67, i64 %12
  %94 = load i16, ptr %93, align 2, !tbaa !43
  %95 = zext i16 %94 to i32
  %96 = add nuw nsw i32 %95, %92
  %97 = mul nsw i32 %96, -262
  %98 = add nsw i32 %86, %97
  %99 = mul nsw i32 %72, %3
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 0, %100
  %102 = getelementptr inbounds i16, ptr %67, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !43
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds i16, ptr %67, i64 %14
  %106 = load i16, ptr %105, align 2, !tbaa !43
  %107 = zext i16 %106 to i32
  %108 = add nuw nsw i32 %107, %104
  %109 = mul nuw nsw i32 %108, 47
  %110 = add nsw i32 %98, %109
  %111 = mul nsw i64 %65, %55
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i16, ptr %67, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !43
  %115 = zext i16 %114 to i32
  %116 = getelementptr inbounds i16, ptr %67, i64 %16
  %117 = load i16, ptr %116, align 2, !tbaa !43
  %118 = zext i16 %117 to i32
  %119 = add nuw nsw i32 %118, %115
  %120 = mul nuw nsw i32 %119, 11
  %121 = add nsw i32 %110, %120
  %122 = icmp slt i32 %121, -6143
  br i1 %122, label %127, label %123

123:                                              ; preds = %64
  %124 = add nsw i32 %121, 2048
  %125 = sdiv i32 %124, 4096
  %126 = tail call i32 @llvm.smin.i32(i32 %125, i32 %6)
  br label %127

127:                                              ; preds = %123, %64
  %128 = phi i32 [ 0, %64 ], [ %126, %123 ]
  %129 = trunc i32 %128 to i16
  store i16 %129, ptr %66, align 2, !tbaa !43
  %130 = getelementptr inbounds i16, ptr %66, i64 %17
  %131 = getelementptr inbounds i16, ptr %67, i64 %19
  %132 = add nuw nsw i64 %65, 2
  %133 = icmp ult i64 %65, 6
  br i1 %133, label %64, label %134, !llvm.loop !44

134:                                              ; preds = %127
  br i1 %21, label %135, label %190

135:                                              ; preds = %134, %183
  %136 = phi ptr [ %186, %183 ], [ %130, %134 ]
  %137 = phi ptr [ %187, %183 ], [ %131, %134 ]
  %138 = phi i32 [ %188, %183 ], [ 8, %134 ]
  %139 = load i16, ptr %137, align 2, !tbaa !43
  %140 = zext i16 %139 to i32
  %141 = shl nuw nsw i32 %140, 11
  %142 = getelementptr inbounds i16, ptr %137, i64 %23
  %143 = load i16, ptr %142, align 2, !tbaa !43
  %144 = zext i16 %143 to i32
  %145 = getelementptr inbounds i16, ptr %137, i64 %22
  %146 = load i16, ptr %145, align 2, !tbaa !43
  %147 = zext i16 %146 to i32
  %148 = add nuw nsw i32 %147, %144
  %149 = mul nuw nsw i32 %148, 1228
  %150 = add nuw nsw i32 %149, %141
  %151 = getelementptr inbounds i16, ptr %137, i64 %26
  %152 = load i16, ptr %151, align 2, !tbaa !43
  %153 = zext i16 %152 to i32
  %154 = getelementptr inbounds i16, ptr %137, i64 %25
  %155 = load i16, ptr %154, align 2, !tbaa !43
  %156 = zext i16 %155 to i32
  %157 = add nuw nsw i32 %156, %153
  %158 = mul nsw i32 %157, -262
  %159 = add nsw i32 %150, %158
  %160 = getelementptr inbounds i16, ptr %137, i64 %29
  %161 = load i16, ptr %160, align 2, !tbaa !43
  %162 = zext i16 %161 to i32
  %163 = getelementptr inbounds i16, ptr %137, i64 %28
  %164 = load i16, ptr %163, align 2, !tbaa !43
  %165 = zext i16 %164 to i32
  %166 = add nuw nsw i32 %165, %162
  %167 = mul nuw nsw i32 %166, 47
  %168 = add nsw i32 %159, %167
  %169 = getelementptr inbounds i16, ptr %137, i64 %32
  %170 = load i16, ptr %169, align 2, !tbaa !43
  %171 = zext i16 %170 to i32
  %172 = getelementptr inbounds i16, ptr %137, i64 %31
  %173 = load i16, ptr %172, align 2, !tbaa !43
  %174 = zext i16 %173 to i32
  %175 = add nuw nsw i32 %174, %171
  %176 = mul nuw nsw i32 %175, 11
  %177 = add nsw i32 %168, %176
  %178 = icmp slt i32 %177, -6143
  br i1 %178, label %183, label %179

179:                                              ; preds = %135
  %180 = add nsw i32 %177, 2048
  %181 = sdiv i32 %180, 4096
  %182 = tail call i32 @llvm.smin.i32(i32 %181, i32 %6)
  br label %183

183:                                              ; preds = %179, %135
  %184 = phi i32 [ 0, %135 ], [ %182, %179 ]
  %185 = trunc i32 %184 to i16
  store i16 %185, ptr %136, align 2, !tbaa !43
  %186 = getelementptr inbounds i16, ptr %136, i64 %33
  %187 = getelementptr inbounds i16, ptr %137, i64 %35
  %188 = add nuw nsw i32 %138, 2
  %189 = icmp slt i32 %188, %20
  br i1 %189, label %135, label %190, !llvm.loop !47

190:                                              ; preds = %183, %134
  %191 = phi i32 [ 8, %134 ], [ %58, %183 ]
  %192 = phi ptr [ %131, %134 ], [ %187, %183 ]
  %193 = phi ptr [ %130, %134 ], [ %186, %183 ]
  %194 = icmp slt i32 %191, %36
  br i1 %194, label %195, label %266

195:                                              ; preds = %190, %259
  %196 = phi ptr [ %262, %259 ], [ %193, %190 ]
  %197 = phi ptr [ %263, %259 ], [ %192, %190 ]
  %198 = phi i32 [ %264, %259 ], [ %191, %190 ]
  %199 = icmp slt i32 %198, %37
  %200 = icmp slt i32 %198, %38
  %201 = sub nsw i32 %37, %198
  %202 = select i1 %200, i32 3, i32 %201
  %203 = icmp slt i32 %198, %39
  %204 = select i1 %203, i32 5, i32 %201
  %205 = icmp slt i32 %198, %40
  %206 = select i1 %205, i32 7, i32 %201
  %207 = load i16, ptr %197, align 2, !tbaa !43
  %208 = zext i16 %207 to i32
  %209 = shl nuw nsw i32 %208, 11
  %210 = getelementptr inbounds i16, ptr %197, i64 %42
  %211 = load i16, ptr %210, align 2, !tbaa !43
  %212 = zext i16 %211 to i32
  %213 = select i1 %199, i32 %3, i32 0
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i16, ptr %197, i64 %214
  %216 = load i16, ptr %215, align 2, !tbaa !43
  %217 = zext i16 %216 to i32
  %218 = add nuw nsw i32 %217, %212
  %219 = mul nuw nsw i32 %218, 1228
  %220 = add nuw nsw i32 %219, %209
  %221 = getelementptr inbounds i16, ptr %197, i64 %45
  %222 = load i16, ptr %221, align 2, !tbaa !43
  %223 = zext i16 %222 to i32
  %224 = mul nsw i32 %202, %3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i16, ptr %197, i64 %225
  %227 = load i16, ptr %226, align 2, !tbaa !43
  %228 = zext i16 %227 to i32
  %229 = add nuw nsw i32 %228, %223
  %230 = mul nsw i32 %229, -262
  %231 = add nsw i32 %220, %230
  %232 = getelementptr inbounds i16, ptr %197, i64 %48
  %233 = load i16, ptr %232, align 2, !tbaa !43
  %234 = zext i16 %233 to i32
  %235 = mul nsw i32 %204, %3
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i16, ptr %197, i64 %236
  %238 = load i16, ptr %237, align 2, !tbaa !43
  %239 = zext i16 %238 to i32
  %240 = add nuw nsw i32 %239, %234
  %241 = mul nuw nsw i32 %240, 47
  %242 = add nsw i32 %231, %241
  %243 = getelementptr inbounds i16, ptr %197, i64 %51
  %244 = load i16, ptr %243, align 2, !tbaa !43
  %245 = zext i16 %244 to i32
  %246 = mul nsw i32 %206, %3
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i16, ptr %197, i64 %247
  %249 = load i16, ptr %248, align 2, !tbaa !43
  %250 = zext i16 %249 to i32
  %251 = add nuw nsw i32 %250, %245
  %252 = mul nuw nsw i32 %251, 11
  %253 = add nsw i32 %242, %252
  %254 = icmp slt i32 %253, -6143
  br i1 %254, label %259, label %255

255:                                              ; preds = %195
  %256 = add nsw i32 %253, 2048
  %257 = sdiv i32 %256, 4096
  %258 = tail call i32 @llvm.smin.i32(i32 %257, i32 %6)
  br label %259

259:                                              ; preds = %255, %195
  %260 = phi i32 [ 0, %195 ], [ %258, %255 ]
  %261 = trunc i32 %260 to i16
  store i16 %261, ptr %196, align 2, !tbaa !43
  %262 = getelementptr inbounds i16, ptr %196, i64 %52
  %263 = getelementptr inbounds i16, ptr %197, i64 %54
  %264 = add nuw nsw i32 %198, 2
  %265 = icmp slt i32 %264, %36
  br i1 %265, label %195, label %266, !llvm.loop !48

266:                                              ; preds = %259, %190
  %267 = phi ptr [ %192, %190 ], [ %263, %259 ]
  %268 = phi ptr [ %193, %190 ], [ %262, %259 ]
  %269 = add nuw nsw i32 %63, 1
  %270 = icmp eq i32 %269, %2
  br i1 %270, label %271, label %60, !llvm.loop !49

271:                                              ; preds = %266, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @vertical_half_1chan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = mul nsw i32 %3, %1
  %9 = icmp sgt i32 %1, 0
  %10 = sext i32 %8 to i64
  %11 = sext i32 %8 to i64
  %12 = shl nsw i32 %8, 1
  %13 = sext i32 %12 to i64
  %14 = mul nsw i32 %8, 3
  %15 = sext i32 %14 to i64
  %16 = shl nsw i32 %8, 2
  %17 = sext i32 %16 to i64
  %18 = mul nsw i32 %8, 5
  %19 = sext i32 %18 to i64
  %20 = mul nsw i32 %8, 6
  %21 = sext i32 %20 to i64
  %22 = sext i32 %5 to i64
  %23 = sext i32 %3 to i64
  %24 = sext i32 %8 to i64
  %25 = sext i32 %8 to i64
  %26 = sext i32 %8 to i64
  br label %27

27:                                               ; preds = %7, %116
  %28 = phi i64 [ 0, %7 ], [ %120, %116 ]
  %29 = phi ptr [ %4, %7 ], [ %118, %116 ]
  %30 = phi ptr [ %0, %7 ], [ %119, %116 ]
  br i1 %9, label %31, label %116

31:                                               ; preds = %27
  %32 = trunc i64 %28 to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 3)
  %34 = icmp eq i64 %28, 0
  %35 = select i1 %34, i32 0, i32 2
  %36 = select i1 %34, i64 0, i64 %26
  %37 = sub nsw i64 0, %36
  %38 = mul nsw i32 %35, %8
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = mul nsw i32 %33, %8
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 0, %42
  %44 = mul nsw i64 %28, %25
  %45 = sub nsw i64 0, %44
  %46 = mul nsw i64 %28, %24
  %47 = sub nsw i64 0, %46
  br label %48

48:                                               ; preds = %31, %109
  %49 = phi ptr [ %29, %31 ], [ %112, %109 ]
  %50 = phi ptr [ %30, %31 ], [ %113, %109 ]
  %51 = phi i32 [ 0, %31 ], [ %114, %109 ]
  %52 = load i16, ptr %50, align 2, !tbaa !43
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds i16, ptr %50, i64 %11
  %55 = load i16, ptr %54, align 2, !tbaa !43
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %56, %53
  %58 = mul nuw nsw i32 %57, 225
  %59 = getelementptr inbounds i16, ptr %50, i64 %37
  %60 = load i16, ptr %59, align 2, !tbaa !43
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds i16, ptr %50, i64 %13
  %63 = load i16, ptr %62, align 2, !tbaa !43
  %64 = zext i16 %63 to i32
  %65 = add nuw nsw i32 %64, %61
  %66 = mul nuw nsw i32 %65, 69
  %67 = add nuw nsw i32 %66, %58
  %68 = getelementptr inbounds i16, ptr %50, i64 %40
  %69 = load i16, ptr %68, align 2, !tbaa !43
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds i16, ptr %50, i64 %15
  %72 = load i16, ptr %71, align 2, !tbaa !43
  %73 = zext i16 %72 to i32
  %74 = add nuw nsw i32 %73, %70
  %75 = mul nsw i32 %74, -30
  %76 = add nsw i32 %67, %75
  %77 = getelementptr inbounds i16, ptr %50, i64 %43
  %78 = load i16, ptr %77, align 2, !tbaa !43
  %79 = zext i16 %78 to i32
  %80 = getelementptr inbounds i16, ptr %50, i64 %17
  %81 = load i16, ptr %80, align 2, !tbaa !43
  %82 = zext i16 %81 to i32
  %83 = add nuw nsw i32 %82, %79
  %84 = shl nuw nsw i32 %83, 4
  %85 = sub nsw i32 %76, %84
  %86 = getelementptr inbounds i16, ptr %50, i64 %45
  %87 = load i16, ptr %86, align 2, !tbaa !43
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds i16, ptr %50, i64 %19
  %90 = load i16, ptr %89, align 2, !tbaa !43
  %91 = zext i16 %90 to i32
  %92 = add nuw nsw i32 %91, %88
  %93 = mul nuw nsw i32 %92, 6
  %94 = add nsw i32 %85, %93
  %95 = getelementptr inbounds i16, ptr %50, i64 %47
  %96 = load i16, ptr %95, align 2, !tbaa !43
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds i16, ptr %50, i64 %21
  %99 = load i16, ptr %98, align 2, !tbaa !43
  %100 = zext i16 %99 to i32
  %101 = add nuw nsw i32 %100, %97
  %102 = shl nuw nsw i32 %101, 1
  %103 = add nsw i32 %94, %102
  %104 = icmp slt i32 %103, -767
  br i1 %104, label %109, label %105

105:                                              ; preds = %48
  %106 = add nsw i32 %103, 256
  %107 = sdiv i32 %106, 512
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 %6)
  br label %109

109:                                              ; preds = %105, %48
  %110 = phi i32 [ 0, %48 ], [ %108, %105 ]
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %49, align 2, !tbaa !43
  %112 = getelementptr inbounds i16, ptr %49, i64 %22
  %113 = getelementptr inbounds i16, ptr %50, i64 %23
  %114 = add nuw nsw i32 %51, 1
  %115 = icmp eq i32 %114, %1
  br i1 %115, label %116, label %48, !llvm.loop !50

116:                                              ; preds = %109, %27
  %117 = phi ptr [ %30, %27 ], [ %113, %109 ]
  %118 = phi ptr [ %29, %27 ], [ %112, %109 ]
  %119 = getelementptr inbounds i16, ptr %117, i64 %10
  %120 = add nuw nsw i64 %28, 2
  %121 = icmp ult i64 %28, 4
  br i1 %121, label %27, label %122, !llvm.loop !51

122:                                              ; preds = %116
  %123 = add nsw i32 %2, -6
  %124 = icmp sgt i32 %2, 12
  br i1 %124, label %125, label %228

125:                                              ; preds = %122
  %126 = icmp sgt i32 %1, 0
  %127 = sext i32 %8 to i64
  %128 = sub nsw i64 0, %127
  %129 = shl nsw i32 %8, 1
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 0, %130
  %132 = mul nsw i32 %8, 3
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 0, %133
  %135 = shl nsw i32 %8, 2
  %136 = sext i32 %135 to i64
  %137 = sub nsw i64 0, %136
  %138 = mul nsw i32 %8, 5
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 0, %139
  %141 = mul nsw i32 %8, 6
  %142 = sext i32 %141 to i64
  %143 = sext i32 %5 to i64
  %144 = sext i32 %3 to i64
  %145 = sext i32 %8 to i64
  %146 = add nsw i32 %2, -13
  %147 = and i32 %146, -2
  br label %148

148:                                              ; preds = %125, %220
  %149 = phi ptr [ %118, %125 ], [ %222, %220 ]
  %150 = phi ptr [ %119, %125 ], [ %223, %220 ]
  %151 = phi i32 [ 6, %125 ], [ %224, %220 ]
  br i1 %126, label %152, label %220

152:                                              ; preds = %148, %213
  %153 = phi ptr [ %216, %213 ], [ %149, %148 ]
  %154 = phi ptr [ %217, %213 ], [ %150, %148 ]
  %155 = phi i32 [ %218, %213 ], [ 0, %148 ]
  %156 = load i16, ptr %154, align 2, !tbaa !43
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds i16, ptr %154, i64 %127
  %159 = load i16, ptr %158, align 2, !tbaa !43
  %160 = zext i16 %159 to i32
  %161 = add nuw nsw i32 %160, %157
  %162 = mul nuw nsw i32 %161, 225
  %163 = getelementptr inbounds i16, ptr %154, i64 %128
  %164 = load i16, ptr %163, align 2, !tbaa !43
  %165 = zext i16 %164 to i32
  %166 = getelementptr inbounds i16, ptr %154, i64 %130
  %167 = load i16, ptr %166, align 2, !tbaa !43
  %168 = zext i16 %167 to i32
  %169 = add nuw nsw i32 %168, %165
  %170 = mul nuw nsw i32 %169, 69
  %171 = add nuw nsw i32 %170, %162
  %172 = getelementptr inbounds i16, ptr %154, i64 %131
  %173 = load i16, ptr %172, align 2, !tbaa !43
  %174 = zext i16 %173 to i32
  %175 = getelementptr inbounds i16, ptr %154, i64 %133
  %176 = load i16, ptr %175, align 2, !tbaa !43
  %177 = zext i16 %176 to i32
  %178 = add nuw nsw i32 %177, %174
  %179 = mul nsw i32 %178, -30
  %180 = add nsw i32 %171, %179
  %181 = getelementptr inbounds i16, ptr %154, i64 %134
  %182 = load i16, ptr %181, align 2, !tbaa !43
  %183 = zext i16 %182 to i32
  %184 = getelementptr inbounds i16, ptr %154, i64 %136
  %185 = load i16, ptr %184, align 2, !tbaa !43
  %186 = zext i16 %185 to i32
  %187 = add nuw nsw i32 %186, %183
  %188 = shl nuw nsw i32 %187, 4
  %189 = sub nsw i32 %180, %188
  %190 = getelementptr inbounds i16, ptr %154, i64 %137
  %191 = load i16, ptr %190, align 2, !tbaa !43
  %192 = zext i16 %191 to i32
  %193 = getelementptr inbounds i16, ptr %154, i64 %139
  %194 = load i16, ptr %193, align 2, !tbaa !43
  %195 = zext i16 %194 to i32
  %196 = add nuw nsw i32 %195, %192
  %197 = mul nuw nsw i32 %196, 6
  %198 = add nsw i32 %189, %197
  %199 = getelementptr inbounds i16, ptr %154, i64 %140
  %200 = load i16, ptr %199, align 2, !tbaa !43
  %201 = zext i16 %200 to i32
  %202 = getelementptr inbounds i16, ptr %154, i64 %142
  %203 = load i16, ptr %202, align 2, !tbaa !43
  %204 = zext i16 %203 to i32
  %205 = add nuw nsw i32 %204, %201
  %206 = shl nuw nsw i32 %205, 1
  %207 = add nsw i32 %198, %206
  %208 = icmp slt i32 %207, -767
  br i1 %208, label %213, label %209

209:                                              ; preds = %152
  %210 = add nsw i32 %207, 256
  %211 = sdiv i32 %210, 512
  %212 = tail call i32 @llvm.smin.i32(i32 %211, i32 %6)
  br label %213

213:                                              ; preds = %209, %152
  %214 = phi i32 [ 0, %152 ], [ %212, %209 ]
  %215 = trunc i32 %214 to i16
  store i16 %215, ptr %153, align 2, !tbaa !43
  %216 = getelementptr inbounds i16, ptr %153, i64 %143
  %217 = getelementptr inbounds i16, ptr %154, i64 %144
  %218 = add nuw nsw i32 %155, 1
  %219 = icmp eq i32 %218, %1
  br i1 %219, label %220, label %152, !llvm.loop !52

220:                                              ; preds = %213, %148
  %221 = phi ptr [ %150, %148 ], [ %217, %213 ]
  %222 = phi ptr [ %149, %148 ], [ %216, %213 ]
  %223 = getelementptr inbounds i16, ptr %221, i64 %145
  %224 = add nuw nsw i32 %151, 2
  %225 = icmp slt i32 %224, %123
  br i1 %225, label %148, label %226, !llvm.loop !53

226:                                              ; preds = %220
  %227 = add i32 %147, 8
  br label %228

228:                                              ; preds = %226, %122
  %229 = phi i32 [ 6, %122 ], [ %227, %226 ]
  %230 = phi ptr [ %119, %122 ], [ %223, %226 ]
  %231 = phi ptr [ %118, %122 ], [ %222, %226 ]
  %232 = and i32 %2, -2
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %361

234:                                              ; preds = %228
  %235 = add nsw i32 %2, -1
  %236 = add nsw i32 %2, -2
  %237 = add nsw i32 %2, -3
  %238 = add nsw i32 %2, -4
  %239 = add nsw i32 %2, -5
  %240 = icmp sgt i32 %1, 0
  %241 = sext i32 %8 to i64
  %242 = sub nsw i64 0, %241
  %243 = shl nsw i32 %8, 1
  %244 = sext i32 %243 to i64
  %245 = sub nsw i64 0, %244
  %246 = mul nsw i32 %8, 3
  %247 = sext i32 %246 to i64
  %248 = sub nsw i64 0, %247
  %249 = shl nsw i32 %8, 2
  %250 = sext i32 %249 to i64
  %251 = sub nsw i64 0, %250
  %252 = mul nsw i32 %8, 5
  %253 = sext i32 %252 to i64
  %254 = sub nsw i64 0, %253
  %255 = sext i32 %5 to i64
  %256 = sext i32 %3 to i64
  %257 = sext i32 %8 to i64
  br label %258

258:                                              ; preds = %234, %355
  %259 = phi ptr [ %231, %234 ], [ %357, %355 ]
  %260 = phi ptr [ %230, %234 ], [ %358, %355 ]
  %261 = phi i32 [ %229, %234 ], [ %359, %355 ]
  br i1 %240, label %262, label %355

262:                                              ; preds = %258
  %263 = icmp slt i32 %261, %123
  %264 = sub nsw i32 %235, %261
  %265 = select i1 %263, i32 6, i32 %264
  %266 = icmp slt i32 %261, %239
  %267 = select i1 %266, i32 5, i32 %264
  %268 = icmp slt i32 %261, %238
  %269 = select i1 %268, i32 4, i32 %264
  %270 = icmp slt i32 %261, %237
  %271 = select i1 %270, i32 3, i32 %264
  %272 = icmp slt i32 %261, %236
  %273 = select i1 %272, i32 2, i32 %264
  %274 = icmp slt i32 %261, %235
  %275 = select i1 %274, i32 %8, i32 0
  %276 = sext i32 %275 to i64
  %277 = mul nsw i32 %273, %8
  %278 = sext i32 %277 to i64
  %279 = mul nsw i32 %271, %8
  %280 = sext i32 %279 to i64
  %281 = mul nsw i32 %269, %8
  %282 = sext i32 %281 to i64
  %283 = mul nsw i32 %267, %8
  %284 = sext i32 %283 to i64
  %285 = mul nsw i32 %265, %8
  %286 = sext i32 %285 to i64
  br label %287

287:                                              ; preds = %262, %348
  %288 = phi ptr [ %259, %262 ], [ %351, %348 ]
  %289 = phi ptr [ %260, %262 ], [ %352, %348 ]
  %290 = phi i32 [ 0, %262 ], [ %353, %348 ]
  %291 = load i16, ptr %289, align 2, !tbaa !43
  %292 = zext i16 %291 to i32
  %293 = getelementptr inbounds i16, ptr %289, i64 %276
  %294 = load i16, ptr %293, align 2, !tbaa !43
  %295 = zext i16 %294 to i32
  %296 = add nuw nsw i32 %295, %292
  %297 = mul nuw nsw i32 %296, 225
  %298 = getelementptr inbounds i16, ptr %289, i64 %242
  %299 = load i16, ptr %298, align 2, !tbaa !43
  %300 = zext i16 %299 to i32
  %301 = getelementptr inbounds i16, ptr %289, i64 %278
  %302 = load i16, ptr %301, align 2, !tbaa !43
  %303 = zext i16 %302 to i32
  %304 = add nuw nsw i32 %303, %300
  %305 = mul nuw nsw i32 %304, 69
  %306 = add nuw nsw i32 %305, %297
  %307 = getelementptr inbounds i16, ptr %289, i64 %245
  %308 = load i16, ptr %307, align 2, !tbaa !43
  %309 = zext i16 %308 to i32
  %310 = getelementptr inbounds i16, ptr %289, i64 %280
  %311 = load i16, ptr %310, align 2, !tbaa !43
  %312 = zext i16 %311 to i32
  %313 = add nuw nsw i32 %312, %309
  %314 = mul nsw i32 %313, -30
  %315 = add nsw i32 %306, %314
  %316 = getelementptr inbounds i16, ptr %289, i64 %248
  %317 = load i16, ptr %316, align 2, !tbaa !43
  %318 = zext i16 %317 to i32
  %319 = getelementptr inbounds i16, ptr %289, i64 %282
  %320 = load i16, ptr %319, align 2, !tbaa !43
  %321 = zext i16 %320 to i32
  %322 = add nuw nsw i32 %321, %318
  %323 = shl nuw nsw i32 %322, 4
  %324 = sub nsw i32 %315, %323
  %325 = getelementptr inbounds i16, ptr %289, i64 %251
  %326 = load i16, ptr %325, align 2, !tbaa !43
  %327 = zext i16 %326 to i32
  %328 = getelementptr inbounds i16, ptr %289, i64 %284
  %329 = load i16, ptr %328, align 2, !tbaa !43
  %330 = zext i16 %329 to i32
  %331 = add nuw nsw i32 %330, %327
  %332 = mul nuw nsw i32 %331, 6
  %333 = add nsw i32 %324, %332
  %334 = getelementptr inbounds i16, ptr %289, i64 %254
  %335 = load i16, ptr %334, align 2, !tbaa !43
  %336 = zext i16 %335 to i32
  %337 = getelementptr inbounds i16, ptr %289, i64 %286
  %338 = load i16, ptr %337, align 2, !tbaa !43
  %339 = zext i16 %338 to i32
  %340 = add nuw nsw i32 %339, %336
  %341 = shl nuw nsw i32 %340, 1
  %342 = add nsw i32 %333, %341
  %343 = icmp slt i32 %342, -767
  br i1 %343, label %348, label %344

344:                                              ; preds = %287
  %345 = add nsw i32 %342, 256
  %346 = sdiv i32 %345, 512
  %347 = tail call i32 @llvm.smin.i32(i32 %346, i32 %6)
  br label %348

348:                                              ; preds = %344, %287
  %349 = phi i32 [ 0, %287 ], [ %347, %344 ]
  %350 = trunc i32 %349 to i16
  store i16 %350, ptr %288, align 2, !tbaa !43
  %351 = getelementptr inbounds i16, ptr %288, i64 %255
  %352 = getelementptr inbounds i16, ptr %289, i64 %256
  %353 = add nuw nsw i32 %290, 1
  %354 = icmp eq i32 %353, %1
  br i1 %354, label %355, label %287, !llvm.loop !54

355:                                              ; preds = %348, %258
  %356 = phi ptr [ %260, %258 ], [ %352, %348 ]
  %357 = phi ptr [ %259, %258 ], [ %351, %348 ]
  %358 = getelementptr inbounds i16, ptr %356, i64 %257
  %359 = add nuw nsw i32 %261, 2
  %360 = icmp slt i32 %359, %232
  br i1 %360, label %258, label %361, !llvm.loop !55

361:                                              ; preds = %355, %228
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadTIFFImage(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #5 {
  %6 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !62
  %20 = tail call i64 @fwrite(ptr nonnull @.str, i64 102, i64 1, ptr %19) #19
  br label %569

21:                                               ; preds = %14, %5
  %22 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !63
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 20
  %27 = load i32, ptr %26, align 8, !tbaa !64
  %28 = add nsw i32 %27, %2
  %29 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !66
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 1
  %33 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 2
  %34 = select i1 %31, ptr @.str.2, ptr @.str.1
  %35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %6, i64 noundef 255, ptr noundef nonnull %34, ptr noundef nonnull %32, i32 noundef %23, i32 noundef %28, ptr noundef nonnull %33) #18
  switch i32 %35, label %41 [
    i32 -1, label %36
    i32 255, label %36
  ]

36:                                               ; preds = %25, %25
  %37 = load ptr, ptr @stderr, align 8, !tbaa !62
  %38 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr %37) #19
  br label %574

39:                                               ; preds = %21
  %40 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #18
  br label %41

41:                                               ; preds = %25, %39
  %42 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %6, i32 noundef 0) #18
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !62
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.9, ptr noundef nonnull %6) #19
  br label %262

47:                                               ; preds = %41
  %48 = call i64 @lseek(i32 noundef %42, i64 noundef 0, i32 noundef 2) #18
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %262, label %50

50:                                               ; preds = %47
  %51 = call i64 @lseek(i32 noundef %42, i64 noundef 0, i32 noundef 0) #18
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %262, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %55 = call ptr @realloc(ptr noundef %54, i64 noundef %48) #20
  store ptr %55, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @close(i32 noundef %42) #18
  br label %262

59:                                               ; preds = %53
  %60 = call i64 @read(i32 noundef %42, ptr noundef nonnull %55, i64 noundef %48) #18
  %61 = icmp eq i64 %60, %48
  %62 = call i32 @close(i32 noundef %42) #18
  br i1 %61, label %63, label %262

63:                                               ; preds = %59
  %64 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %65 = load i8, ptr %64, align 1, !tbaa !67
  %66 = zext i8 %65 to i16
  %67 = shl nuw i16 %66, 8
  %68 = getelementptr inbounds i8, ptr %64, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !67
  %70 = zext i8 %69 to i16
  %71 = or disjoint i16 %67, %70
  switch i16 %71, label %73 [
    i16 18761, label %77
    i16 19789, label %72
  ]

72:                                               ; preds = %63
  br label %77

73:                                               ; preds = %63
  %74 = load ptr, ptr @stderr, align 8, !tbaa !62
  %75 = call i64 @fwrite(ptr nonnull @.str.10, i64 43, i64 1, ptr %74) #19
  %76 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  call void @free(ptr noundef %76) #18
  store ptr null, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  br label %262

77:                                               ; preds = %72, %63
  %78 = phi i1 [ false, %72 ], [ true, %63 ]
  %79 = phi i32 [ 0, %72 ], [ 1, %63 ]
  store i32 %79, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 3), align 8, !tbaa !68
  %80 = select i1 %78, ptr @getU16, ptr @getSwappedU16
  %81 = select i1 %78, ptr @getU32, ptr @getSwappedU32
  store ptr %80, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !69
  store ptr %81, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 16), align 8, !tbaa !70
  store ptr %68, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %82 = load i8, ptr %64, align 1, !tbaa !67
  %83 = getelementptr inbounds i8, ptr %64, i64 2
  store ptr %83, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %84 = load i8, ptr %68, align 1, !tbaa !67
  %85 = zext i8 %84 to i16
  %86 = shl nuw i16 %85, 8
  %87 = zext i8 %82 to i16
  %88 = or disjoint i16 %86, %87
  store i16 %88, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 5), align 8, !tbaa !72
  %89 = getelementptr inbounds i8, ptr %64, i64 3
  store ptr %89, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %90 = load i8, ptr %83, align 1, !tbaa !67
  %91 = getelementptr inbounds i8, ptr %64, i64 4
  store ptr %91, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %92 = load i8, ptr %89, align 1, !tbaa !67
  %93 = zext i8 %92 to i16
  %94 = shl nuw i16 %93, 8
  %95 = zext i8 %90 to i16
  %96 = or disjoint i16 %94, %95
  store i16 %96, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 5, i32 1), align 2, !tbaa !73
  %97 = getelementptr inbounds i8, ptr %64, i64 5
  store ptr %97, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %98 = load i8, ptr %91, align 1, !tbaa !67
  %99 = getelementptr inbounds i8, ptr %64, i64 6
  store ptr %99, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %100 = load i8, ptr %97, align 1, !tbaa !67
  %101 = getelementptr inbounds i8, ptr %64, i64 7
  store ptr %101, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %102 = load i8, ptr %99, align 1, !tbaa !67
  %103 = getelementptr inbounds i8, ptr %64, i64 8
  store ptr %103, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %104 = load i8, ptr %101, align 1, !tbaa !67
  %105 = zext i8 %104 to i32
  %106 = shl nuw i32 %105, 24
  %107 = zext i8 %102 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = zext i8 %100 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = zext i8 %98 to i32
  %112 = or disjoint i32 %110, %111
  %113 = or disjoint i32 %112, %108
  %114 = or disjoint i32 %113, %106
  store i32 %114, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 5, i32 2), align 4, !tbaa !74
  %115 = icmp eq i16 %96, 42
  br i1 %115, label %119, label %116

116:                                              ; preds = %77
  %117 = load ptr, ptr @stderr, align 8, !tbaa !62
  %118 = call i64 @fwrite(ptr nonnull @.str.11, i64 32, i64 1, ptr %117) #19
  br label %122

119:                                              ; preds = %77
  %120 = zext i32 %114 to i64
  %121 = getelementptr inbounds i8, ptr %64, i64 %120
  store ptr %121, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  br label %122

122:                                              ; preds = %119, %116
  br i1 %115, label %123, label %262

123:                                              ; preds = %122
  %124 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !69
  %125 = call i32 %124(ptr noundef nonnull @ReadTIFFImage.t) #18
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %182, label %127

127:                                              ; preds = %123, %179
  %128 = phi i32 [ %180, %179 ], [ 0, %123 ]
  %129 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !69
  %130 = call i32 %129(ptr noundef nonnull @ReadTIFFImage.t) #18
  %131 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !69
  %132 = call i32 %131(ptr noundef nonnull @ReadTIFFImage.t) #18
  %133 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 16), align 8, !tbaa !70
  %134 = call i32 %133(ptr noundef nonnull @ReadTIFFImage.t) #18
  %135 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 16), align 8, !tbaa !70
  %136 = call i32 %135(ptr noundef nonnull @ReadTIFFImage.t) #18
  switch i32 %130, label %179 [
    i32 256, label %137
    i32 257, label %138
    i32 258, label %143
    i32 259, label %162
    i32 283, label %178
    i32 273, label %167
    i32 274, label %168
    i32 282, label %177
    i32 278, label %175
    i32 279, label %176
  ]

137:                                              ; preds = %127
  store i32 %136, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 10), align 8, !tbaa !75
  br label %179

138:                                              ; preds = %127
  store i32 %136, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 9), align 4, !tbaa !76
  %139 = icmp ugt i32 %136, 1080
  br i1 %139, label %140, label %179

140:                                              ; preds = %138
  %141 = load ptr, ptr @stderr, align 8, !tbaa !62
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.12, i32 noundef %136, i32 noundef 1080) #19
  br label %179

143:                                              ; preds = %127
  %144 = icmp eq i32 %134, 3
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr @stderr, align 8, !tbaa !62
  %147 = call i64 @fwrite(ptr nonnull @.str.13, i64 35, i64 1, ptr %146) #19
  br label %179

148:                                              ; preds = %143
  call fastcc void @getIntArray(i32 noundef %136, i32 noundef %132, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7), i32 noundef 3)
  %149 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7), align 4, !tbaa !56
  %150 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7, i64 1), align 8, !tbaa !56
  %151 = icmp eq i32 %149, %150
  %152 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7, i64 2), align 4
  %153 = icmp eq i32 %149, %152
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %158, label %155

155:                                              ; preds = %148
  %156 = load ptr, ptr @stderr, align 8, !tbaa !62
  %157 = call i64 @fwrite(ptr nonnull @.str.14, i64 47, i64 1, ptr %156) #19
  br label %179

158:                                              ; preds = %148
  switch i32 %149, label %159 [
    i32 8, label %179
    i32 16, label %179
  ]

159:                                              ; preds = %158
  %160 = load ptr, ptr @stderr, align 8, !tbaa !62
  %161 = call i64 @fwrite(ptr nonnull @.str.15, i64 40, i64 1, ptr %160) #19
  br label %179

162:                                              ; preds = %127
  %163 = icmp eq i32 %136, 1
  br i1 %163, label %179, label %164

164:                                              ; preds = %162
  %165 = load ptr, ptr @stderr, align 8, !tbaa !62
  %166 = call i64 @fwrite(ptr nonnull @.str.16, i64 39, i64 1, ptr %165) #19
  br label %179

167:                                              ; preds = %127
  call fastcc void @getIntArray(i32 noundef %136, i32 noundef %132, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 12), i32 noundef %134)
  store i32 %134, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 4), align 4, !tbaa !77
  br label %179

168:                                              ; preds = %127
  %169 = trunc i32 %136 to i16
  store i16 %169, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 6), align 8, !tbaa !78
  %170 = and i32 %136, 65535
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr @stderr, align 8, !tbaa !62
  %174 = call i64 @fwrite(ptr nonnull @.str.17, i64 32, i64 1, ptr %173) #19
  br label %179

175:                                              ; preds = %127
  store i32 %136, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 8), align 8, !tbaa !79
  br label %179

176:                                              ; preds = %127
  call fastcc void @getIntArray(i32 noundef %136, i32 noundef %132, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 11), i32 noundef %134)
  br label %179

177:                                              ; preds = %127
  call fastcc void @getIntArray(i32 noundef %136, i32 noundef %132, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 13), i32 noundef 1)
  br label %179

178:                                              ; preds = %127
  call fastcc void @getIntArray(i32 noundef %136, i32 noundef %132, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 14), i32 noundef 1)
  br label %179

179:                                              ; preds = %178, %177, %176, %175, %172, %168, %167, %164, %162, %159, %158, %158, %155, %145, %140, %138, %137, %127
  %180 = add nuw i32 %128, 1
  %181 = icmp eq i32 %180, %125
  br i1 %181, label %182, label %127, !llvm.loop !80

182:                                              ; preds = %179, %123
  %183 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 10), align 8, !tbaa !75
  %184 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 9), align 4, !tbaa !76
  %185 = mul i32 %183, 6
  %186 = mul i32 %185, %184
  %187 = load ptr, ptr @ReadTIFFImage.t, align 8, !tbaa !42
  %188 = zext i32 %186 to i64
  %189 = call ptr @realloc(ptr noundef %187, i64 noundef %188) #20
  store ptr %189, ptr @ReadTIFFImage.t, align 8, !tbaa !42
  %190 = icmp eq ptr %189, null
  br i1 %190, label %262, label %191

191:                                              ; preds = %182
  %192 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7), align 4, !tbaa !56
  switch i32 %192, label %271 [
    i32 8, label %193
    i32 16, label %224
  ]

193:                                              ; preds = %191
  %194 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 4), align 4, !tbaa !77
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %271

196:                                              ; preds = %193
  %197 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %198 = zext nneg i32 %194 to i64
  br label %199

199:                                              ; preds = %196, %220
  %200 = phi i64 [ 0, %196 ], [ %222, %220 ]
  %201 = phi ptr [ %189, %196 ], [ %221, %220 ]
  %202 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 11, i64 %200
  %203 = load i32, ptr %202, align 4, !tbaa !56
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 12, i64 %200
  %207 = load i32, ptr %206, align 4, !tbaa !56
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, ptr %197, i64 %208
  br label %210

210:                                              ; preds = %205, %210
  %211 = phi ptr [ %217, %210 ], [ %201, %205 ]
  %212 = phi ptr [ %214, %210 ], [ %209, %205 ]
  %213 = phi i32 [ %218, %210 ], [ 0, %205 ]
  %214 = getelementptr inbounds i8, ptr %212, i64 1
  %215 = load i8, ptr %212, align 1, !tbaa !67
  %216 = zext i8 %215 to i16
  %217 = getelementptr inbounds i16, ptr %211, i64 1
  store i16 %216, ptr %211, align 2, !tbaa !43
  %218 = add nuw nsw i32 %213, 1
  %219 = icmp eq i32 %218, %203
  br i1 %219, label %220, label %210, !llvm.loop !81

220:                                              ; preds = %210, %199
  %221 = phi ptr [ %201, %199 ], [ %217, %210 ]
  %222 = add nuw nsw i64 %200, 1
  %223 = icmp eq i64 %222, %198
  br i1 %223, label %271, label %199, !llvm.loop !82

224:                                              ; preds = %191
  %225 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %226 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 4), align 4, !tbaa !77
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %261

228:                                              ; preds = %224
  %229 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %230 = zext nneg i32 %226 to i64
  br label %231

231:                                              ; preds = %228, %257
  %232 = phi i64 [ 0, %228 ], [ %259, %257 ]
  %233 = phi ptr [ %189, %228 ], [ %258, %257 ]
  %234 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 11, i64 %232
  %235 = load i32, ptr %234, align 4, !tbaa !56
  %236 = lshr i32 %235, 1
  %237 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 12, i64 %232
  %238 = load i32, ptr %237, align 4, !tbaa !56
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i8, ptr %229, i64 %239
  store ptr %240, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %241 = icmp ult i32 %235, 2
  br i1 %241, label %257, label %242

242:                                              ; preds = %231, %242
  %243 = phi ptr [ %254, %242 ], [ %233, %231 ]
  %244 = phi i32 [ %255, %242 ], [ 0, %231 ]
  %245 = phi ptr [ %248, %242 ], [ %240, %231 ]
  %246 = getelementptr inbounds i8, ptr %245, i64 1
  store ptr %246, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %247 = load i8, ptr %245, align 1, !tbaa !67
  %248 = getelementptr inbounds i8, ptr %245, i64 2
  store ptr %248, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %249 = load i8, ptr %246, align 1, !tbaa !67
  %250 = zext i8 %249 to i16
  %251 = shl nuw i16 %250, 8
  %252 = zext i8 %247 to i16
  %253 = or disjoint i16 %251, %252
  %254 = getelementptr inbounds i16, ptr %243, i64 1
  store i16 %253, ptr %243, align 2, !tbaa !43
  %255 = add nuw nsw i32 %244, 1
  %256 = icmp eq i32 %255, %236
  br i1 %256, label %257, label %242, !llvm.loop !83

257:                                              ; preds = %242, %231
  %258 = phi ptr [ %233, %231 ], [ %254, %242 ]
  %259 = add nuw nsw i64 %232, 1
  %260 = icmp eq i64 %259, %230
  br i1 %260, label %261, label %231, !llvm.loop !84

261:                                              ; preds = %257, %224
  store ptr %225, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  br label %271

262:                                              ; preds = %59, %182, %44, %57, %73, %47, %50, %122
  %263 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %264 = icmp eq ptr %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  call void @free(ptr noundef %263) #18
  br label %266

266:                                              ; preds = %265, %262
  store ptr null, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %267 = load ptr, ptr @ReadTIFFImage.t, align 8, !tbaa !42
  %268 = icmp eq ptr %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  call void @free(ptr noundef %267) #18
  br label %270

270:                                              ; preds = %269, %266
  store ptr null, ptr @ReadTIFFImage.t, align 8, !tbaa !42
  br label %569

271:                                              ; preds = %220, %193, %261, %191
  %272 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 9), align 4, !tbaa !76
  %273 = icmp eq i32 %272, %10
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr @stderr, align 8, !tbaa !62
  %276 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.4, i32 noundef %272, i32 noundef %10) #19
  br label %569

277:                                              ; preds = %271
  %278 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 10), align 8, !tbaa !75
  %279 = icmp eq i32 %278, %8
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr @stderr, align 8, !tbaa !62
  %282 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.5, i32 noundef %278, i32 noundef %8) #19
  br label %569

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 18
  %285 = load i32, ptr %284, align 4, !tbaa !85
  switch i32 %285, label %286 [
    i32 8, label %289
    i32 16, label %289
  ]

286:                                              ; preds = %283
  %287 = load ptr, ptr @stderr, align 8, !tbaa !62
  %288 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef nonnull @.str.6, i32 noundef %285) #19
  br label %569

289:                                              ; preds = %283, %283
  %290 = load ptr, ptr @ReadTIFFImage.t, align 8, !tbaa !42
  %291 = mul i32 %10, %8
  %292 = mul nsw i32 %291, 3
  %293 = load i32, ptr %11, align 4, !tbaa !57
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %533

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 22
  %297 = load i32, ptr %296, align 8, !tbaa !86
  %298 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 21
  %299 = load i32, ptr %298, align 4, !tbaa !87
  switch i32 %297, label %300 [
    i32 1, label %303
    i32 3, label %303
  ]

300:                                              ; preds = %295
  %301 = load ptr, ptr @stderr, align 8, !tbaa !62
  %302 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef nonnull @.str.18, i32 noundef %297) #19
  br label %360

303:                                              ; preds = %295, %295
  %304 = icmp eq i32 %299, 0
  %305 = select i1 %304, i32 8192, i32 67117056
  %306 = select i1 %304, double 1.638400e+04, double 0x40CB7B7B7B7B7B7B
  %307 = select i1 %304, double 1.638400e+04, double 0x40CC1C1C1C1C1C1C
  %308 = zext i32 %297 to i64
  %309 = getelementptr inbounds [9 x [3 x double]], ptr @Coef, i64 0, i64 %308
  %310 = load double, ptr %309, align 8, !tbaa !88
  %311 = call double @llvm.fmuladd.f64(double %306, double %310, double 5.000000e-01)
  %312 = fptosi double %311 to i32
  %313 = getelementptr inbounds [9 x [3 x double]], ptr @Coef, i64 0, i64 %308, i64 1
  %314 = load double, ptr %313, align 8, !tbaa !88
  %315 = call double @llvm.fmuladd.f64(double %306, double %314, double 5.000000e-01)
  %316 = fptosi double %315 to i32
  %317 = getelementptr inbounds [9 x [3 x double]], ptr @Coef, i64 0, i64 %308, i64 2
  %318 = load double, ptr %317, align 8, !tbaa !88
  %319 = call double @llvm.fmuladd.f64(double %306, double %318, double 5.000000e-01)
  %320 = fptosi double %319 to i32
  %321 = fmul double %307, %310
  %322 = fadd double %318, -1.000000e+00
  %323 = fdiv double 5.000000e-01, %322
  %324 = call double @llvm.fmuladd.f64(double %321, double %323, double -5.000000e-01)
  %325 = fptosi double %324 to i32
  %326 = fmul double %307, %314
  %327 = call double @llvm.fmuladd.f64(double %326, double %323, double -5.000000e-01)
  %328 = fptosi double %327 to i32
  %329 = call double @llvm.fmuladd.f64(double %307, double 5.000000e-01, double 5.000000e-01)
  %330 = fptosi double %329 to i32
  %331 = fadd double %310, -1.000000e+00
  %332 = fdiv double 5.000000e-01, %331
  %333 = call double @llvm.fmuladd.f64(double %326, double %332, double -5.000000e-01)
  %334 = fptosi double %333 to i32
  %335 = fmul double %307, %318
  %336 = call double @llvm.fmuladd.f64(double %335, double %332, double -5.000000e-01)
  %337 = fptosi double %336 to i32
  %338 = fadd double %306, 5.000000e-01
  %339 = fptoui double %338 to i32
  %340 = add nsw i32 %316, %312
  %341 = add nsw i32 %340, %320
  %342 = icmp eq i32 %341, %339
  br i1 %342, label %346, label %343

343:                                              ; preds = %303
  %344 = load ptr, ptr @stderr, align 8, !tbaa !62
  %345 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef nonnull @.str.19, i32 noundef %341, i32 noundef %339) #19
  br label %360

346:                                              ; preds = %303
  %347 = add i32 %328, %330
  %348 = add i32 %347, %325
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %346
  %351 = load ptr, ptr @stderr, align 8, !tbaa !62
  %352 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef nonnull @.str.20, i32 noundef %348) #19
  br label %360

353:                                              ; preds = %346
  %354 = add nsw i32 %334, %330
  %355 = add nsw i32 %354, %337
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %353
  %358 = load ptr, ptr @stderr, align 8, !tbaa !62
  %359 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %358, ptr noundef nonnull @.str.21, i32 noundef %355) #19
  br label %360

360:                                              ; preds = %300, %343, %350, %353, %357
  %361 = phi i32 [ undef, %300 ], [ %305, %353 ], [ %305, %357 ], [ %305, %350 ], [ %305, %343 ]
  %362 = phi i32 [ undef, %300 ], [ %337, %353 ], [ %337, %357 ], [ %337, %350 ], [ %337, %343 ]
  %363 = phi i32 [ undef, %300 ], [ %334, %353 ], [ %334, %357 ], [ %334, %350 ], [ %334, %343 ]
  %364 = phi i32 [ undef, %300 ], [ %330, %353 ], [ %330, %357 ], [ %330, %350 ], [ %330, %343 ]
  %365 = phi i32 [ undef, %300 ], [ %328, %353 ], [ %328, %357 ], [ %328, %350 ], [ %328, %343 ]
  %366 = phi i32 [ undef, %300 ], [ %325, %353 ], [ %325, %357 ], [ %325, %350 ], [ %325, %343 ]
  %367 = phi i32 [ undef, %300 ], [ %320, %353 ], [ %320, %357 ], [ %320, %350 ], [ %320, %343 ]
  %368 = phi i32 [ undef, %300 ], [ %316, %353 ], [ %316, %357 ], [ %316, %350 ], [ %316, %343 ]
  %369 = phi i32 [ undef, %300 ], [ %312, %353 ], [ %312, %357 ], [ %312, %350 ], [ %312, %343 ]
  %370 = phi i1 [ false, %300 ], [ true, %353 ], [ false, %357 ], [ false, %350 ], [ false, %343 ]
  br i1 %370, label %371, label %569

371:                                              ; preds = %360
  %372 = getelementptr inbounds i16, ptr %290, i64 1
  %373 = getelementptr inbounds i16, ptr %290, i64 2
  %374 = icmp eq i32 %299, 0
  %375 = icmp sgt i32 %291, 0
  br i1 %374, label %377, label %376

376:                                              ; preds = %371
  br i1 %375, label %378, label %464

377:                                              ; preds = %371
  br i1 %375, label %418, label %464

378:                                              ; preds = %376, %378
  %379 = phi ptr [ %385, %378 ], [ %290, %376 ]
  %380 = phi i32 [ %416, %378 ], [ 0, %376 ]
  %381 = phi ptr [ %388, %378 ], [ %372, %376 ]
  %382 = phi ptr [ %391, %378 ], [ %373, %376 ]
  %383 = load i16, ptr %379, align 2, !tbaa !43
  %384 = zext i16 %383 to i32
  %385 = getelementptr i16, ptr %379, i64 3
  %386 = load i16, ptr %381, align 2, !tbaa !43
  %387 = zext i16 %386 to i32
  %388 = getelementptr i16, ptr %381, i64 3
  %389 = load i16, ptr %382, align 2, !tbaa !43
  %390 = zext i16 %389 to i32
  %391 = getelementptr i16, ptr %382, i64 3
  %392 = mul nsw i32 %369, %384
  %393 = mul nsw i32 %368, %387
  %394 = mul nsw i32 %367, %390
  %395 = add i32 %392, %361
  %396 = add i32 %395, %393
  %397 = add i32 %396, %394
  %398 = lshr i32 %397, 14
  %399 = trunc i32 %398 to i16
  store i16 %399, ptr %379, align 2, !tbaa !43
  %400 = mul nsw i32 %366, %384
  %401 = mul nsw i32 %365, %387
  %402 = mul nsw i32 %364, %390
  %403 = add i32 %400, 536879104
  %404 = add i32 %403, %401
  %405 = add i32 %404, %402
  %406 = lshr i32 %405, 14
  %407 = trunc i32 %406 to i16
  store i16 %407, ptr %381, align 2, !tbaa !43
  %408 = mul nsw i32 %364, %384
  %409 = mul nsw i32 %363, %387
  %410 = mul nsw i32 %362, %390
  %411 = add i32 %408, 536879104
  %412 = add i32 %411, %409
  %413 = add i32 %412, %410
  %414 = lshr i32 %413, 14
  %415 = trunc i32 %414 to i16
  store i16 %415, ptr %382, align 2, !tbaa !43
  %416 = add nuw nsw i32 %380, 1
  %417 = icmp eq i32 %416, %291
  br i1 %417, label %464, label %378, !llvm.loop !89

418:                                              ; preds = %377, %418
  %419 = phi ptr [ %425, %418 ], [ %290, %377 ]
  %420 = phi i32 [ %462, %418 ], [ 0, %377 ]
  %421 = phi ptr [ %428, %418 ], [ %372, %377 ]
  %422 = phi ptr [ %431, %418 ], [ %373, %377 ]
  %423 = load i16, ptr %419, align 2, !tbaa !43
  %424 = zext i16 %423 to i32
  %425 = getelementptr i16, ptr %419, i64 3
  %426 = load i16, ptr %421, align 2, !tbaa !43
  %427 = zext i16 %426 to i32
  %428 = getelementptr i16, ptr %421, i64 3
  %429 = load i16, ptr %422, align 2, !tbaa !43
  %430 = zext i16 %429 to i32
  %431 = getelementptr i16, ptr %422, i64 3
  %432 = mul nsw i32 %369, %424
  %433 = mul nsw i32 %368, %427
  %434 = mul nsw i32 %367, %430
  %435 = add i32 %432, %361
  %436 = add i32 %435, %433
  %437 = add i32 %436, %434
  %438 = ashr i32 %437, 14
  %439 = call i32 @llvm.smin.i32(i32 %438, i32 65535)
  %440 = call i32 @llvm.smax.i32(i32 %439, i32 0)
  %441 = trunc i32 %440 to i16
  store i16 %441, ptr %419, align 2, !tbaa !43
  %442 = mul nsw i32 %366, %424
  %443 = mul nsw i32 %365, %427
  %444 = mul nsw i32 %364, %430
  %445 = add i32 %442, 536879104
  %446 = add i32 %445, %443
  %447 = add i32 %446, %444
  %448 = ashr i32 %447, 14
  %449 = call i32 @llvm.smin.i32(i32 %448, i32 65535)
  %450 = call i32 @llvm.smax.i32(i32 %449, i32 0)
  %451 = trunc i32 %450 to i16
  store i16 %451, ptr %421, align 2, !tbaa !43
  %452 = mul nsw i32 %364, %424
  %453 = mul nsw i32 %363, %427
  %454 = mul nsw i32 %362, %430
  %455 = add i32 %452, 536879104
  %456 = add i32 %455, %453
  %457 = add i32 %456, %454
  %458 = ashr i32 %457, 14
  %459 = call i32 @llvm.smin.i32(i32 %458, i32 65535)
  %460 = call i32 @llvm.smax.i32(i32 %459, i32 0)
  %461 = trunc i32 %460 to i16
  store i16 %461, ptr %422, align 2, !tbaa !43
  %462 = add nuw nsw i32 %420, 1
  %463 = icmp eq i32 %462, %291
  br i1 %463, label %464, label %418, !llvm.loop !90

464:                                              ; preds = %378, %418, %376, %377
  %465 = load i32, ptr %3, align 8, !tbaa !91
  switch i32 %465, label %530 [
    i32 1, label %466
    i32 2, label %491
    i32 3, label %533
  ]

466:                                              ; preds = %464
  %467 = sdiv i32 %292, 2
  %468 = sext i32 %467 to i64
  %469 = shl nsw i64 %468, 1
  %470 = call noalias ptr @malloc(i64 noundef %469) #21
  %471 = sext i32 %291 to i64
  %472 = getelementptr inbounds i16, ptr %470, i64 %471
  %473 = sdiv i32 %291, 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i16, ptr %472, i64 %474
  %476 = icmp sgt i32 %291, 0
  br i1 %476, label %477, label %487

477:                                              ; preds = %466
  %478 = zext nneg i32 %291 to i64
  br label %479

479:                                              ; preds = %477, %479
  %480 = phi i64 [ 0, %477 ], [ %485, %479 ]
  %481 = phi ptr [ %290, %477 ], [ %484, %479 ]
  %482 = load i16, ptr %481, align 2, !tbaa !43
  %483 = getelementptr inbounds i16, ptr %470, i64 %480
  store i16 %482, ptr %483, align 2, !tbaa !43
  %484 = getelementptr inbounds i16, ptr %481, i64 3
  %485 = add nuw nsw i64 %480, 1
  %486 = icmp eq i64 %485, %478
  br i1 %486, label %487, label %479, !llvm.loop !92

487:                                              ; preds = %479, %466
  %488 = and i64 %471, 9223372036854775807
  %489 = call noalias ptr @malloc(i64 noundef %488) #21
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %372, i32 noundef %8, i32 noundef %10, i32 noundef 3, ptr noundef %489, i32 noundef 1, i32 noundef 65535)
  %490 = sdiv i32 %8, 2
  call void @vertical_half_1chan(ptr noundef %489, i32 noundef %490, i32 noundef %10, i32 noundef 1, ptr noundef %472, i32 noundef 1, i32 noundef 65535)
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %373, i32 noundef %8, i32 noundef %10, i32 noundef 3, ptr noundef %489, i32 noundef 1, i32 noundef 65535)
  call void @vertical_half_1chan(ptr noundef %489, i32 noundef %490, i32 noundef %10, i32 noundef 1, ptr noundef %475, i32 noundef 1, i32 noundef 65535)
  call void @free(ptr noundef %489) #18
  br label %533

491:                                              ; preds = %464
  %492 = shl nsw i32 %291, 1
  %493 = sext i32 %492 to i64
  %494 = shl nsw i64 %493, 1
  %495 = call noalias ptr @malloc(i64 noundef %494) #21
  %496 = sext i32 %291 to i64
  %497 = getelementptr inbounds i16, ptr %495, i64 %496
  %498 = sdiv i32 %291, 2
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i16, ptr %495, i64 %499
  %501 = icmp sgt i32 %291, 0
  br i1 %501, label %502, label %504

502:                                              ; preds = %491
  %503 = zext nneg i32 %291 to i64
  br label %509

504:                                              ; preds = %509, %491
  %505 = icmp sgt i32 %10, 0
  br i1 %505, label %506, label %533

506:                                              ; preds = %504
  %507 = sext i32 %8 to i64
  %508 = zext nneg i32 %10 to i64
  br label %517

509:                                              ; preds = %502, %509
  %510 = phi i64 [ 0, %502 ], [ %515, %509 ]
  %511 = phi ptr [ %290, %502 ], [ %514, %509 ]
  %512 = load i16, ptr %511, align 2, !tbaa !43
  %513 = getelementptr inbounds i16, ptr %495, i64 %510
  store i16 %512, ptr %513, align 2, !tbaa !43
  %514 = getelementptr inbounds i16, ptr %511, i64 3
  %515 = add nuw nsw i64 %510, 1
  %516 = icmp eq i64 %515, %503
  br i1 %516, label %504, label %509, !llvm.loop !93

517:                                              ; preds = %506, %517
  %518 = phi i64 [ 0, %506 ], [ %528, %517 ]
  %519 = mul nsw i64 %518, %507
  %520 = mul nsw i64 %519, 3
  %521 = getelementptr inbounds i16, ptr %372, i64 %520
  %522 = trunc i64 %519 to i32
  %523 = sdiv i32 %522, 2
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i16, ptr %497, i64 %524
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %521, i32 noundef %8, i32 noundef 1, i32 noundef 3, ptr noundef %525, i32 noundef 1, i32 noundef 65535)
  %526 = getelementptr inbounds i16, ptr %373, i64 %520
  %527 = getelementptr inbounds i16, ptr %500, i64 %524
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %526, i32 noundef %8, i32 noundef 1, i32 noundef 3, ptr noundef %527, i32 noundef 1, i32 noundef 65535)
  %528 = add nuw nsw i64 %518, 1
  %529 = icmp eq i64 %528, %508
  br i1 %529, label %533, label %517, !llvm.loop !94

530:                                              ; preds = %464
  %531 = load ptr, ptr @stderr, align 8, !tbaa !62
  %532 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %531, ptr noundef nonnull @.str.7, i32 noundef %465) #19
  br label %569

533:                                              ; preds = %517, %504, %487, %464, %289
  %534 = phi i32 [ %292, %464 ], [ %467, %487 ], [ %292, %289 ], [ %492, %504 ], [ %492, %517 ]
  %535 = phi ptr [ %290, %464 ], [ %470, %487 ], [ %290, %289 ], [ %495, %504 ], [ %495, %517 ]
  %536 = phi ptr [ null, %464 ], [ %470, %487 ], [ null, %289 ], [ %495, %504 ], [ %495, %517 ]
  %537 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 19
  %538 = load i32, ptr %537, align 8, !tbaa !95
  switch i32 %538, label %563 [
    i32 1, label %543
    i32 2, label %539
  ]

539:                                              ; preds = %533
  %540 = icmp sgt i32 %534, 0
  br i1 %540, label %541, label %566

541:                                              ; preds = %539
  %542 = zext nneg i32 %534 to i64
  br label %556

543:                                              ; preds = %533
  %544 = icmp sgt i32 %534, 0
  br i1 %544, label %545, label %566

545:                                              ; preds = %543
  %546 = zext nneg i32 %534 to i64
  br label %547

547:                                              ; preds = %545, %547
  %548 = phi i64 [ 0, %545 ], [ %554, %547 ]
  %549 = getelementptr inbounds i16, ptr %535, i64 %548
  %550 = load i16, ptr %549, align 2, !tbaa !43
  %551 = lshr i16 %550, 8
  %552 = trunc i16 %551 to i8
  %553 = getelementptr inbounds i8, ptr %4, i64 %548
  store i8 %552, ptr %553, align 1, !tbaa !67
  %554 = add nuw nsw i64 %548, 1
  %555 = icmp eq i64 %554, %546
  br i1 %555, label %566, label %547, !llvm.loop !96

556:                                              ; preds = %541, %556
  %557 = phi i64 [ 0, %541 ], [ %561, %556 ]
  %558 = getelementptr inbounds i16, ptr %535, i64 %557
  %559 = load i16, ptr %558, align 2, !tbaa !43
  %560 = getelementptr inbounds i16, ptr %4, i64 %557
  store i16 %559, ptr %560, align 2, !tbaa !43
  %561 = add nuw nsw i64 %557, 1
  %562 = icmp eq i64 %561, %542
  br i1 %562, label %566, label %556, !llvm.loop !97

563:                                              ; preds = %533
  %564 = load ptr, ptr @stderr, align 8, !tbaa !62
  %565 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %564, ptr noundef nonnull @.str.8, i32 noundef %538) #19
  br label %569

566:                                              ; preds = %556, %547, %539, %543
  %567 = icmp eq ptr %536, null
  br i1 %567, label %574, label %568

568:                                              ; preds = %566
  call void @free(ptr noundef %536) #18
  br label %574

569:                                              ; preds = %270, %360, %563, %530, %286, %280, %274, %18
  %570 = phi ptr [ null, %274 ], [ null, %280 ], [ null, %286 ], [ null, %360 ], [ null, %530 ], [ %536, %563 ], [ null, %18 ], [ null, %270 ]
  %571 = icmp eq ptr %570, null
  br i1 %571, label %573, label %572

572:                                              ; preds = %569
  call void @free(ptr noundef %570) #18
  br label %573

573:                                              ; preds = %572, %569
  call void @report_stats_on_error() #18
  br label %574

574:                                              ; preds = %566, %568, %573, %36
  %575 = phi i32 [ 0, %36 ], [ 0, %573 ], [ 1, %568 ], [ 1, %566 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %6) #18
  ret i32 %575
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare void @report_stats_on_error() local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getU16(ptr nocapture noundef %0) #13 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !71
  %5 = load i8, ptr %3, align 1, !tbaa !67
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !71
  %7 = load i8, ptr %4, align 1, !tbaa !67
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = zext i8 %5 to i32
  %11 = or disjoint i32 %9, %10
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getU32(ptr nocapture noundef %0) #13 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !71
  %5 = load i8, ptr %3, align 1, !tbaa !67
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !71
  %7 = load i8, ptr %4, align 1, !tbaa !67
  %8 = getelementptr inbounds i8, ptr %3, i64 3
  store ptr %8, ptr %2, align 8, !tbaa !71
  %9 = load i8, ptr %6, align 1, !tbaa !67
  %10 = getelementptr inbounds i8, ptr %3, i64 4
  store ptr %10, ptr %2, align 8, !tbaa !71
  %11 = load i8, ptr %8, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = zext i8 %9 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = zext i8 %7 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = zext i8 %5 to i32
  %19 = or disjoint i32 %17, %18
  %20 = or disjoint i32 %19, %15
  %21 = or disjoint i32 %20, %13
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getSwappedU16(ptr nocapture noundef %0) #13 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !71
  %5 = load i8, ptr %3, align 1, !tbaa !67
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !71
  %7 = load i8, ptr %4, align 1, !tbaa !67
  %8 = zext i8 %5 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = zext i8 %7 to i32
  %11 = or disjoint i32 %9, %10
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getSwappedU32(ptr nocapture noundef %0) #13 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !71
  %5 = load i8, ptr %3, align 1, !tbaa !67
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !71
  %7 = load i8, ptr %4, align 1, !tbaa !67
  %8 = getelementptr inbounds i8, ptr %3, i64 3
  store ptr %8, ptr %2, align 8, !tbaa !71
  %9 = load i8, ptr %6, align 1, !tbaa !67
  %10 = getelementptr inbounds i8, ptr %3, i64 4
  store ptr %10, ptr %2, align 8, !tbaa !71
  %11 = load i8, ptr %8, align 1, !tbaa !67
  %12 = zext i8 %5 to i32
  %13 = shl nuw i32 %12, 24
  %14 = zext i8 %7 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %13
  %17 = zext i8 %9 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or disjoint i32 %16, %18
  %20 = zext i8 %11 to i32
  %21 = or disjoint i32 %19, %20
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @getIntArray(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %6 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !34
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %8, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  switch i32 %1, label %88 [
    i32 3, label %21
    i32 4, label %16
    i32 5, label %9
  ]

9:                                                ; preds = %4
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %9
  %12 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %13 = shl nuw i32 %3, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %15 = zext nneg i32 %14 to i64
  br label %64

16:                                               ; preds = %4
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %16
  %19 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %20 = zext nneg i32 %3 to i64
  br label %40

21:                                               ; preds = %4
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %21
  %24 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %25 = zext nneg i32 %3 to i64
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %38, %26 ]
  %28 = phi ptr [ %24, %23 ], [ %31, %26 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %30 = load i8, ptr %28, align 1, !tbaa !67
  %31 = getelementptr inbounds i8, ptr %28, i64 2
  store ptr %31, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %32 = load i8, ptr %29, align 1, !tbaa !67
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = zext i8 %30 to i32
  %36 = or disjoint i32 %34, %35
  %37 = getelementptr inbounds i32, ptr %2, i64 %27
  store i32 %36, ptr %37, align 4, !tbaa !56
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp eq i64 %38, %25
  br i1 %39, label %88, label %26, !llvm.loop !98

40:                                               ; preds = %18, %40
  %41 = phi i64 [ 0, %18 ], [ %62, %40 ]
  %42 = phi ptr [ %19, %18 ], [ %49, %40 ]
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %43, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %44 = load i8, ptr %42, align 1, !tbaa !67
  %45 = getelementptr inbounds i8, ptr %42, i64 2
  store ptr %45, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %46 = load i8, ptr %43, align 1, !tbaa !67
  %47 = getelementptr inbounds i8, ptr %42, i64 3
  store ptr %47, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %48 = load i8, ptr %45, align 1, !tbaa !67
  %49 = getelementptr inbounds i8, ptr %42, i64 4
  store ptr %49, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %50 = load i8, ptr %47, align 1, !tbaa !67
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = zext i8 %48 to i32
  %54 = shl nuw nsw i32 %53, 16
  %55 = zext i8 %46 to i32
  %56 = shl nuw nsw i32 %55, 8
  %57 = zext i8 %44 to i32
  %58 = or disjoint i32 %56, %57
  %59 = or disjoint i32 %58, %54
  %60 = or disjoint i32 %59, %52
  %61 = getelementptr inbounds i32, ptr %2, i64 %41
  store i32 %60, ptr %61, align 4, !tbaa !56
  %62 = add nuw nsw i64 %41, 1
  %63 = icmp eq i64 %62, %20
  br i1 %63, label %88, label %40, !llvm.loop !99

64:                                               ; preds = %11, %64
  %65 = phi i64 [ 0, %11 ], [ %86, %64 ]
  %66 = phi ptr [ %12, %11 ], [ %73, %64 ]
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %67, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %68 = load i8, ptr %66, align 1, !tbaa !67
  %69 = getelementptr inbounds i8, ptr %66, i64 2
  store ptr %69, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %70 = load i8, ptr %67, align 1, !tbaa !67
  %71 = getelementptr inbounds i8, ptr %66, i64 3
  store ptr %71, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %72 = load i8, ptr %69, align 1, !tbaa !67
  %73 = getelementptr inbounds i8, ptr %66, i64 4
  store ptr %73, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  %74 = load i8, ptr %71, align 1, !tbaa !67
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 %75, 24
  %77 = zext i8 %72 to i32
  %78 = shl nuw nsw i32 %77, 16
  %79 = zext i8 %70 to i32
  %80 = shl nuw nsw i32 %79, 8
  %81 = zext i8 %68 to i32
  %82 = or disjoint i32 %80, %81
  %83 = or disjoint i32 %82, %78
  %84 = or disjoint i32 %83, %76
  %85 = getelementptr inbounds i32, ptr %2, i64 %65
  store i32 %84, ptr %85, align 4, !tbaa !56
  %86 = add nuw nsw i64 %65, 1
  %87 = icmp eq i64 %86, %15
  br i1 %87, label %88, label %64, !llvm.loop !100

88:                                               ; preds = %64, %40, %26, %9, %16, %21, %4
  store ptr %5, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind allocsize(0) }

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
!34 = !{!35, !36, i64 8}
!35 = !{!"Tiff", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !40, i64 32, !41, i64 40, !37, i64 44, !39, i64 56, !39, i64 60, !39, i64 64, !37, i64 68, !37, i64 4388, !37, i64 8708, !37, i64 8716, !36, i64 8728, !36, i64 8736}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"TiffImageFileHeader", !41, i64 0, !41, i64 2, !39, i64 4}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 0}
!43 = !{!41, !41, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = distinct !{!48, !45, !46}
!49 = distinct !{!49, !45, !46}
!50 = distinct !{!50, !45, !46}
!51 = distinct !{!51, !45, !46}
!52 = distinct !{!52, !45, !46}
!53 = distinct !{!53, !45, !46}
!54 = distinct !{!54, !45, !46}
!55 = distinct !{!55, !45, !46}
!56 = !{!39, !39, i64 0}
!57 = !{!58, !39, i64 4}
!58 = !{!"frame_format", !39, i64 0, !39, i64 4, !59, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!59 = !{!"double", !37, i64 0}
!60 = !{!61, !39, i64 916}
!61 = !{!"video_data_file", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !58, i64 776, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944, !39, i64 948, !39, i64 952, !36, i64 960}
!62 = !{!36, !36, i64 0}
!63 = !{!61, !39, i64 924}
!64 = !{!65, !39, i64 3992}
!65 = !{!"inp_par", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !58, i64 792, !58, i64 928, !39, i64 1064, !39, i64 1068, !61, i64 1072, !61, i64 2040, !61, i64 3008, !39, i64 3976, !39, i64 3980, !39, i64 3984, !39, i64 3988, !39, i64 3992, !39, i64 3996, !39, i64 4000, !39, i64 4004, !39, i64 4008, !39, i64 4012}
!66 = !{!61, !39, i64 920}
!67 = !{!37, !37, i64 0}
!68 = !{!35, !39, i64 24}
!69 = !{!35, !36, i64 8728}
!70 = !{!35, !36, i64 8736}
!71 = !{!35, !36, i64 16}
!72 = !{!35, !41, i64 32}
!73 = !{!35, !41, i64 34}
!74 = !{!35, !39, i64 36}
!75 = !{!35, !39, i64 64}
!76 = !{!35, !39, i64 60}
!77 = !{!35, !39, i64 28}
!78 = !{!35, !41, i64 40}
!79 = !{!35, !39, i64 56}
!80 = distinct !{!80, !45, !46}
!81 = distinct !{!81, !45, !46}
!82 = distinct !{!82, !45, !46}
!83 = distinct !{!83, !45, !46}
!84 = distinct !{!84, !45, !46}
!85 = !{!58, !39, i64 124}
!86 = !{!65, !39, i64 4000}
!87 = !{!65, !39, i64 3996}
!88 = !{!59, !59, i64 0}
!89 = distinct !{!89, !45, !46}
!90 = distinct !{!90, !45, !46}
!91 = !{!58, !39, i64 0}
!92 = distinct !{!92, !45, !46}
!93 = distinct !{!93, !45, !46}
!94 = distinct !{!94, !45, !46}
!95 = !{!58, !39, i64 128}
!96 = distinct !{!96, !45, !46}
!97 = distinct !{!97, !45, !46}
!98 = distinct !{!98, !45, !46}
!99 = distinct !{!99, !45, !46}
!100 = distinct !{!100, !45, !46}
