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
define dso_local noundef i64 @read_min(ptr noundef %0) local_unnamed_addr #0 {
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
  br i1 %7, label %239, label %8

8:                                                ; preds = %1
  %9 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6) #8
  %10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %239

12:                                               ; preds = %8
  %13 = load i64, ptr %3, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  store i64 %13, ptr %14, align 8, !tbaa !10
  %15 = load i64, ptr %4, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 6
  store i64 %15, ptr %16, align 8, !tbaa !14
  %17 = shl nsw i64 %13, 1
  %18 = or disjoint i64 %17, 1
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  store i64 %18, ptr %19, align 8, !tbaa !15
  %20 = mul nsw i64 %13, 3
  %21 = add nsw i64 %15, %20
  %22 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  store i64 %21, ptr %22, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %23, align 8, !tbaa !17
  %24 = add nsw i64 %21, -1
  %25 = sdiv i64 %24, 4000
  %26 = add nsw i64 %25, 1
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %26, ptr %27, align 8, !tbaa !18
  %28 = srem i64 %21, 4000
  %29 = icmp eq i64 %28, 0
  %30 = add nsw i64 %28, -4000
  %31 = select i1 %29, i64 0, i64 %30
  %32 = add nsw i64 %26, %31
  %33 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %32, ptr %33, align 8
  %34 = icmp slt i64 %32, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %12, %35
  %36 = phi i64 [ %39, %35 ], [ 4000, %12 ]
  %37 = phi i64 [ %38, %35 ], [ %32, %12 ]
  %38 = add nsw i64 %37, %26
  %39 = add nsw i64 %36, -1
  %40 = icmp slt i64 %38, 0
  br i1 %40, label %35, label %41, !llvm.loop !19

41:                                               ; preds = %35
  store i64 %38, ptr %33, align 8, !tbaa !21
  store i64 %39, ptr %23, align 8, !tbaa !17
  br label %42

42:                                               ; preds = %41, %12
  %43 = icmp slt i64 %13, 15001
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  store i64 0, ptr %45, align 8, !tbaa !22
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
  store ptr %61, ptr %62, align 8, !tbaa !23
  %63 = call noalias ptr @calloc(i64 noundef %18, i64 noundef 72) #10
  %64 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  store ptr %63, ptr %64, align 8, !tbaa !24
  %65 = call noalias ptr @calloc(i64 noundef %56, i64 noundef 72) #10
  %66 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  store ptr %65, ptr %66, align 8, !tbaa !25
  %67 = call noalias ptr @calloc(i64 noundef %56, i64 noundef 72) #10
  %68 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  store ptr %67, ptr %68, align 8, !tbaa !26
  %69 = insertelement <4 x ptr> poison, ptr %67, i64 0
  %70 = insertelement <4 x ptr> %69, ptr %61, i64 1
  %71 = insertelement <4 x ptr> %70, ptr %63, i64 2
  %72 = insertelement <4 x ptr> %71, ptr %65, i64 3
  %73 = icmp eq <4 x ptr> %72, zeroinitializer
  %74 = bitcast <4 x i1> %73 to i4
  %75 = icmp eq i4 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %55
  %77 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %78 = call i64 @getfree(ptr noundef nonnull %0) #9
  br label %239

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.node, ptr %61, i64 %18
  %81 = getelementptr inbounds %struct.node, ptr %80, i64 1
  %82 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  store ptr %81, ptr %82, align 8, !tbaa !27
  %83 = getelementptr inbounds %struct.arc, ptr %67, i64 %21
  %84 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %83, ptr %84, align 8, !tbaa !28
  %85 = getelementptr inbounds %struct.arc, ptr %63, i64 %18
  %86 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 27
  store ptr %85, ptr %86, align 8, !tbaa !29
  %87 = icmp slt i64 %13, 1
  br i1 %87, label %175, label %88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %90

90:                                               ; preds = %88, %101
  %91 = phi ptr [ %67, %88 ], [ %171, %101 ]
  %92 = phi i64 [ 0, %88 ], [ %169, %101 ]
  %93 = phi i64 [ 1, %88 ], [ %172, %101 ]
  %94 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6) #8
  %95 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %239

97:                                               ; preds = %90
  %98 = load i64, ptr %3, align 8, !tbaa !6
  %99 = load i64, ptr %4, align 8, !tbaa !6
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %239, label %101

101:                                              ; preds = %97
  %102 = trunc i64 %93 to i32
  %103 = sub i32 0, %102
  %104 = getelementptr %struct.node, ptr %61, i64 %93
  %105 = getelementptr inbounds %struct.node, ptr %61, i64 %93, i32 12
  store i32 %103, ptr %105, align 8, !tbaa !30
  %106 = getelementptr inbounds %struct.node, ptr %61, i64 %93, i32 10
  store i64 -1, ptr %106, align 8, !tbaa !33
  %107 = load i64, ptr %14, align 8, !tbaa !10
  %108 = getelementptr %struct.node, ptr %104, i64 %107, i32 12
  store i32 %102, ptr %108, align 8, !tbaa !30
  %109 = getelementptr %struct.node, ptr %104, i64 %107, i32 10
  store i64 1, ptr %109, align 8, !tbaa !33
  %110 = trunc i64 %98 to i32
  %111 = getelementptr inbounds %struct.node, ptr %61, i64 %93, i32 13
  store i32 %110, ptr %111, align 4, !tbaa !34
  %112 = trunc i64 %99 to i32
  %113 = getelementptr %struct.node, ptr %104, i64 %107, i32 13
  store i32 %112, ptr %113, align 4, !tbaa !34
  %114 = trunc i64 %92 to i32
  store i32 %114, ptr %91, align 8, !tbaa !35
  %115 = load i64, ptr %19, align 8, !tbaa !15
  %116 = getelementptr inbounds %struct.node, ptr %61, i64 %115
  %117 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !38
  %118 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 3
  store ptr %104, ptr %118, align 8, !tbaa !39
  %119 = load i64, ptr %89, align 8, !tbaa !40
  %120 = add nsw i64 %119, 15
  %121 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 1
  store i64 %120, ptr %121, align 8, !tbaa !41
  %122 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 8
  store i64 %120, ptr %122, align 8, !tbaa !42
  %123 = getelementptr inbounds %struct.node, ptr %61, i64 %115, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !43
  %125 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 5
  store ptr %124, ptr %125, align 8, !tbaa !44
  store ptr %91, ptr %123, align 8, !tbaa !43
  %126 = getelementptr %struct.node, ptr %61, i64 %93, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !45
  %128 = getelementptr inbounds %struct.arc, ptr %91, i64 0, i32 6
  store ptr %127, ptr %128, align 8, !tbaa !46
  store ptr %91, ptr %126, align 8, !tbaa !45
  %129 = load ptr, ptr %68, align 8, !tbaa !26
  %130 = add nuw nsw i64 %92, 1
  %131 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %130) #9
  %132 = getelementptr inbounds %struct.arc, ptr %129, i64 %131
  %133 = trunc i64 %130 to i32
  store i32 %133, ptr %132, align 8, !tbaa !35
  %134 = load i64, ptr %14, align 8, !tbaa !10
  %135 = getelementptr %struct.node, ptr %104, i64 %134
  %136 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 2
  store ptr %135, ptr %136, align 8, !tbaa !38
  %137 = load i64, ptr %19, align 8, !tbaa !15
  %138 = getelementptr inbounds %struct.node, ptr %61, i64 %137
  %139 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 3
  store ptr %138, ptr %139, align 8, !tbaa !39
  %140 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 1
  store i64 15, ptr %140, align 8, !tbaa !41
  %141 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 8
  store i64 15, ptr %141, align 8, !tbaa !42
  %142 = getelementptr %struct.node, ptr %104, i64 %134, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 5
  store ptr %143, ptr %144, align 8, !tbaa !44
  store ptr %132, ptr %142, align 8, !tbaa !43
  %145 = getelementptr inbounds %struct.node, ptr %61, i64 %137, i32 8
  %146 = load ptr, ptr %145, align 8, !tbaa !45
  %147 = getelementptr inbounds %struct.arc, ptr %129, i64 %131, i32 6
  store ptr %146, ptr %147, align 8, !tbaa !46
  store ptr %132, ptr %145, align 8, !tbaa !45
  %148 = load ptr, ptr %68, align 8, !tbaa !26
  %149 = add nuw nsw i64 %92, 2
  %150 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %149) #9
  %151 = getelementptr inbounds %struct.arc, ptr %148, i64 %150
  %152 = trunc i64 %149 to i32
  store i32 %152, ptr %151, align 8, !tbaa !35
  %153 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 2
  store ptr %104, ptr %153, align 8, !tbaa !38
  %154 = load i64, ptr %14, align 8, !tbaa !10
  %155 = getelementptr %struct.node, ptr %104, i64 %154
  %156 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 3
  store ptr %155, ptr %156, align 8, !tbaa !39
  %157 = load i64, ptr %89, align 8, !tbaa !40
  %158 = call i64 @llvm.smax.i64(i64 %157, i64 10000000)
  %159 = shl nuw nsw i64 %158, 1
  %160 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 1
  store i64 %159, ptr %160, align 8, !tbaa !41
  %161 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 8
  store i64 %159, ptr %161, align 8, !tbaa !42
  %162 = getelementptr %struct.node, ptr %61, i64 %93, i32 7
  %163 = load ptr, ptr %162, align 8, !tbaa !43
  %164 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 5
  store ptr %163, ptr %164, align 8, !tbaa !44
  store ptr %151, ptr %162, align 8, !tbaa !43
  %165 = getelementptr %struct.node, ptr %104, i64 %154, i32 8
  %166 = load ptr, ptr %165, align 8, !tbaa !45
  %167 = getelementptr inbounds %struct.arc, ptr %148, i64 %150, i32 6
  store ptr %166, ptr %167, align 8, !tbaa !46
  store ptr %151, ptr %165, align 8, !tbaa !45
  %168 = load ptr, ptr %68, align 8, !tbaa !26
  %169 = add nuw nsw i64 %92, 3
  %170 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %169) #9
  %171 = getelementptr inbounds %struct.arc, ptr %168, i64 %170
  %172 = add nuw nsw i64 %93, 1
  %173 = load i64, ptr %14, align 8, !tbaa !10
  %174 = icmp slt i64 %93, %173
  br i1 %174, label %90, label %175, !llvm.loop !47

175:                                              ; preds = %101, %79
  %176 = phi i64 [ 1, %79 ], [ %172, %101 ]
  %177 = phi i64 [ 0, %79 ], [ %169, %101 ]
  %178 = phi ptr [ %67, %79 ], [ %171, %101 ]
  %179 = phi i64 [ %13, %79 ], [ %173, %101 ]
  %180 = add nsw i64 %179, 1
  %181 = icmp eq i64 %176, %180
  br i1 %181, label %182, label %239

182:                                              ; preds = %175
  %183 = load i64, ptr %16, align 8, !tbaa !14
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %218

185:                                              ; preds = %182, %192
  %186 = phi ptr [ %215, %192 ], [ %178, %182 ]
  %187 = phi i64 [ %213, %192 ], [ %177, %182 ]
  %188 = phi i64 [ %211, %192 ], [ 0, %182 ]
  %189 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6) #8
  %190 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %191 = icmp eq i32 %190, 3
  br i1 %191, label %192, label %239

192:                                              ; preds = %185
  %193 = trunc i64 %187 to i32
  store i32 %193, ptr %186, align 8, !tbaa !35
  %194 = load i64, ptr %3, align 8, !tbaa !6
  %195 = load i64, ptr %14, align 8, !tbaa !10
  %196 = getelementptr %struct.node, ptr %61, i64 %194
  %197 = getelementptr %struct.node, ptr %196, i64 %195
  %198 = getelementptr inbounds %struct.arc, ptr %186, i64 0, i32 2
  store ptr %197, ptr %198, align 8, !tbaa !38
  %199 = load i64, ptr %4, align 8, !tbaa !6
  %200 = getelementptr inbounds %struct.node, ptr %61, i64 %199
  %201 = getelementptr inbounds %struct.arc, ptr %186, i64 0, i32 3
  store ptr %200, ptr %201, align 8, !tbaa !39
  %202 = load i64, ptr %5, align 8, !tbaa !6
  %203 = getelementptr inbounds %struct.arc, ptr %186, i64 0, i32 8
  store i64 %202, ptr %203, align 8, !tbaa !42
  %204 = getelementptr inbounds %struct.arc, ptr %186, i64 0, i32 1
  store i64 %202, ptr %204, align 8, !tbaa !41
  %205 = getelementptr %struct.node, ptr %196, i64 %195, i32 7
  %206 = load ptr, ptr %205, align 8, !tbaa !43
  %207 = getelementptr inbounds %struct.arc, ptr %186, i64 0, i32 5
  store ptr %206, ptr %207, align 8, !tbaa !44
  store ptr %186, ptr %205, align 8, !tbaa !43
  %208 = getelementptr inbounds %struct.node, ptr %61, i64 %199, i32 8
  %209 = load ptr, ptr %208, align 8, !tbaa !45
  %210 = getelementptr inbounds %struct.arc, ptr %186, i64 0, i32 6
  store ptr %209, ptr %210, align 8, !tbaa !46
  store ptr %186, ptr %208, align 8, !tbaa !45
  %211 = add nuw nsw i64 %188, 1
  %212 = load ptr, ptr %68, align 8, !tbaa !26
  %213 = add nuw nsw i64 %187, 1
  %214 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %213) #9
  %215 = getelementptr inbounds %struct.arc, ptr %212, i64 %214
  %216 = load i64, ptr %16, align 8, !tbaa !14
  %217 = icmp slt i64 %211, %216
  br i1 %217, label %185, label %218, !llvm.loop !48

218:                                              ; preds = %192, %182
  %219 = call i32 @fclose(ptr noundef nonnull %6) #8
  %220 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 1
  store i8 0, ptr %220, align 8, !tbaa !49
  %221 = load i64, ptr %14, align 8, !tbaa !10
  %222 = icmp slt i64 %221, 1
  br i1 %222, label %239, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %225

225:                                              ; preds = %223, %225
  %226 = phi i64 [ 1, %223 ], [ %236, %225 ]
  %227 = load ptr, ptr %68, align 8, !tbaa !26
  %228 = mul nuw nsw i64 %226, 3
  %229 = add nsw i64 %228, -1
  %230 = call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %229) #9
  %231 = load i64, ptr %224, align 8, !tbaa !40
  %232 = call i64 @llvm.smax.i64(i64 %231, i64 10000000)
  %233 = mul nsw i64 %232, -2
  %234 = getelementptr inbounds %struct.arc, ptr %227, i64 %230, i32 1
  store i64 %233, ptr %234, align 8, !tbaa !41
  %235 = getelementptr inbounds %struct.arc, ptr %227, i64 %230, i32 8
  store i64 %233, ptr %235, align 8, !tbaa !42
  %236 = add nuw nsw i64 %226, 1
  %237 = load i64, ptr %14, align 8, !tbaa !10
  %238 = icmp slt i64 %226, %237
  br i1 %238, label %225, label %239, !llvm.loop !50

239:                                              ; preds = %90, %97, %185, %225, %218, %175, %8, %1, %76
  %240 = phi i64 [ -1, %76 ], [ -1, %1 ], [ -1, %8 ], [ -1, %175 ], [ 0, %218 ], [ 0, %225 ], [ -1, %185 ], [ -1, %97 ], [ -1, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %2) #7
  ret i64 %240
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 408}
!11 = !{!"network", !8, i64 0, !8, i64 200, !7, i64 400, !7, i64 408, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488, !7, i64 496, !7, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !12, i64 536, !7, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !13, i64 584, !13, i64 592, !13, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640}
!12 = !{!"double", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!11, !7, i64 432}
!15 = !{!11, !7, i64 400}
!16 = !{!11, !7, i64 424}
!17 = !{!11, !7, i64 640}
!18 = !{!11, !7, i64 624}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!11, !7, i64 632}
!22 = !{!11, !7, i64 448}
!23 = !{!11, !13, i64 552}
!24 = !{!11, !13, i64 592}
!25 = !{!11, !13, i64 584}
!26 = !{!11, !13, i64 568}
!27 = !{!11, !13, i64 560}
!28 = !{!11, !13, i64 576}
!29 = !{!11, !13, i64 600}
!30 = !{!31, !32, i64 96}
!31 = !{!"node", !7, i64 0, !32, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !7, i64 80, !7, i64 88, !32, i64 96, !32, i64 100}
!32 = !{!"int", !8, i64 0}
!33 = !{!31, !7, i64 80}
!34 = !{!31, !32, i64 100}
!35 = !{!36, !32, i64 0}
!36 = !{!"arc", !32, i64 0, !7, i64 8, !13, i64 16, !13, i64 24, !37, i64 32, !13, i64 40, !13, i64 48, !7, i64 56, !7, i64 64}
!37 = !{!"short", !8, i64 0}
!38 = !{!36, !13, i64 16}
!39 = !{!36, !13, i64 24}
!40 = !{!11, !7, i64 528}
!41 = !{!36, !7, i64 8}
!42 = !{!36, !7, i64 64}
!43 = !{!31, !13, i64 56}
!44 = !{!36, !13, i64 40}
!45 = !{!31, !13, i64 64}
!46 = !{!36, !13, i64 48}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = !{!8, !8, i64 0}
!50 = distinct !{!50, !20}
