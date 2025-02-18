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

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @read_min(ptr noundef %0) local_unnamed_addr #0 !prof !42 {
  %2 = alloca [201 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %245, label %8, !prof !43

8:                                                ; preds = %1
  %9 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6)
  %10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %245, !prof !44

12:                                               ; preds = %8
  %13 = load i64, ptr %3, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  store i64 %13, ptr %14, align 8, !tbaa !49
  %15 = load i64, ptr %4, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 6
  store i64 %15, ptr %16, align 8, !tbaa !53
  %17 = shl nsw i64 %13, 1
  %18 = or disjoint i64 %17, 1
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  store i64 %18, ptr %19, align 8, !tbaa !54
  %20 = mul nsw i64 %13, 3
  %21 = add nsw i64 %15, %20
  %22 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  store i64 %21, ptr %22, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %23, align 8, !tbaa !56
  %24 = add nsw i64 %21, -1
  %25 = sdiv i64 %24, 4000
  %26 = add nsw i64 %25, 1
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %26, ptr %27, align 8, !tbaa !57
  %28 = srem i64 %21, 4000
  %29 = icmp eq i64 %28, 0
  %30 = add nsw i64 %28, -4000
  %31 = select i1 %29, i64 0, i64 %30, !prof !43
  %32 = add nsw i64 %26, %31
  %33 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %32, ptr %33, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %35 = icmp slt i64 %32, 0
  br i1 %35, label %36, label %45, !prof !59

36:                                               ; preds = %12
  %37 = load i64, ptr %23, align 8, !tbaa !56
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ %37, %36 ], [ %42, %38 ]
  %40 = phi i64 [ %32, %36 ], [ %41, %38 ]
  %41 = add nsw i64 %40, %26
  %42 = add nsw i64 %39, -1
  %43 = icmp slt i64 %41, 0
  br i1 %43, label %38, label %44, !prof !60, !llvm.loop !61

44:                                               ; preds = %38
  store i64 %41, ptr %34, align 8, !tbaa !58
  store i64 %42, ptr %23, align 8, !tbaa !56
  br label %45

45:                                               ; preds = %44, %12
  %46 = icmp slt i64 %13, 15001
  br i1 %46, label %47, label %51, !prof !44

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  store i64 %21, ptr %48, align 8, !tbaa !64
  %49 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  store i64 2000000, ptr %49, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  store i64 0, ptr %50, align 8, !tbaa !66
  br label %62

51:                                               ; preds = %45
  %52 = add nsw i64 %21, 5000000
  %53 = sitofp i64 %21 to double
  %54 = fmul double %53, 1.250000e+00
  %55 = fptosi double %54 to i64
  %56 = sitofp i64 %55 to double
  %57 = fmul double %56, 1.250000e+00
  %58 = fptosi double %57 to i64
  %59 = call i64 @llvm.smax.i64(i64 %52, i64 %58)
  %60 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  store i64 %59, ptr %60, align 8, !tbaa !64
  %61 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  store i64 28900000, ptr %61, align 8, !tbaa !65
  br label %62

62:                                               ; preds = %51, %47
  %63 = add i64 %17, 2
  %64 = call noalias ptr @calloc(i64 noundef %63, i64 noundef 104) #8
  %65 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  store ptr %64, ptr %65, align 8, !tbaa !67
  %66 = call noalias ptr @calloc(i64 noundef %18, i64 noundef 72) #8
  %67 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  store ptr %66, ptr %67, align 8, !tbaa !68
  %68 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %69 = load i64, ptr %68, align 8, !tbaa !64
  %70 = call noalias ptr @calloc(i64 noundef %69, i64 noundef 72) #8
  %71 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  store ptr %70, ptr %71, align 8, !tbaa !69
  %72 = call noalias ptr @calloc(i64 noundef %69, i64 noundef 72) #8
  %73 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  store ptr %72, ptr %73, align 8, !tbaa !70
  %74 = icmp eq ptr %64, null
  %75 = icmp eq ptr %72, null
  %76 = or i1 %74, %75
  %77 = icmp eq ptr %66, null
  %78 = or i1 %77, %76
  %79 = icmp eq ptr %70, null
  %80 = or i1 %79, %78
  br i1 %80, label %81, label %84, !prof !43

81:                                               ; preds = %62
  %82 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %83 = call i64 @getfree(ptr noundef %0) #7
  br label %245

84:                                               ; preds = %62
  %85 = getelementptr inbounds %struct.node, ptr %64, i64 %18
  %86 = getelementptr inbounds %struct.node, ptr %85, i64 1
  %87 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  store ptr %86, ptr %87, align 8, !tbaa !71
  %88 = getelementptr inbounds %struct.arc, ptr %72, i64 %21
  %89 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %88, ptr %89, align 8, !tbaa !72
  %90 = getelementptr inbounds %struct.arc, ptr %66, i64 %18
  %91 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 27
  store ptr %90, ptr %91, align 8, !tbaa !73
  %92 = load i64, ptr %14, align 8, !tbaa !49
  %93 = icmp slt i64 %92, 1
  br i1 %93, label %181, label %94, !prof !74

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %96

96:                                               ; preds = %94, %107
  %97 = phi ptr [ %72, %94 ], [ %177, %107 ]
  %98 = phi i64 [ 0, %94 ], [ %175, %107 ]
  %99 = phi i64 [ 1, %94 ], [ %178, %107 ]
  %100 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6)
  %101 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %245, !prof !75

103:                                              ; preds = %96
  %104 = load i64, ptr %3, align 8, !tbaa !45
  %105 = load i64, ptr %4, align 8, !tbaa !45
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %245, label %107, !prof !76

107:                                              ; preds = %103
  %108 = trunc i64 %99 to i32
  %109 = sub i32 0, %108
  %110 = getelementptr %struct.node, ptr %64, i64 %99
  %111 = getelementptr inbounds %struct.node, ptr %64, i64 %99, i32 12
  store i32 %109, ptr %111, align 8, !tbaa !77
  %112 = getelementptr inbounds %struct.node, ptr %64, i64 %99, i32 10
  store i64 -1, ptr %112, align 8, !tbaa !80
  %113 = load i64, ptr %14, align 8, !tbaa !49
  %114 = getelementptr %struct.node, ptr %110, i64 %113, i32 12
  store i32 %108, ptr %114, align 8, !tbaa !77
  %115 = getelementptr %struct.node, ptr %110, i64 %113, i32 10
  store i64 1, ptr %115, align 8, !tbaa !80
  %116 = trunc i64 %104 to i32
  %117 = getelementptr inbounds %struct.node, ptr %64, i64 %99, i32 13
  store i32 %116, ptr %117, align 4, !tbaa !81
  %118 = trunc i64 %105 to i32
  %119 = getelementptr %struct.node, ptr %110, i64 %113, i32 13
  store i32 %118, ptr %119, align 4, !tbaa !81
  %120 = trunc i64 %98 to i32
  store i32 %120, ptr %97, align 8, !tbaa !82
  %121 = load i64, ptr %19, align 8, !tbaa !54
  %122 = getelementptr inbounds %struct.node, ptr %64, i64 %121
  %123 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 2
  store ptr %122, ptr %123, align 8, !tbaa !85
  %124 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 3
  store ptr %110, ptr %124, align 8, !tbaa !86
  %125 = load i64, ptr %95, align 8, !tbaa !87
  %126 = add nsw i64 %125, 15
  %127 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 1
  store i64 %126, ptr %127, align 8, !tbaa !88
  %128 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 8
  store i64 %126, ptr %128, align 8, !tbaa !89
  %129 = getelementptr inbounds %struct.node, ptr %64, i64 %121, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !90
  %131 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 5
  store ptr %130, ptr %131, align 8, !tbaa !91
  store ptr %97, ptr %129, align 8, !tbaa !90
  %132 = getelementptr %struct.node, ptr %64, i64 %99, i32 8
  %133 = load ptr, ptr %132, align 8, !tbaa !92
  %134 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 6
  store ptr %133, ptr %134, align 8, !tbaa !93
  store ptr %97, ptr %132, align 8, !tbaa !92
  %135 = load ptr, ptr %73, align 8, !tbaa !70
  %136 = add nuw nsw i64 %98, 1
  %137 = call i64 @getArcPosition(ptr noundef %0, i64 noundef %136) #7
  %138 = getelementptr inbounds %struct.arc, ptr %135, i64 %137
  %139 = trunc i64 %136 to i32
  store i32 %139, ptr %138, align 8, !tbaa !82
  %140 = load i64, ptr %14, align 8, !tbaa !49
  %141 = getelementptr %struct.node, ptr %110, i64 %140
  %142 = getelementptr inbounds %struct.arc, ptr %135, i64 %137, i32 2
  store ptr %141, ptr %142, align 8, !tbaa !85
  %143 = load i64, ptr %19, align 8, !tbaa !54
  %144 = getelementptr inbounds %struct.node, ptr %64, i64 %143
  %145 = getelementptr inbounds %struct.arc, ptr %135, i64 %137, i32 3
  store ptr %144, ptr %145, align 8, !tbaa !86
  %146 = getelementptr inbounds %struct.arc, ptr %135, i64 %137, i32 1
  store i64 15, ptr %146, align 8, !tbaa !88
  %147 = getelementptr inbounds %struct.arc, ptr %135, i64 %137, i32 8
  store i64 15, ptr %147, align 8, !tbaa !89
  %148 = getelementptr %struct.node, ptr %110, i64 %140, i32 7
  %149 = load ptr, ptr %148, align 8, !tbaa !90
  %150 = getelementptr inbounds %struct.arc, ptr %135, i64 %137, i32 5
  store ptr %149, ptr %150, align 8, !tbaa !91
  store ptr %138, ptr %148, align 8, !tbaa !90
  %151 = getelementptr inbounds %struct.node, ptr %64, i64 %143, i32 8
  %152 = load ptr, ptr %151, align 8, !tbaa !92
  %153 = getelementptr inbounds %struct.arc, ptr %135, i64 %137, i32 6
  store ptr %152, ptr %153, align 8, !tbaa !93
  store ptr %138, ptr %151, align 8, !tbaa !92
  %154 = load ptr, ptr %73, align 8, !tbaa !70
  %155 = add nuw nsw i64 %98, 2
  %156 = call i64 @getArcPosition(ptr noundef %0, i64 noundef %155) #7
  %157 = getelementptr inbounds %struct.arc, ptr %154, i64 %156
  %158 = trunc i64 %155 to i32
  store i32 %158, ptr %157, align 8, !tbaa !82
  %159 = getelementptr inbounds %struct.arc, ptr %154, i64 %156, i32 2
  store ptr %110, ptr %159, align 8, !tbaa !85
  %160 = load i64, ptr %14, align 8, !tbaa !49
  %161 = getelementptr %struct.node, ptr %110, i64 %160
  %162 = getelementptr inbounds %struct.arc, ptr %154, i64 %156, i32 3
  store ptr %161, ptr %162, align 8, !tbaa !86
  %163 = load i64, ptr %95, align 8, !tbaa !87
  %164 = call i64 @llvm.smax.i64(i64 %163, i64 10000000)
  %165 = shl nuw nsw i64 %164, 1
  %166 = getelementptr inbounds %struct.arc, ptr %154, i64 %156, i32 1
  store i64 %165, ptr %166, align 8, !tbaa !88
  %167 = getelementptr inbounds %struct.arc, ptr %154, i64 %156, i32 8
  store i64 %165, ptr %167, align 8, !tbaa !89
  %168 = getelementptr %struct.node, ptr %64, i64 %99, i32 7
  %169 = load ptr, ptr %168, align 8, !tbaa !90
  %170 = getelementptr inbounds %struct.arc, ptr %154, i64 %156, i32 5
  store ptr %169, ptr %170, align 8, !tbaa !91
  store ptr %157, ptr %168, align 8, !tbaa !90
  %171 = getelementptr %struct.node, ptr %110, i64 %160, i32 8
  %172 = load ptr, ptr %171, align 8, !tbaa !92
  %173 = getelementptr inbounds %struct.arc, ptr %154, i64 %156, i32 6
  store ptr %172, ptr %173, align 8, !tbaa !93
  store ptr %157, ptr %171, align 8, !tbaa !92
  %174 = load ptr, ptr %73, align 8, !tbaa !70
  %175 = add nuw nsw i64 %98, 3
  %176 = call i64 @getArcPosition(ptr noundef %0, i64 noundef %175) #7
  %177 = getelementptr inbounds %struct.arc, ptr %174, i64 %176
  %178 = add nuw nsw i64 %99, 1
  %179 = load i64, ptr %14, align 8, !tbaa !49
  %180 = icmp slt i64 %99, %179
  br i1 %180, label %96, label %181, !prof !94, !llvm.loop !95

181:                                              ; preds = %107, %84
  %182 = phi i64 [ 1, %84 ], [ %178, %107 ]
  %183 = phi i64 [ 0, %84 ], [ %175, %107 ]
  %184 = phi ptr [ %72, %84 ], [ %177, %107 ]
  %185 = phi i64 [ %92, %84 ], [ %179, %107 ]
  %186 = add nsw i64 %185, 1
  %187 = icmp eq i64 %182, %186
  br i1 %187, label %188, label %245, !prof !44

188:                                              ; preds = %181
  %189 = load i64, ptr %16, align 8, !tbaa !53
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %224, !prof !59

191:                                              ; preds = %188, %198
  %192 = phi ptr [ %221, %198 ], [ %184, %188 ]
  %193 = phi i64 [ %219, %198 ], [ %183, %188 ]
  %194 = phi i64 [ %217, %198 ], [ 0, %188 ]
  %195 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %6)
  %196 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %197 = icmp eq i32 %196, 3
  br i1 %197, label %198, label %245, !prof !96

198:                                              ; preds = %191
  %199 = trunc i64 %193 to i32
  store i32 %199, ptr %192, align 8, !tbaa !82
  %200 = load i64, ptr %3, align 8, !tbaa !45
  %201 = load i64, ptr %14, align 8, !tbaa !49
  %202 = getelementptr %struct.node, ptr %64, i64 %200
  %203 = getelementptr %struct.node, ptr %202, i64 %201
  %204 = getelementptr inbounds %struct.arc, ptr %192, i64 0, i32 2
  store ptr %203, ptr %204, align 8, !tbaa !85
  %205 = load i64, ptr %4, align 8, !tbaa !45
  %206 = getelementptr inbounds %struct.node, ptr %64, i64 %205
  %207 = getelementptr inbounds %struct.arc, ptr %192, i64 0, i32 3
  store ptr %206, ptr %207, align 8, !tbaa !86
  %208 = load i64, ptr %5, align 8, !tbaa !45
  %209 = getelementptr inbounds %struct.arc, ptr %192, i64 0, i32 8
  store i64 %208, ptr %209, align 8, !tbaa !89
  %210 = getelementptr inbounds %struct.arc, ptr %192, i64 0, i32 1
  store i64 %208, ptr %210, align 8, !tbaa !88
  %211 = getelementptr %struct.node, ptr %202, i64 %201, i32 7
  %212 = load ptr, ptr %211, align 8, !tbaa !90
  %213 = getelementptr inbounds %struct.arc, ptr %192, i64 0, i32 5
  store ptr %212, ptr %213, align 8, !tbaa !91
  store ptr %192, ptr %211, align 8, !tbaa !90
  %214 = getelementptr inbounds %struct.node, ptr %64, i64 %205, i32 8
  %215 = load ptr, ptr %214, align 8, !tbaa !92
  %216 = getelementptr inbounds %struct.arc, ptr %192, i64 0, i32 6
  store ptr %215, ptr %216, align 8, !tbaa !93
  store ptr %192, ptr %214, align 8, !tbaa !92
  %217 = add nuw nsw i64 %194, 1
  %218 = load ptr, ptr %73, align 8, !tbaa !70
  %219 = add nuw nsw i64 %193, 1
  %220 = call i64 @getArcPosition(ptr noundef %0, i64 noundef %219) #7
  %221 = getelementptr inbounds %struct.arc, ptr %218, i64 %220
  %222 = load i64, ptr %16, align 8, !tbaa !53
  %223 = icmp slt i64 %217, %222
  br i1 %223, label %191, label %224, !prof !97, !llvm.loop !98

224:                                              ; preds = %198, %188
  %225 = call i32 @fclose(ptr noundef nonnull %6)
  %226 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 1
  store i8 0, ptr %226, align 8, !tbaa !99
  %227 = load i64, ptr %14, align 8, !tbaa !49
  %228 = icmp slt i64 %227, 1
  br i1 %228, label %245, label %229, !prof !74

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %231

231:                                              ; preds = %229, %231
  %232 = phi i64 [ 1, %229 ], [ %242, %231 ]
  %233 = load ptr, ptr %73, align 8, !tbaa !70
  %234 = mul nuw nsw i64 %232, 3
  %235 = add nsw i64 %234, -1
  %236 = call i64 @getArcPosition(ptr noundef %0, i64 noundef %235) #7
  %237 = load i64, ptr %230, align 8, !tbaa !87
  %238 = call i64 @llvm.smax.i64(i64 %237, i64 10000000)
  %239 = mul nsw i64 %238, -2
  %240 = getelementptr inbounds %struct.arc, ptr %233, i64 %236, i32 1
  store i64 %239, ptr %240, align 8, !tbaa !88
  %241 = getelementptr inbounds %struct.arc, ptr %233, i64 %236, i32 8
  store i64 %239, ptr %241, align 8, !tbaa !89
  %242 = add nuw nsw i64 %232, 1
  %243 = load i64, ptr %14, align 8, !tbaa !49
  %244 = icmp slt i64 %232, %243
  br i1 %244, label %231, label %245, !prof !94, !llvm.loop !100

245:                                              ; preds = %96, %103, %191, %231, %224, %181, %8, %1, %81
  %246 = phi i64 [ -1, %81 ], [ -1, %1 ], [ -1, %8 ], [ -1, %181 ], [ 0, %224 ], [ 0, %231 ], [ -1, %191 ], [ -1, %103 ], [ -1, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %2) #7
  ret i64 %246
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @getfree(ptr noundef) local_unnamed_addr #4

declare i64 @getArcPosition(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @read_min, ptr @fopen, i64 1}
!36 = !{ptr @read_min, ptr @fgets, i64 132193}
!37 = !{ptr @read_min, ptr @__isoc99_sscanf, i64 132193}
!38 = !{ptr @read_min, ptr @calloc, i64 4}
!39 = !{ptr @read_min, ptr @getArcPosition, i64 177191}
!40 = !{ptr @read_min, ptr @fclose, i64 1}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 1}
!43 = !{!"branch_weights", i32 0, i32 1}
!44 = !{!"branch_weights", i32 1, i32 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !46, i64 408}
!50 = !{!"network", !47, i64 0, !47, i64 200, !46, i64 400, !46, i64 408, !46, i64 416, !46, i64 424, !46, i64 432, !46, i64 440, !46, i64 448, !46, i64 456, !46, i64 464, !46, i64 472, !46, i64 480, !46, i64 488, !46, i64 496, !46, i64 504, !46, i64 512, !46, i64 520, !46, i64 528, !51, i64 536, !46, i64 544, !52, i64 552, !52, i64 560, !52, i64 568, !52, i64 576, !52, i64 584, !52, i64 592, !52, i64 600, !46, i64 608, !46, i64 616, !46, i64 624, !46, i64 632, !46, i64 640}
!51 = !{!"double", !47, i64 0}
!52 = !{!"any pointer", !47, i64 0}
!53 = !{!50, !46, i64 432}
!54 = !{!50, !46, i64 400}
!55 = !{!50, !46, i64 424}
!56 = !{!50, !46, i64 640}
!57 = !{!50, !46, i64 624}
!58 = !{!50, !46, i64 632}
!59 = !{!"branch_weights", i32 127, i32 1}
!60 = !{!"branch_weights", i32 5377, i32 127}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!50, !46, i64 416}
!65 = !{!50, !46, i64 456}
!66 = !{!50, !46, i64 448}
!67 = !{!50, !52, i64 552}
!68 = !{!50, !52, i64 592}
!69 = !{!50, !52, i64 584}
!70 = !{!50, !52, i64 568}
!71 = !{!50, !52, i64 560}
!72 = !{!50, !52, i64 576}
!73 = !{!50, !52, i64 600}
!74 = !{!"branch_weights", i32 1, i32 127}
!75 = !{!"branch_weights", i32 15000, i32 0}
!76 = !{!"branch_weights", i32 0, i32 15000}
!77 = !{!78, !79, i64 96}
!78 = !{!"node", !46, i64 0, !79, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !46, i64 80, !46, i64 88, !79, i64 96, !79, i64 100}
!79 = !{!"int", !47, i64 0}
!80 = !{!78, !46, i64 80}
!81 = !{!78, !79, i64 100}
!82 = !{!83, !79, i64 0}
!83 = !{!"arc", !79, i64 0, !46, i64 8, !52, i64 16, !52, i64 24, !84, i64 32, !52, i64 40, !52, i64 48, !46, i64 56, !46, i64 64}
!84 = !{!"short", !47, i64 0}
!85 = !{!83, !52, i64 16}
!86 = !{!83, !52, i64 24}
!87 = !{!50, !46, i64 528}
!88 = !{!83, !46, i64 8}
!89 = !{!83, !46, i64 64}
!90 = !{!78, !52, i64 56}
!91 = !{!83, !52, i64 40}
!92 = !{!78, !52, i64 64}
!93 = !{!83, !52, i64 48}
!94 = !{!"branch_weights", i32 1919873, i32 127}
!95 = distinct !{!95, !62, !63}
!96 = !{!"branch_weights", i32 117202, i32 0}
!97 = !{!"branch_weights", i32 15001729, i32 127}
!98 = distinct !{!98, !62, !63}
!99 = !{!47, !47, i64 0}
!100 = distinct !{!100, !62, !63}
