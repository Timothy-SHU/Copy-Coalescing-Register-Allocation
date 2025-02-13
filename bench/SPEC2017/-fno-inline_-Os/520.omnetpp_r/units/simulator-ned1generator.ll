; ModuleID = 'simulator/ned1generator.cc'
source_filename = "simulator/ned1generator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.NED1Generator = type { i32, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.ExtendsElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.ExpressionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CommentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::allocator" = type { i8 }
%class.ImportElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.SimpleModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CompoundModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ChannelElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ParamElement = type <{ %class.NEDElement, i32, i8, [3 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.GateElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i32, i8, %"class.std::__cxx11::basic_string" }
%class.SubmoduleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ConnectionsElement = type <{ %class.NEDElement, i8, [7 x i8] }>
%class.ConnectionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, i32 }
%class.ChannelSpecElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.LoopElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.OperatorElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.FunctionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.IdentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%struct._Guard = type { ptr }

$_ZNK14ExtendsElement7getNameEv = comdat any

$_Z11opp_isemptyPKc = comdat any

$_ZNK17ExpressionElement9getTargetEv = comdat any

$_ZNK14CommentElement8getLocidEv = comdat any

$_ZNK14CommentElement10getContentEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNK13ImportElement13getImportSpecEv = comdat any

$_ZNK19SimpleModuleElement7getNameEv = comdat any

$_ZNK21CompoundModuleElement7getNameEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK14ChannelElement7getNameEv = comdat any

$_ZNK12ParamElement7getNameEv = comdat any

$_ZNK12ParamElement7getTypeEv = comdat any

$_ZNK12ParamElement13getIsVolatileEv = comdat any

$_ZNK14LiteralElement7getTextEv = comdat any

$_ZNK12ParamElement12getIsDefaultEv = comdat any

$_ZNK15PropertyElement7getNameEv = comdat any

$_ZNK11GateElement7getTypeEv = comdat any

$_ZNK11GateElement7getNameEv = comdat any

$_ZNK11GateElement11getIsVectorEv = comdat any

$_ZNK16SubmoduleElement7getNameEv = comdat any

$_ZNK16SubmoduleElement11getLikeTypeEv = comdat any

$_ZNK16SubmoduleElement7getTypeEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNK14LiteralElement8getValueEv = comdat any

$_ZNK18ConnectionsElement19getAllowUnconnectedEv = comdat any

$_ZNK17ConnectionElement17getArrowDirectionEv = comdat any

$_ZNK17ConnectionElement12getSrcModuleEv = comdat any

$_ZNK17ConnectionElement10getSrcGateEv = comdat any

$_ZNK17ConnectionElement18getSrcGatePlusplusEv = comdat any

$_ZNK17ConnectionElement14getSrcGateSubgEv = comdat any

$_ZNK17ConnectionElement13getDestModuleEv = comdat any

$_ZNK17ConnectionElement11getDestGateEv = comdat any

$_ZNK17ConnectionElement19getDestGatePlusplusEv = comdat any

$_ZNK17ConnectionElement15getDestGateSubgEv = comdat any

$_ZNK18ChannelSpecElement11getLikeTypeEv = comdat any

$_ZNK18ChannelSpecElement7getTypeEv = comdat any

$_ZNK11LoopElement12getParamNameEv = comdat any

$_ZNK15OperatorElement7getNameEv = comdat any

$_ZNK15FunctionElement7getNameEv = comdat any

$_ZNK12IdentElement9getModuleEv = comdat any

$_ZNK12IdentElement7getNameEv = comdat any

$_ZNK14LiteralElement7getTypeEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN13NED1Generator14increaseIndentEPKcE6spaces = internal global [70 x i8] c"                                                                     \00", align 16
@.str.1 = private unnamed_addr constant [46 x i8] c"NED2 feature unsupported in NED1: inheritance\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"network must extend a module type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"banner\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"trailing\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"import\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: properties\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"simulator/ned1generator.cc\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"should never come here\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"simple \00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"endsimple\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: interfaces\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@_ZTISt9exception = external constant ptr
@.str.24 = private unnamed_addr constant [10 x i8] c"display: \00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"error converting display string: %s\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"endnetwork\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"endmodule\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"NED2 feature unsupported in NED1: channel interfaces\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"channel \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"endchannel\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"unexpected parameters section\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"parameters:\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"NED2 feature unsupported in NED1: assigment by pattern matching\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"unexpected element\00", align 1
@.str.35 = private unnamed_addr constant [65 x i8] c"NED2 feature unsupported in NED1: assignment by pattern matching\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"NED2 feature unsupported in NED1: patterns\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ber\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"datarate\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.42 = private unnamed_addr constant [90 x i8] c"NED2 feature unsupported in NED1: channel parameters other than delay, error and datarate\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"should never get here\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"numeric const\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.51 = private unnamed_addr constant [70 x i8] c"NED2 feature unsupported in NED1: assignment in parameter declaration\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.55 = private unnamed_addr constant [73 x i8] c"NED2 feature unsupported in NED1: defining new parameter for a submodule\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"NED2 feature unsupported in NED1: 'parameter=default' syntax\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"input(\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.63 = private unnamed_addr constant [106 x i8] c"NED2 feature unsupported in NED1: @display may occur on submodules, connections and compound modules only\00", align 1
@.str.64 = private unnamed_addr constant [104 x i8] c"NED2 feature unsupported in NED1: @prompt may occur in submodule parameter assigments and networks only\00", align 1
@.str.65 = private unnamed_addr constant [73 x i8] c"NED2 feature unsupported in NED1: property (except @display and @prompt)\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"unexpected gates section\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"gates:\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"gatesizes:\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"in: \00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"out: \00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: inout gate\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c"NED2 feature unsupported in NED1: missing gate type\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"vector-size\00", align 1
@.str.75 = private unnamed_addr constant [71 x i8] c"NED2 feature unsupported in NED1: gate vector size in gate declaration\00", align 1
@.str.76 = private unnamed_addr constant [69 x i8] c"NED2 feature unsupported in NED1: declaring new gates for submodules\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c"NED2 feature unsupported in NED1: missing gate size\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: inner type\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"submodules:\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"like-param\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c" like \00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"connections nocheck:\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"connections:\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c" -->\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c" <--\00", align 1
@.str.86 = private unnamed_addr constant [53 x i8] c"NED2 feature unsupported in NED1: two-way connection\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c" <-->\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"wrong arrow-dir\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"src-module-index\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"src-gate-index\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"dest-module-index\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"dest-gate-index\00", align 1
@.str.93 = private unnamed_addr constant [55 x i8] c"NED2 feature unsupported in NED1: per-connection `for'\00", align 1
@.str.94 = private unnamed_addr constant [68 x i8] c"NED2 feature unsupported in NED1: more than one `if' per-connection\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c" display \00", align 1
@.str.96 = private unnamed_addr constant [49 x i8] c"NED2 feature unsupported in NED1: channel `like'\00", align 1
@.str.97 = private unnamed_addr constant [63 x i8] c"NED2 feature unsupported in NED1: channel spec with parameters\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"for \00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c" do\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"endfor;\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"from-value\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"to-value\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c" if \00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.109 = private unnamed_addr constant [56 x i8] c"NED2 feature unsupported in NED1: subgate of inout gate\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.133 = private unnamed_addr constant [47 x i8] c"getOperatorPrecedence(): unknown operator '%s'\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c" ? \00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"module-index\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"isNetwork\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"locid\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.146 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ned1generator.cc, ptr null }]

@_ZN13NED1GeneratorC1EP13NEDErrorStore = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13NED1GeneratorC2EP13NEDErrorStore
@_ZN13NED1GeneratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13NED1GeneratorD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z12generateNED1RSoP10NEDElementP13NEDErrorStore(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = alloca %class.NED1Generator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @_ZN13NED1GeneratorC2EP13NEDErrorStore(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2) #15
  call void @_ZN13NED1Generator8generateERSoP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull @.str) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator8generateERSoP10NEDElementPKc(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !71 {
  %5 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !72
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false, ptr noundef null) #15
  store ptr null, ptr %5, align 8, !tbaa !72
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN13NED1GeneratorC2EP13NEDErrorStore(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !71 {
  %3 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !72
  store i32 4, ptr %0, align 8, !tbaa !78
  %4 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN13NED1GeneratorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN13NED1Generator13setIndentSizeEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !71 {
  store i32 %1, ptr %0, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  switch i32 %9, label %42 [
    i32 1, label %10
    i32 2, label %11
    i32 5, label %12
    i32 6, label %13
    i32 7, label %14
    i32 8, label %15
    i32 9, label %16
    i32 10, label %17
    i32 11, label %18
    i32 12, label %19
    i32 13, label %20
    i32 14, label %21
    i32 15, label %22
    i32 16, label %23
    i32 17, label %24
    i32 18, label %25
    i32 19, label %26
    i32 20, label %27
    i32 21, label %28
    i32 22, label %29
    i32 23, label %30
    i32 24, label %31
    i32 25, label %32
    i32 26, label %33
    i32 27, label %34
    i32 28, label %35
    i32 29, label %36
    i32 30, label %37
    i32 31, label %38
    i32 32, label %39
    i32 33, label %40
    i32 34, label %41
  ]

10:                                               ; preds = %5
  tail call void @_ZN13NED1Generator10doNedfilesEP12FilesElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

11:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doNedfileEP14NedFileElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

12:                                               ; preds = %5
  tail call void @_ZN13NED1Generator8doImportEP13ImportElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

13:                                               ; preds = %5
  tail call void @_ZN13NED1Generator14doPropertyDeclEP19PropertyDeclElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

14:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doExtendsEP14ExtendsElementPKcbS3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

15:                                               ; preds = %5
  tail call void @_ZN13NED1Generator15doInterfaceNameEP20InterfaceNameElementPKcbS3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

16:                                               ; preds = %5
  tail call void @_ZN13NED1Generator14doSimpleModuleEP19SimpleModuleElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

17:                                               ; preds = %5
  tail call void @_ZN13NED1Generator17doModuleInterfaceEP22ModuleInterfaceElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

18:                                               ; preds = %5
  tail call void @_ZN13NED1Generator16doCompoundModuleEP21CompoundModuleElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

19:                                               ; preds = %5
  tail call void @_ZN13NED1Generator18doChannelInterfaceEP23ChannelInterfaceElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

20:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doChannelEP14ChannelElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

21:                                               ; preds = %5
  tail call void @_ZN13NED1Generator12doParametersEP17ParametersElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

22:                                               ; preds = %5
  tail call void @_ZN13NED1Generator7doParamEP12ParamElementPKcbS3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

23:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doPatternEP14PatternElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

24:                                               ; preds = %5
  tail call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

25:                                               ; preds = %5
  tail call void @_ZN13NED1Generator13doPropertyKeyEP18PropertyKeyElementPKcbS3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

26:                                               ; preds = %5
  tail call void @_ZN13NED1Generator7doGatesEP12GatesElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

27:                                               ; preds = %5
  tail call void @_ZN13NED1Generator6doGateEP11GateElementPKcbS3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

28:                                               ; preds = %5
  tail call void @_ZN13NED1Generator7doTypesEP12TypesElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

29:                                               ; preds = %5
  tail call void @_ZN13NED1Generator12doSubmodulesEP17SubmodulesElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

30:                                               ; preds = %5
  tail call void @_ZN13NED1Generator11doSubmoduleEP16SubmoduleElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

31:                                               ; preds = %5
  tail call void @_ZN13NED1Generator13doConnectionsEP18ConnectionsElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

32:                                               ; preds = %5
  tail call void @_ZN13NED1Generator12doConnectionEP17ConnectionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

33:                                               ; preds = %5
  tail call void @_ZN13NED1Generator13doChannelSpecEP18ChannelSpecElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr noundef %4) #15
  br label %42

34:                                               ; preds = %5
  tail call void @_ZN13NED1Generator17doConnectionGroupEP22ConnectionGroupElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

35:                                               ; preds = %5
  tail call void @_ZN13NED1Generator6doLoopEP11LoopElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) #15
  br label %42

36:                                               ; preds = %5
  tail call void @_ZN13NED1Generator11doConditionEP16ConditionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) #15
  br label %42

37:                                               ; preds = %5
  tail call void @_ZN13NED1Generator12doExpressionEP17ExpressionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

38:                                               ; preds = %5
  tail call void @_ZN13NED1Generator10doOperatorEP15OperatorElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

39:                                               ; preds = %5
  tail call void @_ZN13NED1Generator10doFunctionEP15FunctionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

40:                                               ; preds = %5
  tail call void @_ZN13NED1Generator7doIdentEP12IdentElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison) #15
  br label %42

41:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doLiteralEP14LiteralElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %42

42:                                               ; preds = %5, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator8generateB5cxx11EP10NEDElementPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %5) #16
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #15
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  invoke void @_ZN13NED1Generator8generateERSoP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3) #15
          to label %7 unwind label %9

7:                                                ; preds = %4
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %5) #15
          to label %8 unwind label %9

8:                                                ; preds = %7
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %5) #16
  ret void

9:                                                ; preds = %7, %4
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %5) #16
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 align 2 !prof !71 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %4 = trunc i64 %3 to i32
  %5 = load i32, ptr %0, align 8, !tbaa !78
  %6 = add nsw i32 %5, %4
  %7 = icmp slt i32 %6, 70
  %8 = select i1 %7, i32 %6, i32 %4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN13NED1Generator14decreaseIndentEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef readnone %1) local_unnamed_addr #11 align 2 !prof !71 {
  %3 = load i32, ptr %0, align 8, !tbaa !78
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !71 {
  %5 = load ptr, ptr %1, align 8, !tbaa !80
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %4
  ret void

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %21, %11 ], [ %8, %4 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 24
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %17 = icmp eq ptr %12, %16
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %12, ptr noundef %2, i1 noundef zeroext %17, ptr noundef %3) #15
  %18 = load ptr, ptr %12, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(112) %12) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %10, label %11, !llvm.loop !82
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %18, %5
  %12 = phi ptr [ null, %5 ], [ %26, %18 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %33

18:                                               ; preds = %5, %18
  %19 = phi ptr [ %30, %18 ], [ %9, %5 ]
  %20 = phi ptr [ %26, %18 ], [ null, %5 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %19) #15
  %25 = icmp eq i32 %24, %2
  %26 = select i1 %25, ptr %19, ptr %20
  %27 = load ptr, ptr %19, align 8, !tbaa !80
  %28 = getelementptr inbounds ptr, ptr %27, i64 25
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(112) %19) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %11, label %18, !llvm.loop !84

32:                                               ; preds = %42, %11
  ret void

33:                                               ; preds = %11, %42
  %34 = phi ptr [ %46, %42 ], [ %16, %11 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !80
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(112) %34) #15
  %39 = icmp eq i32 %38, %2
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = icmp eq ptr %34, %12
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %34, ptr noundef %3, i1 noundef zeroext %41, ptr noundef %4) #15
  br label %42

42:                                               ; preds = %33, %40
  %43 = load ptr, ptr %34, align 8, !tbaa !80
  %44 = getelementptr inbounds ptr, ptr %43, i64 25
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(112) %34) #15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %32, label %33, !llvm.loop !85
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator25generateChildrenWithTypesEP10NEDElementPiPKcS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %18, %5
  %12 = phi ptr [ null, %5 ], [ %27, %18 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %34

18:                                               ; preds = %5, %18
  %19 = phi ptr [ %31, %18 ], [ %9, %5 ]
  %20 = phi ptr [ %27, %18 ], [ null, %5 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %19) #15
  %25 = tail call fastcc noundef i32 @_ZL10isInVectoriPi(i32 noundef %24, ptr noundef %2) #15, !range !86
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %20, ptr %19
  %28 = load ptr, ptr %19, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 25
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(112) %19) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %11, label %18, !llvm.loop !87

33:                                               ; preds = %44, %11
  ret void

34:                                               ; preds = %11, %44
  %35 = phi ptr [ %48, %44 ], [ %16, %11 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = getelementptr inbounds ptr, ptr %36, i64 5
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(112) %35) #15
  %40 = tail call fastcc noundef i32 @_ZL10isInVectoriPi(i32 noundef %39, ptr noundef %2) #15, !range !86
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = icmp eq ptr %35, %12
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %35, ptr noundef %3, i1 noundef zeroext %43, ptr noundef %4) #15
  br label %44

44:                                               ; preds = %34, %42
  %45 = load ptr, ptr %35, align 8, !tbaa !80
  %46 = getelementptr inbounds ptr, ptr %45, i64 25
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(112) %35) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %33, label %34, !llvm.loop !88
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL10isInVectoriPi(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !71 !PGOFuncName !89 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %10, %3 ], [ 0, %2 ]
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne i32 %6, %0
  %9 = and i1 %8, %7
  %10 = add nuw i64 %4, 1
  br i1 %9, label %3, label %11, !llvm.loop !91

11:                                               ; preds = %3
  %12 = zext i1 %7 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = tail call fastcc noundef zeroext i1 @_ZL10_isNetworkP10NEDElement(ptr noundef %1) #15
  %5 = load ptr, ptr %1, align 8, !tbaa !80
  br i1 %4, label %6, label %29

6:                                                ; preds = %3
  %7 = getelementptr inbounds ptr, ptr %5, i64 33
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 8) #15
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #15
  br label %14

14:                                               ; preds = %11, %6
  %15 = load ptr, ptr %1, align 8, !tbaa !80
  %16 = getelementptr inbounds ptr, ptr %15, i64 30
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 7) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %22, ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #15
  br label %43

23:                                               ; preds = %14
  %24 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.3) #15
  %27 = tail call noundef ptr @_ZNK14ExtendsElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %18) #15
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27) #15
  br label %43

29:                                               ; preds = %3
  %30 = getelementptr inbounds ptr, ptr %5, i64 30
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 7) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load ptr, ptr %1, align 8, !tbaa !80
  %36 = getelementptr inbounds ptr, ptr %35, i64 30
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 8) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34, %29
  %41 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %42, ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #15
  br label %43

43:                                               ; preds = %20, %23, %34, %40
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL10_isNetworkP10NEDElement(ptr noundef %0) unnamed_addr #4 !prof !71 !PGOFuncName !92 {
  %2 = tail call noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef %0, ptr noundef nonnull @.str.140) #15
  ret i1 %2
}

; Function Attrs: optsize
declare void @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14ExtendsElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = load ptr, ptr %1, align 8, !tbaa !80
  %5 = getelementptr inbounds ptr, ptr %4, i64 17
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2) #15
  %8 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %7) #15
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 30) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %9, %23
  %16 = phi ptr [ %27, %23 ], [ %13, %9 ]
  %17 = tail call noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %16) #15
  %18 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %17) #15
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %16) #15
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %2) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15, %19
  %24 = load ptr, ptr %16, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %24, i64 36
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(144) %16) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !94

29:                                               ; preds = %19, %23, %9, %3
  %30 = phi i1 [ true, %3 ], [ false, %9 ], [ true, %19 ], [ false, %23 ]
  ret i1 %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %0) local_unnamed_addr #8 comdat !prof !95 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !96

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !97
  %5 = icmp eq i8 %4, 0
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ true, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !71 {
  %5 = load ptr, ptr %1, align 8, !tbaa !80
  %6 = getelementptr inbounds ptr, ptr %5, i64 17
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2) #15
  %9 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %8) #15
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load ptr, ptr %1, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 17
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2) #15
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %16) #15
  br label %39

18:                                               ; preds = %4
  %19 = load ptr, ptr %1, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 30
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 30) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %18, %33
  %25 = phi ptr [ %37, %33 ], [ %22, %18 ]
  %26 = tail call noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %25) #15
  %27 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %26) #15
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = tail call noundef ptr @_ZNK17ExpressionElement9getTargetEv(ptr noundef nonnull align 8 dereferenceable(144) %25) #15
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %2) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %25, ptr noundef %3, i1 noundef zeroext false, ptr noundef null) #15
  br label %33

33:                                               ; preds = %24, %28, %32
  %34 = load ptr, ptr %25, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %34, i64 36
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(144) %25) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %24, !llvm.loop !99

39:                                               ; preds = %33, %18, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !71 {
  %5 = tail call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.4) #15
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.5) #15
  br label %12

12:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator19concatInnerCommentsB5cxx11EP10NEDElement(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = load ptr, ptr %2, align 8, !tbaa !80
  %5 = getelementptr inbounds ptr, ptr %4, i64 30
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 3) #15
          to label %8 unwind label %13

8:                                                ; preds = %3, %24
  %9 = phi ptr [ %28, %24 ], [ %7, %3 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %15

11:                                               ; preds = %24
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %29

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %29

15:                                               ; preds = %8
  %16 = tail call noundef ptr @_ZNK14CommentElement8getLocidEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #15
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(6) @.str.6) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZNK14CommentElement10getContentEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #15
  %21 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %20) #15
          to label %24 unwind label %22

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %29

24:                                               ; preds = %19, %15
  %25 = load ptr, ptr %9, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 31
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef 3) #15
          to label %8 unwind label %11, !llvm.loop !100

29:                                               ; preds = %11, %13, %22
  %30 = phi { ptr, i32 } [ %23, %22 ], [ %12, %11 ], [ %14, %13 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  resume { ptr, i32 } %30

31:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14CommentElement8getLocidEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #8 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14CommentElement10getContentEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #8 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call fastcc noundef ptr @_ZL10getCommentP10NEDElementPKc(ptr noundef %2, ptr noundef nonnull @.str.7) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZN13NED1Generator19concatInnerCommentsB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  invoke fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %8, ptr noundef %3, ptr noundef nonnull @.str) #15
          to label %9 unwind label %13

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %10 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  invoke fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %10, ptr noundef %3, ptr noundef nonnull @.str) #15
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %12 unwind label %17

12:                                               ; preds = %11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %21

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZL10getCommentP10NEDElementPKc(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #4 !prof !71 !PGOFuncName !101 {
  %3 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull @.str.141, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNK14CommentElement10getContentEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #15
  %7 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %6) #15
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call noundef ptr @_ZNK14CommentElement10getContentEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #15
  br label %10

10:                                               ; preds = %2, %5, %8
  %11 = phi ptr [ %9, %8 ], [ null, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %5 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %6 = add i64 %5, %4
  %7 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %11 = icmp ugt i64 %6, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  br label %16

14:                                               ; preds = %9, %3
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %17) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !71 !PGOFuncName !102 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::allocator", align 1
  %13 = icmp eq ptr %1, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i8, ptr %1, align 1, !tbaa !97
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %88

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %89

21:                                               ; preds = %14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %22 = load i8, ptr %1, align 1, !tbaa !97
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %88, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %2, null
  br label %26

26:                                               ; preds = %24, %79
  %27 = phi ptr [ %1, %24 ], [ %83, %79 ]
  %28 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef 10) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #18
  %32 = getelementptr inbounds i8, ptr %27, i64 %31
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %28, %26 ], [ %32, %30 ]
  %35 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @.str.142) #18
  %36 = icmp ne ptr %35, null
  %37 = icmp ult ptr %35, %34
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.9) #15
          to label %79 unwind label %41

41:                                               ; preds = %39
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %86

43:                                               ; preds = %33
  br i1 %25, label %44, label %59

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %27, ptr noundef nonnull %34, ptr noundef nonnull align 1 dereferenceable(1) %8) #15
          to label %45 unwind label %49

45:                                               ; preds = %44
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9) #15
          to label %46 unwind label %51

46:                                               ; preds = %45
  %47 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %48 unwind label %53

48:                                               ; preds = %46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %79

49:                                               ; preds = %44
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %57

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %55

53:                                               ; preds = %46
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %50, %49 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %86

59:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %35, ptr noundef nonnull %34, ptr noundef nonnull align 1 dereferenceable(1) %12) #15
          to label %60 unwind label %65

60:                                               ; preds = %59
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %11) #15
          to label %61 unwind label %67

61:                                               ; preds = %60
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.9) #15
          to label %62 unwind label %69

62:                                               ; preds = %61
  %63 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %9) #15
          to label %64 unwind label %71

64:                                               ; preds = %62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  br label %79

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %77

67:                                               ; preds = %60
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %75

69:                                               ; preds = %61
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %62
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %68, %67 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  br label %77

77:                                               ; preds = %75, %65
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %66, %65 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  br label %86

79:                                               ; preds = %48, %64, %39
  %80 = load i8, ptr %34, align 1, !tbaa !97
  %81 = icmp ne i8 %80, 0
  %82 = zext i1 %81 to i64
  %83 = getelementptr inbounds i8, ptr %34, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !97
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %26, !llvm.loop !103

86:                                               ; preds = %77, %57, %41
  %87 = phi { ptr, i32 } [ %42, %41 ], [ %78, %77 ], [ %58, %57 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %89

88:                                               ; preds = %79, %21, %18
  ret void

89:                                               ; preds = %86, %19
  %90 = phi { ptr, i32 } [ %87, %86 ], [ %20, %19 ]
  resume { ptr, i32 } %90
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = tail call fastcc noundef ptr @_ZL10getCommentP10NEDElementPKc(ptr noundef %2, ptr noundef nonnull @.str.8) #15
  tail call fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator21getInlineRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = tail call fastcc noundef ptr @_ZL10getCommentP10NEDElementPKc(ptr noundef %2, ptr noundef nonnull @.str.8) #15
  tail call fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.10) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = tail call fastcc noundef ptr @_ZL10getCommentP10NEDElementPKc(ptr noundef %2, ptr noundef nonnull @.str.11) #15
  tail call fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator10doNedfilesEP12FilesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  tail call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator9doNedfileEP14NedFileElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %10 unwind label %11

10:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null) #15
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator8doImportEP13ImportElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = load ptr, ptr %1, align 8, !tbaa !80
  %9 = getelementptr inbounds ptr, ptr %8, i64 26
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !80
  %15 = getelementptr inbounds ptr, ptr %14, i64 26
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %18 = load ptr, ptr %17, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(112) %17) #15
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %28, label %23

23:                                               ; preds = %13, %5
  %24 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %2) #15
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull @.str.12) #15
  br label %28

28:                                               ; preds = %23, %13
  %29 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2) #15
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %32 unwind label %62

32:                                               ; preds = %28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %33 = load ptr, ptr %1, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 25
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %1, align 8, !tbaa !80
  %40 = getelementptr inbounds ptr, ptr %39, i64 25
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %43 = load ptr, ptr %42, align 8, !tbaa !80
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(112) %42) #15
  %47 = icmp eq i32 %46, 5
  %48 = select i1 %47, ptr @.str.15, ptr @.str.14
  br label %49

49:                                               ; preds = %38, %32
  %50 = phi ptr [ @.str.14, %32 ], [ %48, %38 ]
  %51 = load ptr, ptr %29, align 8, !tbaa !72
  %52 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull %52) #15
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull @.str.13) #15
  %55 = call noundef ptr @_ZNK13ImportElement13getImportSpecEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %55) #15
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull @.str.13) #15
  %58 = load ptr, ptr %29, align 8, !tbaa !72
  %59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull %50) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %61 unwind label %64

61:                                               ; preds = %49
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret void

62:                                               ; preds = %28
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %66

64:                                               ; preds = %49
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %63, %62 ]
  resume { ptr, i32 } %67
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13ImportElement13getImportSpecEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator14doPropertyDeclEP19PropertyDeclElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.16) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator9doExtendsEP14ExtendsElementPKcbS3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 315, ptr noundef %1, ptr noundef nonnull @.str.18) #15
  ret void
}

; Function Attrs: optsize
declare void @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator15doInterfaceNameEP20InterfaceNameElementPKcbS3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 320, ptr noundef %1, ptr noundef nonnull @.str.18) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator14doSimpleModuleEP19SimpleModuleElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %12 unwind label %28

12:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %13 = load ptr, ptr %9, align 8, !tbaa !72
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %2) #15
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.19) #15
  %16 = call noundef ptr @_ZNK19SimpleModuleElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %16) #15
  call void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison) #15
  %18 = load ptr, ptr %9, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %20 unwind label %30

20:                                               ; preds = %12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %21 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %21, ptr noundef null) #15
  %22 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull %22, ptr noundef null) #15
  %23 = load ptr, ptr %9, align 8, !tbaa !72
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %2) #15
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.20) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(32) %8) #15
          to label %27 unwind label %32

27:                                               ; preds = %20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  ret void

28:                                               ; preds = %5
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %34

30:                                               ; preds = %12
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %34

32:                                               ; preds = %20
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %34

34:                                               ; preds = %32, %30, %28
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ], [ %29, %28 ]
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19SimpleModuleElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator17doModuleInterfaceEP22ModuleInterfaceElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.21) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator16doCompoundModuleEP21CompoundModuleElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %20 unwind label %65

20:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %21 = load ptr, ptr %17, align 8, !tbaa !72
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %2) #15
  %23 = call fastcc noundef zeroext i1 @_ZL10_isNetworkP10NEDElement(ptr noundef nonnull %1) #15
  %24 = select i1 %23, ptr @.str.22, ptr @.str.23
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull %24) #15
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.10) #15
  %27 = call noundef ptr @_ZNK21CompoundModuleElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27) #15
  call void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison) #15
  %29 = load ptr, ptr %17, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %31 unwind label %69

31:                                               ; preds = %20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %32 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %32, ptr noundef null) #15
  %33 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull %33, ptr noundef null) #15
  %34 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull %34, ptr noundef null) #15
  %35 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 22, ptr noundef nonnull %35, ptr noundef null) #15
  %36 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 24, ptr noundef nonnull %36, ptr noundef null) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #16
  call void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %37 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  br i1 %37, label %130, label %38

38:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  %39 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %39) #15
          to label %40 unwind label %73

40:                                               ; preds = %38
  %41 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  invoke void @_ZN17DisplayStringUtil28toOldBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %41) #15
          to label %42 unwind label %75

42:                                               ; preds = %40
  %43 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  %44 = load ptr, ptr %17, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  %45 = load ptr, ptr %8, align 8, !tbaa !104
  %46 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  invoke void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull align 8 poison, ptr noundef %45, ptr noundef nonnull %46) #15
          to label %47 unwind label %79

47:                                               ; preds = %42
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
          to label %49 unwind label %81

49:                                               ; preds = %47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  %50 = load ptr, ptr %17, align 8, !tbaa !72
  %51 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull %51) #15
          to label %53 unwind label %85

53:                                               ; preds = %49
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull @.str.24) #15
          to label %55 unwind label %85

55:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #16
  %56 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %56) #15
          to label %57 unwind label %87

57:                                               ; preds = %55
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(32) %13) #15
          to label %59 unwind label %89

59:                                               ; preds = %57
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull @.str.14) #15
          to label %61 unwind label %89

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #16
  invoke void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull align 8 poison, ptr noundef %45) #15
          to label %62 unwind label %91

62:                                               ; preds = %61
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(32) %14) #15
          to label %64 unwind label %93

64:                                               ; preds = %62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  br label %130

65:                                               ; preds = %5
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = extractvalue { ptr, i32 } %66, 0
  %68 = extractvalue { ptr, i32 } %66, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %157

69:                                               ; preds = %20
  %70 = landingpad { ptr, i32 }
          cleanup
  %71 = extractvalue { ptr, i32 } %70, 0
  %72 = extractvalue { ptr, i32 } %70, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %157

73:                                               ; preds = %38
  %74 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %77

75:                                               ; preds = %40
  %76 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  br label %101

79:                                               ; preds = %42
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %83

81:                                               ; preds = %47
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %101

85:                                               ; preds = %53, %49
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %101

87:                                               ; preds = %55
  %88 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %99

89:                                               ; preds = %59, %57
  %90 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %97

91:                                               ; preds = %61
  %92 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %95

93:                                               ; preds = %62
  %94 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %90, %89 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  br label %99

99:                                               ; preds = %97, %87
  %100 = phi { ptr, i32 } [ %98, %97 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  br label %101

101:                                              ; preds = %99, %85, %83, %77
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %86, %85 ], [ %84, %83 ], [ %78, %77 ]
  %103 = extractvalue { ptr, i32 } %102, 0
  %104 = extractvalue { ptr, i32 } %102, 1
  %105 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %154

107:                                              ; preds = %101
  %108 = call ptr @__cxa_begin_catch(ptr %103) #16
  %109 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #16
  %111 = load ptr, ptr %108, align 8, !tbaa !80
  %112 = getelementptr inbounds ptr, ptr %111, i64 2
  %113 = load ptr, ptr %112, align 8
  %114 = call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(8) %108) #17
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.25, ptr noundef %114) #15
          to label %115 unwind label %118

115:                                              ; preds = %107
  %116 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %110, ptr noundef nonnull %1, ptr noundef %116) #15
          to label %117 unwind label %120

117:                                              ; preds = %115
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #16
  invoke void @__cxa_end_catch()
          to label %130 unwind label %124

118:                                              ; preds = %107
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %122

120:                                              ; preds = %115
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #16
  invoke void @__cxa_end_catch()
          to label %126 unwind label %162

124:                                              ; preds = %117
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %126

126:                                              ; preds = %122, %124
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %123, %122 ]
  %128 = extractvalue { ptr, i32 } %127, 0
  %129 = extractvalue { ptr, i32 } %127, 1
  br label %154

130:                                              ; preds = %117, %64, %31
  %131 = load ptr, ptr %17, align 8, !tbaa !72
  %132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef %2) #15
          to label %133 unwind label %142

133:                                              ; preds = %130
  %134 = invoke fastcc noundef zeroext i1 @_ZL10_isNetworkP10NEDElement(ptr noundef nonnull %1) #15
          to label %135 unwind label %142

135:                                              ; preds = %133
  %136 = select i1 %134, ptr @.str.26, ptr @.str.27
  %137 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef nonnull %136) #15
          to label %138 unwind label %142

138:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #16
  invoke void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
          to label %139 unwind label %146

139:                                              ; preds = %138
  %140 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %137, ptr noundef nonnull align 8 dereferenceable(32) %16) #15
          to label %141 unwind label %148

141:                                              ; preds = %139
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  ret void

142:                                              ; preds = %135, %133, %130
  %143 = landingpad { ptr, i32 }
          cleanup
  %144 = extractvalue { ptr, i32 } %143, 0
  %145 = extractvalue { ptr, i32 } %143, 1
  br label %154

146:                                              ; preds = %138
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %150

148:                                              ; preds = %139
  %149 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #17
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %147, %146 ]
  %152 = extractvalue { ptr, i32 } %151, 0
  %153 = extractvalue { ptr, i32 } %151, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #16
  br label %154

154:                                              ; preds = %150, %142, %126, %101
  %155 = phi i32 [ %153, %150 ], [ %145, %142 ], [ %129, %126 ], [ %104, %101 ]
  %156 = phi ptr [ %152, %150 ], [ %144, %142 ], [ %128, %126 ], [ %103, %101 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %157

157:                                              ; preds = %154, %69, %65
  %158 = phi i32 [ %155, %154 ], [ %72, %69 ], [ %68, %65 ]
  %159 = phi ptr [ %156, %154 ], [ %71, %69 ], [ %67, %65 ]
  %160 = insertvalue { ptr, i32 } poison, ptr %159, 0
  %161 = insertvalue { ptr, i32 } %160, i32 %158, 1
  resume { ptr, i32 } %161

162:                                              ; preds = %122
  %163 = landingpad { ptr, i32 }
          catch ptr null
  %164 = extractvalue { ptr, i32 } %163, 0
  call void @__clang_call_terminate(ptr %164) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21CompoundModuleElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::allocator", align 1
  store ptr null, ptr %3, align 8, !tbaa !104
  %10 = load ptr, ptr %2, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 14) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %16 unwind label %17

16:                                               ; preds = %15
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %53

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %54

19:                                               ; preds = %4
  %20 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %13, i32 noundef 17, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.62) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %23 unwind label %24

23:                                               ; preds = %22
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %53

24:                                               ; preds = %22
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %54

26:                                               ; preds = %19
  %27 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %20, i32 noundef 18, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7) #15
          to label %30 unwind label %31

30:                                               ; preds = %29
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %53

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %54

33:                                               ; preds = %26
  %34 = load ptr, ptr %27, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %34, i64 30
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(112) %27, i32 noundef 34) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %8) #15
          to label %40 unwind label %41

40:                                               ; preds = %39
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  br label %53

41:                                               ; preds = %39
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  br label %54

43:                                               ; preds = %33
  store ptr %20, ptr %3, align 8, !tbaa !104
  %44 = tail call noundef ptr @_ZNK14LiteralElement7getTextEv(ptr noundef nonnull align 8 dereferenceable(216) %37) #15
  %45 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %44) #15
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call noundef ptr @_ZNK14LiteralElement7getTextEv(ptr noundef nonnull align 8 dereferenceable(216) %37) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %47, ptr noundef nonnull align 1 dereferenceable(1) %9) #15
          to label %50 unwind label %51

48:                                               ; preds = %43
  %49 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %37) #15
  tail call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %49) #15
  br label %53

50:                                               ; preds = %46
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  br label %53

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  br label %54

53:                                               ; preds = %48, %23, %40, %50, %30, %16
  ret void

54:                                               ; preds = %24, %41, %51, %31, %17
  %55 = phi { ptr, i32 } [ %18, %17 ], [ %25, %24 ], [ %32, %31 ], [ %52, %51 ], [ %42, %41 ]
  resume { ptr, i32 } %55
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: optsize
declare void @_ZN17DisplayStringUtil28toOldBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: optsize
declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator18doChannelInterfaceEP23ChannelInterfaceElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.28) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator9doChannelEP14ChannelElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %12 unwind label %28

12:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %13 = load ptr, ptr %9, align 8, !tbaa !72
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %2) #15
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.29) #15
  %16 = load ptr, ptr %9, align 8, !tbaa !72
  %17 = call noundef ptr @_ZNK14ChannelElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %17) #15
  call void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison) #15
  %19 = load ptr, ptr %9, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %21 unwind label %30

21:                                               ; preds = %12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %22 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %22, ptr noundef null) #15
  %23 = load ptr, ptr %9, align 8, !tbaa !72
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %2) #15
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.30) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(32) %8) #15
          to label %27 unwind label %32

27:                                               ; preds = %21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  ret void

28:                                               ; preds = %5
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %34

30:                                               ; preds = %12
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %34

32:                                               ; preds = %21
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %34

34:                                               ; preds = %32, %30, %28
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ], [ %29, %28 ]
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14ChannelElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator12doParametersEP17ParametersElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(112) %9) #15
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %1, align 8, !tbaa !80
  %17 = getelementptr inbounds ptr, ptr %16, i64 22
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %20 = tail call fastcc noundef zeroext i1 @_ZL10_isNetworkP10NEDElement(ptr noundef %19) #15
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %5
  tail call void @_ZN13NED1Generator17doSubstParametersEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %30

22:                                               ; preds = %15
  %23 = and i32 %13, -3
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @_ZN13NED1Generator18doModuleParametersEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %30

26:                                               ; preds = %22
  switch i32 %13, label %29 [
    i32 13, label %27
    i32 26, label %28
  ]

27:                                               ; preds = %26
  tail call void @_ZN13NED1Generator19doChannelParametersEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %30

28:                                               ; preds = %26
  tail call void @_ZN13NED1Generator22doConnectionAttributesEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %30

29:                                               ; preds = %26
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 402, ptr noundef nonnull %1, ptr noundef nonnull @.str.31) #15
  br label %30

30:                                               ; preds = %25, %28, %29, %27, %21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator17doSubstParametersEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
          to label %9 unwind label %21

9:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  %10 = load ptr, ptr %1, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 15) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %6, align 8, !tbaa !72
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %2) #15
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.32) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %20 unwind label %23

20:                                               ; preds = %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %57

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %57

25:                                               ; preds = %20, %9
  %26 = load ptr, ptr %1, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 23
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %34

33:                                               ; preds = %51, %25
  ret void

34:                                               ; preds = %31, %51
  %35 = phi ptr [ %29, %31 ], [ %55, %51 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = getelementptr inbounds ptr, ptr %36, i64 5
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(112) %35) #15
  switch i32 %39, label %50 [
    i32 3, label %51
    i32 17, label %40
    i32 15, label %41
    i32 16, label %48
  ]

40:                                               ; preds = %34
  call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %35, ptr nonnull poison, i1 zeroext poison, ptr poison) #15
  br label %51

41:                                               ; preds = %34
  %42 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  %43 = load ptr, ptr %35, align 8, !tbaa !80
  %44 = getelementptr inbounds ptr, ptr %43, i64 31
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(112) %35, i32 noundef 15) #15
  %47 = icmp eq ptr %46, null
  call void @_ZN13NED1Generator12doSubstParamEP12ParamElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %35, ptr noundef nonnull %42, i1 noundef zeroext %47, ptr poison) #15
  br label %51

48:                                               ; preds = %34
  %49 = load ptr, ptr %32, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull %1, ptr noundef nonnull @.str.35) #15
  br label %51

50:                                               ; preds = %34
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 445, ptr noundef nonnull %1, ptr noundef nonnull @.str.34) #15
  br label %51

51:                                               ; preds = %34, %40, %48, %50, %41
  %52 = load ptr, ptr %35, align 8, !tbaa !80
  %53 = getelementptr inbounds ptr, ptr %52, i64 25
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(112) %35) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %33, label %34, !llvm.loop !105

57:                                               ; preds = %23, %21
  %58 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  resume { ptr, i32 } %58
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator18doModuleParametersEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
          to label %9 unwind label %21

9:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  %10 = load ptr, ptr %1, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 15) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %6, align 8, !tbaa !72
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %2) #15
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.32) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %20 unwind label %23

20:                                               ; preds = %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %57

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %57

25:                                               ; preds = %20, %9
  %26 = load ptr, ptr %1, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 23
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %34

33:                                               ; preds = %51, %25
  ret void

34:                                               ; preds = %31, %51
  %35 = phi ptr [ %29, %31 ], [ %55, %51 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = getelementptr inbounds ptr, ptr %36, i64 5
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(112) %35) #15
  switch i32 %39, label %50 [
    i32 3, label %51
    i32 17, label %40
    i32 15, label %41
    i32 16, label %48
  ]

40:                                               ; preds = %34
  call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %35, ptr nonnull poison, i1 zeroext poison, ptr poison) #15
  br label %51

41:                                               ; preds = %34
  %42 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  %43 = load ptr, ptr %35, align 8, !tbaa !80
  %44 = getelementptr inbounds ptr, ptr %43, i64 31
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(112) %35, i32 noundef 15) #15
  %47 = icmp eq ptr %46, null
  call void @_ZN13NED1Generator13doModuleParamEP12ParamElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %35, ptr noundef nonnull %42, i1 noundef zeroext %47, ptr poison) #15
  br label %51

48:                                               ; preds = %34
  %49 = load ptr, ptr %32, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull %1, ptr noundef nonnull @.str.33) #15
  br label %51

50:                                               ; preds = %34
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 423, ptr noundef nonnull %1, ptr noundef nonnull @.str.34) #15
  br label %51

51:                                               ; preds = %34, %40, %48, %50, %41
  %52 = load ptr, ptr %35, align 8, !tbaa !80
  %53 = getelementptr inbounds ptr, ptr %52, i64 25
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(112) %35) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %33, label %34, !llvm.loop !106

57:                                               ; preds = %23, %21
  %58 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  resume { ptr, i32 } %58
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator19doChannelParametersEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = load ptr, ptr %1, align 8, !tbaa !80
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %12

11:                                               ; preds = %23, %3
  ret void

12:                                               ; preds = %9, %23
  %13 = phi ptr [ %7, %9 ], [ %27, %23 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %13) #15
  switch i32 %17, label %22 [
    i32 3, label %23
    i32 17, label %18
    i32 15, label %19
    i32 16, label %20
  ]

18:                                               ; preds = %12
  tail call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %23

19:                                               ; preds = %12
  tail call void @_ZN13NED1Generator14doChannelParamEP12ParamElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr noundef %2) #15
  br label %23

20:                                               ; preds = %12
  %21 = load ptr, ptr %10, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.35) #15
  br label %23

22:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 464, ptr noundef nonnull %1, ptr noundef nonnull @.str.34) #15
  br label %23

23:                                               ; preds = %12, %18, %20, %22, %19
  %24 = load ptr, ptr %13, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %24, i64 25
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(112) %13) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %11, label %12, !llvm.loop !107
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator22doConnectionAttributesEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = load ptr, ptr %1, align 8, !tbaa !80
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %12

11:                                               ; preds = %23, %3
  ret void

12:                                               ; preds = %9, %23
  %13 = phi ptr [ %7, %9 ], [ %27, %23 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %13) #15
  switch i32 %17, label %22 [
    i32 3, label %23
    i32 17, label %18
    i32 15, label %19
    i32 16, label %20
  ]

18:                                               ; preds = %12
  tail call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr poison, i1 zeroext poison, ptr poison) #15
  br label %23

19:                                               ; preds = %12
  tail call void @_ZN13NED1Generator14doChannelParamEP12ParamElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr noundef null) #15
  br label %23

20:                                               ; preds = %12
  %21 = load ptr, ptr %10, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.36) #15
  br label %23

22:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 483, ptr noundef nonnull %1, ptr noundef nonnull @.str.34) #15
  br label %23

23:                                               ; preds = %12, %18, %20, %22, %19
  %24 = load ptr, ptr %13, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %24, i64 25
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(112) %13) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %11, label %12, !llvm.loop !108
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = tail call noundef ptr @_ZNK15PropertyElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(184) %1) #15
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(8) @.str.62) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8, !tbaa !80
  %17 = getelementptr inbounds ptr, ptr %16, i64 22
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 22
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(112) %19) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr %23, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(112) %23) #15
  %30 = icmp eq i32 %29, 23
  br i1 %30, label %61, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %23, align 8, !tbaa !80
  %33 = getelementptr inbounds ptr, ptr %32, i64 5
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(112) %23) #15
  %36 = icmp eq i32 %35, 11
  br i1 %36, label %61, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %23, align 8, !tbaa !80
  %39 = getelementptr inbounds ptr, ptr %38, i64 5
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(112) %23) #15
  %42 = icmp eq i32 %41, 26
  br i1 %42, label %61, label %57

43:                                               ; preds = %5
  %44 = tail call noundef ptr @_ZNK15PropertyElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(184) %1) #15
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(7) @.str.54) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load ptr, ptr %1, align 8, !tbaa !80
  %49 = getelementptr inbounds ptr, ptr %48, i64 22
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %52 = load ptr, ptr %51, align 8, !tbaa !80
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef i32 %54(ptr noundef nonnull align 8 dereferenceable(112) %51) #15
  %56 = icmp eq i32 %55, 15
  br i1 %56, label %61, label %57

57:                                               ; preds = %43, %47, %15, %37, %9
  %58 = phi ptr [ @.str.63, %9 ], [ @.str.63, %37 ], [ @.str.63, %15 ], [ @.str.64, %47 ], [ @.str.65, %43 ]
  %59 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %60, ptr noundef nonnull %1, ptr noundef nonnull %58) #15
  br label %61

61:                                               ; preds = %57, %47, %25, %31, %37
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator13doModuleParamEP12ParamElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef i32 @_ZNK12ParamElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(185) %1) #15
  switch i32 %8, label %15 [
    i32 0, label %16
    i32 1, label %9
    i32 2, label %9
    i32 3, label %12
    i32 4, label %13
    i32 5, label %14
  ]

9:                                                ; preds = %5, %5
  %10 = tail call noundef zeroext i1 @_ZNK12ParamElement13getIsVolatileEv(ptr noundef nonnull align 8 dereferenceable(185) %1) #15
  %11 = select i1 %10, ptr @.str.44, ptr @.str.45
  br label %16

12:                                               ; preds = %5
  br label %16

13:                                               ; preds = %5
  br label %16

14:                                               ; preds = %5
  br label %16

15:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 526, ptr noundef nonnull %1, ptr noundef nonnull @.str.49) #15
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %9, %5
  %17 = phi ptr [ null, %15 ], [ @.str.48, %14 ], [ @.str.47, %13 ], [ @.str.46, %12 ], [ %11, %9 ], [ null, %5 ]
  %18 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2) #15
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %21 unwind label %31

21:                                               ; preds = %16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %22 = load ptr, ptr %18, align 8, !tbaa !72
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %2) #15
  %24 = call noundef ptr @_ZNK12ParamElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(185) %1) #15
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %24) #15
  %26 = icmp eq ptr %17, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %18, align 8, !tbaa !72
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.50) #15
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %17) #15
  br label %33

31:                                               ; preds = %16
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %51

33:                                               ; preds = %27, %21
  %34 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.41) #15
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %37, ptr noundef nonnull %1, ptr noundef nonnull @.str.51) #15
  br label %38

38:                                               ; preds = %35, %33
  %39 = icmp eq ptr %2, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2) #15
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi ptr [ %41, %40 ], [ @.str.52, %38 ]
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef nonnull %43, ptr noundef nonnull @.str.10) #15
  %44 = load ptr, ptr %18, align 8, !tbaa !72
  %45 = select i1 %3, ptr @.str.14, ptr @.str.15
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull %45) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %47 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %48 unwind label %49

48:                                               ; preds = %42
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret void

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %51

51:                                               ; preds = %49, %31
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %32, %31 ]
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator12doSubstParamEP12ParamElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef i32 @_ZNK12ParamElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(185) %1) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull %1, ptr noundef nonnull @.str.55) #15
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2) #15
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %17 unwind label %29

17:                                               ; preds = %13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %18 = load ptr, ptr %14, align 8, !tbaa !72
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %2) #15
  %20 = call noundef ptr @_ZNK12ParamElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(185) %1) #15
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %20) #15
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.56) #15
  %23 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.41) #15
  %24 = call noundef zeroext i1 @_ZNK12ParamElement12getIsDefaultEv(ptr noundef nonnull align 8 dereferenceable(185) %1) #15
  br i1 %23, label %34, label %25

25:                                               ; preds = %17
  br i1 %24, label %26, label %31

26:                                               ; preds = %25
  %27 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %28, ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #15
  br label %31

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %57

31:                                               ; preds = %26, %25
  %32 = load ptr, ptr %14, align 8, !tbaa !72
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @.str.58) #15
  br label %48

34:                                               ; preds = %17
  br i1 %24, label %36, label %35

35:                                               ; preds = %34
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, ptr noundef %2) #15
  br label %48

36:                                               ; preds = %34
  %37 = load ptr, ptr %14, align 8, !tbaa !72
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.59) #15
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, ptr noundef %2) #15
  %39 = call noundef ptr @_ZN13NED1Generator15getPromptTextOfEP12ParamElement(ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %14, align 8, !tbaa !72
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull @.str.60) #15
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull %39) #15
  br label %45

45:                                               ; preds = %41, %36
  %46 = load ptr, ptr %14, align 8, !tbaa !72
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull @.str.61) #15
  br label %48

48:                                               ; preds = %35, %45, %31
  %49 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef nonnull %49, ptr noundef nonnull @.str.10) #15
  %50 = load ptr, ptr %14, align 8, !tbaa !72
  %51 = select i1 %3, ptr @.str.14, ptr @.str.15
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull %51) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %54 unwind label %55

54:                                               ; preds = %48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret void

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %57

57:                                               ; preds = %55, %29
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %30, %29 ]
  resume { ptr, i32 } %58
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator14doChannelParamEP12ParamElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
          to label %9 unwind label %30

9:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  %10 = call noundef ptr @_ZNK12ParamElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(185) %1) #15
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(6) @.str.37) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(4) @.str.38) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(9) @.str.39) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16, %13, %9
  %20 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(4) @.str.38) #18
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @.str.40, ptr %10
  %23 = load ptr, ptr %6, align 8, !tbaa !72
  %24 = icmp eq ptr %2, null
  %25 = select i1 %24, ptr @.str.10, ptr %2
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %25) #15
  %27 = load ptr, ptr %6, align 8, !tbaa !72
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %22) #15
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.10) #15
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, ptr noundef %2) #15
  br i1 %24, label %42, label %32

30:                                               ; preds = %3
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %43

32:                                               ; preds = %19
  %33 = load ptr, ptr %6, align 8, !tbaa !72
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.14) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %35 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %36 unwind label %37

36:                                               ; preds = %32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %42

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %43

39:                                               ; preds = %16
  %40 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %41, ptr noundef nonnull %1, ptr noundef nonnull @.str.42) #15
  br label %42

42:                                               ; preds = %19, %36, %39
  ret void

43:                                               ; preds = %37, %30
  %44 = phi { ptr, i32 } [ %38, %37 ], [ %31, %30 ]
  resume { ptr, i32 } %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12ParamElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(185) %0) local_unnamed_addr #8 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator7doParamEP12ParamElementPKcbS3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 512, ptr noundef %1, ptr noundef nonnull @.str.43) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12ParamElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(185) %0) local_unnamed_addr #8 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !111
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12ParamElement13getIsVolatileEv(ptr noundef nonnull align 8 dereferenceable(185) %0) local_unnamed_addr #8 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 4, !tbaa !120, !range !121, !noundef !122
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN13NED1Generator15getPromptTextOfEP12ParamElement(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 !prof !71 {
  %3 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 17, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %3, i32 noundef 18, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef 34) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call noundef ptr @_ZNK14LiteralElement7getTextEv(ptr noundef nonnull align 8 dereferenceable(216) %12) #15
  br label %16

16:                                               ; preds = %5, %8, %14, %2
  %17 = phi ptr [ null, %2 ], [ null, %5 ], [ %15, %14 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: optsize
declare noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement7getTextEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #8 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12ParamElement12getIsDefaultEv(ptr noundef nonnull align 8 dereferenceable(185) %0) local_unnamed_addr #8 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !124, !range !121, !noundef !122
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator9doPatternEP14PatternElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.35) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15PropertyElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #8 comdat align 2 !prof !125 {
  %2 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator13doPropertyKeyEP18PropertyKeyElementPKcbS3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 619, ptr noundef %1, ptr noundef nonnull @.str.18) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator7doGatesEP12GatesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(112) %9) #15
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @_ZN13NED1Generator20doSubmoduleGatesizesEP12GatesElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %21

16:                                               ; preds = %5
  %17 = and i32 %13, -3
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @_ZN13NED1Generator13doModuleGatesEP12GatesElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %21

20:                                               ; preds = %16
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 631, ptr noundef nonnull %1, ptr noundef nonnull @.str.66) #15
  br label %21

21:                                               ; preds = %19, %20, %15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator20doSubmoduleGatesizesEP12GatesElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
          to label %9 unwind label %21

9:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  %10 = load ptr, ptr %6, align 8, !tbaa !72
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %2) #15
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.68) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef %1) #15
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %14 unwind label %23

14:                                               ; preds = %9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  %15 = load ptr, ptr %1, align 8, !tbaa !80
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  %18 = call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %39, %14
  ret void

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %45

23:                                               ; preds = %9
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %45

25:                                               ; preds = %14, %39
  %26 = phi ptr [ %43, %39 ], [ %18, %14 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(112) %26) #15
  switch i32 %30, label %38 [
    i32 3, label %39
    i32 20, label %31
  ]

31:                                               ; preds = %25
  %32 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  %33 = load ptr, ptr %26, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 31
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(112) %26, i32 noundef 20) #15
  %37 = icmp eq ptr %36, null
  call void @_ZN13NED1Generator10doGatesizeEP11GateElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %26, ptr noundef nonnull %32, i1 noundef zeroext %37, ptr poison) #15
  br label %39

38:                                               ; preds = %25
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 665, ptr noundef nonnull %1, ptr noundef nonnull @.str.34) #15
  br label %39

39:                                               ; preds = %25, %31, %38
  %40 = load ptr, ptr %26, align 8, !tbaa !80
  %41 = getelementptr inbounds ptr, ptr %40, i64 25
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(112) %26) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %20, label %25, !llvm.loop !126

45:                                               ; preds = %23, %21
  %46 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  resume { ptr, i32 } %46
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator13doModuleGatesEP12GatesElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
          to label %9 unwind label %21

9:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  %10 = load ptr, ptr %1, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 20) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %6, align 8, !tbaa !72
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %2) #15
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.67) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %20 unwind label %23

20:                                               ; preds = %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %51

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %51

25:                                               ; preds = %20, %9
  %26 = load ptr, ptr %1, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 23
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %45, %25
  ret void

32:                                               ; preds = %25, %45
  %33 = phi ptr [ %49, %45 ], [ %29, %25 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(112) %33) #15
  switch i32 %37, label %44 [
    i32 3, label %45
    i32 20, label %38
  ]

38:                                               ; preds = %32
  %39 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  %40 = load ptr, ptr %33, align 8, !tbaa !80
  %41 = getelementptr inbounds ptr, ptr %40, i64 31
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(112) %33, i32 noundef 20) #15
  call void @_ZN13NED1Generator12doModuleGateEP11GateElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %33, ptr noundef nonnull %39, i1 zeroext poison, ptr poison) #15
  br label %45

44:                                               ; preds = %32
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 648, ptr noundef nonnull %1, ptr noundef nonnull @.str.34) #15
  br label %45

45:                                               ; preds = %32, %38, %44
  %46 = load ptr, ptr %33, align 8, !tbaa !80
  %47 = getelementptr inbounds ptr, ptr %46, i64 25
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(112) %33) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %31, label %32, !llvm.loop !127

51:                                               ; preds = %23, %21
  %52 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator12doModuleGateEP11GateElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %11 unwind label %15

11:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %12 = load ptr, ptr %8, align 8, !tbaa !72
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %2) #15
  %14 = call noundef i32 @_ZNK11GateElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(184) %1) #15
  switch i32 %14, label %29 [
    i32 1, label %17
    i32 2, label %20
    i32 3, label %23
    i32 0, label %26
  ]

15:                                               ; preds = %5
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %51

17:                                               ; preds = %11
  %18 = load ptr, ptr %8, align 8, !tbaa !72
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.69) #15
  br label %30

20:                                               ; preds = %11
  %21 = load ptr, ptr %8, align 8, !tbaa !72
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.70) #15
  br label %30

23:                                               ; preds = %11
  %24 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %25, ptr noundef nonnull %1, ptr noundef nonnull @.str.71) #15
  br label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %28, ptr noundef nonnull %1, ptr noundef nonnull @.str.72) #15
  br label %30

29:                                               ; preds = %11
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 686, ptr noundef nonnull %1, ptr noundef nonnull @.str.49) #15
  br label %30

30:                                               ; preds = %29, %26, %23, %20, %17
  %31 = load ptr, ptr %8, align 8, !tbaa !72
  %32 = call noundef ptr @_ZNK11GateElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(184) %1) #15
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %32) #15
  %34 = call noundef zeroext i1 @_ZNK11GateElement11getIsVectorEv(ptr noundef nonnull align 8 dereferenceable(184) %1) #15
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %8, align 8, !tbaa !72
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull @.str.73) #15
  br label %38

38:                                               ; preds = %35, %30
  %39 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #15
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %42, ptr noundef nonnull %1, ptr noundef nonnull @.str.75) #15
  br label %43

43:                                               ; preds = %40, %38
  %44 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef nonnull %44, ptr noundef nonnull @.str.10) #15
  %45 = load ptr, ptr %8, align 8, !tbaa !72
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull @.str.14) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %47 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %48 unwind label %49

48:                                               ; preds = %43
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret void

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %51

51:                                               ; preds = %49, %15
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %16, %15 ]
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator10doGatesizeEP11GateElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %11 unwind label %19

11:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %12 = load ptr, ptr %8, align 8, !tbaa !72
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %2) #15
  %14 = call noundef i32 @_ZNK11GateElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(184) %1) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %18, ptr noundef nonnull %1, ptr noundef nonnull @.str.76) #15
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %38

21:                                               ; preds = %16, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !72
  %23 = call noundef ptr @_ZNK11GateElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(184) %1) #15
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %23) #15
  %25 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #15
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %28, ptr noundef nonnull %1, ptr noundef nonnull @.str.77) #15
  br label %29

29:                                               ; preds = %26, %21
  call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, ptr noundef %2) #15
  %30 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef nonnull %30, ptr noundef nonnull @.str.10) #15
  %31 = load ptr, ptr %8, align 8, !tbaa !72
  %32 = select i1 %3, ptr @.str.14, ptr @.str.15
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %32) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %35 unwind label %36

35:                                               ; preds = %29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret void

36:                                               ; preds = %29
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %38

38:                                               ; preds = %36, %19
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %20, %19 ]
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator6doGateEP11GateElementPKcbS3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 673, ptr noundef %1, ptr noundef nonnull @.str.43) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11GateElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #8 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !129
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11GateElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #8 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11GateElement11getIsVectorEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #8 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 4, !tbaa !133, !range !121, !noundef !122
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator7doTypesEP12TypesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.78) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator12doSubmodulesEP17SubmodulesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %11 unwind label %18

11:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %12 = load ptr, ptr %8, align 8, !tbaa !72
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %2) #15
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.79) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef %1) #15
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %16 unwind label %20

16:                                               ; preds = %11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %17 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %17, ptr noundef null) #15
  ret void

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %22

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator11doSubmoduleEP16SubmoduleElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %19 unwind label %32

19:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %20 = load ptr, ptr %16, align 8, !tbaa !72
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %2) #15
  %22 = call noundef ptr @_ZNK16SubmoduleElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(272) %1) #15
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %22) #15
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.50) #15
  %25 = call noundef ptr @_ZNK16SubmoduleElement11getLikeTypeEv(ptr noundef nonnull align 8 dereferenceable(272) %1) #15
  %26 = call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %25) #15
  br i1 %26, label %36, label %27

27:                                               ; preds = %19
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.80, ptr noundef %2) #15
  call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, ptr noundef %2) #15
  %28 = load ptr, ptr %16, align 8, !tbaa !72
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.81) #15
  %30 = call noundef ptr @_ZNK16SubmoduleElement11getLikeTypeEv(ptr noundef nonnull align 8 dereferenceable(272) %1) #15
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %30) #15
  br label %40

32:                                               ; preds = %5
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = extractvalue { ptr, i32 } %33, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %140

36:                                               ; preds = %19
  %37 = load ptr, ptr %16, align 8, !tbaa !72
  %38 = call noundef ptr @_ZNK16SubmoduleElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(272) %1) #15
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %38) #15
  call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, ptr noundef %2) #15
  br label %40

40:                                               ; preds = %36, %27
  %41 = load ptr, ptr %16, align 8, !tbaa !72
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull @.str.14) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %44 unwind label %75

44:                                               ; preds = %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %45 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %45, ptr noundef null) #15
  %46 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull %46, ptr noundef null) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #16
  call void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %47 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  br i1 %47, label %136, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  %49 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %49) #15
          to label %50 unwind label %79

50:                                               ; preds = %48
  %51 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  invoke void @_ZN17DisplayStringUtil27toOldSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %51) #15
          to label %52 unwind label %81

52:                                               ; preds = %50
  %53 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  %54 = load ptr, ptr %16, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  %55 = load ptr, ptr %8, align 8, !tbaa !104
  %56 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  invoke void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull align 8 poison, ptr noundef %55, ptr noundef nonnull %56) #15
          to label %57 unwind label %85

57:                                               ; preds = %52
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
          to label %59 unwind label %87

59:                                               ; preds = %57
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  %60 = load ptr, ptr %16, align 8, !tbaa !72
  %61 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  %62 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %61) #15
          to label %63 unwind label %91

63:                                               ; preds = %59
  %64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull @.str.24) #15
          to label %65 unwind label %91

65:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #16
  %66 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %66) #15
          to label %67 unwind label %93

67:                                               ; preds = %65
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(32) %13) #15
          to label %69 unwind label %95

69:                                               ; preds = %67
  %70 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull @.str.14) #15
          to label %71 unwind label %95

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #16
  invoke void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull align 8 poison, ptr noundef %55) #15
          to label %72 unwind label %97

72:                                               ; preds = %71
  %73 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(32) %14) #15
          to label %74 unwind label %99

74:                                               ; preds = %72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  br label %136

75:                                               ; preds = %40
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = extractvalue { ptr, i32 } %76, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %140

79:                                               ; preds = %48
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %83

81:                                               ; preds = %50
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  br label %107

85:                                               ; preds = %52
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %89

87:                                               ; preds = %57
  %88 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %107

91:                                               ; preds = %63, %59
  %92 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %107

93:                                               ; preds = %65
  %94 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %105

95:                                               ; preds = %69, %67
  %96 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %103

97:                                               ; preds = %71
  %98 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %101

99:                                               ; preds = %72
  %100 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  br label %103

103:                                              ; preds = %101, %95
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %96, %95 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  br label %105

105:                                              ; preds = %103, %93
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  br label %107

107:                                              ; preds = %105, %91, %89, %83
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %92, %91 ], [ %90, %89 ], [ %84, %83 ]
  %109 = extractvalue { ptr, i32 } %108, 0
  %110 = extractvalue { ptr, i32 } %108, 1
  %111 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %107
  %114 = call ptr @__cxa_begin_catch(ptr %109) #16
  %115 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #16
  %117 = load ptr, ptr %114, align 8, !tbaa !80
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8
  %120 = call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %114) #17
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.25, ptr noundef %120) #15
          to label %121 unwind label %124

121:                                              ; preds = %113
  %122 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %116, ptr noundef nonnull %1, ptr noundef %122) #15
          to label %123 unwind label %126

123:                                              ; preds = %121
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #16
  invoke void @__cxa_end_catch()
          to label %136 unwind label %130

124:                                              ; preds = %113
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %128

126:                                              ; preds = %121
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #16
  invoke void @__cxa_end_catch()
          to label %132 unwind label %145

130:                                              ; preds = %123
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %129, %128 ]
  %134 = extractvalue { ptr, i32 } %133, 0
  %135 = extractvalue { ptr, i32 } %133, 1
  br label %137

136:                                              ; preds = %123, %74, %44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  ret void

137:                                              ; preds = %132, %107
  %138 = phi i32 [ %135, %132 ], [ %110, %107 ]
  %139 = phi ptr [ %134, %132 ], [ %109, %107 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %140

140:                                              ; preds = %137, %75, %32
  %141 = phi i32 [ %138, %137 ], [ %78, %75 ], [ %35, %32 ]
  %142 = phi ptr [ %139, %137 ], [ %77, %75 ], [ %34, %32 ]
  %143 = insertvalue { ptr, i32 } poison, ptr %142, 0
  %144 = insertvalue { ptr, i32 } %143, i32 %141, 1
  resume { ptr, i32 } %144

145:                                              ; preds = %128
  %146 = landingpad { ptr, i32 }
          catch ptr null
  %147 = extractvalue { ptr, i32 } %146, 0
  call void @__clang_call_terminate(ptr %147) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16SubmoduleElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #8 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16SubmoduleElement11getLikeTypeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #8 comdat align 2 !prof !135 {
  %2 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16SubmoduleElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #8 comdat align 2 !prof !136 {
  %2 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN17DisplayStringUtil27toOldSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.146) #20
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #15
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #8 comdat align 2 !prof !137 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #8 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator13doConnectionsEP18ConnectionsElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %12 unwind label %20

12:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %13 = call noundef zeroext i1 @_ZNK18ConnectionsElement19getAllowUnconnectedEv(ptr noundef nonnull align 8 dereferenceable(113) %1) #15
  %14 = load ptr, ptr %9, align 8, !tbaa !72
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %2) #15
  br i1 %13, label %16, label %24

16:                                               ; preds = %12
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.82) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %19 unwind label %22

19:                                               ; preds = %16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %30

20:                                               ; preds = %5
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %32

22:                                               ; preds = %16
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %32

24:                                               ; preds = %12
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.83) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(32) %8) #15
          to label %27 unwind label %28

27:                                               ; preds = %24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %30

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %32

30:                                               ; preds = %27, %19
  %31 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %31, ptr noundef null) #15
  ret void

32:                                               ; preds = %28, %22, %20
  %33 = phi { ptr, i32 } [ %23, %22 ], [ %29, %28 ], [ %21, %20 ]
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK18ConnectionsElement19getAllowUnconnectedEv(ptr noundef nonnull align 8 dereferenceable(113) %0) local_unnamed_addr #8 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.ConnectionsElement, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !140, !range !121, !noundef !122
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator12doConnectionEP17ConnectionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = tail call noundef i32 @_ZNK17ConnectionElement17getArrowDirectionEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  switch i32 %14, label %19 [
    i32 1, label %20
    i32 0, label %15
    i32 2, label %16
  ]

15:                                               ; preds = %5
  br label %20

16:                                               ; preds = %5
  %17 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %18, ptr noundef nonnull %1, ptr noundef nonnull @.str.86) #15
  br label %20

19:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 803, ptr noundef nonnull %1, ptr noundef nonnull @.str.88) #15
  br label %20

20:                                               ; preds = %5, %19, %16, %15
  %21 = phi i1 [ undef, %19 ], [ true, %16 ], [ false, %15 ], [ true, %5 ]
  %22 = phi ptr [ undef, %19 ], [ @.str.87, %16 ], [ @.str.85, %15 ], [ @.str.84, %5 ]
  %23 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2) #15
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %26 unwind label %34

26:                                               ; preds = %20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %27 = load ptr, ptr %23, align 8, !tbaa !72
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %2) #15
  br i1 %21, label %29, label %38

29:                                               ; preds = %26
  %30 = call noundef ptr @_ZNK17ConnectionElement12getSrcModuleEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %31 = call noundef ptr @_ZNK17ConnectionElement10getSrcGateEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %32 = call noundef zeroext i1 @_ZNK17ConnectionElement18getSrcGatePlusplusEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %33 = call noundef i32 @_ZNK17ConnectionElement14getSrcGateSubgEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %30, ptr noundef nonnull @.str.89, ptr noundef %31, ptr noundef nonnull @.str.90, i1 noundef zeroext %32, i32 noundef %33, ptr noundef %2) #15
  br label %43

34:                                               ; preds = %20
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = extractvalue { ptr, i32 } %35, 0
  %37 = extractvalue { ptr, i32 } %35, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %167

38:                                               ; preds = %26
  %39 = call noundef ptr @_ZNK17ConnectionElement13getDestModuleEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %40 = call noundef ptr @_ZNK17ConnectionElement11getDestGateEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %41 = call noundef zeroext i1 @_ZNK17ConnectionElement19getDestGatePlusplusEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %42 = call noundef i32 @_ZNK17ConnectionElement15getDestGateSubgEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %39, ptr noundef nonnull @.str.91, ptr noundef %40, ptr noundef nonnull @.str.92, i1 noundef zeroext %41, i32 noundef %42, ptr noundef %2) #15
  br label %43

43:                                               ; preds = %38, %29
  %44 = load ptr, ptr %23, align 8, !tbaa !72
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %22) #15
  %46 = load ptr, ptr %1, align 8, !tbaa !80
  %47 = getelementptr inbounds ptr, ptr %46, i64 30
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 26) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 26, ptr noundef %2, ptr noundef %22) #15
  br label %52

52:                                               ; preds = %51, %43
  %53 = load ptr, ptr %23, align 8, !tbaa !72
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull @.str.10) #15
  br i1 %21, label %55, label %60

55:                                               ; preds = %52
  %56 = call noundef ptr @_ZNK17ConnectionElement13getDestModuleEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %57 = call noundef ptr @_ZNK17ConnectionElement11getDestGateEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %58 = call noundef zeroext i1 @_ZNK17ConnectionElement19getDestGatePlusplusEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %59 = call noundef i32 @_ZNK17ConnectionElement15getDestGateSubgEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %56, ptr noundef nonnull @.str.91, ptr noundef %57, ptr noundef nonnull @.str.92, i1 noundef zeroext %58, i32 noundef %59, ptr noundef %2) #15
  br label %65

60:                                               ; preds = %52
  %61 = call noundef ptr @_ZNK17ConnectionElement12getSrcModuleEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %62 = call noundef ptr @_ZNK17ConnectionElement10getSrcGateEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %63 = call noundef zeroext i1 @_ZNK17ConnectionElement18getSrcGatePlusplusEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  %64 = call noundef i32 @_ZNK17ConnectionElement14getSrcGateSubgEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #15
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %61, ptr noundef nonnull @.str.89, ptr noundef %62, ptr noundef nonnull @.str.90, i1 noundef zeroext %63, i32 noundef %64, ptr noundef %2) #15
  br label %65

65:                                               ; preds = %60, %55
  %66 = load ptr, ptr %1, align 8, !tbaa !80
  %67 = getelementptr inbounds ptr, ptr %66, i64 30
  %68 = load ptr, ptr %67, align 8
  %69 = call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 28) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %73, ptr noundef nonnull %1, ptr noundef nonnull @.str.93) #15
  br label %74

74:                                               ; preds = %71, %65
  %75 = load ptr, ptr %1, align 8, !tbaa !80
  %76 = getelementptr inbounds ptr, ptr %75, i64 33
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef i32 %77(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 29) #15
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !79
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %82, ptr noundef nonnull %1, ptr noundef nonnull @.str.94) #15
  br label %83

83:                                               ; preds = %80, %74
  %84 = load ptr, ptr %1, align 8, !tbaa !80
  %85 = getelementptr inbounds ptr, ptr %84, i64 30
  %86 = load ptr, ptr %85, align 8
  %87 = call noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 29) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  call void @_ZN13NED1Generator11doConditionEP16ConditionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %87, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  br label %90

90:                                               ; preds = %89, %83
  %91 = load ptr, ptr %1, align 8, !tbaa !80
  %92 = getelementptr inbounds ptr, ptr %91, i64 30
  %93 = load ptr, ptr %92, align 8
  %94 = call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 26) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %158, label %96

96:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %94, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %97 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  br i1 %97, label %154, label %98

98:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  %99 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %99) #15
          to label %100 unwind label %111

100:                                              ; preds = %98
  %101 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  invoke void @_ZN17DisplayStringUtil28toOldConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %101) #15
          to label %102 unwind label %113

102:                                              ; preds = %100
  %103 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  %104 = load ptr, ptr %23, align 8, !tbaa !72
  %105 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef nonnull @.str.95) #15
          to label %106 unwind label %117

106:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  %107 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %107) #15
          to label %108 unwind label %119

108:                                              ; preds = %106
  %109 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(32) %11) #15
          to label %110 unwind label %121

110:                                              ; preds = %108
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  br label %154

111:                                              ; preds = %98
  %112 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %115

113:                                              ; preds = %100
  %114 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  br label %125

117:                                              ; preds = %102
  %118 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %125

119:                                              ; preds = %106
  %120 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %123

121:                                              ; preds = %108
  %122 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  br label %125

125:                                              ; preds = %123, %117, %115
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %118, %117 ], [ %116, %115 ]
  %127 = extractvalue { ptr, i32 } %126, 0
  %128 = extractvalue { ptr, i32 } %126, 1
  %129 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = call ptr @__cxa_begin_catch(ptr %127) #16
  %133 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  %135 = load ptr, ptr %132, align 8, !tbaa !80
  %136 = getelementptr inbounds ptr, ptr %135, i64 2
  %137 = load ptr, ptr %136, align 8
  %138 = call noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(8) %132) #17
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.25, ptr noundef %138) #15
          to label %139 unwind label %142

139:                                              ; preds = %131
  %140 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %134, ptr noundef nonnull %1, ptr noundef %140) #15
          to label %141 unwind label %144

141:                                              ; preds = %139
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  invoke void @__cxa_end_catch()
          to label %154 unwind label %148

142:                                              ; preds = %131
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %146

144:                                              ; preds = %139
  %145 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi { ptr, i32 } [ %145, %144 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  invoke void @__cxa_end_catch()
          to label %150 unwind label %172

148:                                              ; preds = %141
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %150

150:                                              ; preds = %146, %148
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %147, %146 ]
  %152 = extractvalue { ptr, i32 } %151, 0
  %153 = extractvalue { ptr, i32 } %151, 1
  br label %155

154:                                              ; preds = %141, %110, %96
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %158

155:                                              ; preds = %150, %125
  %156 = phi i32 [ %153, %150 ], [ %128, %125 ]
  %157 = phi ptr [ %152, %150 ], [ %127, %125 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %167

158:                                              ; preds = %154, %90
  %159 = load ptr, ptr %23, align 8, !tbaa !72
  %160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %159, ptr noundef nonnull @.str.14) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull align 8 poison, ptr noundef nonnull %1) #15
  %161 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef nonnull align 8 dereferenceable(32) %13) #15
          to label %162 unwind label %163

162:                                              ; preds = %158
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  ret void

163:                                              ; preds = %158
  %164 = landingpad { ptr, i32 }
          cleanup
  %165 = extractvalue { ptr, i32 } %164, 0
  %166 = extractvalue { ptr, i32 } %164, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  br label %167

167:                                              ; preds = %155, %163, %34
  %168 = phi i32 [ %37, %34 ], [ %166, %163 ], [ %156, %155 ]
  %169 = phi ptr [ %36, %34 ], [ %165, %163 ], [ %157, %155 ]
  %170 = insertvalue { ptr, i32 } poison, ptr %169, 0
  %171 = insertvalue { ptr, i32 } %170, i32 %168, 1
  resume { ptr, i32 } %171

172:                                              ; preds = %146
  %173 = landingpad { ptr, i32 }
          catch ptr null
  %174 = extractvalue { ptr, i32 } %173, 0
  call void @__clang_call_terminate(ptr %174) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17ConnectionElement17getArrowDirectionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !143
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #4 align 2 !prof !71 {
  %10 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %2) #15
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %2) #15
  tail call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %3, ptr noundef %8) #15
  %15 = load ptr, ptr %12, align 8, !tbaa !72
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.107) #15
  br label %17

17:                                               ; preds = %11, %9
  %18 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %4) #15
  br i1 %6, label %21, label %24

21:                                               ; preds = %17
  %22 = load ptr, ptr %18, align 8, !tbaa !72
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.108) #15
  br label %25

24:                                               ; preds = %17
  tail call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %5, ptr noundef %8) #15
  br label %25

25:                                               ; preds = %24, %21
  %26 = icmp eq i32 %7, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %29, ptr noundef %1, ptr noundef nonnull @.str.109) #15
  br label %30

30:                                               ; preds = %27, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ConnectionElement12getSrcModuleEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ConnectionElement10getSrcGateEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17ConnectionElement18getSrcGatePlusplusEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !145 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !146, !range !121, !noundef !122
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17ConnectionElement14getSrcGateSubgEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !147
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ConnectionElement13getDestModuleEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ConnectionElement11getDestGateEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17ConnectionElement19getDestGatePlusplusEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 8, !tbaa !149, !range !121, !noundef !122
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17ConnectionElement15getDestGateSubgEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 8, !tbaa !150
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator11doConditionEP16ConditionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.105) #15
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef %2) #15
  br i1 %3, label %14, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8, !tbaa !72
  %11 = icmp eq ptr %4, null
  %12 = select i1 %11, ptr @.str, ptr %4
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN17DisplayStringUtil28toOldConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator13doChannelSpecEP18ChannelSpecElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i1 zeroext %3, ptr noundef %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 14) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !80
  %13 = getelementptr inbounds ptr, ptr %12, i64 30
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef 15) #15
  %16 = icmp ne ptr %15, null
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i1 [ false, %5 ], [ %16, %11 ]
  %19 = tail call noundef ptr @_ZNK18ChannelSpecElement11getLikeTypeEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #15
  %20 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %19) #15
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %23, ptr noundef nonnull %1, ptr noundef nonnull @.str.96) #15
  br label %49

24:                                               ; preds = %17
  %25 = tail call noundef ptr @_ZNK18ChannelSpecElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #15
  %26 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %25) #15
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.10) #15
  %31 = tail call noundef ptr @_ZNK18ChannelSpecElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #15
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31) #15
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %4) #15
  br i1 %18, label %34, label %49

34:                                               ; preds = %27
  %35 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %36, ptr noundef nonnull %1, ptr noundef nonnull @.str.97) #15
  br label %49

37:                                               ; preds = %24
  %38 = load ptr, ptr %1, align 8, !tbaa !80
  %39 = getelementptr inbounds ptr, ptr %38, i64 30
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 14) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = tail call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  tail call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %44, ptr noundef null) #15
  br i1 %18, label %45, label %49

45:                                               ; preds = %43
  %46 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !72
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %4) #15
  br label %49

49:                                               ; preds = %34, %27, %43, %45, %37, %21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18ChannelSpecElement11getLikeTypeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #8 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18ChannelSpecElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #8 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator17doConnectionGroupEP22ConnectionGroupElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2) #15
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %12 unwind label %27

12:                                               ; preds = %5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  %13 = load ptr, ptr %9, align 8, !tbaa !72
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %2) #15
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.98) #15
  %16 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 28, ptr noundef nonnull %16, ptr noundef nonnull @.str.60) #15
  %17 = load ptr, ptr %9, align 8, !tbaa !72
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.99) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef %1) #15
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %20 unwind label %29

20:                                               ; preds = %12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %21 = call noundef ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #15
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 25, ptr noundef nonnull %21, ptr noundef null) #15
  %22 = load ptr, ptr %9, align 8, !tbaa !72
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %2) #15
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.100) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef %1) #15
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(32) %8) #15
          to label %26 unwind label %31

26:                                               ; preds = %20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  ret void

27:                                               ; preds = %5
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %33

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %33

31:                                               ; preds = %20
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %33

33:                                               ; preds = %31, %29, %27
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator6doLoopEP11LoopElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call noundef ptr @_ZNK11LoopElement12getParamNameEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #15
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8) #15
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.101) #15
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.102, ptr noundef %2) #15
  %11 = load ptr, ptr %6, align 8, !tbaa !72
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.103) #15
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.104, ptr noundef %2) #15
  br i1 %3, label %18, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !72
  %15 = icmp eq ptr %4, null
  %16 = select i1 %15, ptr @.str, ptr %4
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %16) #15
  br label %18

18:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11LoopElement12getParamNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #8 comdat align 2 !prof !152 {
  %2 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator12doExpressionEP17ExpressionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  tail call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN13NED1Generator21getOperatorPrecedenceEPKci(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !71 {
  switch i32 %2, label %76 [
    i32 3, label %4
    i32 2, label %7
    i32 1, label %67
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.110) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %77, label %76

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.111) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %77, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.112) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %77, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.113) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.114) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.115) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %77, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.116) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %77, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.117) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %77, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.118) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %77, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.119) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.120) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %77, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.121) #18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.122) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.123) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.124) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.125) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.126) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.127) #18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.128) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.129) #18
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.130) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %77, label %76

67:                                               ; preds = %3
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.126) #18
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.131) #18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.132) #18
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %64, %4, %3, %73
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 1003, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef %1) #15
  br label %77

77:                                               ; preds = %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %76
  %78 = phi i32 [ -1, %76 ], [ 1, %4 ], [ 2, %7 ], [ 3, %10 ], [ 4, %13 ], [ 5, %16 ], [ 5, %19 ], [ 5, %22 ], [ 5, %25 ], [ 5, %28 ], [ 5, %31 ], [ 6, %34 ], [ 7, %37 ], [ 8, %40 ], [ 9, %43 ], [ 9, %46 ], [ 10, %49 ], [ 10, %52 ], [ 11, %55 ], [ 11, %58 ], [ 11, %61 ], [ 12, %64 ], [ 13, %67 ], [ 13, %70 ], [ 13, %73 ]
  ret i32 %78
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN13NED1Generator19isOperatorLeftAssocEPKc(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 align 2 !prof !71 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.130) #18
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator10doOperatorEP15OperatorElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !80
  %13 = getelementptr inbounds ptr, ptr %12, i64 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(112) %9) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5, %11
  %18 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = tail call noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %20) #15
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %9, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  br label %78

22:                                               ; preds = %11
  %23 = load ptr, ptr %15, align 8, !tbaa !80
  %24 = getelementptr inbounds ptr, ptr %23, i64 25
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(112) %15) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = tail call noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %30 = tail call noundef i32 @_ZN13NED1Generator21getOperatorPrecedenceEPKci(ptr nonnull align 8 poison, ptr noundef %29, i32 noundef 2) #15, !range !153
  %31 = icmp slt i32 %30, 3
  %32 = load ptr, ptr %1, align 8, !tbaa !80
  %33 = getelementptr inbounds ptr, ptr %32, i64 22
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr %35, align 8, !tbaa !80
  %39 = getelementptr inbounds ptr, ptr %38, i64 5
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(112) %35) #15
  %42 = icmp eq i32 %41, 31
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = tail call noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %35) #15
  %45 = tail call noundef i32 @_ZN13NED1Generator21getOperatorPrecedenceEPKci(ptr nonnull align 8 poison, ptr noundef %44, i32 noundef 2) #15, !range !153
  %46 = icmp slt i32 %45, %30
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull @.str.134) #15
  br label %51

51:                                               ; preds = %43, %28, %37, %47
  %52 = phi i1 [ true, %47 ], [ false, %37 ], [ false, %28 ], [ false, %43 ]
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %9, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  %53 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  br i1 %31, label %55, label %60

55:                                               ; preds = %51
  %56 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull @.str.10) #15
  %57 = tail call noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %58 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57) #15
  %59 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull @.str.10) #15
  br label %63

60:                                               ; preds = %51
  %61 = tail call noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %61) #15
  br label %63

63:                                               ; preds = %60, %55
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %15, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  br i1 %52, label %64, label %78

64:                                               ; preds = %63
  %65 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull @.str.61) #15
  br label %78

68:                                               ; preds = %22
  %69 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull @.str.134) #15
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %9, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  %72 = load ptr, ptr %69, align 8, !tbaa !72
  %73 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull @.str.135) #15
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %15, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  %74 = load ptr, ptr %69, align 8, !tbaa !72
  %75 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull @.str.3) #15
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %26, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  %76 = load ptr, ptr %69, align 8, !tbaa !72
  %77 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.61) #15
  br label %78

78:                                               ; preds = %63, %64, %68, %17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !154 {
  %2 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator10doFunctionEP15FunctionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = tail call noundef ptr @_ZNK15FunctionElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(6) @.str.138) #18
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = tail call noundef ptr @_ZNK15FunctionElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11) #15
  br i1 %8, label %39, label %13

13:                                               ; preds = %5
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.134) #15
  %15 = load ptr, ptr %1, align 8, !tbaa !80
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %33, %13
  %21 = load ptr, ptr %9, align 8, !tbaa !72
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.61) #15
  br label %39

23:                                               ; preds = %13, %33
  %24 = phi ptr [ %37, %33 ], [ %18, %13 ]
  %25 = load ptr, ptr %1, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 23
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  %29 = icmp eq ptr %24, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %9, align 8, !tbaa !72
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.60) #15
  br label %33

33:                                               ; preds = %30, %23
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %24, ptr noundef %2, i1 noundef zeroext false, ptr noundef null) #15
  %34 = load ptr, ptr %24, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %34, i64 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(112) %24) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %20, label %23, !llvm.loop !155

39:                                               ; preds = %5, %20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15FunctionElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator7doIdentEP12IdentElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 !prof !71 {
  %6 = tail call noundef ptr @_ZNK12IdentElement9getModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #15
  %7 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %6) #15
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = tail call noundef ptr @_ZNK12IdentElement9getModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #15
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11) #15
  tail call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.139, ptr noundef %2) #15
  %13 = load ptr, ptr %9, align 8, !tbaa !72
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.107) #15
  br label %15

15:                                               ; preds = %8, %5
  %16 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = tail call noundef ptr @_ZNK12IdentElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #15
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %18) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12IdentElement9getModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #8 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12IdentElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #8 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NED1Generator9doLiteralEP14LiteralElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = tail call noundef ptr @_ZNK14LiteralElement7getTextEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #15
  %8 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %7) #15
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = tail call noundef ptr @_ZNK14LiteralElement7getTextEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #15
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12) #15
  br label %28

14:                                               ; preds = %5
  %15 = tail call noundef i32 @_ZNK14LiteralElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #15
  %16 = icmp eq i32 %15, 2
  %17 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  br i1 %16, label %19, label %25

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %20 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %20) #15
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %22 unwind label %23

22:                                               ; preds = %19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %28

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %14
  %26 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #15
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %26) #15
  br label %28

28:                                               ; preds = %22, %25, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14LiteralElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #8 comdat align 2 !prof !158 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !159
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !161 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !104
  %6 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %7, align 8, !tbaa !162
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #15
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret void

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !71 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, ptr noundef %1) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #8 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !163 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  store i64 %6, ptr %4, align 8, !tbaa !164
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !165

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #15
  %10 = load i64, ptr %4, align 8, !tbaa !164
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #15
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #17
  store ptr null, ptr %5, align 8, !tbaa !166
  %15 = load i64, ptr %4, align 8, !tbaa !164
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #15
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat !prof !163 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !163 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !104
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 !prof !163 {
  store ptr %1, ptr %0, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  %2 = load ptr, ptr %0, align 8, !tbaa !166
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !168

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat !prof !163 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ned1generator.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!70}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !{ptr @_ZNK14ExtendsElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 2}
!36 = !{ptr @_ZNK17ExpressionElement9getTargetEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 180719}
!37 = !{ptr @_ZNK12ParamElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 160683}
!38 = !{ptr @_ZNK15PropertyElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 11}
!39 = !{ptr @_ZNK11GateElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 81738}
!40 = !{ptr @_ZNK16SubmoduleElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 42904}
!41 = !{ptr @_ZNK16SubmoduleElement11getLikeTypeEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 43150}
!42 = !{ptr @_ZNK16SubmoduleElement7getTypeEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 21206}
!43 = !{ptr @_ZNK14LiteralElement8getValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 322}
!44 = !{ptr @_ZNK17ConnectionElement12getSrcModuleEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 51199}
!45 = !{ptr @_ZNK17ConnectionElement10getSrcGateEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 51199}
!46 = !{ptr @_ZNK17ConnectionElement13getDestModuleEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 51199}
!47 = !{ptr @_ZNK17ConnectionElement11getDestGateEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 51199}
!48 = !{ptr @_ZNK18ChannelSpecElement11getLikeTypeEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 19524}
!49 = !{ptr @_ZNK18ChannelSpecElement7getTypeEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 19524}
!50 = !{ptr @_ZNK11LoopElement12getParamNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 900}
!51 = !{ptr @_ZNK15OperatorElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 74}
!52 = !{ptr @_ZNK15FunctionElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 8}
!53 = !{ptr @_ZNK12IdentElement9getModuleEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 94}
!54 = !{ptr @_ZNK12IdentElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 94}
!55 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!56 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!57 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!58 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!59 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!60 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!61 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!62 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!63 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!64 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!65 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!66 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!67 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!68 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!69 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!73, !77, i64 8}
!73 = !{!"_ZTS13NED1Generator", !74, i64 0, !77, i64 8, !77, i64 16}
!74 = !{!"int", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!"any pointer", !75, i64 0}
!78 = !{!73, !74, i64 0}
!79 = !{!73, !77, i64 16}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !76, i64 0}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = !{i32 0, i32 2}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = !{!"ned1generator.cc:_ZL10isInVectoriPi"}
!90 = !{!74, !74, i64 0}
!91 = distinct !{!91, !83}
!92 = !{!"ned1generator.cc:_ZL10_isNetworkP10NEDElement"}
!93 = !{!"function_entry_count", i64 2}
!94 = distinct !{!94, !83}
!95 = !{!"function_entry_count", i64 728460}
!96 = !{!"branch_weights", i32 393162, i32 335300}
!97 = !{!75, !75, i64 0}
!98 = !{!"function_entry_count", i64 180719}
!99 = distinct !{!99, !83}
!100 = distinct !{!100, !83}
!101 = !{!"ned1generator.cc:_ZL10getCommentP10NEDElementPKc"}
!102 = !{!"ned1generator.cc:_ZL13formatCommentB5cxx11PKcS0_S0_"}
!103 = distinct !{!103, !83}
!104 = !{!77, !77, i64 0}
!105 = distinct !{!105, !83}
!106 = distinct !{!106, !83}
!107 = distinct !{!107, !83}
!108 = distinct !{!108, !83}
!109 = !{!"function_entry_count", i64 160683}
!110 = !{!"function_entry_count", i64 147267}
!111 = !{!112, !74, i64 112}
!112 = !{!"_ZTS12ParamElement", !113, i64 0, !74, i64 112, !118, i64 116, !115, i64 120, !115, i64 152, !118, i64 184}
!113 = !{!"_ZTS10NEDElement", !114, i64 8, !115, i64 16, !117, i64 48, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104}
!114 = !{!"long", !75, i64 0}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !116, i64 0, !114, i64 8, !75, i64 16}
!116 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !77, i64 0}
!117 = !{!"_ZTS15NEDSourceRegion", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12}
!118 = !{!"bool", !75, i64 0}
!119 = !{!"function_entry_count", i64 67}
!120 = !{!112, !118, i64 116}
!121 = !{i8 0, i8 2}
!122 = !{}
!123 = !{!"function_entry_count", i64 54}
!124 = !{!112, !118, i64 184}
!125 = !{!"function_entry_count", i64 11}
!126 = distinct !{!126, !83}
!127 = distinct !{!127, !83}
!128 = !{!"function_entry_count", i64 142822}
!129 = !{!130, !74, i64 144}
!130 = !{!"_ZTS11GateElement", !113, i64 0, !115, i64 112, !74, i64 144, !118, i64 148, !115, i64 152}
!131 = !{!"function_entry_count", i64 81738}
!132 = !{!"function_entry_count", i64 153136}
!133 = !{!130, !118, i64 148}
!134 = !{!"function_entry_count", i64 42904}
!135 = !{!"function_entry_count", i64 43150}
!136 = !{!"function_entry_count", i64 21206}
!137 = !{!"function_entry_count", i64 1891507}
!138 = !{!"function_entry_count", i64 322}
!139 = !{!"function_entry_count", i64 5471}
!140 = !{!141, !118, i64 112}
!141 = !{!"_ZTS18ConnectionsElement", !113, i64 0, !118, i64 112}
!142 = !{!"function_entry_count", i64 51199}
!143 = !{!144, !74, i64 396}
!144 = !{!"_ZTS17ConnectionElement", !113, i64 0, !115, i64 112, !115, i64 144, !115, i64 176, !118, i64 208, !115, i64 216, !74, i64 248, !115, i64 256, !115, i64 288, !115, i64 320, !118, i64 352, !115, i64 360, !74, i64 392, !74, i64 396}
!145 = !{!"function_entry_count", i64 51202}
!146 = !{!144, !118, i64 208}
!147 = !{!144, !74, i64 248}
!148 = !{!"function_entry_count", i64 51203}
!149 = !{!144, !118, i64 352}
!150 = !{!144, !74, i64 392}
!151 = !{!"function_entry_count", i64 19524}
!152 = !{!"function_entry_count", i64 900}
!153 = !{i32 -1, i32 14}
!154 = !{!"function_entry_count", i64 74}
!155 = distinct !{!155, !83}
!156 = !{!"function_entry_count", i64 8}
!157 = !{!"function_entry_count", i64 94}
!158 = !{!"function_entry_count", i64 225}
!159 = !{!160, !74, i64 112}
!160 = !{!"_ZTS14LiteralElement", !113, i64 0, !74, i64 112, !115, i64 120, !115, i64 152, !115, i64 184}
!161 = !{!"function_entry_count", i64 2107073}
!162 = !{!115, !114, i64 8}
!163 = !{!"function_entry_count", i64 1889443}
!164 = !{!114, !114, i64 0}
!165 = !{!"branch_weights", i32 1257663, i32 631782}
!166 = !{!167, !77, i64 0}
!167 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !77, i64 0}
!168 = !{!"branch_weights", i32 1889444, i32 1}
