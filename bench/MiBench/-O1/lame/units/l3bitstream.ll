; ModuleID = 'l3bitstream.c'
source_filename = "l3bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.BF_PartHolder = type { i32, ptr }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.BF_FrameData = type { i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], ptr }
%struct.BF_FrameResults = type { i32, i32, i32 }

@frameData = dso_local local_unnamed_addr global ptr null, align 8
@frameResults = dso_local local_unnamed_addr global ptr null, align 8
@PartHoldersInitialized = dso_local local_unnamed_addr global i32 0, align 4
@bs = internal unnamed_addr global ptr null, align 8
@headerPH = dso_local local_unnamed_addr global ptr null, align 8
@frameSIPH = dso_local local_unnamed_addr global ptr null, align 8
@channelSIPH = dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@spectrumSIPH = dso_local local_unnamed_addr global [2 x [2 x ptr]] zeroinitializer, align 16
@scaleFactorsPH = dso_local local_unnamed_addr global [2 x [2 x ptr]] zeroinitializer, align 16
@codedDataPH = dso_local global [2 x [2 x ptr]] zeroinitializer, align 16
@userSpectrumPH = dso_local local_unnamed_addr global [2 x [2 x ptr]] zeroinitializer, align 16
@userFrameDataPH = dso_local local_unnamed_addr global ptr null, align 8
@ht = external local_unnamed_addr global [34 x %struct.huffcodetab], align 16
@slen1_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 16
@slen2_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"opps - adding stuffing bits = %i.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"this should not happen...\0A\00", align 1
@crc = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @putMyBits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @bs, align 8, !tbaa !5
  tail call void @putbits(ptr noundef %3, i32 noundef %0, i32 noundef %1) #9
  ret void
}

declare void @putbits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @III_format_bitstream(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  store ptr %5, ptr @bs, align 8, !tbaa !5
  %7 = load ptr, ptr @frameData, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call noalias dereferenceable_or_null(184) ptr @calloc(i64 noundef 1, i64 noundef 184) #10
  store ptr %10, ptr @frameData, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %9, %6
  %12 = load ptr, ptr @frameResults, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call noalias dereferenceable_or_null(12) ptr @calloc(i64 noundef 1, i64 noundef 12) #10
  store ptr %15, ptr @frameResults, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, ptr @PartHoldersInitialized, align 4, !tbaa !9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = tail call ptr @BF_newPartHolder(i32 noundef 14) #9
  store ptr %20, ptr @headerPH, align 8, !tbaa !5
  %21 = tail call ptr @BF_newPartHolder(i32 noundef 12) #9
  store ptr %21, ptr @frameSIPH, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 0, %19 ], [ %26, %22 ]
  %24 = tail call ptr @BF_newPartHolder(i32 noundef 8) #9
  %25 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %23
  store ptr %24, ptr %25, align 8, !tbaa !5
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %23, 0
  br i1 %27, label %22, label %28, !llvm.loop !11

28:                                               ; preds = %22, %42
  %29 = phi i64 [ %43, %42 ], [ 0, %22 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %40, %30 ]
  %32 = tail call ptr @BF_newPartHolder(i32 noundef 32) #9
  %33 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %29, i64 %31
  store ptr %32, ptr %33, align 8, !tbaa !5
  %34 = tail call ptr @BF_newPartHolder(i32 noundef 64) #9
  %35 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %29, i64 %31
  store ptr %34, ptr %35, align 8, !tbaa !5
  %36 = tail call ptr @BF_newPartHolder(i32 noundef 576) #9
  %37 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %29, i64 %31
  store ptr %36, ptr %37, align 8, !tbaa !5
  %38 = tail call ptr @BF_newPartHolder(i32 noundef 4) #9
  %39 = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %29, i64 %31
  store ptr %38, ptr %39, align 8, !tbaa !5
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %31, 0
  br i1 %41, label %30, label %42, !llvm.loop !13

42:                                               ; preds = %30
  %43 = add nuw nsw i64 %29, 1
  %44 = icmp eq i64 %29, 0
  br i1 %44, label %28, label %45, !llvm.loop !14

45:                                               ; preds = %42
  %46 = tail call ptr @BF_newPartHolder(i32 noundef 8) #9
  store ptr %46, ptr @userFrameDataPH, align 8, !tbaa !5
  store i32 1, ptr @PartHoldersInitialized, align 4, !tbaa !9
  br label %47

47:                                               ; preds = %45, %16
  store i32 65535, ptr @crc, align 4, !tbaa !9
  %48 = load ptr, ptr @headerPH, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.BF_PartHolder, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !15
  store i32 0, ptr %50, align 8, !tbaa !17
  %51 = tail call ptr @BF_addEntry(ptr noundef %48, i32 noundef 4095, i32 noundef 12) #9
  store ptr %51, ptr @headerPH, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %53 = load i32, ptr %52, align 8, !tbaa !19
  %54 = tail call ptr @BF_addEntry(ptr noundef %51, i32 noundef %53, i32 noundef 1) #9
  store ptr %54, ptr @headerPH, align 8, !tbaa !5
  %55 = tail call ptr @BF_addEntry(ptr noundef %54, i32 noundef 1, i32 noundef 2) #9
  store ptr %55, ptr @headerPH, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 14
  %57 = load i32, ptr %56, align 4, !tbaa !23
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = tail call ptr @BF_addEntry(ptr noundef %55, i32 noundef %59, i32 noundef 1) #9
  store ptr %60, ptr @headerPH, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 50
  %62 = load i32, ptr %61, align 4, !tbaa !24
  %63 = load i32, ptr @crc, align 4, !tbaa !9
  br label %64

64:                                               ; preds = %64, %47
  %65 = phi i32 [ %67, %64 ], [ 16, %47 ]
  %66 = phi i32 [ %75, %64 ], [ %63, %47 ]
  %67 = lshr i32 %65, 1
  %68 = shl i32 %66, 1
  %69 = and i32 %67, %62
  %70 = icmp eq i32 %69, 0
  %71 = and i32 %66, 32768
  %72 = icmp eq i32 %71, 0
  %73 = xor i1 %70, %72
  %74 = xor i32 %68, 32773
  %75 = select i1 %73, i32 %74, i32 %68
  %76 = icmp ult i32 %65, 4
  br i1 %76, label %77, label %64, !llvm.loop !25

77:                                               ; preds = %64
  %78 = and i32 %75, 65535
  store i32 %78, ptr @crc, align 4, !tbaa !9
  %79 = tail call ptr @BF_addEntry(ptr noundef %60, i32 noundef %62, i32 noundef 4) #9
  store ptr %79, ptr @headerPH, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 51
  %81 = load i32, ptr %80, align 8, !tbaa !26
  %82 = load i32, ptr @crc, align 4, !tbaa !9
  br label %83

83:                                               ; preds = %83, %77
  %84 = phi i32 [ %86, %83 ], [ 4, %77 ]
  %85 = phi i32 [ %94, %83 ], [ %82, %77 ]
  %86 = lshr i32 %84, 1
  %87 = shl i32 %85, 1
  %88 = and i32 %86, %81
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %85, 32768
  %91 = icmp eq i32 %90, 0
  %92 = xor i1 %89, %91
  %93 = xor i32 %87, 32773
  %94 = select i1 %92, i32 %93, i32 %87
  %95 = icmp ult i32 %84, 4
  br i1 %95, label %96, label %83, !llvm.loop !25

96:                                               ; preds = %83
  %97 = and i32 %94, 65535
  store i32 %97, ptr @crc, align 4, !tbaa !9
  %98 = tail call ptr @BF_addEntry(ptr noundef %79, i32 noundef %81, i32 noundef 2) #9
  store ptr %98, ptr @headerPH, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  %100 = load i32, ptr %99, align 4, !tbaa !27
  %101 = load i32, ptr @crc, align 4, !tbaa !9
  %102 = and i32 %100, 1
  %103 = icmp eq i32 %102, 0
  %104 = and i32 %101, 32768
  %105 = icmp eq i32 %104, 0
  %106 = xor i1 %103, %105
  %107 = shl i32 %101, 1
  %108 = xor i32 %107, 32773
  %109 = select i1 %106, i32 %108, i32 %107
  %110 = and i32 %109, 65535
  store i32 %110, ptr @crc, align 4, !tbaa !9
  %111 = tail call ptr @BF_addEntry(ptr noundef %98, i32 noundef %100, i32 noundef 1) #9
  store ptr %111, ptr @headerPH, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 16
  %113 = load i32, ptr %112, align 4, !tbaa !28
  %114 = load i32, ptr @crc, align 4, !tbaa !9
  %115 = and i32 %113, 1
  %116 = icmp eq i32 %115, 0
  %117 = and i32 %114, 32768
  %118 = icmp eq i32 %117, 0
  %119 = xor i1 %116, %118
  %120 = shl i32 %114, 1
  %121 = xor i32 %120, 32773
  %122 = select i1 %119, i32 %121, i32 %120
  %123 = and i32 %122, 65535
  store i32 %123, ptr @crc, align 4, !tbaa !9
  %124 = tail call ptr @BF_addEntry(ptr noundef %111, i32 noundef %113, i32 noundef 1) #9
  store ptr %124, ptr @headerPH, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %126 = load i32, ptr %125, align 4, !tbaa !29
  %127 = load i32, ptr @crc, align 4, !tbaa !9
  br label %128

128:                                              ; preds = %128, %96
  %129 = phi i32 [ %131, %128 ], [ 4, %96 ]
  %130 = phi i32 [ %139, %128 ], [ %127, %96 ]
  %131 = lshr i32 %129, 1
  %132 = shl i32 %130, 1
  %133 = and i32 %131, %126
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %130, 32768
  %136 = icmp eq i32 %135, 0
  %137 = xor i1 %134, %136
  %138 = xor i32 %132, 32773
  %139 = select i1 %137, i32 %138, i32 %132
  %140 = icmp ult i32 %129, 4
  br i1 %140, label %141, label %128, !llvm.loop !25

141:                                              ; preds = %128
  %142 = and i32 %139, 65535
  store i32 %142, ptr @crc, align 4, !tbaa !9
  %143 = tail call ptr @BF_addEntry(ptr noundef %124, i32 noundef %126, i32 noundef 2) #9
  store ptr %143, ptr @headerPH, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 52
  %145 = load i32, ptr %144, align 4, !tbaa !30
  %146 = load i32, ptr @crc, align 4, !tbaa !9
  br label %147

147:                                              ; preds = %147, %141
  %148 = phi i32 [ %150, %147 ], [ 4, %141 ]
  %149 = phi i32 [ %158, %147 ], [ %146, %141 ]
  %150 = lshr i32 %148, 1
  %151 = shl i32 %149, 1
  %152 = and i32 %150, %145
  %153 = icmp eq i32 %152, 0
  %154 = and i32 %149, 32768
  %155 = icmp eq i32 %154, 0
  %156 = xor i1 %153, %155
  %157 = xor i32 %151, 32773
  %158 = select i1 %156, i32 %157, i32 %151
  %159 = icmp ult i32 %148, 4
  br i1 %159, label %160, label %147, !llvm.loop !25

160:                                              ; preds = %147
  %161 = and i32 %158, 65535
  store i32 %161, ptr @crc, align 4, !tbaa !9
  %162 = tail call ptr @BF_addEntry(ptr noundef %143, i32 noundef %145, i32 noundef 2) #9
  store ptr %162, ptr @headerPH, align 8, !tbaa !5
  %163 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 12
  %164 = load i32, ptr %163, align 4, !tbaa !31
  %165 = load i32, ptr @crc, align 4, !tbaa !9
  %166 = and i32 %164, 1
  %167 = icmp eq i32 %166, 0
  %168 = and i32 %165, 32768
  %169 = icmp eq i32 %168, 0
  %170 = xor i1 %167, %169
  %171 = shl i32 %165, 1
  %172 = xor i32 %171, 32773
  %173 = select i1 %170, i32 %172, i32 %171
  %174 = and i32 %173, 65535
  store i32 %174, ptr @crc, align 4, !tbaa !9
  %175 = tail call ptr @BF_addEntry(ptr noundef %162, i32 noundef %164, i32 noundef 1) #9
  store ptr %175, ptr @headerPH, align 8, !tbaa !5
  %176 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 13
  %177 = load i32, ptr %176, align 8, !tbaa !32
  %178 = load i32, ptr @crc, align 4, !tbaa !9
  %179 = and i32 %177, 1
  %180 = icmp eq i32 %179, 0
  %181 = and i32 %178, 32768
  %182 = icmp eq i32 %181, 0
  %183 = xor i1 %180, %182
  %184 = shl i32 %178, 1
  %185 = xor i32 %184, 32773
  %186 = select i1 %183, i32 %185, i32 %184
  %187 = and i32 %186, 65535
  store i32 %187, ptr @crc, align 4, !tbaa !9
  %188 = tail call ptr @BF_addEntry(ptr noundef %175, i32 noundef %177, i32 noundef 1) #9
  store ptr %188, ptr @headerPH, align 8, !tbaa !5
  %189 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 38
  %190 = load i32, ptr %189, align 4, !tbaa !33
  %191 = load i32, ptr @crc, align 4, !tbaa !9
  br label %192

192:                                              ; preds = %192, %160
  %193 = phi i32 [ %195, %192 ], [ 4, %160 ]
  %194 = phi i32 [ %203, %192 ], [ %191, %160 ]
  %195 = lshr i32 %193, 1
  %196 = shl i32 %194, 1
  %197 = and i32 %195, %190
  %198 = icmp eq i32 %197, 0
  %199 = and i32 %194, 32768
  %200 = icmp eq i32 %199, 0
  %201 = xor i1 %198, %200
  %202 = xor i32 %196, 32773
  %203 = select i1 %201, i32 %202, i32 %196
  %204 = icmp ult i32 %193, 4
  br i1 %204, label %205, label %192, !llvm.loop !25

205:                                              ; preds = %192
  %206 = and i32 %203, 65535
  store i32 %206, ptr @crc, align 4, !tbaa !9
  %207 = tail call ptr @BF_addEntry(ptr noundef %188, i32 noundef %190, i32 noundef 2) #9
  store ptr %207, ptr @headerPH, align 8, !tbaa !5
  %208 = load ptr, ptr @frameSIPH, align 8, !tbaa !5
  %209 = getelementptr inbounds %struct.BF_PartHolder, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !15
  store i32 0, ptr %210, align 8, !tbaa !17
  %211 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %212 = load i32, ptr %211, align 4, !tbaa !34
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %205
  %215 = zext nneg i32 %212 to i64
  br label %223

216:                                              ; preds = %223, %205
  %217 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %218 = load i32, ptr %217, align 8, !tbaa !35
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %216
  %221 = zext nneg i32 %218 to i64
  %222 = zext nneg i32 %212 to i64
  br label %231

223:                                              ; preds = %223, %214
  %224 = phi i64 [ 0, %214 ], [ %229, %223 ]
  %225 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !5
  %227 = getelementptr inbounds %struct.BF_PartHolder, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !15
  store i32 0, ptr %228, align 8, !tbaa !17
  %229 = add nuw nsw i64 %224, 1
  %230 = icmp eq i64 %229, %215
  br i1 %230, label %216, label %223, !llvm.loop !36

231:                                              ; preds = %241, %220
  %232 = phi i64 [ 0, %220 ], [ %242, %241 ]
  br i1 %213, label %233, label %241

233:                                              ; preds = %231, %233
  %234 = phi i64 [ %239, %233 ], [ 0, %231 ]
  %235 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %232, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = getelementptr inbounds %struct.BF_PartHolder, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !15
  store i32 0, ptr %238, align 8, !tbaa !17
  %239 = add nuw nsw i64 %234, 1
  %240 = icmp eq i64 %239, %222
  br i1 %240, label %241, label %233, !llvm.loop !37

241:                                              ; preds = %233, %231
  %242 = add nuw nsw i64 %232, 1
  %243 = icmp eq i64 %242, %221
  br i1 %243, label %244, label %231, !llvm.loop !38

244:                                              ; preds = %241, %216
  %245 = load i32, ptr %52, align 8, !tbaa !19
  %246 = icmp eq i32 %245, 1
  %247 = load i32, ptr %3, align 8, !tbaa !39
  %248 = load i32, ptr @crc, align 4, !tbaa !9
  br i1 %246, label %249, label %623

249:                                              ; preds = %244, %249
  %250 = phi i32 [ %252, %249 ], [ 512, %244 ]
  %251 = phi i32 [ %260, %249 ], [ %248, %244 ]
  %252 = lshr i32 %250, 1
  %253 = shl i32 %251, 1
  %254 = and i32 %252, %247
  %255 = icmp eq i32 %254, 0
  %256 = and i32 %251, 32768
  %257 = icmp eq i32 %256, 0
  %258 = xor i1 %255, %257
  %259 = xor i32 %253, 32773
  %260 = select i1 %258, i32 %259, i32 %253
  %261 = icmp ult i32 %250, 4
  br i1 %261, label %262, label %249, !llvm.loop !25

262:                                              ; preds = %249
  %263 = and i32 %260, 65535
  store i32 %263, ptr @crc, align 4, !tbaa !9
  %264 = tail call ptr @BF_addEntry(ptr noundef %208, i32 noundef %247, i32 noundef 9) #9
  store ptr %264, ptr @frameSIPH, align 8, !tbaa !5
  %265 = load i32, ptr %211, align 4, !tbaa !34
  %266 = icmp eq i32 %265, 2
  %267 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 1
  %268 = load i32, ptr %267, align 4, !tbaa !41
  %269 = load i32, ptr @crc, align 4, !tbaa !9
  br i1 %266, label %270, label %283

270:                                              ; preds = %262, %270
  %271 = phi i32 [ %273, %270 ], [ 8, %262 ]
  %272 = phi i32 [ %281, %270 ], [ %269, %262 ]
  %273 = lshr i32 %271, 1
  %274 = shl i32 %272, 1
  %275 = and i32 %273, %268
  %276 = icmp eq i32 %275, 0
  %277 = and i32 %272, 32768
  %278 = icmp eq i32 %277, 0
  %279 = xor i1 %276, %278
  %280 = xor i32 %274, 32773
  %281 = select i1 %279, i32 %280, i32 %274
  %282 = icmp ult i32 %271, 4
  br i1 %282, label %296, label %270, !llvm.loop !25

283:                                              ; preds = %262, %283
  %284 = phi i32 [ %286, %283 ], [ 32, %262 ]
  %285 = phi i32 [ %294, %283 ], [ %269, %262 ]
  %286 = lshr i32 %284, 1
  %287 = shl i32 %285, 1
  %288 = and i32 %286, %268
  %289 = icmp eq i32 %288, 0
  %290 = and i32 %285, 32768
  %291 = icmp eq i32 %290, 0
  %292 = xor i1 %289, %291
  %293 = xor i32 %287, 32773
  %294 = select i1 %292, i32 %293, i32 %287
  %295 = icmp ult i32 %284, 4
  br i1 %295, label %296, label %283, !llvm.loop !25

296:                                              ; preds = %283, %270
  %297 = phi i32 [ %281, %270 ], [ %294, %283 ]
  %298 = phi i32 [ 3, %270 ], [ 5, %283 ]
  %299 = and i32 %297, 65535
  store i32 %299, ptr @crc, align 4, !tbaa !9
  %300 = tail call ptr @BF_addEntry(ptr noundef %264, i32 noundef %268, i32 noundef %298) #9
  store ptr %300, ptr @frameSIPH, align 8, !tbaa !5
  %301 = load i32, ptr %211, align 4, !tbaa !34
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %329

303:                                              ; preds = %296, %324
  %304 = phi i64 [ %325, %324 ], [ 0, %296 ]
  %305 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %304
  br label %306

306:                                              ; preds = %306, %303
  %307 = phi i64 [ 0, %303 ], [ %322, %306 ]
  %308 = load ptr, ptr %305, align 8, !tbaa !5
  %309 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 3, i64 %304, i64 %307
  %310 = load i32, ptr %309, align 4, !tbaa !9
  %311 = load i32, ptr @crc, align 4, !tbaa !9
  %312 = and i32 %310, 1
  %313 = icmp eq i32 %312, 0
  %314 = and i32 %311, 32768
  %315 = icmp eq i32 %314, 0
  %316 = xor i1 %313, %315
  %317 = shl i32 %311, 1
  %318 = xor i32 %317, 32773
  %319 = select i1 %316, i32 %318, i32 %317
  %320 = and i32 %319, 65535
  store i32 %320, ptr @crc, align 4, !tbaa !9
  %321 = tail call ptr @BF_addEntry(ptr noundef %308, i32 noundef %310, i32 noundef 1) #9
  store ptr %321, ptr %305, align 8, !tbaa !5
  %322 = add nuw nsw i64 %307, 1
  %323 = icmp eq i64 %322, 4
  br i1 %323, label %324, label %306, !llvm.loop !42

324:                                              ; preds = %306
  %325 = add nuw nsw i64 %304, 1
  %326 = load i32, ptr %211, align 4, !tbaa !34
  %327 = sext i32 %326 to i64
  %328 = icmp slt i64 %325, %327
  br i1 %328, label %303, label %329, !llvm.loop !43

329:                                              ; preds = %324, %296
  br label %330

330:                                              ; preds = %329, %620
  %331 = phi i64 [ %621, %620 ], [ 0, %329 ]
  %332 = load i32, ptr %211, align 4, !tbaa !34
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %620

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 4, i64 %331
  br label %336

336:                                              ; preds = %575, %334
  %337 = phi i64 [ 0, %334 ], [ %616, %575 ]
  %338 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %331, i64 %337
  %339 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %335, i64 0, i64 %337
  %340 = load ptr, ptr %338, align 8, !tbaa !5
  %341 = load i32, ptr %339, align 8, !tbaa !44
  %342 = load i32, ptr @crc, align 4, !tbaa !9
  br label %343

343:                                              ; preds = %343, %336
  %344 = phi i32 [ %346, %343 ], [ 4096, %336 ]
  %345 = phi i32 [ %354, %343 ], [ %342, %336 ]
  %346 = lshr i32 %344, 1
  %347 = shl i32 %345, 1
  %348 = and i32 %346, %341
  %349 = icmp eq i32 %348, 0
  %350 = and i32 %345, 32768
  %351 = icmp eq i32 %350, 0
  %352 = xor i1 %349, %351
  %353 = xor i32 %347, 32773
  %354 = select i1 %352, i32 %353, i32 %347
  %355 = icmp ult i32 %344, 4
  br i1 %355, label %356, label %343, !llvm.loop !25

356:                                              ; preds = %343
  %357 = and i32 %354, 65535
  store i32 %357, ptr @crc, align 4, !tbaa !9
  %358 = tail call ptr @BF_addEntry(ptr noundef %340, i32 noundef %341, i32 noundef 12) #9
  store ptr %358, ptr %338, align 8, !tbaa !5
  %359 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 1
  %360 = load i32, ptr %359, align 4, !tbaa !46
  %361 = load i32, ptr @crc, align 4, !tbaa !9
  br label %362

362:                                              ; preds = %362, %356
  %363 = phi i32 [ %365, %362 ], [ 512, %356 ]
  %364 = phi i32 [ %373, %362 ], [ %361, %356 ]
  %365 = lshr i32 %363, 1
  %366 = shl i32 %364, 1
  %367 = and i32 %365, %360
  %368 = icmp eq i32 %367, 0
  %369 = and i32 %364, 32768
  %370 = icmp eq i32 %369, 0
  %371 = xor i1 %368, %370
  %372 = xor i32 %366, 32773
  %373 = select i1 %371, i32 %372, i32 %366
  %374 = icmp ult i32 %363, 4
  br i1 %374, label %375, label %362, !llvm.loop !25

375:                                              ; preds = %362
  %376 = and i32 %373, 65535
  store i32 %376, ptr @crc, align 4, !tbaa !9
  %377 = tail call ptr @BF_addEntry(ptr noundef %358, i32 noundef %360, i32 noundef 9) #9
  store ptr %377, ptr %338, align 8, !tbaa !5
  %378 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 3
  %379 = load i32, ptr %378, align 4, !tbaa !47
  %380 = load i32, ptr @crc, align 4, !tbaa !9
  br label %381

381:                                              ; preds = %381, %375
  %382 = phi i32 [ %384, %381 ], [ 256, %375 ]
  %383 = phi i32 [ %392, %381 ], [ %380, %375 ]
  %384 = lshr i32 %382, 1
  %385 = shl i32 %383, 1
  %386 = and i32 %384, %379
  %387 = icmp eq i32 %386, 0
  %388 = and i32 %383, 32768
  %389 = icmp eq i32 %388, 0
  %390 = xor i1 %387, %389
  %391 = xor i32 %385, 32773
  %392 = select i1 %390, i32 %391, i32 %385
  %393 = icmp ult i32 %382, 4
  br i1 %393, label %394, label %381, !llvm.loop !25

394:                                              ; preds = %381
  %395 = and i32 %392, 65535
  store i32 %395, ptr @crc, align 4, !tbaa !9
  %396 = tail call ptr @BF_addEntry(ptr noundef %377, i32 noundef %379, i32 noundef 8) #9
  store ptr %396, ptr %338, align 8, !tbaa !5
  %397 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 4
  %398 = load i32, ptr %397, align 8, !tbaa !48
  %399 = load i32, ptr @crc, align 4, !tbaa !9
  br label %400

400:                                              ; preds = %400, %394
  %401 = phi i32 [ %403, %400 ], [ 16, %394 ]
  %402 = phi i32 [ %411, %400 ], [ %399, %394 ]
  %403 = lshr i32 %401, 1
  %404 = shl i32 %402, 1
  %405 = and i32 %403, %398
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %402, 32768
  %408 = icmp eq i32 %407, 0
  %409 = xor i1 %406, %408
  %410 = xor i32 %404, 32773
  %411 = select i1 %409, i32 %410, i32 %404
  %412 = icmp ult i32 %401, 4
  br i1 %412, label %413, label %400, !llvm.loop !25

413:                                              ; preds = %400
  %414 = and i32 %411, 65535
  store i32 %414, ptr @crc, align 4, !tbaa !9
  %415 = tail call ptr @BF_addEntry(ptr noundef %396, i32 noundef %398, i32 noundef 4) #9
  store ptr %415, ptr %338, align 8, !tbaa !5
  %416 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 5
  %417 = load i32, ptr %416, align 4, !tbaa !49
  %418 = load i32, ptr @crc, align 4, !tbaa !9
  %419 = and i32 %417, 1
  %420 = icmp eq i32 %419, 0
  %421 = and i32 %418, 32768
  %422 = icmp eq i32 %421, 0
  %423 = xor i1 %420, %422
  %424 = shl i32 %418, 1
  %425 = xor i32 %424, 32773
  %426 = select i1 %423, i32 %425, i32 %424
  %427 = and i32 %426, 65535
  store i32 %427, ptr @crc, align 4, !tbaa !9
  %428 = tail call ptr @BF_addEntry(ptr noundef %415, i32 noundef %417, i32 noundef 1) #9
  store ptr %428, ptr %338, align 8, !tbaa !5
  %429 = load i32, ptr %416, align 4, !tbaa !49
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %512, label %431

431:                                              ; preds = %413
  %432 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 6
  %433 = load i32, ptr %432, align 8, !tbaa !50
  %434 = load i32, ptr @crc, align 4, !tbaa !9
  br label %435

435:                                              ; preds = %435, %431
  %436 = phi i32 [ %438, %435 ], [ 4, %431 ]
  %437 = phi i32 [ %446, %435 ], [ %434, %431 ]
  %438 = lshr i32 %436, 1
  %439 = shl i32 %437, 1
  %440 = and i32 %438, %433
  %441 = icmp eq i32 %440, 0
  %442 = and i32 %437, 32768
  %443 = icmp eq i32 %442, 0
  %444 = xor i1 %441, %443
  %445 = xor i32 %439, 32773
  %446 = select i1 %444, i32 %445, i32 %439
  %447 = icmp ult i32 %436, 4
  br i1 %447, label %448, label %435, !llvm.loop !25

448:                                              ; preds = %435
  %449 = and i32 %446, 65535
  store i32 %449, ptr @crc, align 4, !tbaa !9
  %450 = tail call ptr @BF_addEntry(ptr noundef %428, i32 noundef %433, i32 noundef 2) #9
  store ptr %450, ptr %338, align 8, !tbaa !5
  %451 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 7
  %452 = load i32, ptr %451, align 4, !tbaa !51
  %453 = load i32, ptr @crc, align 4, !tbaa !9
  %454 = and i32 %452, 1
  %455 = icmp eq i32 %454, 0
  %456 = and i32 %453, 32768
  %457 = icmp eq i32 %456, 0
  %458 = xor i1 %455, %457
  %459 = shl i32 %453, 1
  %460 = xor i32 %459, 32773
  %461 = select i1 %458, i32 %460, i32 %459
  %462 = and i32 %461, 65535
  store i32 %462, ptr @crc, align 4, !tbaa !9
  %463 = tail call ptr @BF_addEntry(ptr noundef %450, i32 noundef %452, i32 noundef 1) #9
  store ptr %463, ptr %338, align 8, !tbaa !5
  br label %464

464:                                              ; preds = %483, %448
  %465 = phi i64 [ 0, %448 ], [ %486, %483 ]
  %466 = load ptr, ptr %338, align 8, !tbaa !5
  %467 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 8, i64 %465
  %468 = load i32, ptr %467, align 4, !tbaa !9
  %469 = load i32, ptr @crc, align 4, !tbaa !9
  br label %470

470:                                              ; preds = %470, %464
  %471 = phi i32 [ %473, %470 ], [ 32, %464 ]
  %472 = phi i32 [ %481, %470 ], [ %469, %464 ]
  %473 = lshr i32 %471, 1
  %474 = shl i32 %472, 1
  %475 = and i32 %473, %468
  %476 = icmp eq i32 %475, 0
  %477 = and i32 %472, 32768
  %478 = icmp eq i32 %477, 0
  %479 = xor i1 %476, %478
  %480 = xor i32 %474, 32773
  %481 = select i1 %479, i32 %480, i32 %474
  %482 = icmp ult i32 %471, 4
  br i1 %482, label %483, label %470, !llvm.loop !25

483:                                              ; preds = %470
  %484 = and i32 %481, 65535
  store i32 %484, ptr @crc, align 4, !tbaa !9
  %485 = tail call ptr @BF_addEntry(ptr noundef %466, i32 noundef %468, i32 noundef 5) #9
  store ptr %485, ptr %338, align 8, !tbaa !5
  %486 = add nuw nsw i64 %465, 1
  %487 = icmp eq i64 %465, 0
  br i1 %487, label %464, label %488, !llvm.loop !52

488:                                              ; preds = %483, %507
  %489 = phi i64 [ %510, %507 ], [ 0, %483 ]
  %490 = load ptr, ptr %338, align 8, !tbaa !5
  %491 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 9, i64 %489
  %492 = load i32, ptr %491, align 4, !tbaa !9
  %493 = load i32, ptr @crc, align 4, !tbaa !9
  br label %494

494:                                              ; preds = %494, %488
  %495 = phi i32 [ %497, %494 ], [ 8, %488 ]
  %496 = phi i32 [ %505, %494 ], [ %493, %488 ]
  %497 = lshr i32 %495, 1
  %498 = shl i32 %496, 1
  %499 = and i32 %497, %492
  %500 = icmp eq i32 %499, 0
  %501 = and i32 %496, 32768
  %502 = icmp eq i32 %501, 0
  %503 = xor i1 %500, %502
  %504 = xor i32 %498, 32773
  %505 = select i1 %503, i32 %504, i32 %498
  %506 = icmp ult i32 %495, 4
  br i1 %506, label %507, label %494, !llvm.loop !25

507:                                              ; preds = %494
  %508 = and i32 %505, 65535
  store i32 %508, ptr @crc, align 4, !tbaa !9
  %509 = tail call ptr @BF_addEntry(ptr noundef %490, i32 noundef %492, i32 noundef 3) #9
  store ptr %509, ptr %338, align 8, !tbaa !5
  %510 = add nuw nsw i64 %489, 1
  %511 = icmp eq i64 %510, 3
  br i1 %511, label %575, label %488, !llvm.loop !53

512:                                              ; preds = %413, %531
  %513 = phi i64 [ %534, %531 ], [ 0, %413 ]
  %514 = load ptr, ptr %338, align 8, !tbaa !5
  %515 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 8, i64 %513
  %516 = load i32, ptr %515, align 4, !tbaa !9
  %517 = load i32, ptr @crc, align 4, !tbaa !9
  br label %518

518:                                              ; preds = %518, %512
  %519 = phi i32 [ %521, %518 ], [ 32, %512 ]
  %520 = phi i32 [ %529, %518 ], [ %517, %512 ]
  %521 = lshr i32 %519, 1
  %522 = shl i32 %520, 1
  %523 = and i32 %521, %516
  %524 = icmp eq i32 %523, 0
  %525 = and i32 %520, 32768
  %526 = icmp eq i32 %525, 0
  %527 = xor i1 %524, %526
  %528 = xor i32 %522, 32773
  %529 = select i1 %527, i32 %528, i32 %522
  %530 = icmp ult i32 %519, 4
  br i1 %530, label %531, label %518, !llvm.loop !25

531:                                              ; preds = %518
  %532 = and i32 %529, 65535
  store i32 %532, ptr @crc, align 4, !tbaa !9
  %533 = tail call ptr @BF_addEntry(ptr noundef %514, i32 noundef %516, i32 noundef 5) #9
  store ptr %533, ptr %338, align 8, !tbaa !5
  %534 = add nuw nsw i64 %513, 1
  %535 = icmp eq i64 %534, 3
  br i1 %535, label %536, label %512, !llvm.loop !54

536:                                              ; preds = %531
  %537 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 10
  %538 = load i32, ptr %537, align 8, !tbaa !55
  %539 = load i32, ptr @crc, align 4, !tbaa !9
  br label %540

540:                                              ; preds = %540, %536
  %541 = phi i32 [ %543, %540 ], [ 16, %536 ]
  %542 = phi i32 [ %551, %540 ], [ %539, %536 ]
  %543 = lshr i32 %541, 1
  %544 = shl i32 %542, 1
  %545 = and i32 %543, %538
  %546 = icmp eq i32 %545, 0
  %547 = and i32 %542, 32768
  %548 = icmp eq i32 %547, 0
  %549 = xor i1 %546, %548
  %550 = xor i32 %544, 32773
  %551 = select i1 %549, i32 %550, i32 %544
  %552 = icmp ult i32 %541, 4
  br i1 %552, label %553, label %540, !llvm.loop !25

553:                                              ; preds = %540
  %554 = and i32 %551, 65535
  store i32 %554, ptr @crc, align 4, !tbaa !9
  %555 = tail call ptr @BF_addEntry(ptr noundef %533, i32 noundef %538, i32 noundef 4) #9
  store ptr %555, ptr %338, align 8, !tbaa !5
  %556 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 11
  %557 = load i32, ptr %556, align 4, !tbaa !56
  %558 = load i32, ptr @crc, align 4, !tbaa !9
  br label %559

559:                                              ; preds = %559, %553
  %560 = phi i32 [ %562, %559 ], [ 8, %553 ]
  %561 = phi i32 [ %570, %559 ], [ %558, %553 ]
  %562 = lshr i32 %560, 1
  %563 = shl i32 %561, 1
  %564 = and i32 %562, %557
  %565 = icmp eq i32 %564, 0
  %566 = and i32 %561, 32768
  %567 = icmp eq i32 %566, 0
  %568 = xor i1 %565, %567
  %569 = xor i32 %563, 32773
  %570 = select i1 %568, i32 %569, i32 %563
  %571 = icmp ult i32 %560, 4
  br i1 %571, label %572, label %559, !llvm.loop !25

572:                                              ; preds = %559
  %573 = and i32 %570, 65535
  store i32 %573, ptr @crc, align 4, !tbaa !9
  %574 = tail call ptr @BF_addEntry(ptr noundef %555, i32 noundef %557, i32 noundef 3) #9
  store ptr %574, ptr %338, align 8, !tbaa !5
  br label %575

575:                                              ; preds = %507, %572
  %576 = load ptr, ptr %338, align 8, !tbaa !5
  %577 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 12
  %578 = load i32, ptr %577, align 8, !tbaa !57
  %579 = load i32, ptr @crc, align 4, !tbaa !9
  %580 = and i32 %578, 1
  %581 = icmp eq i32 %580, 0
  %582 = and i32 %579, 32768
  %583 = icmp eq i32 %582, 0
  %584 = xor i1 %581, %583
  %585 = shl i32 %579, 1
  %586 = xor i32 %585, 32773
  %587 = select i1 %584, i32 %586, i32 %585
  %588 = and i32 %587, 65535
  store i32 %588, ptr @crc, align 4, !tbaa !9
  %589 = tail call ptr @BF_addEntry(ptr noundef %576, i32 noundef %578, i32 noundef 1) #9
  store ptr %589, ptr %338, align 8, !tbaa !5
  %590 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 13
  %591 = load i32, ptr %590, align 4, !tbaa !58
  %592 = load i32, ptr @crc, align 4, !tbaa !9
  %593 = and i32 %591, 1
  %594 = icmp eq i32 %593, 0
  %595 = and i32 %592, 32768
  %596 = icmp eq i32 %595, 0
  %597 = xor i1 %594, %596
  %598 = shl i32 %592, 1
  %599 = xor i32 %598, 32773
  %600 = select i1 %597, i32 %599, i32 %598
  %601 = and i32 %600, 65535
  store i32 %601, ptr @crc, align 4, !tbaa !9
  %602 = tail call ptr @BF_addEntry(ptr noundef %589, i32 noundef %591, i32 noundef 1) #9
  store ptr %602, ptr %338, align 8, !tbaa !5
  %603 = getelementptr inbounds %struct.gr_info, ptr %339, i64 0, i32 14
  %604 = load i32, ptr %603, align 8, !tbaa !59
  %605 = load i32, ptr @crc, align 4, !tbaa !9
  %606 = and i32 %604, 1
  %607 = icmp eq i32 %606, 0
  %608 = and i32 %605, 32768
  %609 = icmp eq i32 %608, 0
  %610 = xor i1 %607, %609
  %611 = shl i32 %605, 1
  %612 = xor i32 %611, 32773
  %613 = select i1 %610, i32 %612, i32 %611
  %614 = and i32 %613, 65535
  store i32 %614, ptr @crc, align 4, !tbaa !9
  %615 = tail call ptr @BF_addEntry(ptr noundef %602, i32 noundef %604, i32 noundef 1) #9
  store ptr %615, ptr %338, align 8, !tbaa !5
  %616 = add nuw nsw i64 %337, 1
  %617 = load i32, ptr %211, align 4, !tbaa !34
  %618 = sext i32 %617 to i64
  %619 = icmp slt i64 %616, %618
  br i1 %619, label %336, label %620, !llvm.loop !60

620:                                              ; preds = %575, %330
  %621 = add nuw nsw i64 %331, 1
  %622 = icmp eq i64 %331, 0
  br i1 %622, label %330, label %946, !llvm.loop !61

623:                                              ; preds = %244, %623
  %624 = phi i32 [ %626, %623 ], [ 256, %244 ]
  %625 = phi i32 [ %634, %623 ], [ %248, %244 ]
  %626 = lshr i32 %624, 1
  %627 = shl i32 %625, 1
  %628 = and i32 %626, %247
  %629 = icmp eq i32 %628, 0
  %630 = and i32 %625, 32768
  %631 = icmp eq i32 %630, 0
  %632 = xor i1 %629, %631
  %633 = xor i32 %627, 32773
  %634 = select i1 %632, i32 %633, i32 %627
  %635 = icmp ult i32 %624, 4
  br i1 %635, label %636, label %623, !llvm.loop !25

636:                                              ; preds = %623
  %637 = and i32 %634, 65535
  store i32 %637, ptr @crc, align 4, !tbaa !9
  %638 = tail call ptr @BF_addEntry(ptr noundef %208, i32 noundef %247, i32 noundef 8) #9
  store ptr %638, ptr @frameSIPH, align 8, !tbaa !5
  %639 = load i32, ptr %211, align 4, !tbaa !34
  %640 = icmp eq i32 %639, 2
  %641 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 1
  %642 = load i32, ptr %641, align 4, !tbaa !41
  %643 = load i32, ptr @crc, align 4, !tbaa !9
  br i1 %640, label %644, label %657

644:                                              ; preds = %636, %644
  %645 = phi i32 [ %647, %644 ], [ 4, %636 ]
  %646 = phi i32 [ %655, %644 ], [ %643, %636 ]
  %647 = lshr i32 %645, 1
  %648 = shl i32 %646, 1
  %649 = and i32 %647, %642
  %650 = icmp eq i32 %649, 0
  %651 = and i32 %646, 32768
  %652 = icmp eq i32 %651, 0
  %653 = xor i1 %650, %652
  %654 = xor i32 %648, 32773
  %655 = select i1 %653, i32 %654, i32 %648
  %656 = icmp ult i32 %645, 4
  br i1 %656, label %666, label %644, !llvm.loop !25

657:                                              ; preds = %636
  %658 = and i32 %642, 1
  %659 = icmp eq i32 %658, 0
  %660 = and i32 %643, 32768
  %661 = icmp eq i32 %660, 0
  %662 = xor i1 %659, %661
  %663 = shl i32 %643, 1
  %664 = xor i32 %663, 32773
  %665 = select i1 %662, i32 %664, i32 %663
  br label %666

666:                                              ; preds = %644, %657
  %667 = phi i32 [ %665, %657 ], [ %655, %644 ]
  %668 = phi i32 [ 1, %657 ], [ 2, %644 ]
  %669 = and i32 %667, 65535
  store i32 %669, ptr @crc, align 4, !tbaa !9
  %670 = tail call ptr @BF_addEntry(ptr noundef %638, i32 noundef %642, i32 noundef %668) #9
  store ptr %670, ptr @frameSIPH, align 8, !tbaa !5
  %671 = load i32, ptr %211, align 4, !tbaa !34
  %672 = icmp sgt i32 %671, 0
  br i1 %672, label %673, label %946

673:                                              ; preds = %666
  %674 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 4
  br label %675

675:                                              ; preds = %914, %673
  %676 = phi i64 [ 0, %673 ], [ %942, %914 ]
  %677 = getelementptr inbounds [2 x ptr], ptr @spectrumSIPH, i64 0, i64 %676
  %678 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %674, i64 0, i64 %676
  %679 = load ptr, ptr %677, align 8, !tbaa !5
  %680 = load i32, ptr %678, align 8, !tbaa !44
  %681 = load i32, ptr @crc, align 4, !tbaa !9
  br label %682

682:                                              ; preds = %682, %675
  %683 = phi i32 [ %685, %682 ], [ 4096, %675 ]
  %684 = phi i32 [ %693, %682 ], [ %681, %675 ]
  %685 = lshr i32 %683, 1
  %686 = shl i32 %684, 1
  %687 = and i32 %685, %680
  %688 = icmp eq i32 %687, 0
  %689 = and i32 %684, 32768
  %690 = icmp eq i32 %689, 0
  %691 = xor i1 %688, %690
  %692 = xor i32 %686, 32773
  %693 = select i1 %691, i32 %692, i32 %686
  %694 = icmp ult i32 %683, 4
  br i1 %694, label %695, label %682, !llvm.loop !25

695:                                              ; preds = %682
  %696 = and i32 %693, 65535
  store i32 %696, ptr @crc, align 4, !tbaa !9
  %697 = tail call ptr @BF_addEntry(ptr noundef %679, i32 noundef %680, i32 noundef 12) #9
  store ptr %697, ptr %677, align 8, !tbaa !5
  %698 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 1
  %699 = load i32, ptr %698, align 4, !tbaa !46
  %700 = load i32, ptr @crc, align 4, !tbaa !9
  br label %701

701:                                              ; preds = %701, %695
  %702 = phi i32 [ %704, %701 ], [ 512, %695 ]
  %703 = phi i32 [ %712, %701 ], [ %700, %695 ]
  %704 = lshr i32 %702, 1
  %705 = shl i32 %703, 1
  %706 = and i32 %704, %699
  %707 = icmp eq i32 %706, 0
  %708 = and i32 %703, 32768
  %709 = icmp eq i32 %708, 0
  %710 = xor i1 %707, %709
  %711 = xor i32 %705, 32773
  %712 = select i1 %710, i32 %711, i32 %705
  %713 = icmp ult i32 %702, 4
  br i1 %713, label %714, label %701, !llvm.loop !25

714:                                              ; preds = %701
  %715 = and i32 %712, 65535
  store i32 %715, ptr @crc, align 4, !tbaa !9
  %716 = tail call ptr @BF_addEntry(ptr noundef %697, i32 noundef %699, i32 noundef 9) #9
  store ptr %716, ptr %677, align 8, !tbaa !5
  %717 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 3
  %718 = load i32, ptr %717, align 4, !tbaa !47
  %719 = load i32, ptr @crc, align 4, !tbaa !9
  br label %720

720:                                              ; preds = %720, %714
  %721 = phi i32 [ %723, %720 ], [ 256, %714 ]
  %722 = phi i32 [ %731, %720 ], [ %719, %714 ]
  %723 = lshr i32 %721, 1
  %724 = shl i32 %722, 1
  %725 = and i32 %723, %718
  %726 = icmp eq i32 %725, 0
  %727 = and i32 %722, 32768
  %728 = icmp eq i32 %727, 0
  %729 = xor i1 %726, %728
  %730 = xor i32 %724, 32773
  %731 = select i1 %729, i32 %730, i32 %724
  %732 = icmp ult i32 %721, 4
  br i1 %732, label %733, label %720, !llvm.loop !25

733:                                              ; preds = %720
  %734 = and i32 %731, 65535
  store i32 %734, ptr @crc, align 4, !tbaa !9
  %735 = tail call ptr @BF_addEntry(ptr noundef %716, i32 noundef %718, i32 noundef 8) #9
  store ptr %735, ptr %677, align 8, !tbaa !5
  %736 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 4
  %737 = load i32, ptr %736, align 8, !tbaa !48
  %738 = load i32, ptr @crc, align 4, !tbaa !9
  br label %739

739:                                              ; preds = %739, %733
  %740 = phi i32 [ %742, %739 ], [ 512, %733 ]
  %741 = phi i32 [ %750, %739 ], [ %738, %733 ]
  %742 = lshr i32 %740, 1
  %743 = shl i32 %741, 1
  %744 = and i32 %742, %737
  %745 = icmp eq i32 %744, 0
  %746 = and i32 %741, 32768
  %747 = icmp eq i32 %746, 0
  %748 = xor i1 %745, %747
  %749 = xor i32 %743, 32773
  %750 = select i1 %748, i32 %749, i32 %743
  %751 = icmp ult i32 %740, 4
  br i1 %751, label %752, label %739, !llvm.loop !25

752:                                              ; preds = %739
  %753 = and i32 %750, 65535
  store i32 %753, ptr @crc, align 4, !tbaa !9
  %754 = tail call ptr @BF_addEntry(ptr noundef %735, i32 noundef %737, i32 noundef 9) #9
  store ptr %754, ptr %677, align 8, !tbaa !5
  %755 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 5
  %756 = load i32, ptr %755, align 4, !tbaa !49
  %757 = load i32, ptr @crc, align 4, !tbaa !9
  %758 = and i32 %756, 1
  %759 = icmp eq i32 %758, 0
  %760 = and i32 %757, 32768
  %761 = icmp eq i32 %760, 0
  %762 = xor i1 %759, %761
  %763 = shl i32 %757, 1
  %764 = xor i32 %763, 32773
  %765 = select i1 %762, i32 %764, i32 %763
  %766 = and i32 %765, 65535
  store i32 %766, ptr @crc, align 4, !tbaa !9
  %767 = tail call ptr @BF_addEntry(ptr noundef %754, i32 noundef %756, i32 noundef 1) #9
  store ptr %767, ptr %677, align 8, !tbaa !5
  %768 = load i32, ptr %755, align 4, !tbaa !49
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %851, label %770

770:                                              ; preds = %752
  %771 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 6
  %772 = load i32, ptr %771, align 8, !tbaa !50
  %773 = load i32, ptr @crc, align 4, !tbaa !9
  br label %774

774:                                              ; preds = %774, %770
  %775 = phi i32 [ %777, %774 ], [ 4, %770 ]
  %776 = phi i32 [ %785, %774 ], [ %773, %770 ]
  %777 = lshr i32 %775, 1
  %778 = shl i32 %776, 1
  %779 = and i32 %777, %772
  %780 = icmp eq i32 %779, 0
  %781 = and i32 %776, 32768
  %782 = icmp eq i32 %781, 0
  %783 = xor i1 %780, %782
  %784 = xor i32 %778, 32773
  %785 = select i1 %783, i32 %784, i32 %778
  %786 = icmp ult i32 %775, 4
  br i1 %786, label %787, label %774, !llvm.loop !25

787:                                              ; preds = %774
  %788 = and i32 %785, 65535
  store i32 %788, ptr @crc, align 4, !tbaa !9
  %789 = tail call ptr @BF_addEntry(ptr noundef %767, i32 noundef %772, i32 noundef 2) #9
  store ptr %789, ptr %677, align 8, !tbaa !5
  %790 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 7
  %791 = load i32, ptr %790, align 4, !tbaa !51
  %792 = load i32, ptr @crc, align 4, !tbaa !9
  %793 = and i32 %791, 1
  %794 = icmp eq i32 %793, 0
  %795 = and i32 %792, 32768
  %796 = icmp eq i32 %795, 0
  %797 = xor i1 %794, %796
  %798 = shl i32 %792, 1
  %799 = xor i32 %798, 32773
  %800 = select i1 %797, i32 %799, i32 %798
  %801 = and i32 %800, 65535
  store i32 %801, ptr @crc, align 4, !tbaa !9
  %802 = tail call ptr @BF_addEntry(ptr noundef %789, i32 noundef %791, i32 noundef 1) #9
  store ptr %802, ptr %677, align 8, !tbaa !5
  br label %803

803:                                              ; preds = %822, %787
  %804 = phi i64 [ 0, %787 ], [ %825, %822 ]
  %805 = load ptr, ptr %677, align 8, !tbaa !5
  %806 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 8, i64 %804
  %807 = load i32, ptr %806, align 4, !tbaa !9
  %808 = load i32, ptr @crc, align 4, !tbaa !9
  br label %809

809:                                              ; preds = %809, %803
  %810 = phi i32 [ %812, %809 ], [ 32, %803 ]
  %811 = phi i32 [ %820, %809 ], [ %808, %803 ]
  %812 = lshr i32 %810, 1
  %813 = shl i32 %811, 1
  %814 = and i32 %812, %807
  %815 = icmp eq i32 %814, 0
  %816 = and i32 %811, 32768
  %817 = icmp eq i32 %816, 0
  %818 = xor i1 %815, %817
  %819 = xor i32 %813, 32773
  %820 = select i1 %818, i32 %819, i32 %813
  %821 = icmp ult i32 %810, 4
  br i1 %821, label %822, label %809, !llvm.loop !25

822:                                              ; preds = %809
  %823 = and i32 %820, 65535
  store i32 %823, ptr @crc, align 4, !tbaa !9
  %824 = tail call ptr @BF_addEntry(ptr noundef %805, i32 noundef %807, i32 noundef 5) #9
  store ptr %824, ptr %677, align 8, !tbaa !5
  %825 = add nuw nsw i64 %804, 1
  %826 = icmp eq i64 %804, 0
  br i1 %826, label %803, label %827, !llvm.loop !62

827:                                              ; preds = %822, %846
  %828 = phi i64 [ %849, %846 ], [ 0, %822 ]
  %829 = load ptr, ptr %677, align 8, !tbaa !5
  %830 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 9, i64 %828
  %831 = load i32, ptr %830, align 4, !tbaa !9
  %832 = load i32, ptr @crc, align 4, !tbaa !9
  br label %833

833:                                              ; preds = %833, %827
  %834 = phi i32 [ %836, %833 ], [ 8, %827 ]
  %835 = phi i32 [ %844, %833 ], [ %832, %827 ]
  %836 = lshr i32 %834, 1
  %837 = shl i32 %835, 1
  %838 = and i32 %836, %831
  %839 = icmp eq i32 %838, 0
  %840 = and i32 %835, 32768
  %841 = icmp eq i32 %840, 0
  %842 = xor i1 %839, %841
  %843 = xor i32 %837, 32773
  %844 = select i1 %842, i32 %843, i32 %837
  %845 = icmp ult i32 %834, 4
  br i1 %845, label %846, label %833, !llvm.loop !25

846:                                              ; preds = %833
  %847 = and i32 %844, 65535
  store i32 %847, ptr @crc, align 4, !tbaa !9
  %848 = tail call ptr @BF_addEntry(ptr noundef %829, i32 noundef %831, i32 noundef 3) #9
  store ptr %848, ptr %677, align 8, !tbaa !5
  %849 = add nuw nsw i64 %828, 1
  %850 = icmp eq i64 %849, 3
  br i1 %850, label %914, label %827, !llvm.loop !63

851:                                              ; preds = %752, %870
  %852 = phi i64 [ %873, %870 ], [ 0, %752 ]
  %853 = load ptr, ptr %677, align 8, !tbaa !5
  %854 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 8, i64 %852
  %855 = load i32, ptr %854, align 4, !tbaa !9
  %856 = load i32, ptr @crc, align 4, !tbaa !9
  br label %857

857:                                              ; preds = %857, %851
  %858 = phi i32 [ %860, %857 ], [ 32, %851 ]
  %859 = phi i32 [ %868, %857 ], [ %856, %851 ]
  %860 = lshr i32 %858, 1
  %861 = shl i32 %859, 1
  %862 = and i32 %860, %855
  %863 = icmp eq i32 %862, 0
  %864 = and i32 %859, 32768
  %865 = icmp eq i32 %864, 0
  %866 = xor i1 %863, %865
  %867 = xor i32 %861, 32773
  %868 = select i1 %866, i32 %867, i32 %861
  %869 = icmp ult i32 %858, 4
  br i1 %869, label %870, label %857, !llvm.loop !25

870:                                              ; preds = %857
  %871 = and i32 %868, 65535
  store i32 %871, ptr @crc, align 4, !tbaa !9
  %872 = tail call ptr @BF_addEntry(ptr noundef %853, i32 noundef %855, i32 noundef 5) #9
  store ptr %872, ptr %677, align 8, !tbaa !5
  %873 = add nuw nsw i64 %852, 1
  %874 = icmp eq i64 %873, 3
  br i1 %874, label %875, label %851, !llvm.loop !64

875:                                              ; preds = %870
  %876 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 10
  %877 = load i32, ptr %876, align 8, !tbaa !55
  %878 = load i32, ptr @crc, align 4, !tbaa !9
  br label %879

879:                                              ; preds = %879, %875
  %880 = phi i32 [ %882, %879 ], [ 16, %875 ]
  %881 = phi i32 [ %890, %879 ], [ %878, %875 ]
  %882 = lshr i32 %880, 1
  %883 = shl i32 %881, 1
  %884 = and i32 %882, %877
  %885 = icmp eq i32 %884, 0
  %886 = and i32 %881, 32768
  %887 = icmp eq i32 %886, 0
  %888 = xor i1 %885, %887
  %889 = xor i32 %883, 32773
  %890 = select i1 %888, i32 %889, i32 %883
  %891 = icmp ult i32 %880, 4
  br i1 %891, label %892, label %879, !llvm.loop !25

892:                                              ; preds = %879
  %893 = and i32 %890, 65535
  store i32 %893, ptr @crc, align 4, !tbaa !9
  %894 = tail call ptr @BF_addEntry(ptr noundef %872, i32 noundef %877, i32 noundef 4) #9
  store ptr %894, ptr %677, align 8, !tbaa !5
  %895 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 11
  %896 = load i32, ptr %895, align 4, !tbaa !56
  %897 = load i32, ptr @crc, align 4, !tbaa !9
  br label %898

898:                                              ; preds = %898, %892
  %899 = phi i32 [ %901, %898 ], [ 8, %892 ]
  %900 = phi i32 [ %909, %898 ], [ %897, %892 ]
  %901 = lshr i32 %899, 1
  %902 = shl i32 %900, 1
  %903 = and i32 %901, %896
  %904 = icmp eq i32 %903, 0
  %905 = and i32 %900, 32768
  %906 = icmp eq i32 %905, 0
  %907 = xor i1 %904, %906
  %908 = xor i32 %902, 32773
  %909 = select i1 %907, i32 %908, i32 %902
  %910 = icmp ult i32 %899, 4
  br i1 %910, label %911, label %898, !llvm.loop !25

911:                                              ; preds = %898
  %912 = and i32 %909, 65535
  store i32 %912, ptr @crc, align 4, !tbaa !9
  %913 = tail call ptr @BF_addEntry(ptr noundef %894, i32 noundef %896, i32 noundef 3) #9
  store ptr %913, ptr %677, align 8, !tbaa !5
  br label %914

914:                                              ; preds = %846, %911
  %915 = load ptr, ptr %677, align 8, !tbaa !5
  %916 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 13
  %917 = load i32, ptr %916, align 4, !tbaa !58
  %918 = load i32, ptr @crc, align 4, !tbaa !9
  %919 = and i32 %917, 1
  %920 = icmp eq i32 %919, 0
  %921 = and i32 %918, 32768
  %922 = icmp eq i32 %921, 0
  %923 = xor i1 %920, %922
  %924 = shl i32 %918, 1
  %925 = xor i32 %924, 32773
  %926 = select i1 %923, i32 %925, i32 %924
  %927 = and i32 %926, 65535
  store i32 %927, ptr @crc, align 4, !tbaa !9
  %928 = tail call ptr @BF_addEntry(ptr noundef %915, i32 noundef %917, i32 noundef 1) #9
  store ptr %928, ptr %677, align 8, !tbaa !5
  %929 = getelementptr inbounds %struct.gr_info, ptr %678, i64 0, i32 14
  %930 = load i32, ptr %929, align 8, !tbaa !59
  %931 = load i32, ptr @crc, align 4, !tbaa !9
  %932 = and i32 %930, 1
  %933 = icmp eq i32 %932, 0
  %934 = and i32 %931, 32768
  %935 = icmp eq i32 %934, 0
  %936 = xor i1 %933, %935
  %937 = shl i32 %931, 1
  %938 = xor i32 %937, 32773
  %939 = select i1 %936, i32 %938, i32 %937
  %940 = and i32 %939, 65535
  store i32 %940, ptr @crc, align 4, !tbaa !9
  %941 = tail call ptr @BF_addEntry(ptr noundef %928, i32 noundef %930, i32 noundef 1) #9
  store ptr %941, ptr %677, align 8, !tbaa !5
  %942 = add nuw nsw i64 %676, 1
  %943 = load i32, ptr %211, align 4, !tbaa !34
  %944 = sext i32 %943 to i64
  %945 = icmp slt i64 %942, %944
  br i1 %945, label %675, label %946, !llvm.loop !65

946:                                              ; preds = %914, %620, %666
  %947 = load i32, ptr %56, align 4, !tbaa !23
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %953, label %949

949:                                              ; preds = %946
  %950 = load ptr, ptr @headerPH, align 8, !tbaa !5
  %951 = load i32, ptr @crc, align 4, !tbaa !9
  %952 = tail call ptr @BF_addEntry(ptr noundef %950, i32 noundef %951, i32 noundef 16) #9
  store ptr %952, ptr @headerPH, align 8, !tbaa !5
  br label %953

953:                                              ; preds = %946, %949
  %954 = load i32, ptr %217, align 8, !tbaa !35
  %955 = icmp sgt i32 %954, 0
  br i1 %955, label %956, label %993

956:                                              ; preds = %953
  %957 = load i32, ptr %211, align 4, !tbaa !34
  %958 = icmp sgt i32 %957, 0
  %959 = zext nneg i32 %954 to i64
  %960 = zext nneg i32 %957 to i64
  br label %961

961:                                              ; preds = %977, %956
  %962 = phi i64 [ 0, %956 ], [ %978, %977 ]
  br i1 %958, label %969, label %977

963:                                              ; preds = %977
  br i1 %955, label %964, label %993

964:                                              ; preds = %963
  %965 = load i32, ptr %211, align 4, !tbaa !34
  %966 = icmp sgt i32 %965, 0
  %967 = zext nneg i32 %954 to i64
  %968 = zext nneg i32 %965 to i64
  br label %980

969:                                              ; preds = %961, %969
  %970 = phi i64 [ %975, %969 ], [ 0, %961 ]
  %971 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %962, i64 %970
  %972 = load ptr, ptr %971, align 8, !tbaa !5
  %973 = getelementptr inbounds %struct.BF_PartHolder, ptr %972, i64 0, i32 1
  %974 = load ptr, ptr %973, align 8, !tbaa !15
  store i32 0, ptr %974, align 8, !tbaa !17
  %975 = add nuw nsw i64 %970, 1
  %976 = icmp eq i64 %975, %960
  br i1 %976, label %977, label %969, !llvm.loop !66

977:                                              ; preds = %969, %961
  %978 = add nuw nsw i64 %962, 1
  %979 = icmp eq i64 %978, %959
  br i1 %979, label %963, label %961, !llvm.loop !67

980:                                              ; preds = %990, %964
  %981 = phi i64 [ 0, %964 ], [ %991, %990 ]
  br i1 %966, label %982, label %990

982:                                              ; preds = %980, %982
  %983 = phi i64 [ %988, %982 ], [ 0, %980 ]
  %984 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %981, i64 %983
  %985 = load ptr, ptr %984, align 8, !tbaa !5
  %986 = getelementptr inbounds %struct.BF_PartHolder, ptr %985, i64 0, i32 1
  %987 = load ptr, ptr %986, align 8, !tbaa !15
  store i32 0, ptr %987, align 8, !tbaa !17
  %988 = add nuw nsw i64 %983, 1
  %989 = icmp eq i64 %988, %968
  br i1 %989, label %990, label %982, !llvm.loop !68

990:                                              ; preds = %982, %980
  %991 = add nuw nsw i64 %981, 1
  %992 = icmp eq i64 %991, %967
  br i1 %992, label %993, label %980, !llvm.loop !69

993:                                              ; preds = %990, %953, %963
  %994 = load i32, ptr %52, align 8, !tbaa !19
  %995 = icmp eq i32 %994, 1
  br i1 %995, label %1001, label %996

996:                                              ; preds = %993
  %997 = load i32, ptr %211, align 4, !tbaa !34
  %998 = icmp sgt i32 %997, 0
  br i1 %998, label %999, label %1195

999:                                              ; preds = %996
  %1000 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 4
  br label %1118

1001:                                             ; preds = %993, %1115
  %1002 = phi i64 [ %1116, %1115 ], [ 0, %993 ]
  %1003 = load i32, ptr %211, align 4, !tbaa !34
  %1004 = icmp sgt i32 %1003, 0
  br i1 %1004, label %1005, label %1115

1005:                                             ; preds = %1001
  %1006 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 4, i64 %1002
  %1007 = icmp eq i64 %1002, 0
  br label %1008

1008:                                             ; preds = %1109, %1005
  %1009 = phi i64 [ 0, %1005 ], [ %1111, %1109 ]
  %1010 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %1002, i64 %1009
  %1011 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %1006, i64 0, i64 %1009
  %1012 = getelementptr inbounds %struct.gr_info, ptr %1011, i64 0, i32 4
  %1013 = load i32, ptr %1012, align 8, !tbaa !48
  %1014 = zext i32 %1013 to i64
  %1015 = getelementptr inbounds [16 x i32], ptr @slen1_tab, i64 0, i64 %1014
  %1016 = load i32, ptr %1015, align 4, !tbaa !9
  %1017 = getelementptr inbounds [16 x i32], ptr @slen2_tab, i64 0, i64 %1014
  %1018 = load i32, ptr %1017, align 4, !tbaa !9
  %1019 = getelementptr inbounds [2 x [576 x i32]], ptr %2, i64 %1002, i64 %1009
  %1020 = getelementptr inbounds %struct.gr_info, ptr %1011, i64 0, i32 6
  %1021 = load i32, ptr %1020, align 8, !tbaa !50
  %1022 = icmp eq i32 %1021, 2
  br i1 %1022, label %1023, label %1049

1023:                                             ; preds = %1008, %1033
  %1024 = phi i64 [ %1034, %1033 ], [ 0, %1008 ]
  br label %1025

1025:                                             ; preds = %1025, %1023
  %1026 = phi i64 [ 0, %1023 ], [ %1031, %1025 ]
  %1027 = load ptr, ptr %1010, align 8, !tbaa !5
  %1028 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 %1002, i64 %1009, i32 1, i64 %1024, i64 %1026
  %1029 = load i32, ptr %1028, align 4, !tbaa !9
  %1030 = tail call ptr @BF_addEntry(ptr noundef %1027, i32 noundef %1029, i32 noundef %1016) #9
  store ptr %1030, ptr %1010, align 8, !tbaa !5
  %1031 = add nuw nsw i64 %1026, 1
  %1032 = icmp eq i64 %1031, 3
  br i1 %1032, label %1033, label %1025, !llvm.loop !70

1033:                                             ; preds = %1025
  %1034 = add nuw nsw i64 %1024, 1
  %1035 = icmp eq i64 %1034, 6
  br i1 %1035, label %1036, label %1023, !llvm.loop !71

1036:                                             ; preds = %1033, %1046
  %1037 = phi i64 [ %1047, %1046 ], [ 6, %1033 ]
  br label %1038

1038:                                             ; preds = %1038, %1036
  %1039 = phi i64 [ 0, %1036 ], [ %1044, %1038 ]
  %1040 = load ptr, ptr %1010, align 8, !tbaa !5
  %1041 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 %1002, i64 %1009, i32 1, i64 %1037, i64 %1039
  %1042 = load i32, ptr %1041, align 4, !tbaa !9
  %1043 = tail call ptr @BF_addEntry(ptr noundef %1040, i32 noundef %1042, i32 noundef %1018) #9
  store ptr %1043, ptr %1010, align 8, !tbaa !5
  %1044 = add nuw nsw i64 %1039, 1
  %1045 = icmp eq i64 %1044, 3
  br i1 %1045, label %1046, label %1038, !llvm.loop !72

1046:                                             ; preds = %1038
  %1047 = add nuw nsw i64 %1037, 1
  %1048 = icmp eq i64 %1047, 12
  br i1 %1048, label %1109, label %1036, !llvm.loop !73

1049:                                             ; preds = %1008
  br i1 %1007, label %1054, label %1050

1050:                                             ; preds = %1049
  %1051 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 3, i64 %1009
  %1052 = load i32, ptr %1051, align 4, !tbaa !9
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1064

1054:                                             ; preds = %1050, %1049
  %1055 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 %1002, i64 %1009
  br label %1056

1056:                                             ; preds = %1056, %1054
  %1057 = phi i64 [ 0, %1054 ], [ %1062, %1056 ]
  %1058 = load ptr, ptr %1010, align 8, !tbaa !5
  %1059 = getelementptr inbounds [22 x i32], ptr %1055, i64 0, i64 %1057
  %1060 = load i32, ptr %1059, align 4, !tbaa !9
  %1061 = tail call ptr @BF_addEntry(ptr noundef %1058, i32 noundef %1060, i32 noundef %1016) #9
  store ptr %1061, ptr %1010, align 8, !tbaa !5
  %1062 = add nuw nsw i64 %1057, 1
  %1063 = icmp eq i64 %1062, 6
  br i1 %1063, label %1064, label %1056, !llvm.loop !74

1064:                                             ; preds = %1056, %1050
  br i1 %1007, label %1069, label %1065

1065:                                             ; preds = %1064
  %1066 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 3, i64 %1009, i64 1
  %1067 = load i32, ptr %1066, align 4, !tbaa !9
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1069, label %1079

1069:                                             ; preds = %1065, %1064
  %1070 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 %1002, i64 %1009
  br label %1071

1071:                                             ; preds = %1071, %1069
  %1072 = phi i64 [ 6, %1069 ], [ %1077, %1071 ]
  %1073 = load ptr, ptr %1010, align 8, !tbaa !5
  %1074 = getelementptr inbounds [22 x i32], ptr %1070, i64 0, i64 %1072
  %1075 = load i32, ptr %1074, align 4, !tbaa !9
  %1076 = tail call ptr @BF_addEntry(ptr noundef %1073, i32 noundef %1075, i32 noundef %1016) #9
  store ptr %1076, ptr %1010, align 8, !tbaa !5
  %1077 = add nuw nsw i64 %1072, 1
  %1078 = icmp eq i64 %1077, 11
  br i1 %1078, label %1079, label %1071, !llvm.loop !75

1079:                                             ; preds = %1071, %1065
  br i1 %1007, label %1084, label %1080

1080:                                             ; preds = %1079
  %1081 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 3, i64 %1009, i64 2
  %1082 = load i32, ptr %1081, align 4, !tbaa !9
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1084, label %1094

1084:                                             ; preds = %1080, %1079
  %1085 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 %1002, i64 %1009
  br label %1086

1086:                                             ; preds = %1086, %1084
  %1087 = phi i64 [ 11, %1084 ], [ %1092, %1086 ]
  %1088 = load ptr, ptr %1010, align 8, !tbaa !5
  %1089 = getelementptr inbounds [22 x i32], ptr %1085, i64 0, i64 %1087
  %1090 = load i32, ptr %1089, align 4, !tbaa !9
  %1091 = tail call ptr @BF_addEntry(ptr noundef %1088, i32 noundef %1090, i32 noundef %1018) #9
  store ptr %1091, ptr %1010, align 8, !tbaa !5
  %1092 = add nuw nsw i64 %1087, 1
  %1093 = icmp eq i64 %1092, 16
  br i1 %1093, label %1094, label %1086, !llvm.loop !76

1094:                                             ; preds = %1086, %1080
  br i1 %1007, label %1099, label %1095

1095:                                             ; preds = %1094
  %1096 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 3, i64 %1009, i64 3
  %1097 = load i32, ptr %1096, align 4, !tbaa !9
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1099, label %1109

1099:                                             ; preds = %1095, %1094
  %1100 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 %1002, i64 %1009
  br label %1101

1101:                                             ; preds = %1101, %1099
  %1102 = phi i64 [ 16, %1099 ], [ %1107, %1101 ]
  %1103 = load ptr, ptr %1010, align 8, !tbaa !5
  %1104 = getelementptr inbounds [22 x i32], ptr %1100, i64 0, i64 %1102
  %1105 = load i32, ptr %1104, align 4, !tbaa !9
  %1106 = tail call ptr @BF_addEntry(ptr noundef %1103, i32 noundef %1105, i32 noundef %1018) #9
  store ptr %1106, ptr %1010, align 8, !tbaa !5
  %1107 = add nuw nsw i64 %1102, 1
  %1108 = icmp eq i64 %1107, 21
  br i1 %1108, label %1109, label %1101, !llvm.loop !77

1109:                                             ; preds = %1101, %1046, %1095
  %1110 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %1002, i64 %1009
  tail call fastcc void @Huffmancodebits(ptr noundef nonnull %1110, ptr noundef %1019, ptr noundef nonnull %1011)
  %1111 = add nuw nsw i64 %1009, 1
  %1112 = load i32, ptr %211, align 4, !tbaa !34
  %1113 = sext i32 %1112 to i64
  %1114 = icmp slt i64 %1111, %1113
  br i1 %1114, label %1008, label %1115, !llvm.loop !78

1115:                                             ; preds = %1109, %1001
  %1116 = add nuw nsw i64 %1002, 1
  %1117 = icmp eq i64 %1002, 0
  br i1 %1117, label %1001, label %1195, !llvm.loop !79

1118:                                             ; preds = %1189, %999
  %1119 = phi i64 [ 0, %999 ], [ %1191, %1189 ]
  %1120 = getelementptr inbounds [2 x ptr], ptr @scaleFactorsPH, i64 0, i64 %1119
  %1121 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %1000, i64 0, i64 %1119
  %1122 = getelementptr inbounds [2 x [576 x i32]], ptr %2, i64 0, i64 %1119
  %1123 = getelementptr inbounds %struct.gr_info, ptr %1121, i64 0, i32 6
  %1124 = load i32, ptr %1123, align 8, !tbaa !50
  %1125 = icmp eq i32 %1124, 2
  %1126 = getelementptr inbounds %struct.gr_info, ptr %1121, i64 0, i32 19
  br i1 %1125, label %1129, label %1127

1127:                                             ; preds = %1118
  %1128 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 0, i64 %1119
  br label %1162

1129:                                             ; preds = %1118, %1158
  %1130 = phi i64 [ %1160, %1158 ], [ 0, %1118 ]
  %1131 = phi i32 [ %1159, %1158 ], [ 0, %1118 ]
  %1132 = load ptr, ptr %1126, align 8, !tbaa !80
  %1133 = getelementptr inbounds i32, ptr %1132, i64 %1130
  %1134 = load i32, ptr %1133, align 4, !tbaa !9
  %1135 = udiv i32 %1134, 3
  %1136 = getelementptr inbounds %struct.gr_info, ptr %1121, i64 0, i32 20, i64 %1130
  %1137 = load i32, ptr %1136, align 4, !tbaa !9
  %1138 = icmp ult i32 %1134, 3
  br i1 %1138, label %1158, label %1139

1139:                                             ; preds = %1129
  %1140 = sext i32 %1131 to i64
  br label %1141

1141:                                             ; preds = %1152, %1139
  %1142 = phi i64 [ %1140, %1139 ], [ %1154, %1152 ]
  %1143 = phi i32 [ 0, %1139 ], [ %1153, %1152 ]
  br label %1144

1144:                                             ; preds = %1144, %1141
  %1145 = phi i64 [ 0, %1141 ], [ %1150, %1144 ]
  %1146 = load ptr, ptr %1120, align 8, !tbaa !5
  %1147 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %4, i64 0, i64 %1119, i32 1, i64 %1142, i64 %1145
  %1148 = load i32, ptr %1147, align 4, !tbaa !9
  %1149 = tail call ptr @BF_addEntry(ptr noundef %1146, i32 noundef %1148, i32 noundef %1137) #9
  store ptr %1149, ptr %1120, align 8, !tbaa !5
  %1150 = add nuw nsw i64 %1145, 1
  %1151 = icmp eq i64 %1150, 3
  br i1 %1151, label %1152, label %1144, !llvm.loop !81

1152:                                             ; preds = %1144
  %1153 = add nuw nsw i32 %1143, 1
  %1154 = add nsw i64 %1142, 1
  %1155 = icmp eq i32 %1153, %1135
  br i1 %1155, label %1156, label %1141, !llvm.loop !82

1156:                                             ; preds = %1152
  %1157 = trunc i64 %1154 to i32
  br label %1158

1158:                                             ; preds = %1156, %1129
  %1159 = phi i32 [ %1131, %1129 ], [ %1157, %1156 ]
  %1160 = add nuw nsw i64 %1130, 1
  %1161 = icmp eq i64 %1160, 4
  br i1 %1161, label %1189, label %1129, !llvm.loop !83

1162:                                             ; preds = %1185, %1127
  %1163 = phi i64 [ 0, %1127 ], [ %1187, %1185 ]
  %1164 = phi i32 [ 0, %1127 ], [ %1186, %1185 ]
  %1165 = load ptr, ptr %1126, align 8, !tbaa !80
  %1166 = getelementptr inbounds i32, ptr %1165, i64 %1163
  %1167 = load i32, ptr %1166, align 4, !tbaa !9
  %1168 = getelementptr inbounds %struct.gr_info, ptr %1121, i64 0, i32 20, i64 %1163
  %1169 = load i32, ptr %1168, align 4, !tbaa !9
  %1170 = icmp sgt i32 %1167, 0
  br i1 %1170, label %1171, label %1185

1171:                                             ; preds = %1162
  %1172 = sext i32 %1164 to i64
  br label %1173

1173:                                             ; preds = %1173, %1171
  %1174 = phi i64 [ %1172, %1171 ], [ %1181, %1173 ]
  %1175 = phi i32 [ 0, %1171 ], [ %1180, %1173 ]
  %1176 = load ptr, ptr %1120, align 8, !tbaa !5
  %1177 = getelementptr inbounds [22 x i32], ptr %1128, i64 0, i64 %1174
  %1178 = load i32, ptr %1177, align 4, !tbaa !9
  %1179 = tail call ptr @BF_addEntry(ptr noundef %1176, i32 noundef %1178, i32 noundef %1169) #9
  store ptr %1179, ptr %1120, align 8, !tbaa !5
  %1180 = add nuw nsw i32 %1175, 1
  %1181 = add nsw i64 %1174, 1
  %1182 = icmp eq i32 %1180, %1167
  br i1 %1182, label %1183, label %1173, !llvm.loop !84

1183:                                             ; preds = %1173
  %1184 = trunc i64 %1181 to i32
  br label %1185

1185:                                             ; preds = %1183, %1162
  %1186 = phi i32 [ %1164, %1162 ], [ %1184, %1183 ]
  %1187 = add nuw nsw i64 %1163, 1
  %1188 = icmp eq i64 %1187, 4
  br i1 %1188, label %1189, label %1162, !llvm.loop !85

1189:                                             ; preds = %1185, %1158
  %1190 = getelementptr inbounds [2 x ptr], ptr @codedDataPH, i64 0, i64 %1119
  tail call fastcc void @Huffmancodebits(ptr noundef nonnull %1190, ptr noundef %1122, ptr noundef nonnull %1121)
  %1191 = add nuw nsw i64 %1119, 1
  %1192 = load i32, ptr %211, align 4, !tbaa !34
  %1193 = sext i32 %1192 to i64
  %1194 = icmp slt i64 %1191, %1193
  br i1 %1194, label %1118, label %1195, !llvm.loop !86

1195:                                             ; preds = %1189, %1115, %996
  %1196 = getelementptr inbounds %struct.III_side_info_t, ptr %3, i64 0, i32 2
  %1197 = load i32, ptr %1196, align 8, !tbaa !87
  %1198 = sdiv i32 %1197, 32
  %1199 = srem i32 %1197, 32
  %1200 = load ptr, ptr @userFrameDataPH, align 8, !tbaa !5
  %1201 = getelementptr inbounds %struct.BF_PartHolder, ptr %1200, i64 0, i32 1
  %1202 = load ptr, ptr %1201, align 8, !tbaa !15
  store i32 0, ptr %1202, align 8, !tbaa !17
  %1203 = icmp sgt i32 %1197, 31
  br i1 %1203, label %1204, label %1210

1204:                                             ; preds = %1195, %1204
  %1205 = phi i32 [ %1208, %1204 ], [ 0, %1195 ]
  %1206 = load ptr, ptr @userFrameDataPH, align 8, !tbaa !5
  %1207 = tail call ptr @BF_addEntry(ptr noundef %1206, i32 noundef 0, i32 noundef 32) #9
  store ptr %1207, ptr @userFrameDataPH, align 8, !tbaa !5
  %1208 = add nuw nsw i32 %1205, 1
  %1209 = icmp eq i32 %1208, %1198
  br i1 %1209, label %1210, label %1204, !llvm.loop !88

1210:                                             ; preds = %1204, %1195
  %1211 = icmp eq i32 %1199, 0
  br i1 %1211, label %1215, label %1212

1212:                                             ; preds = %1210
  %1213 = load ptr, ptr @userFrameDataPH, align 8, !tbaa !5
  %1214 = tail call ptr @BF_addEntry(ptr noundef %1213, i32 noundef 0, i32 noundef %1199) #9
  store ptr %1214, ptr @userFrameDataPH, align 8, !tbaa !5
  br label %1215

1215:                                             ; preds = %1210, %1212
  %1216 = load ptr, ptr @frameData, align 8, !tbaa !5
  store i32 %1, ptr %1216, align 8, !tbaa !89
  %1217 = load i32, ptr %217, align 8, !tbaa !35
  %1218 = getelementptr inbounds %struct.BF_FrameData, ptr %1216, i64 0, i32 1
  store i32 %1217, ptr %1218, align 4, !tbaa !91
  %1219 = load i32, ptr %211, align 4, !tbaa !34
  %1220 = getelementptr inbounds %struct.BF_FrameData, ptr %1216, i64 0, i32 2
  store i32 %1219, ptr %1220, align 8, !tbaa !92
  %1221 = load ptr, ptr @headerPH, align 8, !tbaa !5
  %1222 = getelementptr inbounds %struct.BF_PartHolder, ptr %1221, i64 0, i32 1
  %1223 = load ptr, ptr %1222, align 8, !tbaa !15
  %1224 = getelementptr inbounds %struct.BF_FrameData, ptr %1216, i64 0, i32 3
  store ptr %1223, ptr %1224, align 8, !tbaa !93
  %1225 = load ptr, ptr @frameSIPH, align 8, !tbaa !5
  %1226 = getelementptr inbounds %struct.BF_PartHolder, ptr %1225, i64 0, i32 1
  %1227 = load ptr, ptr %1226, align 8, !tbaa !15
  %1228 = getelementptr inbounds %struct.BF_FrameData, ptr %1216, i64 0, i32 4
  store ptr %1227, ptr %1228, align 8, !tbaa !94
  %1229 = icmp sgt i32 %1219, 0
  br i1 %1229, label %1230, label %1232

1230:                                             ; preds = %1215
  %1231 = zext nneg i32 %1219 to i64
  br label %1238

1232:                                             ; preds = %1238, %1215
  %1233 = icmp sgt i32 %1217, 0
  br i1 %1233, label %1234, label %1281

1234:                                             ; preds = %1232
  %1235 = icmp sgt i32 %1219, 0
  %1236 = zext nneg i32 %1217 to i64
  %1237 = zext nneg i32 %1219 to i64
  br label %1248

1238:                                             ; preds = %1230, %1238
  %1239 = phi i64 [ 0, %1230 ], [ %1246, %1238 ]
  %1240 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %1239
  %1241 = load ptr, ptr %1240, align 8, !tbaa !5
  %1242 = getelementptr inbounds %struct.BF_PartHolder, ptr %1241, i64 0, i32 1
  %1243 = load ptr, ptr %1242, align 8, !tbaa !15
  %1244 = load ptr, ptr @frameData, align 8, !tbaa !5
  %1245 = getelementptr inbounds %struct.BF_FrameData, ptr %1244, i64 0, i32 5, i64 %1239
  store ptr %1243, ptr %1245, align 8, !tbaa !5
  %1246 = add nuw nsw i64 %1239, 1
  %1247 = icmp eq i64 %1246, %1231
  br i1 %1247, label %1232, label %1238, !llvm.loop !95

1248:                                             ; preds = %1234, %1278
  %1249 = phi i64 [ 0, %1234 ], [ %1279, %1278 ]
  br i1 %1235, label %1250, label %1278

1250:                                             ; preds = %1248, %1250
  %1251 = phi i64 [ %1276, %1250 ], [ 0, %1248 ]
  %1252 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %1249, i64 %1251
  %1253 = load ptr, ptr %1252, align 8, !tbaa !5
  %1254 = getelementptr inbounds %struct.BF_PartHolder, ptr %1253, i64 0, i32 1
  %1255 = load ptr, ptr %1254, align 8, !tbaa !15
  %1256 = load ptr, ptr @frameData, align 8, !tbaa !5
  %1257 = getelementptr inbounds %struct.BF_FrameData, ptr %1256, i64 0, i32 6, i64 %1249, i64 %1251
  store ptr %1255, ptr %1257, align 8, !tbaa !5
  %1258 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %1249, i64 %1251
  %1259 = load ptr, ptr %1258, align 8, !tbaa !5
  %1260 = getelementptr inbounds %struct.BF_PartHolder, ptr %1259, i64 0, i32 1
  %1261 = load ptr, ptr %1260, align 8, !tbaa !15
  %1262 = load ptr, ptr @frameData, align 8, !tbaa !5
  %1263 = getelementptr inbounds %struct.BF_FrameData, ptr %1262, i64 0, i32 7, i64 %1249, i64 %1251
  store ptr %1261, ptr %1263, align 8, !tbaa !5
  %1264 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %1249, i64 %1251
  %1265 = load ptr, ptr %1264, align 8, !tbaa !5
  %1266 = getelementptr inbounds %struct.BF_PartHolder, ptr %1265, i64 0, i32 1
  %1267 = load ptr, ptr %1266, align 8, !tbaa !15
  %1268 = load ptr, ptr @frameData, align 8, !tbaa !5
  %1269 = getelementptr inbounds %struct.BF_FrameData, ptr %1268, i64 0, i32 8, i64 %1249, i64 %1251
  store ptr %1267, ptr %1269, align 8, !tbaa !5
  %1270 = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %1249, i64 %1251
  %1271 = load ptr, ptr %1270, align 8, !tbaa !5
  %1272 = getelementptr inbounds %struct.BF_PartHolder, ptr %1271, i64 0, i32 1
  %1273 = load ptr, ptr %1272, align 8, !tbaa !15
  %1274 = load ptr, ptr @frameData, align 8, !tbaa !5
  %1275 = getelementptr inbounds %struct.BF_FrameData, ptr %1274, i64 0, i32 9, i64 %1249, i64 %1251
  store ptr %1273, ptr %1275, align 8, !tbaa !5
  %1276 = add nuw nsw i64 %1251, 1
  %1277 = icmp eq i64 %1276, %1237
  br i1 %1277, label %1278, label %1250, !llvm.loop !96

1278:                                             ; preds = %1250, %1248
  %1279 = add nuw nsw i64 %1249, 1
  %1280 = icmp eq i64 %1279, %1236
  br i1 %1280, label %1281, label %1248, !llvm.loop !97

1281:                                             ; preds = %1278, %1232
  %1282 = load ptr, ptr @userFrameDataPH, align 8, !tbaa !5
  %1283 = getelementptr inbounds %struct.BF_PartHolder, ptr %1282, i64 0, i32 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !15
  %1285 = load ptr, ptr @frameData, align 8, !tbaa !5
  %1286 = getelementptr inbounds %struct.BF_FrameData, ptr %1285, i64 0, i32 10
  store ptr %1284, ptr %1286, align 8, !tbaa !98
  %1287 = load ptr, ptr @frameResults, align 8, !tbaa !5
  tail call void @BF_BitstreamFrame(ptr noundef %1285, ptr noundef %1287) #9
  %1288 = load ptr, ptr @frameResults, align 8, !tbaa !5
  %1289 = getelementptr inbounds %struct.BF_FrameResults, ptr %1288, i64 0, i32 2
  %1290 = load i32, ptr %1289, align 4, !tbaa !99
  store i32 %1290, ptr %3, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BF_newPartHolder(i32 noundef) local_unnamed_addr #1

declare void @BF_BitstreamFrame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @III_FlushBitstream() local_unnamed_addr #0 {
  %1 = load i32, ptr @PartHoldersInitialized, align 4, !tbaa !9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @frameData, align 8, !tbaa !5
  %5 = load ptr, ptr @frameResults, align 8, !tbaa !5
  tail call void @BF_FlushBitstream(ptr noundef %4, ptr noundef %5) #9
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

declare void @BF_FlushBitstream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @abs_and_sign(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 4, !tbaa !9
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = sub nsw i32 0, %2
  store i32 %5, ptr %0, align 4, !tbaa !9
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @L3_huffman_coder_count1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %8 = icmp slt i32 %3, 1
  %9 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %10 = zext i1 %8 to i32
  %11 = icmp slt i32 %4, 1
  %12 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %13 = zext i1 %11 to i32
  %14 = icmp slt i32 %5, 1
  %15 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %16 = zext i1 %14 to i32
  %17 = shl i32 %7, 3
  %18 = shl i32 %9, 2
  %19 = add nsw i32 %18, %17
  %20 = shl nuw i32 %12, 1
  %21 = add nsw i32 %19, %20
  %22 = add nsw i32 %21, %15
  %23 = getelementptr inbounds %struct.huffcodetab, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i64, ptr %24, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !103
  %28 = getelementptr inbounds %struct.huffcodetab, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = getelementptr inbounds i8, ptr %29, i64 %25
  %31 = load i8, ptr %30, align 1, !tbaa !105
  %32 = zext i8 %31 to i32
  %33 = load ptr, ptr %0, align 8, !tbaa !5
  %34 = trunc i64 %27 to i32
  %35 = tail call ptr @BF_addEntry(ptr noundef %33, i32 noundef %34, i32 noundef %32) #9
  store ptr %35, ptr %0, align 8, !tbaa !5
  %36 = icmp ne i32 %2, 0
  %37 = lshr i32 %2, 31
  %38 = zext i1 %36 to i32
  %39 = icmp eq i32 %3, 0
  %40 = shl nuw nsw i32 %37, 1
  %41 = or disjoint i32 %40, %10
  %42 = select i1 %36, i32 2, i32 1
  %43 = select i1 %39, i32 %37, i32 %41
  %44 = select i1 %39, i32 %38, i32 %42
  %45 = icmp ne i32 %4, 0
  %46 = shl nuw nsw i32 %43, 1
  %47 = or disjoint i32 %46, %13
  %48 = select i1 %45, i32 %47, i32 %43
  %49 = zext i1 %45 to i32
  %50 = add nuw nsw i32 %44, %49
  %51 = icmp ne i32 %5, 0
  %52 = shl nuw nsw i32 %48, 1
  %53 = or disjoint i32 %52, %16
  %54 = select i1 %51, i32 %53, i32 %48
  %55 = zext i1 %51 to i32
  %56 = add nuw nsw i32 %50, %55
  %57 = tail call ptr @BF_addEntry(ptr noundef %35, i32 noundef %54, i32 noundef %56) #9
  store ptr %57, ptr %0, align 8, !tbaa !5
  %58 = add nuw nsw i32 %56, %32
  ret i32 %58
}

declare ptr @BF_addEntry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @HuffmanCode(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #5 {
  store i32 0, ptr %5, align 4, !tbaa !9
  store i32 0, ptr %6, align 4, !tbaa !9
  store i32 0, ptr %3, align 4, !tbaa !9
  store i32 0, ptr %4, align 4, !tbaa !9
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %100, label %9

9:                                                ; preds = %7
  %10 = icmp slt i32 %1, 1
  %11 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %12 = zext i1 %10 to i32
  %13 = icmp slt i32 %2, 1
  %14 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %15 = zext i1 %13 to i32
  %16 = sext i32 %0 to i64
  %17 = icmp sgt i32 %0, 15
  br i1 %17, label %18, label %63

18:                                               ; preds = %9
  %19 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %16
  %20 = load i32, ptr %19, align 8, !tbaa !106
  %21 = icmp ugt i32 %11, 14
  %22 = select i1 %21, i32 15, i32 %11
  %23 = icmp ugt i32 %14, 14
  %24 = add nsw i32 %14, -15
  %25 = select i1 %23, i32 15, i32 %14
  %26 = select i1 %23, i32 %24, i32 0
  %27 = shl nsw i32 %22, 4
  %28 = add nuw nsw i32 %27, %25
  %29 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %16, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds i64, ptr %30, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !103
  %34 = trunc i64 %33 to i32
  store i32 %34, ptr %3, align 4, !tbaa !9
  %35 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %16, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  %37 = getelementptr inbounds i8, ptr %36, i64 %31
  %38 = load i8, ptr %37, align 1, !tbaa !105
  %39 = zext i8 %38 to i32
  store i32 %39, ptr %5, align 4, !tbaa !9
  br i1 %21, label %40, label %46

40:                                               ; preds = %18
  %41 = add nsw i32 %11, -15
  %42 = load i32, ptr %4, align 4, !tbaa !9
  %43 = or i32 %42, %41
  store i32 %43, ptr %4, align 4, !tbaa !9
  %44 = load i32, ptr %6, align 4, !tbaa !9
  %45 = add i32 %44, %20
  store i32 %45, ptr %6, align 4, !tbaa !9
  br label %46

46:                                               ; preds = %40, %18
  %47 = icmp eq i32 %22, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %4, align 4, !tbaa !9
  %50 = shl i32 %49, 1
  %51 = or disjoint i32 %50, %12
  store i32 %51, ptr %4, align 4, !tbaa !9
  %52 = load i32, ptr %6, align 4, !tbaa !9
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %6, align 4, !tbaa !9
  br label %54

54:                                               ; preds = %48, %46
  br i1 %23, label %55, label %61

55:                                               ; preds = %54
  %56 = load i32, ptr %4, align 4, !tbaa !9
  %57 = shl i32 %56, %20
  %58 = or i32 %57, %26
  store i32 %58, ptr %4, align 4, !tbaa !9
  %59 = load i32, ptr %6, align 4, !tbaa !9
  %60 = add i32 %59, %20
  store i32 %60, ptr %6, align 4, !tbaa !9
  br label %61

61:                                               ; preds = %55, %54
  %62 = icmp eq i32 %25, 0
  br i1 %62, label %96, label %88

63:                                               ; preds = %9
  %64 = shl nsw i32 %11, 4
  %65 = add nuw nsw i32 %64, %14
  %66 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %16, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !101
  %68 = zext nneg i32 %65 to i64
  %69 = getelementptr inbounds i64, ptr %67, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !103
  %71 = trunc i64 %70 to i32
  store i32 %71, ptr %3, align 4, !tbaa !9
  %72 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %16, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !104
  %74 = getelementptr inbounds i8, ptr %73, i64 %68
  %75 = load i8, ptr %74, align 1, !tbaa !105
  %76 = zext i8 %75 to i32
  %77 = load i32, ptr %5, align 4, !tbaa !9
  %78 = add nsw i32 %77, %76
  store i32 %78, ptr %5, align 4, !tbaa !9
  %79 = icmp eq i32 %1, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %63
  %81 = load i32, ptr %3, align 4, !tbaa !9
  %82 = shl i32 %81, 1
  %83 = or disjoint i32 %82, %12
  store i32 %83, ptr %3, align 4, !tbaa !9
  %84 = load i32, ptr %5, align 4, !tbaa !9
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %5, align 4, !tbaa !9
  br label %86

86:                                               ; preds = %80, %63
  %87 = icmp eq i32 %2, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %86, %61
  %89 = phi ptr [ %4, %61 ], [ %3, %86 ]
  %90 = phi ptr [ %6, %61 ], [ %5, %86 ]
  %91 = load i32, ptr %89, align 4, !tbaa !9
  %92 = shl i32 %91, 1
  %93 = or disjoint i32 %92, %15
  store i32 %93, ptr %89, align 4, !tbaa !9
  %94 = load i32, ptr %90, align 4, !tbaa !9
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %90, align 4, !tbaa !9
  br label %96

96:                                               ; preds = %88, %86, %61
  %97 = load i32, ptr %5, align 4, !tbaa !9
  %98 = load i32, ptr %6, align 4, !tbaa !9
  %99 = add nsw i32 %98, %97
  br label %100

100:                                              ; preds = %7, %96
  %101 = phi i32 [ %99, %96 ], [ 0, %7 ]
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Huffmancodebits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %8 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = shl i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %119, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !50
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 8
  %22 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 8, i64 1
  br label %25

23:                                               ; preds = %61
  %24 = icmp eq i64 %30, 13
  br i1 %24, label %119, label %25, !llvm.loop !107

25:                                               ; preds = %20, %23
  %26 = phi i64 [ 0, %20 ], [ %30, %23 ]
  %27 = phi i32 [ 0, %20 ], [ %62, %23 ]
  %28 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !9
  %30 = add nuw nsw i64 %26, 1
  %31 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !9
  %33 = icmp slt i32 %29, 12
  %34 = select i1 %33, ptr %21, ptr %22
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %36 = icmp slt i32 %29, %32
  %37 = sext i32 %29 to i64
  %38 = sext i32 %32 to i64
  br label %39

39:                                               ; preds = %25, %61
  %40 = phi i64 [ 0, %25 ], [ %63, %61 ]
  %41 = phi i32 [ %27, %25 ], [ %62, %61 ]
  br i1 %36, label %42, label %61

42:                                               ; preds = %39, %42
  %43 = phi i64 [ %59, %42 ], [ %37, %39 ]
  %44 = phi i32 [ %58, %42 ], [ %41, %39 ]
  %45 = getelementptr inbounds [192 x [3 x i32]], ptr %1, i64 0, i64 %43, i64 %40
  %46 = load i32, ptr %45, align 4, !tbaa !9
  %47 = add nsw i64 %43, 1
  %48 = getelementptr inbounds [192 x [3 x i32]], ptr %1, i64 0, i64 %47, i64 %40
  %49 = load i32, ptr %48, align 4, !tbaa !9
  %50 = call i32 @HuffmanCode(i32 noundef %35, i32 noundef %46, i32 noundef %49, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %51 = load ptr, ptr %0, align 8, !tbaa !5
  %52 = load i32, ptr %6, align 4, !tbaa !9
  %53 = load i32, ptr %4, align 4, !tbaa !9
  %54 = tail call ptr @BF_addEntry(ptr noundef %51, i32 noundef %52, i32 noundef %53) #9
  store ptr %54, ptr %0, align 8, !tbaa !5
  %55 = load i32, ptr %7, align 4, !tbaa !9
  %56 = load i32, ptr %5, align 4, !tbaa !9
  %57 = tail call ptr @BF_addEntry(ptr noundef %54, i32 noundef %55, i32 noundef %56) #9
  store ptr %57, ptr %0, align 8, !tbaa !5
  %58 = add nsw i32 %50, %44
  %59 = add nsw i64 %43, 2
  %60 = icmp slt i64 %59, %38
  br i1 %60, label %42, label %61, !llvm.loop !108

61:                                               ; preds = %42, %39
  %62 = phi i32 [ %41, %39 ], [ %58, %42 ]
  %63 = add nuw nsw i64 %40, 1
  %64 = icmp eq i64 %63, 3
  br i1 %64, label %23, label %39, !llvm.loop !109

65:                                               ; preds = %16
  br i1 %15, label %66, label %82

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 10
  %68 = load i32, ptr %67, align 8, !tbaa !55
  %69 = add i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !9
  %73 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 11
  %74 = load i32, ptr %73, align 4, !tbaa !56
  %75 = add i32 %68, 2
  %76 = add i32 %75, %74
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !9
  %80 = sext i32 %79 to i64
  %81 = sext i32 %72 to i64
  br label %82

82:                                               ; preds = %12, %65, %66
  %83 = phi i64 [ %80, %66 ], [ 576, %65 ], [ 576, %12 ]
  %84 = phi i64 [ %81, %66 ], [ 36, %65 ], [ 36, %12 ]
  %85 = icmp sgt i32 %10, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 8, i64 2
  %88 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 8, i64 1
  %89 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 8
  %90 = zext nneg i32 %10 to i64
  br label %91

91:                                               ; preds = %86, %115
  %92 = phi i64 [ 0, %86 ], [ %117, %115 ]
  %93 = phi i32 [ 0, %86 ], [ %116, %115 ]
  %94 = icmp slt i64 %92, %84
  %95 = icmp slt i64 %92, %83
  %96 = select i1 %95, ptr %88, ptr %87
  %97 = select i1 %94, ptr %89, ptr %96
  %98 = load i32, ptr %97, align 4, !tbaa !9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %91
  %101 = or disjoint i64 %92, 1
  %102 = getelementptr inbounds i32, ptr %1, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !9
  %104 = getelementptr inbounds i32, ptr %1, i64 %92
  %105 = load i32, ptr %104, align 4, !tbaa !9
  %106 = call i32 @HuffmanCode(i32 noundef %98, i32 noundef %105, i32 noundef %103, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %107 = load ptr, ptr %0, align 8, !tbaa !5
  %108 = load i32, ptr %6, align 4, !tbaa !9
  %109 = load i32, ptr %4, align 4, !tbaa !9
  %110 = tail call ptr @BF_addEntry(ptr noundef %107, i32 noundef %108, i32 noundef %109) #9
  store ptr %110, ptr %0, align 8, !tbaa !5
  %111 = load i32, ptr %7, align 4, !tbaa !9
  %112 = load i32, ptr %5, align 4, !tbaa !9
  %113 = tail call ptr @BF_addEntry(ptr noundef %110, i32 noundef %111, i32 noundef %112) #9
  store ptr %113, ptr %0, align 8, !tbaa !5
  %114 = add nsw i32 %106, %93
  br label %115

115:                                              ; preds = %100, %91
  %116 = phi i32 [ %114, %100 ], [ %93, %91 ]
  %117 = add nuw nsw i64 %92, 2
  %118 = icmp ult i64 %117, %90
  br i1 %118, label %91, label %119, !llvm.loop !110

119:                                              ; preds = %115, %23, %82, %3
  %120 = phi i32 [ 0, %3 ], [ 0, %82 ], [ %62, %23 ], [ %116, %115 ]
  %121 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 2
  %122 = load i32, ptr %121, align 8, !tbaa !111
  %123 = shl i32 %122, 2
  %124 = add i32 %123, %10
  %125 = icmp slt i32 %10, %124
  br i1 %125, label %126, label %200

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 14
  %128 = sext i32 %10 to i64
  %129 = sext i32 %124 to i64
  br label %130

130:                                              ; preds = %126, %130
  %131 = phi i64 [ %128, %126 ], [ %198, %130 ]
  %132 = phi i32 [ %120, %126 ], [ %197, %130 ]
  %133 = getelementptr inbounds i32, ptr %1, i64 %131
  %134 = load i32, ptr %133, align 4, !tbaa !9
  %135 = or disjoint i64 %131, 1
  %136 = getelementptr inbounds i32, ptr %1, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !9
  %138 = getelementptr i32, ptr %133, i64 2
  %139 = load i32, ptr %138, align 4, !tbaa !9
  %140 = getelementptr i32, ptr %133, i64 3
  %141 = load i32, ptr %140, align 4, !tbaa !9
  %142 = load i32, ptr %127, align 8, !tbaa !59
  %143 = add i32 %142, 32
  %144 = zext i32 %143 to i64
  %145 = tail call i32 @llvm.abs.i32(i32 %134, i1 true)
  %146 = icmp slt i32 %137, 1
  %147 = tail call i32 @llvm.abs.i32(i32 %137, i1 true)
  %148 = zext i1 %146 to i32
  %149 = icmp slt i32 %139, 1
  %150 = tail call i32 @llvm.abs.i32(i32 %139, i1 true)
  %151 = zext i1 %149 to i32
  %152 = icmp slt i32 %141, 1
  %153 = tail call i32 @llvm.abs.i32(i32 %141, i1 true)
  %154 = zext i1 %152 to i32
  %155 = shl i32 %145, 3
  %156 = shl i32 %147, 2
  %157 = add nsw i32 %156, %155
  %158 = shl nuw i32 %150, 1
  %159 = add nsw i32 %157, %158
  %160 = add nsw i32 %159, %153
  %161 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %144, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !101
  %163 = zext i32 %160 to i64
  %164 = getelementptr inbounds i64, ptr %162, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !103
  %166 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %144, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !104
  %168 = getelementptr inbounds i8, ptr %167, i64 %163
  %169 = load i8, ptr %168, align 1, !tbaa !105
  %170 = zext i8 %169 to i32
  %171 = load ptr, ptr %0, align 8, !tbaa !5
  %172 = trunc i64 %165 to i32
  %173 = tail call ptr @BF_addEntry(ptr noundef %171, i32 noundef %172, i32 noundef %170) #9
  store ptr %173, ptr %0, align 8, !tbaa !5
  %174 = icmp ne i32 %134, 0
  %175 = lshr i32 %134, 31
  %176 = zext i1 %174 to i32
  %177 = icmp eq i32 %137, 0
  %178 = shl nuw nsw i32 %175, 1
  %179 = or disjoint i32 %178, %148
  %180 = select i1 %174, i32 2, i32 1
  %181 = select i1 %177, i32 %175, i32 %179
  %182 = select i1 %177, i32 %176, i32 %180
  %183 = icmp ne i32 %139, 0
  %184 = shl nuw nsw i32 %181, 1
  %185 = or disjoint i32 %184, %151
  %186 = select i1 %183, i32 %185, i32 %181
  %187 = zext i1 %183 to i32
  %188 = add nuw nsw i32 %182, %187
  %189 = icmp ne i32 %141, 0
  %190 = shl nuw nsw i32 %186, 1
  %191 = or disjoint i32 %190, %154
  %192 = select i1 %189, i32 %191, i32 %186
  %193 = zext i1 %189 to i32
  %194 = add nuw nsw i32 %188, %193
  %195 = tail call ptr @BF_addEntry(ptr noundef %173, i32 noundef %192, i32 noundef %194) #9
  store ptr %195, ptr %0, align 8, !tbaa !5
  %196 = add i32 %194, %132
  %197 = add i32 %196, %170
  %198 = add nsw i64 %131, 4
  %199 = icmp slt i64 %198, %129
  br i1 %199, label %130, label %200, !llvm.loop !112

200:                                              ; preds = %130, %119
  %201 = phi i32 [ %120, %119 ], [ %197, %130 ]
  %202 = load i32, ptr %2, align 8, !tbaa !44
  %203 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 15
  %204 = load i32, ptr %203, align 4, !tbaa !113
  %205 = add i32 %204, %201
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %228, label %207

207:                                              ; preds = %200
  %208 = sub i32 %202, %205
  %209 = srem i32 %208, 32
  %210 = sdiv i32 %208, 32
  %211 = load ptr, ptr @stderr, align 8, !tbaa !5
  %212 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef nonnull @.str, i32 noundef %208) #11
  %213 = load ptr, ptr @stderr, align 8, !tbaa !5
  %214 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr %213) #11
  %215 = add i32 %208, 31
  %216 = icmp ult i32 %215, 63
  br i1 %216, label %223, label %217

217:                                              ; preds = %207, %217
  %218 = phi i32 [ %219, %217 ], [ %210, %207 ]
  %219 = add nsw i32 %218, -1
  %220 = load ptr, ptr %0, align 8, !tbaa !5
  %221 = tail call ptr @BF_addEntry(ptr noundef %220, i32 noundef -1, i32 noundef 32) #9
  store ptr %221, ptr %0, align 8, !tbaa !5
  %222 = icmp eq i32 %219, 0
  br i1 %222, label %223, label %217, !llvm.loop !114

223:                                              ; preds = %217, %207
  %224 = icmp eq i32 %209, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %223
  %226 = load ptr, ptr %0, align 8, !tbaa !5
  %227 = tail call ptr @BF_addEntry(ptr noundef %226, i32 noundef -1, i32 noundef %209) #9
  store ptr %227, ptr %0, align 8, !tbaa !5
  br label %228

228:                                              ; preds = %223, %225, %200
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!16, !6, i64 8}
!16 = !{!"BF_PartHolder", !10, i64 0, !6, i64 8}
!17 = !{!18, !10, i64 0}
!18 = !{!"", !10, i64 0, !6, i64 8}
!19 = !{!20, !10, i64 192}
!20 = !{!"", !21, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !6, i64 128, !6, i64 136, !10, i64 144, !10, i64 148, !22, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !21, i64 168, !21, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !22, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !22, i64 232, !22, i64 236, !22, i64 240, !22, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!21 = !{!"long", !7, i64 0}
!22 = !{!"float", !7, i64 0}
!23 = !{!20, !10, i64 60}
!24 = !{!20, !10, i64 220}
!25 = distinct !{!25, !12}
!26 = !{!20, !10, i64 224}
!27 = !{!20, !10, i64 196}
!28 = !{!20, !10, i64 68}
!29 = !{!20, !10, i64 36}
!30 = !{!20, !10, i64 228}
!31 = !{!20, !10, i64 52}
!32 = !{!20, !10, i64 56}
!33 = !{!20, !10, i64 164}
!34 = !{!20, !10, i64 204}
!35 = !{!20, !10, i64 200}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = !{!40, !10, i64 0}
!40 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 12, !7, i64 48}
!41 = !{!40, !10, i64 4}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = !{!45, !10, i64 0}
!45 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 44, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !6, i64 96, !7, i64 104}
!46 = !{!45, !10, i64 4}
!47 = !{!45, !10, i64 12}
!48 = !{!45, !10, i64 16}
!49 = !{!45, !10, i64 20}
!50 = !{!45, !10, i64 24}
!51 = !{!45, !10, i64 28}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = !{!45, !10, i64 56}
!56 = !{!45, !10, i64 60}
!57 = !{!45, !10, i64 64}
!58 = !{!45, !10, i64 68}
!59 = !{!45, !10, i64 72}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = !{!45, !6, i64 96}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = !{!40, !10, i64 8}
!88 = distinct !{!88, !12}
!89 = !{!90, !10, i64 0}
!90 = !{!"BF_FrameData", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 48, !7, i64 80, !7, i64 112, !7, i64 144, !6, i64 176}
!91 = !{!90, !10, i64 4}
!92 = !{!90, !10, i64 8}
!93 = !{!90, !6, i64 16}
!94 = !{!90, !6, i64 24}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = !{!90, !6, i64 176}
!99 = !{!100, !10, i64 8}
!100 = !{!"BF_FrameResults", !10, i64 0, !10, i64 4, !10, i64 8}
!101 = !{!102, !6, i64 8}
!102 = !{!"huffcodetab", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 16}
!103 = !{!21, !21, i64 0}
!104 = !{!102, !6, i64 16}
!105 = !{!7, !7, i64 0}
!106 = !{!102, !10, i64 0}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = !{!45, !10, i64 8}
!112 = distinct !{!112, !12}
!113 = !{!45, !10, i64 76}
!114 = distinct !{!114, !12}
