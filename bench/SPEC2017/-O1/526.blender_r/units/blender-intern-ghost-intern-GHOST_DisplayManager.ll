; ModuleID = 'blender/intern/ghost/intern/GHOST_DisplayManager.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_DisplayManager.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_DisplayManager = type { ptr, i8, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<GHOST_DisplaySetting>, std::allocator<std::vector<GHOST_DisplaySetting>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<GHOST_DisplaySetting>, std::allocator<std::vector<GHOST_DisplaySetting>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<GHOST_DisplaySetting>, std::allocator<std::vector<GHOST_DisplaySetting>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<GHOST_DisplaySetting>, std::allocator<std::vector<GHOST_DisplaySetting>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl" }
%"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl" = type { %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data" }
%"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.GHOST_DisplaySetting = type { i32, i32, i32, i32 }

$__clang_call_terminate = comdat any

$_ZNSt6vectorIS_I20GHOST_DisplaySettingSaIS0_EESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

@_ZTV20GHOST_DisplayManager = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI20GHOST_DisplayManager, ptr @_ZN20GHOST_DisplayManagerD2Ev, ptr @_ZN20GHOST_DisplayManagerD0Ev, ptr @_ZN20GHOST_DisplayManager10initializeEv, ptr @_ZNK20GHOST_DisplayManager14getNumDisplaysERh, ptr @_ZNK20GHOST_DisplayManager21getNumDisplaySettingsEhRi, ptr @_ZNK20GHOST_DisplayManager17getDisplaySettingEhiR20GHOST_DisplaySetting, ptr @_ZNK20GHOST_DisplayManager24getCurrentDisplaySettingEhR20GHOST_DisplaySetting, ptr @_ZN20GHOST_DisplayManager24setCurrentDisplaySettingEhRK20GHOST_DisplaySetting] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS20GHOST_DisplayManager = dso_local constant [23 x i8] c"20GHOST_DisplayManager\00", align 1
@_ZTI20GHOST_DisplayManager = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS20GHOST_DisplayManager }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN20GHOST_DisplayManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20GHOST_DisplayManagerC2Ev
@_ZN20GHOST_DisplayManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20GHOST_DisplayManagerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN20GHOST_DisplayManagerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTV20GHOST_DisplayManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !37
  %3 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20GHOST_DisplayManagerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTV20GHOST_DisplayManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %1, %12
  %8 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #15
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %"class.std::vector.0", ptr %8, i64 1
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %7, !llvm.loop !50

15:                                               ; preds = %12, %1
  %16 = load ptr, ptr %2, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %16) #15
  br label %19

19:                                               ; preds = %15, %18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20GHOST_DisplayManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTV20GHOST_DisplayManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %1, %12
  %8 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #15
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %"class.std::vector.0", ptr %8, i64 1
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %7, !llvm.loop !50

15:                                               ; preds = %12, %1
  %16 = load ptr, ptr %2, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %16) #15
  br label %19

19:                                               ; preds = %15, %18
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20GHOST_DisplayManager10initializeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !37, !range !53, !noundef !54
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN20GHOST_DisplayManager18initializeSettingsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store i8 1, ptr %2, align 8, !tbaa !37
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 1, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20GHOST_DisplayManager18initializeSettingsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.std::vector.0", align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GHOST_DisplaySetting, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %138

11:                                               ; preds = %1
  %12 = load i8, ptr %2, align 1, !tbaa !55
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %138, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %16 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %18 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  br label %26

19:                                               ; preds = %129
  %20 = add nuw nsw i64 %27, 1
  %21 = load i8, ptr %2, align 1, !tbaa !55
  %22 = zext i8 %21 to i64
  %23 = icmp ult i64 %20, %22
  %24 = icmp eq i32 %125, 1
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %138, !llvm.loop !56

26:                                               ; preds = %14, %19
  %27 = phi i64 [ 0, %14 ], [ %20, %19 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %28 = load ptr, ptr %17, align 8, !tbaa !57
  %29 = load ptr, ptr %18, align 8, !tbaa !58
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %28, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %33 = load ptr, ptr %3, align 8, !tbaa !57
  %34 = load ptr, ptr %15, align 8, !tbaa !57
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %33 to i64
  %37 = sub i64 %35, %36
  %38 = icmp eq ptr %34, %33
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i64(ptr align 4294967296 null, ptr align 4 %33, i64 %37, i1 false)
  br label %40

40:                                               ; preds = %31, %39
  %41 = getelementptr inbounds i8, ptr null, i64 %37
  store ptr %41, ptr %32, align 8, !tbaa !59
  %42 = load ptr, ptr %17, align 8, !tbaa !47
  %43 = getelementptr inbounds %"class.std::vector.0", ptr %42, i64 1
  store ptr %43, ptr %17, align 8, !tbaa !47
  br label %45

44:                                               ; preds = %26
  invoke void @_ZNSt6vectorIS_I20GHOST_DisplaySettingSaIS0_EESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr %28, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %45 unwind label %112

45:                                               ; preds = %40, %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %46 = load ptr, ptr %0, align 8, !tbaa !34
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  %49 = trunc i64 %27 to i8
  %50 = invoke noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext %49, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %51 unwind label %114

51:                                               ; preds = %45
  %52 = icmp eq i32 %50, 1
  br i1 %52, label %53, label %124

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %54 = load i32, ptr %4, align 4, !tbaa !60
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %122

56:                                               ; preds = %53
  %57 = trunc i64 %27 to i8
  br label %58

58:                                               ; preds = %56, %106
  %59 = phi i32 [ %107, %106 ], [ 0, %56 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !34
  %61 = getelementptr inbounds ptr, ptr %60, i64 5
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef i32 %62(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext %57, i32 noundef %59, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %64 unwind label %116

64:                                               ; preds = %58
  %65 = load ptr, ptr %16, align 8, !tbaa !46
  %66 = getelementptr inbounds %"class.std::vector.0", ptr %65, i64 %27
  %67 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %66, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %68, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !63
  %73 = load ptr, ptr %67, align 8, !tbaa !59
  %74 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %73, i64 1
  store ptr %74, ptr %67, align 8, !tbaa !59
  br label %106

75:                                               ; preds = %64
  %76 = load ptr, ptr %66, align 8, !tbaa !57
  %77 = ptrtoint ptr %68 to i64
  %78 = ptrtoint ptr %76 to i64
  %79 = sub i64 %77, %78
  %80 = icmp eq i64 %79, 9223372036854775792
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %82 unwind label %118

82:                                               ; preds = %81
  unreachable

83:                                               ; preds = %75
  %84 = ashr exact i64 %79, 4
  %85 = call i64 @llvm.umax.i64(i64 %84, i64 1)
  %86 = add i64 %85, %84
  %87 = icmp ult i64 %86, %84
  %88 = call i64 @llvm.umin.i64(i64 %86, i64 576460752303423487)
  %89 = select i1 %87, i64 576460752303423487, i64 %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = shl nuw nsw i64 %89, 4
  %93 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %92) #18
          to label %94 unwind label %116

94:                                               ; preds = %91, %83
  %95 = phi ptr [ null, %83 ], [ %93, %91 ]
  %96 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %95, i64 %84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %96, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !63
  %97 = icmp sgt i64 %79, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %95, ptr align 4 %76, i64 %79, i1 false)
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds i8, ptr %95, i64 %79
  %101 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %100, i64 1
  %102 = icmp eq ptr %76, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %76) #15
  br label %104

104:                                              ; preds = %99, %103
  store ptr %95, ptr %66, align 8, !tbaa !48
  store ptr %101, ptr %67, align 8, !tbaa !59
  %105 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %95, i64 %89
  store ptr %105, ptr %69, align 8, !tbaa !62
  br label %106

106:                                              ; preds = %104, %72
  %107 = add nuw nsw i32 %59, 1
  %108 = load i32, ptr %4, align 4, !tbaa !60
  %109 = icmp slt i32 %107, %108
  %110 = icmp eq i32 %63, 1
  %111 = and i1 %110, %109
  br i1 %111, label %58, label %122, !llvm.loop !64

112:                                              ; preds = %44
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %132

114:                                              ; preds = %45
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %130

116:                                              ; preds = %58, %91
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %120

118:                                              ; preds = %81
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi { ptr, i32 } [ %117, %116 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %130

122:                                              ; preds = %106, %53
  %123 = phi i32 [ 1, %53 ], [ %63, %106 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %124

124:                                              ; preds = %51, %122
  %125 = phi i32 [ %123, %122 ], [ %50, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %126 = load ptr, ptr %3, align 8, !tbaa !48
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @_ZdlPv(ptr noundef %126) #15
  br label %129

129:                                              ; preds = %124, %128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br i1 %52, label %19, label %138

130:                                              ; preds = %120, %114
  %131 = phi { ptr, i32 } [ %121, %120 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %132

132:                                              ; preds = %130, %112
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %113, %112 ]
  %134 = load ptr, ptr %3, align 8, !tbaa !48
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void @_ZdlPv(ptr noundef %134) #15
  br label %137

137:                                              ; preds = %132, %136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  resume { ptr, i32 } %133

138:                                              ; preds = %19, %129, %11, %1
  %139 = phi i32 [ %9, %1 ], [ 1, %11 ], [ %125, %129 ], [ %125, %19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret i32 %139
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK20GHOST_DisplayManager14getNumDisplaysERh(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #5 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK20GHOST_DisplayManager21getNumDisplaySettingsEhRi(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2) unnamed_addr #3 align 2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i8, ptr %4, align 1, !tbaa !55
  %12 = icmp ugt i8 %11, %1
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2
  %15 = zext i8 %1 to i64
  %16 = load ptr, ptr %14, align 8, !tbaa !46
  %17 = getelementptr inbounds %"class.std::vector.0", ptr %16, i64 %15
  %18 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = load ptr, ptr %17, align 8, !tbaa !48
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr %2, align 4, !tbaa !60
  br label %26

26:                                               ; preds = %10, %13, %3
  %27 = phi i32 [ 1, %13 ], [ %8, %3 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i32 %27
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK20GHOST_DisplayManager17getDisplaySettingEhiR20GHOST_DisplaySetting(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(16) %3) unnamed_addr #3 align 2 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %32

11:                                               ; preds = %4
  %12 = load i8, ptr %5, align 1, !tbaa !55
  %13 = icmp ugt i8 %12, %1
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = and i32 %2, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2
  %18 = zext i8 %1 to i64
  %19 = load ptr, ptr %17, align 8, !tbaa !46
  %20 = getelementptr inbounds %"class.std::vector.0", ptr %19, i64 %18
  %21 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = load ptr, ptr %20, align 8, !tbaa !48
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = ashr exact i64 %26, 4
  %28 = icmp ugt i64 %27, %16
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = sext i32 %2 to i64
  %31 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %23, i64 %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !63
  br label %32

32:                                               ; preds = %11, %14, %29, %4
  %33 = phi i32 [ 1, %29 ], [ %9, %4 ], [ 0, %14 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK20GHOST_DisplayManager24getCurrentDisplaySettingEhR20GHOST_DisplaySetting(ptr nocapture nonnull readnone align 8 %0, i8 zeroext %1, ptr nocapture nonnull readnone align 4 %2) unnamed_addr #5 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN20GHOST_DisplayManager24setCurrentDisplaySettingEhRK20GHOST_DisplaySetting(ptr nocapture nonnull readnone align 8 %0, i8 zeroext %1, ptr nocapture nonnull readnone align 4 %2) unnamed_addr #5 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK20GHOST_DisplayManager9findMatchEhRK20GHOST_DisplaySettingRS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i8 noundef zeroext %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(16) %2, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(16) %3) local_unnamed_addr #7 align 2 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %7 = load i32, ptr %2, align 4, !tbaa !65
  store i32 %7, ptr %5, align 16, !tbaa !60
  %8 = getelementptr inbounds i32, ptr %5, i64 1
  %9 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !67
  store i32 %10, ptr %8, align 4, !tbaa !60
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  %12 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !68
  store i32 %13, ptr %11, align 8, !tbaa !60
  %14 = getelementptr inbounds i32, ptr %5, i64 3
  %15 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !69
  store i32 %16, ptr %14, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %17 = getelementptr inbounds %class.GHOST_DisplayManager, ptr %0, i64 0, i32 2
  %18 = zext i8 %1 to i64
  %19 = load ptr, ptr %17, align 8, !tbaa !46
  %20 = getelementptr inbounds %"class.std::vector.0", ptr %19, i64 %18
  %21 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = load ptr, ptr %20, align 8, !tbaa !48
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = lshr exact i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  %32 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %33 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %34 = and i64 %27, 4294967295
  br label %40

35:                                               ; preds = %52
  %36 = sext i32 %56 to i64
  br label %37

37:                                               ; preds = %35, %4
  %38 = phi i64 [ 0, %4 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %23, i64 %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 1

40:                                               ; preds = %30, %52
  %41 = phi i64 [ 0, %30 ], [ %57, %52 ]
  %42 = phi i32 [ 0, %30 ], [ %56, %52 ]
  %43 = phi double [ 1.000000e+12, %30 ], [ %54, %52 ]
  %44 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %23, i64 %41
  %45 = load i32, ptr %44, align 4, !tbaa !65
  store i32 %45, ptr %6, align 16, !tbaa !60
  %46 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %23, i64 %41, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !67
  store i32 %47, ptr %31, align 4, !tbaa !60
  %48 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %23, i64 %41, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !68
  store i32 %49, ptr %32, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %23, i64 %41, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !69
  store i32 %51, ptr %33, align 4, !tbaa !60
  br label %59

52:                                               ; preds = %59
  %53 = fcmp olt double %68, %43
  %54 = select i1 %53, double %68, double %43
  %55 = trunc i64 %41 to i32
  %56 = select i1 %53, i32 %55, i32 %42
  %57 = add nuw nsw i64 %41, 1
  %58 = icmp eq i64 %57, %34
  br i1 %58, label %35, label %40, !llvm.loop !70

59:                                               ; preds = %40, %59
  %60 = phi i64 [ 0, %40 ], [ %69, %59 ]
  %61 = phi double [ 0.000000e+00, %40 ], [ %68, %59 ]
  %62 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %60
  %63 = load i32, ptr %62, align 4, !tbaa !60
  %64 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %60
  %65 = load i32, ptr %64, align 4, !tbaa !60
  %66 = sub nsw i32 %63, %65
  %67 = sitofp i32 %66 to double
  %68 = tail call double @llvm.fmuladd.f64(double %67, double %67, double %61)
  %69 = add nuw nsw i64 %60, 1
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %52, label %59, !llvm.loop !71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_I20GHOST_DisplaySettingSaIS0_EESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<GHOST_DisplaySetting>, std::allocator<std::vector<GHOST_DisplaySetting>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = load ptr, ptr %0, align 8, !tbaa !57
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 24
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 384307168202282325)
  %18 = select i1 %16, i64 384307168202282325, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 24
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = mul nuw nsw i64 %18, 24
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #18
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.std::vector.0", ptr %27, i64 %21
  %29 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = load ptr, ptr %2, align 8, !tbaa !57
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 4
  %36 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %28, i64 0, i32 1
  %37 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %28, i64 0, i32 2
  %38 = icmp eq ptr %30, %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  br i1 %38, label %49, label %39

39:                                               ; preds = %26
  %40 = icmp ugt i64 %35, 576460752303423487
  br i1 %40, label %41, label %47, !prof !72

41:                                               ; preds = %39
  %42 = icmp ugt i64 %35, 1152921504606846975
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %44 unwind label %94

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %41
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %46 unwind label %94

46:                                               ; preds = %45
  unreachable

47:                                               ; preds = %39
  %48 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #18
          to label %49 unwind label %94

49:                                               ; preds = %47, %26
  %50 = phi ptr [ null, %26 ], [ %48, %47 ]
  store ptr %50, ptr %28, align 8, !tbaa !48
  store ptr %50, ptr %36, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.GHOST_DisplaySetting, ptr %50, i64 %35
  store ptr %51, ptr %37, align 8, !tbaa !62
  br i1 %38, label %53, label %52

52:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %50, ptr align 4 %31, i64 %34, i1 false)
  br label %53

53:                                               ; preds = %49, %52
  %54 = getelementptr inbounds i8, ptr %50, i64 %34
  store ptr %54, ptr %36, align 8, !tbaa !59
  %55 = icmp eq ptr %6, %1
  br i1 %55, label %56, label %60

56:                                               ; preds = %60, %53
  %57 = phi ptr [ %27, %53 ], [ %71, %60 ]
  %58 = getelementptr inbounds %"class.std::vector.0", ptr %57, i64 1
  %59 = icmp eq ptr %5, %1
  br i1 %59, label %87, label %73

60:                                               ; preds = %53, %60
  %61 = phi ptr [ %71, %60 ], [ %27, %53 ]
  %62 = phi ptr [ %70, %60 ], [ %6, %53 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %63 = load ptr, ptr %62, align 8, !tbaa !48, !alias.scope !76, !noalias !73
  store ptr %63, ptr %61, align 8, !tbaa !48, !alias.scope !73, !noalias !76
  %64 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %61, i64 0, i32 1
  %65 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !59, !alias.scope !76, !noalias !73
  store ptr %66, ptr %64, align 8, !tbaa !59, !alias.scope !73, !noalias !76
  %67 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %61, i64 0, i32 2
  %68 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %62, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !62, !alias.scope !76, !noalias !73
  store ptr %69, ptr %67, align 8, !tbaa !62, !alias.scope !73, !noalias !76
  %70 = getelementptr inbounds %"class.std::vector.0", ptr %62, i64 1
  %71 = getelementptr inbounds %"class.std::vector.0", ptr %61, i64 1
  %72 = icmp eq ptr %70, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  br i1 %72, label %56, label %60, !llvm.loop !78

73:                                               ; preds = %56, %73
  %74 = phi ptr [ %85, %73 ], [ %58, %56 ]
  %75 = phi ptr [ %74, %73 ], [ %57, %56 ]
  %76 = phi ptr [ %84, %73 ], [ %1, %56 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %77 = load ptr, ptr %76, align 8, !tbaa !48, !alias.scope !82, !noalias !79
  store ptr %77, ptr %74, align 8, !tbaa !48, !alias.scope !79, !noalias !82
  %78 = getelementptr inbounds %"class.std::vector.0", ptr %75, i64 1, i32 0, i32 0, i32 0, i32 1
  %79 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !59, !alias.scope !82, !noalias !79
  store ptr %80, ptr %78, align 8, !tbaa !59, !alias.scope !79, !noalias !82
  %81 = getelementptr inbounds %"class.std::vector.0", ptr %75, i64 1, i32 0, i32 0, i32 0, i32 2
  %82 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_DisplaySetting, std::allocator<GHOST_DisplaySetting>>::_Vector_impl_data", ptr %76, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !62, !alias.scope !82, !noalias !79
  store ptr %83, ptr %81, align 8, !tbaa !62, !alias.scope !79, !noalias !82
  %84 = getelementptr inbounds %"class.std::vector.0", ptr %76, i64 1
  %85 = getelementptr inbounds %"class.std::vector.0", ptr %74, i64 1
  %86 = icmp eq ptr %84, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, i8 0, i64 24, i1 false)
  br i1 %86, label %87, label %73, !llvm.loop !78

87:                                               ; preds = %73, %56
  %88 = phi ptr [ %58, %56 ], [ %85, %73 ]
  %89 = icmp eq ptr %6, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef %6) #15
  br label %91

91:                                               ; preds = %87, %90
  %92 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<GHOST_DisplaySetting>, std::allocator<std::vector<GHOST_DisplaySetting>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !46
  store ptr %88, ptr %4, align 8, !tbaa !47
  %93 = getelementptr inbounds %"class.std::vector.0", ptr %27, i64 %18
  store ptr %93, ptr %92, align 8, !tbaa !58
  ret void

94:                                               ; preds = %47, %45, %43
  %95 = landingpad { ptr, i32 }
          catch ptr null
  %96 = extractvalue { ptr, i32 } %95, 0
  %97 = tail call ptr @__cxa_begin_catch(ptr %96) #16
  %98 = icmp eq ptr %27, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load ptr, ptr %28, align 8, !tbaa !48
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  tail call void @_ZdlPv(ptr noundef %100) #15
  br label %105

103:                                              ; preds = %107
  %104 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %108 unwind label %109

105:                                              ; preds = %102, %99
  br i1 %98, label %107, label %106

106:                                              ; preds = %94, %105
  tail call void @_ZdlPv(ptr noundef %27) #15
  br label %107

107:                                              ; preds = %106, %105
  invoke void @__cxa_rethrow() #17
          to label %112 unwind label %103

108:                                              ; preds = %103
  resume { ptr, i32 } %104

109:                                              ; preds = %103
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  tail call void @__clang_call_terminate(ptr %111) #19
  unreachable

112:                                              ; preds = %107
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn nounwind }

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
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!38, !39, i64 8}
!38 = !{!"_ZTS20GHOST_DisplayManager", !39, i64 8, !41, i64 16}
!39 = !{!"bool", !40, i64 0}
!40 = !{!"omnipotent char", !36, i64 0}
!41 = !{!"_ZTSSt6vectorIS_I20GHOST_DisplaySettingSaIS0_EESaIS2_EE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseISt6vectorI20GHOST_DisplaySettingSaIS1_EESaIS3_EE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseISt6vectorI20GHOST_DisplaySettingSaIS1_EESaIS3_EE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseISt6vectorI20GHOST_DisplaySettingSaIS1_EESaIS3_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"any pointer", !40, i64 0}
!46 = !{!44, !45, i64 0}
!47 = !{!44, !45, i64 8}
!48 = !{!49, !45, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseI20GHOST_DisplaySettingSaIS0_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!40, !40, i64 0}
!56 = distinct !{!56, !51, !52}
!57 = !{!45, !45, i64 0}
!58 = !{!44, !45, i64 16}
!59 = !{!49, !45, i64 8}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !40, i64 0}
!62 = !{!49, !45, i64 16}
!63 = !{i64 0, i64 4, !60, i64 4, i64 4, !60, i64 8, i64 4, !60, i64 12, i64 4, !60}
!64 = distinct !{!64, !51, !52}
!65 = !{!66, !61, i64 0}
!66 = !{!"_ZTS20GHOST_DisplaySetting", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!67 = !{!66, !61, i64 4}
!68 = !{!66, !61, i64 8}
!69 = !{!66, !61, i64 12}
!70 = distinct !{!70, !51, !52}
!71 = distinct !{!71, !51, !52}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZSt19__relocate_object_aISt6vectorI20GHOST_DisplaySettingSaIS1_EES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !"_ZSt19__relocate_object_aISt6vectorI20GHOST_DisplaySettingSaIS1_EES3_SaIS3_EEvPT_PT0_RT1_"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"_ZSt19__relocate_object_aISt6vectorI20GHOST_DisplaySettingSaIS1_EES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!78 = distinct !{!78, !51, !52}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZSt19__relocate_object_aISt6vectorI20GHOST_DisplaySettingSaIS1_EES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!81 = distinct !{!81, !"_ZSt19__relocate_object_aISt6vectorI20GHOST_DisplaySettingSaIS1_EES3_SaIS3_EEvPT_PT0_RT1_"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZSt19__relocate_object_aISt6vectorI20GHOST_DisplaySettingSaIS1_EES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
