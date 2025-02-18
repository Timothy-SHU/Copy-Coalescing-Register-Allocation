; ModuleID = 'blob.cpp'
source_filename = "blob.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Blob_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, ptr, ptr, ptr, i32 }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Blob_Data_Struct" = type { i32, i32, double, ptr, ptr, ptr }
%"struct.pov::Blob_Element_Struct" = type { i16, i32, [3 x double], double, double, [3 x double], [5 x double], ptr, ptr }
%"struct.pov::BSphere_Tree_Struct" = type { i16, [3 x double], double, ptr }
%"struct.pov::Blob_Interval_Struct" = type { i32, double, ptr }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::Blob_List_Struct" = type { %"struct.pov::Blob_Element_Struct", ptr }
%"struct.pov::Transform_Struct" = type { [4 x [4 x double]], [4 x [4 x double]] }

@_ZN3pov12Blob_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL22All_Blob_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL11Inside_BlobEPdPNS_13Object_StructE, ptr @_ZN3povL11Blob_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL9Copy_BlobEPNS_13Object_StructE, ptr @_ZN3povL14Translate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL11Rotate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Scale_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL11Invert_BlobEPNS_13Object_StructE, ptr @_ZN3povL12Destroy_BlobEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [9 x i8] c"blob.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"blob queue\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"blob component\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Need at least one component in a blob.\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"There are more than %d components in a blob.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Degenerate Blob element\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Unknown blob component.\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"blob data\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"blob intervals\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"blob texture list\00", align 1
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16
@.str.11 = private unnamed_addr constant [52 x i8] c"Unknown blob component in All_Blob_Intersections().\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"blob bounding hierarchy\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Blob queue overflow!\00", align 1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL22All_Blob_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [5 x double], align 16
  %8 = alloca [4 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #8
  %14 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 12), align 16, !tbaa !34
  %15 = add nsw i64 %14, 1
  store i64 %15, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 12), align 16, !tbaa !34
  %16 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %3
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %17)
  %20 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %16, align 8, !tbaa !38
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef nonnull %20, ptr noundef %21)
  %22 = load double, ptr %10, align 16, !tbaa !44
  %23 = getelementptr inbounds double, ptr %10, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !44
  %25 = fmul double %24, %24
  %26 = call double @llvm.fmuladd.f64(double %22, double %22, double %25)
  %27 = getelementptr inbounds double, ptr %10, i64 2
  %28 = load double, ptr %27, align 16, !tbaa !44
  %29 = call double @llvm.fmuladd.f64(double %28, double %28, double %26)
  %30 = call double @sqrt(double noundef %29) #8
  %31 = fdiv double 1.000000e+00, %30
  %32 = load double, ptr %10, align 16, !tbaa !44
  %33 = fmul double %32, %31
  store double %33, ptr %10, align 16, !tbaa !44
  %34 = load double, ptr %23, align 8, !tbaa !44
  %35 = fmul double %31, %34
  store double %35, ptr %23, align 8, !tbaa !44
  %36 = load double, ptr %27, align 16, !tbaa !44
  %37 = fmul double %31, %36
  store double %37, ptr %27, align 16, !tbaa !44
  br label %54

38:                                               ; preds = %3
  %39 = load double, ptr %1, align 8, !tbaa !44
  store double %39, ptr %9, align 16, !tbaa !44
  %40 = getelementptr inbounds double, ptr %1, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds double, ptr %9, i64 1
  store double %41, ptr %42, align 8, !tbaa !44
  %43 = getelementptr inbounds double, ptr %1, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds double, ptr %9, i64 2
  store double %44, ptr %45, align 16, !tbaa !44
  %46 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %47 = load double, ptr %46, align 8, !tbaa !44
  store double %47, ptr %10, align 16, !tbaa !44
  %48 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %49 = load double, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds double, ptr %10, i64 1
  store double %49, ptr %50, align 8, !tbaa !44
  %51 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %52 = load double, ptr %51, align 8, !tbaa !44
  %53 = getelementptr inbounds double, ptr %10, i64 2
  store double %52, ptr %53, align 16, !tbaa !44
  br label %54

54:                                               ; preds = %38, %19
  %55 = phi double [ 1.000000e+00, %38 ], [ %30, %19 ]
  %56 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i32 0, ptr %4, align 4, !tbaa !49
  %60 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %57, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %90

63:                                               ; preds = %54
  %64 = load ptr, ptr %56, align 8, !tbaa !46
  %65 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !51
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %185

68:                                               ; preds = %63, %83
  %69 = phi i64 [ %84, %83 ], [ 0, %63 ]
  %70 = phi ptr [ %85, %83 ], [ %64, %63 ]
  %71 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %72, i64 %69
  %74 = call fastcc noundef i32 @_ZN3povL17intersect_elementEPdS0_PNS_19Blob_Element_StructEdS0_S0_(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %73, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %68
  %77 = load ptr, ptr %56, align 8, !tbaa !46
  %78 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !52
  %80 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %79, i64 %69
  %81 = load double, ptr %5, align 8, !tbaa !44
  %82 = load double, ptr %6, align 8, !tbaa !44
  call fastcc void @_ZN3povL10insert_hitEPNS_19Blob_Element_StructEddPNS_20Blob_Interval_StructEPj(ptr noundef %80, double noundef %81, double noundef %82, ptr noundef %59, ptr noundef nonnull %4)
  br label %83

83:                                               ; preds = %76, %68
  %84 = add nuw nsw i64 %69, 1
  %85 = load ptr, ptr %56, align 8, !tbaa !46
  %86 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !51
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %84, %88
  br i1 %89, label %68, label %185, !llvm.loop !53

90:                                               ; preds = %54
  %91 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %92 = load ptr, ptr %91, align 8, !tbaa !56
  store ptr %61, ptr %92, align 8, !tbaa !57
  %93 = getelementptr inbounds double, ptr %9, i64 1
  %94 = getelementptr inbounds double, ptr %9, i64 2
  %95 = getelementptr inbounds double, ptr %10, i64 1
  %96 = getelementptr inbounds double, ptr %10, i64 2
  %97 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 17
  br label %98

98:                                               ; preds = %90, %182
  %99 = phi i32 [ 1, %90 ], [ %183, %182 ]
  %100 = load ptr, ptr %91, align 8, !tbaa !56
  %101 = add i32 %99, -1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %100, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !57
  %105 = load i16, ptr %104, align 8, !tbaa !58
  %106 = icmp slt i16 %105, 1
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = load i16, ptr %104, align 8, !tbaa !58
  %109 = icmp sgt i16 %108, 0
  br i1 %109, label %110, label %182

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %104, i64 0, i32 3
  br label %121

112:                                              ; preds = %98
  %113 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %104, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !61
  %115 = call fastcc noundef i32 @_ZN3povL17intersect_elementEPdS0_PNS_19Blob_Element_StructEdS0_S0_(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %114, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %182, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %113, align 8, !tbaa !61
  %119 = load double, ptr %5, align 8, !tbaa !44
  %120 = load double, ptr %6, align 8, !tbaa !44
  call fastcc void @_ZN3povL10insert_hitEPNS_19Blob_Element_StructEddPNS_20Blob_Interval_StructEPj(ptr noundef %118, double noundef %119, double noundef %120, ptr noundef %59, ptr noundef nonnull %4)
  br label %182

121:                                              ; preds = %110, %176
  %122 = phi i64 [ 0, %110 ], [ %178, %176 ]
  %123 = phi i32 [ %101, %110 ], [ %177, %176 ]
  %124 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 16), align 16, !tbaa !34
  %125 = add nsw i64 %124, 1
  store i64 %125, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 16), align 16, !tbaa !34
  %126 = load ptr, ptr %111, align 8, !tbaa !61
  %127 = getelementptr inbounds ptr, ptr %126, i64 %122
  %128 = load ptr, ptr %127, align 8, !tbaa !57
  %129 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %128, i64 0, i32 1
  %130 = load double, ptr %129, align 8, !tbaa !44
  %131 = load double, ptr %9, align 16, !tbaa !44
  %132 = fsub double %130, %131
  %133 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %128, i64 0, i32 1, i64 1
  %134 = load double, ptr %133, align 8, !tbaa !44
  %135 = load double, ptr %93, align 8, !tbaa !44
  %136 = fsub double %134, %135
  %137 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %128, i64 0, i32 1, i64 2
  %138 = load double, ptr %137, align 8, !tbaa !44
  %139 = load double, ptr %94, align 16, !tbaa !44
  %140 = fsub double %138, %139
  %141 = load double, ptr %10, align 16, !tbaa !44
  %142 = load double, ptr %95, align 8, !tbaa !44
  %143 = fmul double %136, %142
  %144 = call double @llvm.fmuladd.f64(double %132, double %141, double %143)
  %145 = load double, ptr %96, align 16, !tbaa !44
  %146 = call double @llvm.fmuladd.f64(double %140, double %145, double %144)
  %147 = fmul double %136, %136
  %148 = call double @llvm.fmuladd.f64(double %132, double %132, double %147)
  %149 = call double @llvm.fmuladd.f64(double %140, double %140, double %148)
  %150 = fmul double %146, %146
  %151 = fsub double %149, %150
  %152 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %128, i64 0, i32 2
  %153 = load double, ptr %152, align 8, !tbaa !62
  %154 = fcmp ugt double %151, %153
  br i1 %154, label %176, label %155

155:                                              ; preds = %121
  %156 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 17), align 8, !tbaa !34
  %157 = add nsw i64 %156, 1
  store i64 %157, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 17), align 8, !tbaa !34
  %158 = load i32, ptr %97, align 8, !tbaa !63
  %159 = icmp ult i32 %123, %158
  br i1 %159, label %171, label %160

160:                                              ; preds = %155
  %161 = icmp ugt i32 %158, 2147483646
  br i1 %161, label %162, label %164

162:                                              ; preds = %160
  %163 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.13)
  br label %164

164:                                              ; preds = %162, %160
  %165 = load i32, ptr %97, align 8, !tbaa !63
  %166 = shl i32 %165, 1
  store i32 %166, ptr %97, align 8, !tbaa !63
  %167 = load ptr, ptr %91, align 8, !tbaa !56
  %168 = zext i32 %166 to i64
  %169 = shl nuw nsw i64 %168, 3
  %170 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %167, i64 noundef %169, ptr noundef nonnull @.str, i32 noundef 3433, ptr noundef nonnull @.str.2)
  store ptr %170, ptr %91, align 8, !tbaa !56
  br label %171

171:                                              ; preds = %155, %164
  %172 = load ptr, ptr %91, align 8, !tbaa !56
  %173 = add i32 %123, 1
  %174 = zext i32 %123 to i64
  %175 = getelementptr inbounds ptr, ptr %172, i64 %174
  store ptr %128, ptr %175, align 8, !tbaa !57
  br label %176

176:                                              ; preds = %171, %121
  %177 = phi i32 [ %123, %121 ], [ %173, %171 ]
  %178 = add nuw nsw i64 %122, 1
  %179 = load i16, ptr %104, align 8, !tbaa !58
  %180 = sext i16 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %121, label %182, !llvm.loop !64

182:                                              ; preds = %176, %107, %117, %112
  %183 = phi i32 [ %101, %112 ], [ %101, %117 ], [ %101, %107 ], [ %177, %176 ]
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %98, !llvm.loop !65

185:                                              ; preds = %182, %83, %63
  %186 = load i32, ptr %4, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %677, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 0, i32 1
  %190 = load double, ptr %189, align 8, !tbaa !66
  %191 = fcmp olt double %190, 1.000000e-03
  %192 = select i1 %191, double 0.000000e+00, double %190
  %193 = icmp sgt i32 %186, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  %195 = zext nneg i32 %186 to i64
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ 0, %194 ], [ %201, %196 ]
  %198 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %197, i32 1
  %199 = load double, ptr %198, align 8, !tbaa !66
  %200 = fsub double %199, %192
  store double %200, ptr %198, align 8, !tbaa !66
  %201 = add nuw nsw i64 %197, 1
  %202 = icmp eq i64 %201, %195
  br i1 %202, label %203, label %196, !llvm.loop !68

203:                                              ; preds = %196, %188
  %204 = load double, ptr %10, align 16, !tbaa !44
  %205 = load double, ptr %9, align 16, !tbaa !44
  %206 = call double @llvm.fmuladd.f64(double %192, double %204, double %205)
  store double %206, ptr %9, align 16, !tbaa !44
  %207 = getelementptr inbounds double, ptr %10, i64 1
  %208 = load double, ptr %207, align 8, !tbaa !44
  %209 = getelementptr inbounds double, ptr %9, i64 1
  %210 = load double, ptr %209, align 8, !tbaa !44
  %211 = call double @llvm.fmuladd.f64(double %192, double %208, double %210)
  store double %211, ptr %209, align 8, !tbaa !44
  %212 = getelementptr inbounds double, ptr %10, i64 2
  %213 = load double, ptr %212, align 16, !tbaa !44
  %214 = getelementptr inbounds double, ptr %9, i64 2
  %215 = load double, ptr %214, align 16, !tbaa !44
  %216 = call double @llvm.fmuladd.f64(double %192, double %213, double %215)
  store double %216, ptr %214, align 16, !tbaa !44
  %217 = load double, ptr %189, align 8, !tbaa !66
  %218 = icmp sgt i32 %186, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %203
  %220 = zext nneg i32 %186 to i64
  br label %221

221:                                              ; preds = %219, %221
  %222 = phi i64 [ 0, %219 ], [ %228, %221 ]
  %223 = phi double [ %217, %219 ], [ %227, %221 ]
  %224 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %222, i32 1
  %225 = load double, ptr %224, align 8, !tbaa !66
  %226 = fcmp ogt double %225, %223
  %227 = select i1 %226, double %225, double %223
  %228 = add nuw nsw i64 %222, 1
  %229 = icmp eq i64 %228, %220
  br i1 %229, label %230, label %221, !llvm.loop !69

230:                                              ; preds = %221, %203
  %231 = phi double [ %217, %203 ], [ %227, %221 ]
  %232 = fcmp une double %231, 0.000000e+00
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  %234 = fmul double %204, %231
  store double %234, ptr %10, align 16, !tbaa !44
  %235 = fmul double %208, %231
  store double %235, ptr %207, align 8, !tbaa !44
  %236 = fmul double %213, %231
  store double %236, ptr %212, align 16, !tbaa !44
  %237 = icmp sgt i32 %186, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = zext nneg i32 %186 to i64
  br label %240

240:                                              ; preds = %238, %240
  %241 = phi i64 [ 0, %238 ], [ %245, %240 ]
  %242 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %241, i32 1
  %243 = load double, ptr %242, align 8, !tbaa !66
  %244 = fdiv double %243, %231
  store double %244, ptr %242, align 8, !tbaa !66
  %245 = add nuw nsw i64 %241, 1
  %246 = icmp eq i64 %245, %239
  br i1 %246, label %247, label %240, !llvm.loop !70

247:                                              ; preds = %240, %233, %230
  %248 = phi double [ 1.000000e+00, %230 ], [ %231, %233 ], [ %231, %240 ]
  %249 = getelementptr inbounds [5 x double], ptr %7, i64 0, i64 3
  %250 = getelementptr inbounds [5 x double], ptr %7, i64 0, i64 2
  %251 = getelementptr inbounds [5 x double], ptr %7, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %252 = load ptr, ptr %56, align 8, !tbaa !46
  %253 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %252, i64 0, i32 2
  %254 = load double, ptr %253, align 8, !tbaa !71
  %255 = fneg double %254
  %256 = getelementptr inbounds [5 x double], ptr %7, i64 0, i64 4
  store double %255, ptr %256, align 16, !tbaa !44
  %257 = icmp sgt i32 %186, 0
  br i1 %257, label %258, label %671

258:                                              ; preds = %247
  %259 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %260 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 1
  %261 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %262 = getelementptr inbounds double, ptr %11, i64 1
  %263 = getelementptr inbounds double, ptr %11, i64 2
  %264 = getelementptr inbounds double, ptr %12, i64 1
  %265 = getelementptr inbounds double, ptr %12, i64 2
  %266 = getelementptr inbounds double, ptr %11, i64 1
  %267 = getelementptr inbounds double, ptr %11, i64 2
  %268 = getelementptr inbounds double, ptr %12, i64 1
  %269 = getelementptr inbounds double, ptr %12, i64 2
  %270 = fmul double %248, %248
  %271 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %272 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %273 = getelementptr inbounds double, ptr %1, i64 1
  %274 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %275 = getelementptr inbounds double, ptr %13, i64 1
  %276 = getelementptr inbounds double, ptr %1, i64 2
  %277 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %278 = getelementptr inbounds double, ptr %13, i64 2
  %279 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %280 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %281 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  %282 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 1
  %283 = zext nneg i32 %186 to i64
  %284 = zext nneg i32 %186 to i64
  br label %285

285:                                              ; preds = %258, %665
  %286 = phi i64 [ 0, %258 ], [ %669, %665 ]
  %287 = phi i32 [ 0, %258 ], [ %668, %665 ]
  %288 = phi i32 [ 0, %258 ], [ %667, %665 ]
  %289 = phi ptr [ null, %258 ], [ %666, %665 ]
  %290 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %286
  %291 = load i32, ptr %290, align 8, !tbaa !72
  %292 = and i32 %291, 1
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %507

294:                                              ; preds = %285
  %295 = add nsw i32 %287, 1
  %296 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %286, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !73
  %298 = load i16, ptr %297, align 8, !tbaa !74
  switch i16 %298, label %494 [
    i16 2, label %299
    i16 8, label %347
    i16 16, label %401
    i16 32, label %401
    i16 4, label %454
  ]

299:                                              ; preds = %294
  %300 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 2
  %301 = load double, ptr %9, align 16, !tbaa !44
  %302 = load double, ptr %300, align 8, !tbaa !44
  %303 = fsub double %301, %302
  %304 = load double, ptr %209, align 8, !tbaa !44
  %305 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 2, i64 1
  %306 = load double, ptr %305, align 8, !tbaa !44
  %307 = fsub double %304, %306
  %308 = load double, ptr %214, align 16, !tbaa !44
  %309 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 2, i64 2
  %310 = load double, ptr %309, align 8, !tbaa !44
  %311 = fsub double %308, %310
  %312 = fmul double %307, %307
  %313 = call double @llvm.fmuladd.f64(double %303, double %303, double %312)
  %314 = call double @llvm.fmuladd.f64(double %311, double %311, double %313)
  %315 = load double, ptr %10, align 16, !tbaa !44
  %316 = load double, ptr %207, align 8, !tbaa !44
  %317 = fmul double %307, %316
  %318 = call double @llvm.fmuladd.f64(double %303, double %315, double %317)
  %319 = load double, ptr %212, align 16, !tbaa !44
  %320 = call double @llvm.fmuladd.f64(double %311, double %319, double %318)
  %321 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5
  %322 = load double, ptr %321, align 8, !tbaa !44
  %323 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 1
  %324 = load double, ptr %323, align 8, !tbaa !44
  %325 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 2
  %326 = load double, ptr %325, align 8, !tbaa !44
  %327 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6
  %328 = fmul double %270, %322
  %329 = fmul double %270, %328
  store double %329, ptr %327, align 8, !tbaa !44
  %330 = fmul double %322, 4.000000e+00
  %331 = fmul double %330, %320
  %332 = fmul double %270, %331
  %333 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 1
  store double %332, ptr %333, align 8, !tbaa !44
  %334 = fmul double %322, 2.000000e+00
  %335 = fmul double %320, 2.000000e+00
  %336 = fmul double %270, %314
  %337 = call double @llvm.fmuladd.f64(double %335, double %320, double %336)
  %338 = fmul double %270, %324
  %339 = call double @llvm.fmuladd.f64(double %334, double %337, double %338)
  %340 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 2
  store double %339, ptr %340, align 8, !tbaa !44
  %341 = call double @llvm.fmuladd.f64(double %334, double %314, double %324)
  %342 = fmul double %335, %341
  %343 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 3
  store double %342, ptr %343, align 8, !tbaa !44
  %344 = call double @llvm.fmuladd.f64(double %322, double %314, double %324)
  %345 = call double @llvm.fmuladd.f64(double %314, double %344, double %326)
  %346 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 4
  store double %345, ptr %346, align 8, !tbaa !44
  br label %496

347:                                              ; preds = %294
  %348 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 8
  %349 = load ptr, ptr %348, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef %349)
  %350 = load ptr, ptr %348, align 8, !tbaa !76
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef %350)
  %351 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 2
  %352 = load double, ptr %11, align 16, !tbaa !44
  %353 = load double, ptr %351, align 8, !tbaa !44
  %354 = fsub double %352, %353
  %355 = load double, ptr %266, align 8, !tbaa !44
  %356 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 2, i64 1
  %357 = load double, ptr %356, align 8, !tbaa !44
  %358 = fsub double %355, %357
  %359 = load double, ptr %267, align 16, !tbaa !44
  %360 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 2, i64 2
  %361 = load double, ptr %360, align 8, !tbaa !44
  %362 = fsub double %359, %361
  %363 = fmul double %358, %358
  %364 = call double @llvm.fmuladd.f64(double %354, double %354, double %363)
  %365 = call double @llvm.fmuladd.f64(double %362, double %362, double %364)
  %366 = load double, ptr %12, align 16, !tbaa !44
  %367 = load double, ptr %268, align 8, !tbaa !44
  %368 = fmul double %358, %367
  %369 = call double @llvm.fmuladd.f64(double %354, double %366, double %368)
  %370 = load double, ptr %269, align 16, !tbaa !44
  %371 = call double @llvm.fmuladd.f64(double %362, double %370, double %369)
  %372 = fmul double %367, %367
  %373 = call double @llvm.fmuladd.f64(double %366, double %366, double %372)
  %374 = call double @llvm.fmuladd.f64(double %370, double %370, double %373)
  %375 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5
  %376 = load double, ptr %375, align 8, !tbaa !44
  %377 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 1
  %378 = load double, ptr %377, align 8, !tbaa !44
  %379 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 2
  %380 = load double, ptr %379, align 8, !tbaa !44
  %381 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6
  %382 = fmul double %376, %374
  %383 = fmul double %374, %382
  store double %383, ptr %381, align 8, !tbaa !44
  %384 = fmul double %376, 4.000000e+00
  %385 = fmul double %384, %371
  %386 = fmul double %374, %385
  %387 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 1
  store double %386, ptr %387, align 8, !tbaa !44
  %388 = fmul double %376, 2.000000e+00
  %389 = fmul double %371, 2.000000e+00
  %390 = fmul double %365, %374
  %391 = call double @llvm.fmuladd.f64(double %389, double %371, double %390)
  %392 = fmul double %378, %374
  %393 = call double @llvm.fmuladd.f64(double %388, double %391, double %392)
  %394 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 2
  store double %393, ptr %394, align 8, !tbaa !44
  %395 = call double @llvm.fmuladd.f64(double %388, double %365, double %378)
  %396 = fmul double %389, %395
  %397 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 3
  store double %396, ptr %397, align 8, !tbaa !44
  %398 = call double @llvm.fmuladd.f64(double %376, double %365, double %378)
  %399 = call double @llvm.fmuladd.f64(double %365, double %398, double %380)
  %400 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 4
  store double %399, ptr %400, align 8, !tbaa !44
  br label %496

401:                                              ; preds = %294, %294
  %402 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 8
  %403 = load ptr, ptr %402, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef %403)
  %404 = load ptr, ptr %402, align 8, !tbaa !76
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef %404)
  %405 = load i16, ptr %297, align 8, !tbaa !74
  %406 = icmp eq i16 %405, 32
  br i1 %406, label %407, label %412

407:                                              ; preds = %401
  %408 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 3
  %409 = load double, ptr %408, align 8, !tbaa !77
  %410 = load double, ptr %261, align 16, !tbaa !44
  %411 = fsub double %410, %409
  store double %411, ptr %261, align 16, !tbaa !44
  br label %412

412:                                              ; preds = %407, %401
  %413 = load double, ptr %11, align 16, !tbaa !44
  %414 = load double, ptr %262, align 8, !tbaa !44
  %415 = fmul double %414, %414
  %416 = call double @llvm.fmuladd.f64(double %413, double %413, double %415)
  %417 = load double, ptr %263, align 16, !tbaa !44
  %418 = call double @llvm.fmuladd.f64(double %417, double %417, double %416)
  %419 = load double, ptr %12, align 16, !tbaa !44
  %420 = load double, ptr %264, align 8, !tbaa !44
  %421 = fmul double %414, %420
  %422 = call double @llvm.fmuladd.f64(double %413, double %419, double %421)
  %423 = load double, ptr %265, align 16, !tbaa !44
  %424 = call double @llvm.fmuladd.f64(double %417, double %423, double %422)
  %425 = fmul double %420, %420
  %426 = call double @llvm.fmuladd.f64(double %419, double %419, double %425)
  %427 = call double @llvm.fmuladd.f64(double %423, double %423, double %426)
  %428 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5
  %429 = load double, ptr %428, align 8, !tbaa !44
  %430 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 1
  %431 = load double, ptr %430, align 8, !tbaa !44
  %432 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 2
  %433 = load double, ptr %432, align 8, !tbaa !44
  %434 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6
  %435 = fmul double %429, %427
  %436 = fmul double %427, %435
  store double %436, ptr %434, align 8, !tbaa !44
  %437 = fmul double %429, 4.000000e+00
  %438 = fmul double %437, %424
  %439 = fmul double %427, %438
  %440 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 1
  store double %439, ptr %440, align 8, !tbaa !44
  %441 = fmul double %429, 2.000000e+00
  %442 = fmul double %424, 2.000000e+00
  %443 = fmul double %418, %427
  %444 = call double @llvm.fmuladd.f64(double %442, double %424, double %443)
  %445 = fmul double %431, %427
  %446 = call double @llvm.fmuladd.f64(double %441, double %444, double %445)
  %447 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 2
  store double %446, ptr %447, align 8, !tbaa !44
  %448 = call double @llvm.fmuladd.f64(double %441, double %418, double %431)
  %449 = fmul double %442, %448
  %450 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 3
  store double %449, ptr %450, align 8, !tbaa !44
  %451 = call double @llvm.fmuladd.f64(double %429, double %418, double %431)
  %452 = call double @llvm.fmuladd.f64(double %418, double %451, double %433)
  %453 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 4
  store double %452, ptr %453, align 8, !tbaa !44
  br label %496

454:                                              ; preds = %294
  %455 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 8
  %456 = load ptr, ptr %455, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef %456)
  %457 = load ptr, ptr %455, align 8, !tbaa !76
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef %457)
  %458 = load double, ptr %11, align 16, !tbaa !44
  %459 = load double, ptr %259, align 8, !tbaa !44
  %460 = fmul double %459, %459
  %461 = call double @llvm.fmuladd.f64(double %458, double %458, double %460)
  %462 = load double, ptr %12, align 16, !tbaa !44
  %463 = load double, ptr %260, align 8, !tbaa !44
  %464 = fmul double %459, %463
  %465 = call double @llvm.fmuladd.f64(double %458, double %462, double %464)
  %466 = fmul double %463, %463
  %467 = call double @llvm.fmuladd.f64(double %462, double %462, double %466)
  %468 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5
  %469 = load double, ptr %468, align 8, !tbaa !44
  %470 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 1
  %471 = load double, ptr %470, align 8, !tbaa !44
  %472 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 5, i64 2
  %473 = load double, ptr %472, align 8, !tbaa !44
  %474 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6
  %475 = fmul double %469, %467
  %476 = fmul double %467, %475
  store double %476, ptr %474, align 8, !tbaa !44
  %477 = fmul double %469, 4.000000e+00
  %478 = fmul double %477, %465
  %479 = fmul double %467, %478
  %480 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 1
  store double %479, ptr %480, align 8, !tbaa !44
  %481 = fmul double %469, 2.000000e+00
  %482 = fmul double %465, 2.000000e+00
  %483 = fmul double %461, %467
  %484 = call double @llvm.fmuladd.f64(double %482, double %465, double %483)
  %485 = fmul double %471, %467
  %486 = call double @llvm.fmuladd.f64(double %481, double %484, double %485)
  %487 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 2
  store double %486, ptr %487, align 8, !tbaa !44
  %488 = call double @llvm.fmuladd.f64(double %481, double %461, double %471)
  %489 = fmul double %482, %488
  %490 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 3
  store double %489, ptr %490, align 8, !tbaa !44
  %491 = call double @llvm.fmuladd.f64(double %469, double %461, double %471)
  %492 = call double @llvm.fmuladd.f64(double %461, double %491, double %473)
  %493 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %297, i64 0, i32 6, i64 4
  store double %492, ptr %493, align 8, !tbaa !44
  br label %496

494:                                              ; preds = %294
  %495 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.11)
  br label %496

496:                                              ; preds = %494, %454, %412, %347, %299
  %497 = phi ptr [ %289, %494 ], [ %474, %454 ], [ %434, %412 ], [ %381, %347 ], [ %327, %299 ]
  br label %498

498:                                              ; preds = %496, %498
  %499 = phi i64 [ 0, %496 ], [ %505, %498 ]
  %500 = getelementptr inbounds double, ptr %497, i64 %499
  %501 = load double, ptr %500, align 8, !tbaa !44
  %502 = getelementptr inbounds [5 x double], ptr %7, i64 0, i64 %499
  %503 = load double, ptr %502, align 8, !tbaa !44
  %504 = fadd double %501, %503
  store double %504, ptr %502, align 8, !tbaa !44
  %505 = add nuw nsw i64 %499, 1
  %506 = icmp eq i64 %505, 5
  br i1 %506, label %523, label %498, !llvm.loop !78

507:                                              ; preds = %285
  %508 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %286, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !73
  %510 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %509, i64 0, i32 6
  br label %511

511:                                              ; preds = %507, %511
  %512 = phi i64 [ 0, %507 ], [ %518, %511 ]
  %513 = getelementptr inbounds double, ptr %510, i64 %512
  %514 = load double, ptr %513, align 8, !tbaa !44
  %515 = getelementptr inbounds [5 x double], ptr %7, i64 0, i64 %512
  %516 = load double, ptr %515, align 8, !tbaa !44
  %517 = fsub double %516, %514
  store double %517, ptr %515, align 8, !tbaa !44
  %518 = add nuw nsw i64 %512, 1
  %519 = icmp eq i64 %518, 5
  br i1 %519, label %520, label %511, !llvm.loop !79

520:                                              ; preds = %511
  %521 = add nsw i32 %287, -1
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %665, label %523

523:                                              ; preds = %498, %520
  %524 = phi ptr [ %510, %520 ], [ %497, %498 ]
  %525 = phi i32 [ %521, %520 ], [ %295, %498 ]
  %526 = add nuw nsw i64 %286, 1
  %527 = icmp ult i64 %526, %283
  br i1 %527, label %528, label %536

528:                                              ; preds = %523
  %529 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %286, i32 1
  %530 = load double, ptr %529, align 8, !tbaa !66
  %531 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %526, i32 1
  %532 = load double, ptr %531, align 8, !tbaa !66
  %533 = fsub double %530, %532
  %534 = call double @llvm.fabs.f64(double %533)
  %535 = fcmp olt double %534, 0x3E7AD7F29ABCAF48
  br i1 %535, label %665, label %536

536:                                              ; preds = %528, %523
  %537 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %286, i32 1
  %538 = load double, ptr %537, align 8, !tbaa !66
  %539 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %59, i64 %526, i32 1
  %540 = load double, ptr %539, align 8, !tbaa !66
  %541 = fsub double %540, %538
  %542 = load double, ptr %7, align 16, !tbaa !44
  %543 = fmul double %542, %541
  %544 = fmul double %541, %543
  %545 = fmul double %541, %544
  %546 = fmul double %541, %545
  %547 = load double, ptr %251, align 8, !tbaa !44
  %548 = fmul double %542, 4.000000e+00
  %549 = call double @llvm.fmuladd.f64(double %548, double %538, double %547)
  %550 = fmul double %541, %549
  %551 = fmul double %541, %550
  %552 = fmul double %541, %551
  %553 = fmul double %538, 3.000000e+00
  %554 = fmul double %542, 2.000000e+00
  %555 = call double @llvm.fmuladd.f64(double %554, double %538, double %547)
  %556 = load double, ptr %250, align 16, !tbaa !44
  %557 = call double @llvm.fmuladd.f64(double %553, double %555, double %556)
  %558 = fmul double %541, %557
  %559 = fmul double %541, %558
  %560 = fmul double %538, 2.000000e+00
  %561 = fmul double %547, 7.500000e-01
  %562 = call double @llvm.fmuladd.f64(double %542, double %538, double %561)
  %563 = call double @llvm.fmuladd.f64(double %560, double %562, double %556)
  %564 = load double, ptr %249, align 8, !tbaa !44
  %565 = call double @llvm.fmuladd.f64(double %560, double %563, double %564)
  %566 = fmul double %541, %565
  %567 = call double @llvm.fmuladd.f64(double %542, double %538, double %547)
  %568 = call double @llvm.fmuladd.f64(double %538, double %567, double %556)
  %569 = call double @llvm.fmuladd.f64(double %538, double %568, double %564)
  %570 = load double, ptr %256, align 16, !tbaa !44
  %571 = call double @llvm.fmuladd.f64(double %538, double %569, double %570)
  %572 = call double @llvm.fmuladd.f64(double %566, double 2.500000e-01, double %571)
  %573 = fdiv double %559, 3.000000e+00
  %574 = fadd double %566, %573
  %575 = call double @llvm.fmuladd.f64(double %574, double 5.000000e-01, double %571)
  %576 = call double @llvm.fmuladd.f64(double %566, double 1.500000e+00, double %559)
  %577 = call double @llvm.fmuladd.f64(double %552, double 5.000000e-01, double %576)
  %578 = call double @llvm.fmuladd.f64(double %577, double 5.000000e-01, double %571)
  %579 = fadd double %571, %566
  %580 = fadd double %559, %579
  %581 = fadd double %552, %580
  %582 = fadd double %546, %581
  %583 = fcmp oge double %571, 0.000000e+00
  %584 = fcmp oge double %572, 0.000000e+00
  %585 = select i1 %583, i1 %584, i1 false
  %586 = fcmp oge double %575, 0.000000e+00
  %587 = select i1 %585, i1 %586, i1 false
  %588 = fcmp oge double %578, 0.000000e+00
  %589 = select i1 %587, i1 %588, i1 false
  %590 = fcmp oge double %582, 0.000000e+00
  %591 = select i1 %589, i1 %590, i1 false
  br i1 %591, label %665, label %592

592:                                              ; preds = %536
  %593 = fcmp ole double %571, 0.000000e+00
  %594 = fcmp ole double %572, 0.000000e+00
  %595 = select i1 %593, i1 %594, i1 false
  %596 = fcmp ole double %575, 0.000000e+00
  %597 = select i1 %595, i1 %596, i1 false
  %598 = fcmp ole double %578, 0.000000e+00
  %599 = select i1 %597, i1 %598, i1 false
  %600 = fcmp ole double %582, 0.000000e+00
  %601 = select i1 %599, i1 %600, i1 false
  br i1 %601, label %665, label %602

602:                                              ; preds = %592
  %603 = load i32, ptr %271, align 4, !tbaa !80
  %604 = and i32 %603, 64
  %605 = call noundef i32 @_ZN3pov16Solve_PolynomialEiPdS0_id(i32 noundef 4, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %604, double noundef 0x3DA5FD7FE1796495)
  %606 = icmp sgt i32 %605, 0
  br i1 %606, label %607, label %658

607:                                              ; preds = %602
  %608 = zext nneg i32 %605 to i64
  br label %609

609:                                              ; preds = %607, %654
  %610 = phi i64 [ 0, %607 ], [ %656, %654 ]
  %611 = phi i32 [ %288, %607 ], [ %655, %654 ]
  %612 = getelementptr inbounds [4 x double], ptr %8, i64 0, i64 %610
  %613 = load double, ptr %612, align 8, !tbaa !44
  %614 = load double, ptr %537, align 8, !tbaa !66
  %615 = fcmp ult double %613, %614
  br i1 %615, label %654, label %616

616:                                              ; preds = %609
  %617 = load double, ptr %539, align 8, !tbaa !66
  %618 = fcmp ugt double %613, %617
  br i1 %618, label %654, label %619

619:                                              ; preds = %616
  %620 = call double @llvm.fmuladd.f64(double %613, double %248, double %192)
  %621 = fdiv double %620, %55
  %622 = fcmp ogt double %621, 1.000000e-02
  %623 = fcmp olt double %621, 1.000000e+07
  %624 = and i1 %622, %623
  br i1 %624, label %625, label %654

625:                                              ; preds = %619
  %626 = load double, ptr %1, align 8, !tbaa !44
  %627 = load double, ptr %272, align 8, !tbaa !44
  %628 = call double @llvm.fmuladd.f64(double %621, double %627, double %626)
  store double %628, ptr %13, align 16, !tbaa !44
  %629 = load double, ptr %273, align 8, !tbaa !44
  %630 = load double, ptr %274, align 8, !tbaa !44
  %631 = call double @llvm.fmuladd.f64(double %621, double %630, double %629)
  store double %631, ptr %275, align 8, !tbaa !44
  %632 = load double, ptr %276, align 8, !tbaa !44
  %633 = load double, ptr %277, align 8, !tbaa !44
  %634 = call double @llvm.fmuladd.f64(double %621, double %633, double %632)
  store double %634, ptr %278, align 16, !tbaa !44
  %635 = load ptr, ptr %279, align 8, !tbaa !81
  %636 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %13, ptr noundef %635)
  br i1 %636, label %637, label %654

637:                                              ; preds = %625
  %638 = load ptr, ptr %280, align 8, !tbaa !83
  %639 = load i32, ptr %281, align 4, !tbaa !85
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds %"struct.pov::istk_entry", ptr %638, i64 %640
  store double %621, ptr %641, align 8, !tbaa !86
  %642 = getelementptr inbounds %"struct.pov::istk_entry", ptr %638, i64 %640, i32 5
  store ptr %0, ptr %642, align 8, !tbaa !88
  %643 = getelementptr inbounds %"struct.pov::istk_entry", ptr %638, i64 %640, i32 1
  %644 = load double, ptr %13, align 16, !tbaa !44
  store double %644, ptr %643, align 8, !tbaa !44
  %645 = load double, ptr %275, align 8, !tbaa !44
  %646 = getelementptr inbounds double, ptr %643, i64 1
  store double %645, ptr %646, align 8, !tbaa !44
  %647 = load double, ptr %278, align 16, !tbaa !44
  %648 = getelementptr inbounds double, ptr %643, i64 2
  store double %647, ptr %648, align 8, !tbaa !44
  %649 = getelementptr inbounds %"struct.pov::istk_entry", ptr %638, i64 %640, i32 4
  %650 = load double, ptr %13, align 16, !tbaa !44
  store double %650, ptr %649, align 8, !tbaa !44
  %651 = load double, ptr %275, align 8, !tbaa !44
  %652 = getelementptr inbounds double, ptr %649, i64 1
  store double %651, ptr %652, align 8, !tbaa !44
  %653 = getelementptr inbounds %"struct.pov::istk_entry", ptr %638, i64 %640, i32 18
  store ptr null, ptr %653, align 8, !tbaa !89
  call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %654

654:                                              ; preds = %609, %616, %625, %637, %619
  %655 = phi i32 [ 1, %637 ], [ %611, %625 ], [ %611, %619 ], [ %611, %616 ], [ %611, %609 ]
  %656 = add nuw nsw i64 %610, 1
  %657 = icmp eq i64 %656, %608
  br i1 %657, label %658, label %609, !llvm.loop !90

658:                                              ; preds = %654, %602
  %659 = phi i32 [ %288, %602 ], [ %655, %654 ]
  %660 = load i32, ptr %282, align 8, !tbaa !91
  %661 = and i32 %660, 256
  %662 = icmp eq i32 %661, 0
  %663 = icmp ne i32 %659, 0
  %664 = select i1 %662, i1 %663, i1 false
  br i1 %664, label %671, label %665

665:                                              ; preds = %658, %536, %592, %528, %520
  %666 = phi ptr [ %524, %528 ], [ %524, %536 ], [ %524, %592 ], [ %524, %658 ], [ %510, %520 ]
  %667 = phi i32 [ %288, %528 ], [ %288, %536 ], [ %288, %592 ], [ %659, %658 ], [ %288, %520 ]
  %668 = phi i32 [ %525, %528 ], [ %525, %536 ], [ %525, %592 ], [ %525, %658 ], [ 0, %520 ]
  %669 = add nuw nsw i64 %286, 1
  %670 = icmp eq i64 %669, %284
  br i1 %670, label %671, label %285, !llvm.loop !92

671:                                              ; preds = %665, %658, %247
  %672 = phi i32 [ 0, %247 ], [ %667, %665 ], [ 1, %658 ]
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %677, label %674

674:                                              ; preds = %671
  %675 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 13), align 8, !tbaa !34
  %676 = add nsw i64 %675, 1
  store i64 %676, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 13), align 8, !tbaa !34
  br label %677

677:                                              ; preds = %671, %674, %185
  %678 = phi i32 [ 0, %185 ], [ %672, %674 ], [ %672, %671 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #8
  ret i32 %678
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL11Inside_BlobEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %5)
  br label %16

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8, !tbaa !44
  store double %9, ptr %3, align 16, !tbaa !44
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds double, ptr %3, i64 1
  store double %11, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds double, ptr %3, i64 2
  store double %14, ptr %15, align 16, !tbaa !44
  br label %16

16:                                               ; preds = %8, %7
  %17 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8, !tbaa !46
  %24 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !51
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %121

27:                                               ; preds = %22, %27
  %28 = phi i64 [ %36, %27 ], [ 0, %22 ]
  %29 = phi ptr [ %37, %27 ], [ %23, %22 ]
  %30 = phi double [ %35, %27 ], [ 0.000000e+00, %22 ]
  %31 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %29, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %32, i64 %28
  %34 = call fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %33, ptr noundef nonnull %3)
  %35 = fadd double %30, %34
  %36 = add nuw nsw i64 %28, 1
  %37 = load ptr, ptr %17, align 8, !tbaa !46
  %38 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !51
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %27, label %121, !llvm.loop !93

42:                                               ; preds = %16
  %43 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  store ptr %20, ptr %44, align 8, !tbaa !57
  %45 = getelementptr inbounds double, ptr %3, i64 1
  %46 = getelementptr inbounds double, ptr %3, i64 2
  %47 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 17
  br label %48

48:                                               ; preds = %42, %117
  %49 = phi double [ 0.000000e+00, %42 ], [ %119, %117 ]
  %50 = phi i32 [ 1, %42 ], [ %118, %117 ]
  %51 = load ptr, ptr %43, align 8, !tbaa !56
  %52 = add i32 %50, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = load i16, ptr %55, align 8, !tbaa !58
  %57 = icmp slt i16 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load i16, ptr %55, align 8, !tbaa !58
  %60 = icmp sgt i16 %59, 0
  br i1 %60, label %61, label %117

61:                                               ; preds = %58
  %62 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %55, i64 0, i32 3
  br label %68

63:                                               ; preds = %48
  %64 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %55, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = call fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %65, ptr noundef nonnull %3)
  %67 = fadd double %49, %66
  br label %117

68:                                               ; preds = %61, %111
  %69 = phi i64 [ 0, %61 ], [ %113, %111 ]
  %70 = phi i32 [ %52, %61 ], [ %112, %111 ]
  %71 = load ptr, ptr %62, align 8, !tbaa !61
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !57
  %74 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %73, i64 0, i32 1
  %75 = load double, ptr %3, align 16, !tbaa !44
  %76 = load double, ptr %74, align 8, !tbaa !44
  %77 = fsub double %75, %76
  %78 = load double, ptr %45, align 8, !tbaa !44
  %79 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %73, i64 0, i32 1, i64 1
  %80 = load double, ptr %79, align 8, !tbaa !44
  %81 = fsub double %78, %80
  %82 = load double, ptr %46, align 16, !tbaa !44
  %83 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %73, i64 0, i32 1, i64 2
  %84 = load double, ptr %83, align 8, !tbaa !44
  %85 = fsub double %82, %84
  %86 = fmul double %81, %81
  %87 = call double @llvm.fmuladd.f64(double %77, double %77, double %86)
  %88 = call double @llvm.fmuladd.f64(double %85, double %85, double %87)
  %89 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %73, i64 0, i32 2
  %90 = load double, ptr %89, align 8, !tbaa !62
  %91 = fcmp ugt double %88, %90
  br i1 %91, label %111, label %92

92:                                               ; preds = %68
  %93 = load i32, ptr %47, align 8, !tbaa !63
  %94 = icmp ult i32 %70, %93
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = icmp ugt i32 %93, 2147483646
  br i1 %96, label %97, label %99

97:                                               ; preds = %95
  %98 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.13)
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i32, ptr %47, align 8, !tbaa !63
  %101 = shl i32 %100, 1
  store i32 %101, ptr %47, align 8, !tbaa !63
  %102 = load ptr, ptr %43, align 8, !tbaa !56
  %103 = zext i32 %101 to i64
  %104 = shl nuw nsw i64 %103, 3
  %105 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %102, i64 noundef %104, ptr noundef nonnull @.str, i32 noundef 3433, ptr noundef nonnull @.str.2)
  store ptr %105, ptr %43, align 8, !tbaa !56
  br label %106

106:                                              ; preds = %92, %99
  %107 = load ptr, ptr %43, align 8, !tbaa !56
  %108 = add i32 %70, 1
  %109 = zext i32 %70 to i64
  %110 = getelementptr inbounds ptr, ptr %107, i64 %109
  store ptr %73, ptr %110, align 8, !tbaa !57
  br label %111

111:                                              ; preds = %106, %68
  %112 = phi i32 [ %70, %68 ], [ %108, %106 ]
  %113 = add nuw nsw i64 %69, 1
  %114 = load i16, ptr %55, align 8, !tbaa !58
  %115 = sext i16 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %68, label %117, !llvm.loop !94

117:                                              ; preds = %111, %58, %63
  %118 = phi i32 [ %52, %63 ], [ %52, %58 ], [ %112, %111 ]
  %119 = phi double [ %67, %63 ], [ %49, %58 ], [ %49, %111 ]
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %121, label %48, !llvm.loop !95

121:                                              ; preds = %117, %27, %22
  %122 = phi double [ 0.000000e+00, %22 ], [ %35, %27 ], [ %119, %117 ]
  %123 = load ptr, ptr %17, align 8, !tbaa !46
  %124 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %123, i64 0, i32 2
  %125 = load double, ptr %124, align 8, !tbaa !71
  %126 = fadd double %125, 0xBEB0C6F7A0B5ED8D
  %127 = fcmp ogt double %122, %126
  %128 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 13
  %129 = load i32, ptr %128, align 4, !tbaa !80
  %130 = lshr i32 %129, 2
  %131 = and i32 %130, 1
  %132 = xor i32 %131, 1
  %133 = and i32 %129, 4
  %134 = select i1 %127, i32 %132, i32 %133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %134
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL11Blob_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %5 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1
  br i1 %7, label %10, label %9

9:                                                ; preds = %3
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %6)
  br label %18

10:                                               ; preds = %3
  %11 = load double, ptr %8, align 8, !tbaa !44
  store double %11, ptr %4, align 16, !tbaa !44
  %12 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds double, ptr %4, i64 1
  store double %13, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds double, ptr %4, i64 2
  store double %16, ptr %17, align 16, !tbaa !44
  br label %18

18:                                               ; preds = %10, %9
  %19 = getelementptr inbounds double, ptr %0, i64 1
  %20 = getelementptr inbounds double, ptr %0, i64 2
  %21 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load ptr, ptr %21, align 8, !tbaa !46
  %28 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %37, %31 ], [ 0, %26 ]
  %33 = phi ptr [ %38, %31 ], [ %27, %26 ]
  %34 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %35, i64 %32
  call fastcc void @_ZN3povL14element_normalEPdS0_PNS_19Blob_Element_StructE(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %36)
  %37 = add nuw nsw i64 %32, 1
  %38 = load ptr, ptr %21, align 8, !tbaa !46
  %39 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %31, label %118, !llvm.loop !96

43:                                               ; preds = %18
  %44 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  store ptr %24, ptr %45, align 8, !tbaa !57
  %46 = getelementptr inbounds double, ptr %4, i64 1
  %47 = getelementptr inbounds double, ptr %4, i64 2
  %48 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 17
  br label %49

49:                                               ; preds = %43, %115
  %50 = phi i32 [ 1, %43 ], [ %116, %115 ]
  %51 = load ptr, ptr %44, align 8, !tbaa !56
  %52 = add i32 %50, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = load i16, ptr %55, align 8, !tbaa !58
  %57 = icmp slt i16 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load i16, ptr %55, align 8, !tbaa !58
  %60 = icmp sgt i16 %59, 0
  br i1 %60, label %61, label %115

61:                                               ; preds = %58
  %62 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %55, i64 0, i32 3
  br label %66

63:                                               ; preds = %49
  %64 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %55, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  call fastcc void @_ZN3povL14element_normalEPdS0_PNS_19Blob_Element_StructE(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %65)
  br label %115

66:                                               ; preds = %61, %109
  %67 = phi i64 [ 0, %61 ], [ %111, %109 ]
  %68 = phi i32 [ %52, %61 ], [ %110, %109 ]
  %69 = load ptr, ptr %62, align 8, !tbaa !61
  %70 = getelementptr inbounds ptr, ptr %69, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  %72 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %71, i64 0, i32 1
  %73 = load double, ptr %4, align 16, !tbaa !44
  %74 = load double, ptr %72, align 8, !tbaa !44
  %75 = fsub double %73, %74
  %76 = load double, ptr %46, align 8, !tbaa !44
  %77 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %71, i64 0, i32 1, i64 1
  %78 = load double, ptr %77, align 8, !tbaa !44
  %79 = fsub double %76, %78
  %80 = load double, ptr %47, align 16, !tbaa !44
  %81 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %71, i64 0, i32 1, i64 2
  %82 = load double, ptr %81, align 8, !tbaa !44
  %83 = fsub double %80, %82
  %84 = fmul double %79, %79
  %85 = call double @llvm.fmuladd.f64(double %75, double %75, double %84)
  %86 = call double @llvm.fmuladd.f64(double %83, double %83, double %85)
  %87 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %71, i64 0, i32 2
  %88 = load double, ptr %87, align 8, !tbaa !62
  %89 = fcmp ugt double %86, %88
  br i1 %89, label %109, label %90

90:                                               ; preds = %66
  %91 = load i32, ptr %48, align 8, !tbaa !63
  %92 = icmp ult i32 %68, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = icmp ugt i32 %91, 2147483646
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  %96 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.13)
  br label %97

97:                                               ; preds = %95, %93
  %98 = load i32, ptr %48, align 8, !tbaa !63
  %99 = shl i32 %98, 1
  store i32 %99, ptr %48, align 8, !tbaa !63
  %100 = load ptr, ptr %44, align 8, !tbaa !56
  %101 = zext i32 %99 to i64
  %102 = shl nuw nsw i64 %101, 3
  %103 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %100, i64 noundef %102, ptr noundef nonnull @.str, i32 noundef 3433, ptr noundef nonnull @.str.2)
  store ptr %103, ptr %44, align 8, !tbaa !56
  br label %104

104:                                              ; preds = %90, %97
  %105 = load ptr, ptr %44, align 8, !tbaa !56
  %106 = add i32 %68, 1
  %107 = zext i32 %68 to i64
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107
  store ptr %71, ptr %108, align 8, !tbaa !57
  br label %109

109:                                              ; preds = %66, %104
  %110 = phi i32 [ %68, %66 ], [ %106, %104 ]
  %111 = add nuw nsw i64 %67, 1
  %112 = load i16, ptr %55, align 8, !tbaa !58
  %113 = sext i16 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %66, label %115, !llvm.loop !97

115:                                              ; preds = %109, %58, %63
  %116 = phi i32 [ %52, %63 ], [ %52, %58 ], [ %110, %109 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %49, !llvm.loop !98

118:                                              ; preds = %115, %31, %26
  %119 = load double, ptr %0, align 8, !tbaa !44
  %120 = load double, ptr %19, align 8, !tbaa !44
  %121 = fmul double %120, %120
  %122 = call double @llvm.fmuladd.f64(double %119, double %119, double %121)
  %123 = load double, ptr %20, align 8, !tbaa !44
  %124 = call double @llvm.fmuladd.f64(double %123, double %123, double %122)
  %125 = fcmp oeq double %124, 0.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store double 1.000000e+00, ptr %0, align 8, !tbaa !44
  store double 0.000000e+00, ptr %19, align 8, !tbaa !44
  br label %136

127:                                              ; preds = %118
  %128 = call double @sqrt(double noundef %124) #8
  %129 = fdiv double 1.000000e+00, %128
  %130 = load double, ptr %0, align 8, !tbaa !44
  %131 = fmul double %130, %129
  store double %131, ptr %0, align 8, !tbaa !44
  %132 = load double, ptr %19, align 8, !tbaa !44
  %133 = fmul double %129, %132
  store double %133, ptr %19, align 8, !tbaa !44
  %134 = load double, ptr %20, align 8, !tbaa !44
  %135 = fmul double %129, %134
  br label %136

136:                                              ; preds = %127, %126
  %137 = phi double [ %135, %127 ], [ 0.000000e+00, %126 ]
  store double %137, ptr %20, align 8, !tbaa !44
  %138 = load ptr, ptr %5, align 8, !tbaa !38
  %139 = icmp eq ptr %138, null
  br i1 %139, label %155, label %140

140:                                              ; preds = %136
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %138)
  %141 = load double, ptr %0, align 8, !tbaa !44
  %142 = load double, ptr %19, align 8, !tbaa !44
  %143 = fmul double %142, %142
  %144 = call double @llvm.fmuladd.f64(double %141, double %141, double %143)
  %145 = load double, ptr %20, align 8, !tbaa !44
  %146 = call double @llvm.fmuladd.f64(double %145, double %145, double %144)
  %147 = call double @sqrt(double noundef %146) #8
  %148 = fdiv double 1.000000e+00, %147
  %149 = load double, ptr %0, align 8, !tbaa !44
  %150 = fmul double %149, %148
  store double %150, ptr %0, align 8, !tbaa !44
  %151 = load double, ptr %19, align 8, !tbaa !44
  %152 = fmul double %148, %151
  store double %152, ptr %19, align 8, !tbaa !44
  %153 = load double, ptr %20, align 8, !tbaa !44
  %154 = fmul double %148, %153
  store double %154, ptr %20, align 8, !tbaa !44
  br label %155

155:                                              ; preds = %140, %136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN3povL9Copy_BlobEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 152, ptr noundef nonnull @.str, i32 noundef 2184, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 1
  store i32 520, ptr %3, align 8, !tbaa !91
  store ptr @_ZN3pov12Blob_MethodsE, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 13
  %7 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %7, align 4, !tbaa !100
  %8 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %8, align 4, !tbaa !100
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %9, align 4, !tbaa !100
  %10 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !100
  %11 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %11, align 4, !tbaa !100
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %12, align 4, !tbaa !100
  store i32 1024, ptr %6, align 4, !tbaa !80
  store ptr null, ptr %5, align 8, !tbaa !38
  %13 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 14
  %14 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store i32 1, ptr %14, align 8, !tbaa !63
  %15 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 2197, ptr noundef nonnull @.str.2)
  %16 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 16
  store ptr %15, ptr %16, align 8, !tbaa !56
  %17 = load i32, ptr %14, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false), !tbaa.struct !101
  store i32 %17, ptr %14, align 8, !tbaa !63
  store ptr %15, ptr %16, align 8, !tbaa !56
  %18 = load ptr, ptr %5, align 8, !tbaa !38
  %19 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %18)
  store ptr %19, ptr %5, align 8, !tbaa !38
  %20 = load ptr, ptr %13, align 8, !tbaa !46
  %21 = load i32, ptr %20, align 8, !tbaa !103
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !103
  %23 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %26, ptr noundef nonnull @.str, i32 noundef 2258, ptr noundef nonnull @.str.10)
  %28 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 15
  store ptr %27, ptr %28, align 8, !tbaa !104
  %29 = load ptr, ptr %13, align 8, !tbaa !46
  %30 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !51
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %1
  %34 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %43, %35 ]
  %37 = load ptr, ptr %34, align 8, !tbaa !104
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %39)
  %41 = load ptr, ptr %28, align 8, !tbaa !104
  %42 = getelementptr inbounds ptr, ptr %41, i64 %36
  store ptr %40, ptr %42, align 8, !tbaa !57
  %43 = add nuw nsw i64 %36, 1
  %44 = load ptr, ptr %13, align 8, !tbaa !46
  %45 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !51
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %43, %47
  br i1 %48, label %35, label %49, !llvm.loop !105

49:                                               ; preds = %35, %1
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL14Translate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef %2)
  %11 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %11, ptr noundef %2)
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %24, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !104
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  tail call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %23, ptr noundef %2)
  %24 = add nuw nsw i64 %20, 1
  %25 = load ptr, ptr %12, align 8, !tbaa !46
  %26 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !51
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %19, label %30, !llvm.loop !106

30:                                               ; preds = %19, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL11Rotate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef %2)
  %11 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %11, ptr noundef %2)
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %24, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !104
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  tail call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %23, ptr noundef %2)
  %24 = add nuw nsw i64 %20, 1
  %25 = load ptr, ptr %12, align 8, !tbaa !46
  %26 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !51
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %19, label %30, !llvm.loop !106

30:                                               ; preds = %19, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL10Scale_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef %2)
  %11 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %11, ptr noundef %2)
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %24, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !104
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  tail call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %23, ptr noundef %2)
  %24 = add nuw nsw i64 %20, 1
  %25 = load ptr, ptr %12, align 8, !tbaa !46
  %26 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !51
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %19, label %30, !llvm.loop !106

30:                                               ; preds = %19, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %7, ptr %3, align 8, !tbaa !38
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %1)
  %10 = load ptr, ptr %3, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef %1)
  %11 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %23, %18 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !104
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  tail call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %22, ptr noundef %1)
  %23 = add nuw nsw i64 %19, 1
  %24 = load ptr, ptr %11, align 8, !tbaa !46
  %25 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !51
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %18, label %29, !llvm.loop !106

29:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL11Invert_BlobEPNS_13Object_StructE(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !107
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL12Destroy_BlobEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3)
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %16, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !104
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  tail call void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef %15)
  %16 = add nuw nsw i64 %12, 1
  %17 = load ptr, ptr %4, align 8, !tbaa !46
  %18 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !51
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %11, label %22, !llvm.loop !108

22:                                               ; preds = %11, %1
  %23 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %24 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 2357)
  store ptr null, ptr %24, align 8, !tbaa !104
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = load i32, ptr %26, align 8, !tbaa !103
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 8, !tbaa !103
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %22
  %31 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %26, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  tail call void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef %32)
  %33 = load ptr, ptr %23, align 8, !tbaa !46
  %34 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !51
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30, %51
  %38 = phi i64 [ %52, %51 ], [ 0, %30 ]
  %39 = phi ptr [ %53, %51 ], [ %33, %30 ]
  %40 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %41, i64 %38
  %43 = load i16, ptr %42, align 8, !tbaa !74
  switch i16 %43, label %51 [
    i16 2, label %44
    i16 8, label %44
    i16 4, label %44
  ]

44:                                               ; preds = %37, %37, %37
  %45 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %41, i64 %38, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !76
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %46)
  %47 = load ptr, ptr %23, align 8, !tbaa !46
  %48 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  %50 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %49, i64 %38, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  br label %51

51:                                               ; preds = %37, %44
  %52 = add nuw nsw i64 %38, 1
  %53 = load ptr, ptr %23, align 8, !tbaa !46
  %54 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !51
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %37, label %58, !llvm.loop !109

58:                                               ; preds = %51, %30
  %59 = phi ptr [ %33, %30 ], [ %53, %51 ]
  %60 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %61, ptr noundef nonnull @.str, i32 noundef 2383)
  %62 = load ptr, ptr %23, align 8, !tbaa !46
  %63 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %62, i64 0, i32 3
  store ptr null, ptr %63, align 8, !tbaa !52
  %64 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %62, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %65, ptr noundef nonnull @.str, i32 noundef 2386)
  %66 = load ptr, ptr %23, align 8, !tbaa !46
  %67 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %66, i64 0, i32 4
  store ptr null, ptr %67, align 8, !tbaa !47
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %66, ptr noundef nonnull @.str, i32 noundef 2389)
  store ptr null, ptr %23, align 8, !tbaa !46
  br label %68

68:                                               ; preds = %58, %22
  %69 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %70 = load ptr, ptr %69, align 8, !tbaa !56
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %70, ptr noundef nonnull @.str, i32 noundef 2393)
  store ptr null, ptr %69, align 8, !tbaa !56
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2396)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov11Create_BlobEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 152, ptr noundef nonnull @.str, i32 noundef 2184, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 1
  store i32 520, ptr %2, align 8, !tbaa !91
  store ptr @_ZN3pov12Blob_MethodsE, ptr %1, align 8, !tbaa !99
  %3 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 13
  %6 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !100
  %7 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !100
  %8 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !100
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !100
  %10 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !100
  %11 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !100
  store i32 1024, ptr %5, align 4, !tbaa !80
  store ptr null, ptr %4, align 8, !tbaa !38
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i32 1, ptr %13, align 8, !tbaa !63
  %14 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 2197, ptr noundef nonnull @.str.2)
  %15 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 16
  store ptr %14, ptr %15, align 8, !tbaa !56
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov24Create_Blob_List_ElementEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 2300, ptr noundef nonnull @.str.3)
  store i16 0, ptr %1, align 8, !tbaa !74
  %2 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %2, i8 0, i64 124, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov9Make_BlobEPNS_11Blob_StructEdPNS_16Blob_List_StructEi(ptr noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca [3 x double], align 16
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.4)
  br label %11

11:                                               ; preds = %9, %4
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %11, %27
  %14 = phi ptr [ %23, %27 ], [ %2, %11 ]
  %15 = phi i32 [ %21, %27 ], [ 0, %11 ]
  %16 = phi i32 [ %28, %27 ], [ 0, %11 ]
  %17 = load i16, ptr %14, align 8, !tbaa !110
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  %20 = select i1 %19, i32 1, i32 3
  %21 = add nuw nsw i32 %20, %15
  %22 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = icmp ugt i32 %21, 999999
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef 1000000)
  br label %27

27:                                               ; preds = %13, %25
  %28 = add nuw nsw i32 %16, 1
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %30, label %13, !llvm.loop !113

30:                                               ; preds = %27, %11
  %31 = phi i32 [ 0, %11 ], [ %21, %27 ]
  %32 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %33, i64 0, i32 2
  store double %1, ptr %34, align 8, !tbaa !71
  %35 = icmp sgt i32 %3, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %33, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  br label %47

40:                                               ; preds = %104, %30
  %41 = icmp eq i32 %31, 0
  br i1 %41, label %118, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %32, align 8, !tbaa !46
  %44 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = zext i32 %31 to i64
  br label %112

47:                                               ; preds = %36, %104
  %48 = phi ptr [ %38, %36 ], [ %105, %104 ]
  %49 = phi i32 [ 0, %36 ], [ %110, %104 ]
  %50 = phi ptr [ %2, %36 ], [ %107, %104 ]
  %51 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %50, i64 0, i32 5, i64 2
  %52 = load double, ptr %51, align 8, !tbaa !44
  %53 = tail call double @llvm.fabs.f64(double %52)
  %54 = fcmp olt double %53, 0x3E7AD7F29ABCAF48
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %50, i64 0, i32 4
  %57 = load double, ptr %56, align 8, !tbaa !114
  %58 = fcmp olt double %57, 0x3E7AD7F29ABCAF48
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %47
  %60 = tail call noundef i32 (i32, ptr, ...) @_ZN3pov7WarningEjPKcz(i32 noundef 0, ptr noundef nonnull @.str.6)
  br label %61

61:                                               ; preds = %59, %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %48, ptr noundef nonnull align 8 dereferenceable(128) %50, i64 128, i1 false), !tbaa.struct !115
  %62 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !117
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %39, align 4, !tbaa !80
  %67 = or i32 %66, 256
  store i32 %67, ptr %39, align 4, !tbaa !80
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i16, ptr %50, align 8, !tbaa !110
  switch i16 %69, label %102 [
    i16 8, label %70
    i16 2, label %70
    i16 4, label %82
  ]

70:                                               ; preds = %68, %68
  %71 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %50, i64 0, i32 4
  %72 = load double, ptr %71, align 8, !tbaa !114
  %73 = load double, ptr %51, align 8, !tbaa !44
  %74 = fmul double %72, %72
  %75 = fdiv double %73, %74
  %76 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 0, i32 5
  store double %75, ptr %76, align 8, !tbaa !44
  %77 = fmul double %73, -2.000000e+00
  %78 = fdiv double %77, %72
  %79 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 0, i32 5, i64 1
  store double %78, ptr %79, align 8, !tbaa !44
  %80 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 0, i32 5, i64 2
  store double %73, ptr %80, align 8, !tbaa !44
  %81 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 1
  br label %104

82:                                               ; preds = %68
  %83 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %50, i64 0, i32 4
  %84 = load double, ptr %83, align 8, !tbaa !114
  %85 = load double, ptr %51, align 8, !tbaa !44
  %86 = fmul double %84, %84
  %87 = fdiv double %85, %86
  %88 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 0, i32 5
  store double %87, ptr %88, align 8, !tbaa !44
  %89 = fmul double %85, -2.000000e+00
  %90 = fdiv double %89, %84
  %91 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 0, i32 5, i64 1
  store double %90, ptr %91, align 8, !tbaa !44
  %92 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 0, i32 5, i64 2
  store double %85, ptr %92, align 8, !tbaa !44
  %93 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %93, ptr noundef nonnull align 8 dereferenceable(128) %50, i64 128, i1 false), !tbaa.struct !115
  store i16 16, ptr %93, align 8, !tbaa !74
  %94 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 1, i32 5
  store double %87, ptr %94, align 8, !tbaa !44
  %95 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 1, i32 5, i64 1
  store double %90, ptr %95, align 8, !tbaa !44
  %96 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 1, i32 5, i64 2
  store double %85, ptr %96, align 8, !tbaa !44
  %97 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %97, ptr noundef nonnull align 8 dereferenceable(128) %50, i64 128, i1 false), !tbaa.struct !115
  store i16 32, ptr %97, align 8, !tbaa !74
  %98 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 2, i32 5
  store double %87, ptr %98, align 8, !tbaa !44
  %99 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 2, i32 5, i64 1
  store double %90, ptr %99, align 8, !tbaa !44
  %100 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 2, i32 5, i64 2
  store double %85, ptr %100, align 8, !tbaa !44
  %101 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 3
  br label %104

102:                                              ; preds = %68
  %103 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.7)
  br label %104

104:                                              ; preds = %102, %82, %70
  %105 = phi ptr [ %48, %102 ], [ %101, %82 ], [ %81, %70 ]
  %106 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %50, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !112
  %108 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %50, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !118
  tail call void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef %109)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %50, ptr noundef nonnull @.str, i32 noundef 2796)
  %110 = add nuw nsw i32 %49, 1
  %111 = icmp eq i32 %110, %3
  br i1 %111, label %40, label %47, !llvm.loop !119

112:                                              ; preds = %42, %112
  %113 = phi i64 [ 0, %42 ], [ %116, %112 ]
  %114 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %45, i64 %113, i32 1
  %115 = trunc i64 %113 to i32
  store i32 %115, ptr %114, align 4, !tbaa !120
  %116 = add nuw nsw i64 %113, 1
  %117 = icmp eq i64 %116, %46
  br i1 %117, label %118, label %112, !llvm.loop !121

118:                                              ; preds = %112, %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %119 = load ptr, ptr %32, align 8, !tbaa !46
  %120 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %119, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !51
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %178

123:                                              ; preds = %118
  %124 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %125 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  br label %126

126:                                              ; preds = %123, %165
  %127 = phi i64 [ 0, %123 ], [ %172, %165 ]
  %128 = phi ptr [ %119, %123 ], [ %173, %165 ]
  %129 = phi double [ 2.000000e+10, %123 ], [ %171, %165 ]
  %130 = phi double [ 2.000000e+10, %123 ], [ %170, %165 ]
  %131 = phi double [ 2.000000e+10, %123 ], [ %169, %165 ]
  %132 = phi double [ -2.000000e+10, %123 ], [ %168, %165 ]
  %133 = phi double [ -2.000000e+10, %123 ], [ %167, %165 ]
  %134 = phi double [ -2.000000e+10, %123 ], [ %166, %165 ]
  %135 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %128, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !52
  %137 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %136, i64 %127, i32 5, i64 2
  %138 = load double, ptr %137, align 8, !tbaa !44
  %139 = fcmp ogt double %138, 0.000000e+00
  br i1 %139, label %140, label %165

140:                                              ; preds = %126
  %141 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %136, i64 %127
  call fastcc void @_ZN3povL27get_element_bounding_sphereEPNS_19Blob_Element_StructEPdS2_(ptr noundef %141, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %142 = load double, ptr %6, align 8, !tbaa !44
  %143 = tail call double @sqrt(double noundef %142) #8
  %144 = load double, ptr %7, align 16, !tbaa !44
  %145 = fsub double %144, %143
  %146 = fcmp olt double %145, %131
  %147 = select i1 %146, double %145, double %131
  %148 = load double, ptr %124, align 8, !tbaa !44
  %149 = fsub double %148, %143
  %150 = fcmp olt double %149, %130
  %151 = select i1 %150, double %149, double %130
  %152 = load double, ptr %125, align 16, !tbaa !44
  %153 = fsub double %152, %143
  %154 = fcmp olt double %153, %129
  %155 = select i1 %154, double %153, double %129
  %156 = fadd double %143, %144
  %157 = fcmp olt double %134, %156
  %158 = select i1 %157, double %156, double %134
  %159 = fadd double %143, %148
  %160 = fcmp olt double %133, %159
  %161 = select i1 %160, double %159, double %133
  %162 = fadd double %143, %152
  %163 = fcmp olt double %132, %162
  %164 = select i1 %163, double %162, double %132
  br label %165

165:                                              ; preds = %140, %126
  %166 = phi double [ %158, %140 ], [ %134, %126 ]
  %167 = phi double [ %161, %140 ], [ %133, %126 ]
  %168 = phi double [ %164, %140 ], [ %132, %126 ]
  %169 = phi double [ %147, %140 ], [ %131, %126 ]
  %170 = phi double [ %151, %140 ], [ %130, %126 ]
  %171 = phi double [ %155, %140 ], [ %129, %126 ]
  %172 = add nuw nsw i64 %127, 1
  %173 = load ptr, ptr %32, align 8, !tbaa !46
  %174 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %173, i64 0, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !51
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %172, %176
  br i1 %177, label %126, label %178, !llvm.loop !122

178:                                              ; preds = %165, %118
  %179 = phi double [ -2.000000e+10, %118 ], [ %166, %165 ]
  %180 = phi double [ -2.000000e+10, %118 ], [ %167, %165 ]
  %181 = phi double [ -2.000000e+10, %118 ], [ %168, %165 ]
  %182 = phi double [ 2.000000e+10, %118 ], [ %169, %165 ]
  %183 = phi double [ 2.000000e+10, %118 ], [ %170, %165 ]
  %184 = phi double [ 2.000000e+10, %118 ], [ %171, %165 ]
  %185 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 9
  %186 = fptrunc double %182 to float
  store float %186, ptr %185, align 4, !tbaa !100
  %187 = fptrunc double %183 to float
  %188 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %187, ptr %188, align 4, !tbaa !100
  %189 = fptrunc double %184 to float
  %190 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %189, ptr %190, align 4, !tbaa !100
  %191 = fsub double %179, %182
  %192 = fptrunc double %191 to float
  %193 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %192, ptr %193, align 4, !tbaa !100
  %194 = fsub double %180, %183
  %195 = fptrunc double %194 to float
  %196 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %195, ptr %196, align 4, !tbaa !100
  %197 = fsub double %181, %184
  %198 = fptrunc double %197 to float
  %199 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %198, ptr %199, align 4, !tbaa !100
  %200 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %201 = load ptr, ptr %200, align 8, !tbaa !38
  %202 = icmp eq ptr %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %178
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %185, ptr noundef nonnull %201)
  br label %204

204:                                              ; preds = %178, %203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %205 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %206 = load i32, ptr %205, align 4, !tbaa !80
  %207 = and i32 %206, 1024
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %242, label %209

209:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %210 = load ptr, ptr %32, align 8, !tbaa !46
  %211 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %210, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !51
  %213 = shl nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = shl nsw i64 %214, 3
  %216 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %215, ptr noundef nonnull @.str, i32 noundef 2918, ptr noundef nonnull @.str.12)
  store ptr %216, ptr %5, align 8, !tbaa !57
  %217 = icmp sgt i32 %212, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %209
  %219 = zext nneg i32 %212 to i64
  br label %220

220:                                              ; preds = %218, %220
  %221 = phi i64 [ 0, %218 ], [ %236, %220 ]
  %222 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 2924, ptr noundef nonnull @.str.12)
  %223 = load ptr, ptr %5, align 8, !tbaa !57
  %224 = getelementptr inbounds ptr, ptr %223, i64 %221
  store ptr %222, ptr %224, align 8, !tbaa !57
  %225 = load ptr, ptr %5, align 8, !tbaa !57
  %226 = getelementptr inbounds ptr, ptr %225, i64 %221
  %227 = load ptr, ptr %226, align 8, !tbaa !57
  store i16 0, ptr %227, align 8, !tbaa !58
  %228 = load ptr, ptr %32, align 8, !tbaa !46
  %229 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !52
  %231 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %230, i64 %221
  %232 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %227, i64 0, i32 3
  store ptr %231, ptr %232, align 8, !tbaa !61
  %233 = load ptr, ptr %226, align 8, !tbaa !57
  %234 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %233, i64 0, i32 1
  %235 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %233, i64 0, i32 2
  tail call fastcc void @_ZN3povL27get_element_bounding_sphereEPNS_19Blob_Element_StructEPdS2_(ptr noundef %231, ptr noundef nonnull %234, ptr noundef nonnull %235)
  %236 = add nuw nsw i64 %221, 1
  %237 = icmp eq i64 %236, %219
  br i1 %237, label %238, label %220, !llvm.loop !123

238:                                              ; preds = %220, %209
  %239 = load ptr, ptr %32, align 8, !tbaa !46
  %240 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %239, i64 0, i32 5
  call void @_ZN3pov31Build_Bounding_Sphere_HierarchyEPPNS_19BSphere_Tree_StructEiPS2_(ptr noundef nonnull %240, i32 noundef %212, ptr noundef nonnull %5)
  %241 = load ptr, ptr %5, align 8, !tbaa !57
  call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %241, ptr noundef nonnull @.str, i32 noundef 2936)
  store ptr null, ptr %5, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %242

242:                                              ; preds = %238, %204
  ret void
}

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare noundef i32 @_ZN3pov7WarningEjPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov17Test_Blob_OpacityEPNS_11Blob_StructE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = or i32 %10, 128
  store i32 %11, ptr %9, align 4, !tbaa !80
  br label %12

12:                                               ; preds = %8, %5
  %13 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %25

25:                                               ; preds = %23, %37
  %26 = phi i64 [ 0, %23 ], [ %38, %37 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !104
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = tail call noundef i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(ptr noundef nonnull %29)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, ptr %13, align 4, !tbaa !80
  %36 = and i32 %35, -129
  store i32 %36, ptr %13, align 4, !tbaa !80
  br label %37

37:                                               ; preds = %25, %34, %31
  %38 = add nuw nsw i64 %26, 1
  %39 = load ptr, ptr %18, align 8, !tbaa !46
  %40 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !51
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %25, label %44, !llvm.loop !125

44:                                               ; preds = %37, %17, %12
  ret void
}

declare noundef i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov23Determine_Blob_TexturesEPNS_11Blob_StructEPdPiPPNS_14Texture_StructES2_(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [3 x double], align 16
  store ptr %3, ptr %6, align 8, !tbaa !57
  store ptr %4, ptr %7, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !51
  call void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %13 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %14)
  br label %25

17:                                               ; preds = %5
  %18 = load double, ptr %1, align 8, !tbaa !44
  store double %18, ptr %8, align 16, !tbaa !44
  %19 = getelementptr inbounds double, ptr %1, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds double, ptr %8, i64 1
  store double %20, ptr %21, align 8, !tbaa !44
  %22 = getelementptr inbounds double, ptr %1, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds double, ptr %8, i64 2
  store double %23, ptr %24, align 16, !tbaa !44
  br label %25

25:                                               ; preds = %17, %16
  store i32 0, ptr %2, align 4, !tbaa !49
  %26 = load ptr, ptr %9, align 8, !tbaa !46
  %27 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %89

30:                                               ; preds = %25
  %31 = load ptr, ptr %9, align 8, !tbaa !46
  %32 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !51
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %207

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  %37 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 3
  br label %38

38:                                               ; preds = %35, %82
  %39 = phi i64 [ 0, %35 ], [ %83, %82 ]
  %40 = phi ptr [ %31, %35 ], [ %84, %82 ]
  %41 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %42, i64 %39
  %44 = load ptr, ptr %36, align 8, !tbaa !104
  %45 = getelementptr inbounds ptr, ptr %44, i64 %39
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = load ptr, ptr %6, align 8, !tbaa !57
  %48 = load ptr, ptr %7, align 8, !tbaa !57
  %49 = call fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %43, ptr noundef nonnull %8)
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fcmp ueq double %49, 0.000000e+00
  br i1 %51, label %82, label %52

52:                                               ; preds = %38
  %53 = icmp eq ptr %46, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = load ptr, ptr %37, align 8, !tbaa !124
  br label %56

56:                                               ; preds = %52, %54
  %57 = phi ptr [ %55, %54 ], [ %46, %52 ]
  %58 = load i32, ptr %2, align 4, !tbaa !49
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %47, i64 %59
  store ptr %57, ptr %60, align 8, !tbaa !57
  %61 = icmp sgt i32 %58, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = zext nneg i32 %58 to i64
  %64 = getelementptr inbounds ptr, ptr %47, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  br label %69

66:                                               ; preds = %69
  %67 = add nuw nsw i64 %70, 1
  %68 = icmp eq i64 %67, %63
  br i1 %68, label %78, label %69, !llvm.loop !126

69:                                               ; preds = %66, %62
  %70 = phi i64 [ 0, %62 ], [ %67, %66 ]
  %71 = getelementptr inbounds ptr, ptr %47, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = icmp eq ptr %72, %65
  br i1 %73, label %74, label %66

74:                                               ; preds = %69
  %75 = getelementptr inbounds double, ptr %48, i64 %70
  %76 = load double, ptr %75, align 8, !tbaa !44
  %77 = fadd double %50, %76
  store double %77, ptr %75, align 8, !tbaa !44
  br label %82

78:                                               ; preds = %66, %56
  %79 = add nsw i32 %58, 1
  store i32 %79, ptr %2, align 4, !tbaa !49
  %80 = sext i32 %58 to i64
  %81 = getelementptr inbounds double, ptr %48, i64 %80
  store double %50, ptr %81, align 8, !tbaa !44
  br label %82

82:                                               ; preds = %38, %74, %78
  %83 = add nuw nsw i64 %39, 1
  %84 = load ptr, ptr %9, align 8, !tbaa !46
  %85 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %84, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !51
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %83, %87
  br i1 %88, label %38, label %207, !llvm.loop !127

89:                                               ; preds = %25
  %90 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %91 = load ptr, ptr %90, align 8, !tbaa !56
  store ptr %28, ptr %91, align 8, !tbaa !57
  %92 = getelementptr inbounds double, ptr %8, i64 1
  %93 = getelementptr inbounds double, ptr %8, i64 2
  %94 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 17
  %95 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  %96 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 3
  br label %97

97:                                               ; preds = %89, %204
  %98 = phi i32 [ 1, %89 ], [ %205, %204 ]
  %99 = load ptr, ptr %90, align 8, !tbaa !56
  %100 = add i32 %98, -1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !57
  %104 = load i16, ptr %103, align 8, !tbaa !58
  %105 = icmp slt i16 %104, 1
  br i1 %105, label %111, label %106

106:                                              ; preds = %97
  %107 = load i16, ptr %103, align 8, !tbaa !58
  %108 = icmp sgt i16 %107, 0
  br i1 %108, label %109, label %204

109:                                              ; preds = %106
  %110 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %103, i64 0, i32 3
  br label %155

111:                                              ; preds = %97
  %112 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %103, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !61
  %114 = load ptr, ptr %95, align 8, !tbaa !104
  %115 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %113, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !120
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %114, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !57
  %120 = load ptr, ptr %6, align 8, !tbaa !57
  %121 = load ptr, ptr %7, align 8, !tbaa !57
  %122 = call fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %113, ptr noundef nonnull %8)
  %123 = call double @llvm.fabs.f64(double %122)
  %124 = fcmp ueq double %122, 0.000000e+00
  br i1 %124, label %204, label %125

125:                                              ; preds = %111
  %126 = icmp eq ptr %119, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %125
  %128 = load ptr, ptr %96, align 8, !tbaa !124
  br label %129

129:                                              ; preds = %125, %127
  %130 = phi ptr [ %128, %127 ], [ %119, %125 ]
  %131 = load i32, ptr %2, align 4, !tbaa !49
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %120, i64 %132
  store ptr %130, ptr %133, align 8, !tbaa !57
  %134 = icmp sgt i32 %131, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %129
  %136 = zext nneg i32 %131 to i64
  %137 = getelementptr inbounds ptr, ptr %120, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !57
  br label %142

139:                                              ; preds = %142
  %140 = add nuw nsw i64 %143, 1
  %141 = icmp eq i64 %140, %136
  br i1 %141, label %151, label %142, !llvm.loop !126

142:                                              ; preds = %139, %135
  %143 = phi i64 [ 0, %135 ], [ %140, %139 ]
  %144 = getelementptr inbounds ptr, ptr %120, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !57
  %146 = icmp eq ptr %145, %138
  br i1 %146, label %147, label %139

147:                                              ; preds = %142
  %148 = getelementptr inbounds double, ptr %121, i64 %143
  %149 = load double, ptr %148, align 8, !tbaa !44
  %150 = fadd double %123, %149
  store double %150, ptr %148, align 8, !tbaa !44
  br label %204

151:                                              ; preds = %139, %129
  %152 = add nsw i32 %131, 1
  store i32 %152, ptr %2, align 4, !tbaa !49
  %153 = sext i32 %131 to i64
  %154 = getelementptr inbounds double, ptr %121, i64 %153
  store double %123, ptr %154, align 8, !tbaa !44
  br label %204

155:                                              ; preds = %109, %198
  %156 = phi i64 [ 0, %109 ], [ %200, %198 ]
  %157 = phi i32 [ %100, %109 ], [ %199, %198 ]
  %158 = load ptr, ptr %110, align 8, !tbaa !61
  %159 = getelementptr inbounds ptr, ptr %158, i64 %156
  %160 = load ptr, ptr %159, align 8, !tbaa !57
  %161 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %160, i64 0, i32 1
  %162 = load double, ptr %8, align 16, !tbaa !44
  %163 = load double, ptr %161, align 8, !tbaa !44
  %164 = fsub double %162, %163
  %165 = load double, ptr %92, align 8, !tbaa !44
  %166 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %160, i64 0, i32 1, i64 1
  %167 = load double, ptr %166, align 8, !tbaa !44
  %168 = fsub double %165, %167
  %169 = load double, ptr %93, align 16, !tbaa !44
  %170 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %160, i64 0, i32 1, i64 2
  %171 = load double, ptr %170, align 8, !tbaa !44
  %172 = fsub double %169, %171
  %173 = fmul double %168, %168
  %174 = call double @llvm.fmuladd.f64(double %164, double %164, double %173)
  %175 = call double @llvm.fmuladd.f64(double %172, double %172, double %174)
  %176 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %160, i64 0, i32 2
  %177 = load double, ptr %176, align 8, !tbaa !62
  %178 = fcmp ugt double %175, %177
  br i1 %178, label %198, label %179

179:                                              ; preds = %155
  %180 = load i32, ptr %94, align 8, !tbaa !63
  %181 = icmp ult i32 %157, %180
  br i1 %181, label %193, label %182

182:                                              ; preds = %179
  %183 = icmp ugt i32 %180, 2147483646
  br i1 %183, label %184, label %186

184:                                              ; preds = %182
  %185 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.13)
  br label %186

186:                                              ; preds = %184, %182
  %187 = load i32, ptr %94, align 8, !tbaa !63
  %188 = shl i32 %187, 1
  store i32 %188, ptr %94, align 8, !tbaa !63
  %189 = load ptr, ptr %90, align 8, !tbaa !56
  %190 = zext i32 %188 to i64
  %191 = shl nuw nsw i64 %190, 3
  %192 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %189, i64 noundef %191, ptr noundef nonnull @.str, i32 noundef 3433, ptr noundef nonnull @.str.2)
  store ptr %192, ptr %90, align 8, !tbaa !56
  br label %193

193:                                              ; preds = %179, %186
  %194 = load ptr, ptr %90, align 8, !tbaa !56
  %195 = add i32 %157, 1
  %196 = zext i32 %157 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  store ptr %160, ptr %197, align 8, !tbaa !57
  br label %198

198:                                              ; preds = %155, %193
  %199 = phi i32 [ %157, %155 ], [ %195, %193 ]
  %200 = add nuw nsw i64 %156, 1
  %201 = load i16, ptr %103, align 8, !tbaa !58
  %202 = sext i16 %201 to i64
  %203 = icmp slt i64 %200, %202
  br i1 %203, label %155, label %204, !llvm.loop !128

204:                                              ; preds = %198, %106, %151, %147, %111
  %205 = phi i32 [ %100, %111 ], [ %100, %147 ], [ %100, %151 ], [ %100, %106 ], [ %199, %198 ]
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %97, !llvm.loop !129

207:                                              ; preds = %204, %82, %30
  %208 = load i32, ptr %2, align 4, !tbaa !49
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %207
  %211 = load ptr, ptr %7, align 8, !tbaa !57
  %212 = zext nneg i32 %208 to i64
  br label %213

213:                                              ; preds = %210, %213
  %214 = phi i64 [ 0, %210 ], [ %219, %213 ]
  %215 = phi double [ 0.000000e+00, %210 ], [ %218, %213 ]
  %216 = getelementptr inbounds double, ptr %211, i64 %214
  %217 = load double, ptr %216, align 8, !tbaa !44
  %218 = fadd double %215, %217
  %219 = add nuw nsw i64 %214, 1
  %220 = icmp eq i64 %219, %212
  br i1 %220, label %221, label %213, !llvm.loop !130

221:                                              ; preds = %213
  %222 = fcmp ogt double %218, 0.000000e+00
  br i1 %222, label %223, label %234

223:                                              ; preds = %221
  %224 = fdiv double 1.000000e+00, %218
  %225 = load ptr, ptr %7, align 8, !tbaa !57
  %226 = zext nneg i32 %208 to i64
  br label %227

227:                                              ; preds = %223, %227
  %228 = phi i64 [ 0, %223 ], [ %232, %227 ]
  %229 = getelementptr inbounds double, ptr %225, i64 %228
  %230 = load double, ptr %229, align 8, !tbaa !44
  %231 = fmul double %224, %230
  store double %231, ptr %229, align 8, !tbaa !44
  %232 = add nuw nsw i64 %228, 1
  %233 = icmp eq i64 %232, %226
  br i1 %233, label %234, label %227, !llvm.loop !131

234:                                              ; preds = %227, %221, %207
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  ret void
}

declare void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Translate_Blob_ElementEPNS_19Blob_Element_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  call void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1)
  %4 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  %9 = load double, ptr %1, align 8, !tbaa !44
  %10 = load double, ptr %8, align 8, !tbaa !44
  %11 = fadd double %9, %10
  store double %11, ptr %8, align 8, !tbaa !44
  %12 = getelementptr inbounds double, ptr %1, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !44
  %16 = fadd double %13, %15
  store double %16, ptr %14, align 8, !tbaa !44
  %17 = getelementptr inbounds double, ptr %1, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !44
  %21 = fadd double %18, %20
  store double %21, ptr %19, align 8, !tbaa !44
  br label %24

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8, !tbaa !76
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %23, ptr noundef nonnull %3)
  br label %24

24:                                               ; preds = %22, %7
  %25 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !117
  call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %26, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  ret void
}

declare void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Transform_Blob_ElementEPNS_19Blob_Element_StructEPNS_16Transform_StructE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store i16 8, ptr %0, align 8, !tbaa !74
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %7, ptr %3, align 8, !tbaa !76
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !76
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1)
  %10 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  tail call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %11, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov19Rotate_Blob_ElementEPNS_19Blob_Element_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  call void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1)
  %4 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %3)
  br label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !tbaa !76
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef nonnull %3)
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %13, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  ret void
}

declare void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov18Scale_Blob_ElementEPNS_19Blob_Element_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  %4 = load double, ptr %1, align 8, !tbaa !44
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !44
  %7 = fcmp une double %4, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds double, ptr %1, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !44
  %11 = fcmp une double %4, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i16 8, ptr %0, align 8, !tbaa !74
  %17 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %17, ptr %13, align 8, !tbaa !76
  br label %18

18:                                               ; preds = %12, %16, %8
  call void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef nonnull %1)
  %19 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  %24 = load double, ptr %1, align 8, !tbaa !44
  %25 = load double, ptr %23, align 8, !tbaa !44
  %26 = fmul double %24, %25
  store double %26, ptr %23, align 8, !tbaa !44
  %27 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !44
  %29 = fmul double %24, %28
  store double %29, ptr %27, align 8, !tbaa !44
  %30 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 2
  %31 = load double, ptr %30, align 8, !tbaa !44
  %32 = fmul double %24, %31
  store double %32, ptr %30, align 8, !tbaa !44
  %33 = load double, ptr %1, align 8, !tbaa !44
  %34 = fmul double %33, %33
  %35 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %36 = load double, ptr %35, align 8, !tbaa !132
  %37 = fmul double %36, %34
  store double %37, ptr %35, align 8, !tbaa !132
  br label %40

38:                                               ; preds = %18
  %39 = load ptr, ptr %19, align 8, !tbaa !76
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %39, ptr noundef nonnull %3)
  br label %40

40:                                               ; preds = %38, %22
  %41 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !117
  call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %42, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  ret void
}

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #1

declare void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov19Invert_Blob_ElementEPNS_19Blob_Element_StructE(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5, i64 2
  %3 = load double, ptr %2, align 8, !tbaa !44
  %4 = fneg double %3
  store double %4, ptr %2, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov32Create_Blob_Element_Texture_ListEPNS_11Blob_StructEPNS_16Blob_List_StructEi(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.4)
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %7, %23
  %10 = phi ptr [ %19, %23 ], [ %1, %7 ]
  %11 = phi i32 [ %17, %23 ], [ 0, %7 ]
  %12 = phi i32 [ %24, %23 ], [ 0, %7 ]
  %13 = load i16, ptr %10, align 8, !tbaa !110
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i32 1, i32 3
  %17 = add nuw nsw i32 %16, %11
  %18 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = icmp ugt i32 %17, 999999
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef 1000000)
  br label %23

23:                                               ; preds = %9, %21
  %24 = add nuw nsw i32 %12, 1
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %9, !llvm.loop !133

26:                                               ; preds = %23, %7
  %27 = phi i32 [ 0, %7 ], [ %17, %23 ]
  %28 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 3507, ptr noundef nonnull @.str.8)
  %29 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  store ptr %28, ptr %29, align 8, !tbaa !46
  store i32 1, ptr %28, align 8, !tbaa !103
  %30 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %28, i64 0, i32 1
  store i32 %27, ptr %30, align 4, !tbaa !51
  %31 = zext nneg i32 %27 to i64
  %32 = shl nuw nsw i64 %31, 7
  %33 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %32, ptr noundef nonnull @.str, i32 noundef 3513, ptr noundef nonnull @.str.8)
  %34 = load ptr, ptr %29, align 8, !tbaa !46
  %35 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %34, i64 0, i32 3
  store ptr %33, ptr %35, align 8, !tbaa !52
  %36 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %34, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !51
  %38 = shl nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, 24
  %41 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %40, ptr noundef nonnull @.str, i32 noundef 3515, ptr noundef nonnull @.str.9)
  %42 = load ptr, ptr %29, align 8, !tbaa !46
  %43 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %42, i64 0, i32 4
  store ptr %41, ptr %43, align 8, !tbaa !47
  %44 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %42, i64 0, i32 5
  store ptr null, ptr %44, align 8, !tbaa !50
  %45 = icmp eq i32 %27, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %26
  %47 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %42, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = zext i32 %27 to i64
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 0, %46 ], [ %54, %50 ]
  %52 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 %51
  store i16 0, ptr %52, align 8, !tbaa !74
  %53 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 %51, i32 1
  %54 = add nuw nsw i64 %51, 1
  %55 = icmp eq i64 %54, %49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %53, i8 0, i64 124, i1 false)
  br i1 %55, label %56, label %50, !llvm.loop !134

56:                                               ; preds = %50, %26
  %57 = shl nuw nsw i64 %31, 3
  %58 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %57, ptr noundef nonnull @.str, i32 noundef 3528, ptr noundef nonnull @.str.10)
  %59 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  store ptr %58, ptr %59, align 8, !tbaa !104
  %60 = icmp eq i32 %27, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = zext i32 %27 to i64
  br label %65

63:                                               ; preds = %65, %56
  %64 = icmp sgt i32 %2, 0
  br i1 %64, label %71, label %108

65:                                               ; preds = %61, %65
  %66 = phi i64 [ 0, %61 ], [ %69, %65 ]
  %67 = load ptr, ptr %59, align 8, !tbaa !104
  %68 = getelementptr inbounds ptr, ptr %67, i64 %66
  store ptr null, ptr %68, align 8, !tbaa !57
  %69 = add nuw nsw i64 %66, 1
  %70 = icmp eq i64 %69, %62
  br i1 %70, label %63, label %65, !llvm.loop !135

71:                                               ; preds = %63, %102
  %72 = phi i32 [ %103, %102 ], [ 0, %63 ]
  %73 = phi i32 [ %106, %102 ], [ 0, %63 ]
  %74 = phi ptr [ %105, %102 ], [ %1, %63 ]
  %75 = load i16, ptr %74, align 8, !tbaa !110
  switch i16 %75, label %102 [
    i16 8, label %76
    i16 2, label %76
    i16 4, label %84
  ]

76:                                               ; preds = %71, %71
  %77 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %74, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !118
  %79 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %78)
  %80 = load ptr, ptr %59, align 8, !tbaa !104
  %81 = add nsw i32 %72, 1
  %82 = sext i32 %72 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  store ptr %79, ptr %83, align 8, !tbaa !57
  br label %102

84:                                               ; preds = %71
  %85 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %74, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !118
  %87 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %86)
  %88 = load ptr, ptr %59, align 8, !tbaa !104
  %89 = sext i32 %72 to i64
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  store ptr %87, ptr %90, align 8, !tbaa !57
  %91 = load ptr, ptr %85, align 8, !tbaa !118
  %92 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %91)
  %93 = load ptr, ptr %59, align 8, !tbaa !104
  %94 = getelementptr ptr, ptr %93, i64 %89
  %95 = getelementptr ptr, ptr %94, i64 1
  store ptr %92, ptr %95, align 8, !tbaa !57
  %96 = load ptr, ptr %85, align 8, !tbaa !118
  %97 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %96)
  %98 = load ptr, ptr %59, align 8, !tbaa !104
  %99 = add nsw i32 %72, 3
  %100 = getelementptr ptr, ptr %98, i64 %89
  %101 = getelementptr ptr, ptr %100, i64 2
  store ptr %97, ptr %101, align 8, !tbaa !57
  br label %102

102:                                              ; preds = %71, %84, %76
  %103 = phi i32 [ %72, %71 ], [ %99, %84 ], [ %81, %76 ]
  %104 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %74, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !112
  %106 = add nuw nsw i32 %73, 1
  %107 = icmp eq i32 %106, %2
  br i1 %107, label %108, label %71, !llvm.loop !136

108:                                              ; preds = %102, %63
  ret void
}

declare noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare noundef i32 @_ZN3pov16Solve_PolynomialEiPdS0_id(i32 noundef, ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN3povL17intersect_elementEPdS0_PNS_19Blob_Element_StructEdS0_S0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 14), align 16, !tbaa !34
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 14), align 16, !tbaa !34
  store double 2.000000e+10, ptr %3, align 8, !tbaa !44
  store double -2.000000e+10, ptr %4, align 8, !tbaa !44
  %14 = load i16, ptr %2, align 8, !tbaa !74
  switch i16 %14, label %386 [
    i16 2, label %15
    i16 8, label %61
    i16 16, label %124
    i16 32, label %124
    i16 4, label %230
  ]

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2
  %17 = load double, ptr %0, align 8, !tbaa !44
  %18 = load double, ptr %16, align 8, !tbaa !44
  %19 = fsub double %17, %18
  %20 = getelementptr inbounds double, ptr %0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !44
  %24 = fsub double %21, %23
  %25 = getelementptr inbounds double, ptr %0, i64 2
  %26 = load double, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 2
  %28 = load double, ptr %27, align 8, !tbaa !44
  %29 = fsub double %26, %28
  %30 = load double, ptr %1, align 8, !tbaa !44
  %31 = getelementptr inbounds double, ptr %1, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !44
  %33 = fmul double %24, %32
  %34 = tail call double @llvm.fmuladd.f64(double %19, double %30, double %33)
  %35 = getelementptr inbounds double, ptr %1, i64 2
  %36 = load double, ptr %35, align 8, !tbaa !44
  %37 = tail call double @llvm.fmuladd.f64(double %29, double %36, double %34)
  %38 = fmul double %24, %24
  %39 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %29, double %29, double %39)
  %41 = fneg double %40
  %42 = tail call double @llvm.fmuladd.f64(double %37, double %37, double %41)
  %43 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %44 = load double, ptr %43, align 8, !tbaa !132
  %45 = fadd double %44, %42
  %46 = fcmp olt double %45, 0x3E7AD7F29ABCAF48
  br i1 %46, label %390, label %47

47:                                               ; preds = %15
  %48 = tail call double @sqrt(double noundef %45) #8
  %49 = fsub double %48, %37
  %50 = fcmp olt double %49, 1.000000e-02
  %51 = select i1 %50, double 0.000000e+00, double %49
  store double %51, ptr %4, align 8, !tbaa !44
  %52 = fneg double %37
  %53 = fsub double %52, %48
  %54 = fcmp olt double %53, 1.000000e-02
  %55 = select i1 %54, double 0.000000e+00, double %53
  store double %55, ptr %3, align 8, !tbaa !44
  %56 = load double, ptr %4, align 8, !tbaa !44
  %57 = fcmp oeq double %56, %55
  br i1 %57, label %390, label %58

58:                                               ; preds = %47
  %59 = fcmp olt double %56, %55
  br i1 %59, label %60, label %386

60:                                               ; preds = %58
  store double %56, ptr %3, align 8, !tbaa !44
  store double %55, ptr %4, align 8, !tbaa !44
  br label %386

61:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  %62 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %63)
  %64 = load ptr, ptr %62, align 8, !tbaa !76
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %64)
  %65 = load double, ptr %11, align 16, !tbaa !44
  %66 = getelementptr inbounds double, ptr %11, i64 1
  %67 = load double, ptr %66, align 8, !tbaa !44
  %68 = fmul double %67, %67
  %69 = call double @llvm.fmuladd.f64(double %65, double %65, double %68)
  %70 = getelementptr inbounds double, ptr %11, i64 2
  %71 = load double, ptr %70, align 16, !tbaa !44
  %72 = call double @llvm.fmuladd.f64(double %71, double %71, double %69)
  %73 = call double @sqrt(double noundef %72) #8
  %74 = fdiv double 1.000000e+00, %73
  %75 = load double, ptr %11, align 16, !tbaa !44
  %76 = fmul double %75, %74
  store double %76, ptr %11, align 16, !tbaa !44
  %77 = load double, ptr %66, align 8, !tbaa !44
  %78 = fmul double %74, %77
  store double %78, ptr %66, align 8, !tbaa !44
  %79 = load double, ptr %70, align 16, !tbaa !44
  %80 = fmul double %74, %79
  store double %80, ptr %70, align 16, !tbaa !44
  %81 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2
  %82 = load double, ptr %10, align 16, !tbaa !44
  %83 = load double, ptr %81, align 8, !tbaa !44
  %84 = fsub double %82, %83
  %85 = getelementptr inbounds double, ptr %10, i64 1
  %86 = load double, ptr %85, align 8, !tbaa !44
  %87 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 1
  %88 = load double, ptr %87, align 8, !tbaa !44
  %89 = fsub double %86, %88
  %90 = getelementptr inbounds double, ptr %10, i64 2
  %91 = load double, ptr %90, align 16, !tbaa !44
  %92 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 2
  %93 = load double, ptr %92, align 8, !tbaa !44
  %94 = fsub double %91, %93
  %95 = fmul double %78, %89
  %96 = call double @llvm.fmuladd.f64(double %84, double %76, double %95)
  %97 = call double @llvm.fmuladd.f64(double %94, double %80, double %96)
  %98 = fmul double %89, %89
  %99 = call double @llvm.fmuladd.f64(double %84, double %84, double %98)
  %100 = call double @llvm.fmuladd.f64(double %94, double %94, double %99)
  %101 = fneg double %100
  %102 = call double @llvm.fmuladd.f64(double %97, double %97, double %101)
  %103 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %104 = load double, ptr %103, align 8, !tbaa !132
  %105 = fadd double %104, %102
  %106 = fcmp olt double %105, 0x3E7AD7F29ABCAF48
  br i1 %106, label %389, label %107

107:                                              ; preds = %61
  %108 = call double @sqrt(double noundef %105) #8
  %109 = fsub double %108, %97
  %110 = fdiv double %109, %73
  %111 = fcmp olt double %110, 1.000000e-02
  %112 = select i1 %111, double 0.000000e+00, double %110
  store double %112, ptr %4, align 8, !tbaa !44
  %113 = fneg double %97
  %114 = fsub double %113, %108
  %115 = fdiv double %114, %73
  %116 = fcmp olt double %115, 1.000000e-02
  %117 = select i1 %116, double 0.000000e+00, double %115
  store double %117, ptr %3, align 8, !tbaa !44
  %118 = load double, ptr %4, align 8, !tbaa !44
  %119 = fcmp oeq double %118, %117
  br i1 %119, label %389, label %120

120:                                              ; preds = %107
  %121 = fcmp olt double %118, %117
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  store double %118, ptr %3, align 8, !tbaa !44
  store double %117, ptr %4, align 8, !tbaa !44
  br label %123

123:                                              ; preds = %120, %122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  br label %386

124:                                              ; preds = %5, %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  %125 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %126 = load ptr, ptr %125, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %126)
  %127 = load ptr, ptr %125, align 8, !tbaa !76
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %127)
  %128 = load double, ptr %9, align 16, !tbaa !44
  %129 = getelementptr inbounds double, ptr %9, i64 1
  %130 = load double, ptr %129, align 8, !tbaa !44
  %131 = fmul double %130, %130
  %132 = call double @llvm.fmuladd.f64(double %128, double %128, double %131)
  %133 = getelementptr inbounds double, ptr %9, i64 2
  %134 = load double, ptr %133, align 16, !tbaa !44
  %135 = call double @llvm.fmuladd.f64(double %134, double %134, double %132)
  %136 = call double @sqrt(double noundef %135) #8
  %137 = fdiv double 1.000000e+00, %136
  %138 = load double, ptr %9, align 16, !tbaa !44
  %139 = fmul double %138, %137
  store double %139, ptr %9, align 16, !tbaa !44
  %140 = load double, ptr %129, align 8, !tbaa !44
  %141 = fmul double %137, %140
  store double %141, ptr %129, align 8, !tbaa !44
  %142 = load double, ptr %133, align 16, !tbaa !44
  %143 = fmul double %137, %142
  store double %143, ptr %133, align 16, !tbaa !44
  %144 = load i16, ptr %2, align 8, !tbaa !74
  %145 = icmp eq i16 %144, 16
  br i1 %145, label %146, label %186

146:                                              ; preds = %124
  %147 = load double, ptr %8, align 16, !tbaa !44
  %148 = getelementptr inbounds double, ptr %8, i64 1
  %149 = load double, ptr %148, align 8, !tbaa !44
  %150 = fmul double %141, %149
  %151 = call double @llvm.fmuladd.f64(double %147, double %139, double %150)
  %152 = getelementptr inbounds double, ptr %8, i64 2
  %153 = load double, ptr %152, align 16, !tbaa !44
  %154 = call double @llvm.fmuladd.f64(double %153, double %143, double %151)
  %155 = fmul double %149, %149
  %156 = call double @llvm.fmuladd.f64(double %147, double %147, double %155)
  %157 = call double @llvm.fmuladd.f64(double %153, double %153, double %156)
  %158 = fneg double %157
  %159 = call double @llvm.fmuladd.f64(double %154, double %154, double %158)
  %160 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %161 = load double, ptr %160, align 8, !tbaa !132
  %162 = fadd double %161, %159
  %163 = fcmp olt double %162, 0x3E7AD7F29ABCAF48
  br i1 %163, label %229, label %164

164:                                              ; preds = %146
  %165 = call double @sqrt(double noundef %162) #8
  %166 = fsub double %165, %154
  store double %166, ptr %4, align 8, !tbaa !44
  %167 = fneg double %154
  %168 = fsub double %167, %165
  store double %168, ptr %3, align 8, !tbaa !44
  %169 = load double, ptr %4, align 8, !tbaa !44
  %170 = fcmp olt double %169, %168
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  store double %169, ptr %3, align 8, !tbaa !44
  store double %168, ptr %4, align 8, !tbaa !44
  br label %172

172:                                              ; preds = %171, %164
  %173 = load double, ptr %152, align 16, !tbaa !44
  %174 = load double, ptr %3, align 8, !tbaa !44
  %175 = load double, ptr %133, align 16, !tbaa !44
  %176 = call double @llvm.fmuladd.f64(double %174, double %175, double %173)
  %177 = load double, ptr %4, align 8, !tbaa !44
  %178 = call double @llvm.fmuladd.f64(double %177, double %175, double %173)
  %179 = fcmp oge double %176, 0.000000e+00
  %180 = fcmp oge double %178, 0.000000e+00
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %229, label %182

182:                                              ; preds = %172
  %183 = fcmp olt double %176, 0.000000e+00
  %184 = fcmp olt double %178, 0.000000e+00
  %185 = select i1 %183, i1 %184, i1 false
  br i1 %185, label %381, label %371

186:                                              ; preds = %124
  %187 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %188 = load double, ptr %187, align 8, !tbaa !77
  %189 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  %190 = load double, ptr %189, align 16, !tbaa !44
  %191 = fsub double %190, %188
  store double %191, ptr %189, align 16, !tbaa !44
  %192 = load double, ptr %8, align 16, !tbaa !44
  %193 = getelementptr inbounds double, ptr %8, i64 1
  %194 = load double, ptr %193, align 8, !tbaa !44
  %195 = fmul double %141, %194
  %196 = call double @llvm.fmuladd.f64(double %192, double %139, double %195)
  %197 = call double @llvm.fmuladd.f64(double %191, double %143, double %196)
  %198 = fmul double %194, %194
  %199 = call double @llvm.fmuladd.f64(double %192, double %192, double %198)
  %200 = call double @llvm.fmuladd.f64(double %191, double %191, double %199)
  %201 = fneg double %200
  %202 = call double @llvm.fmuladd.f64(double %197, double %197, double %201)
  %203 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %204 = load double, ptr %203, align 8, !tbaa !132
  %205 = fadd double %204, %202
  %206 = fcmp olt double %205, 0x3E7AD7F29ABCAF48
  br i1 %206, label %229, label %207

207:                                              ; preds = %186
  %208 = call double @sqrt(double noundef %205) #8
  %209 = fsub double %208, %197
  store double %209, ptr %4, align 8, !tbaa !44
  %210 = fneg double %197
  %211 = fsub double %210, %208
  store double %211, ptr %3, align 8, !tbaa !44
  %212 = load double, ptr %4, align 8, !tbaa !44
  %213 = fcmp olt double %212, %211
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  store double %212, ptr %3, align 8, !tbaa !44
  store double %211, ptr %4, align 8, !tbaa !44
  br label %215

215:                                              ; preds = %214, %207
  %216 = load double, ptr %189, align 16, !tbaa !44
  %217 = load double, ptr %3, align 8, !tbaa !44
  %218 = load double, ptr %133, align 16, !tbaa !44
  %219 = call double @llvm.fmuladd.f64(double %217, double %218, double %216)
  %220 = load double, ptr %4, align 8, !tbaa !44
  %221 = call double @llvm.fmuladd.f64(double %220, double %218, double %216)
  %222 = fcmp ole double %219, 0.000000e+00
  %223 = fcmp ole double %221, 0.000000e+00
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %229, label %225

225:                                              ; preds = %215
  %226 = fcmp ogt double %219, 0.000000e+00
  %227 = fcmp ogt double %221, 0.000000e+00
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %381, label %371

229:                                              ; preds = %146, %172, %186, %215
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  br label %390

230:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %231 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %232 = load ptr, ptr %231, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %232)
  %233 = load ptr, ptr %231, align 8, !tbaa !76
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %233)
  %234 = load double, ptr %7, align 16, !tbaa !44
  %235 = getelementptr inbounds double, ptr %7, i64 1
  %236 = load double, ptr %235, align 8, !tbaa !44
  %237 = fmul double %236, %236
  %238 = call double @llvm.fmuladd.f64(double %234, double %234, double %237)
  %239 = getelementptr inbounds double, ptr %7, i64 2
  %240 = load double, ptr %239, align 16, !tbaa !44
  %241 = call double @llvm.fmuladd.f64(double %240, double %240, double %238)
  %242 = call double @sqrt(double noundef %241) #8
  %243 = fdiv double 1.000000e+00, %242
  %244 = load double, ptr %7, align 16, !tbaa !44
  %245 = fmul double %244, %243
  store double %245, ptr %7, align 16, !tbaa !44
  %246 = load double, ptr %235, align 8, !tbaa !44
  %247 = fmul double %243, %246
  store double %247, ptr %235, align 8, !tbaa !44
  %248 = load double, ptr %239, align 16, !tbaa !44
  %249 = fmul double %243, %248
  store double %249, ptr %239, align 16, !tbaa !44
  %250 = fmul double %247, %247
  %251 = call double @llvm.fmuladd.f64(double %245, double %245, double %250)
  %252 = fcmp ogt double %251, 0x3E7AD7F29ABCAF48
  br i1 %252, label %253, label %307

253:                                              ; preds = %230
  %254 = load double, ptr %6, align 16, !tbaa !44
  %255 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %256 = load double, ptr %255, align 8, !tbaa !44
  %257 = fmul double %247, %256
  %258 = call double @llvm.fmuladd.f64(double %254, double %245, double %257)
  %259 = fmul double %256, %256
  %260 = call double @llvm.fmuladd.f64(double %254, double %254, double %259)
  %261 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %262 = load double, ptr %261, align 8, !tbaa !132
  %263 = fsub double %260, %262
  %264 = fneg double %251
  %265 = fmul double %263, %264
  %266 = call double @llvm.fmuladd.f64(double %258, double %258, double %265)
  %267 = fcmp ogt double %266, 0x3E7AD7F29ABCAF48
  br i1 %267, label %268, label %307

268:                                              ; preds = %253
  %269 = call double @sqrt(double noundef %266) #8
  %270 = fneg double %258
  %271 = fsub double %269, %258
  %272 = fdiv double %271, %251
  %273 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %274 = load double, ptr %273, align 16, !tbaa !44
  %275 = load double, ptr %239, align 16, !tbaa !44
  %276 = call double @llvm.fmuladd.f64(double %272, double %275, double %274)
  %277 = fcmp ult double %276, 0.000000e+00
  br i1 %277, label %290, label %278

278:                                              ; preds = %268
  %279 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %280 = load double, ptr %279, align 8, !tbaa !77
  %281 = fcmp ugt double %276, %280
  br i1 %281, label %290, label %282

282:                                              ; preds = %278
  %283 = load double, ptr %3, align 8, !tbaa !44
  %284 = fcmp olt double %272, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store double %272, ptr %3, align 8, !tbaa !44
  br label %286

286:                                              ; preds = %285, %282
  %287 = load double, ptr %4, align 8, !tbaa !44
  %288 = fcmp ogt double %272, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store double %272, ptr %4, align 8, !tbaa !44
  br label %290

290:                                              ; preds = %289, %286, %278, %268
  %291 = fsub double %270, %269
  %292 = fdiv double %291, %251
  %293 = call double @llvm.fmuladd.f64(double %292, double %275, double %274)
  %294 = fcmp ult double %293, 0.000000e+00
  br i1 %294, label %307, label %295

295:                                              ; preds = %290
  %296 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %297 = load double, ptr %296, align 8, !tbaa !77
  %298 = fcmp ugt double %293, %297
  br i1 %298, label %307, label %299

299:                                              ; preds = %295
  %300 = load double, ptr %3, align 8, !tbaa !44
  %301 = fcmp olt double %292, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  store double %292, ptr %3, align 8, !tbaa !44
  br label %303

303:                                              ; preds = %302, %299
  %304 = load double, ptr %4, align 8, !tbaa !44
  %305 = fcmp ogt double %292, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store double %292, ptr %4, align 8, !tbaa !44
  br label %307

307:                                              ; preds = %306, %303, %295, %290, %253, %230
  %308 = load double, ptr %239, align 16, !tbaa !44
  %309 = call double @llvm.fabs.f64(double %308)
  %310 = fcmp ogt double %309, 0x3E7AD7F29ABCAF48
  br i1 %310, label %311, label %355

311:                                              ; preds = %307
  %312 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %313 = load double, ptr %312, align 16, !tbaa !44
  %314 = fneg double %313
  %315 = fdiv double %314, %308
  %316 = load double, ptr %6, align 16, !tbaa !44
  %317 = load double, ptr %7, align 16, !tbaa !44
  %318 = call double @llvm.fmuladd.f64(double %315, double %317, double %316)
  %319 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %320 = load double, ptr %319, align 8, !tbaa !44
  %321 = load double, ptr %235, align 8, !tbaa !44
  %322 = call double @llvm.fmuladd.f64(double %315, double %321, double %320)
  %323 = fmul double %322, %322
  %324 = call double @llvm.fmuladd.f64(double %318, double %318, double %323)
  %325 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %326 = load double, ptr %325, align 8, !tbaa !132
  %327 = fcmp ugt double %324, %326
  br i1 %327, label %336, label %328

328:                                              ; preds = %311
  %329 = load double, ptr %3, align 8, !tbaa !44
  %330 = fcmp olt double %315, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  store double %315, ptr %3, align 8, !tbaa !44
  br label %332

332:                                              ; preds = %331, %328
  %333 = load double, ptr %4, align 8, !tbaa !44
  %334 = fcmp ogt double %315, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  store double %315, ptr %4, align 8, !tbaa !44
  br label %336

336:                                              ; preds = %335, %332, %311
  %337 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %338 = load double, ptr %337, align 8, !tbaa !77
  %339 = fsub double %338, %313
  %340 = fdiv double %339, %308
  %341 = call double @llvm.fmuladd.f64(double %340, double %317, double %316)
  %342 = call double @llvm.fmuladd.f64(double %340, double %321, double %320)
  %343 = fmul double %342, %342
  %344 = call double @llvm.fmuladd.f64(double %341, double %341, double %343)
  %345 = load double, ptr %325, align 8, !tbaa !132
  %346 = fcmp ugt double %344, %345
  br i1 %346, label %355, label %347

347:                                              ; preds = %336
  %348 = load double, ptr %3, align 8, !tbaa !44
  %349 = fcmp olt double %340, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store double %340, ptr %3, align 8, !tbaa !44
  br label %351

351:                                              ; preds = %350, %347
  %352 = load double, ptr %4, align 8, !tbaa !44
  %353 = fcmp ogt double %340, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  store double %340, ptr %4, align 8, !tbaa !44
  br label %355

355:                                              ; preds = %354, %351, %336, %307
  %356 = load double, ptr %3, align 8, !tbaa !44
  %357 = fdiv double %356, %242
  store double %357, ptr %3, align 8, !tbaa !44
  %358 = load double, ptr %4, align 8, !tbaa !44
  %359 = fdiv double %358, %242
  store double %359, ptr %4, align 8, !tbaa !44
  %360 = load double, ptr %3, align 8, !tbaa !44
  %361 = fcmp olt double %360, 1.000000e-02
  br i1 %361, label %362, label %363

362:                                              ; preds = %355
  store double 0.000000e+00, ptr %3, align 8, !tbaa !44
  br label %363

363:                                              ; preds = %362, %355
  %364 = load double, ptr %4, align 8, !tbaa !44
  %365 = fcmp olt double %364, 1.000000e-02
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  store double 0.000000e+00, ptr %4, align 8, !tbaa !44
  br label %367

367:                                              ; preds = %363, %366
  %368 = load double, ptr %3, align 8, !tbaa !44
  %369 = load double, ptr %4, align 8, !tbaa !44
  %370 = fcmp ult double %368, %369
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  br i1 %370, label %386, label %390

371:                                              ; preds = %225, %182
  %372 = phi double [ %173, %182 ], [ %216, %225 ]
  %373 = phi double [ %175, %182 ], [ %218, %225 ]
  %374 = phi i1 [ %179, %182 ], [ %222, %225 ]
  %375 = fneg double %372
  %376 = fdiv double %375, %373
  %377 = fcmp olt double %376, 1.000000e-02
  %378 = select i1 %377, double 0.000000e+00, double %376
  %379 = select i1 %374, ptr %3, ptr %4
  store double %378, ptr %379, align 8, !tbaa !44
  %380 = load double, ptr %3, align 8, !tbaa !44
  br label %381

381:                                              ; preds = %371, %225, %182
  %382 = phi double [ %174, %182 ], [ %217, %225 ], [ %380, %371 ]
  %383 = fdiv double %382, %136
  store double %383, ptr %3, align 8, !tbaa !44
  %384 = load double, ptr %4, align 8, !tbaa !44
  %385 = fdiv double %384, %136
  store double %385, ptr %4, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  br label %386

386:                                              ; preds = %381, %123, %60, %58, %367, %5
  %387 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 15), align 8, !tbaa !34
  %388 = add nsw i64 %387, 1
  store i64 %388, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 15), align 8, !tbaa !34
  br label %390

389:                                              ; preds = %107, %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  br label %390

390:                                              ; preds = %15, %47, %229, %389, %367, %386
  %391 = phi i32 [ 1, %386 ], [ 0, %229 ], [ 0, %367 ], [ 0, %389 ], [ 0, %47 ], [ 0, %15 ]
  ret i32 %391
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3povL10insert_hitEPNS_19Blob_Element_StructEddPNS_20Blob_Interval_StructEPj(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = load i16, ptr %0, align 8, !tbaa !74
  %7 = sext i16 %6 to i32
  %8 = load i32, ptr %4, align 4, !tbaa !49
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %9
  store i32 %7, ptr %10, align 8, !tbaa !72
  %11 = load i32, ptr %4, align 4, !tbaa !49
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %12, i32 1
  store double %1, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %12, i32 2
  store ptr %0, ptr %14, align 8, !tbaa !73
  br label %15

15:                                               ; preds = %15, %5
  %16 = phi i32 [ 0, %5 ], [ %21, %15 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %17, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !66
  %20 = fcmp olt double %19, %1
  %21 = add i32 %16, 1
  br i1 %20, label %15, label %22, !llvm.loop !137

22:                                               ; preds = %15
  %23 = icmp ult i32 %16, %11
  br i1 %23, label %24, label %67

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %17
  %26 = add i32 %16, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %27
  %29 = sub i32 %11, %16
  %30 = zext i32 %29 to i64
  %31 = mul nuw nsw i64 %30, 24
  %32 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %28, ptr noundef %25, i64 noundef %31)
  %33 = load i16, ptr %0, align 8, !tbaa !74
  %34 = sext i16 %33 to i32
  store i32 %34, ptr %25, align 8, !tbaa !72
  store double %1, ptr %18, align 8, !tbaa !66
  %35 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %17, i32 2
  store ptr %0, ptr %35, align 8, !tbaa !73
  %36 = load i32, ptr %4, align 4, !tbaa !49
  %37 = add i32 %36, 1
  store i32 %37, ptr %4, align 4, !tbaa !49
  %38 = or i16 %33, 1
  %39 = sext i16 %38 to i32
  %40 = zext i32 %37 to i64
  %41 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %40
  store i32 %39, ptr %41, align 8, !tbaa !72
  %42 = load i32, ptr %4, align 4, !tbaa !49
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %43, i32 1
  store double %2, ptr %44, align 8, !tbaa !66
  %45 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %43, i32 2
  store ptr %0, ptr %45, align 8, !tbaa !73
  br label %46

46:                                               ; preds = %46, %24
  %47 = phi i32 [ %26, %24 ], [ %52, %46 ]
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %48, i32 1
  %50 = load double, ptr %49, align 8, !tbaa !66
  %51 = fcmp olt double %50, %2
  %52 = add i32 %47, 1
  br i1 %51, label %46, label %53, !llvm.loop !138

53:                                               ; preds = %46
  %54 = icmp ult i32 %47, %42
  br i1 %54, label %55, label %80

55:                                               ; preds = %53
  %56 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %48
  %57 = add i32 %47, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %58
  %60 = sub i32 %42, %47
  %61 = zext i32 %60 to i64
  %62 = mul nuw nsw i64 %61, 24
  %63 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %59, ptr noundef %56, i64 noundef %62)
  %64 = load i16, ptr %0, align 8, !tbaa !74
  %65 = or i16 %64, 1
  %66 = sext i16 %65 to i32
  store i32 %66, ptr %56, align 8, !tbaa !72
  br label %76

67:                                               ; preds = %22
  %68 = add i32 %11, 1
  store i32 %68, ptr %4, align 4, !tbaa !49
  %69 = or i16 %6, 1
  %70 = sext i16 %69 to i32
  %71 = zext i32 %68 to i64
  %72 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %71
  store i32 %70, ptr %72, align 8, !tbaa !72
  %73 = load i32, ptr %4, align 4, !tbaa !49
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %74, i32 1
  br label %76

76:                                               ; preds = %67, %55
  %77 = phi ptr [ %49, %55 ], [ %75, %67 ]
  %78 = phi i64 [ %48, %55 ], [ %74, %67 ]
  store double %2, ptr %77, align 8, !tbaa !66
  %79 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %78, i32 2
  store ptr %0, ptr %79, align 8, !tbaa !73
  br label %80

80:                                               ; preds = %76, %53
  %81 = load i32, ptr %4, align 4, !tbaa !49
  %82 = add i32 %81, 1
  store i32 %82, ptr %4, align 4, !tbaa !49
  ret void
}

declare noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %4 = load i16, ptr %0, align 8, !tbaa !74
  switch i16 %4, label %114 [
    i16 2, label %5
    i16 8, label %26
    i16 16, label %49
    i16 32, label %65
    i16 4, label %84
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  %7 = load double, ptr %1, align 8, !tbaa !44
  %8 = load double, ptr %6, align 8, !tbaa !44
  %9 = fsub double %7, %8
  %10 = getelementptr inbounds double, ptr %1, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !44
  %14 = fsub double %11, %13
  %15 = getelementptr inbounds double, ptr %1, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !44
  %19 = fsub double %16, %18
  %20 = fmul double %14, %14
  %21 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %20)
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %21)
  %23 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %24 = load double, ptr %23, align 8, !tbaa !132
  %25 = fcmp olt double %22, %24
  br i1 %25, label %104, label %114

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %28)
  %29 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  %30 = load double, ptr %3, align 16, !tbaa !44
  %31 = load double, ptr %29, align 8, !tbaa !44
  %32 = fsub double %30, %31
  %33 = getelementptr inbounds double, ptr %3, i64 1
  %34 = load double, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 1
  %36 = load double, ptr %35, align 8, !tbaa !44
  %37 = fsub double %34, %36
  %38 = getelementptr inbounds double, ptr %3, i64 2
  %39 = load double, ptr %38, align 16, !tbaa !44
  %40 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 2
  %41 = load double, ptr %40, align 8, !tbaa !44
  %42 = fsub double %39, %41
  %43 = fmul double %37, %37
  %44 = call double @llvm.fmuladd.f64(double %32, double %32, double %43)
  %45 = call double @llvm.fmuladd.f64(double %42, double %42, double %44)
  %46 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %47 = load double, ptr %46, align 8, !tbaa !132
  %48 = fcmp olt double %45, %47
  br i1 %48, label %104, label %114

49:                                               ; preds = %2
  %50 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %51)
  %52 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %53 = load double, ptr %52, align 16, !tbaa !44
  %54 = fcmp ugt double %53, 0.000000e+00
  br i1 %54, label %114, label %55

55:                                               ; preds = %49
  %56 = load double, ptr %3, align 16, !tbaa !44
  %57 = getelementptr inbounds double, ptr %3, i64 1
  %58 = load double, ptr %57, align 8, !tbaa !44
  %59 = fmul double %58, %58
  %60 = call double @llvm.fmuladd.f64(double %56, double %56, double %59)
  %61 = call double @llvm.fmuladd.f64(double %53, double %53, double %60)
  %62 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %63 = load double, ptr %62, align 8, !tbaa !132
  %64 = fcmp ugt double %61, %63
  br i1 %64, label %114, label %104

65:                                               ; preds = %2
  %66 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %67)
  %68 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %69 = load double, ptr %68, align 8, !tbaa !77
  %70 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %71 = load double, ptr %70, align 16, !tbaa !44
  %72 = fsub double %71, %69
  store double %72, ptr %70, align 16, !tbaa !44
  %73 = fcmp ult double %72, 0.000000e+00
  br i1 %73, label %114, label %74

74:                                               ; preds = %65
  %75 = load double, ptr %3, align 16, !tbaa !44
  %76 = getelementptr inbounds double, ptr %3, i64 1
  %77 = load double, ptr %76, align 8, !tbaa !44
  %78 = fmul double %77, %77
  %79 = call double @llvm.fmuladd.f64(double %75, double %75, double %78)
  %80 = call double @llvm.fmuladd.f64(double %72, double %72, double %79)
  %81 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %82 = load double, ptr %81, align 8, !tbaa !132
  %83 = fcmp ugt double %80, %82
  br i1 %83, label %114, label %104

84:                                               ; preds = %2
  %85 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %86)
  %87 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %88 = load double, ptr %87, align 16, !tbaa !44
  %89 = fcmp ult double %88, 0.000000e+00
  br i1 %89, label %114, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %92 = load double, ptr %91, align 8, !tbaa !77
  %93 = fcmp ugt double %88, %92
  br i1 %93, label %114, label %94

94:                                               ; preds = %90
  %95 = load double, ptr %3, align 16, !tbaa !44
  %96 = fmul double %95, %95
  %97 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %98 = load double, ptr %97, align 8, !tbaa !44
  %99 = fmul double %98, %98
  %100 = fadd double %96, %99
  %101 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %102 = load double, ptr %101, align 8, !tbaa !132
  %103 = fcmp ugt double %100, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %94, %74, %55, %26, %5
  %105 = phi double [ %22, %5 ], [ %45, %26 ], [ %61, %55 ], [ %80, %74 ], [ %100, %94 ]
  %106 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5
  %107 = load double, ptr %106, align 8, !tbaa !44
  %108 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5, i64 1
  %109 = load double, ptr %108, align 8, !tbaa !44
  %110 = call double @llvm.fmuladd.f64(double %105, double %107, double %109)
  %111 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5, i64 2
  %112 = load double, ptr %111, align 8, !tbaa !44
  %113 = call double @llvm.fmuladd.f64(double %105, double %110, double %112)
  br label %114

114:                                              ; preds = %104, %84, %90, %94, %65, %74, %49, %55, %26, %5, %2
  %115 = phi double [ 0.000000e+00, %2 ], [ 0.000000e+00, %94 ], [ 0.000000e+00, %90 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %74 ], [ 0.000000e+00, %65 ], [ 0.000000e+00, %55 ], [ 0.000000e+00, %49 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %5 ], [ %113, %104 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret double %115
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3povL14element_normalEPdS0_PNS_19Blob_Element_StructE(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %6 = load i16, ptr %2, align 8, !tbaa !74
  switch i16 %6, label %206 [
    i16 2, label %7
    i16 8, label %46
    i16 16, label %91
    i16 32, label %127
    i16 4, label %166
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2
  %9 = load double, ptr %1, align 8, !tbaa !44
  %10 = load double, ptr %8, align 8, !tbaa !44
  %11 = fsub double %9, %10
  store double %11, ptr %4, align 16, !tbaa !44
  %12 = getelementptr inbounds double, ptr %1, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !44
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds double, ptr %4, i64 1
  store double %16, ptr %17, align 8, !tbaa !44
  %18 = getelementptr inbounds double, ptr %1, i64 2
  %19 = load double, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 2
  %21 = load double, ptr %20, align 8, !tbaa !44
  %22 = fsub double %19, %21
  %23 = getelementptr inbounds double, ptr %4, i64 2
  store double %22, ptr %23, align 16, !tbaa !44
  %24 = fmul double %16, %16
  %25 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %24)
  %26 = tail call double @llvm.fmuladd.f64(double %22, double %22, double %25)
  %27 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %28 = load double, ptr %27, align 8, !tbaa !132
  %29 = fcmp ugt double %26, %28
  br i1 %29, label %206, label %30

30:                                               ; preds = %7
  %31 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %32 = load double, ptr %31, align 8, !tbaa !44
  %33 = fmul double %32, -2.000000e+00
  %34 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %35 = load double, ptr %34, align 8, !tbaa !44
  %36 = fneg double %35
  %37 = tail call double @llvm.fmuladd.f64(double %33, double %26, double %36)
  %38 = load double, ptr %0, align 8, !tbaa !44
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %11, double %38)
  store double %39, ptr %0, align 8, !tbaa !44
  %40 = getelementptr inbounds double, ptr %0, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !44
  %42 = tail call double @llvm.fmuladd.f64(double %37, double %16, double %41)
  store double %42, ptr %40, align 8, !tbaa !44
  %43 = getelementptr inbounds double, ptr %0, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !44
  %45 = tail call double @llvm.fmuladd.f64(double %37, double %22, double %44)
  store double %45, ptr %43, align 8, !tbaa !44
  br label %206

46:                                               ; preds = %3
  %47 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %48)
  %49 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2
  %50 = load double, ptr %5, align 16, !tbaa !44
  %51 = load double, ptr %49, align 8, !tbaa !44
  %52 = fsub double %50, %51
  store double %52, ptr %4, align 16, !tbaa !44
  %53 = getelementptr inbounds double, ptr %5, i64 1
  %54 = load double, ptr %53, align 8, !tbaa !44
  %55 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 1
  %56 = load double, ptr %55, align 8, !tbaa !44
  %57 = fsub double %54, %56
  %58 = getelementptr inbounds double, ptr %4, i64 1
  store double %57, ptr %58, align 8, !tbaa !44
  %59 = getelementptr inbounds double, ptr %5, i64 2
  %60 = load double, ptr %59, align 16, !tbaa !44
  %61 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2, i64 2
  %62 = load double, ptr %61, align 8, !tbaa !44
  %63 = fsub double %60, %62
  %64 = getelementptr inbounds double, ptr %4, i64 2
  store double %63, ptr %64, align 16, !tbaa !44
  %65 = fmul double %57, %57
  %66 = call double @llvm.fmuladd.f64(double %52, double %52, double %65)
  %67 = call double @llvm.fmuladd.f64(double %63, double %63, double %66)
  %68 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %69 = load double, ptr %68, align 8, !tbaa !132
  %70 = fcmp ugt double %67, %69
  br i1 %70, label %206, label %71

71:                                               ; preds = %46
  %72 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %73 = load double, ptr %72, align 8, !tbaa !44
  %74 = fmul double %73, -2.000000e+00
  %75 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %76 = load double, ptr %75, align 8, !tbaa !44
  %77 = fneg double %76
  %78 = call double @llvm.fmuladd.f64(double %74, double %67, double %77)
  %79 = load ptr, ptr %47, align 8, !tbaa !76
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %79)
  %80 = load double, ptr %4, align 16, !tbaa !44
  %81 = load double, ptr %0, align 8, !tbaa !44
  %82 = call double @llvm.fmuladd.f64(double %78, double %80, double %81)
  store double %82, ptr %0, align 8, !tbaa !44
  %83 = load double, ptr %58, align 8, !tbaa !44
  %84 = getelementptr inbounds double, ptr %0, i64 1
  %85 = load double, ptr %84, align 8, !tbaa !44
  %86 = call double @llvm.fmuladd.f64(double %78, double %83, double %85)
  store double %86, ptr %84, align 8, !tbaa !44
  %87 = load double, ptr %64, align 16, !tbaa !44
  %88 = getelementptr inbounds double, ptr %0, i64 2
  %89 = load double, ptr %88, align 8, !tbaa !44
  %90 = call double @llvm.fmuladd.f64(double %78, double %87, double %89)
  store double %90, ptr %88, align 8, !tbaa !44
  br label %206

91:                                               ; preds = %3
  %92 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %93)
  %94 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %95 = load double, ptr %94, align 16, !tbaa !44
  %96 = fcmp ugt double %95, 0.000000e+00
  br i1 %96, label %206, label %97

97:                                               ; preds = %91
  %98 = load double, ptr %5, align 16, !tbaa !44
  %99 = getelementptr inbounds double, ptr %5, i64 1
  %100 = load double, ptr %99, align 8, !tbaa !44
  %101 = fmul double %100, %100
  %102 = call double @llvm.fmuladd.f64(double %98, double %98, double %101)
  %103 = call double @llvm.fmuladd.f64(double %95, double %95, double %102)
  %104 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %105 = load double, ptr %104, align 8, !tbaa !132
  %106 = fcmp ugt double %103, %105
  br i1 %106, label %206, label %107

107:                                              ; preds = %97
  %108 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %109 = load double, ptr %108, align 8, !tbaa !44
  %110 = fmul double %109, -2.000000e+00
  %111 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %112 = load double, ptr %111, align 8, !tbaa !44
  %113 = fneg double %112
  %114 = call double @llvm.fmuladd.f64(double %110, double %103, double %113)
  %115 = load ptr, ptr %92, align 8, !tbaa !76
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %115)
  %116 = load double, ptr %5, align 16, !tbaa !44
  %117 = load double, ptr %0, align 8, !tbaa !44
  %118 = call double @llvm.fmuladd.f64(double %114, double %116, double %117)
  store double %118, ptr %0, align 8, !tbaa !44
  %119 = load double, ptr %99, align 8, !tbaa !44
  %120 = getelementptr inbounds double, ptr %0, i64 1
  %121 = load double, ptr %120, align 8, !tbaa !44
  %122 = call double @llvm.fmuladd.f64(double %114, double %119, double %121)
  store double %122, ptr %120, align 8, !tbaa !44
  %123 = load double, ptr %94, align 16, !tbaa !44
  %124 = getelementptr inbounds double, ptr %0, i64 2
  %125 = load double, ptr %124, align 8, !tbaa !44
  %126 = call double @llvm.fmuladd.f64(double %114, double %123, double %125)
  store double %126, ptr %124, align 8, !tbaa !44
  br label %206

127:                                              ; preds = %3
  %128 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %129 = load ptr, ptr %128, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %129)
  %130 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %131 = load double, ptr %130, align 8, !tbaa !77
  %132 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %133 = load double, ptr %132, align 16, !tbaa !44
  %134 = fsub double %133, %131
  store double %134, ptr %132, align 16, !tbaa !44
  %135 = fcmp ult double %134, 0.000000e+00
  br i1 %135, label %206, label %136

136:                                              ; preds = %127
  %137 = load double, ptr %5, align 16, !tbaa !44
  %138 = getelementptr inbounds double, ptr %5, i64 1
  %139 = load double, ptr %138, align 8, !tbaa !44
  %140 = fmul double %139, %139
  %141 = call double @llvm.fmuladd.f64(double %137, double %137, double %140)
  %142 = call double @llvm.fmuladd.f64(double %134, double %134, double %141)
  %143 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %144 = load double, ptr %143, align 8, !tbaa !132
  %145 = fcmp ugt double %142, %144
  br i1 %145, label %206, label %146

146:                                              ; preds = %136
  %147 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %148 = load double, ptr %147, align 8, !tbaa !44
  %149 = fmul double %148, -2.000000e+00
  %150 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %151 = load double, ptr %150, align 8, !tbaa !44
  %152 = fneg double %151
  %153 = call double @llvm.fmuladd.f64(double %149, double %142, double %152)
  %154 = load ptr, ptr %128, align 8, !tbaa !76
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %154)
  %155 = load double, ptr %5, align 16, !tbaa !44
  %156 = load double, ptr %0, align 8, !tbaa !44
  %157 = call double @llvm.fmuladd.f64(double %153, double %155, double %156)
  store double %157, ptr %0, align 8, !tbaa !44
  %158 = load double, ptr %138, align 8, !tbaa !44
  %159 = getelementptr inbounds double, ptr %0, i64 1
  %160 = load double, ptr %159, align 8, !tbaa !44
  %161 = call double @llvm.fmuladd.f64(double %153, double %158, double %160)
  store double %161, ptr %159, align 8, !tbaa !44
  %162 = load double, ptr %132, align 16, !tbaa !44
  %163 = getelementptr inbounds double, ptr %0, i64 2
  %164 = load double, ptr %163, align 8, !tbaa !44
  %165 = call double @llvm.fmuladd.f64(double %153, double %162, double %164)
  store double %165, ptr %163, align 8, !tbaa !44
  br label %206

166:                                              ; preds = %3
  %167 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %168 = load ptr, ptr %167, align 8, !tbaa !76
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %168)
  %169 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %170 = load double, ptr %169, align 16, !tbaa !44
  %171 = fcmp ult double %170, 0.000000e+00
  br i1 %171, label %206, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %174 = load double, ptr %173, align 8, !tbaa !77
  %175 = fcmp ugt double %170, %174
  br i1 %175, label %206, label %176

176:                                              ; preds = %172
  %177 = load double, ptr %5, align 16, !tbaa !44
  %178 = fmul double %177, %177
  %179 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %180 = load double, ptr %179, align 8, !tbaa !44
  %181 = fmul double %180, %180
  %182 = fadd double %178, %181
  %183 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %184 = load double, ptr %183, align 8, !tbaa !132
  %185 = fcmp ugt double %182, %184
  br i1 %185, label %206, label %186

186:                                              ; preds = %176
  %187 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %188 = load double, ptr %187, align 8, !tbaa !44
  %189 = fmul double %188, -2.000000e+00
  %190 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %191 = load double, ptr %190, align 8, !tbaa !44
  %192 = fneg double %191
  %193 = call double @llvm.fmuladd.f64(double %189, double %182, double %192)
  store double 0.000000e+00, ptr %169, align 16, !tbaa !44
  %194 = load ptr, ptr %167, align 8, !tbaa !76
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %194)
  %195 = load double, ptr %5, align 16, !tbaa !44
  %196 = load double, ptr %0, align 8, !tbaa !44
  %197 = call double @llvm.fmuladd.f64(double %193, double %195, double %196)
  store double %197, ptr %0, align 8, !tbaa !44
  %198 = load double, ptr %179, align 8, !tbaa !44
  %199 = getelementptr inbounds double, ptr %0, i64 1
  %200 = load double, ptr %199, align 8, !tbaa !44
  %201 = call double @llvm.fmuladd.f64(double %193, double %198, double %200)
  store double %201, ptr %199, align 8, !tbaa !44
  %202 = load double, ptr %169, align 16, !tbaa !44
  %203 = getelementptr inbounds double, ptr %0, i64 2
  %204 = load double, ptr %203, align 8, !tbaa !44
  %205 = call double @llvm.fmuladd.f64(double %193, double %202, double %204)
  store double %205, ptr %203, align 8, !tbaa !44
  br label %206

206:                                              ; preds = %166, %172, %186, %176, %127, %146, %136, %91, %107, %97, %46, %71, %7, %30, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3povL27get_element_bounding_sphereEPNS_19Blob_Element_StructEPdS2_(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [3 x double], align 16
  %5 = alloca %"struct.pov::Bounding_Box_Struct", align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %6 = load i16, ptr %0, align 8, !tbaa !74
  switch i16 %6, label %36 [
    i16 2, label %7
    i16 8, label %7
    i16 16, label %18
    i16 32, label %21
    i16 4, label %27
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %9 = load double, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !44
  store double %11, ptr %4, align 16, !tbaa !44
  %12 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds double, ptr %4, i64 1
  store double %13, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds double, ptr %4, i64 2
  store double %16, ptr %17, align 16, !tbaa !44
  br label %36

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %20 = load double, ptr %19, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %36

21:                                               ; preds = %3
  %22 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %23 = load double, ptr %22, align 8, !tbaa !132
  %24 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !77
  %26 = getelementptr inbounds double, ptr %4, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store double %25, ptr %26, align 16, !tbaa !44
  br label %36

27:                                               ; preds = %3
  %28 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %29 = load double, ptr %28, align 8, !tbaa !77
  %30 = fmul double %29, 5.000000e-01
  %31 = getelementptr inbounds double, ptr %4, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store double %30, ptr %31, align 16, !tbaa !44
  %32 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %33 = load double, ptr %32, align 8, !tbaa !132
  %34 = fmul double %30, %30
  %35 = fadd double %34, %33
  br label %36

36:                                               ; preds = %3, %27, %21, %18, %7
  %37 = phi double [ 0.000000e+00, %3 ], [ %35, %27 ], [ %23, %21 ], [ %20, %18 ], [ %9, %7 ]
  %38 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %36
  %42 = tail call double @sqrt(double noundef %37) #8
  %43 = load ptr, ptr %38, align 8, !tbaa !76
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %43)
  %44 = fptrunc double %42 to float
  store float 0.000000e+00, ptr %5, align 4, !tbaa !100
  %45 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0.000000e+00, ptr %45, align 4, !tbaa !100
  %46 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %46, align 4, !tbaa !100
  %47 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %5, i64 0, i32 1
  store float %44, ptr %47, align 4, !tbaa !100
  %48 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %5, i64 0, i32 1, i64 1
  store float %44, ptr %48, align 4, !tbaa !100
  %49 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %5, i64 0, i32 1, i64 2
  store float %44, ptr %49, align 4, !tbaa !100
  %50 = load ptr, ptr %38, align 8, !tbaa !76
  call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %50)
  %51 = load float, ptr %47, align 4, !tbaa !100
  %52 = call noundef float @llvm.fabs.f32(float %51)
  %53 = load float, ptr %48, align 4, !tbaa !100
  %54 = call noundef float @llvm.fabs.f32(float %53)
  %55 = fcmp olt float %52, %54
  %56 = load float, ptr %49, align 4, !tbaa !100
  %57 = call noundef float @llvm.fabs.f32(float %56)
  %58 = select i1 %55, float %54, float %52
  %59 = fcmp olt float %58, %57
  %60 = select i1 %59, float %57, float %58
  %61 = fpext float %60 to double
  %62 = fmul double %61, %61
  %63 = fadd double %62, 0x3E7AD7F29ABCAF48
  br label %64

64:                                               ; preds = %41, %36
  %65 = phi double [ %63, %41 ], [ %37, %36 ]
  %66 = load double, ptr %4, align 16, !tbaa !44
  store double %66, ptr %1, align 8, !tbaa !44
  %67 = getelementptr inbounds double, ptr %4, i64 1
  %68 = load double, ptr %67, align 8, !tbaa !44
  %69 = getelementptr inbounds double, ptr %1, i64 1
  store double %68, ptr %69, align 8, !tbaa !44
  %70 = getelementptr inbounds double, ptr %4, i64 2
  %71 = load double, ptr %70, align 16, !tbaa !44
  %72 = getelementptr inbounds double, ptr %1, i64 2
  store double %71, ptr %72, align 8, !tbaa !44
  store double %65, ptr %2, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @_ZN3pov31Build_Bounding_Sphere_HierarchyEPPNS_19BSphere_Tree_StructEiPS2_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"long long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 96}
!39 = !{!"_ZTSN3pov11Blob_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116, !40, i64 120, !40, i64 128, !40, i64 136, !41, i64 144}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"_ZTSN3pov19Bounding_Box_StructE", !36, i64 0, !36, i64 12}
!43 = !{!"float", !36, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !36, i64 0}
!46 = !{!39, !40, i64 120}
!47 = !{!48, !40, i64 24}
!48 = !{!"_ZTSN3pov16Blob_Data_StructE", !41, i64 0, !41, i64 4, !45, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!49 = !{!41, !41, i64 0}
!50 = !{!48, !40, i64 32}
!51 = !{!48, !41, i64 4}
!52 = !{!48, !40, i64 16}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!39, !40, i64 136}
!57 = !{!40, !40, i64 0}
!58 = !{!59, !60, i64 0}
!59 = !{!"_ZTSN3pov19BSphere_Tree_StructE", !60, i64 0, !36, i64 8, !45, i64 32, !40, i64 40}
!60 = !{!"short", !36, i64 0}
!61 = !{!59, !40, i64 40}
!62 = !{!59, !45, i64 32}
!63 = !{!39, !41, i64 144}
!64 = distinct !{!64, !54, !55}
!65 = distinct !{!65, !54, !55}
!66 = !{!67, !45, i64 8}
!67 = !{!"_ZTSN3pov20Blob_Interval_StructE", !41, i64 0, !45, i64 8, !40, i64 16}
!68 = distinct !{!68, !54, !55}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = !{!48, !45, i64 8}
!72 = !{!67, !41, i64 0}
!73 = !{!67, !40, i64 16}
!74 = !{!75, !60, i64 0}
!75 = !{!"_ZTSN3pov19Blob_Element_StructE", !60, i64 0, !41, i64 4, !36, i64 8, !45, i64 32, !45, i64 40, !36, i64 48, !36, i64 72, !40, i64 112, !40, i64 120}
!76 = !{!75, !40, i64 120}
!77 = !{!75, !45, i64 32}
!78 = distinct !{!78, !54, !55}
!79 = distinct !{!79, !54, !55}
!80 = !{!39, !41, i64 116}
!81 = !{!82, !40, i64 56}
!82 = !{!"_ZTSN3pov13Object_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116}
!83 = !{!84, !40, i64 8}
!84 = !{!"_ZTSN3pov13istack_structE", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20}
!85 = !{!84, !41, i64 20}
!86 = !{!87, !45, i64 0}
!87 = !{!"_ZTSN3pov10istk_entryE", !45, i64 0, !36, i64 8, !36, i64 32, !36, i64 56, !36, i64 80, !40, i64 96, !41, i64 104, !41, i64 108, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !40, i64 184, !40, i64 192}
!88 = !{!87, !40, i64 96}
!89 = !{!87, !40, i64 192}
!90 = distinct !{!90, !54, !55}
!91 = !{!39, !41, i64 8}
!92 = distinct !{!92, !54, !55}
!93 = distinct !{!93, !54, !55}
!94 = distinct !{!94, !54, !55}
!95 = distinct !{!95, !54, !55}
!96 = distinct !{!96, !54, !55}
!97 = distinct !{!97, !54, !55}
!98 = distinct !{!98, !54, !55}
!99 = !{!39, !40, i64 0}
!100 = !{!43, !43, i64 0}
!101 = !{i64 0, i64 8, !57, i64 8, i64 4, !49, i64 16, i64 8, !57, i64 24, i64 8, !57, i64 32, i64 8, !57, i64 40, i64 8, !57, i64 48, i64 8, !57, i64 56, i64 8, !57, i64 64, i64 8, !57, i64 72, i64 12, !102, i64 84, i64 12, !102, i64 96, i64 8, !57, i64 104, i64 8, !57, i64 112, i64 4, !100, i64 116, i64 4, !49, i64 120, i64 8, !57, i64 128, i64 8, !57, i64 136, i64 8, !57, i64 144, i64 4, !49}
!102 = !{!36, !36, i64 0}
!103 = !{!48, !41, i64 0}
!104 = !{!39, !40, i64 128}
!105 = distinct !{!105, !54, !55}
!106 = distinct !{!106, !54, !55}
!107 = !{!82, !41, i64 116}
!108 = distinct !{!108, !54, !55}
!109 = distinct !{!109, !54, !55}
!110 = !{!111, !60, i64 0}
!111 = !{!"_ZTSN3pov16Blob_List_StructE", !75, i64 0, !40, i64 128}
!112 = !{!111, !40, i64 128}
!113 = distinct !{!113, !54, !55}
!114 = !{!111, !45, i64 40}
!115 = !{i64 0, i64 2, !116, i64 4, i64 4, !49, i64 8, i64 24, !102, i64 32, i64 8, !44, i64 40, i64 8, !44, i64 48, i64 24, !102, i64 72, i64 40, !102, i64 112, i64 8, !57, i64 120, i64 8, !57}
!116 = !{!60, !60, i64 0}
!117 = !{!75, !40, i64 112}
!118 = !{!111, !40, i64 112}
!119 = distinct !{!119, !54, !55}
!120 = !{!75, !41, i64 4}
!121 = distinct !{!121, !54, !55}
!122 = distinct !{!122, !54, !55}
!123 = distinct !{!123, !54, !55}
!124 = !{!39, !40, i64 24}
!125 = distinct !{!125, !54, !55}
!126 = distinct !{!126, !54, !55}
!127 = distinct !{!127, !54, !55}
!128 = distinct !{!128, !54, !55}
!129 = distinct !{!129, !54, !55}
!130 = distinct !{!130, !54, !55}
!131 = distinct !{!131, !54, !55}
!132 = !{!75, !45, i64 40}
!133 = distinct !{!133, !54, !55}
!134 = distinct !{!134, !54, !55}
!135 = distinct !{!135, !54, !55}
!136 = distinct !{!136, !54, !55}
!137 = distinct !{!137, !54, !55}
!138 = distinct !{!138, !54, !55}
