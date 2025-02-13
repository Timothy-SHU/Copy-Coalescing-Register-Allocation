; ModuleID = 'readmin.c'
source_filename = "readmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1
@str = private unnamed_addr constant [30 x i8] c"read_min(): not enough memory\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @read_min(ptr noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = alloca [201 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %247, label %8, !prof !41

8:                                                ; preds = %1
  %9 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6) #8
  %10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %247, !prof !42

12:                                               ; preds = %8
  %13 = load i64, ptr %3, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  store i64 %13, ptr %14, align 8, !tbaa !47
  %15 = load i64, ptr %4, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 6
  store i64 %15, ptr %16, align 8, !tbaa !51
  %17 = shl nsw i64 %13, 1
  %18 = or disjoint i64 %17, 1
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  store i64 %18, ptr %19, align 8, !tbaa !52
  %20 = mul nsw i64 %13, 3
  %21 = add nsw i64 %15, %20
  %22 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  store i64 %21, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %23, align 8, !tbaa !54
  %24 = add nsw i64 %21, -1
  %25 = sdiv i64 %24, 4000
  %26 = add nsw i64 %25, 1
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %26, ptr %27, align 8, !tbaa !55
  %28 = srem i64 %21, 4000
  %29 = icmp eq i64 %28, 0
  %30 = add nsw i64 %28, -4000
  %31 = select i1 %29, i64 0, i64 %30, !prof !41
  %32 = add nsw i64 %26, %31
  %33 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %32, ptr %33, align 8
  %34 = icmp slt i64 %32, 0
  br i1 %34, label %35, label %42, !prof !56

35:                                               ; preds = %12, %35
  %36 = phi i64 [ %39, %35 ], [ 4000, %12 ]
  %37 = phi i64 [ %38, %35 ], [ %32, %12 ]
  %38 = add nsw i64 %37, %26
  %39 = add nsw i64 %36, -1
  %40 = icmp slt i64 %38, 0
  br i1 %40, label %35, label %41, !prof !57, !llvm.loop !58

41:                                               ; preds = %35
  store i64 %38, ptr %33, align 8, !tbaa !60
  store i64 %39, ptr %23, align 8, !tbaa !54
  br label %42

42:                                               ; preds = %41, %12
  %43 = icmp slt i64 %13, 15001
  br i1 %43, label %44, label %46, !prof !42

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  store i64 0, ptr %45, align 8, !tbaa !61
  br label %55

46:                                               ; preds = %42
  %47 = add nsw i64 %21, 5000000
  %48 = sitofp i64 %21 to double
  %49 = fmul double %48, 1.250000e+00
  %50 = fptosi double %49 to i64
  %51 = sitofp i64 %50 to double
  %52 = fmul double %51, 1.250000e+00
  %53 = fptosi double %52 to i64
  %54 = call i64 @llvm.smax.i64(i64 %47, i64 %53)
  br label %55

55:                                               ; preds = %46, %44
  %56 = phi i64 [ %21, %44 ], [ %54, %46 ]
  %57 = phi i64 [ 2000000, %44 ], [ 28900000, %46 ]
  %58 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  store i64 %56, ptr %58, align 8
  %59 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  store i64 %57, ptr %59, align 8
  %60 = add i64 %17, 2
  %61 = call noalias ptr @calloc(i64 noundef %60, i64 noundef 104) #10
  %62 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  store ptr %61, ptr %62, align 8, !tbaa !62
  %63 = call noalias ptr @calloc(i64 noundef %18, i64 noundef 72) #10
  %64 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  store ptr %63, ptr %64, align 8, !tbaa !63
  %65 = call noalias ptr @calloc(i64 noundef %56, i64 noundef 72) #10
  %66 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  store ptr %65, ptr %66, align 8, !tbaa !64
  %67 = call noalias ptr @calloc(i64 noundef %56, i64 noundef 72) #10
  %68 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  store ptr %67, ptr %68, align 8, !tbaa !65
  %69 = insertelement <4 x ptr> poison, ptr %67, i64 0
  %70 = insertelement <4 x ptr> %69, ptr %61, i64 1
  %71 = insertelement <4 x ptr> %70, ptr %63, i64 2
  %72 = insertelement <4 x ptr> %71, ptr %65, i64 3
  %73 = icmp eq <4 x ptr> %72, zeroinitializer
  %74 = bitcast <4 x i1> %73 to i4
  %75 = icmp eq i4 %74, 0
  br i1 %75, label %79, label %76, !prof !66

76:                                               ; preds = %55
  %77 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %78 = call i64 @getfree(ptr noundef nonnull %0) #9
  br label %247

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.node, ptr %61, i64 %18
  %81 = getelementptr inbounds %struct.node, ptr %80, i64 1
  %82 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  store ptr %81, ptr %82, align 8, !tbaa !67
  %83 = getelementptr inbounds %struct.arc, ptr %67, i64 %21
  %84 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %83, ptr %84, align 8, !tbaa !68
  %85 = getelementptr inbounds %struct.arc, ptr %63, i64 %18
  %86 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 27
  store ptr %85, ptr %86, align 8, !tbaa !69
  %87 = icmp slt i64 %13, 1
  br i1 %87, label %178, label %88, !prof !70

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %90

90:                                               ; preds = %88, %160
  %91 = phi ptr [ %67, %88 ], [ %174, %160 ]
  %92 = phi i64 [ 0, %88 ], [ %172, %160 ]
  %93 = phi i64 [ 1, %88 ], [ %175, %160 ]
  %94 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6) #8
  %95 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %247, !prof !71

97:                                               ; preds = %90
  %98 = load i64, ptr %3, align 8, !tbaa !43
  %99 = load i64, ptr %4, align 8, !tbaa !43
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %247, label %101, !prof !72

101:                                              ; preds = %97
  %102 = trunc i64 %93 to i32
  %103 = sub i32 0, %102
  %104 = getelementptr %struct.node, ptr %61, i64 %93
  %105 = getelementptr inbounds %struct.node, ptr %61, i64 %93, i32 12
  store i32 %103, ptr %105, align 8, !tbaa !73
  %106 = getelementptr inbounds %struct.node, ptr %61, i64 %93, i32 10
  store i64 -1, ptr %106, align 8, !tbaa !76
  %107 = load i64, ptr %14, align 8, !tbaa !47
  %108 = getelementptr %struct.node, ptr %104, i64 %107, i32 12
  store i32 %102, ptr %108, align 8, !tbaa !73
  %109 = getelementptr %struct.node, ptr %104, i64 %107, i32 10
  store i64 1, ptr %109, align 8, !tbaa !76
  %110 = trunc i64 %98 to i32
  %111 = getelementptr inbounds %struct.node, ptr %61, i64 %93, i32 13
  store i32 %110, ptr %111, align 4, !tbaa !77
  %112 = trunc i64 %99 to i32
  %113 = getelementptr %struct.node, ptr %104, i64 %107, i32 13
  store i32 %112, ptr %113, align 4, !tbaa !77
  %114 = trunc i64 %92 to i32
  store i32 %114, ptr %91, align 8, !tbaa !78
  %115 = load i64, ptr %19, align 8, !tbaa !52
  %116 = getelementptr inbounds %struct.node, ptr %61, i64 %115
  %117 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !81
  %118 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 3
  store ptr %104, ptr %118, align 8, !tbaa !82
  %119 = load i64, ptr %89, align 8, !tbaa !83
  %120 = add nsw i64 %119, 15
  %121 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 1
  store i64 %120, ptr %121, align 8, !tbaa !84
  %122 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 8
  store i64 %120, ptr %122, align 8, !tbaa !85
  %123 = getelementptr inbounds %struct.node, ptr %61, i64 %115, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !86
  %125 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 5
  store ptr %124, ptr %125, align 8, !tbaa !87
  store ptr %91, ptr %123, align 8, !tbaa !86
  %126 = getelementptr %struct.node, ptr %61, i64 %93, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !88
  %128 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 6
  store ptr %127, ptr %128, align 8, !tbaa !89
  store ptr %91, ptr %126, align 8, !tbaa !88
  %129 = load ptr, ptr %68, align 8, !tbaa !65
  %130 = add nuw nsw i64 %92, 1
  %131 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %130) #9
  %132 = getelementptr inbounds %struct.arc, ptr %129, i64 %131
  %133 = trunc i64 %130 to i32
  store i32 %133, ptr %132, align 8, !tbaa !78
  %134 = load i64, ptr %14, align 8, !tbaa !47
  %135 = getelementptr %struct.node, ptr %104, i64 %134
  %136 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 2
  store ptr %135, ptr %136, align 8, !tbaa !81
  %137 = load i64, ptr %19, align 8, !tbaa !52
  %138 = getelementptr inbounds %struct.node, ptr %61, i64 %137
  %139 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 3
  store ptr %138, ptr %139, align 8, !tbaa !82
  %140 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 1
  store i64 15, ptr %140, align 8, !tbaa !84
  %141 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 8
  store i64 15, ptr %141, align 8, !tbaa !85
  %142 = getelementptr %struct.node, ptr %104, i64 %134, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !86
  %144 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 5
  store ptr %143, ptr %144, align 8, !tbaa !87
  store ptr %132, ptr %142, align 8, !tbaa !86
  %145 = getelementptr inbounds %struct.node, ptr %61, i64 %137, i32 8
  %146 = load ptr, ptr %145, align 8, !tbaa !88
  %147 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 6
  store ptr %146, ptr %147, align 8, !tbaa !89
  store ptr %132, ptr %145, align 8, !tbaa !88
  %148 = load ptr, ptr %68, align 8, !tbaa !65
  %149 = add nuw nsw i64 %92, 2
  %150 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %149) #9
  %151 = getelementptr inbounds %struct.arc, ptr %148, i64 %150
  %152 = trunc i64 %149 to i32
  store i32 %152, ptr %151, align 8, !tbaa !78
  %153 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 2
  store ptr %104, ptr %153, align 8, !tbaa !81
  %154 = load i64, ptr %14, align 8, !tbaa !47
  %155 = getelementptr %struct.node, ptr %104, i64 %154
  %156 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 3
  store ptr %155, ptr %156, align 8, !tbaa !82
  %157 = load i64, ptr %89, align 8, !tbaa !83
  %158 = icmp sgt i64 %157, 10000000
  br i1 %158, label %159, label %160, !prof !72

159:                                              ; preds = %101
  br label %160

160:                                              ; preds = %101, %159
  %161 = phi i64 [ %157, %159 ], [ 10000000, %101 ]
  %162 = shl nuw nsw i64 %161, 1
  %163 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 1
  store i64 %162, ptr %163, align 8, !tbaa !84
  %164 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 8
  store i64 %162, ptr %164, align 8, !tbaa !85
  %165 = getelementptr %struct.node, ptr %61, i64 %93, i32 7
  %166 = load ptr, ptr %165, align 8, !tbaa !86
  %167 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 5
  store ptr %166, ptr %167, align 8, !tbaa !87
  store ptr %151, ptr %165, align 8, !tbaa !86
  %168 = getelementptr %struct.node, ptr %104, i64 %154, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !88
  %170 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 6
  store ptr %169, ptr %170, align 8, !tbaa !89
  store ptr %151, ptr %168, align 8, !tbaa !88
  %171 = load ptr, ptr %68, align 8, !tbaa !65
  %172 = add nuw nsw i64 %92, 3
  %173 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %172) #9
  %174 = getelementptr inbounds %struct.arc, ptr %171, i64 %173
  %175 = add nuw nsw i64 %93, 1
  %176 = load i64, ptr %14, align 8, !tbaa !47
  %177 = icmp slt i64 %93, %176
  br i1 %177, label %90, label %178, !prof !90, !llvm.loop !91

178:                                              ; preds = %160, %79
  %179 = phi i64 [ 1, %79 ], [ %175, %160 ]
  %180 = phi i64 [ 0, %79 ], [ %172, %160 ]
  %181 = phi ptr [ %67, %79 ], [ %174, %160 ]
  %182 = phi i64 [ %13, %79 ], [ %176, %160 ]
  %183 = add nsw i64 %182, 1
  %184 = icmp eq i64 %179, %183
  br i1 %184, label %185, label %247, !prof !42

185:                                              ; preds = %178
  %186 = load i64, ptr %16, align 8, !tbaa !51
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %221, !prof !56

188:                                              ; preds = %185, %195
  %189 = phi ptr [ %218, %195 ], [ %181, %185 ]
  %190 = phi i64 [ %216, %195 ], [ %180, %185 ]
  %191 = phi i64 [ %214, %195 ], [ 0, %185 ]
  %192 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6) #8
  %193 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %194 = icmp eq i32 %193, 3
  br i1 %194, label %195, label %247, !prof !92

195:                                              ; preds = %188
  %196 = trunc i64 %190 to i32
  store i32 %196, ptr %189, align 8, !tbaa !78
  %197 = load i64, ptr %3, align 8, !tbaa !43
  %198 = load i64, ptr %14, align 8, !tbaa !47
  %199 = getelementptr %struct.node, ptr %61, i64 %197
  %200 = getelementptr %struct.node, ptr %199, i64 %198
  %201 = getelementptr inbounds %struct.arc, ptr %189, i64 0, i32 2
  store ptr %200, ptr %201, align 8, !tbaa !81
  %202 = load i64, ptr %4, align 8, !tbaa !43
  %203 = getelementptr inbounds %struct.node, ptr %61, i64 %202
  %204 = getelementptr inbounds %struct.arc, ptr %189, i64 0, i32 3
  store ptr %203, ptr %204, align 8, !tbaa !82
  %205 = load i64, ptr %5, align 8, !tbaa !43
  %206 = getelementptr inbounds %struct.arc, ptr %189, i64 0, i32 8
  store i64 %205, ptr %206, align 8, !tbaa !85
  %207 = getelementptr inbounds %struct.arc, ptr %189, i64 0, i32 1
  store i64 %205, ptr %207, align 8, !tbaa !84
  %208 = getelementptr %struct.node, ptr %199, i64 %198, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !86
  %210 = getelementptr inbounds %struct.arc, ptr %189, i64 0, i32 5
  store ptr %209, ptr %210, align 8, !tbaa !87
  store ptr %189, ptr %208, align 8, !tbaa !86
  %211 = getelementptr inbounds %struct.node, ptr %61, i64 %202, i32 8
  %212 = load ptr, ptr %211, align 8, !tbaa !88
  %213 = getelementptr inbounds %struct.arc, ptr %189, i64 0, i32 6
  store ptr %212, ptr %213, align 8, !tbaa !89
  store ptr %189, ptr %211, align 8, !tbaa !88
  %214 = add nuw nsw i64 %191, 1
  %215 = load ptr, ptr %68, align 8, !tbaa !65
  %216 = add nuw nsw i64 %190, 1
  %217 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %216) #9
  %218 = getelementptr inbounds %struct.arc, ptr %215, i64 %217
  %219 = load i64, ptr %16, align 8, !tbaa !51
  %220 = icmp slt i64 %214, %219
  br i1 %220, label %188, label %221, !prof !93, !llvm.loop !94

221:                                              ; preds = %195, %185
  %222 = call i32 @fclose(ptr noundef nonnull %6) #8
  %223 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 1
  store i8 0, ptr %223, align 8, !tbaa !95
  %224 = load i64, ptr %14, align 8, !tbaa !47
  %225 = icmp slt i64 %224, 1
  br i1 %225, label %247, label %226, !prof !70

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %228

228:                                              ; preds = %226, %238
  %229 = phi i64 [ 1, %226 ], [ %244, %238 ]
  %230 = load ptr, ptr %68, align 8, !tbaa !65
  %231 = mul nuw nsw i64 %229, 3
  %232 = add nsw i64 %231, -1
  %233 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %232) #9
  %234 = load i64, ptr %227, align 8, !tbaa !83
  %235 = icmp sgt i64 %234, 10000000
  br i1 %235, label %236, label %238, !prof !72

236:                                              ; preds = %228
  %237 = mul nsw i64 %234, -2
  br label %238

238:                                              ; preds = %228, %236
  %239 = phi i64 [ %237, %236 ], [ -20000000, %228 ]
  %240 = phi i64 [ %234, %236 ], [ 10000000, %228 ]
  %241 = getelementptr inbounds %struct.arc, ptr %230, i64 %233, i32 1
  store i64 %239, ptr %241, align 8
  %242 = mul nsw i64 %240, -2
  %243 = getelementptr inbounds %struct.arc, ptr %230, i64 %233, i32 8
  store i64 %242, ptr %243, align 8, !tbaa !85
  %244 = add nuw nsw i64 %229, 1
  %245 = load i64, ptr %14, align 8, !tbaa !47
  %246 = icmp slt i64 %229, %245
  br i1 %246, label %228, label %247, !prof !90, !llvm.loop !96

247:                                              ; preds = %90, %97, %188, %238, %221, %178, %8, %1, %76
  %248 = phi i64 [ -1, %76 ], [ -1, %1 ], [ -1, %8 ], [ -1, %178 ], [ 0, %221 ], [ 0, %238 ], [ -1, %188 ], [ -1, %97 ], [ -1, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %2) #7
  ret i64 %248
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @getfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @getArcPosition(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 85502453929}
!4 = !{!"MaxCount", i64 17199625996}
!5 = !{!"MaxInternalCount", i64 7388838583}
!6 = !{!"MaxFunctionCount", i64 17199625996}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 17199625996, i32 1}
!14 = !{i32 100000, i64 17199625996, i32 1}
!15 = !{i32 200000, i64 17199625996, i32 1}
!16 = !{i32 300000, i64 8939527315, i32 2}
!17 = !{i32 400000, i64 6848194679, i32 4}
!18 = !{i32 500000, i64 5961032710, i32 5}
!19 = !{i32 600000, i64 5547644419, i32 6}
!20 = !{i32 700000, i64 3854402676, i32 9}
!21 = !{i32 800000, i64 3712252500, i32 11}
!22 = !{i32 900000, i64 1613262769, i32 14}
!23 = !{i32 950000, i64 336885004, i32 20}
!24 = !{i32 990000, i64 90533666, i32 46}
!25 = !{i32 999000, i64 51748451, i32 55}
!26 = !{i32 999900, i64 733625, i32 81}
!27 = !{i32 999990, i64 246962, i32 97}
!28 = !{i32 999999, i64 38371, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @read_min, ptr @fopen, i64 1}
!36 = !{ptr @read_min, ptr @fgets, i64 1474}
!37 = !{ptr @read_min, ptr @__isoc99_sscanf, i64 1474}
!38 = !{ptr @read_min, ptr @getArcPosition, i64 2276}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!"branch_weights", i32 1, i32 2}
!42 = !{!"branch_weights", i32 2, i32 1}
!43 = !{!44, !44, i64 0}
!44 = !{!"long", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !44, i64 408}
!48 = !{!"network", !45, i64 0, !45, i64 200, !44, i64 400, !44, i64 408, !44, i64 416, !44, i64 424, !44, i64 432, !44, i64 440, !44, i64 448, !44, i64 456, !44, i64 464, !44, i64 472, !44, i64 480, !44, i64 488, !44, i64 496, !44, i64 504, !44, i64 512, !44, i64 520, !44, i64 528, !49, i64 536, !44, i64 544, !50, i64 552, !50, i64 560, !50, i64 568, !50, i64 576, !50, i64 584, !50, i64 592, !50, i64 600, !44, i64 608, !44, i64 616, !44, i64 624, !44, i64 632, !44, i64 640}
!49 = !{!"double", !45, i64 0}
!50 = !{!"any pointer", !45, i64 0}
!51 = !{!48, !44, i64 432}
!52 = !{!48, !44, i64 400}
!53 = !{!48, !44, i64 424}
!54 = !{!48, !44, i64 640}
!55 = !{!48, !44, i64 624}
!56 = !{!"branch_weights", i32 127, i32 1}
!57 = !{!"branch_weights", i32 2689, i32 127}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!48, !44, i64 632}
!61 = !{!48, !44, i64 448}
!62 = !{!48, !50, i64 552}
!63 = !{!48, !50, i64 592}
!64 = !{!48, !50, i64 584}
!65 = !{!48, !50, i64 568}
!66 = !{!"branch_weights", i32 16, i32 65}
!67 = !{!48, !50, i64 560}
!68 = !{!48, !50, i64 576}
!69 = !{!48, !50, i64 600}
!70 = !{!"branch_weights", i32 1, i32 127}
!71 = !{!"branch_weights", i32 15001, i32 1}
!72 = !{!"branch_weights", i32 1, i32 15001}
!73 = !{!74, !75, i64 96}
!74 = !{!"node", !44, i64 0, !75, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !44, i64 80, !44, i64 88, !75, i64 96, !75, i64 100}
!75 = !{!"int", !45, i64 0}
!76 = !{!74, !44, i64 80}
!77 = !{!74, !75, i64 100}
!78 = !{!79, !75, i64 0}
!79 = !{!"arc", !75, i64 0, !44, i64 8, !50, i64 16, !50, i64 24, !80, i64 32, !50, i64 40, !50, i64 48, !44, i64 56, !44, i64 64}
!80 = !{!"short", !45, i64 0}
!81 = !{!79, !50, i64 16}
!82 = !{!79, !50, i64 24}
!83 = !{!48, !44, i64 528}
!84 = !{!79, !44, i64 8}
!85 = !{!79, !44, i64 64}
!86 = !{!74, !50, i64 56}
!87 = !{!79, !50, i64 40}
!88 = !{!74, !50, i64 64}
!89 = !{!79, !50, i64 48}
!90 = !{!"branch_weights", i32 959937, i32 127}
!91 = distinct !{!91, !59}
!92 = !{!"branch_weights", i32 117203, i32 1}
!93 = !{!"branch_weights", i32 7500865, i32 127}
!94 = distinct !{!94, !59}
!95 = !{!45, !45, i64 0}
!96 = distinct !{!96, !59}
