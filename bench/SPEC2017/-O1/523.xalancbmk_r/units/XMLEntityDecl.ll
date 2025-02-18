; ModuleID = 'XMLEntityDecl.cpp'
source_filename = "XMLEntityDecl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

@_ZTVN11xercesc_2_713XMLEntityDeclE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713XMLEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713XMLEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713XMLEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713XMLEntityDecl12getProtoTypeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [14 x i8] c"XMLEntityDecl\00", align 1
@_ZN11xercesc_2_713XMLEntityDecl18classXMLEntityDeclE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_713XMLEntityDecl12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XMLEntityDeclE = dso_local constant [31 x i8] c"N11xercesc_2_713XMLEntityDeclE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTIN11xercesc_2_713XMLEntityDeclE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEntityDeclE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8

@_ZN11xercesc_2_713XMLEntityDeclD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDeclC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !41
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %2, ptr %5, align 8, !tbaa !41
  %6 = icmp eq ptr %1, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !47
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %1, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !47
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !49

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = add i64 %18, 2
  %20 = and i64 %19, 8589934590
  br label %21

21:                                               ; preds = %15, %7
  %22 = phi i64 [ %20, %15 ], [ 2, %7 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %22)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %22, i1 false)
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi ptr [ %26, %21 ], [ null, %3 ]
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  %7 = icmp eq ptr %2, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %2, align 2, !tbaa !47
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %2, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !47
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !49

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %2 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %4, %8, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %4 ]
  store i32 %23, ptr %6, align 4, !tbaa !54
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %24, i8 0, i64 48, i1 false)
  store ptr %3, ptr %25, align 8, !tbaa !41
  br i1 %7, label %47, label %26

26:                                               ; preds = %22
  %27 = load i16, ptr %2, align 2, !tbaa !47
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %31, %29 ], [ %2, %26 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !47
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %29, !llvm.loop !49

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %2 to i64
  %37 = sub i64 %35, %36
  %38 = add i64 %37, 2
  %39 = and i64 %38, 8589934590
  br label %40

40:                                               ; preds = %34, %26
  %41 = phi i64 [ %39, %34 ], [ 2, %26 ]
  %42 = load ptr, ptr %3, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %41)
          to label %46 unwind label %75

46:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %45, ptr nonnull align 2 %2, i64 %41, i1 false)
  br label %47

47:                                               ; preds = %46, %22
  %48 = phi ptr [ %45, %46 ], [ null, %22 ]
  store ptr %48, ptr %24, align 8, !tbaa !55
  %49 = load ptr, ptr %25, align 8, !tbaa !41
  %50 = icmp eq ptr %1, null
  br i1 %50, label %72, label %51

51:                                               ; preds = %47
  %52 = load i16, ptr %1, align 2, !tbaa !47
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %56, %54 ], [ %1, %51 ]
  %56 = getelementptr inbounds i16, ptr %55, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !47
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %54, !llvm.loop !49

59:                                               ; preds = %54
  %60 = ptrtoint ptr %56 to i64
  %61 = ptrtoint ptr %1 to i64
  %62 = sub i64 %60, %61
  %63 = add i64 %62, 2
  %64 = and i64 %63, 8589934590
  br label %65

65:                                               ; preds = %59, %51
  %66 = phi i64 [ %64, %59 ], [ 2, %51 ]
  %67 = load ptr, ptr %49, align 8, !tbaa !38
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef %66)
          to label %71 unwind label %75

71:                                               ; preds = %65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %70, ptr nonnull align 2 %1, i64 %66, i1 false)
  br label %72

72:                                               ; preds = %71, %47
  %73 = phi ptr [ %70, %71 ], [ null, %47 ]
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  store ptr %73, ptr %74, align 8, !tbaa !52
  ret void

75:                                               ; preds = %65, %40
  %76 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %77 = extractvalue { ptr, i32 } %76, 1
  %78 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = extractvalue { ptr, i32 } %76, 0
  %82 = tail call ptr @__cxa_begin_catch(ptr %81) #12
  invoke void @__cxa_rethrow() #13
          to label %99 unwind label %83

83:                                               ; preds = %80
  %84 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %85 unwind label %96

85:                                               ; preds = %83, %75
  %86 = phi ptr [ null, %83 ], [ @_ZN11xercesc_2_713XMLEntityDecl7cleanUpEv, %75 ]
  %87 = phi ptr [ null, %83 ], [ %0, %75 ]
  %88 = phi { ptr, i32 } [ %84, %83 ], [ %76, %75 ]
  %89 = icmp eq ptr %87, null
  %90 = or i1 %79, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(72) %87)
          to label %95 unwind label %92

92:                                               ; preds = %91
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  tail call void @__clang_call_terminate(ptr %94) #14
  unreachable

95:                                               ; preds = %85, %91
  resume { ptr, i32 } %88

96:                                               ; preds = %83
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  tail call void @__clang_call_terminate(ptr %98) #14
  unreachable

99:                                               ; preds = %80
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDecl7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #1 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5), !prof !57
  %9 = load ptr, ptr %2, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = load ptr, ptr %9, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11), !prof !57
  %15 = load ptr, ptr %2, align 8, !tbaa !41
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17), !prof !57
  %21 = load ptr, ptr %2, align 8, !tbaa !41
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = load ptr, ptr %21, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %23), !prof !57
  %27 = load ptr, ptr %2, align 8, !tbaa !41
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = load ptr, ptr %27, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29), !prof !57
  %33 = load ptr, ptr %2, align 8, !tbaa !41
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = load ptr, ptr %33, align 8, !tbaa !38
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %35), !prof !57
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca [2 x i16], align 4
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  store i32 1, ptr %7, align 4, !tbaa !54
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  store i16 %2, ptr %5, align 4, !tbaa !47
  %10 = icmp eq i16 %2, 0
  br i1 %10, label %22, label %11, !prof !62

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %13, %11 ], [ %5, %4 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !47
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !prof !63, !llvm.loop !49

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %5 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 2
  %21 = and i64 %20, 8589934590
  br label %22

22:                                               ; preds = %16, %4
  %23 = phi i64 [ %21, %16 ], [ 2, %4 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %23)
          to label %28 unwind label %55, !prof !64

28:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 4 %5, i64 %23, i1 false), !prof !65
  store ptr %27, ptr %8, align 8, !tbaa !55
  %29 = load ptr, ptr %9, align 8, !tbaa !41
  %30 = icmp eq ptr %1, null
  br i1 %30, label %52, label %31, !prof !62

31:                                               ; preds = %28
  %32 = load i16, ptr %1, align 2, !tbaa !47
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %45, label %34, !prof !62

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %36, %34 ], [ %1, %31 ]
  %36 = getelementptr inbounds i16, ptr %35, i64 1
  %37 = load i16, ptr %36, align 2, !tbaa !47
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %34, !prof !66, !llvm.loop !49

39:                                               ; preds = %34
  %40 = ptrtoint ptr %36 to i64
  %41 = ptrtoint ptr %1 to i64
  %42 = sub i64 %40, %41
  %43 = add i64 %42, 2
  %44 = and i64 %43, 8589934590
  br label %45

45:                                               ; preds = %39, %31
  %46 = phi i64 [ %44, %39 ], [ 2, %31 ]
  %47 = load ptr, ptr %29, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %46)
          to label %51 unwind label %55, !prof !64

51:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %50, ptr nonnull align 2 %1, i64 %46, i1 false), !prof !67
  br label %52

52:                                               ; preds = %51, %28
  %53 = phi ptr [ %50, %51 ], [ null, %28 ]
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void

55:                                               ; preds = %45, %22
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %57 = extractvalue { ptr, i32 } %56, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %58 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = extractvalue { ptr, i32 } %56, 0
  %62 = call ptr @__cxa_begin_catch(ptr %61) #12
  invoke void @__cxa_rethrow() #13
          to label %79 unwind label %63

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %65 unwind label %76

65:                                               ; preds = %63, %55
  %66 = phi ptr [ null, %63 ], [ @_ZN11xercesc_2_713XMLEntityDecl7cleanUpEv, %55 ]
  %67 = phi ptr [ null, %63 ], [ %0, %55 ]
  %68 = phi { ptr, i32 } [ %64, %63 ], [ %56, %55 ]
  %69 = icmp eq ptr %67, null
  %70 = or i1 %59, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(72) %67)
          to label %75 unwind label %72

72:                                               ; preds = %71
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #14
  unreachable

75:                                               ; preds = %65, %71
  resume { ptr, i32 } %68

76:                                               ; preds = %63
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #14
  unreachable

79:                                               ; preds = %60
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_713XMLEntityDecl7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %2 unwind label %3, !prof !63

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDeclD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !37 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDecl7setNameEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4)
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %1, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = load i16, ptr %1, align 2, !tbaa !47
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %16 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !47
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !49

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = sub i64 %25, %26
  %28 = add i64 %27, 2
  %29 = and i64 %28, 8589934590
  br label %30

30:                                               ; preds = %24, %16
  %31 = phi i64 [ %29, %24 ], [ 2, %16 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !38
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %31)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr nonnull align 2 %1, i64 %31, i1 false)
  br label %36

36:                                               ; preds = %12, %30
  %37 = phi ptr [ %35, %30 ], [ null, %12 ]
  store ptr %37, ptr %3, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_713XMLEntityDecl12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #8 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !37 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713XMLEntityDecl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_713XMLEntityDecl18classXMLEntityDeclE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i16, ptr %1, align 8, !tbaa !68
  %16 = icmp eq i16 %15, 0
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  br i1 %16, label %18, label %36

18:                                               ; preds = %2
  %19 = load i32, ptr %17, align 8, !tbaa !53
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %19)
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %22)
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %25, i32 noundef 0, i1 noundef zeroext false)
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %27, i32 noundef 0, i1 noundef zeroext false)
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %29, i32 noundef 0, i1 noundef zeroext false)
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %31, i32 noundef 0, i1 noundef zeroext false)
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %33, i32 noundef 0, i1 noundef zeroext false)
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %35, i32 noundef 0, i1 noundef zeroext false)
  br label %46

36:                                               ; preds = %2
  %37 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %17)
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  %39 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %38)
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %14, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %46

46:                                               ; preds = %36, %18
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #9

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nosync nounwind memory(none) }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713XMLEntityDecl7cleanUpEv, i64 5}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !46, i64 64}
!42 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !43, i64 0, !44, i64 8, !44, i64 12, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64}
!43 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !40, i64 0}
!46 = !{!"any pointer", !45, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !45, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!42, !46, i64 24}
!53 = !{!42, !44, i64 8}
!54 = !{!42, !44, i64 12}
!55 = !{!42, !46, i64 16}
!56 = !{!"function_entry_count", i64 5}
!57 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!58 = !{!42, !46, i64 32}
!59 = !{!42, !46, i64 40}
!60 = !{!42, !46, i64 48}
!61 = !{!42, !46, i64 56}
!62 = !{!"branch_weights", i32 0, i32 5}
!63 = !{!"branch_weights", i32 5, i32 0}
!64 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!65 = !{!"VP", i32 1, i64 5, i64 4, i64 5}
!66 = !{!"branch_weights", i32 5, i32 10}
!67 = !{!"VP", i32 1, i64 5, i64 6, i64 2, i64 9, i64 2, i64 8, i64 1}
!68 = !{!69, !48, i64 0}
!69 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !48, i64 0, !48, i64 2, !46, i64 8, !46, i64 16, !46, i64 24, !70, i64 32, !70, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !44, i64 96}
!70 = !{!"long", !45, i64 0}
