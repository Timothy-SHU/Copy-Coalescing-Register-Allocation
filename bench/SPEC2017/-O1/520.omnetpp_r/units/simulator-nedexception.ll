; ModuleID = 'simulator/nedexception.cc'
source_filename = "simulator/nedexception.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%class.NEDException = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon }
%union.anon = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN12NEDExceptionD2Ev = comdat any

$_ZN12NEDExceptionD0Ev = comdat any

$_ZNK12NEDException4whatEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZTV12NEDException = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV12NEDException = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12NEDException, ptr @_ZN12NEDExceptionD2Ev, ptr @_ZN12NEDExceptionD0Ev, ptr @_ZNK12NEDException4whatEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c", at \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN12NEDExceptionC1EPKcz = dso_local unnamed_addr alias void (ptr, ptr, ...), ptr @_ZN12NEDExceptionC2EPKcz
@_ZN12NEDExceptionC1EP10NEDElementPKcz = dso_local unnamed_addr alias void (ptr, ptr, ptr, ...), ptr @_ZN12NEDExceptionC2EP10NEDElementPKcz

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12NEDExceptionC2EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  store ptr %6, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %7, align 8, !tbaa !46
  store i8 0, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.va_start(ptr nonnull %4)
  %8 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef %1, ptr noundef nonnull %4) #14
  %9 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 1023
  store i8 0, ptr %9, align 1, !tbaa !49
  call void @llvm.va_end(ptr %4)
  %10 = load i64, ptr %7, align 8, !tbaa !46
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #14
  %12 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %10, ptr noundef nonnull %3, i64 noundef %11)
          to label %13 unwind label %14

13:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  %16 = load ptr, ptr %5, align 8, !tbaa !50
  %17 = icmp eq ptr %16, %6
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, ptr %7, align 8, !tbaa !46
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %14
  call void @_ZdlPv(ptr noundef %16) #15
  br label %22

22:                                               ; preds = %18, %21
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  resume { ptr, i32 } %15
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12NEDExceptionC2EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::allocator", align 1
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %14 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  store ptr %15, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %16, align 8, !tbaa !46
  store i8 0, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.va_start(ptr nonnull %5)
  %17 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #14
  %18 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %18, align 1, !tbaa !49
  call void @llvm.va_end(ptr %5)
  %19 = icmp eq ptr %1, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load ptr, ptr %1, align 8, !tbaa !39
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %25 unwind label %88

25:                                               ; preds = %3, %20
  %26 = phi ptr [ %24, %20 ], [ null, %3 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %124, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #14
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %29, ptr %8, align 8, !tbaa !42
  %30 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %31 = getelementptr inbounds i8, ptr %4, i64 %30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %4, ptr noundef nonnull %31)
          to label %32 unwind label %90

32:                                               ; preds = %28
  %33 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1)
          to label %34 unwind label %92

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %35, ptr %7, align 8, !tbaa !42, !alias.scope !51
  %36 = load ptr, ptr %33, align 8, !tbaa !50
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !46
  %42 = icmp ult i64 %41, 16
  call void @llvm.assume(i1 %42)
  %43 = add nuw nsw i64 %41, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %35, ptr noundef nonnull align 8 dereferenceable(1) %37, i64 %43, i1 false)
  br label %46

44:                                               ; preds = %34
  store ptr %36, ptr %7, align 8, !tbaa !50, !alias.scope !51
  %45 = load i64, ptr %37, align 8, !tbaa !49
  store i64 %45, ptr %35, align 8, !tbaa !49, !alias.scope !51
  br label %46

46:                                               ; preds = %39, %44
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !46
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 %48, ptr %49, align 8, !tbaa !46, !alias.scope !51
  store ptr %37, ptr %33, align 8, !tbaa !50
  store i64 0, ptr %47, align 8, !tbaa !46
  store i8 0, ptr %37, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %50, ptr %9, align 8, !tbaa !42
  %51 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #14
  %52 = getelementptr inbounds i8, ptr %26, i64 %51
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %26, ptr noundef nonnull %52)
          to label %53 unwind label %94

53:                                               ; preds = %46
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %54 unwind label %96

54:                                               ; preds = %53
  %55 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  %56 = load ptr, ptr %6, align 8, !tbaa !50
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !46
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %56) #15
  br label %64

64:                                               ; preds = %59, %63
  %65 = load ptr, ptr %9, align 8, !tbaa !50
  %66 = icmp eq ptr %65, %50
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !46
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  br label %72

71:                                               ; preds = %64
  call void @_ZdlPv(ptr noundef %65) #15
  br label %72

72:                                               ; preds = %67, %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  %73 = load ptr, ptr %7, align 8, !tbaa !50
  %74 = icmp eq ptr %73, %35
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, ptr %49, align 8, !tbaa !46
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %79

78:                                               ; preds = %72
  call void @_ZdlPv(ptr noundef %73) #15
  br label %79

79:                                               ; preds = %75, %78
  %80 = load ptr, ptr %8, align 8, !tbaa !50
  %81 = icmp eq ptr %80, %29
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !46
  %85 = icmp ult i64 %84, 16
  call void @llvm.assume(i1 %85)
  br label %87

86:                                               ; preds = %79
  call void @_ZdlPv(ptr noundef %80) #15
  br label %87

87:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  br label %222

88:                                               ; preds = %218, %20
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %223

90:                                               ; preds = %28
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %122

92:                                               ; preds = %32
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %113

94:                                               ; preds = %46
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %105

96:                                               ; preds = %53
  %97 = landingpad { ptr, i32 }
          cleanup
  %98 = load ptr, ptr %9, align 8, !tbaa !50
  %99 = icmp eq ptr %98, %50
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !46
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %105

104:                                              ; preds = %96
  call void @_ZdlPv(ptr noundef %98) #15
  br label %105

105:                                              ; preds = %104, %100, %94
  %106 = phi { ptr, i32 } [ %95, %94 ], [ %97, %100 ], [ %97, %104 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  %107 = load ptr, ptr %7, align 8, !tbaa !50
  %108 = icmp eq ptr %107, %35
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i64, ptr %49, align 8, !tbaa !46
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  br label %113

112:                                              ; preds = %105
  call void @_ZdlPv(ptr noundef %107) #15
  br label %113

113:                                              ; preds = %112, %109, %92
  %114 = phi { ptr, i32 } [ %93, %92 ], [ %106, %109 ], [ %106, %112 ]
  %115 = load ptr, ptr %8, align 8, !tbaa !50
  %116 = icmp eq ptr %115, %29
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !46
  %120 = icmp ult i64 %119, 16
  call void @llvm.assume(i1 %120)
  br label %122

121:                                              ; preds = %113
  call void @_ZdlPv(ptr noundef %115) #15
  br label %122

122:                                              ; preds = %121, %117, %90
  %123 = phi { ptr, i32 } [ %91, %90 ], [ %114, %117 ], [ %114, %121 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  br label %223

124:                                              ; preds = %25
  br i1 %19, label %218, label %125

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #14
  %126 = load ptr, ptr %1, align 8, !tbaa !39
  %127 = getelementptr inbounds ptr, ptr %126, i64 4
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %130 unwind label %190

130:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %129, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %131 unwind label %192

131:                                              ; preds = %130
  %132 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.2)
          to label %133 unwind label %194

133:                                              ; preds = %131
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %134, ptr %11, align 8, !tbaa !42, !alias.scope !54
  %135 = load ptr, ptr %132, align 8, !tbaa !50
  %136 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %132, i64 0, i32 2
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %132, i64 0, i32 1
  %140 = load i64, ptr %139, align 8, !tbaa !46
  %141 = icmp ult i64 %140, 16
  call void @llvm.assume(i1 %141)
  %142 = add nuw nsw i64 %140, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %134, ptr noundef nonnull align 8 dereferenceable(1) %136, i64 %142, i1 false)
  br label %145

143:                                              ; preds = %133
  store ptr %135, ptr %11, align 8, !tbaa !50, !alias.scope !54
  %144 = load i64, ptr %136, align 8, !tbaa !49
  store i64 %144, ptr %134, align 8, !tbaa !49, !alias.scope !54
  br label %145

145:                                              ; preds = %138, %143
  %146 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %132, i64 0, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !46
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  store i64 %147, ptr %148, align 8, !tbaa !46, !alias.scope !54
  store ptr %136, ptr %132, align 8, !tbaa !50
  store i64 0, ptr %146, align 8, !tbaa !46
  store i8 0, ptr %136, align 8, !tbaa !49
  %149 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %4)
          to label %150 unwind label %196

150:                                              ; preds = %145
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  store ptr %151, ptr %10, align 8, !tbaa !42, !alias.scope !57
  %152 = load ptr, ptr %149, align 8, !tbaa !50
  %153 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %149, i64 0, i32 2
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %149, i64 0, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !46
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  %159 = add nuw nsw i64 %157, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %151, ptr noundef nonnull align 8 dereferenceable(1) %153, i64 %159, i1 false)
  br label %162

160:                                              ; preds = %150
  store ptr %152, ptr %10, align 8, !tbaa !50, !alias.scope !57
  %161 = load i64, ptr %153, align 8, !tbaa !49
  store i64 %161, ptr %151, align 8, !tbaa !49, !alias.scope !57
  br label %162

162:                                              ; preds = %155, %160
  %163 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %149, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !46
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  store i64 %164, ptr %165, align 8, !tbaa !46, !alias.scope !57
  store ptr %153, ptr %149, align 8, !tbaa !50
  store i64 0, ptr %163, align 8, !tbaa !46
  store i8 0, ptr %153, align 8, !tbaa !49
  %166 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  %167 = load ptr, ptr %10, align 8, !tbaa !50
  %168 = icmp eq ptr %167, %151
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load i64, ptr %165, align 8, !tbaa !46
  %171 = icmp ult i64 %170, 16
  call void @llvm.assume(i1 %171)
  br label %173

172:                                              ; preds = %162
  call void @_ZdlPv(ptr noundef %167) #15
  br label %173

173:                                              ; preds = %169, %172
  %174 = load ptr, ptr %11, align 8, !tbaa !50
  %175 = icmp eq ptr %174, %134
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i64, ptr %148, align 8, !tbaa !46
  %178 = icmp ult i64 %177, 16
  call void @llvm.assume(i1 %178)
  br label %180

179:                                              ; preds = %173
  call void @_ZdlPv(ptr noundef %174) #15
  br label %180

180:                                              ; preds = %176, %179
  %181 = load ptr, ptr %12, align 8, !tbaa !50
  %182 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %186 = load i64, ptr %185, align 8, !tbaa !46
  %187 = icmp ult i64 %186, 16
  call void @llvm.assume(i1 %187)
  br label %189

188:                                              ; preds = %180
  call void @_ZdlPv(ptr noundef %181) #15
  br label %189

189:                                              ; preds = %184, %188
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #14
  br label %222

190:                                              ; preds = %125
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %216

192:                                              ; preds = %130
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %214

194:                                              ; preds = %131
  %195 = landingpad { ptr, i32 }
          cleanup
  br label %204

196:                                              ; preds = %145
  %197 = landingpad { ptr, i32 }
          cleanup
  %198 = load ptr, ptr %11, align 8, !tbaa !50
  %199 = icmp eq ptr %198, %134
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i64, ptr %148, align 8, !tbaa !46
  %202 = icmp ult i64 %201, 16
  call void @llvm.assume(i1 %202)
  br label %204

203:                                              ; preds = %196
  call void @_ZdlPv(ptr noundef %198) #15
  br label %204

204:                                              ; preds = %203, %200, %194
  %205 = phi { ptr, i32 } [ %195, %194 ], [ %197, %200 ], [ %197, %203 ]
  %206 = load ptr, ptr %12, align 8, !tbaa !50
  %207 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !46
  %212 = icmp ult i64 %211, 16
  call void @llvm.assume(i1 %212)
  br label %214

213:                                              ; preds = %204
  call void @_ZdlPv(ptr noundef %206) #15
  br label %214

214:                                              ; preds = %213, %209, %192
  %215 = phi { ptr, i32 } [ %193, %192 ], [ %205, %209 ], [ %205, %213 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #14
  br label %216

216:                                              ; preds = %214, %190
  %217 = phi { ptr, i32 } [ %215, %214 ], [ %191, %190 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #14
  br label %223

218:                                              ; preds = %124
  %219 = load i64, ptr %16, align 8, !tbaa !46
  %220 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %221 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef %219, ptr noundef nonnull %4, i64 noundef %220)
          to label %222 unwind label %88

222:                                              ; preds = %218, %189, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  ret void

223:                                              ; preds = %216, %122, %88
  %224 = phi { ptr, i32 } [ %123, %122 ], [ %217, %216 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  %225 = load ptr, ptr %14, align 8, !tbaa !50
  %226 = icmp eq ptr %225, %15
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i64, ptr %16, align 8, !tbaa !46
  %229 = icmp ult i64 %228, 16
  call void @llvm.assume(i1 %229)
  br label %231

230:                                              ; preds = %223
  call void @_ZdlPv(ptr noundef %225) #15
  br label %231

231:                                              ; preds = %227, %230
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  resume { ptr, i32 } %224
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !60 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !46
  %8 = add i64 %7, %5
  %9 = load ptr, ptr %1, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %14, !prof !61

12:                                               ; preds = %3
  %13 = icmp ult i64 %5, 16
  tail call void @llvm.assume(i1 %13)
  br label %14

14:                                               ; preds = %3, %12
  %15 = load i64, ptr %10, align 8
  %16 = select i1 %11, i64 15, i64 %15, !prof !61
  %17 = icmp ugt i64 %8, %16
  br i1 %17, label %18, label %45, !prof !62

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !50
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = icmp ult i64 %7, 16
  tail call void @llvm.assume(i1 %23)
  br label %24

24:                                               ; preds = %18, %22
  %25 = load i64, ptr %20, align 8
  %26 = select i1 %21, i64 15, i64 %25
  %27 = icmp ugt i64 %8, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %9, i64 noundef %5)
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %30, ptr %0, align 8, !tbaa !42
  %31 = load ptr, ptr %29, align 8, !tbaa !50
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !46
  %37 = icmp ult i64 %36, 16
  tail call void @llvm.assume(i1 %37)
  %38 = add nuw nsw i64 %36, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %30, ptr noundef nonnull align 8 dereferenceable(1) %32, i64 %38, i1 false)
  br label %41

39:                                               ; preds = %28
  store ptr %31, ptr %0, align 8, !tbaa !50
  %40 = load i64, ptr %32, align 8, !tbaa !49
  store i64 %40, ptr %30, align 8, !tbaa !49
  br label %41

41:                                               ; preds = %34, %39
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %43, ptr %44, align 8, !tbaa !46
  store ptr %32, ptr %29, align 8, !tbaa !50
  br label %67

45:                                               ; preds = %24, %14
  %46 = sub i64 4611686018427387903, %5
  %47 = icmp ult i64 %46, %7
  br i1 %47, label %48, label %49, !prof !62

48:                                               ; preds = %45
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8, !tbaa !50
  %51 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %50, i64 noundef %7)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %52, ptr %0, align 8, !tbaa !42
  %53 = load ptr, ptr %51, align 8, !tbaa !50
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61, !prof !61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !46
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false), !prof !63
  br label %63

61:                                               ; preds = %49
  store ptr %53, ptr %0, align 8, !tbaa !50
  %62 = load i64, ptr %54, align 8, !tbaa !49
  store i64 %62, ptr %52, align 8, !tbaa !49
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !46
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !46
  store ptr %54, ptr %51, align 8, !tbaa !50
  br label %67

67:                                               ; preds = %41, %63
  %68 = phi ptr [ %42, %41 ], [ %64, %63 ]
  %69 = phi ptr [ %32, %41 ], [ %54, %63 ]
  store i64 0, ptr %68, align 8, !tbaa !46
  store i8 0, ptr %69, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !42
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 %9, ptr %4, align 8, !tbaa !64
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !65

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !50
  %13 = load i64, ptr %4, align 8, !tbaa !64
  store i64 %13, ptr %5, align 8, !tbaa !49
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !50
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !66

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !49
  store i8 %17, ptr %15, align 1, !tbaa !49
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !67
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !64
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !46
  %22 = load ptr, ptr %0, align 8, !tbaa !50
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #15
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #15
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12NEDException4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !64
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !65

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !50
  %11 = load i64, ptr %4, align 8, !tbaa !64
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !50
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !66

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !49
  store i8 %16, ptr %14, align 1, !tbaa !49
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !69
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !64
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !46
  %21 = load ptr, ptr %0, align 8, !tbaa !50
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 2}
!36 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !41, i64 0}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !48, i64 8, !45, i64 16}
!48 = !{!"long", !45, i64 0}
!49 = !{!45, !45, i64 0}
!50 = !{!47, !44, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!53 = distinct !{!53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!56 = distinct !{!56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!59 = distinct !{!59, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!60 = !{!"function_entry_count", i64 2}
!61 = !{!"branch_weights", i32 2, i32 0}
!62 = !{!"branch_weights", i32 0, i32 2}
!63 = !{!"VP", i32 1, i64 2, i64 9, i64 2}
!64 = !{!48, !48, i64 0}
!65 = !{!"branch_weights", i32 1257662, i32 631781}
!66 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!67 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!68 = !{!"function_entry_count", i64 1889443}
!69 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
