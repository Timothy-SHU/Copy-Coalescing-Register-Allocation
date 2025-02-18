; ModuleID = 'QName.cpp'
source_filename = "QName.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

@_ZTVN11xercesc_2_75QNameE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_75QNameE, ptr @_ZN11xercesc_2_75QNameD2Ev, ptr @_ZN11xercesc_2_75QNameD0Ev, ptr @_ZNK11xercesc_2_75QName14isSerializableEv, ptr @_ZN11xercesc_2_75QName9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_75QName12getProtoTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [6 x i8] c"QName\00", align 1
@_ZN11xercesc_2_75QName10classQNameE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_75QName12createObjectEPNS_13MemoryManagerE }, align 8
@_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_75QNameE = dso_local constant [22 x i8] c"N11xercesc_2_75QNameE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTIN11xercesc_2_75QNameE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_75QNameE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8

@_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_75QNameC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE
@_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE
@_ZN11xercesc_2_75QNameD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_75QNameD2Ev
@_ZN11xercesc_2_75QNameC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_75QNameC2ERKS0_

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !51
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  store ptr %4, ptr %11, align 8, !tbaa !51
  %12 = icmp eq ptr %1, null
  br i1 %12, label %27, label %13, !prof !58

13:                                               ; preds = %5
  %14 = load i16, ptr %1, align 2, !tbaa !59
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %27, label %16, !prof !61

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %18, %16 ], [ %1, %13 ]
  %18 = getelementptr inbounds i16, ptr %17, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !59
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %16, !prof !62, !llvm.loop !63

21:                                               ; preds = %16
  %22 = ptrtoint ptr %18 to i64
  %23 = ptrtoint ptr %1 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 1
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %21, %13, %5
  %28 = phi i32 [ %26, %21 ], [ 0, %13 ], [ 0, %5 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !48
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %32 unwind label %94, !prof !66

32:                                               ; preds = %27
  %33 = add i32 %28, 8
  store i32 %33, ptr %6, align 8, !tbaa !67
  %34 = load ptr, ptr %11, align 8, !tbaa !51
  %35 = add i32 %28, 9
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = load ptr, ptr %34, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37)
          to label %42 unwind label %94, !prof !68

42:                                               ; preds = %32
  store ptr %41, ptr %8, align 8, !tbaa !69
  %43 = add i32 %28, 1
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %1, i64 %45, i1 false), !prof !70
  %46 = icmp eq ptr %2, null
  br i1 %46, label %61, label %47, !prof !71

47:                                               ; preds = %42
  %48 = load i16, ptr %2, align 2, !tbaa !59
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %61, label %50, !prof !72

50:                                               ; preds = %47, %50
  %51 = phi ptr [ %52, %50 ], [ %2, %47 ]
  %52 = getelementptr inbounds i16, ptr %51, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !59
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %50, !prof !73, !llvm.loop !63

55:                                               ; preds = %50
  %56 = ptrtoint ptr %52 to i64
  %57 = ptrtoint ptr %2 to i64
  %58 = sub i64 %56, %57
  %59 = lshr exact i64 %58, 1
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %55, %47, %42
  %62 = phi i32 [ %60, %55 ], [ 0, %47 ], [ 0, %42 ]
  %63 = load i32, ptr %7, align 4, !tbaa !74
  %64 = icmp eq i32 %63, 0
  %65 = icmp ugt i32 %62, %63
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %84, !prof !75

67:                                               ; preds = %61
  %68 = load ptr, ptr %11, align 8, !tbaa !51
  %69 = load ptr, ptr %9, align 8, !tbaa !76
  %70 = load ptr, ptr %68, align 8, !tbaa !48
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %69)
          to label %73 unwind label %94, !prof !77

73:                                               ; preds = %67
  %74 = add i32 %62, 8
  store i32 %74, ptr %7, align 4, !tbaa !74
  %75 = load ptr, ptr %11, align 8, !tbaa !51
  %76 = add i32 %62, 9
  %77 = zext i32 %76 to i64
  %78 = shl nuw nsw i64 %77, 1
  %79 = load ptr, ptr %75, align 8, !tbaa !48
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %75, i64 noundef %78)
          to label %83 unwind label %94, !prof !78

83:                                               ; preds = %73
  store ptr %82, ptr %9, align 8, !tbaa !76
  br label %84

84:                                               ; preds = %61, %83
  %85 = load ptr, ptr %9, align 8, !tbaa !76
  %86 = add i32 %62, 1
  %87 = zext i32 %86 to i64
  %88 = shl nuw nsw i64 %87, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr align 2 %2, i64 %88, i1 false), !prof !79
  %89 = load ptr, ptr %10, align 8, !tbaa !80
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91, !prof !81

91:                                               ; preds = %84
  store i16 0, ptr %89, align 2, !tbaa !59
  br label %92

92:                                               ; preds = %84, %91
  %93 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %3, ptr %93, align 4, !tbaa !82
  ret void

94:                                               ; preds = %73, %67, %32, %27
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %96 = extractvalue { ptr, i32 } %95, 1
  %97 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = extractvalue { ptr, i32 } %95, 0
  %101 = tail call ptr @__cxa_begin_catch(ptr %100) #13
  invoke void @__cxa_rethrow() #14
          to label %118 unwind label %102

102:                                              ; preds = %99
  %103 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %104 unwind label %115

104:                                              ; preds = %102, %94
  %105 = phi ptr [ null, %102 ], [ @_ZN11xercesc_2_75QName7cleanUpEv, %94 ]
  %106 = phi ptr [ null, %102 ], [ %0, %94 ]
  %107 = phi { ptr, i32 } [ %103, %102 ], [ %95, %94 ]
  %108 = icmp eq ptr %106, null
  %109 = or i1 %98, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(56) %106)
          to label %114 unwind label %111

111:                                              ; preds = %110
  %112 = landingpad { ptr, i32 }
          catch ptr null
  %113 = extractvalue { ptr, i32 } %112, 0
  tail call void @__clang_call_terminate(ptr %113) #15
  unreachable

114:                                              ; preds = %104, %110
  resume { ptr, i32 } %107

115:                                              ; preds = %102
  %116 = landingpad { ptr, i32 }
          catch ptr null
  %117 = extractvalue { ptr, i32 } %116, 0
  tail call void @__clang_call_terminate(ptr %117) #15
  unreachable

118:                                              ; preds = %99
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName7cleanUpEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = load ptr, ptr %2, align 8, !tbaa !51
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = load ptr, ptr %9, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
  %15 = load ptr, ptr %2, align 8, !tbaa !51
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = load ptr, ptr %15, align 8, !tbaa !48
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !84 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %20, label %6, !prof !58

6:                                                ; preds = %4
  %7 = load i16, ptr %1, align 2, !tbaa !59
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9, !prof !61

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %1, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !59
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !prof !62, !llvm.loop !63

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %14, %6, %4
  %21 = phi i32 [ %19, %14 ], [ 0, %6 ], [ 0, %4 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = icmp eq i32 %23, 0
  %25 = icmp ugt i32 %21, %23
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %44, !prof !85

27:                                               ; preds = %20
  %28 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  %32 = load ptr, ptr %29, align 8, !tbaa !48
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31), !prof !86
  %35 = add i32 %21, 8
  store i32 %35, ptr %22, align 8, !tbaa !67
  %36 = load ptr, ptr %28, align 8, !tbaa !51
  %37 = add i32 %21, 9
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 1
  %40 = load ptr, ptr %36, align 8, !tbaa !48
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39), !prof !87
  store ptr %43, ptr %30, align 8, !tbaa !69
  br label %44

44:                                               ; preds = %20, %27
  %45 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = add i32 %21, 1
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %46, ptr align 2 %1, i64 %49, i1 false), !prof !88
  %50 = icmp eq ptr %2, null
  br i1 %50, label %65, label %51, !prof !71

51:                                               ; preds = %44
  %52 = load i16, ptr %2, align 2, !tbaa !59
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %54, !prof !72

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %56, %54 ], [ %2, %51 ]
  %56 = getelementptr inbounds i16, ptr %55, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !59
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %54, !prof !73, !llvm.loop !63

59:                                               ; preds = %54
  %60 = ptrtoint ptr %56 to i64
  %61 = ptrtoint ptr %2 to i64
  %62 = sub i64 %60, %61
  %63 = lshr exact i64 %62, 1
  %64 = trunc i64 %63 to i32
  br label %65

65:                                               ; preds = %59, %51, %44
  %66 = phi i32 [ %64, %59 ], [ 0, %51 ], [ 0, %44 ]
  %67 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !74
  %69 = icmp eq i32 %68, 0
  %70 = icmp ugt i32 %66, %68
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %89, !prof !75

72:                                               ; preds = %65
  %73 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !51
  %75 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !76
  %77 = load ptr, ptr %74, align 8, !tbaa !48
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %76), !prof !86
  %80 = add i32 %66, 8
  store i32 %80, ptr %67, align 4, !tbaa !74
  %81 = load ptr, ptr %73, align 8, !tbaa !51
  %82 = add i32 %66, 9
  %83 = zext i32 %82 to i64
  %84 = shl nuw nsw i64 %83, 1
  %85 = load ptr, ptr %81, align 8, !tbaa !48
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %81, i64 noundef %84), !prof !87
  store ptr %88, ptr %75, align 8, !tbaa !76
  br label %89

89:                                               ; preds = %65, %72
  %90 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  %92 = add i32 %66, 1
  %93 = zext i32 %92 to i64
  %94 = shl nuw nsw i64 %93, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %91, ptr align 2 %2, i64 %94, i1 false), !prof !89
  %95 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !80
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !90

98:                                               ; preds = %89
  store i16 0, ptr %96, align 2, !tbaa !59
  br label %99

99:                                               ; preds = %98, %89
  %100 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %3, ptr %100, align 4, !tbaa !82
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !83 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store ptr %3, ptr %6, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2)
          to label %17 unwind label %7, !prof !92

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %9 = extractvalue { ptr, i32 } %8, 1
  %10 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = extractvalue { ptr, i32 } %8, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #13
  invoke void @__cxa_rethrow() #14
          to label %32 unwind label %15

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %29

17:                                               ; preds = %4
  ret void

18:                                               ; preds = %15, %7
  %19 = phi ptr [ null, %15 ], [ @_ZN11xercesc_2_75QName7cleanUpEv, %7 ]
  %20 = phi ptr [ null, %15 ], [ %0, %7 ]
  %21 = phi { ptr, i32 } [ %16, %15 ], [ %8, %7 ]
  %22 = icmp eq ptr %20, null
  %23 = or i1 %11, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(56) %20)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #15
  unreachable

28:                                               ; preds = %18, %24
  resume { ptr, i32 } %21

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #15
  unreachable

32:                                               ; preds = %12
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !91 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %19, label %5, !prof !93

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 2, !tbaa !59
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8, !prof !93

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %1, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !59
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !prof !94, !llvm.loop !63

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %1 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %3, %5, %13
  %20 = phi i32 [ %18, %13 ], [ 0, %5 ], [ 0, %3 ]
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58)
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %52, !prof !95

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !96
  %26 = icmp eq i32 %25, 0
  %27 = icmp ugt i32 %20, %25
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %46, !prof !97

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  %34 = load ptr, ptr %31, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33), !prof !98
  %37 = add i32 %20, 8
  store i32 %37, ptr %24, align 8, !tbaa !96
  %38 = load ptr, ptr %30, align 8, !tbaa !51
  %39 = add i32 %20, 9
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 1
  %42 = load ptr, ptr %38, align 8, !tbaa !48
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %41), !prof !99
  store ptr %45, ptr %32, align 8, !tbaa !80
  br label %46

46:                                               ; preds = %23, %29
  %47 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !80
  %49 = add i32 %20, 1
  %50 = zext i32 %49 to i64
  %51 = shl nuw nsw i64 %50, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %48, ptr align 2 %1, i64 %51, i1 false), !prof !100
  tail call void @_ZN11xercesc_2_75QName10setNPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %21)
  br label %57

52:                                               ; preds = %19
  tail call void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %53 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !80
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56, !prof !101

56:                                               ; preds = %52
  store i16 0, ptr %54, align 2, !tbaa !59
  br label %57

57:                                               ; preds = %52, %56, %46
  %58 = sext i32 %21 to i64
  %59 = getelementptr i16, ptr %1, i64 %58
  %60 = getelementptr i16, ptr %59, i64 1
  %61 = xor i32 %21, -1
  %62 = add i32 %20, %61
  tail call void @_ZN11xercesc_2_75QName13setNLocalPartEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %60, i32 noundef %62)
  %63 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %2, ptr %63, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_75QNameD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %24, !prof !103

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !51
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = load ptr, ptr %10, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %24, !prof !103

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !51
  %18 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = load ptr, ptr %17, align 8, !tbaa !48
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %23 unwind label %24, !prof !103

23:                                               ; preds = %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  ret void

24:                                               ; preds = %16, %9, %1
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_75QNameD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 !prof !104 {
  tail call void @_ZN11xercesc_2_75QNameD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !105 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  store ptr %8, ptr %6, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12, !prof !106

12:                                               ; preds = %2
  %13 = load i16, ptr %10, align 2, !tbaa !59
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15, !prof !106

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %10, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !59
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !prof !107, !llvm.loop !63

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %10 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 1
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %2, %12, %20
  %27 = phi i32 [ %25, %20 ], [ 0, %12 ], [ 0, %2 ]
  %28 = add i32 %27, 8
  store i32 %28, ptr %4, align 4, !tbaa !74
  %29 = add i32 %27, 9
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 1
  %32 = load ptr, ptr %8, align 8, !tbaa !48
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %31), !prof !108
  store ptr %35, ptr %5, align 8, !tbaa !76
  %36 = load ptr, ptr %9, align 8, !tbaa !76
  %37 = add i32 %27, 1
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr align 2 %36, i64 %39, i1 false), !prof !109
  %40 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43, !prof !106

43:                                               ; preds = %26
  %44 = load i16, ptr %41, align 2, !tbaa !59
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %46, !prof !110

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %41, %43 ]
  %48 = getelementptr inbounds i16, ptr %47, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !59
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %46, !prof !111, !llvm.loop !63

51:                                               ; preds = %46
  %52 = ptrtoint ptr %48 to i64
  %53 = ptrtoint ptr %41 to i64
  %54 = sub i64 %52, %53
  %55 = lshr exact i64 %54, 1
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %26, %43, %51
  %58 = phi i32 [ %56, %51 ], [ 0, %43 ], [ 0, %26 ]
  %59 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %60 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %61 = add i32 %58, 8
  store i32 %61, ptr %3, align 8, !tbaa !67
  %62 = load ptr, ptr %6, align 8, !tbaa !51
  %63 = add i32 %58, 9
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 1
  %66 = load ptr, ptr %62, align 8, !tbaa !48
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %62, i64 noundef %65), !prof !108
  store ptr %69, ptr %59, align 8, !tbaa !69
  %70 = load ptr, ptr %40, align 8, !tbaa !69
  %71 = add i32 %58, 1
  %72 = zext i32 %71 to i64
  %73 = shl nuw nsw i64 %72, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %69, ptr align 2 %70, i64 %73, i1 false), !prof !112
  %74 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !82
  store i32 %75, ptr %60, align 4, !tbaa !82
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !59
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %69

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = load i16, ptr %10, align 2, !tbaa !59
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %67, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !74
  %18 = add i32 %17, %15
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %19, %21
  %23 = select i1 %4, i1 true, i1 %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %13
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %3)
  store i32 %19, ptr %20, align 8, !tbaa !96
  %30 = load ptr, ptr %25, align 8, !tbaa !51
  %31 = add i32 %18, 2
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 1
  %34 = load ptr, ptr %30, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %33)
  store ptr %37, ptr %2, align 8, !tbaa !80
  store i16 0, ptr %37, align 2, !tbaa !59
  br label %38

38:                                               ; preds = %13, %24
  %39 = load ptr, ptr %9, align 8, !tbaa !69
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load i16, ptr %39, align 2, !tbaa !59
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %46, %44 ], [ %39, %41 ]
  %46 = getelementptr inbounds i16, ptr %45, i64 1
  %47 = load i16, ptr %46, align 2, !tbaa !59
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %44, !llvm.loop !63

49:                                               ; preds = %44
  %50 = ptrtoint ptr %46 to i64
  %51 = ptrtoint ptr %39 to i64
  %52 = sub i64 %50, %51
  %53 = lshr exact i64 %52, 1
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %38, %41, %49
  %56 = phi i32 [ %54, %49 ], [ 0, %41 ], [ 0, %38 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !80
  %58 = zext i32 %56 to i64
  %59 = shl nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %57, ptr align 2 %39, i64 %59, i1 false)
  %60 = load ptr, ptr %2, align 8, !tbaa !80
  %61 = getelementptr inbounds i16, ptr %60, i64 %58
  store i16 58, ptr %61, align 2, !tbaa !59
  %62 = add i32 %56, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i16, ptr %60, i64 %63
  %65 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %64, ptr noundef %66)
  br label %69

67:                                               ; preds = %8
  %68 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  br label %69

69:                                               ; preds = %5, %55, %67
  %70 = phi ptr [ %68, %67 ], [ %2, %55 ], [ %2, %5 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !113
  ret ptr %71
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 align 2 !prof !114 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !115

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !59
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %69, !prof !116

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = load i16, ptr %10, align 2, !tbaa !59
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %67, label %13, !prof !117

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !74
  %18 = add i32 %17, %15
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %19, %21
  %23 = select i1 %4, i1 true, i1 %22, !prof !118
  br i1 %23, label %24, label %38, !prof !118

24:                                               ; preds = %13
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %3), !prof !119
  store i32 %19, ptr %20, align 8, !tbaa !96
  %30 = load ptr, ptr %25, align 8, !tbaa !51
  %31 = add i32 %18, 2
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 1
  %34 = load ptr, ptr %30, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %33), !prof !120
  store ptr %37, ptr %2, align 8, !tbaa !80
  store i16 0, ptr %37, align 2, !tbaa !59
  br label %38

38:                                               ; preds = %13, %24
  %39 = load ptr, ptr %9, align 8, !tbaa !69
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41, !prof !121

41:                                               ; preds = %38
  %42 = load i16, ptr %39, align 2, !tbaa !59
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %44, !prof !121

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %46, %44 ], [ %39, %41 ]
  %46 = getelementptr inbounds i16, ptr %45, i64 1
  %47 = load i16, ptr %46, align 2, !tbaa !59
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %44, !prof !122, !llvm.loop !63

49:                                               ; preds = %44
  %50 = ptrtoint ptr %46 to i64
  %51 = ptrtoint ptr %39 to i64
  %52 = sub i64 %50, %51
  %53 = lshr exact i64 %52, 1
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %38, %41, %49
  %56 = phi i32 [ %54, %49 ], [ 0, %41 ], [ 0, %38 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !80
  %58 = zext i32 %56 to i64
  %59 = shl nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %57, ptr align 2 %39, i64 %59, i1 false), !prof !123
  %60 = load ptr, ptr %2, align 8, !tbaa !80
  %61 = getelementptr inbounds i16, ptr %60, i64 %58
  store i16 58, ptr %61, align 2, !tbaa !59
  %62 = add i32 %56, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i16, ptr %60, i64 %63
  %65 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %64, ptr noundef %66)
  br label %69

67:                                               ; preds = %8
  %68 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  br label %69

69:                                               ; preds = %5, %55, %67
  %70 = phi ptr [ %68, %67 ], [ %2, %55 ], [ %2, %5 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !113
  ret ptr %71
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !124 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !58

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !59
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !61

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !59
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !62, !llvm.loop !63

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ], [ 0, %2 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !67
  %22 = icmp eq i32 %21, 0
  %23 = icmp ugt i32 %19, %21
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %42, !prof !85

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = load ptr, ptr %27, align 8, !tbaa !48
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29), !prof !125
  %33 = add i32 %19, 8
  store i32 %33, ptr %20, align 8, !tbaa !67
  %34 = load ptr, ptr %26, align 8, !tbaa !51
  %35 = add i32 %19, 9
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = load ptr, ptr %34, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37), !prof !126
  store ptr %41, ptr %28, align 8, !tbaa !69
  br label %42

42:                                               ; preds = %18, %25
  %43 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  %45 = add i32 %19, 1
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr align 2 %1, i64 %47, i1 false), !prof !127
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName12setLocalPartEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !128 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !71

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !59
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !72

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !59
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !73, !llvm.loop !63

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ], [ 0, %2 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !74
  %22 = icmp eq i32 %21, 0
  %23 = icmp ugt i32 %19, %21
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %42, !prof !75

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = load ptr, ptr %27, align 8, !tbaa !48
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29), !prof !129
  %33 = add i32 %19, 8
  store i32 %33, ptr %20, align 4, !tbaa !74
  %34 = load ptr, ptr %26, align 8, !tbaa !51
  %35 = add i32 %19, 9
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = load ptr, ptr %34, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37), !prof !130
  store ptr %41, ptr %28, align 8, !tbaa !76
  br label %42

42:                                               ; preds = %18, %25
  %43 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = add i32 %19, 1
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr align 2 %1, i64 %47, i1 false), !prof !131
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName10setNPrefixEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !132 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i32 %5, 0
  %7 = icmp ult i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %26, !prof !97

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = load ptr, ptr %11, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %13), !prof !98
  %17 = add i32 %2, 8
  store i32 %17, ptr %4, align 8, !tbaa !67
  %18 = load ptr, ptr %10, align 8, !tbaa !51
  %19 = add i32 %2, 9
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 1
  %22 = load ptr, ptr %18, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %21), !prof !99
  store ptr %25, ptr %12, align 8, !tbaa !69
  br label %26

26:                                               ; preds = %3, %9
  %27 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = zext i32 %2 to i64
  %30 = shl nuw nsw i64 %29, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr align 2 %1, i64 %30, i1 false), !prof !133
  %31 = load ptr, ptr %27, align 8, !tbaa !69
  %32 = getelementptr inbounds i16, ptr %31, i64 %29
  store i16 0, ptr %32, align 2, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName13setNLocalPartEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !91 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp eq i32 %5, 0
  %7 = icmp ult i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %26, !prof !92

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = load ptr, ptr %11, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %13), !prof !134
  %17 = add i32 %2, 8
  store i32 %17, ptr %4, align 4, !tbaa !74
  %18 = load ptr, ptr %10, align 8, !tbaa !51
  %19 = add i32 %2, 9
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 1
  %22 = load ptr, ptr %18, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %21), !prof !135
  store ptr %25, ptr %12, align 8, !tbaa !76
  br label %26

26:                                               ; preds = %3, %9
  %27 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = zext i32 %2 to i64
  %30 = shl nuw nsw i64 %29, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr align 2 %1, i64 %30, i1 false), !prof !136
  %31 = load ptr, ptr %27, align 8, !tbaa !76
  %32 = getelementptr inbounds i16, ptr %31, i64 %29
  store i16 0, ptr %32, align 2, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1) local_unnamed_addr #3 align 2 !prof !128 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %4)
  %5 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_75QName12setLocalPartEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %6)
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 align 2 !prof !137 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36, !prof !138

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %8 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %9 = icmp eq ptr %7, null
  %10 = icmp eq ptr %8, null
  %11 = or i1 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load i16, ptr %7, align 2, !tbaa !59
  %14 = load i16, ptr %8, align 2, !tbaa !59
  %15 = icmp eq i16 %13, %14
  br i1 %15, label %25, label %72

16:                                               ; preds = %6
  br i1 %9, label %20, label %17

17:                                               ; preds = %16
  %18 = load i16, ptr %7, align 2, !tbaa !59
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %17, %16
  br i1 %10, label %24, label %21

21:                                               ; preds = %20
  %22 = load i16, ptr %8, align 2, !tbaa !59
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %21, %20
  br label %72

25:                                               ; preds = %12, %30
  %26 = phi i16 [ %33, %30 ], [ %13, %12 ]
  %27 = phi ptr [ %32, %30 ], [ %8, %12 ]
  %28 = phi ptr [ %31, %30 ], [ %7, %12 ]
  %29 = icmp eq i16 %26, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  %32 = getelementptr inbounds i16, ptr %27, i64 1
  %33 = load i16, ptr %31, align 2, !tbaa !59
  %34 = load i16, ptr %32, align 2, !tbaa !59
  %35 = icmp eq i16 %33, %34
  br i1 %35, label %25, label %72, !llvm.loop !139

36:                                               ; preds = %2
  %37 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !82
  %39 = icmp eq i32 %4, %38
  br i1 %39, label %40, label %72, !prof !140

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = icmp eq ptr %42, null
  %46 = icmp eq ptr %44, null
  %47 = or i1 %45, %46
  br i1 %47, label %52, label %48, !prof !138

48:                                               ; preds = %40
  %49 = load i16, ptr %42, align 2, !tbaa !59
  %50 = load i16, ptr %44, align 2, !tbaa !59
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %61, label %72, !prof !141

52:                                               ; preds = %40
  br i1 %45, label %56, label %53

53:                                               ; preds = %52
  %54 = load i16, ptr %42, align 2, !tbaa !59
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53, %52
  br i1 %46, label %60, label %57

57:                                               ; preds = %56
  %58 = load i16, ptr %44, align 2, !tbaa !59
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57, %56
  br label %72

61:                                               ; preds = %48, %66
  %62 = phi i16 [ %69, %66 ], [ %49, %48 ]
  %63 = phi ptr [ %68, %66 ], [ %44, %48 ]
  %64 = phi ptr [ %67, %66 ], [ %42, %48 ]
  %65 = icmp eq i16 %62, 0
  br i1 %65, label %72, label %66, !prof !142

66:                                               ; preds = %61
  %67 = getelementptr inbounds i16, ptr %64, i64 1
  %68 = getelementptr inbounds i16, ptr %63, i64 1
  %69 = load i16, ptr %67, align 2, !tbaa !59
  %70 = load i16, ptr %68, align 2, !tbaa !59
  %71 = icmp eq i16 %69, %70
  br i1 %71, label %61, label %72, !prof !143, !llvm.loop !139

72:                                               ; preds = %66, %61, %30, %25, %48, %12, %60, %57, %53, %24, %21, %17, %36
  %73 = phi i1 [ false, %36 ], [ true, %24 ], [ false, %21 ], [ false, %17 ], [ true, %60 ], [ false, %57 ], [ false, %53 ], [ false, %12 ], [ false, %48 ], [ %29, %25 ], [ %29, %30 ], [ %65, %61 ], [ %65, %66 ]
  ret i1 %73
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75QName12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !51
  ret ptr %2
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_75QName14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !83 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_75QName12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !83 {
  ret ptr @_ZN11xercesc_2_75QName10classQNameE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75QName9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !83 {
  %3 = alloca i32, align 4
  %4 = load i16, ptr %1, align 8, !tbaa !144
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  br i1 %5, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE, align 1, !tbaa !147, !range !149, !noundef !150
  %13 = icmp ne i8 %12, 0
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9, i32 noundef %11, i1 noundef zeroext %13)
  %14 = load ptr, ptr %6, align 8, !tbaa !76
  %15 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !74
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %14, i32 noundef %16, i1 noundef zeroext %13)
  %17 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !82
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %18)
  br label %30

20:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !tbaa !151
  %21 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %22 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %23 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE, align 1, !tbaa !147, !range !149, !noundef !150
  %24 = icmp ne i8 %23, 0
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(4) %22, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %24)
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %25, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %24)
  %26 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  store i32 0, ptr %26, align 8, !tbaa !96
  %27 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  store ptr null, ptr %27, align 8, !tbaa !80
  %28 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %29 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %30

30:                                               ; preds = %20, %7
  ret void
}

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #9

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QName7setNameEPKtj, i64 47}
!36 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 47}
!37 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_75QName10setNPrefixEPKtj, i64 16}
!38 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_75QName9setPrefixEPKt, i64 31}
!39 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_75QName13setNLocalPartEPKtj, i64 47}
!40 = !{ptr @_ZN11xercesc_2_75QNameD2Ev, ptr @__clang_call_terminate, i64 3}
!41 = !{ptr @_ZN11xercesc_2_75QNameD0Ev, ptr @_ZN11xercesc_2_75QNameD2Ev, i64 534}
!42 = !{ptr @_ZN11xercesc_2_75QNameD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 534}
!43 = !{ptr @_ZN11xercesc_2_75QName10getRawNameEv, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 3}
!44 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZN11xercesc_2_75QName9setPrefixEPKt, i64 76}
!45 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZN11xercesc_2_75QName12setLocalPartEPKt, i64 76}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 110}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !56, i64 48}
!52 = !{!"_ZTSN11xercesc_2_75QNameE", !53, i64 0, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48}
!53 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !50, i64 0}
!56 = !{!"any pointer", !55, i64 0}
!57 = !{!"function_entry_count", i64 946372}
!58 = !{!"branch_weights", i32 0, i32 1148254}
!59 = !{!60, !60, i64 0}
!60 = !{!"short", !55, i64 0}
!61 = !{!"branch_weights", i32 1148205, i32 49}
!62 = !{!"branch_weights", i32 49, i32 102}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!"VP", i32 0, i64 780072, i64 -7405368087501025645, i64 780072}
!67 = !{!52, !54, i64 8}
!68 = !{!"VP", i32 0, i64 780072, i64 8345045103670217670, i64 780072}
!69 = !{!52, !56, i64 24}
!70 = !{!"VP", i32 1, i64 946372, i64 2, i64 946331, i64 8, i64 38, i64 9, i64 1}
!71 = !{!"branch_weights", i32 0, i32 1148223}
!72 = !{!"branch_weights", i32 31, i32 1148192}
!73 = !{!"branch_weights", i32 1148192, i32 6916803}
!74 = !{!52, !54, i64 12}
!75 = !{!"branch_weights", i32 946448, i32 201775}
!76 = !{!52, !56, i64 32}
!77 = !{!"VP", i32 0, i64 780067, i64 -7405368087501025645, i64 780067}
!78 = !{!"VP", i32 0, i64 780067, i64 8345045103670217670, i64 780067}
!79 = !{!"VP", i32 1, i64 946372, i64 9, i64 422627, i64 17, i64 369459, i64 16, i64 128932, i64 6, i64 25251}
!80 = !{!52, !56, i64 40}
!81 = !{!"branch_weights", i32 946372, i32 0}
!82 = !{!52, !54, i64 20}
!83 = !{!"function_entry_count", i64 0}
!84 = !{!"function_entry_count", i64 201775}
!85 = !{!"branch_weights", i32 946479, i32 201775}
!86 = !{!"VP", i32 0, i64 166317, i64 -7405368087501025645, i64 166317}
!87 = !{!"VP", i32 0, i64 166317, i64 8345045103670217670, i64 166317}
!88 = !{!"VP", i32 1, i64 201775, i64 2, i64 201766, i64 8, i64 7, i64 9, i64 0}
!89 = !{!"VP", i32 1, i64 201775, i64 9, i64 90107, i64 17, i64 78771, i64 16, i64 27489, i64 6, i64 5382}
!90 = !{!"branch_weights", i32 190379, i32 11396}
!91 = !{!"function_entry_count", i64 47}
!92 = !{!"branch_weights", i32 47, i32 0}
!93 = !{!"branch_weights", i32 0, i32 47}
!94 = !{!"branch_weights", i32 47, i32 311}
!95 = !{!"branch_weights", i32 16, i32 31}
!96 = !{!52, !54, i64 16}
!97 = !{!"branch_weights", i32 16, i32 0}
!98 = !{!"VP", i32 0, i64 16, i64 -7405368087501025645, i64 16}
!99 = !{!"VP", i32 0, i64 16, i64 8345045103670217670, i64 16}
!100 = !{!"VP", i32 1, i64 16, i64 17, i64 14, i64 33, i64 2}
!101 = !{!"branch_weights", i32 31, i32 0}
!102 = !{!"function_entry_count", i64 946784}
!103 = !{!"VP", i32 0, i64 946784, i64 -7405368087501025645, i64 946784}
!104 = !{!"function_entry_count", i64 534}
!105 = !{!"function_entry_count", i64 255}
!106 = !{!"branch_weights", i32 0, i32 255}
!107 = !{!"branch_weights", i32 255, i32 1581}
!108 = !{!"VP", i32 0, i64 255, i64 8345045103670217670, i64 255}
!109 = !{!"VP", i32 1, i64 255, i64 9, i64 102, i64 17, i64 96, i64 16, i64 39, i64 6, i64 7}
!110 = !{!"branch_weights", i32 209, i32 46}
!111 = !{!"branch_weights", i32 46, i32 92}
!112 = !{!"VP", i32 1, i64 255, i64 2, i64 209, i64 8, i64 46}
!113 = !{!56, !56, i64 0}
!114 = !{!"function_entry_count", i64 2272349}
!115 = !{!"branch_weights", i32 2237403, i32 34946}
!116 = !{!"branch_weights", i32 34146, i32 800}
!117 = !{!"branch_weights", i32 2271546, i32 3}
!118 = !{!"branch_weights", i32 3, i32 0}
!119 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!120 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!121 = !{!"branch_weights", i32 0, i32 3}
!122 = !{!"branch_weights", i32 3, i32 10}
!123 = !{!"VP", i32 1, i64 3, i64 9, i64 2, i64 6, i64 1}
!124 = !{!"function_entry_count", i64 107}
!125 = !{!"VP", i32 0, i64 88, i64 -7405368087501025645, i64 88}
!126 = !{!"VP", i32 0, i64 88, i64 8345045103670217670, i64 88}
!127 = !{!"VP", i32 1, i64 107, i64 2, i64 106, i64 8, i64 0, i64 9, i64 0}
!128 = !{!"function_entry_count", i64 76}
!129 = !{!"VP", i32 0, i64 62, i64 -7405368087501025645, i64 62}
!130 = !{!"VP", i32 0, i64 62, i64 8345045103670217670, i64 62}
!131 = !{!"VP", i32 1, i64 76, i64 9, i64 33, i64 17, i64 29, i64 16, i64 10, i64 6, i64 2}
!132 = !{!"function_entry_count", i64 16}
!133 = !{!"VP", i32 1, i64 16, i64 6, i64 16}
!134 = !{!"VP", i32 0, i64 47, i64 -7405368087501025645, i64 47}
!135 = !{!"VP", i32 0, i64 47, i64 8345045103670217670, i64 47}
!136 = !{!"VP", i32 1, i64 47, i64 17, i64 13, i64 9, i64 10, i64 16, i64 6, i64 8, i64 6}
!137 = !{!"function_entry_count", i64 1105281}
!138 = !{!"branch_weights", i32 0, i32 1105281}
!139 = distinct !{!139, !64, !65}
!140 = !{!"branch_weights", i32 1105281, i32 0}
!141 = !{!"branch_weights", i32 674068, i32 1}
!142 = !{!"branch_weights", i32 431212, i32 3287011}
!143 = !{!"branch_weights", i32 3044155, i32 674068}
!144 = !{!145, !60, i64 0}
!145 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !60, i64 0, !60, i64 2, !56, i64 8, !56, i64 16, !56, i64 24, !146, i64 32, !146, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !54, i64 96}
!146 = !{!"long", !55, i64 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"bool", !55, i64 0}
!149 = !{i8 0, i8 2}
!150 = !{}
!151 = !{!54, !54, i64 0}
