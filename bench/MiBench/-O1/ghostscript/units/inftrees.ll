; ModuleID = 'inftrees.c'
source_filename = "inftrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inflate_huft_s = type { %union.anon, %union.anon.0 }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@inflate_copyright = dso_local local_unnamed_addr global [47 x i8] c" inflate 1.0.4 Copyright 1995-1996 Mark Adler \00", align 16
@.str = private unnamed_addr constant [40 x i8] c"oversubscribed dynamic bit lengths tree\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"incomplete dynamic bit lengths tree\00", align 1
@cplens = internal global [31 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258, i32 0, i32 0], align 16
@cplext = internal global [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 192, i32 192], align 16
@.str.2 = private unnamed_addr constant [35 x i8] c"oversubscribed literal/length tree\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"incomplete literal/length tree\00", align 1
@cpdist = internal global [30 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577], align 16
@cpdext = internal global [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@fixed_built = internal unnamed_addr global i1 false, align 4
@fixed_bl = internal global i32 0, align 4
@fixed_tl = internal global ptr null, align 8
@fixed_bd = internal global i32 0, align 4
@fixed_td = internal global ptr null, align 8
@fixed_mem = internal global [530 x %struct.inflate_huft_s] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_trees_bits(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @huft_build(ptr noundef %0, i32 noundef 19, i32 noundef 19, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %1, ptr noundef %3), !range !5
  switch i32 %5, label %32 [
    i32 -3, label %29
    i32 -5, label %6
  ]

6:                                                ; preds = %4
  %7 = load ptr, ptr %2, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %15, %6
  %10 = phi ptr [ null, %6 ], [ %17, %15 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 10
  br label %21

15:                                               ; preds = %6, %15
  %16 = phi ptr [ %17, %15 ], [ null, %6 ]
  %17 = phi ptr [ %19, %15 ], [ %7, %6 ]
  %18 = getelementptr %struct.inflate_huft_s, ptr %17, i64 -1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  store ptr %16, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %9, label %15, !llvm.loop !11

21:                                               ; preds = %21, %12
  %22 = phi ptr [ %10, %12 ], [ %25, %21 ]
  %23 = getelementptr inbounds %struct.inflate_huft_s, ptr %22, i64 -1
  %24 = getelementptr %struct.inflate_huft_s, ptr %22, i64 -1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = load ptr, ptr %13, align 8, !tbaa !13
  %27 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void %26(ptr noundef %27, ptr noundef nonnull %23) #6
  %28 = icmp eq ptr %25, null
  br i1 %28, label %29, label %21, !llvm.loop !18

29:                                               ; preds = %21, %9, %4
  %30 = phi ptr [ @.str, %4 ], [ @.str.1, %9 ], [ @.str.1, %21 ]
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 6
  store ptr %30, ptr %31, align 8, !tbaa !19
  br label %32

32:                                               ; preds = %29, %4
  %33 = phi i32 [ %5, %4 ], [ -3, %29 ]
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @huft_build(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6, ptr nocapture noundef readonly %7) unnamed_addr #0 {
  %9 = alloca [16 x i32], align 16
  %10 = alloca [6 x i8], align 2
  %11 = alloca [15 x ptr], align 16
  %12 = alloca [288 x i32], align 16
  %13 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #6
  %14 = getelementptr inbounds i32, ptr %9, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  br label %15

15:                                               ; preds = %15, %8
  %16 = phi i32 [ %1, %8 ], [ %24, %15 ]
  %17 = phi ptr [ %0, %8 ], [ %18, %15 ]
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = load i32, ptr %17, align 4, !tbaa !20
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [16 x i32], ptr %9, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !20
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !20
  %24 = add i32 %16, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !21

26:                                               ; preds = %15
  %27 = load i32, ptr %9, align 16, !tbaa !20
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store ptr null, ptr %5, align 8, !tbaa !6
  store i32 0, ptr %6, align 4, !tbaa !20
  br label %364

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4, !tbaa !20
  br label %32

32:                                               ; preds = %30, %37
  %33 = phi i64 [ 1, %30 ], [ %38, %37 ]
  %34 = getelementptr inbounds [16 x i32], ptr %9, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, 16
  br i1 %39, label %42, label %32, !llvm.loop !22

40:                                               ; preds = %32
  %41 = trunc i64 %33 to i32
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i32 [ %41, %40 ], [ 16, %37 ]
  %44 = tail call i32 @llvm.umax.i32(i32 %31, i32 %43)
  br label %45

45:                                               ; preds = %42, %51
  %46 = phi i32 [ 15, %42 ], [ %52, %51 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i32], ptr %9, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = add nsw i32 %46, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %45, !llvm.loop !23

54:                                               ; preds = %45, %51
  %55 = phi i32 [ %46, %45 ], [ 0, %51 ]
  %56 = tail call i32 @llvm.umin.i32(i32 %44, i32 %55)
  store i32 %56, ptr %6, align 4, !tbaa !20
  %57 = shl nuw i32 1, %43
  %58 = icmp ult i32 %43, %55
  br i1 %58, label %59, label %71

59:                                               ; preds = %54, %67
  %60 = phi i32 [ %69, %67 ], [ %57, %54 ]
  %61 = phi i32 [ %68, %67 ], [ %43, %54 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [16 x i32], ptr %9, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !20
  %65 = sub i32 %60, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %364, label %67

67:                                               ; preds = %59
  %68 = add nuw nsw i32 %61, 1
  %69 = shl nuw i32 %65, 1
  %70 = icmp eq i32 %68, %55
  br i1 %70, label %71, label %59, !llvm.loop !24

71:                                               ; preds = %67, %54
  %72 = phi i32 [ %57, %54 ], [ %69, %67 ]
  %73 = zext i32 %55 to i64
  %74 = getelementptr inbounds [16 x i32], ptr %9, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !20
  %76 = sub i32 %72, %75
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %364, label %78

78:                                               ; preds = %71
  store i32 %72, ptr %74, align 4, !tbaa !20
  %79 = getelementptr inbounds [16 x i32], ptr %13, i64 0, i64 1
  store i32 0, ptr %79, align 4, !tbaa !20
  %80 = add i32 %55, -1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds i32, ptr %13, i64 2
  br label %86

84:                                               ; preds = %86, %78
  %85 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  br label %97

86:                                               ; preds = %82, %86
  %87 = phi i32 [ %95, %86 ], [ %80, %82 ]
  %88 = phi ptr [ %94, %86 ], [ %83, %82 ]
  %89 = phi ptr [ %91, %86 ], [ %14, %82 ]
  %90 = phi i32 [ %93, %86 ], [ 0, %82 ]
  %91 = getelementptr inbounds i32, ptr %89, i64 1
  %92 = load i32, ptr %89, align 4, !tbaa !20
  %93 = add i32 %92, %90
  %94 = getelementptr inbounds i32, ptr %88, i64 1
  store i32 %93, ptr %88, align 4, !tbaa !20
  %95 = add i32 %87, -1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %84, label %86, !llvm.loop !25

97:                                               ; preds = %84, %110
  %98 = phi i32 [ %111, %110 ], [ 0, %84 ]
  %99 = phi ptr [ %100, %110 ], [ %0, %84 ]
  %100 = getelementptr inbounds i32, ptr %99, i64 1
  %101 = load i32, ptr %99, align 4, !tbaa !20
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = zext i32 %101 to i64
  %105 = getelementptr inbounds [16 x i32], ptr %13, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !20
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !20
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds [288 x i32], ptr %12, i64 0, i64 %108
  store i32 %98, ptr %109, align 4, !tbaa !20
  br label %110

110:                                              ; preds = %97, %103
  %111 = add nuw i32 %98, 1
  %112 = icmp eq i32 %111, %85
  br i1 %112, label %113, label %97, !llvm.loop !26

113:                                              ; preds = %110
  store i32 0, ptr %13, align 16, !tbaa !20
  store ptr null, ptr %11, align 16, !tbaa !6
  %114 = icmp sgt i32 %43, %55
  br i1 %114, label %359, label %115

115:                                              ; preds = %113
  %116 = sub nsw i32 0, %56
  %117 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 8
  %118 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  %119 = trunc i32 %56 to i8
  %120 = zext i32 %1 to i64
  %121 = getelementptr inbounds i32, ptr %12, i64 %120
  %122 = zext nneg i32 %43 to i64
  %123 = add nuw nsw i32 %55, 1
  %124 = zext i32 %123 to i64
  %125 = tail call i32 @llvm.umin.i32(i32 %55, i32 %44)
  br label %126

126:                                              ; preds = %115, %348
  %127 = phi i64 [ %122, %115 ], [ %357, %348 ]
  %128 = phi i32 [ 0, %115 ], [ %356, %348 ]
  %129 = phi i32 [ %116, %115 ], [ %355, %348 ]
  %130 = phi ptr [ undef, %115 ], [ %354, %348 ]
  %131 = phi ptr [ null, %115 ], [ %353, %348 ]
  %132 = phi ptr [ %12, %115 ], [ %352, %348 ]
  %133 = phi i32 [ 0, %115 ], [ %351, %348 ]
  %134 = phi i32 [ -1, %115 ], [ %350, %348 ]
  %135 = phi ptr [ %5, %115 ], [ %349, %348 ]
  %136 = getelementptr inbounds [16 x i32], ptr %9, i64 0, i64 %127
  %137 = load i32, ptr %136, align 4, !tbaa !20
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %348, label %139

139:                                              ; preds = %126
  %140 = getelementptr inbounds i32, ptr %9, i64 %127
  %141 = trunc i64 %127 to i32
  %142 = add i32 %141, -1
  %143 = shl nuw i32 1, %142
  %144 = trunc i64 %127 to i32
  %145 = trunc i64 %127 to i32
  br label %152

146:                                              ; preds = %337
  %147 = trunc i64 %340 to i32
  br label %148

148:                                              ; preds = %146, %324
  %149 = phi i32 [ %263, %324 ], [ %147, %146 ]
  %150 = phi i32 [ %266, %324 ], [ %341, %146 ]
  %151 = icmp eq i32 %162, 0
  br i1 %151, label %348, label %152, !llvm.loop !27

152:                                              ; preds = %139, %148
  %153 = phi i32 [ %128, %139 ], [ %267, %148 ]
  %154 = phi i32 [ %129, %139 ], [ %150, %148 ]
  %155 = phi ptr [ %130, %139 ], [ %300, %148 ]
  %156 = phi ptr [ %131, %139 ], [ %264, %148 ]
  %157 = phi ptr [ %132, %139 ], [ %299, %148 ]
  %158 = phi i32 [ %133, %139 ], [ %327, %148 ]
  %159 = phi i32 [ %134, %139 ], [ %149, %148 ]
  %160 = phi i32 [ %137, %139 ], [ %162, %148 ]
  %161 = phi ptr [ %135, %139 ], [ %262, %148 ]
  %162 = add i32 %160, -1
  %163 = add nsw i32 %154, %56
  %164 = sext i32 %163 to i64
  %165 = icmp sgt i64 %127, %164
  br i1 %165, label %166, label %261

166:                                              ; preds = %152
  %167 = sub i32 %55, %163
  %168 = sext i32 %159 to i64
  br label %169

169:                                              ; preds = %166, %253
  %170 = phi i64 [ %168, %166 ], [ %177, %253 ]
  %171 = phi i32 [ %167, %166 ], [ %258, %253 ]
  %172 = phi i32 [ %163, %166 ], [ %255, %253 ]
  %173 = phi i32 [ %154, %166 ], [ %172, %253 ]
  %174 = phi ptr [ %155, %166 ], [ %254, %253 ]
  %175 = phi ptr [ %161, %166 ], [ %238, %253 ]
  %176 = call i32 @llvm.umin.i32(i32 %125, i32 %171)
  %177 = add i64 %170, 1
  %178 = sub nsw i32 %55, %172
  %179 = call i32 @llvm.umin.i32(i32 %178, i32 %56)
  %180 = sub nsw i32 %144, %172
  %181 = shl nuw i32 1, %180
  %182 = icmp ugt i32 %181, %160
  %183 = icmp ult i32 %180, %179
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %202

185:                                              ; preds = %169
  %186 = add nuw nsw i32 %180, 1
  %187 = icmp ult i32 %186, %179
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = sub i32 %181, %160
  br label %194

190:                                              ; preds = %194
  %191 = sub i32 %198, %200
  %192 = add nuw nsw i32 %195, 1
  %193 = icmp ult i32 %192, %179
  br i1 %193, label %194, label %202, !llvm.loop !28

194:                                              ; preds = %188, %190
  %195 = phi i32 [ %192, %190 ], [ %186, %188 ]
  %196 = phi ptr [ %199, %190 ], [ %140, %188 ]
  %197 = phi i32 [ %191, %190 ], [ %189, %188 ]
  %198 = shl i32 %197, 1
  %199 = getelementptr inbounds i32, ptr %196, i64 1
  %200 = load i32, ptr %199, align 4, !tbaa !20
  %201 = icmp ugt i32 %198, %200
  br i1 %201, label %190, label %202

202:                                              ; preds = %190, %194, %185, %169
  %203 = phi i32 [ %180, %169 ], [ %186, %185 ], [ %195, %194 ], [ %176, %190 ]
  %204 = shl nuw i32 1, %203
  %205 = load ptr, ptr %117, align 8, !tbaa !29
  %206 = load ptr, ptr %118, align 8, !tbaa !17
  %207 = add nuw i32 %204, 1
  %208 = call ptr %205(ptr noundef %206, i32 noundef %207, i32 noundef 16) #6
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %236

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  %212 = and i64 %177, 4294967295
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %364, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr %11, align 16, !tbaa !6
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %222, %214
  %218 = phi ptr [ null, %214 ], [ %224, %222 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %364, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  br label %228

222:                                              ; preds = %214, %222
  %223 = phi ptr [ %224, %222 ], [ null, %214 ]
  %224 = phi ptr [ %226, %222 ], [ %215, %214 ]
  %225 = getelementptr %struct.inflate_huft_s, ptr %224, i64 -1, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !10
  store ptr %223, ptr %225, align 8, !tbaa !10
  %227 = icmp eq ptr %226, null
  br i1 %227, label %217, label %222, !llvm.loop !11

228:                                              ; preds = %228, %220
  %229 = phi ptr [ %218, %220 ], [ %232, %228 ]
  %230 = getelementptr inbounds %struct.inflate_huft_s, ptr %229, i64 -1
  %231 = getelementptr %struct.inflate_huft_s, ptr %229, i64 -1, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !10
  %233 = load ptr, ptr %221, align 8, !tbaa !13
  %234 = load ptr, ptr %211, align 8, !tbaa !17
  call void %233(ptr noundef %234, ptr noundef nonnull %230) #6
  %235 = icmp eq ptr %232, null
  br i1 %235, label %364, label %228, !llvm.loop !18

236:                                              ; preds = %202
  %237 = getelementptr inbounds %struct.inflate_huft_s, ptr %208, i64 1
  store ptr %237, ptr %175, align 8, !tbaa !6
  %238 = getelementptr inbounds %struct.inflate_huft_s, ptr %208, i64 0, i32 1
  store ptr null, ptr %238, align 8, !tbaa !6
  %239 = getelementptr inbounds [15 x ptr], ptr %11, i64 0, i64 %177
  store ptr %237, ptr %239, align 8, !tbaa !6
  %240 = and i64 %177, 4294967295
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %253, label %242

242:                                              ; preds = %236
  %243 = getelementptr inbounds [16 x i32], ptr %13, i64 0, i64 %177
  store i32 %158, ptr %243, align 4, !tbaa !20
  %244 = trunc i32 %203 to i8
  %245 = lshr i32 %158, %173
  %246 = getelementptr inbounds [15 x ptr], ptr %11, i64 0, i64 %170
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = zext i32 %245 to i64
  %249 = getelementptr inbounds %struct.inflate_huft_s, ptr %247, i64 %248
  store i8 %244, ptr %249, align 8, !tbaa.struct !30
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  store i8 %119, ptr %250, align 1, !tbaa.struct !31
  %251 = getelementptr inbounds i8, ptr %249, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %251, ptr noundef nonnull align 2 dereferenceable(6) %10, i64 6, i1 false), !tbaa.struct !32
  %252 = getelementptr inbounds i8, ptr %249, i64 8
  store ptr %237, ptr %252, align 8, !tbaa.struct !33
  br label %253

253:                                              ; preds = %242, %236
  %254 = phi ptr [ %237, %242 ], [ %174, %236 ]
  %255 = add nsw i32 %172, %56
  %256 = sext i32 %255 to i64
  %257 = icmp sgt i64 %127, %256
  %258 = sub i32 %171, %56
  br i1 %257, label %169, label %259, !llvm.loop !34

259:                                              ; preds = %253
  %260 = trunc i64 %177 to i32
  br label %261

261:                                              ; preds = %259, %152
  %262 = phi ptr [ %161, %152 ], [ %238, %259 ]
  %263 = phi i32 [ %159, %152 ], [ %260, %259 ]
  %264 = phi ptr [ %156, %152 ], [ %237, %259 ]
  %265 = phi ptr [ %155, %152 ], [ %254, %259 ]
  %266 = phi i32 [ %154, %152 ], [ %172, %259 ]
  %267 = phi i32 [ %153, %152 ], [ %204, %259 ]
  %268 = sub nsw i32 %145, %266
  %269 = trunc i32 %268 to i8
  %270 = icmp ult ptr %157, %121
  br i1 %270, label %271, label %298

271:                                              ; preds = %261
  %272 = load i32, ptr %157, align 4, !tbaa !20
  %273 = icmp ult i32 %272, %2
  br i1 %273, label %274, label %283

274:                                              ; preds = %271
  %275 = icmp ult i32 %272, 256
  %276 = select i1 %275, i8 0, i8 96
  %277 = getelementptr inbounds i32, ptr %157, i64 1
  %278 = ptrtoint ptr %265 to i64
  %279 = zext nneg i32 %272 to i64
  %280 = and i64 %278, -4294967296
  %281 = or disjoint i64 %280, %279
  %282 = inttoptr i64 %281 to ptr
  br label %298

283:                                              ; preds = %271
  %284 = sub i32 %272, %2
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, ptr %4, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !20
  %288 = trunc i32 %287 to i8
  %289 = add i8 %288, 80
  %290 = getelementptr inbounds i32, ptr %157, i64 1
  %291 = getelementptr inbounds i32, ptr %3, i64 %285
  %292 = load i32, ptr %291, align 4, !tbaa !20
  %293 = ptrtoint ptr %265 to i64
  %294 = zext i32 %292 to i64
  %295 = and i64 %293, -4294967296
  %296 = or disjoint i64 %295, %294
  %297 = inttoptr i64 %296 to ptr
  br label %298

298:                                              ; preds = %261, %274, %283
  %299 = phi ptr [ %277, %274 ], [ %290, %283 ], [ %157, %261 ]
  %300 = phi ptr [ %282, %274 ], [ %297, %283 ], [ %265, %261 ]
  %301 = phi i8 [ %276, %274 ], [ %289, %283 ], [ -64, %261 ]
  %302 = shl nuw i32 1, %268
  %303 = lshr i32 %158, %266
  %304 = icmp ult i32 %303, %267
  br i1 %304, label %305, label %314

305:                                              ; preds = %298, %305
  %306 = phi i32 [ %312, %305 ], [ %303, %298 ]
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.inflate_huft_s, ptr %264, i64 %307
  store i8 %301, ptr %308, align 8, !tbaa.struct !30
  %309 = getelementptr inbounds i8, ptr %308, i64 1
  store i8 %269, ptr %309, align 1, !tbaa.struct !31
  %310 = getelementptr inbounds i8, ptr %308, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %310, ptr noundef nonnull align 2 dereferenceable(6) %10, i64 6, i1 false), !tbaa.struct !32
  %311 = getelementptr inbounds i8, ptr %308, i64 8
  store ptr %300, ptr %311, align 8, !tbaa.struct !33
  %312 = add i32 %306, %302
  %313 = icmp ult i32 %312, %267
  br i1 %313, label %305, label %314, !llvm.loop !35

314:                                              ; preds = %305, %298
  %315 = and i32 %143, %158
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %314, %317
  %318 = phi i32 [ %321, %317 ], [ %143, %314 ]
  %319 = phi i32 [ %320, %317 ], [ %158, %314 ]
  %320 = xor i32 %318, %319
  %321 = lshr i32 %318, 1
  %322 = and i32 %321, %320
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %317, !llvm.loop !36

324:                                              ; preds = %317, %314
  %325 = phi i32 [ %158, %314 ], [ %320, %317 ]
  %326 = phi i32 [ %143, %314 ], [ %321, %317 ]
  %327 = xor i32 %326, %325
  %328 = shl nsw i32 -1, %266
  %329 = xor i32 %328, -1
  %330 = and i32 %327, %329
  %331 = sext i32 %263 to i64
  %332 = getelementptr inbounds [16 x i32], ptr %13, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !20
  %334 = icmp eq i32 %330, %333
  br i1 %334, label %148, label %335

335:                                              ; preds = %324
  %336 = sext i32 %263 to i64
  br label %337

337:                                              ; preds = %335, %337
  %338 = phi i64 [ %336, %335 ], [ %340, %337 ]
  %339 = phi i32 [ %266, %335 ], [ %341, %337 ]
  %340 = add i64 %338, -1
  %341 = sub nsw i32 %339, %56
  %342 = shl nsw i32 -1, %341
  %343 = xor i32 %342, -1
  %344 = and i32 %327, %343
  %345 = getelementptr inbounds [16 x i32], ptr %13, i64 0, i64 %340
  %346 = load i32, ptr %345, align 4, !tbaa !20
  %347 = icmp eq i32 %344, %346
  br i1 %347, label %146, label %337, !llvm.loop !37

348:                                              ; preds = %148, %126
  %349 = phi ptr [ %135, %126 ], [ %262, %148 ]
  %350 = phi i32 [ %134, %126 ], [ %149, %148 ]
  %351 = phi i32 [ %133, %126 ], [ %327, %148 ]
  %352 = phi ptr [ %132, %126 ], [ %299, %148 ]
  %353 = phi ptr [ %131, %126 ], [ %264, %148 ]
  %354 = phi ptr [ %130, %126 ], [ %300, %148 ]
  %355 = phi i32 [ %129, %126 ], [ %150, %148 ]
  %356 = phi i32 [ %128, %126 ], [ %267, %148 ]
  %357 = add nuw nsw i64 %127, 1
  %358 = icmp eq i64 %357, %124
  br i1 %358, label %359, label %126, !llvm.loop !38

359:                                              ; preds = %348, %113
  %360 = icmp ne i32 %72, %75
  %361 = icmp ne i32 %55, 1
  %362 = and i1 %361, %360
  %363 = select i1 %362, i32 -5, i32 0
  br label %364

364:                                              ; preds = %59, %228, %217, %210, %71, %359, %29
  %365 = phi i32 [ 0, %29 ], [ %363, %359 ], [ -3, %71 ], [ -4, %210 ], [ -4, %217 ], [ -4, %228 ], [ -3, %59 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  ret i32 %365
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_trees_free(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %10, %2
  %5 = phi ptr [ null, %2 ], [ %12, %10 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  br label %16

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %12, %10 ], [ null, %2 ]
  %12 = phi ptr [ %14, %10 ], [ %0, %2 ]
  %13 = getelementptr %struct.inflate_huft_s, ptr %12, i64 -1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  store ptr %11, ptr %13, align 8, !tbaa !10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %4, label %10, !llvm.loop !11

16:                                               ; preds = %7, %16
  %17 = phi ptr [ %5, %7 ], [ %20, %16 ]
  %18 = getelementptr inbounds %struct.inflate_huft_s, ptr %17, i64 -1
  %19 = getelementptr %struct.inflate_huft_s, ptr %17, i64 -1, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = load ptr, ptr %8, align 8, !tbaa !13
  %22 = load ptr, ptr %9, align 8, !tbaa !17
  tail call void %21(ptr noundef %22, ptr noundef nonnull %18) #6
  %23 = icmp eq ptr %20, null
  br i1 %23, label %24, label %16, !llvm.loop !18

24:                                               ; preds = %16, %4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_trees_dynamic(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = tail call fastcc i32 @huft_build(ptr noundef %2, i32 noundef %0, i32 noundef 257, ptr noundef nonnull @cplens, ptr noundef nonnull @cplext, ptr noundef %5, ptr noundef %3, ptr noundef %7), !range !5
  switch i32 %9, label %90 [
    i32 0, label %33
    i32 -3, label %87
    i32 -5, label %10
  ]

10:                                               ; preds = %8
  %11 = load ptr, ptr %5, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %19, %10
  %14 = phi ptr [ null, %10 ], [ %21, %19 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %87, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  br label %25

19:                                               ; preds = %10, %19
  %20 = phi ptr [ %21, %19 ], [ null, %10 ]
  %21 = phi ptr [ %23, %19 ], [ %11, %10 ]
  %22 = getelementptr %struct.inflate_huft_s, ptr %21, i64 -1, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  store ptr %20, ptr %22, align 8, !tbaa !10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %13, label %19, !llvm.loop !11

25:                                               ; preds = %25, %16
  %26 = phi ptr [ %14, %16 ], [ %29, %25 ]
  %27 = getelementptr inbounds %struct.inflate_huft_s, ptr %26, i64 -1
  %28 = getelementptr %struct.inflate_huft_s, ptr %26, i64 -1, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = load ptr, ptr %17, align 8, !tbaa !13
  %31 = load ptr, ptr %18, align 8, !tbaa !17
  tail call void %30(ptr noundef %31, ptr noundef nonnull %27) #6
  %32 = icmp eq ptr %29, null
  br i1 %32, label %87, label %25, !llvm.loop !18

33:                                               ; preds = %8
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds i32, ptr %2, i64 %34
  %36 = tail call fastcc i32 @huft_build(ptr noundef %35, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @cpdist, ptr noundef nonnull @cpdext, ptr noundef %6, ptr noundef %4, ptr noundef %7), !range !5
  switch i32 %36, label %63 [
    i32 0, label %90
    i32 -3, label %60
    i32 -5, label %37
  ]

37:                                               ; preds = %33
  %38 = load ptr, ptr %6, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %46, %37
  %41 = phi ptr [ null, %37 ], [ %48, %46 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  br label %52

46:                                               ; preds = %37, %46
  %47 = phi ptr [ %48, %46 ], [ null, %37 ]
  %48 = phi ptr [ %50, %46 ], [ %38, %37 ]
  %49 = getelementptr %struct.inflate_huft_s, ptr %48, i64 -1, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  store ptr %47, ptr %49, align 8, !tbaa !10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %40, label %46, !llvm.loop !11

52:                                               ; preds = %52, %43
  %53 = phi ptr [ %41, %43 ], [ %56, %52 ]
  %54 = getelementptr inbounds %struct.inflate_huft_s, ptr %53, i64 -1
  %55 = getelementptr %struct.inflate_huft_s, ptr %53, i64 -1, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !10
  %57 = load ptr, ptr %44, align 8, !tbaa !13
  %58 = load ptr, ptr %45, align 8, !tbaa !17
  tail call void %57(ptr noundef %58, ptr noundef nonnull %54) #6
  %59 = icmp eq ptr %56, null
  br i1 %59, label %60, label %52, !llvm.loop !18

60:                                               ; preds = %52, %40, %33
  %61 = phi ptr [ @.str.2, %33 ], [ @.str.3, %40 ], [ @.str.3, %52 ]
  %62 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 6
  store ptr %61, ptr %62, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %60, %33
  %64 = phi i32 [ %36, %33 ], [ -3, %60 ]
  %65 = load ptr, ptr %5, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %73, %63
  %68 = phi ptr [ null, %63 ], [ %75, %73 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %72 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  br label %79

73:                                               ; preds = %63, %73
  %74 = phi ptr [ %75, %73 ], [ null, %63 ]
  %75 = phi ptr [ %77, %73 ], [ %65, %63 ]
  %76 = getelementptr %struct.inflate_huft_s, ptr %75, i64 -1, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !10
  store ptr %74, ptr %76, align 8, !tbaa !10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %67, label %73, !llvm.loop !11

79:                                               ; preds = %79, %70
  %80 = phi ptr [ %68, %70 ], [ %83, %79 ]
  %81 = getelementptr inbounds %struct.inflate_huft_s, ptr %80, i64 -1
  %82 = getelementptr %struct.inflate_huft_s, ptr %80, i64 -1, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !10
  %84 = load ptr, ptr %71, align 8, !tbaa !13
  %85 = load ptr, ptr %72, align 8, !tbaa !17
  tail call void %84(ptr noundef %85, ptr noundef nonnull %81) #6
  %86 = icmp eq ptr %83, null
  br i1 %86, label %90, label %79, !llvm.loop !18

87:                                               ; preds = %25, %13, %8
  %88 = phi ptr [ @.str.2, %8 ], [ @.str.3, %13 ], [ @.str.3, %25 ]
  %89 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 6
  store ptr %88, ptr %89, align 8, !tbaa !19
  br label %90

90:                                               ; preds = %79, %87, %67, %33, %8
  %91 = phi i32 [ %9, %8 ], [ %36, %33 ], [ %64, %67 ], [ -3, %87 ], [ %64, %79 ]
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_trees_fixed(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [288 x i32], align 16
  %6 = alloca %struct.z_stream_s, align 8
  %7 = alloca i32, align 4
  %8 = load i1, ptr @fixed_built, align 4
  br i1 %8, label %42, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 530, ptr %7, align 4, !tbaa !20
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  store ptr @falloc, ptr %10, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 9
  store ptr null, ptr %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 10
  store ptr %7, ptr %12, align 8, !tbaa !17
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %16, %13 ]
  %15 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %14
  store i32 8, ptr %15, align 4, !tbaa !20
  %16 = add nuw nsw i64 %14, 1
  %17 = icmp eq i64 %16, 144
  br i1 %17, label %18, label %13, !llvm.loop !39

18:                                               ; preds = %13, %18
  %19 = phi i64 [ %21, %18 ], [ 144, %13 ]
  %20 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %19
  store i32 9, ptr %20, align 4, !tbaa !20
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %21, 256
  br i1 %22, label %23, label %18, !llvm.loop !40

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %26, %23 ], [ 256, %18 ]
  %25 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %24
  store i32 7, ptr %25, align 4, !tbaa !20
  %26 = add nuw nsw i64 %24, 1
  %27 = icmp eq i64 %26, 280
  br i1 %27, label %28, label %23, !llvm.loop !41

28:                                               ; preds = %23, %28
  %29 = phi i64 [ %31, %28 ], [ 280, %23 ]
  %30 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %29
  store i32 8, ptr %30, align 4, !tbaa !20
  %31 = add nuw nsw i64 %29, 1
  %32 = icmp eq i64 %31, 288
  br i1 %32, label %33, label %28, !llvm.loop !42

33:                                               ; preds = %28
  store i32 7, ptr @fixed_bl, align 4, !tbaa !20
  %34 = call fastcc i32 @huft_build(ptr noundef nonnull %5, i32 noundef 288, i32 noundef 257, ptr noundef nonnull @cplens, ptr noundef nonnull @cplext, ptr noundef nonnull @fixed_tl, ptr noundef nonnull @fixed_bl, ptr noundef nonnull %6), !range !5
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %38, %35 ]
  %37 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %36
  store i32 5, ptr %37, align 4, !tbaa !20
  %38 = add nuw nsw i64 %36, 1
  %39 = icmp eq i64 %38, 30
  br i1 %39, label %40, label %35, !llvm.loop !43

40:                                               ; preds = %35
  store i32 5, ptr @fixed_bd, align 4, !tbaa !20
  %41 = call fastcc i32 @huft_build(ptr noundef nonnull %5, i32 noundef 30, i32 noundef 0, ptr noundef nonnull @cpdist, ptr noundef nonnull @cpdext, ptr noundef nonnull @fixed_td, ptr noundef nonnull @fixed_bd, ptr noundef nonnull %6), !range !5
  store i1 true, ptr @fixed_built, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %5) #6
  br label %42

42:                                               ; preds = %40, %4
  %43 = load i32, ptr @fixed_bl, align 4, !tbaa !20
  store i32 %43, ptr %0, align 4, !tbaa !20
  %44 = load i32, ptr @fixed_bd, align 4, !tbaa !20
  store i32 %44, ptr %1, align 4, !tbaa !20
  %45 = load ptr, ptr @fixed_tl, align 8, !tbaa !6
  store ptr %45, ptr %2, align 8, !tbaa !6
  %46 = load ptr, ptr @fixed_td, align 8, !tbaa !6
  store ptr %46, ptr %3, align 8, !tbaa !6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @falloc(ptr nocapture noundef %0, i32 noundef %1, i32 %2) #2 {
  %4 = load i32, ptr %0, align 4, !tbaa !20
  %5 = sub i32 %4, %1
  store i32 %5, ptr %0, align 4, !tbaa !20
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.inflate_huft_s, ptr @fixed_mem, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 -5, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !7, i64 72}
!14 = !{!"z_stream_s", !7, i64 0, !15, i64 8, !16, i64 16, !7, i64 24, !15, i64 32, !16, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88, !16, i64 96, !16, i64 104}
!15 = !{!"int", !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!14, !7, i64 80}
!18 = distinct !{!18, !12}
!19 = !{!14, !7, i64 48}
!20 = !{!15, !15, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = !{!14, !7, i64 64}
!30 = !{i64 0, i64 1, !10, i64 1, i64 1, !10, i64 0, i64 8, !6, i64 8, i64 4, !20, i64 8, i64 8, !6}
!31 = !{i64 0, i64 1, !10, i64 0, i64 7, !6, i64 7, i64 4, !20, i64 7, i64 8, !6}
!32 = !{i64 0, i64 6, !6, i64 6, i64 4, !20, i64 6, i64 8, !6}
!33 = !{i64 0, i64 4, !20, i64 0, i64 8, !6}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
