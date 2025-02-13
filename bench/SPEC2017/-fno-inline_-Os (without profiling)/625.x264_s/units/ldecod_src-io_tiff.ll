; ModuleID = 'ldecod_src/io_tiff.c'
source_filename = "ldecod_src/io_tiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Tiff = type { ptr, ptr, ptr, i32, i32, %struct.TiffImageFileHeader, i16, [3 x i32], i32, i32, i32, [1080 x i32], [1080 x i32], [2 x i32], [2 x i32], ptr, ptr }
%struct.TiffImageFileHeader = type { i16, i16, i32 }
%struct.RGB_YUV = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @constructTiff(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @destructTiff(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef nonnull %7) #18
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @horizontal_half_1chan_cosite(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %245

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
  %22 = sub nsw i64 0, %10
  %23 = sub nsw i64 0, %12
  %24 = sub nsw i64 0, %14
  %25 = sub nsw i64 0, %16
  %26 = and i32 %1, -2
  %27 = add nsw i32 %1, -1
  %28 = add nsw i32 %1, -3
  %29 = add nsw i32 %1, -5
  %30 = add nsw i32 %1, -7
  %31 = add i32 %1, -17
  %32 = and i32 %31, -2
  %33 = add i32 %32, 10
  %34 = sext i32 %3 to i64
  br label %35

35:                                               ; preds = %9, %240
  %36 = phi ptr [ %4, %9 ], [ %242, %240 ]
  %37 = phi ptr [ %0, %9 ], [ %241, %240 ]
  %38 = phi i32 [ 0, %9 ], [ %243, %240 ]
  br label %39

39:                                               ; preds = %35, %101
  %40 = phi i64 [ 0, %35 ], [ %106, %101 ]
  %41 = phi ptr [ %36, %35 ], [ %104, %101 ]
  %42 = phi ptr [ %37, %35 ], [ %105, %101 ]
  %43 = icmp eq i64 %40, 0
  %44 = trunc i64 %40 to i32
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 3)
  %46 = tail call i32 @llvm.umin.i32(i32 %44, i32 5)
  %47 = load i16, ptr %42, align 2, !tbaa !15
  %48 = zext i16 %47 to i32
  %49 = shl nuw nsw i32 %48, 11
  %50 = select i1 %43, i64 0, i64 %34
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i16, ptr %42, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !15
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds i16, ptr %42, i64 %10
  %56 = load i16, ptr %55, align 2, !tbaa !15
  %57 = zext i16 %56 to i32
  %58 = add nuw nsw i32 %57, %54
  %59 = mul nuw nsw i32 %58, 1228
  %60 = add nuw nsw i32 %59, %49
  %61 = mul nsw i32 %45, %3
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i16, ptr %42, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !15
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds i16, ptr %42, i64 %12
  %68 = load i16, ptr %67, align 2, !tbaa !15
  %69 = zext i16 %68 to i32
  %70 = add nuw nsw i32 %69, %66
  %71 = mul nsw i32 %70, -262
  %72 = add nsw i32 %60, %71
  %73 = mul nsw i32 %46, %3
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds i16, ptr %42, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !15
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds i16, ptr %42, i64 %14
  %80 = load i16, ptr %79, align 2, !tbaa !15
  %81 = zext i16 %80 to i32
  %82 = add nuw nsw i32 %81, %78
  %83 = mul nuw nsw i32 %82, 47
  %84 = add nsw i32 %72, %83
  %85 = mul nsw i64 %40, %10
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i16, ptr %42, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !15
  %89 = zext i16 %88 to i32
  %90 = getelementptr inbounds i16, ptr %42, i64 %16
  %91 = load i16, ptr %90, align 2, !tbaa !15
  %92 = zext i16 %91 to i32
  %93 = add nuw nsw i32 %92, %89
  %94 = mul nuw nsw i32 %93, 11
  %95 = add nsw i32 %84, %94
  %96 = icmp slt i32 %95, -6143
  br i1 %96, label %101, label %97

97:                                               ; preds = %39
  %98 = add nsw i32 %95, 2048
  %99 = sdiv i32 %98, 4096
  %100 = tail call i32 @llvm.smin.i32(i32 %99, i32 %6)
  br label %101

101:                                              ; preds = %97, %39
  %102 = phi i32 [ 0, %39 ], [ %100, %97 ]
  %103 = trunc i32 %102 to i16
  store i16 %103, ptr %41, align 2, !tbaa !15
  %104 = getelementptr inbounds i16, ptr %41, i64 %17
  %105 = getelementptr inbounds i16, ptr %42, i64 %19
  %106 = add nuw nsw i64 %40, 2
  %107 = icmp ult i64 %40, 6
  br i1 %107, label %39, label %108, !llvm.loop !16

108:                                              ; preds = %101
  br i1 %21, label %109, label %164

109:                                              ; preds = %108, %157
  %110 = phi ptr [ %160, %157 ], [ %104, %108 ]
  %111 = phi ptr [ %161, %157 ], [ %105, %108 ]
  %112 = phi i32 [ %162, %157 ], [ 8, %108 ]
  %113 = load i16, ptr %111, align 2, !tbaa !15
  %114 = zext i16 %113 to i32
  %115 = shl nuw nsw i32 %114, 11
  %116 = getelementptr inbounds i16, ptr %111, i64 %22
  %117 = load i16, ptr %116, align 2, !tbaa !15
  %118 = zext i16 %117 to i32
  %119 = getelementptr inbounds i16, ptr %111, i64 %10
  %120 = load i16, ptr %119, align 2, !tbaa !15
  %121 = zext i16 %120 to i32
  %122 = add nuw nsw i32 %121, %118
  %123 = mul nuw nsw i32 %122, 1228
  %124 = add nuw nsw i32 %123, %115
  %125 = getelementptr inbounds i16, ptr %111, i64 %23
  %126 = load i16, ptr %125, align 2, !tbaa !15
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds i16, ptr %111, i64 %12
  %129 = load i16, ptr %128, align 2, !tbaa !15
  %130 = zext i16 %129 to i32
  %131 = add nuw nsw i32 %130, %127
  %132 = mul nsw i32 %131, -262
  %133 = add nsw i32 %124, %132
  %134 = getelementptr inbounds i16, ptr %111, i64 %24
  %135 = load i16, ptr %134, align 2, !tbaa !15
  %136 = zext i16 %135 to i32
  %137 = getelementptr inbounds i16, ptr %111, i64 %14
  %138 = load i16, ptr %137, align 2, !tbaa !15
  %139 = zext i16 %138 to i32
  %140 = add nuw nsw i32 %139, %136
  %141 = mul nuw nsw i32 %140, 47
  %142 = add nsw i32 %133, %141
  %143 = getelementptr inbounds i16, ptr %111, i64 %25
  %144 = load i16, ptr %143, align 2, !tbaa !15
  %145 = zext i16 %144 to i32
  %146 = getelementptr inbounds i16, ptr %111, i64 %16
  %147 = load i16, ptr %146, align 2, !tbaa !15
  %148 = zext i16 %147 to i32
  %149 = add nuw nsw i32 %148, %145
  %150 = mul nuw nsw i32 %149, 11
  %151 = add nsw i32 %142, %150
  %152 = icmp slt i32 %151, -6143
  br i1 %152, label %157, label %153

153:                                              ; preds = %109
  %154 = add nsw i32 %151, 2048
  %155 = sdiv i32 %154, 4096
  %156 = tail call i32 @llvm.smin.i32(i32 %155, i32 %6)
  br label %157

157:                                              ; preds = %153, %109
  %158 = phi i32 [ 0, %109 ], [ %156, %153 ]
  %159 = trunc i32 %158 to i16
  store i16 %159, ptr %110, align 2, !tbaa !15
  %160 = getelementptr inbounds i16, ptr %110, i64 %17
  %161 = getelementptr inbounds i16, ptr %111, i64 %19
  %162 = add nuw nsw i32 %112, 2
  %163 = icmp slt i32 %162, %20
  br i1 %163, label %109, label %164, !llvm.loop !18

164:                                              ; preds = %157, %108
  %165 = phi i32 [ 8, %108 ], [ %33, %157 ]
  %166 = phi ptr [ %105, %108 ], [ %161, %157 ]
  %167 = phi ptr [ %104, %108 ], [ %160, %157 ]
  %168 = icmp slt i32 %165, %26
  br i1 %168, label %169, label %240

169:                                              ; preds = %164, %233
  %170 = phi ptr [ %236, %233 ], [ %167, %164 ]
  %171 = phi ptr [ %237, %233 ], [ %166, %164 ]
  %172 = phi i32 [ %238, %233 ], [ %165, %164 ]
  %173 = icmp slt i32 %172, %27
  %174 = icmp slt i32 %172, %28
  %175 = sub nsw i32 %27, %172
  %176 = select i1 %174, i32 3, i32 %175
  %177 = icmp slt i32 %172, %29
  %178 = select i1 %177, i32 5, i32 %175
  %179 = icmp slt i32 %172, %30
  %180 = select i1 %179, i32 7, i32 %175
  %181 = load i16, ptr %171, align 2, !tbaa !15
  %182 = zext i16 %181 to i32
  %183 = shl nuw nsw i32 %182, 11
  %184 = getelementptr inbounds i16, ptr %171, i64 %22
  %185 = load i16, ptr %184, align 2, !tbaa !15
  %186 = zext i16 %185 to i32
  %187 = select i1 %173, i32 %3, i32 0
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i16, ptr %171, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !15
  %191 = zext i16 %190 to i32
  %192 = add nuw nsw i32 %191, %186
  %193 = mul nuw nsw i32 %192, 1228
  %194 = add nuw nsw i32 %193, %183
  %195 = getelementptr inbounds i16, ptr %171, i64 %23
  %196 = load i16, ptr %195, align 2, !tbaa !15
  %197 = zext i16 %196 to i32
  %198 = mul nsw i32 %176, %3
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i16, ptr %171, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !15
  %202 = zext i16 %201 to i32
  %203 = add nuw nsw i32 %202, %197
  %204 = mul nsw i32 %203, -262
  %205 = add nsw i32 %194, %204
  %206 = getelementptr inbounds i16, ptr %171, i64 %24
  %207 = load i16, ptr %206, align 2, !tbaa !15
  %208 = zext i16 %207 to i32
  %209 = mul nsw i32 %178, %3
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i16, ptr %171, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !15
  %213 = zext i16 %212 to i32
  %214 = add nuw nsw i32 %213, %208
  %215 = mul nuw nsw i32 %214, 47
  %216 = add nsw i32 %205, %215
  %217 = getelementptr inbounds i16, ptr %171, i64 %25
  %218 = load i16, ptr %217, align 2, !tbaa !15
  %219 = zext i16 %218 to i32
  %220 = mul nsw i32 %180, %3
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i16, ptr %171, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !15
  %224 = zext i16 %223 to i32
  %225 = add nuw nsw i32 %224, %219
  %226 = mul nuw nsw i32 %225, 11
  %227 = add nsw i32 %216, %226
  %228 = icmp slt i32 %227, -6143
  br i1 %228, label %233, label %229

229:                                              ; preds = %169
  %230 = add nsw i32 %227, 2048
  %231 = sdiv i32 %230, 4096
  %232 = tail call i32 @llvm.smin.i32(i32 %231, i32 %6)
  br label %233

233:                                              ; preds = %229, %169
  %234 = phi i32 [ 0, %169 ], [ %232, %229 ]
  %235 = trunc i32 %234 to i16
  store i16 %235, ptr %170, align 2, !tbaa !15
  %236 = getelementptr inbounds i16, ptr %170, i64 %17
  %237 = getelementptr inbounds i16, ptr %171, i64 %19
  %238 = add nuw nsw i32 %172, 2
  %239 = icmp slt i32 %238, %26
  br i1 %239, label %169, label %240, !llvm.loop !19

240:                                              ; preds = %233, %164
  %241 = phi ptr [ %166, %164 ], [ %237, %233 ]
  %242 = phi ptr [ %167, %164 ], [ %236, %233 ]
  %243 = add nuw nsw i32 %38, 1
  %244 = icmp eq i32 %243, %2
  br i1 %244, label %245, label %35, !llvm.loop !20

245:                                              ; preds = %240, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @vertical_half_1chan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = mul nsw i32 %3, %1
  %9 = icmp sgt i32 %1, 0
  %10 = sext i32 %8 to i64
  %11 = shl nsw i32 %8, 1
  %12 = sext i32 %11 to i64
  %13 = mul nsw i32 %8, 3
  %14 = sext i32 %13 to i64
  %15 = shl nsw i32 %8, 2
  %16 = sext i32 %15 to i64
  %17 = mul nsw i32 %8, 5
  %18 = sext i32 %17 to i64
  %19 = mul nsw i32 %8, 6
  %20 = sext i32 %19 to i64
  %21 = sext i32 %5 to i64
  %22 = sext i32 %3 to i64
  %23 = sext i32 %8 to i64
  br label %24

24:                                               ; preds = %7, %108
  %25 = phi i64 [ 0, %7 ], [ %112, %108 ]
  %26 = phi ptr [ %4, %7 ], [ %110, %108 ]
  %27 = phi ptr [ %0, %7 ], [ %111, %108 ]
  br i1 %9, label %28, label %108

28:                                               ; preds = %24
  %29 = trunc i64 %25 to i32
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 3)
  %31 = icmp eq i64 %25, 0
  %32 = select i1 %31, i32 0, i32 2
  %33 = select i1 %31, i64 0, i64 %23
  %34 = sub nsw i64 0, %33
  %35 = mul nsw i32 %32, %8
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 0, %36
  %38 = mul nsw i32 %30, %8
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = mul nsw i64 %25, %10
  %42 = sub nsw i64 0, %41
  br label %43

43:                                               ; preds = %28, %101
  %44 = phi ptr [ %26, %28 ], [ %104, %101 ]
  %45 = phi ptr [ %27, %28 ], [ %105, %101 ]
  %46 = phi i32 [ 0, %28 ], [ %106, %101 ]
  %47 = load i16, ptr %45, align 2, !tbaa !15
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds i16, ptr %45, i64 %10
  %50 = load i16, ptr %49, align 2, !tbaa !15
  %51 = zext i16 %50 to i32
  %52 = add nuw nsw i32 %51, %48
  %53 = mul nuw nsw i32 %52, 225
  %54 = getelementptr inbounds i16, ptr %45, i64 %34
  %55 = load i16, ptr %54, align 2, !tbaa !15
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds i16, ptr %45, i64 %12
  %58 = load i16, ptr %57, align 2, !tbaa !15
  %59 = zext i16 %58 to i32
  %60 = add nuw nsw i32 %59, %56
  %61 = mul nuw nsw i32 %60, 69
  %62 = add nuw nsw i32 %61, %53
  %63 = getelementptr inbounds i16, ptr %45, i64 %37
  %64 = load i16, ptr %63, align 2, !tbaa !15
  %65 = zext i16 %64 to i32
  %66 = getelementptr inbounds i16, ptr %45, i64 %14
  %67 = load i16, ptr %66, align 2, !tbaa !15
  %68 = zext i16 %67 to i32
  %69 = add nuw nsw i32 %68, %65
  %70 = mul nsw i32 %69, -30
  %71 = add nsw i32 %62, %70
  %72 = getelementptr inbounds i16, ptr %45, i64 %40
  %73 = load i16, ptr %72, align 2, !tbaa !15
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds i16, ptr %45, i64 %16
  %76 = load i16, ptr %75, align 2, !tbaa !15
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %77, %74
  %79 = shl nuw nsw i32 %78, 4
  %80 = sub nsw i32 %71, %79
  %81 = getelementptr inbounds i16, ptr %45, i64 %42
  %82 = load i16, ptr %81, align 2, !tbaa !15
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds i16, ptr %45, i64 %18
  %85 = load i16, ptr %84, align 2, !tbaa !15
  %86 = zext i16 %85 to i32
  %87 = add nuw nsw i32 %86, %83
  %88 = mul nuw nsw i32 %87, 6
  %89 = add nsw i32 %80, %88
  %90 = getelementptr inbounds i16, ptr %45, i64 %20
  %91 = load i16, ptr %90, align 2, !tbaa !15
  %92 = zext i16 %91 to i32
  %93 = add nuw nsw i32 %92, %83
  %94 = shl nuw nsw i32 %93, 1
  %95 = add nsw i32 %89, %94
  %96 = icmp slt i32 %95, -767
  br i1 %96, label %101, label %97

97:                                               ; preds = %43
  %98 = add nsw i32 %95, 256
  %99 = sdiv i32 %98, 512
  %100 = tail call i32 @llvm.smin.i32(i32 %99, i32 %6)
  br label %101

101:                                              ; preds = %97, %43
  %102 = phi i32 [ 0, %43 ], [ %100, %97 ]
  %103 = trunc i32 %102 to i16
  store i16 %103, ptr %44, align 2, !tbaa !15
  %104 = getelementptr inbounds i16, ptr %44, i64 %21
  %105 = getelementptr inbounds i16, ptr %45, i64 %22
  %106 = add nuw nsw i32 %46, 1
  %107 = icmp eq i32 %106, %1
  br i1 %107, label %108, label %43, !llvm.loop !21

108:                                              ; preds = %101, %24
  %109 = phi ptr [ %27, %24 ], [ %105, %101 ]
  %110 = phi ptr [ %26, %24 ], [ %104, %101 ]
  %111 = getelementptr inbounds i16, ptr %109, i64 %10
  %112 = add nuw nsw i64 %25, 2
  %113 = icmp ult i64 %25, 4
  br i1 %113, label %24, label %114, !llvm.loop !22

114:                                              ; preds = %108
  %115 = add nsw i32 %2, -6
  %116 = icmp sgt i32 %2, 12
  br i1 %116, label %117, label %205

117:                                              ; preds = %114
  %118 = sub nsw i64 0, %10
  %119 = sub nsw i64 0, %12
  %120 = sub nsw i64 0, %14
  %121 = sub nsw i64 0, %16
  %122 = sub nsw i64 0, %18
  %123 = add nsw i32 %2, -13
  %124 = and i32 %123, -2
  br label %125

125:                                              ; preds = %117, %197
  %126 = phi ptr [ %110, %117 ], [ %199, %197 ]
  %127 = phi ptr [ %111, %117 ], [ %200, %197 ]
  %128 = phi i32 [ 6, %117 ], [ %201, %197 ]
  br i1 %9, label %129, label %197

129:                                              ; preds = %125, %190
  %130 = phi ptr [ %193, %190 ], [ %126, %125 ]
  %131 = phi ptr [ %194, %190 ], [ %127, %125 ]
  %132 = phi i32 [ %195, %190 ], [ 0, %125 ]
  %133 = load i16, ptr %131, align 2, !tbaa !15
  %134 = zext i16 %133 to i32
  %135 = getelementptr inbounds i16, ptr %131, i64 %10
  %136 = load i16, ptr %135, align 2, !tbaa !15
  %137 = zext i16 %136 to i32
  %138 = add nuw nsw i32 %137, %134
  %139 = mul nuw nsw i32 %138, 225
  %140 = getelementptr inbounds i16, ptr %131, i64 %118
  %141 = load i16, ptr %140, align 2, !tbaa !15
  %142 = zext i16 %141 to i32
  %143 = getelementptr inbounds i16, ptr %131, i64 %12
  %144 = load i16, ptr %143, align 2, !tbaa !15
  %145 = zext i16 %144 to i32
  %146 = add nuw nsw i32 %145, %142
  %147 = mul nuw nsw i32 %146, 69
  %148 = add nuw nsw i32 %147, %139
  %149 = getelementptr inbounds i16, ptr %131, i64 %119
  %150 = load i16, ptr %149, align 2, !tbaa !15
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds i16, ptr %131, i64 %14
  %153 = load i16, ptr %152, align 2, !tbaa !15
  %154 = zext i16 %153 to i32
  %155 = add nuw nsw i32 %154, %151
  %156 = mul nsw i32 %155, -30
  %157 = add nsw i32 %148, %156
  %158 = getelementptr inbounds i16, ptr %131, i64 %120
  %159 = load i16, ptr %158, align 2, !tbaa !15
  %160 = zext i16 %159 to i32
  %161 = getelementptr inbounds i16, ptr %131, i64 %16
  %162 = load i16, ptr %161, align 2, !tbaa !15
  %163 = zext i16 %162 to i32
  %164 = add nuw nsw i32 %163, %160
  %165 = shl nuw nsw i32 %164, 4
  %166 = sub nsw i32 %157, %165
  %167 = getelementptr inbounds i16, ptr %131, i64 %121
  %168 = load i16, ptr %167, align 2, !tbaa !15
  %169 = zext i16 %168 to i32
  %170 = getelementptr inbounds i16, ptr %131, i64 %18
  %171 = load i16, ptr %170, align 2, !tbaa !15
  %172 = zext i16 %171 to i32
  %173 = add nuw nsw i32 %172, %169
  %174 = mul nuw nsw i32 %173, 6
  %175 = add nsw i32 %166, %174
  %176 = getelementptr inbounds i16, ptr %131, i64 %122
  %177 = load i16, ptr %176, align 2, !tbaa !15
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds i16, ptr %131, i64 %20
  %180 = load i16, ptr %179, align 2, !tbaa !15
  %181 = zext i16 %180 to i32
  %182 = add nuw nsw i32 %181, %178
  %183 = shl nuw nsw i32 %182, 1
  %184 = add nsw i32 %175, %183
  %185 = icmp slt i32 %184, -767
  br i1 %185, label %190, label %186

186:                                              ; preds = %129
  %187 = add nsw i32 %184, 256
  %188 = sdiv i32 %187, 512
  %189 = tail call i32 @llvm.smin.i32(i32 %188, i32 %6)
  br label %190

190:                                              ; preds = %186, %129
  %191 = phi i32 [ 0, %129 ], [ %189, %186 ]
  %192 = trunc i32 %191 to i16
  store i16 %192, ptr %130, align 2, !tbaa !15
  %193 = getelementptr inbounds i16, ptr %130, i64 %21
  %194 = getelementptr inbounds i16, ptr %131, i64 %22
  %195 = add nuw nsw i32 %132, 1
  %196 = icmp eq i32 %195, %1
  br i1 %196, label %197, label %129, !llvm.loop !23

197:                                              ; preds = %190, %125
  %198 = phi ptr [ %127, %125 ], [ %194, %190 ]
  %199 = phi ptr [ %126, %125 ], [ %193, %190 ]
  %200 = getelementptr inbounds i16, ptr %198, i64 %10
  %201 = add nuw nsw i32 %128, 2
  %202 = icmp slt i32 %201, %115
  br i1 %202, label %125, label %203, !llvm.loop !24

203:                                              ; preds = %197
  %204 = add i32 %124, 8
  br label %205

205:                                              ; preds = %203, %114
  %206 = phi i32 [ 6, %114 ], [ %204, %203 ]
  %207 = phi ptr [ %111, %114 ], [ %200, %203 ]
  %208 = phi ptr [ %110, %114 ], [ %199, %203 ]
  %209 = and i32 %2, -2
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %325

211:                                              ; preds = %205
  %212 = add nsw i32 %2, -1
  %213 = add nsw i32 %2, -2
  %214 = add nsw i32 %2, -3
  %215 = add nsw i32 %2, -4
  %216 = add nsw i32 %2, -5
  %217 = sub nsw i64 0, %10
  %218 = sub nsw i64 0, %12
  %219 = sub nsw i64 0, %14
  %220 = sub nsw i64 0, %16
  %221 = sub nsw i64 0, %18
  br label %222

222:                                              ; preds = %211, %319
  %223 = phi ptr [ %208, %211 ], [ %321, %319 ]
  %224 = phi ptr [ %207, %211 ], [ %322, %319 ]
  %225 = phi i32 [ %206, %211 ], [ %323, %319 ]
  br i1 %9, label %226, label %319

226:                                              ; preds = %222
  %227 = icmp slt i32 %225, %115
  %228 = sub nsw i32 %212, %225
  %229 = select i1 %227, i32 6, i32 %228
  %230 = icmp slt i32 %225, %216
  %231 = select i1 %230, i32 5, i32 %228
  %232 = icmp slt i32 %225, %215
  %233 = select i1 %232, i32 4, i32 %228
  %234 = icmp slt i32 %225, %214
  %235 = select i1 %234, i32 3, i32 %228
  %236 = icmp slt i32 %225, %213
  %237 = select i1 %236, i32 2, i32 %228
  %238 = icmp slt i32 %225, %212
  %239 = select i1 %238, i32 %8, i32 0
  %240 = sext i32 %239 to i64
  %241 = mul nsw i32 %237, %8
  %242 = sext i32 %241 to i64
  %243 = mul nsw i32 %235, %8
  %244 = sext i32 %243 to i64
  %245 = mul nsw i32 %233, %8
  %246 = sext i32 %245 to i64
  %247 = mul nsw i32 %231, %8
  %248 = sext i32 %247 to i64
  %249 = mul nsw i32 %229, %8
  %250 = sext i32 %249 to i64
  br label %251

251:                                              ; preds = %226, %312
  %252 = phi ptr [ %223, %226 ], [ %315, %312 ]
  %253 = phi ptr [ %224, %226 ], [ %316, %312 ]
  %254 = phi i32 [ 0, %226 ], [ %317, %312 ]
  %255 = load i16, ptr %253, align 2, !tbaa !15
  %256 = zext i16 %255 to i32
  %257 = getelementptr inbounds i16, ptr %253, i64 %240
  %258 = load i16, ptr %257, align 2, !tbaa !15
  %259 = zext i16 %258 to i32
  %260 = add nuw nsw i32 %259, %256
  %261 = mul nuw nsw i32 %260, 225
  %262 = getelementptr inbounds i16, ptr %253, i64 %217
  %263 = load i16, ptr %262, align 2, !tbaa !15
  %264 = zext i16 %263 to i32
  %265 = getelementptr inbounds i16, ptr %253, i64 %242
  %266 = load i16, ptr %265, align 2, !tbaa !15
  %267 = zext i16 %266 to i32
  %268 = add nuw nsw i32 %267, %264
  %269 = mul nuw nsw i32 %268, 69
  %270 = add nuw nsw i32 %269, %261
  %271 = getelementptr inbounds i16, ptr %253, i64 %218
  %272 = load i16, ptr %271, align 2, !tbaa !15
  %273 = zext i16 %272 to i32
  %274 = getelementptr inbounds i16, ptr %253, i64 %244
  %275 = load i16, ptr %274, align 2, !tbaa !15
  %276 = zext i16 %275 to i32
  %277 = add nuw nsw i32 %276, %273
  %278 = mul nsw i32 %277, -30
  %279 = add nsw i32 %270, %278
  %280 = getelementptr inbounds i16, ptr %253, i64 %219
  %281 = load i16, ptr %280, align 2, !tbaa !15
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds i16, ptr %253, i64 %246
  %284 = load i16, ptr %283, align 2, !tbaa !15
  %285 = zext i16 %284 to i32
  %286 = add nuw nsw i32 %285, %282
  %287 = shl nuw nsw i32 %286, 4
  %288 = sub nsw i32 %279, %287
  %289 = getelementptr inbounds i16, ptr %253, i64 %220
  %290 = load i16, ptr %289, align 2, !tbaa !15
  %291 = zext i16 %290 to i32
  %292 = getelementptr inbounds i16, ptr %253, i64 %248
  %293 = load i16, ptr %292, align 2, !tbaa !15
  %294 = zext i16 %293 to i32
  %295 = add nuw nsw i32 %294, %291
  %296 = mul nuw nsw i32 %295, 6
  %297 = add nsw i32 %288, %296
  %298 = getelementptr inbounds i16, ptr %253, i64 %221
  %299 = load i16, ptr %298, align 2, !tbaa !15
  %300 = zext i16 %299 to i32
  %301 = getelementptr inbounds i16, ptr %253, i64 %250
  %302 = load i16, ptr %301, align 2, !tbaa !15
  %303 = zext i16 %302 to i32
  %304 = add nuw nsw i32 %303, %300
  %305 = shl nuw nsw i32 %304, 1
  %306 = add nsw i32 %297, %305
  %307 = icmp slt i32 %306, -767
  br i1 %307, label %312, label %308

308:                                              ; preds = %251
  %309 = add nsw i32 %306, 256
  %310 = sdiv i32 %309, 512
  %311 = tail call i32 @llvm.smin.i32(i32 %310, i32 %6)
  br label %312

312:                                              ; preds = %308, %251
  %313 = phi i32 [ 0, %251 ], [ %311, %308 ]
  %314 = trunc i32 %313 to i16
  store i16 %314, ptr %252, align 2, !tbaa !15
  %315 = getelementptr inbounds i16, ptr %252, i64 %21
  %316 = getelementptr inbounds i16, ptr %253, i64 %22
  %317 = add nuw nsw i32 %254, 1
  %318 = icmp eq i32 %317, %1
  br i1 %318, label %319, label %251, !llvm.loop !25

319:                                              ; preds = %312, %222
  %320 = phi ptr [ %224, %222 ], [ %316, %312 ]
  %321 = phi ptr [ %223, %222 ], [ %315, %312 ]
  %322 = getelementptr inbounds i16, ptr %320, i64 %10
  %323 = add nuw nsw i32 %225, 2
  %324 = icmp slt i32 %323, %209
  br i1 %324, label %222, label %325, !llvm.loop !26

325:                                              ; preds = %319, %205
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ReadTIFFImage(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #5 {
  %6 = alloca [255 x i8], align 16
  %7 = alloca %struct.RGB_YUV, align 8
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #19
  %8 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !27
  %12 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !28
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr @stderr, align 8, !tbaa !33
  %21 = tail call i64 @fwrite(ptr nonnull @.str, i64 102, i64 1, ptr %20) #20
  br label %185

22:                                               ; preds = %15, %5
  %23 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 20
  %28 = load i32, ptr %27, align 8, !tbaa !35
  %29 = add nsw i32 %28, %2
  %30 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !37
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 2
  %35 = select i1 %32, ptr @.str.2, ptr @.str.1
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %6, i64 noundef 255, ptr noundef nonnull %35, ptr noundef nonnull %33, i32 noundef %24, i32 noundef %29, ptr noundef nonnull %34) #18
  switch i32 %36, label %42 [
    i32 -1, label %37
    i32 255, label %37
  ]

37:                                               ; preds = %26, %26
  %38 = load ptr, ptr @stderr, align 8, !tbaa !33
  %39 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr %38) #20
  br label %186

40:                                               ; preds = %22
  %41 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #18
  br label %42

42:                                               ; preds = %26, %40
  %43 = call fastcc i32 @readTiff(ptr noundef nonnull %6) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %185

45:                                               ; preds = %42
  %46 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 9), align 4, !tbaa !38
  %47 = icmp eq i32 %46, %11
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @stderr, align 8, !tbaa !33
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.4, i32 noundef %46, i32 noundef %11) #22
  br label %185

51:                                               ; preds = %45
  %52 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 10), align 8, !tbaa !39
  %53 = icmp eq i32 %52, %9
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @stderr, align 8, !tbaa !33
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.5, i32 noundef %52, i32 noundef %9) #22
  br label %185

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 18
  %59 = load i32, ptr %58, align 4, !tbaa !40
  switch i32 %59, label %60 [
    i32 8, label %63
    i32 16, label %63
  ]

60:                                               ; preds = %57
  %61 = load ptr, ptr @stderr, align 8, !tbaa !33
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.6, i32 noundef %59) #22
  br label %185

63:                                               ; preds = %57, %57
  %64 = load ptr, ptr @ReadTIFFImage.t, align 8, !tbaa !14
  %65 = mul i32 %11, %9
  %66 = mul nsw i32 %65, 3
  %67 = load i32, ptr %12, align 4, !tbaa !28
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %147

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 22
  %71 = load i32, ptr %70, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 21
  %73 = load i32, ptr %72, align 4, !tbaa !42
  %74 = call fastcc i32 @RGB_YUV_initialize(ptr noundef nonnull %7, i32 noundef %71, i32 noundef %73) #21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %185

76:                                               ; preds = %69
  %77 = getelementptr inbounds i16, ptr %64, i64 1
  %78 = getelementptr inbounds i16, ptr %64, i64 2
  call fastcc void @RGB_YUV_rgb_to_yuv(ptr noundef nonnull %7, ptr noundef %64, ptr noundef nonnull %77, ptr noundef nonnull %78, i32 noundef %9, i32 noundef %11, ptr noundef %64, ptr noundef nonnull %77, ptr noundef nonnull %78) #21
  %79 = load i32, ptr %3, align 8, !tbaa !43
  switch i32 %79, label %144 [
    i32 1, label %80
    i32 2, label %105
    i32 3, label %147
  ]

80:                                               ; preds = %76
  %81 = sdiv i32 %66, 2
  %82 = sext i32 %81 to i64
  %83 = shl nsw i64 %82, 1
  %84 = call noalias ptr @malloc(i64 noundef %83) #23
  %85 = sext i32 %65 to i64
  %86 = getelementptr inbounds i16, ptr %84, i64 %85
  %87 = sdiv i32 %65, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, ptr %86, i64 %88
  %90 = icmp sgt i32 %65, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %80
  %92 = zext nneg i32 %65 to i64
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i64 [ 0, %91 ], [ %99, %93 ]
  %95 = phi ptr [ %64, %91 ], [ %98, %93 ]
  %96 = load i16, ptr %95, align 2, !tbaa !15
  %97 = getelementptr inbounds i16, ptr %84, i64 %94
  store i16 %96, ptr %97, align 2, !tbaa !15
  %98 = getelementptr inbounds i16, ptr %95, i64 3
  %99 = add nuw nsw i64 %94, 1
  %100 = icmp eq i64 %99, %92
  br i1 %100, label %101, label %93, !llvm.loop !44

101:                                              ; preds = %93, %80
  %102 = and i64 %85, 9223372036854775807
  %103 = call noalias ptr @malloc(i64 noundef %102) #23
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %77, i32 noundef %9, i32 noundef %11, i32 noundef 3, ptr noundef %103, i32 noundef 1, i32 noundef 65535) #21
  %104 = sdiv i32 %9, 2
  call void @vertical_half_1chan(ptr noundef %103, i32 noundef %104, i32 noundef %11, i32 noundef 1, ptr noundef %86, i32 noundef 1, i32 noundef 65535) #21
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %78, i32 noundef %9, i32 noundef %11, i32 noundef 3, ptr noundef %103, i32 noundef 1, i32 noundef 65535) #21
  call void @vertical_half_1chan(ptr noundef %103, i32 noundef %104, i32 noundef %11, i32 noundef 1, ptr noundef %89, i32 noundef 1, i32 noundef 65535) #21
  call void @free(ptr noundef %103) #18
  br label %147

105:                                              ; preds = %76
  %106 = shl nsw i32 %65, 1
  %107 = sext i32 %106 to i64
  %108 = shl nsw i64 %107, 1
  %109 = call noalias ptr @malloc(i64 noundef %108) #23
  %110 = sext i32 %65 to i64
  %111 = getelementptr inbounds i16, ptr %109, i64 %110
  %112 = sdiv i32 %65, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, ptr %109, i64 %113
  %115 = icmp sgt i32 %65, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = zext nneg i32 %65 to i64
  br label %123

118:                                              ; preds = %123, %105
  %119 = icmp sgt i32 %11, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %118
  %121 = sext i32 %9 to i64
  %122 = zext nneg i32 %11 to i64
  br label %131

123:                                              ; preds = %116, %123
  %124 = phi i64 [ 0, %116 ], [ %129, %123 ]
  %125 = phi ptr [ %64, %116 ], [ %128, %123 ]
  %126 = load i16, ptr %125, align 2, !tbaa !15
  %127 = getelementptr inbounds i16, ptr %109, i64 %124
  store i16 %126, ptr %127, align 2, !tbaa !15
  %128 = getelementptr inbounds i16, ptr %125, i64 3
  %129 = add nuw nsw i64 %124, 1
  %130 = icmp eq i64 %129, %117
  br i1 %130, label %118, label %123, !llvm.loop !45

131:                                              ; preds = %120, %131
  %132 = phi i64 [ 0, %120 ], [ %142, %131 ]
  %133 = mul nsw i64 %132, %121
  %134 = mul nsw i64 %133, 3
  %135 = getelementptr inbounds i16, ptr %77, i64 %134
  %136 = trunc i64 %133 to i32
  %137 = sdiv i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i16, ptr %111, i64 %138
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %135, i32 noundef %9, i32 noundef 1, i32 noundef 3, ptr noundef %139, i32 noundef 1, i32 noundef 65535) #21
  %140 = getelementptr inbounds i16, ptr %78, i64 %134
  %141 = getelementptr inbounds i16, ptr %114, i64 %138
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %140, i32 noundef %9, i32 noundef 1, i32 noundef 3, ptr noundef %141, i32 noundef 1, i32 noundef 65535) #21
  %142 = add nuw nsw i64 %132, 1
  %143 = icmp eq i64 %142, %122
  br i1 %143, label %147, label %131, !llvm.loop !46

144:                                              ; preds = %76
  %145 = load ptr, ptr @stderr, align 8, !tbaa !33
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.7, i32 noundef %79) #22
  br label %185

147:                                              ; preds = %131, %118, %101, %76, %63
  %148 = phi i32 [ %66, %76 ], [ %81, %101 ], [ %66, %63 ], [ %106, %118 ], [ %106, %131 ]
  %149 = phi ptr [ %64, %76 ], [ %84, %101 ], [ %64, %63 ], [ %109, %118 ], [ %109, %131 ]
  %150 = phi ptr [ null, %76 ], [ %84, %101 ], [ null, %63 ], [ %109, %118 ], [ %109, %131 ]
  %151 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 19
  %152 = load i32, ptr %151, align 8, !tbaa !47
  switch i32 %152, label %180 [
    i32 1, label %157
    i32 2, label %153
  ]

153:                                              ; preds = %147
  %154 = icmp sgt i32 %148, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %153
  %156 = zext nneg i32 %148 to i64
  br label %170

157:                                              ; preds = %147
  %158 = icmp sgt i32 %148, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %157
  %160 = zext nneg i32 %148 to i64
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi i64 [ 0, %159 ], [ %168, %161 ]
  %163 = getelementptr inbounds i16, ptr %149, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !15
  %165 = lshr i16 %164, 8
  %166 = trunc i16 %165 to i8
  %167 = getelementptr inbounds i8, ptr %4, i64 %162
  store i8 %166, ptr %167, align 1, !tbaa !48
  %168 = add nuw nsw i64 %162, 1
  %169 = icmp eq i64 %168, %160
  br i1 %169, label %177, label %161, !llvm.loop !49

170:                                              ; preds = %155, %170
  %171 = phi i64 [ 0, %155 ], [ %175, %170 ]
  %172 = getelementptr inbounds i16, ptr %149, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !15
  %174 = getelementptr inbounds i16, ptr %4, i64 %171
  store i16 %173, ptr %174, align 2, !tbaa !15
  %175 = add nuw nsw i64 %171, 1
  %176 = icmp eq i64 %175, %156
  br i1 %176, label %177, label %170, !llvm.loop !50

177:                                              ; preds = %170, %161, %153, %157
  %178 = icmp eq ptr %150, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %177
  call void @free(ptr noundef nonnull %150) #18
  br label %186

180:                                              ; preds = %147
  %181 = load ptr, ptr @stderr, align 8, !tbaa !33
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.8, i32 noundef %152) #22
  %183 = icmp eq ptr %150, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  call void @free(ptr noundef nonnull %150) #18
  br label %185

185:                                              ; preds = %19, %144, %69, %60, %54, %48, %42, %184, %180
  call void @report_stats_on_error() #18
  br label %186

186:                                              ; preds = %177, %179, %185, %37
  %187 = phi i32 [ 0, %37 ], [ 0, %185 ], [ 1, %179 ], [ 1, %177 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %6) #19
  ret i32 %187
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @readTiff(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @readFileIntoMemory(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @readImageFileHeader() #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  tail call fastcc void @readImageFileDirectory() #21
  %8 = tail call fastcc i32 @readImageData() #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7, %4, %1
  %11 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %11) #18
  br label %14

14:                                               ; preds = %13, %10
  store ptr null, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %15 = load ptr, ptr @ReadTIFFImage.t, align 8, !tbaa !14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @free(ptr noundef nonnull %15) #18
  br label %18

18:                                               ; preds = %17, %14
  store ptr null, ptr @ReadTIFFImage.t, align 8, !tbaa !14
  br label %19

19:                                               ; preds = %7, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %7 ]
  ret i32 %20
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RGB_YUV_initialize(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  switch i32 %1, label %4 [
    i32 1, label %7
    i32 3, label %7
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr @stderr, align 8, !tbaa !33
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %1) #22
  br label %82

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 1
  store i32 %2, ptr %8, align 4, !tbaa !51
  store i16 -1, ptr %0, align 8, !tbaa !53
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 8192, i32 67117056
  %11 = select i1 %9, double 1.638400e+04, double 0x40CB7B7B7B7B7B7B
  %12 = select i1 %9, double 1.638400e+04, double 0x40CC1C1C1C1C1C1C
  %13 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 17
  store i32 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 19
  store double %11, ptr %14, align 8
  %15 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 20
  store double %12, ptr %15, align 8
  %16 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 18
  store i32 536879104, ptr %16, align 8, !tbaa !54
  %17 = zext nneg i32 %1 to i64
  %18 = getelementptr inbounds [9 x [3 x double]], ptr @Coef, i64 0, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds [9 x [3 x double]], ptr @Coef, i64 0, i64 %17, i64 1
  %22 = fmul double %19, %12
  %23 = insertelement <4 x double> poison, double %11, i64 0
  %24 = insertelement <4 x double> %23, double %22, i64 1
  %25 = shufflevector <4 x double> %24, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %26 = insertelement <4 x double> poison, double %19, i64 0
  %27 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 12
  %28 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 14
  %29 = fadd double %19, -1.000000e+00
  %30 = fdiv double 5.000000e-01, %29
  %31 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 15
  %32 = load <2 x double>, ptr %21, align 8, !tbaa !55
  %33 = extractelement <2 x double> %32, i64 1
  %34 = fadd double %33, -1.000000e+00
  %35 = fdiv double 5.000000e-01, %34
  %36 = shufflevector <2 x double> %32, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %37 = shufflevector <4 x double> %26, <4 x double> %36, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %38 = insertelement <4 x double> %37, double %35, i64 3
  %39 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %25, <4 x double> %38, <4 x double> <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double -5.000000e-01>)
  %40 = fptosi <4 x double> %39 to <4 x i32>
  store <4 x i32> %40, ptr %20, align 8, !tbaa !27
  %41 = insertelement <2 x double> poison, double %12, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x double> %32, %42
  %44 = insertelement <2 x double> %43, double %12, i64 1
  %45 = insertelement <2 x double> <double poison, double 5.000000e-01>, double %35, i64 0
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %45, <2 x double> <double -5.000000e-01, double 5.000000e-01>)
  %47 = fptosi <2 x double> %46 to <2 x i32>
  store <2 x i32> %47, ptr %27, align 8, !tbaa !27
  %48 = extractelement <2 x i32> %47, i64 1
  store i32 %48, ptr %28, align 8, !tbaa !56
  %49 = insertelement <2 x double> poison, double %30, i64 0
  %50 = shufflevector <2 x double> %49, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %50, <2 x double> <double -5.000000e-01, double -5.000000e-01>)
  %52 = fptosi <2 x double> %51 to <2 x i32>
  store <2 x i32> %52, ptr %31, align 4, !tbaa !27
  %53 = fadd double %11, 5.000000e-01
  %54 = fptoui double %53 to i32
  %55 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %56 = add nsw <4 x i32> %55, %40
  %57 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %58 = add nsw <4 x i32> %56, %57
  %59 = extractelement <4 x i32> %58, i64 0
  %60 = icmp eq i32 %59, %54
  br i1 %60, label %64, label %61

61:                                               ; preds = %7
  %62 = load ptr, ptr @stderr, align 8, !tbaa !33
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.19, i32 noundef %59, i32 noundef %54) #22
  br label %82

64:                                               ; preds = %7
  %65 = extractelement <2 x i32> %47, i64 0
  %66 = add i32 %65, %48
  %67 = extractelement <4 x i32> %40, i64 3
  %68 = add i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr @stderr, align 8, !tbaa !33
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.20, i32 noundef %68) #22
  br label %82

73:                                               ; preds = %64
  %74 = extractelement <2 x i32> %52, i64 0
  %75 = add nsw i32 %74, %48
  %76 = extractelement <2 x i32> %52, i64 1
  %77 = add nsw i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr @stderr, align 8, !tbaa !33
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.21, i32 noundef %77) #22
  br label %82

82:                                               ; preds = %73, %79, %70, %61, %4
  %83 = phi i32 [ 1, %4 ], [ 1, %61 ], [ 1, %70 ], [ 1, %79 ], [ 0, %73 ]
  ret i32 %83
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RGB_YUV_rgb_to_yuv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #3 {
  %10 = mul i32 %5, %4
  %11 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = icmp eq i32 %12, 0
  %14 = icmp sgt i32 %10, 0
  br i1 %13, label %40, label %15

15:                                               ; preds = %9
  br i1 %14, label %16, label %187

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !58
  %22 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 17
  %25 = load i32, ptr %24, align 4, !tbaa !60
  %26 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 11
  %27 = load i32, ptr %26, align 4, !tbaa !61
  %28 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 12
  %29 = load i32, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 13
  %31 = load i32, ptr %30, align 4, !tbaa !63
  %32 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 14
  %35 = load i32, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 15
  %37 = load i32, ptr %36, align 4, !tbaa !64
  %38 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !65
  br label %65

40:                                               ; preds = %9
  br i1 %14, label %41, label %187

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !58
  %47 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 10
  %48 = load i32, ptr %47, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 17
  %50 = load i32, ptr %49, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 11
  %52 = load i32, ptr %51, align 4, !tbaa !61
  %53 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 12
  %54 = load i32, ptr %53, align 8, !tbaa !62
  %55 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 13
  %56 = load i32, ptr %55, align 4, !tbaa !63
  %57 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 18
  %58 = load i32, ptr %57, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 14
  %60 = load i32, ptr %59, align 8, !tbaa !56
  %61 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 15
  %62 = load i32, ptr %61, align 4, !tbaa !64
  %63 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 16
  %64 = load i32, ptr %63, align 8, !tbaa !65
  br label %111

65:                                               ; preds = %16, %65
  %66 = phi ptr [ %1, %16 ], [ %75, %65 ]
  %67 = phi i32 [ 0, %16 ], [ %109, %65 ]
  %68 = phi ptr [ %2, %16 ], [ %78, %65 ]
  %69 = phi ptr [ %8, %16 ], [ %108, %65 ]
  %70 = phi ptr [ %7, %16 ], [ %99, %65 ]
  %71 = phi ptr [ %6, %16 ], [ %90, %65 ]
  %72 = phi ptr [ %3, %16 ], [ %81, %65 ]
  %73 = load i16, ptr %66, align 2, !tbaa !15
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds i16, ptr %66, i64 3
  %76 = load i16, ptr %68, align 2, !tbaa !15
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds i16, ptr %68, i64 3
  %79 = load i16, ptr %72, align 2, !tbaa !15
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds i16, ptr %72, i64 3
  %82 = mul nsw i32 %19, %74
  %83 = mul nsw i32 %21, %77
  %84 = add nsw i32 %83, %82
  %85 = mul nsw i32 %23, %80
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, %25
  %88 = lshr i32 %87, 14
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr %71, align 2, !tbaa !15
  %90 = getelementptr inbounds i16, ptr %71, i64 3
  %91 = mul nsw i32 %27, %74
  %92 = mul nsw i32 %29, %77
  %93 = add nsw i32 %92, %91
  %94 = mul nsw i32 %31, %80
  %95 = add nsw i32 %93, %94
  %96 = add nsw i32 %95, %33
  %97 = lshr i32 %96, 14
  %98 = trunc i32 %97 to i16
  store i16 %98, ptr %70, align 2, !tbaa !15
  %99 = getelementptr inbounds i16, ptr %70, i64 3
  %100 = mul nsw i32 %35, %74
  %101 = mul nsw i32 %37, %77
  %102 = mul nsw i32 %39, %80
  %103 = add i32 %100, %33
  %104 = add i32 %103, %101
  %105 = add i32 %104, %102
  %106 = lshr i32 %105, 14
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %69, align 2, !tbaa !15
  %108 = getelementptr inbounds i16, ptr %69, i64 3
  %109 = add nuw nsw i32 %67, 1
  %110 = icmp eq i32 %109, %10
  br i1 %110, label %184, label %65, !llvm.loop !66

111:                                              ; preds = %41, %172
  %112 = phi ptr [ %1, %41 ], [ %121, %172 ]
  %113 = phi i32 [ 0, %41 ], [ %176, %172 ]
  %114 = phi ptr [ %2, %41 ], [ %124, %172 ]
  %115 = phi ptr [ %8, %41 ], [ %175, %172 ]
  %116 = phi ptr [ %7, %41 ], [ %159, %172 ]
  %117 = phi ptr [ %6, %41 ], [ %143, %172 ]
  %118 = phi ptr [ %3, %41 ], [ %127, %172 ]
  %119 = load i16, ptr %112, align 2, !tbaa !15
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds i16, ptr %112, i64 3
  %122 = load i16, ptr %114, align 2, !tbaa !15
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds i16, ptr %114, i64 3
  %125 = load i16, ptr %118, align 2, !tbaa !15
  %126 = zext i16 %125 to i32
  %127 = getelementptr inbounds i16, ptr %118, i64 3
  %128 = mul nsw i32 %44, %120
  %129 = mul nsw i32 %46, %123
  %130 = add nsw i32 %129, %128
  %131 = mul nsw i32 %48, %126
  %132 = add nsw i32 %130, %131
  %133 = add nsw i32 %132, %50
  %134 = ashr i32 %133, 14
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %111
  %137 = load i16, ptr %0, align 8, !tbaa !53
  %138 = zext i16 %137 to i32
  %139 = tail call i32 @llvm.umin.i32(i32 %134, i32 %138)
  br label %140

140:                                              ; preds = %136, %111
  %141 = phi i32 [ 0, %111 ], [ %139, %136 ]
  %142 = trunc i32 %141 to i16
  store i16 %142, ptr %117, align 2, !tbaa !15
  %143 = getelementptr inbounds i16, ptr %117, i64 3
  %144 = mul nsw i32 %52, %120
  %145 = mul nsw i32 %54, %123
  %146 = add nsw i32 %145, %144
  %147 = mul nsw i32 %56, %126
  %148 = add nsw i32 %146, %147
  %149 = add nsw i32 %148, %58
  %150 = ashr i32 %149, 14
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %140
  %153 = load i16, ptr %0, align 8, !tbaa !53
  %154 = zext i16 %153 to i32
  %155 = tail call i32 @llvm.umin.i32(i32 %150, i32 %154)
  br label %156

156:                                              ; preds = %152, %140
  %157 = phi i32 [ 0, %140 ], [ %155, %152 ]
  %158 = trunc i32 %157 to i16
  store i16 %158, ptr %116, align 2, !tbaa !15
  %159 = getelementptr inbounds i16, ptr %116, i64 3
  %160 = mul nsw i32 %60, %120
  %161 = mul nsw i32 %62, %123
  %162 = mul nsw i32 %64, %126
  %163 = add i32 %160, %58
  %164 = add i32 %163, %161
  %165 = add i32 %164, %162
  %166 = ashr i32 %165, 14
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %156
  %169 = load i16, ptr %0, align 8, !tbaa !53
  %170 = zext i16 %169 to i32
  %171 = tail call i32 @llvm.umin.i32(i32 %166, i32 %170)
  br label %172

172:                                              ; preds = %168, %156
  %173 = phi i32 [ 0, %156 ], [ %171, %168 ]
  %174 = trunc i32 %173 to i16
  store i16 %174, ptr %115, align 2, !tbaa !15
  %175 = getelementptr inbounds i16, ptr %115, i64 3
  %176 = add nuw nsw i32 %113, 1
  %177 = icmp eq i32 %176, %10
  br i1 %177, label %178, label %111, !llvm.loop !67

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 5
  %180 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 7
  %181 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 2
  %182 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 3
  %183 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 4
  store i32 %120, ptr %179, align 4, !tbaa !68
  store i32 %123, ptr %42, align 8, !tbaa !69
  store i32 %126, ptr %180, align 4, !tbaa !70
  store i32 %141, ptr %181, align 8, !tbaa !71
  store i32 %157, ptr %182, align 4, !tbaa !72
  store i32 %173, ptr %183, align 8, !tbaa !73
  br label %187

184:                                              ; preds = %65
  %185 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 5
  %186 = getelementptr inbounds %struct.RGB_YUV, ptr %0, i64 0, i32 7
  store i32 %74, ptr %185, align 4, !tbaa !68
  store i32 %77, ptr %17, align 8, !tbaa !69
  store i32 %80, ptr %186, align 4, !tbaa !70
  br label %187

187:                                              ; preds = %15, %184, %40, %178
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @report_stats_on_error() local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @readFileIntoMemory(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #18
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !33
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %0) #22
  br label %41

7:                                                ; preds = %1
  %8 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 2) #18
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %41, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 0) #18
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %41, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %15 = tail call ptr @realloc(ptr noundef %14, i64 noundef %8) #24
  store ptr %15, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 @close(i32 noundef %2) #18
  br label %41

19:                                               ; preds = %13
  %20 = tail call i64 @read(i32 noundef %2, ptr noundef nonnull %15, i64 noundef %8) #18
  %21 = icmp eq i64 %20, %8
  %22 = tail call i32 @close(i32 noundef %2) #18
  br i1 %21, label %23, label %41

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %25 = load i8, ptr %24, align 1, !tbaa !48
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !48
  %30 = zext i8 %29 to i16
  %31 = or disjoint i16 %27, %30
  switch i16 %31, label %32 [
    i16 18761, label %36
    i16 19789, label %37
  ]

32:                                               ; preds = %23
  %33 = load ptr, ptr @stderr, align 8, !tbaa !33
  %34 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 43, i64 1, ptr %33) #20
  %35 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  tail call void @free(ptr noundef %35) #18
  store ptr null, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  br label %41

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %23, %36
  %38 = phi i32 [ 1, %36 ], [ 0, %23 ]
  %39 = phi ptr [ @getU16, %36 ], [ @getSwappedU16, %23 ]
  %40 = phi ptr [ @getU32, %36 ], [ @getSwappedU32, %23 ]
  store i32 %38, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 3), align 8, !tbaa !74
  store ptr %39, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !75
  store ptr %40, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 16), align 8, !tbaa !76
  store ptr %24, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  br label %41

41:                                               ; preds = %19, %10, %7, %37, %32, %17, %4
  %42 = phi i32 [ 1, %4 ], [ 1, %17 ], [ 1, %32 ], [ 0, %37 ], [ 1, %7 ], [ 1, %10 ], [ 1, %19 ]
  ret i32 %42
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @readImageFileHeader() unnamed_addr #8 {
  %1 = tail call i32 @getU16(ptr noundef nonnull @ReadTIFFImage.t) #21, !range !78
  %2 = trunc i32 %1 to i16
  store i16 %2, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 5), align 8, !tbaa !79
  %3 = tail call i32 @getU16(ptr noundef nonnull @ReadTIFFImage.t) #21, !range !78
  %4 = trunc i32 %3 to i16
  store i16 %4, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 5, i32 1), align 2, !tbaa !80
  %5 = tail call i32 @getU32(ptr noundef nonnull @ReadTIFFImage.t) #21
  store i32 %5, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 5, i32 2), align 4, !tbaa !81
  %6 = load i16, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 5, i32 1), align 2, !tbaa !80
  %7 = icmp eq i16 %6, 42
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr @stderr, align 8, !tbaa !33
  %10 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 32, i64 1, ptr %9) #20
  br label %15

11:                                               ; preds = %0
  %12 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %13 = zext i32 %5 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  store ptr %14, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ 1, %8 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readImageFileDirectory() unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !75
  %2 = tail call i32 %1(ptr noundef nonnull @ReadTIFFImage.t) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0, %4
  %5 = phi i32 [ %6, %4 ], [ 0, %0 ]
  tail call fastcc void @readDirectoryEntry() #21
  %6 = add nuw i32 %5, 1
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %8, label %4, !llvm.loop !82

8:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @readImageData() unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 10), align 8, !tbaa !39
  %2 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 9), align 4, !tbaa !38
  %3 = mul i32 %1, 6
  %4 = mul i32 %3, %2
  %5 = load ptr, ptr @ReadTIFFImage.t, align 8, !tbaa !14
  %6 = zext i32 %4 to i64
  %7 = tail call ptr @realloc(ptr noundef %5, i64 noundef %6) #24
  store ptr %7, ptr @ReadTIFFImage.t, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %0
  %10 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7), align 4, !tbaa !27
  switch i32 %10, label %76 [
    i32 8, label %11
    i32 16, label %42
  ]

11:                                               ; preds = %9
  %12 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 4), align 4, !tbaa !83
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %16 = zext nneg i32 %12 to i64
  br label %17

17:                                               ; preds = %14, %38
  %18 = phi i64 [ 0, %14 ], [ %40, %38 ]
  %19 = phi ptr [ %7, %14 ], [ %39, %38 ]
  %20 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 11, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !27
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 12, i64 %18
  %25 = load i32, ptr %24, align 4, !tbaa !27
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %15, i64 %26
  br label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %35, %28 ], [ %19, %23 ]
  %30 = phi ptr [ %32, %28 ], [ %27, %23 ]
  %31 = phi i32 [ %36, %28 ], [ 0, %23 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = load i8, ptr %30, align 1, !tbaa !48
  %34 = zext i8 %33 to i16
  %35 = getelementptr inbounds i16, ptr %29, i64 1
  store i16 %34, ptr %29, align 2, !tbaa !15
  %36 = add nuw nsw i32 %31, 1
  %37 = icmp eq i32 %36, %21
  br i1 %37, label %38, label %28, !llvm.loop !84

38:                                               ; preds = %28, %17
  %39 = phi ptr [ %19, %17 ], [ %35, %28 ]
  %40 = add nuw nsw i64 %18, 1
  %41 = icmp eq i64 %40, %16
  br i1 %41, label %76, label %17, !llvm.loop !85

42:                                               ; preds = %9
  %43 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  %44 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 4), align 4, !tbaa !83
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %42, %69
  %47 = phi i32 [ %70, %69 ], [ %44, %42 ]
  %48 = phi i64 [ %72, %69 ], [ 0, %42 ]
  %49 = phi ptr [ %71, %69 ], [ %7, %42 ]
  %50 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 11, i64 %48
  %51 = load i32, ptr %50, align 4, !tbaa !27
  %52 = lshr i32 %51, 1
  %53 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 12, i64 %48
  %55 = load i32, ptr %54, align 4, !tbaa !27
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  store ptr %57, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  %58 = icmp ult i32 %51, 2
  br i1 %58, label %69, label %59

59:                                               ; preds = %46, %59
  %60 = phi ptr [ %64, %59 ], [ %49, %46 ]
  %61 = phi i32 [ %65, %59 ], [ 0, %46 ]
  %62 = tail call i32 @getU16(ptr noundef nonnull @ReadTIFFImage.t) #21, !range !78
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds i16, ptr %60, i64 1
  store i16 %63, ptr %60, align 2, !tbaa !15
  %65 = add nuw nsw i32 %61, 1
  %66 = icmp eq i32 %65, %52
  br i1 %66, label %67, label %59, !llvm.loop !86

67:                                               ; preds = %59
  %68 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 4), align 4, !tbaa !83
  br label %69

69:                                               ; preds = %67, %46
  %70 = phi i32 [ %47, %46 ], [ %68, %67 ]
  %71 = phi ptr [ %49, %46 ], [ %64, %67 ]
  %72 = add nuw nsw i64 %48, 1
  %73 = sext i32 %70 to i64
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %46, label %75, !llvm.loop !87

75:                                               ; preds = %69, %42
  store ptr %43, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  br label %76

76:                                               ; preds = %38, %11, %75, %9, %0
  %77 = phi i32 [ 1, %0 ], [ 0, %9 ], [ 0, %75 ], [ 0, %11 ], [ 0, %38 ]
  ret i32 %77
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getU16(ptr nocapture noundef %0) #14 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !77
  %5 = load i8, ptr %3, align 1, !tbaa !48
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !77
  %7 = load i8, ptr %4, align 1, !tbaa !48
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = zext i8 %5 to i32
  %11 = or disjoint i32 %9, %10
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getU32(ptr nocapture noundef %0) #14 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !77
  %5 = load i8, ptr %3, align 1, !tbaa !48
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !77
  %7 = load i8, ptr %4, align 1, !tbaa !48
  %8 = getelementptr inbounds i8, ptr %3, i64 3
  store ptr %8, ptr %2, align 8, !tbaa !77
  %9 = load i8, ptr %6, align 1, !tbaa !48
  %10 = getelementptr inbounds i8, ptr %3, i64 4
  store ptr %10, ptr %2, align 8, !tbaa !77
  %11 = load i8, ptr %8, align 1, !tbaa !48
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getSwappedU16(ptr nocapture noundef %0) #14 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !77
  %5 = load i8, ptr %3, align 1, !tbaa !48
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !77
  %7 = load i8, ptr %4, align 1, !tbaa !48
  %8 = zext i8 %5 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = zext i8 %7 to i32
  %11 = or disjoint i32 %9, %10
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getSwappedU32(ptr nocapture noundef %0) #14 {
  %2 = getelementptr inbounds %struct.Tiff, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr %2, align 8, !tbaa !77
  %5 = load i8, ptr %3, align 1, !tbaa !48
  %6 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %6, ptr %2, align 8, !tbaa !77
  %7 = load i8, ptr %4, align 1, !tbaa !48
  %8 = getelementptr inbounds i8, ptr %3, i64 3
  store ptr %8, ptr %2, align 8, !tbaa !77
  %9 = load i8, ptr %6, align 1, !tbaa !48
  %10 = getelementptr inbounds i8, ptr %3, i64 4
  store ptr %10, ptr %2, align 8, !tbaa !77
  %11 = load i8, ptr %8, align 1, !tbaa !48
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readDirectoryEntry() unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !75
  %2 = tail call i32 %1(ptr noundef nonnull @ReadTIFFImage.t) #18
  %3 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 15), align 8, !tbaa !75
  %4 = tail call i32 %3(ptr noundef nonnull @ReadTIFFImage.t) #18
  %5 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 16), align 8, !tbaa !76
  %6 = tail call i32 %5(ptr noundef nonnull @ReadTIFFImage.t) #18
  %7 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 16), align 8, !tbaa !76
  %8 = tail call i32 %7(ptr noundef nonnull @ReadTIFFImage.t) #18
  switch i32 %2, label %51 [
    i32 256, label %9
    i32 257, label %10
    i32 258, label %15
    i32 259, label %34
    i32 283, label %50
    i32 273, label %39
    i32 274, label %40
    i32 282, label %49
    i32 278, label %47
    i32 279, label %48
  ]

9:                                                ; preds = %0
  store i32 %8, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 10), align 8, !tbaa !39
  br label %51

10:                                               ; preds = %0
  store i32 %8, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 9), align 4, !tbaa !38
  %11 = icmp ugt i32 %8, 1080
  br i1 %11, label %12, label %51

12:                                               ; preds = %10
  %13 = load ptr, ptr @stderr, align 8, !tbaa !33
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %8, i32 noundef 1080) #22
  br label %51

15:                                               ; preds = %0
  %16 = icmp eq i32 %6, 3
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @stderr, align 8, !tbaa !33
  %19 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 35, i64 1, ptr %18) #20
  br label %51

20:                                               ; preds = %15
  tail call fastcc void @getIntArray(i32 noundef %8, i32 noundef %4, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7), i32 noundef 3) #21
  %21 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7), align 4, !tbaa !27
  %22 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7, i64 1), align 8, !tbaa !27
  %23 = icmp eq i32 %21, %22
  %24 = load i32, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 7, i64 2), align 4
  %25 = icmp eq i32 %21, %24
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr @stderr, align 8, !tbaa !33
  %29 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 47, i64 1, ptr %28) #20
  br label %51

30:                                               ; preds = %20
  switch i32 %21, label %31 [
    i32 8, label %51
    i32 16, label %51
  ]

31:                                               ; preds = %30
  %32 = load ptr, ptr @stderr, align 8, !tbaa !33
  %33 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 40, i64 1, ptr %32) #20
  br label %51

34:                                               ; preds = %0
  %35 = icmp eq i32 %8, 1
  br i1 %35, label %51, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr @stderr, align 8, !tbaa !33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 39, i64 1, ptr %37) #20
  br label %51

39:                                               ; preds = %0
  tail call fastcc void @getIntArray(i32 noundef %8, i32 noundef %4, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 12), i32 noundef %6) #21
  store i32 %6, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 4), align 4, !tbaa !83
  br label %51

40:                                               ; preds = %0
  %41 = trunc i32 %8 to i16
  store i16 %41, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 6), align 8, !tbaa !88
  %42 = and i32 %8, 65535
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @stderr, align 8, !tbaa !33
  %46 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 32, i64 1, ptr %45) #20
  br label %51

47:                                               ; preds = %0
  store i32 %8, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 8), align 8, !tbaa !89
  br label %51

48:                                               ; preds = %0
  tail call fastcc void @getIntArray(i32 noundef %8, i32 noundef %4, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 11), i32 noundef %6) #21
  br label %51

49:                                               ; preds = %0
  tail call fastcc void @getIntArray(i32 noundef %8, i32 noundef %4, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 13), i32 noundef 1) #21
  br label %51

50:                                               ; preds = %0
  tail call fastcc void @getIntArray(i32 noundef %8, i32 noundef %4, ptr noundef nonnull getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 14), i32 noundef 1) #21
  br label %51

51:                                               ; preds = %9, %39, %47, %48, %49, %50, %10, %34, %40, %0, %30, %30, %44, %36, %31, %27, %17, %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @getIntArray(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  %6 = load ptr, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 1), align 8, !tbaa !6
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %8, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  switch i32 %1, label %41 [
    i32 3, label %19
    i32 4, label %15
    i32 5, label %9
  ]

9:                                                ; preds = %4
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %9
  %12 = shl nuw i32 %3, 1
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 1)
  %14 = zext nneg i32 %13 to i64
  br label %35

15:                                               ; preds = %4
  %16 = icmp sgt i32 %3, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %15
  %18 = zext nneg i32 %3 to i64
  br label %29

19:                                               ; preds = %4
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %19
  %22 = zext nneg i32 %3 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %27, %23 ]
  %25 = tail call i32 @getU16(ptr noundef nonnull @ReadTIFFImage.t) #21, !range !78
  %26 = getelementptr inbounds i32, ptr %2, i64 %24
  store i32 %25, ptr %26, align 4, !tbaa !27
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %22
  br i1 %28, label %41, label %23, !llvm.loop !90

29:                                               ; preds = %17, %29
  %30 = phi i64 [ 0, %17 ], [ %33, %29 ]
  %31 = tail call i32 @getU32(ptr noundef nonnull @ReadTIFFImage.t) #21
  %32 = getelementptr inbounds i32, ptr %2, i64 %30
  store i32 %31, ptr %32, align 4, !tbaa !27
  %33 = add nuw nsw i64 %30, 1
  %34 = icmp eq i64 %33, %18
  br i1 %34, label %41, label %29, !llvm.loop !91

35:                                               ; preds = %11, %35
  %36 = phi i64 [ 0, %11 ], [ %39, %35 ]
  %37 = tail call i32 @getU32(ptr noundef nonnull @ReadTIFFImage.t) #21
  %38 = getelementptr inbounds i32, ptr %2, i64 %36
  store i32 %37, ptr %38, align 4, !tbaa !27
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, %14
  br i1 %40, label %41, label %35, !llvm.loop !92

41:                                               ; preds = %35, %29, %23, %9, %15, %19, %4
  store ptr %5, ptr getelementptr inbounds (%struct.Tiff, ptr @ReadTIFFImage.t, i64 0, i32 2), align 8, !tbaa !77
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { optsize }
attributes #22 = { cold optsize }
attributes #23 = { nounwind optsize allocsize(0) }
attributes #24 = { nounwind optsize allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"Tiff", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !12, i64 32, !13, i64 40, !9, i64 44, !11, i64 56, !11, i64 60, !11, i64 64, !9, i64 68, !9, i64 4388, !9, i64 8708, !9, i64 8716, !8, i64 8728, !8, i64 8736}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"TiffImageFileHeader", !13, i64 0, !13, i64 2, !11, i64 4}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!13, !13, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = !{!11, !11, i64 0}
!28 = !{!29, !11, i64 4}
!29 = !{!"frame_format", !11, i64 0, !11, i64 4, !30, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!30 = !{!"double", !9, i64 0}
!31 = !{!32, !11, i64 916}
!32 = !{!"video_data_file", !9, i64 0, !9, i64 255, !9, i64 510, !11, i64 768, !11, i64 772, !29, i64 776, !11, i64 912, !11, i64 916, !11, i64 920, !11, i64 924, !11, i64 928, !11, i64 932, !11, i64 936, !11, i64 940, !11, i64 944, !11, i64 948, !11, i64 952, !8, i64 960}
!33 = !{!8, !8, i64 0}
!34 = !{!32, !11, i64 924}
!35 = !{!36, !11, i64 3992}
!36 = !{!"inp_par", !9, i64 0, !9, i64 255, !9, i64 510, !11, i64 768, !11, i64 772, !11, i64 776, !11, i64 780, !11, i64 784, !11, i64 788, !29, i64 792, !29, i64 928, !11, i64 1064, !11, i64 1068, !32, i64 1072, !32, i64 2040, !32, i64 3008, !11, i64 3976, !11, i64 3980, !11, i64 3984, !11, i64 3988, !11, i64 3992, !11, i64 3996, !11, i64 4000, !11, i64 4004, !11, i64 4008, !11, i64 4012}
!37 = !{!32, !11, i64 920}
!38 = !{!7, !11, i64 60}
!39 = !{!7, !11, i64 64}
!40 = !{!29, !11, i64 124}
!41 = !{!36, !11, i64 4000}
!42 = !{!36, !11, i64 3996}
!43 = !{!29, !11, i64 0}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = !{!29, !11, i64 128}
!48 = !{!9, !9, i64 0}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = !{!52, !11, i64 4}
!52 = !{!"RGB_YUV", !13, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !30, i64 80, !30, i64 88}
!53 = !{!52, !13, i64 0}
!54 = !{!52, !11, i64 72}
!55 = !{!30, !30, i64 0}
!56 = !{!52, !11, i64 56}
!57 = !{!52, !11, i64 32}
!58 = !{!52, !11, i64 36}
!59 = !{!52, !11, i64 40}
!60 = !{!52, !11, i64 68}
!61 = !{!52, !11, i64 44}
!62 = !{!52, !11, i64 48}
!63 = !{!52, !11, i64 52}
!64 = !{!52, !11, i64 60}
!65 = !{!52, !11, i64 64}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = !{!52, !11, i64 20}
!69 = !{!52, !11, i64 24}
!70 = !{!52, !11, i64 28}
!71 = !{!52, !11, i64 8}
!72 = !{!52, !11, i64 12}
!73 = !{!52, !11, i64 16}
!74 = !{!7, !11, i64 24}
!75 = !{!7, !8, i64 8728}
!76 = !{!7, !8, i64 8736}
!77 = !{!7, !8, i64 16}
!78 = !{i32 0, i32 65536}
!79 = !{!7, !13, i64 32}
!80 = !{!7, !13, i64 34}
!81 = !{!7, !11, i64 36}
!82 = distinct !{!82, !17}
!83 = !{!7, !11, i64 28}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = !{!7, !13, i64 40}
!89 = !{!7, !11, i64 56}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
