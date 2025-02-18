; ModuleID = 'IdentityConstraint.cpp'
source_filename = "IdentityConstraint.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_718IdentityConstraintE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718IdentityConstraintE, ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev, ptr @_ZN11xercesc_2_718IdentityConstraintD0Ev, ptr @_ZNK11xercesc_2_718IdentityConstraint14isSerializableEv, ptr @_ZN11xercesc_2_718IdentityConstraint9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_718IdentityConstraint12getProtoTypeEv, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [19 x i8] c"IdentityConstraint\00", align 1
@_ZN11xercesc_2_718IdentityConstraint23classIdentityConstraintE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_718IdentityConstraint12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_718IdentityConstraintE = dso_local constant [36 x i8] c"N11xercesc_2_718IdentityConstraintE\00", align 1
@_ZTIN11xercesc_2_718IdentityConstraintE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718IdentityConstraintE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZN11xercesc_2_711IC_Selector16classIC_SelectorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_79IC_Unique14classIC_UniqueE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_76IC_Key11classIC_KeyE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_79IC_KeyRef14classIC_KeyRefE = external global %"class.xercesc_2_7::XProtoType", align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@switch.table._ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE = private unnamed_addr constant [3 x ptr] [ptr @_ZN11xercesc_2_79IC_Unique14classIC_UniqueE, ptr @_ZN11xercesc_2_76IC_Key11classIC_KeyE, ptr @_ZN11xercesc_2_79IC_KeyRef14classIC_KeyRefE], align 8

@_ZN11xercesc_2_718IdentityConstraintD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_718IdentityConstraintE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store ptr %3, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 6
  store i32 -1, ptr %7, align 8, !tbaa !48
  %8 = icmp eq ptr %1, null
  br i1 %8, label %30, label %9, !prof !49

9:                                                ; preds = %4
  %10 = load i16, ptr %1, align 2, !tbaa !50
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12, !prof !49

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %1, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !50
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !prof !52, !llvm.loop !53

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 2
  %22 = and i64 %21, 8589934590
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %22, %17 ], [ 2, %9 ]
  %25 = load ptr, ptr %3, align 8, !tbaa !39
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %24)
          to label %29 unwind label %58, !prof !56

29:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr nonnull align 2 %1, i64 %24, i1 false), !prof !57
  br label %30

30:                                               ; preds = %29, %4
  %31 = phi ptr [ %28, %29 ], [ null, %4 ]
  store ptr %31, ptr %5, align 8, !tbaa !58
  %32 = load ptr, ptr %6, align 8, !tbaa !42
  %33 = icmp eq ptr %2, null
  br i1 %33, label %55, label %34, !prof !49

34:                                               ; preds = %30
  %35 = load i16, ptr %2, align 2, !tbaa !50
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %48, label %37, !prof !49

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %39, %37 ], [ %2, %34 ]
  %39 = getelementptr inbounds i16, ptr %38, i64 1
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %37, !prof !59, !llvm.loop !53

42:                                               ; preds = %37
  %43 = ptrtoint ptr %39 to i64
  %44 = ptrtoint ptr %2 to i64
  %45 = sub i64 %43, %44
  %46 = add i64 %45, 2
  %47 = and i64 %46, 8589934590
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i64 [ %47, %42 ], [ 2, %34 ]
  %50 = load ptr, ptr %32, align 8, !tbaa !39
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %49)
          to label %54 unwind label %58, !prof !56

54:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %53, ptr nonnull align 2 %2, i64 %49, i1 false), !prof !60
  br label %55

55:                                               ; preds = %54, %30
  %56 = phi ptr [ %53, %54 ], [ null, %30 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !61
  ret void

58:                                               ; preds = %48, %23
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %60 = extractvalue { ptr, i32 } %59, 1
  %61 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = extractvalue { ptr, i32 } %59, 0
  %65 = tail call ptr @__cxa_begin_catch(ptr %64) #13
  invoke void @__cxa_rethrow() #15
          to label %82 unwind label %66

66:                                               ; preds = %63
  %67 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %68 unwind label %79

68:                                               ; preds = %66, %58
  %69 = phi ptr [ null, %66 ], [ @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv, %58 ]
  %70 = phi ptr [ null, %66 ], [ %0, %58 ]
  %71 = phi { ptr, i32 } [ %67, %66 ], [ %59, %58 ]
  %72 = icmp eq ptr %70, null
  %73 = or i1 %62, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(52) %70)
          to label %78 unwind label %75

75:                                               ; preds = %74
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  tail call void @__clang_call_terminate(ptr %77) #14
  unreachable

78:                                               ; preds = %68, %74
  resume { ptr, i32 } %71

79:                                               ; preds = %66
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  tail call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %63
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0) local_unnamed_addr #3 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5), !prof !62
  %9 = load ptr, ptr %2, align 8, !tbaa !42
  %10 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = load ptr, ptr %9, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11), !prof !62
  %15 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !49

18:                                               ; preds = %1
  %19 = load ptr, ptr %16, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %16) #13, !prof !64
  br label %22

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !49

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !39
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(24) %24) #13, !prof !66
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraintD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_718IdentityConstraintE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
          to label %2 unwind label %3, !prof !67

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
define dso_local void @_ZN11xercesc_2_718IdentityConstraintD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(52) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(52) %1)
  %11 = icmp eq i16 %6, %10
  br i1 %11, label %12, label %79

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %14, null
  %18 = icmp eq ptr %16, null
  %19 = or i1 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i16, ptr %14, align 2, !tbaa !50
  %22 = load i16, ptr %16, align 2, !tbaa !50
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %32, label %79

24:                                               ; preds = %12
  br i1 %17, label %28, label %25

25:                                               ; preds = %24
  %26 = load i16, ptr %14, align 2, !tbaa !50
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %25, %24
  br i1 %18, label %43, label %29

29:                                               ; preds = %28
  %30 = load i16, ptr %16, align 2, !tbaa !50
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %43, label %79

32:                                               ; preds = %20, %37
  %33 = phi i16 [ %40, %37 ], [ %21, %20 ]
  %34 = phi ptr [ %39, %37 ], [ %16, %20 ]
  %35 = phi ptr [ %38, %37 ], [ %14, %20 ]
  %36 = icmp eq i16 %33, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds i16, ptr %35, i64 1
  %39 = getelementptr inbounds i16, ptr %34, i64 1
  %40 = load i16, ptr %38, align 2, !tbaa !50
  %41 = load i16, ptr %39, align 2, !tbaa !50
  %42 = icmp eq i16 %40, %41
  br i1 %42, label %32, label %79, !llvm.loop !68

43:                                               ; preds = %32, %29, %28
  %44 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  %48 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectorneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
  br i1 %48, label %79, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !69
  %54 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !69
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = icmp eq i32 %53, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %50, align 8, !tbaa !63
  %63 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %62, i32 noundef 0)
  %64 = load ptr, ptr %54, align 8, !tbaa !63
  %65 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %64, i32 noundef 0)
  %66 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %65)
  br i1 %66, label %79, label %67

67:                                               ; preds = %61, %71
  %68 = phi i32 [ %69, %71 ], [ 0, %61 ]
  %69 = add nuw i32 %68, 1
  %70 = icmp eq i32 %69, %53
  br i1 %70, label %77, label %71, !llvm.loop !72

71:                                               ; preds = %67
  %72 = load ptr, ptr %50, align 8, !tbaa !63
  %73 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %72, i32 noundef %69)
  %74 = load ptr, ptr %54, align 8, !tbaa !63
  %75 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef %69)
  %76 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %75)
  br i1 %76, label %77, label %67, !llvm.loop !72

77:                                               ; preds = %71, %67
  %78 = icmp uge i32 %69, %53
  br label %79

79:                                               ; preds = %37, %77, %61, %20, %59, %29, %25, %49, %43, %2
  %80 = phi i1 [ false, %2 ], [ false, %43 ], [ false, %49 ], [ false, %25 ], [ false, %29 ], [ %60, %59 ], [ false, %20 ], [ %60, %61 ], [ %78, %77 ], [ false, %37 ]
  ret i1 %80
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectorneERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !74

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  ret ptr %18
}

declare noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldneERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstraintneERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1)
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint11setSelectorEPNS_11IC_SelectorE(ptr nocapture noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !67

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_718IdentityConstraint12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #10 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstraint14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !37 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_718IdentityConstraint12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_718IdentityConstraint23classIdentityConstraintE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !37 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i16, ptr %1, align 8, !tbaa !78
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  br i1 %8, label %10, label %21

10:                                               ; preds = %2
  %11 = load ptr, ptr %9, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %11, i32 noundef 0, i1 noundef zeroext false)
  %12 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13, i32 noundef 0, i1 noundef zeroext false)
  %14 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %15)
  %16 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17)
  %19 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_8IC_FieldEEERNS_16XSerializeEngineE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %28

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %22 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %24 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_711IC_Selector16classIC_SelectorE)
  store ptr %24, ptr %23, align 8, !tbaa !77
  %25 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 6
  %26 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %25)
  %27 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_8IC_FieldEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %27, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %28

28:                                               ; preds = %21, %10
  ret void
}

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #8

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_8IC_FieldEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_8IC_FieldEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(52) %1)
  %9 = sext i16 %8 to i32
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %9)
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1)
  br label %13

11:                                               ; preds = %2
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 3)
  br label %13

13:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #3 align 2 !prof !37 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %3 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %4 = load i32, ptr %2, align 4, !tbaa !81
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8
  %10 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %9)
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret ptr %12
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #8

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !39
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

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
!35 = !{ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev, ptr @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv, i64 16}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!"function_entry_count", i64 16}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 40}
!43 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !44, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !47, i64 48}
!44 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"int", !46, i64 0}
!48 = !{!43, !47, i64 48}
!49 = !{!"branch_weights", i32 0, i32 16}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !46, i64 0}
!52 = !{!"branch_weights", i32 16, i32 101}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!"VP", i32 0, i64 16, i64 8345045103670217670, i64 16}
!57 = !{!"VP", i32 1, i64 16, i64 9, i64 9, i64 16, i64 4, i64 17, i64 2, i64 32, i64 1}
!58 = !{!43, !45, i64 8}
!59 = !{!"branch_weights", i32 16, i32 48}
!60 = !{!"VP", i32 1, i64 16, i64 9, i64 16}
!61 = !{!43, !45, i64 16}
!62 = !{!"VP", i32 0, i64 16, i64 -7405368087501025645, i64 16}
!63 = !{!43, !45, i64 32}
!64 = !{!"VP", i32 0, i64 16, i64 -8261722249990060534, i64 16}
!65 = !{!43, !45, i64 24}
!66 = !{!"VP", i32 0, i64 16, i64 -5168946539778947755, i64 16}
!67 = !{!"branch_weights", i32 16, i32 0}
!68 = distinct !{!68, !54, !55}
!69 = !{!70, !47, i64 12}
!70 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !71, i64 8, !47, i64 12, !47, i64 16, !45, i64 24, !45, i64 32}
!71 = !{!"bool", !46, i64 0}
!72 = distinct !{!72, !54, !55}
!73 = !{!"function_entry_count", i64 475779}
!74 = !{!"branch_weights", i32 475779, i32 0}
!75 = !{!70, !45, i64 32}
!76 = !{!70, !45, i64 24}
!77 = !{!45, !45, i64 0}
!78 = !{!79, !51, i64 0}
!79 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !51, i64 0, !51, i64 2, !45, i64 8, !45, i64 16, !45, i64 24, !80, i64 32, !80, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !47, i64 96}
!80 = !{!"long", !46, i64 0}
!81 = !{!47, !47, i64 0}
!82 = !{!83, !45, i64 40}
!83 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !84, i64 8, !45, i64 16, !47, i64 24, !45, i64 32, !45, i64 40}
!84 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
