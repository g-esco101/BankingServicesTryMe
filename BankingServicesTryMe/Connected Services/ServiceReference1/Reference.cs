﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BankingServicesTryMe.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.myInterface")]
    public interface myInterface {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/GetFile", ReplyAction="http://tempuri.org/myInterface/GetFileResponse")]
        string GetFile(string fileName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/GetFile", ReplyAction="http://tempuri.org/myInterface/GetFileResponse")]
        System.Threading.Tasks.Task<string> GetFileAsync(string fileName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Storage", ReplyAction="http://tempuri.org/myInterface/StorageResponse")]
        string Storage(string fileName, byte[] fileContents);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Storage", ReplyAction="http://tempuri.org/myInterface/StorageResponse")]
        System.Threading.Tasks.Task<string> StorageAsync(string fileName, byte[] fileContents);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/CreateAccount", ReplyAction="http://tempuri.org/myInterface/CreateAccountResponse")]
        string CreateAccount(string accountNumber, string owner, string balance);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/CreateAccount", ReplyAction="http://tempuri.org/myInterface/CreateAccountResponse")]
        System.Threading.Tasks.Task<string> CreateAccountAsync(string accountNumber, string owner, string balance);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Transfer", ReplyAction="http://tempuri.org/myInterface/TransferResponse")]
        string Transfer(string source, string destination, string amount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Transfer", ReplyAction="http://tempuri.org/myInterface/TransferResponse")]
        System.Threading.Tasks.Task<string> TransferAsync(string source, string destination, string amount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Deposit", ReplyAction="http://tempuri.org/myInterface/DepositResponse")]
        string Deposit(string acctNickname, string amount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Deposit", ReplyAction="http://tempuri.org/myInterface/DepositResponse")]
        System.Threading.Tasks.Task<string> DepositAsync(string acctNickname, string amount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Withdrawal", ReplyAction="http://tempuri.org/myInterface/WithdrawalResponse")]
        string Withdrawal(string acctNickname, string amount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/Withdrawal", ReplyAction="http://tempuri.org/myInterface/WithdrawalResponse")]
        System.Threading.Tasks.Task<string> WithdrawalAsync(string acctNickname, string amount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/GetAccountInfo", ReplyAction="http://tempuri.org/myInterface/GetAccountInfoResponse")]
        string GetAccountInfo(string owner);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/GetAccountInfo", ReplyAction="http://tempuri.org/myInterface/GetAccountInfoResponse")]
        System.Threading.Tasks.Task<string> GetAccountInfoAsync(string owner);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/GetOwner", ReplyAction="http://tempuri.org/myInterface/GetOwnerResponse")]
        string GetOwner(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/GetOwner", ReplyAction="http://tempuri.org/myInterface/GetOwnerResponse")]
        System.Threading.Tasks.Task<string> GetOwnerAsync(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/AccountExists", ReplyAction="http://tempuri.org/myInterface/AccountExistsResponse")]
        bool AccountExists(string owner);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/AccountExists", ReplyAction="http://tempuri.org/myInterface/AccountExistsResponse")]
        System.Threading.Tasks.Task<bool> AccountExistsAsync(string owner);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/DeleteAccount", ReplyAction="http://tempuri.org/myInterface/DeleteAccountResponse")]
        bool DeleteAccount(string owner);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/DeleteAccount", ReplyAction="http://tempuri.org/myInterface/DeleteAccountResponse")]
        System.Threading.Tasks.Task<bool> DeleteAccountAsync(string owner);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/UpdatePassword", ReplyAction="http://tempuri.org/myInterface/UpdatePasswordResponse")]
        bool UpdatePassword(string owner, string currentPassword, string newPassword1, string newPassword2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/myInterface/UpdatePassword", ReplyAction="http://tempuri.org/myInterface/UpdatePasswordResponse")]
        System.Threading.Tasks.Task<bool> UpdatePasswordAsync(string owner, string currentPassword, string newPassword1, string newPassword2);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface myInterfaceChannel : BankingServicesTryMe.ServiceReference1.myInterface, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class myInterfaceClient : System.ServiceModel.ClientBase<BankingServicesTryMe.ServiceReference1.myInterface>, BankingServicesTryMe.ServiceReference1.myInterface {
        
        public myInterfaceClient() {
        }
        
        public myInterfaceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public myInterfaceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public myInterfaceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public myInterfaceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string GetFile(string fileName) {
            return base.Channel.GetFile(fileName);
        }
        
        public System.Threading.Tasks.Task<string> GetFileAsync(string fileName) {
            return base.Channel.GetFileAsync(fileName);
        }
        
        public string Storage(string fileName, byte[] fileContents) {
            return base.Channel.Storage(fileName, fileContents);
        }
        
        public System.Threading.Tasks.Task<string> StorageAsync(string fileName, byte[] fileContents) {
            return base.Channel.StorageAsync(fileName, fileContents);
        }
        
        public string CreateAccount(string accountNumber, string owner, string balance) {
            return base.Channel.CreateAccount(accountNumber, owner, balance);
        }
        
        public System.Threading.Tasks.Task<string> CreateAccountAsync(string accountNumber, string owner, string balance) {
            return base.Channel.CreateAccountAsync(accountNumber, owner, balance);
        }
        
        public string Transfer(string source, string destination, string amount) {
            return base.Channel.Transfer(source, destination, amount);
        }
        
        public System.Threading.Tasks.Task<string> TransferAsync(string source, string destination, string amount) {
            return base.Channel.TransferAsync(source, destination, amount);
        }
        
        public string Deposit(string acctNickname, string amount) {
            return base.Channel.Deposit(acctNickname, amount);
        }
        
        public System.Threading.Tasks.Task<string> DepositAsync(string acctNickname, string amount) {
            return base.Channel.DepositAsync(acctNickname, amount);
        }
        
        public string Withdrawal(string acctNickname, string amount) {
            return base.Channel.Withdrawal(acctNickname, amount);
        }
        
        public System.Threading.Tasks.Task<string> WithdrawalAsync(string acctNickname, string amount) {
            return base.Channel.WithdrawalAsync(acctNickname, amount);
        }
        
        public string GetAccountInfo(string owner) {
            return base.Channel.GetAccountInfo(owner);
        }
        
        public System.Threading.Tasks.Task<string> GetAccountInfoAsync(string owner) {
            return base.Channel.GetAccountInfoAsync(owner);
        }
        
        public string GetOwner(string nickname) {
            return base.Channel.GetOwner(nickname);
        }
        
        public System.Threading.Tasks.Task<string> GetOwnerAsync(string nickname) {
            return base.Channel.GetOwnerAsync(nickname);
        }
        
        public bool AccountExists(string owner) {
            return base.Channel.AccountExists(owner);
        }
        
        public System.Threading.Tasks.Task<bool> AccountExistsAsync(string owner) {
            return base.Channel.AccountExistsAsync(owner);
        }
        
        public bool DeleteAccount(string owner) {
            return base.Channel.DeleteAccount(owner);
        }
        
        public System.Threading.Tasks.Task<bool> DeleteAccountAsync(string owner) {
            return base.Channel.DeleteAccountAsync(owner);
        }
        
        public bool UpdatePassword(string owner, string currentPassword, string newPassword1, string newPassword2) {
            return base.Channel.UpdatePassword(owner, currentPassword, newPassword1, newPassword2);
        }
        
        public System.Threading.Tasks.Task<bool> UpdatePasswordAsync(string owner, string currentPassword, string newPassword1, string newPassword2) {
            return base.Channel.UpdatePasswordAsync(owner, currentPassword, newPassword1, newPassword2);
        }
    }
}
