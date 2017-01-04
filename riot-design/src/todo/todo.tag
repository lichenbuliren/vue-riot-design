<todo>
  <h3>{ opts.title }</h3>
  <ul>
    <li each={ items.filter(whatShow) }>
      <label class={ completed: done }>
        <input type="checkbox" checked={ done } onclick={ parent.toggle }> { title }
      </label>
    </li>
  </ul>
  <form onsubmit={ add }>
    <input type="text" ref="inputTodo" onkeyup={ edit }>
    <button disabled={ !text }>Add #{ items.filter(whatShow).length + 1 }</button>
    <button disabled={ items.filter(onlyDone).length==0 }>X{ items.filter(onlyDone).length } </button>
  </form>

  <script>
    this.disabled = true;
    this.items = opts.items;

    edit(e) {
      this.text = e.target.value;
    }

    add(e) {
      e.preventDefault();
      if (this.text) {
        this.items.push({
          title: this.text
        });
        this.text = this.refs.inputTodo.value = '';
      }
    }

    toggle(e) {
      var item = e.item;
      item.done = !item.done;
      return true;
    }
    
    whatShow(item) {
      return !item.hidden;
    }

    onlyDone(item) {
      return item.done;
    }
  </script>
</todo>