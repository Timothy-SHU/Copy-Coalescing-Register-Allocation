; ModuleID = 'blender/source/blender/blenkernel/intern/modifier.c'
source_filename = "blender/source/blender/blenkernel/intern/modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.CDMaskLink = type { ptr, i64 }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }

@modifier_types = internal global [49 x ptr] zeroinitializer, align 16
@virtualModifierCommonData = internal unnamed_addr global %struct.VirtualModifierData zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"CDMaskLink\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_modifier_init() local_unnamed_addr #0 {
  tail call void @modifier_type_init(ptr noundef nonnull @modifier_types) #11
  %1 = load ptr, ptr getelementptr inbounds ([49 x ptr], ptr @modifier_types, i64 0, i64 8), align 16, !tbaa !34
  %2 = load i8, ptr %1, align 8, !tbaa !38
  %3 = icmp eq i8 %2, 0
  %4 = select i1 %3, ptr null, ptr %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 1
  %10 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull %9) #11
  %11 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 6
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %4, i64 noundef 64) #11
  %13 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 2
  store i32 8, ptr %13, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 3
  store i32 19, ptr %14, align 4, !tbaa !44
  %15 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 19, i32 23
  store i32 %19, ptr %14, align 4
  %20 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %0
  tail call void %21(ptr noundef %10) #11
  br label %24

24:                                               ; preds = %0, %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) @virtualModifierCommonData, ptr noundef nonnull align 8 dereferenceable(200) %10, i64 200, i1 false), !tbaa.struct !47
  %25 = load i32, ptr %13, align 8, !tbaa !42
  %26 = icmp ult i32 %25, 49
  tail call void @llvm.assume(i1 %26)
  %27 = zext nneg i32 %25 to i64
  %28 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = load i8, ptr %29, align 8, !tbaa !38
  %31 = icmp ne i8 %30, 0
  tail call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %29, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  tail call void %33(ptr noundef %10) #11
  br label %36

36:                                               ; preds = %35, %24
  %37 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %38) #11
  br label %42

42:                                               ; preds = %36, %40
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef %10) #11
  %44 = load ptr, ptr getelementptr inbounds ([49 x ptr], ptr @modifier_types, i64 0, i64 3), align 8, !tbaa !34
  %45 = load i8, ptr %44, align 8, !tbaa !38
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, ptr null, ptr %44
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %47, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !39
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %47, i64 0, i32 1
  %53 = tail call ptr %48(i64 noundef %51, ptr noundef nonnull %52) #11
  %54 = getelementptr inbounds %struct.ModifierData, ptr %53, i64 0, i32 6
  %55 = tail call ptr @BLI_strncpy(ptr noundef nonnull %54, ptr noundef %47, i64 noundef 64) #11
  %56 = getelementptr inbounds %struct.ModifierData, ptr %53, i64 0, i32 2
  store i32 3, ptr %56, align 8, !tbaa !42
  %57 = getelementptr inbounds %struct.ModifierData, ptr %53, i64 0, i32 3
  store i32 19, ptr %57, align 4, !tbaa !44
  %58 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %47, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !45
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 19, i32 23
  store i32 %62, ptr %57, align 4
  %63 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %47, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %42
  tail call void %64(ptr noundef %53) #11
  br label %67

67:                                               ; preds = %42, %66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 1), ptr noundef nonnull align 8 dereferenceable(192) %53, i64 192, i1 false), !tbaa.struct !53
  %68 = load i32, ptr %56, align 8, !tbaa !42
  %69 = icmp ult i32 %68, 49
  tail call void @llvm.assume(i1 %69)
  %70 = zext nneg i32 %68 to i64
  %71 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = load i8, ptr %72, align 8, !tbaa !38
  %74 = icmp ne i8 %73, 0
  tail call void @llvm.assume(i1 %74)
  %75 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %72, i64 0, i32 14
  %76 = load ptr, ptr %75, align 8, !tbaa !51
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %67
  tail call void %76(ptr noundef %53) #11
  br label %79

79:                                               ; preds = %78, %67
  %80 = getelementptr inbounds %struct.ModifierData, ptr %53, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %84(ptr noundef nonnull %81) #11
  br label %85

85:                                               ; preds = %79, %83
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %86(ptr noundef %53) #11
  %87 = load ptr, ptr getelementptr inbounds ([49 x ptr], ptr @modifier_types, i64 0, i64 2), align 16, !tbaa !34
  %88 = load i8, ptr %87, align 8, !tbaa !38
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, ptr null, ptr %87
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %90, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !39
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %90, i64 0, i32 1
  %96 = tail call ptr %91(i64 noundef %94, ptr noundef nonnull %95) #11
  %97 = getelementptr inbounds %struct.ModifierData, ptr %96, i64 0, i32 6
  %98 = tail call ptr @BLI_strncpy(ptr noundef nonnull %97, ptr noundef %90, i64 noundef 64) #11
  %99 = getelementptr inbounds %struct.ModifierData, ptr %96, i64 0, i32 2
  store i32 2, ptr %99, align 8, !tbaa !42
  %100 = getelementptr inbounds %struct.ModifierData, ptr %96, i64 0, i32 3
  store i32 19, ptr %100, align 4, !tbaa !44
  %101 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %90, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !45
  %103 = and i32 %102, 16
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 19, i32 23
  store i32 %105, ptr %100, align 4
  %106 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %90, i64 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %85
  tail call void %107(ptr noundef %96) #11
  br label %110

110:                                              ; preds = %85, %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 2), ptr noundef nonnull align 8 dereferenceable(192) %96, i64 192, i1 false), !tbaa.struct !54
  %111 = load i32, ptr %99, align 8, !tbaa !42
  %112 = icmp ult i32 %111, 49
  tail call void @llvm.assume(i1 %112)
  %113 = zext nneg i32 %111 to i64
  %114 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = load i8, ptr %115, align 8, !tbaa !38
  %117 = icmp ne i8 %116, 0
  tail call void @llvm.assume(i1 %117)
  %118 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %115, i64 0, i32 14
  %119 = load ptr, ptr %118, align 8, !tbaa !51
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %110
  tail call void %119(ptr noundef %96) #11
  br label %122

122:                                              ; preds = %121, %110
  %123 = getelementptr inbounds %struct.ModifierData, ptr %96, i64 0, i32 8
  %124 = load ptr, ptr %123, align 8, !tbaa !52
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %127(ptr noundef nonnull %124) #11
  br label %128

128:                                              ; preds = %122, %126
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %129(ptr noundef %96) #11
  %130 = load ptr, ptr getelementptr inbounds ([49 x ptr], ptr @modifier_types, i64 0, i64 32), align 16, !tbaa !34
  %131 = load i8, ptr %130, align 8, !tbaa !38
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, ptr null, ptr %130
  %134 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %135 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %133, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !39
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %133, i64 0, i32 1
  %139 = tail call ptr %134(i64 noundef %137, ptr noundef nonnull %138) #11
  %140 = getelementptr inbounds %struct.ModifierData, ptr %139, i64 0, i32 6
  %141 = tail call ptr @BLI_strncpy(ptr noundef nonnull %140, ptr noundef %133, i64 noundef 64) #11
  %142 = getelementptr inbounds %struct.ModifierData, ptr %139, i64 0, i32 2
  store i32 32, ptr %142, align 8, !tbaa !42
  %143 = getelementptr inbounds %struct.ModifierData, ptr %139, i64 0, i32 3
  store i32 19, ptr %143, align 4, !tbaa !44
  %144 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %133, i64 0, i32 4
  %145 = load i32, ptr %144, align 8, !tbaa !45
  %146 = and i32 %145, 16
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 19, i32 23
  store i32 %148, ptr %143, align 4
  %149 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %133, i64 0, i32 12
  %150 = load ptr, ptr %149, align 8, !tbaa !46
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %128
  tail call void %150(ptr noundef %139) #11
  br label %153

153:                                              ; preds = %128, %152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 3), ptr noundef nonnull align 8 dereferenceable(112) %139, i64 112, i1 false), !tbaa.struct !57
  %154 = load i32, ptr %142, align 8, !tbaa !42
  %155 = icmp ult i32 %154, 49
  tail call void @llvm.assume(i1 %155)
  %156 = zext nneg i32 %154 to i64
  %157 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !34
  %159 = load i8, ptr %158, align 8, !tbaa !38
  %160 = icmp ne i8 %159, 0
  tail call void @llvm.assume(i1 %160)
  %161 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %158, i64 0, i32 14
  %162 = load ptr, ptr %161, align 8, !tbaa !51
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %153
  tail call void %162(ptr noundef %139) #11
  br label %165

165:                                              ; preds = %164, %153
  %166 = getelementptr inbounds %struct.ModifierData, ptr %139, i64 0, i32 8
  %167 = load ptr, ptr %166, align 8, !tbaa !52
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %170(ptr noundef nonnull %167) #11
  br label %171

171:                                              ; preds = %165, %169
  %172 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %172(ptr noundef %139) #11
  %173 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 0, i32 0, i32 3), align 4, !tbaa !58
  %174 = or i32 %173, 32
  store i32 %174, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 0, i32 0, i32 3), align 4, !tbaa !58
  %175 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 1, i32 0, i32 3), align 4, !tbaa !64
  %176 = or i32 %175, 32
  store i32 %176, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 1, i32 0, i32 3), align 4, !tbaa !64
  %177 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 2, i32 0, i32 3), align 4, !tbaa !65
  %178 = or i32 %177, 32
  store i32 %178, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 2, i32 0, i32 3), align 4, !tbaa !65
  %179 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 3, i32 0, i32 3), align 4, !tbaa !66
  %180 = or i32 %179, 32
  store i32 %180, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 3, i32 0, i32 3), align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @modifier_type_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @modifier_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 49
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load i8, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3, %1
  br label %10

10:                                               ; preds = %3, %9
  %11 = phi ptr [ null, %9 ], [ %6, %3 ]
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !39
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 1
  %17 = tail call ptr %12(i64 noundef %15, ptr noundef nonnull %16) #11
  %18 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 6
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef %11, i64 noundef 64) #11
  %20 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 2
  store i32 %0, ptr %20, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 3
  store i32 19, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 19, i32 23
  store i32 %26, ptr %21, align 4
  %27 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %10
  tail call void %28(ptr noundef %17) #11
  br label %31

31:                                               ; preds = %30, %10
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @modifier_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp ult i32 %3, 49
  tail call void @llvm.assume(i1 %4)
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp ne i8 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void %11(ptr noundef %0) #11
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #11
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @modifierType_getInfo(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp ult i32 %0, 49
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load i8, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3, %1
  br label %10

10:                                               ; preds = %3, %9
  %11 = phi ptr [ null, %9 ], [ %6, %3 ]
  ret ptr %11
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @modifier_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = icmp ult i32 %8, 49
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = load i8, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %6
  br label %17

17:                                               ; preds = %10, %16
  %18 = phi ptr [ null, %16 ], [ %13, %10 ]
  tail call void @BLI_uniquename(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %18, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #11
  br label %19

19:                                               ; preds = %17, %2
  ret void
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @modifier_dependsOnTime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp ult i32 %3, 49
  tail call void @llvm.assume(i1 %4)
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp ne i8 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = tail call zeroext i8 %11(ptr noundef %0) #11
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i8 [ 0, %1 ], [ %16, %13 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifier_supportsMapping(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp ult i32 %3, 49
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = load i8, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %1
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi ptr [ null, %11 ], [ %8, %5 ]
  %14 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %13, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 2
  %22 = and i8 %21, 1
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i8 [ 1, %12 ], [ %22, %17 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifier_isPreview(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp ult i32 %3, 49
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = load i8, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %1
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi ptr [ null, %11 ], [ %8, %5 ]
  %14 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %13, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !44
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i8 [ 0, %18 ], [ %26, %22 ]
  ret i8 %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @modifiers_findByType(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !69

12:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @modifiers_findByName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 32) #11
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @modifiers_clearErrors(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #11
  store ptr null, ptr %7, align 8, !tbaa !52
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !72

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @modifiers_foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %22, %21 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp ult i32 %10, 49
  tail call void @llvm.assume(i1 %11)
  %12 = zext nneg i32 %10 to i64
  %13 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load i8, ptr %14, align 8, !tbaa !38
  %16 = icmp ne i8 %15, 0
  tail call void @llvm.assume(i1 %16)
  %17 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %14, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  tail call void %18(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %21

21:                                               ; preds = %20, %7
  %22 = load ptr, ptr %8, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !74

24:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3, %30
  %8 = phi ptr [ %31, %30 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp ult i32 %10, 49
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = zext nneg i32 %10 to i64
  %14 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load i8, ptr %15, align 8, !tbaa !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %7
  br label %19

19:                                               ; preds = %12, %18
  %20 = phi ptr [ null, %18 ], [ %15, %12 ]
  %21 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %20, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %20, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %19
  %29 = phi ptr [ %22, %19 ], [ %26, %24 ]
  tail call void %29(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %30

30:                                               ; preds = %28, %24
  %31 = load ptr, ptr %8, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !76

33:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @modifiers_foreachTexLink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %22, %21 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp ult i32 %10, 49
  tail call void @llvm.assume(i1 %11)
  %12 = zext nneg i32 %10 to i64
  %13 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load i8, ptr %14, align 8, !tbaa !38
  %16 = icmp ne i8 %15, 0
  tail call void @llvm.assume(i1 %16)
  %17 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %14, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  tail call void %18(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %21

21:                                               ; preds = %20, %7
  %22 = load ptr, ptr %8, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !78

24:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @modifier_copyData_generic(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = icmp ult i32 %4, 49
  tail call void @llvm.assume(i1 %5)
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = load i8, ptr %8, align 8, !tbaa !38
  %10 = icmp ne i8 %9, 0
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds i8, ptr %0, i64 112
  %12 = getelementptr inbounds i8, ptr %1, i64 112
  %13 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !39
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, -112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr nonnull align 1 %11, i64 %16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @modifier_copyData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = icmp ult i32 %4, 49
  tail call void @llvm.assume(i1 %5)
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = load i8, ptr %8, align 8, !tbaa !38
  %10 = icmp ne i8 %9, 0
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 3
  store i32 %12, ptr %13, align 4, !tbaa !44
  %14 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  tail call void %15(ptr noundef %0, ptr noundef %1) #11
  br label %18

18:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @modifier_supportsCage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = icmp ult i32 %4, 49
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load i8, ptr %9, align 8, !tbaa !38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %2
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi ptr [ null, %12 ], [ %9, %6 ]
  %15 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  store ptr %0, ptr %15, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %14, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 0) #11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19, %13
  %23 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %14, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !45
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %3, align 8, !tbaa !42
  %29 = icmp ult i32 %28, 49
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = load i8, ptr %33, align 8, !tbaa !38
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %27
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi ptr [ null, %36 ], [ %33, %30 ]
  %39 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !68
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %38, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !45
  %45 = trunc i32 %44 to i8
  %46 = lshr i8 %45, 2
  %47 = and i8 %46, 1
  br label %48

48:                                               ; preds = %42, %37, %22, %19
  %49 = phi i8 [ 0, %22 ], [ 0, %19 ], [ 1, %37 ], [ %47, %42 ]
  ret i8 %49
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @modifier_couldBeCage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = icmp ult i32 %4, 49
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load i8, ptr %9, align 8, !tbaa !38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %2
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi ptr [ null, %12 ], [ %9, %6 ]
  %15 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  store ptr %0, ptr %15, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = and i32 %17, 5
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %48

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %14, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 0) #11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24, %20
  %28 = load i32, ptr %3, align 8, !tbaa !42
  %29 = icmp ult i32 %28, 49
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = load i8, ptr %33, align 8, !tbaa !38
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %27
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi ptr [ null, %36 ], [ %33, %30 ]
  %39 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !68
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %38, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !45
  %45 = trunc i32 %44 to i8
  %46 = lshr i8 %45, 2
  %47 = and i8 %46, 1
  br label %48

48:                                               ; preds = %42, %37, %24, %13
  %49 = phi i8 [ 0, %24 ], [ 0, %13 ], [ 1, %37 ], [ %47, %42 ]
  ret i8 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local zeroext i8 @modifier_isSameTopology(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp ult i32 %3, 49
  tail call void @llvm.assume(i1 %4)
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp ne i8 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = and i32 %11, -5
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local zeroext i8 @modifier_isNonGeometrical(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp ult i32 %3, 49
  tail call void @llvm.assume(i1 %4)
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp ne i8 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = icmp eq i32 %11, 5
  %13 = zext i1 %12 to i8
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @modifier_setError(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 512, ptr noundef %1, ptr noundef nonnull %4) #11
  call void @llvm.va_end(ptr %4)
  %6 = getelementptr inbounds [512 x i8], ptr %3, i64 0, i64 511
  store i8 0, ptr %6, align 1, !tbaa !38
  %7 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %11(ptr noundef nonnull %8) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = call ptr @BLI_strdup(ptr noundef nonnull %3) #11
  store ptr %13, ptr %7, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @modifiers_getCageIndex(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %5) #11
  %6 = icmp eq i8 %3, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %5)
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  %14 = icmp ne ptr %2, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 -1, ptr %2, align 4, !tbaa !48
  br label %16

16:                                               ; preds = %15, %12
  %17 = icmp eq ptr %13, null
  br i1 %17, label %93, label %18

18:                                               ; preds = %16, %89
  %19 = phi ptr [ %91, %89 ], [ %13, %16 ]
  %20 = phi i32 [ %90, %89 ], [ 0, %16 ]
  %21 = phi i32 [ %87, %89 ], [ -1, %16 ]
  %22 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !42
  %24 = icmp ult i32 %23, 49
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = load i8, ptr %28, align 8, !tbaa !38
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %25, %31
  %33 = phi ptr [ null, %31 ], [ %28, %25 ]
  %34 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 7
  store ptr %0, ptr %34, align 8, !tbaa !80
  %35 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %33, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !81
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = call zeroext i8 %36(ptr noundef nonnull %19, i32 noundef 0) #11
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %38, %32
  %42 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %33, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !45
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !44
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %86

50:                                               ; preds = %46
  %51 = load i32, ptr %22, align 8, !tbaa !42
  %52 = icmp ult i32 %51, 49
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = load i8, ptr %56, align 8, !tbaa !38
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %50
  br label %60

60:                                               ; preds = %59, %53
  %61 = phi ptr [ null, %59 ], [ %56, %53 ]
  %62 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !68
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %61, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !45
  %68 = trunc i32 %67 to i8
  %69 = lshr i8 %68, 2
  %70 = and i8 %69, 1
  br label %71

71:                                               ; preds = %60, %65
  %72 = phi i8 [ 1, %60 ], [ %70, %65 ]
  %73 = icmp ne i8 %72, 0
  %74 = select i1 %14, i1 %73, i1 false
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 %20, ptr %2, align 4, !tbaa !48
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, ptr %47, align 4, !tbaa !44
  %78 = and i32 %77, 5
  %79 = icmp eq i32 %78, 5
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = icmp eq i8 %72, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %80
  %83 = and i32 %77, 8
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 %21, i32 %20
  br label %86

86:                                               ; preds = %80, %76, %46, %41, %38, %82
  %87 = phi i32 [ %85, %82 ], [ %21, %38 ], [ %21, %41 ], [ %21, %46 ], [ %21, %76 ], [ %21, %80 ]
  %88 = phi i1 [ false, %82 ], [ false, %38 ], [ false, %41 ], [ false, %46 ], [ false, %76 ], [ true, %80 ]
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = add nuw nsw i32 %20, 1
  %91 = load ptr, ptr %19, align 8, !tbaa !88
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %18, !llvm.loop !89

93:                                               ; preds = %89, %86, %16
  %94 = phi i32 [ -1, %16 ], [ %87, %86 ], [ %87, %89 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %5) #11
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define dso_local ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 8 dereferenceable(696) @virtualModifierCommonData, i64 696, i1 false), !tbaa.struct !90
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !92
  switch i16 %10, label %43 [
    i16 25, label %11
    i16 2, label %23
    i16 22, label %36
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !93
  %14 = icmp eq i16 %13, 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 4
  store ptr %6, ptr %16, align 8, !tbaa !94
  store ptr %4, ptr %1, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 12
  %20 = load i16, ptr %19, align 8, !tbaa !97
  %21 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 1
  store i16 %20, ptr %21, align 8, !tbaa !99
  br label %43

22:                                               ; preds = %11
  switch i16 %10, label %43 [
    i16 2, label %23
    i16 22, label %36
  ]

23:                                               ; preds = %8, %22
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %25 = load i16, ptr %24, align 2, !tbaa !93
  %26 = icmp eq i16 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 1, i32 1
  store ptr %6, ptr %29, align 8, !tbaa !100
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 57
  %31 = load i16, ptr %30, align 4, !tbaa !101
  %32 = add i16 %31, 1
  %33 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 1, i32 3
  store i16 %32, ptr %33, align 8, !tbaa !102
  store ptr %4, ptr %28, align 8, !tbaa !103
  br label %43

34:                                               ; preds = %23
  %35 = icmp eq i16 %10, 22
  br i1 %35, label %36, label %43

36:                                               ; preds = %8, %22, %34
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %38 = load i16, ptr %37, align 2, !tbaa !93
  %39 = icmp eq i16 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 2
  %42 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 2, i32 1
  store ptr %6, ptr %42, align 8, !tbaa !104
  store ptr %4, ptr %41, align 8, !tbaa !105
  br label %43

43:                                               ; preds = %8, %22, %15, %34, %36, %40, %27, %2
  %44 = phi ptr [ %1, %15 ], [ %28, %27 ], [ %41, %40 ], [ %4, %36 ], [ %4, %34 ], [ %4, %2 ], [ %4, %22 ], [ %4, %8 ]
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !92
  switch i16 %46, label %68 [
    i16 1, label %47
    i16 22, label %47
  ]

47:                                               ; preds = %43, %43
  %48 = tail call ptr @BKE_key_from_object(ptr noundef %0) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load i16, ptr %45, align 8, !tbaa !92
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 114
  %55 = load i8, ptr %54, align 1, !tbaa !106
  %56 = and i8 %55, 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 3, i32 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !66
  %61 = or i32 %60, 12
  store i32 %61, ptr %59, align 4, !tbaa !66
  br label %66

62:                                               ; preds = %53, %50
  %63 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 3, i32 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !66
  %65 = and i32 %64, -5
  store i32 %65, ptr %63, align 4, !tbaa !66
  br label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 3
  store ptr %44, ptr %67, align 8, !tbaa !107
  br label %68

68:                                               ; preds = %43, %66, %47
  %69 = phi ptr [ %67, %66 ], [ %44, %47 ], [ %44, %43 ]
  ret ptr %69
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isSoftbodyEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %3, !llvm.loop !69

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %3, %11
  %18 = phi i8 [ %16, %11 ], [ 0, %3 ]
  ret i8 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isClothEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 22
  br i1 %10, label %11, label %3, !llvm.loop !69

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %3, %11
  %18 = phi i8 [ %16, %11 ], [ 0, %3 ]
  ret i8 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isModifierEnabled(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !69

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %4, %12
  %19 = phi i8 [ %17, %12 ], [ 0, %4 ]
  ret i8 %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isParticleEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %11, label %3, !llvm.loop !69

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %3, %11
  %18 = phi i8 [ %16, %11 ], [ 0, %3 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp ult i32 %5, 49
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load i8, ptr %10, align 8, !tbaa !38
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi ptr [ null, %13 ], [ %10, %7 ]
  %16 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  store ptr %0, ptr %16, align 8, !tbaa !80
  %17 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = and i32 %18, %2
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %15, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !81
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %2, 2
  %27 = zext i1 %26 to i32
  %28 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef %27) #11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25, %21
  %31 = load i32, ptr %17, align 4, !tbaa !44
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = and i32 %2, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %15, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !45
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %36, %30, %25, %14, %41
  %43 = phi i8 [ 1, %41 ], [ 0, %14 ], [ 0, %25 ], [ 0, %30 ], [ 0, %36 ]
  ret i8 %43
}

; Function Attrs: nounwind uwtable
define dso_local ptr @modifiers_calcDataMasks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef readnone %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !34
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %4, 2
  %12 = zext i1 %11 to i32
  %13 = and i32 %4, 4
  %14 = icmp eq i32 %13, 0
  br label %18

15:                                               ; preds = %79, %7
  %16 = load ptr, ptr %8, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %97, label %83

18:                                               ; preds = %10, %79
  %19 = phi ptr [ %2, %10 ], [ %81, %79 ]
  %20 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !42
  %22 = icmp ult i32 %21, 49
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = load i8, ptr %26, align 8, !tbaa !38
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18
  br label %30

30:                                               ; preds = %23, %29
  %31 = phi ptr [ null, %29 ], [ %26, %23 ]
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = tail call ptr %32(i64 noundef 16, ptr noundef nonnull @.str) #11
  %34 = load i32, ptr %20, align 8, !tbaa !42
  %35 = icmp ult i32 %34, 49
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = load i8, ptr %39, align 8, !tbaa !38
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi ptr [ null, %42 ], [ %39, %36 ]
  %45 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 7
  store ptr %0, ptr %45, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !44
  %48 = and i32 %47, %4
  %49 = icmp eq i32 %48, %4
  br i1 %49, label %50, label %79

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %44, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !81
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = tail call zeroext i8 %52(ptr noundef nonnull %19, i32 noundef %12) #11
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54, %50
  %58 = load i32, ptr %46, align 4, !tbaa !44
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  br i1 %14, label %66, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %44, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !45
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %61, %60
  %67 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %31, i64 0, i32 13
  %68 = load ptr, ptr %67, align 8, !tbaa !108
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = tail call i64 %68(ptr noundef %1, ptr noundef nonnull %19) #11
  %72 = getelementptr inbounds %struct.CDMaskLink, ptr %33, i64 0, i32 1
  store i64 %71, ptr %72, align 8, !tbaa !109
  br label %73

73:                                               ; preds = %70, %66
  %74 = icmp eq ptr %19, %5
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.CDMaskLink, ptr %33, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !109
  %78 = or i64 %77, %6
  store i64 %78, ptr %76, align 8, !tbaa !109
  br label %79

79:                                               ; preds = %61, %57, %54, %43, %73, %75
  %80 = load ptr, ptr %8, align 8, !tbaa !34
  store ptr %80, ptr %33, align 8, !tbaa !111
  store ptr %33, ptr %8, align 8, !tbaa !34
  %81 = load ptr, ptr %19, align 8, !tbaa !88
  %82 = icmp eq ptr %81, null
  br i1 %82, label %15, label %18, !llvm.loop !112

83:                                               ; preds = %15, %90
  %84 = phi ptr [ %95, %90 ], [ %16, %15 ]
  %85 = phi ptr [ %84, %90 ], [ null, %15 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.CDMaskLink, ptr %85, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !109
  br label %90

90:                                               ; preds = %83, %87
  %91 = phi i64 [ %89, %87 ], [ %3, %83 ]
  %92 = getelementptr inbounds %struct.CDMaskLink, ptr %84, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !109
  %94 = or i64 %93, %91
  store i64 %94, ptr %92, align 8, !tbaa !109
  %95 = load ptr, ptr %84, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %83, !llvm.loop !113

97:                                               ; preds = %90, %15
  call void @BLI_linklist_reverse(ptr noundef nonnull %8) #11
  %98 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret ptr %98
}

declare void @BLI_linklist_reverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @modifiers_getLastPreview(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, -5
  %5 = icmp ne i32 %4, 1
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %80, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 2
  %10 = zext i1 %9 to i32
  %11 = icmp ult i32 %2, 4
  br label %12

12:                                               ; preds = %8, %76
  %13 = phi ptr [ null, %8 ], [ %77, %76 ]
  %14 = phi ptr [ %1, %8 ], [ %78, %76 ]
  %15 = getelementptr inbounds %struct.ModifierData, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !42
  %17 = icmp ult i32 %16, 49
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load i8, ptr %21, align 8, !tbaa !38
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %12
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi ptr [ null, %24 ], [ %21, %18 ]
  %27 = getelementptr inbounds %struct.ModifierData, ptr %14, i64 0, i32 7
  store ptr %0, ptr %27, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.ModifierData, ptr %14, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = and i32 %29, %2
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %76

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !81
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = tail call zeroext i8 %34(ptr noundef nonnull %14, i32 noundef %10) #11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36, %32
  %40 = load i32, ptr %28, align 4, !tbaa !44
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  br i1 %11, label %48, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !45
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %43, %42
  %49 = load i32, ptr %15, align 8, !tbaa !42
  %50 = icmp ult i32 %49, 49
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = load i8, ptr %54, align 8, !tbaa !38
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi ptr [ null, %57 ], [ %54, %51 ]
  %60 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %59, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !45
  %62 = and i32 %61, 512
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %59, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !68
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %58
  %69 = load i32, ptr %28, align 4, !tbaa !44
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  br label %72

72:                                               ; preds = %64, %68
  %73 = phi i8 [ 0, %64 ], [ %71, %68 ]
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, ptr %13, ptr %14
  br label %76

76:                                               ; preds = %43, %39, %36, %25, %72
  %77 = phi ptr [ %75, %72 ], [ %13, %25 ], [ %13, %36 ], [ %13, %39 ], [ %13, %43 ]
  %78 = load ptr, ptr %14, align 8, !tbaa !88
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %12, !llvm.loop !114

80:                                               ; preds = %76, %3
  %81 = phi ptr [ null, %3 ], [ %77, %76 ]
  ret ptr %81
}

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @modifiers_isDeformedByArmature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %2) #11
  %3 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %21, %20 ], [ null, %1 ]
  %7 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 53
  %17 = load i16, ptr %16, align 4, !tbaa !116
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5, %15, %11
  %21 = phi ptr [ %7, %15 ], [ %7, %11 ], [ %6, %5 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !117

24:                                               ; preds = %20, %1
  %25 = phi ptr [ null, %1 ], [ %21, %20 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ArmatureModifierData, ptr %25, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  br label %30

30:                                               ; preds = %15, %24, %27
  %31 = phi ptr [ %29, %27 ], [ null, %24 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %2) #11
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local ptr @modifiers_isDeformedByLattice(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %2) #11
  %3 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %21, %20 ], [ null, %1 ]
  %7 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.LatticeModifierData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 53
  %17 = load i16, ptr %16, align 4, !tbaa !116
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5, %15, %11
  %21 = phi ptr [ %7, %15 ], [ %7, %11 ], [ %6, %5 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !119

24:                                               ; preds = %20, %1
  %25 = phi ptr [ null, %1 ], [ %21, %20 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.LatticeModifierData, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  br label %30

30:                                               ; preds = %15, %24, %27
  %31 = phi ptr [ %29, %27 ], [ null, %24 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %2) #11
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local ptr @modifiers_isDeformedByCurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %2) #11
  %3 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %21, %20 ], [ null, %1 ]
  %7 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.CurveModifierData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 53
  %17 = load i16, ptr %16, align 4, !tbaa !116
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5, %15, %11
  %21 = phi ptr [ %7, %15 ], [ %7, %11 ], [ %6, %5 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !121

24:                                               ; preds = %20, %1
  %25 = phi ptr [ null, %1 ], [ %21, %20 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.CurveModifierData, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !120
  br label %30

30:                                               ; preds = %15, %24, %27
  %31 = phi ptr [ %29, %27 ], [ null, %24 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %2) #11
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @modifiers_usesArmature(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #11
  %4 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %19
  %7 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %15, %6
  %20 = load ptr, ptr %7, align 8, !tbaa !88
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !122

22:                                               ; preds = %15, %19, %2
  %23 = phi i8 [ 0, %2 ], [ 1, %15 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #11
  ret i8 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local zeroext i8 @modifier_isCorrectableDeformed(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp ult i32 %3, 49
  tail call void @llvm.assume(i1 %4)
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp ne i8 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i8
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @modifiers_isCorrectableDeformed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #11
  %4 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3)
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, i32 5, i32 1
  %9 = icmp eq ptr %4, null
  br i1 %9, label %59, label %10

10:                                               ; preds = %2, %56
  %11 = phi ptr [ %57, %56 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = icmp ult i32 %13, 49
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load i8, ptr %18, align 8, !tbaa !38
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %10
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi ptr [ null, %21 ], [ %18, %15 ]
  %24 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 7
  store ptr %0, ptr %24, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !44
  %27 = and i32 %26, %8
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %29, label %56

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %23, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = call zeroext i8 %31(ptr noundef nonnull %11, i32 noundef 0) #11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33, %29
  %37 = load i32, ptr %25, align 4, !tbaa !44
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  br i1 %7, label %40, label %45

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %23, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !45
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40, %39
  %46 = load i32, ptr %12, align 8, !tbaa !42
  %47 = icmp ult i32 %46, 49
  call void @llvm.assume(i1 %47)
  %48 = zext nneg i32 %46 to i64
  %49 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = load i8, ptr %50, align 8, !tbaa !38
  %52 = icmp ne i8 %51, 0
  call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %50, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !123
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %40, %36, %33, %22, %45
  %57 = load ptr, ptr %11, align 8, !tbaa !88
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %10, !llvm.loop !125

59:                                               ; preds = %45, %56, %2
  %60 = phi i8 [ 0, %2 ], [ 1, %45 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #11
  ret i8 %60
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @modifiers_isPreview(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %3

3:                                                ; preds = %33, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %33 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp ult i32 %9, 49
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load i8, ptr %14, align 8, !tbaa !38
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %7
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi ptr [ null, %17 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !45
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %19, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !68
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !44
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  br label %33

33:                                               ; preds = %24, %28
  %34 = phi i8 [ 0, %24 ], [ %32, %28 ]
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %3, label %36, !llvm.loop !126

36:                                               ; preds = %3, %33
  %37 = phi i8 [ 1, %33 ], [ 0, %3 ]
  ret i8 %37
}

; Function Attrs: nounwind uwtable
define dso_local void @modifier_freeTemporaryData(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %7) #11
  store ptr null, ptr %6, align 8, !tbaa !127
  br label %11

11:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_object_modifiers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !92
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = icmp eq i32 %12, 29
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @multiresModifier_set_levels_from_disps(ptr noundef nonnull %10, ptr noundef %0) #11
  br label %15

15:                                               ; preds = %9, %14
  %16 = load ptr, ptr %10, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !128

18:                                               ; preds = %15, %5, %1
  ret void
}

declare void @multiresModifier_set_levels_from_disps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @modifier_path_relbase(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.Library, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr @G, align 8
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = select i1 %11, ptr %14, ptr %12
  br label %18

16:                                               ; preds = %4
  %17 = tail call ptr @BLI_temp_dir_session() #11
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %15, %8 ], [ %17, %16 ]
  ret ptr %19
}

declare ptr @BLI_temp_dir_session() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @modifier_path_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !129
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @BLI_temp_dir_session() #11
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ @.str.1, %3 ]
  %10 = sext i32 %1 to i64
  tail call void @BLI_join_dirfile(ptr noundef %0, i64 noundef %10, ptr noundef %9, ptr noundef %2) #11
  ret void
}

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @modwrap_applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = icmp ult i32 %6, 49
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = load i8, ptr %11, align 8, !tbaa !38
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %4
  br label %15

15:                                               ; preds = %8, %14
  %16 = phi ptr [ null, %14 ], [ %11, %8 ]
  %17 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = tail call zeroext i8 %18(ptr noundef %0) #11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @DM_ensure_normals(ptr noundef %2) #11
  br label %24

24:                                               ; preds = %23, %20, %15
  %25 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %16, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !133
  %27 = tail call ptr %26(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  ret ptr %27
}

declare void @DM_ensure_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @modwrap_applyModifierEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = icmp ult i32 %7, 49
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = load i8, ptr %12, align 8, !tbaa !38
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %5
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ null, %15 ], [ %12, %9 ]
  %18 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %17, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = tail call zeroext i8 %19(ptr noundef %0) #11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @DM_ensure_normals(ptr noundef %3) #11
  br label %25

25:                                               ; preds = %24, %21, %16
  %26 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %17, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !134
  %28 = tail call ptr %27(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #11
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local void @modwrap_deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = icmp ult i32 %8, 49
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = load i8, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %6
  br label %17

17:                                               ; preds = %10, %16
  %18 = phi ptr [ null, %16 ], [ %13, %10 ]
  %19 = icmp eq ptr %2, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !132
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i8 %22(ptr noundef %0) #11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @DM_ensure_normals(ptr noundef nonnull %2) #11
  br label %28

28:                                               ; preds = %27, %24, %20, %17
  %29 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  tail call void %30(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @modwrap_deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = icmp ult i32 %8, 49
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = load i8, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %6
  br label %17

17:                                               ; preds = %10, %16
  %18 = phi ptr [ null, %16 ], [ %13, %10 ]
  %19 = icmp eq ptr %3, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !132
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i8 %22(ptr noundef %0) #11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @DM_ensure_normals(ptr noundef nonnull %3) #11
  br label %28

28:                                               ; preds = %27, %24, %20, %17
  %29 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  tail call void %30(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{!40, !41, i64 64}
!40 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !41, i64 16}
!43 = !{!"ModifierData", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!44 = !{!43, !41, i64 20}
!45 = !{!40, !41, i64 72}
!46 = !{!40, !35, i64 136}
!47 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 4, !48, i64 28, i64 4, !48, i64 32, i64 64, !38, i64 96, i64 8, !34, i64 104, i64 8, !34, i64 112, i64 2, !49, i64 114, i64 2, !49, i64 116, i64 4, !48, i64 120, i64 8, !34, i64 128, i64 8, !34, i64 136, i64 64, !38}
!48 = !{!41, !41, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !36, i64 0}
!51 = !{!40, !35, i64 152}
!52 = !{!43, !35, i64 104}
!53 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 4, !48, i64 28, i64 4, !48, i64 32, i64 64, !38, i64 96, i64 8, !34, i64 104, i64 8, !34, i64 112, i64 8, !34, i64 120, i64 64, !38, i64 184, i64 2, !49, i64 186, i64 6, !38}
!54 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 4, !48, i64 28, i64 4, !48, i64 32, i64 64, !38, i64 96, i64 8, !34, i64 104, i64 8, !34, i64 112, i64 8, !34, i64 120, i64 64, !38, i64 184, i64 4, !55, i64 188, i64 4, !38}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !36, i64 0}
!57 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 4, !48, i64 28, i64 4, !48, i64 32, i64 64, !38, i64 96, i64 8, !34, i64 104, i64 8, !34}
!58 = !{!59, !41, i64 20}
!59 = !{!"VirtualModifierData", !60, i64 0, !61, i64 200, !62, i64 392, !63, i64 584}
!60 = !{!"ArmatureModifierData", !43, i64 0, !50, i64 112, !50, i64 114, !41, i64 116, !35, i64 120, !35, i64 128, !36, i64 136}
!61 = !{!"CurveModifierData", !43, i64 0, !35, i64 112, !36, i64 120, !50, i64 184, !36, i64 186}
!62 = !{!"LatticeModifierData", !43, i64 0, !35, i64 112, !36, i64 120, !56, i64 184, !36, i64 188}
!63 = !{!"ShapeKeyModifierData", !43, i64 0}
!64 = !{!59, !41, i64 220}
!65 = !{!59, !41, i64 412}
!66 = !{!59, !41, i64 604}
!67 = !{!40, !35, i64 176}
!68 = !{!40, !41, i64 68}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !70, !71}
!73 = !{!40, !35, i64 192}
!74 = distinct !{!74, !70, !71}
!75 = !{!40, !35, i64 200}
!76 = distinct !{!76, !70, !71}
!77 = !{!40, !35, i64 208}
!78 = distinct !{!78, !70, !71}
!79 = !{!40, !35, i64 80}
!80 = !{!43, !35, i64 96}
!81 = !{!40, !35, i64 160}
!82 = !{!83, !35, i64 416}
!83 = !{!"Object", !84, i64 0, !35, i64 120, !35, i64 128, !50, i64 136, !50, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !85, i64 312, !35, i64 360, !86, i64 368, !86, i64 384, !86, i64 400, !86, i64 416, !41, i64 432, !41, i64 436, !35, i64 440, !35, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !56, i64 616, !56, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !50, i64 948, !50, i64 950, !50, i64 952, !50, i64 954, !50, i64 956, !50, i64 958, !50, i64 960, !50, i64 962, !50, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !50, i64 1036, !50, i64 1038, !50, i64 1040, !36, i64 1042, !36, i64 1043, !50, i64 1044, !36, i64 1046, !36, i64 1047, !56, i64 1048, !56, i64 1052, !86, i64 1056, !86, i64 1072, !86, i64 1088, !86, i64 1104, !56, i64 1120, !50, i64 1124, !50, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !50, i64 1162, !36, i64 1164, !86, i64 1176, !86, i64 1192, !86, i64 1208, !86, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !50, i64 1266, !56, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !87, i64 1304, !87, i64 1312, !41, i64 1320, !41, i64 1324, !86, i64 1328, !86, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !86, i64 1400, !35, i64 1416}
!84 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !50, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!85 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!86 = !{!"ListBase", !35, i64 0, !35, i64 8}
!87 = !{!"long", !36, i64 0}
!88 = !{!43, !35, i64 0}
!89 = distinct !{!89, !70, !71}
!90 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 4, !48, i64 28, i64 4, !48, i64 32, i64 64, !38, i64 96, i64 8, !34, i64 104, i64 8, !34, i64 112, i64 2, !49, i64 114, i64 2, !49, i64 116, i64 4, !48, i64 120, i64 8, !34, i64 128, i64 8, !34, i64 136, i64 64, !38, i64 200, i64 8, !34, i64 208, i64 8, !34, i64 216, i64 4, !48, i64 220, i64 4, !48, i64 224, i64 4, !48, i64 228, i64 4, !48, i64 232, i64 64, !38, i64 296, i64 8, !34, i64 304, i64 8, !34, i64 312, i64 8, !34, i64 320, i64 64, !38, i64 384, i64 2, !49, i64 386, i64 6, !38, i64 392, i64 8, !34, i64 400, i64 8, !34, i64 408, i64 4, !48, i64 412, i64 4, !48, i64 416, i64 4, !48, i64 420, i64 4, !48, i64 424, i64 64, !38, i64 488, i64 8, !34, i64 496, i64 8, !34, i64 504, i64 8, !34, i64 512, i64 64, !38, i64 576, i64 4, !55, i64 580, i64 4, !38, i64 584, i64 8, !34, i64 592, i64 8, !34, i64 600, i64 4, !48, i64 604, i64 4, !48, i64 608, i64 4, !48, i64 612, i64 4, !48, i64 616, i64 64, !38, i64 680, i64 8, !34, i64 688, i64 8, !34}
!91 = !{!83, !35, i64 216}
!92 = !{!83, !50, i64 136}
!93 = !{!83, !50, i64 138}
!94 = !{!59, !35, i64 120}
!95 = !{!59, !35, i64 0}
!96 = !{!83, !35, i64 296}
!97 = !{!98, !50, i64 208}
!98 = !{!"bArmature", !84, i64 0, !35, i64 120, !86, i64 128, !86, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !50, i64 208, !50, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!99 = !{!59, !50, i64 112}
!100 = !{!59, !35, i64 312}
!101 = !{!83, !50, i64 956}
!102 = !{!59, !50, i64 384}
!103 = !{!59, !35, i64 200}
!104 = !{!59, !35, i64 504}
!105 = !{!59, !35, i64 392}
!106 = !{!83, !36, i64 1265}
!107 = !{!59, !35, i64 584}
!108 = !{!40, !35, i64 144}
!109 = !{!110, !87, i64 8}
!110 = !{!"CDMaskLink", !35, i64 0, !87, i64 8}
!111 = !{!110, !35, i64 0}
!112 = distinct !{!112, !70, !71}
!113 = distinct !{!113, !70, !71}
!114 = distinct !{!114, !70, !71}
!115 = !{!60, !35, i64 120}
!116 = !{!83, !50, i64 948}
!117 = distinct !{!117, !70, !71}
!118 = !{!62, !35, i64 112}
!119 = distinct !{!119, !70, !71}
!120 = !{!61, !35, i64 112}
!121 = distinct !{!121, !70, !71}
!122 = distinct !{!122, !70, !71}
!123 = !{!40, !35, i64 112}
!124 = !{!83, !41, i64 432}
!125 = distinct !{!125, !70, !71}
!126 = distinct !{!126, !70, !71}
!127 = !{!60, !35, i64 128}
!128 = distinct !{!128, !70, !71}
!129 = !{!130, !36, i64 2056}
!130 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !86, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !50, i64 2084, !50, i64 2086, !50, i64 2088, !36, i64 2090, !50, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!131 = !{!83, !35, i64 24}
!132 = !{!40, !35, i64 184}
!133 = !{!40, !35, i64 120}
!134 = !{!40, !35, i64 128}
!135 = !{!40, !35, i64 88}
!136 = !{!40, !35, i64 104}
